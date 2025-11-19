BOOL sub_1000027D0(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 type] == 1;

  return v3;
}

void sub_100002810(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = [v10 eventBody];
    v6 = [v5 starting];

    v7 = *(*(a1 + 32) + 8);
    if (v6)
    {
      [v7 addObject:v4];
    }

    else
    {
      [v7 removeObject:v4];
    }

    v8 = *(a1 + 32);
    v9 = [v8[1] copy];
    [v8 notifyDelegatesWithSource:v9];
  }
}

void sub_1000029E8(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = a2;
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a3 pid]);
    [v4 setObject:v6 forKey:v5];
  }
}

uint64_t sub_100002CF8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

void sub_100002D44(uint64_t a1)
{
  *(*(a1 + 32) + 64) = *(*(a1 + 32) + 56);
  *(*(a1 + 32) + 56) = [*(a1 + 32) systemMemoryPressure];
  if (*(*(a1 + 32) + 64) != *(*(a1 + 32) + 56))
  {
    v5 = @"MemoryPressure";
    v2 = [NSNumber numberWithInteger:?];
    v6 = v2;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

    v4 = +[_DASPPSDataManager sharedInstance];
    [v4 sendDataToPPS:v3 subsystem:@"BackgroundProcessing" category:@"SystemConditionsOther"];
  }
}

void sub_100003758(void *a1, uint64_t a2, int a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = os_transaction_create();
  if (a3 == -536723200)
  {
    [a1 handleBatteryNotification];
  }

  objc_autoreleasePoolPop(v5);
}

void sub_10000504C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100005068(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10000509C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_1000050B8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000050D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000050F4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_100005114(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_100005184@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  v4 = *(*(*result + 8) + 40);
  v5 = *a2;
  return result;
}

void sub_1000051AC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100005E0C(uint64_t a1, int a2, id a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        v8 = *(*(a1 + 32) + 32);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BGST Received XPC BARRIER", buf, 2u);
        }
      }

      goto LABEL_50;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v9 = [*(*(a1 + 32) + 40) allKeys];
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v14];
          v16 = v15;
          if (v15 && [v15 token] == a3)
          {
            v25 = [*(a1 + 32) serviceNameFromToken:a3];
            v26 = *(*(a1 + 32) + 32);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v25;
              *&buf[12] = 2114;
              *&buf[14] = v16;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Unregistered BGSystemTask on XPC remove event from service %{public}@: %{public}@", buf, 0x16u);
            }

            [*(a1 + 32) dasCancelActivity:v16];
            [*(*(a1 + 32) + 40) removeObjectForKey:v14];

            goto LABEL_49;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  memset(buf, 0, sizeof(buf));
  if (xpc_get_event_name())
  {
    v17 = [NSString stringWithUTF8String:buf];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1000AD758;
    v41[3] = &unk_1001B5DC0;
    v41[4] = *(a1 + 32);
    v43 = a3;
    v9 = v17;
    v42 = v9;
    v18 = objc_retainBlock(v41);
    service_uid_for_token = xpc_get_service_uid_for_token();
    if (service_uid_for_token == -1)
    {
      if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
      {
        sub_100127C1C();
      }

      (v18[2])(v18);
    }

    else
    {
      v20 = service_uid_for_token;
      v21 = [_DASBGSystemTask taskNameWithIdentifier:v9 UID:service_uid_for_token];
      v22 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v21];

      v23 = *(a1 + 32);
      if (v22)
      {
        v24 = v23[4];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 138543362;
          v46 = v21;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Skipping XPC_EVENT_PUBLISHER_ACTION_ADD since %{public}@ already exists", v45, 0xCu);
        }
      }

      else
      {
        v27 = [v23 serviceNameFromToken:a3];
        if ([v27 length])
        {
          v28 = [[_DASBGSystemTask alloc] initWithDescriptor:v7 withToken:a3 withUID:v20 withService:v27 staticSubmission:1];
          v29 = *(a1 + 32);
          if (v28)
          {
            v40 = 0;
            v30 = [(os_log_t *)v29 dasSubmitActivity:v28 error:&v40];
            v35 = v40;
            v31 = *(*(a1 + 32) + 32);
            if (v30)
            {
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v45 = 138543618;
                v46 = v27;
                v47 = 2114;
                v48 = v28;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Created BGSystemTask on XPC add event from service %{public}@: %{public}@", v45, 0x16u);
              }

              v32 = *(*(a1 + 32) + 40);
              v33 = [(_DASBGSystemTask *)v28 name];
              [v32 setObject:v28 forKeyedSubscript:v33];

              v34 = v35;
            }

            else
            {
              v34 = v35;
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_100127ACC();
              }

              (v18[2])(v18);
            }
          }

          else
          {
            if (os_log_type_enabled(v29[4], OS_LOG_TYPE_ERROR))
            {
              sub_100127B3C();
            }

            (v18[2])(v18);
          }
        }

        else
        {
          if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
          {
            sub_100127BAC();
          }

          (v18[2])(v18);
        }
      }
    }

    goto LABEL_49;
  }

  if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_ERROR))
  {
    sub_100127A90();
  }

LABEL_50:
}

void sub_10000672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006F8C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleKeyBagLockNotification];
}

void sub_1000072F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100007340(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isDataAvailableForClassA]);
  v6 = *(*(a1 + 32) + 32);
  v7 = +[_DASDataProtectionStateMonitor dataProtectionClassA];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isDataAvailableForClassC]);
  v9 = *(*(a1 + 32) + 32);
  v10 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  [v9 setObject:v8 forKeyedSubscript:v10];

  v11 = [*(*(a1 + 32) + 24) allValues];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return _objc_release_x1();
}

void sub_1000074F4(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (a2 != 1)
  {
    return;
  }

  value[5] = v3;
  value[6] = v4;
  valuePtr = 0;
  value[0] = 0;
  if (CFDictionaryGetValueIfPresent(theDict, kAKSInfoExtendedLockState, value))
  {
    v7 = CFGetTypeID(value[0]);
    if (v7 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(value[0], kCFNumberLongLongType, &valuePtr))
      {
        if (valuePtr > 1)
        {
          if (valuePtr == 2)
          {
            v8 = [_DASDaemonLogger logForCategory:@"fileProtection"];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              sub_10011FAD8();
            }

LABEL_19:

            goto LABEL_20;
          }

          if (valuePtr != 3)
          {
            goto LABEL_20;
          }

          v9 = [_DASDaemonLogger logForCategory:@"fileProtection"];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_10011FAA4();
          }
        }

        else
        {
          if (valuePtr)
          {
            if (valuePtr != 1)
            {
              goto LABEL_20;
            }

            v8 = [_DASDaemonLogger logForCategory:@"fileProtection"];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              sub_10011FB0C();
            }

            goto LABEL_19;
          }

          v9 = [_DASDaemonLogger logForCategory:@"fileProtection"];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_10011FB40();
          }
        }

        *(*(a1 + 32) + 10) = 0;
        *(*(a1 + 32) + 9) = 0;
      }
    }
  }

LABEL_20:
  if (CFDictionaryGetValueIfPresent(theDict, kAKSInfoCxExpiring, value))
  {
    v10 = CFGetTypeID(value[0]);
    if (v10 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(value[0]))
      {
        *(*(a1 + 32) + 9) = 0;
        *(*(a1 + 32) + 10) = 1;
        v11 = [_DASDaemonLogger logForCategory:@"fileProtection"];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Class Cx expiring", v14, 2u);
        }
      }
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kAKSInfoCxExpired, value))
  {
    v12 = CFGetTypeID(value[0]);
    if (v12 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(value[0]))
      {
        *(*(a1 + 32) + 9) = 1;
        *(*(a1 + 32) + 10) = 0;
        v13 = [_DASDaemonLogger logForCategory:@"fileProtection"];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Class Cx expired", v14, 2u);
        }
      }
    }
  }
}

void sub_100007860(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:{v7, v13}];
        v9 = [v8 BOOLValue];

        v10 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:v7];
        v11 = [v10 BOOLValue];

        if (v9 != v11)
        {
          v12 = [NSNumber numberWithBool:v11];
          [*(a1 + 40) setObject:v12 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_1000079E4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained log];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100121CFC(v5, v7, v8, v9, v10, v11, v12, v13);
  }

  v14 = objc_loadWeakRetained((a1 + 32));
  if (v14)
  {
    if (a3)
    {
      v15 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
      v16 = [v5 isEqual:v15];

      if (v16)
      {
        v17 = objc_loadWeakRetained((a1 + 32));
        v18 = [v17 log];

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Class C now available", v21, 2u);
        }

        v19 = objc_loadWeakRetained((a1 + 32));
        v20 = +[_DASFileProtection completeUntilFirstUserAuthentication];
        [v19 refreshDataSourcesWithFileProtection:v20];
      }
    }
  }
}

void sub_100007B44(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      objc_copyWeak(&to, (a1 + 32));
      v8 = objc_loadWeakRetained(&to);

      if (v8)
      {
        v9 = objc_loadWeakRetained(&to);
        v10 = [v9 log];

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Class C now available.", v13, 2u);
        }

        v11 = objc_loadWeakRetained(&to);
        [v11 setClassCUnlocked:1];

        v12 = objc_loadWeakRetained(&to);
        [v12 setDataProtectionStateMonitor:0];
      }

      objc_destroyWeak(&to);
    }
  }
}

void sub_100007C7C(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      v7 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Class C now available. Loading activities.", v10, 2u);
      }

      os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
      if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) loadStateWhenAvailable];
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
      [*(a1 + 32) registerForTrial];
      [*(a1 + 32) updateTrialParameters];
      v8 = *(*(a1 + 32) + 560);
      v9 = +[_DASFileProtection completeUntilFirstUserAuthentication];
      [v8 refreshGroupsWithFileProtection:v9];
    }
  }
}

id sub_100008304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {

    return [v4 refreshLedgerInformationForProcess:?];
  }

  else
  {
    [v4[6] removeObjectForKey:a2];
    v5 = *(a1 + 32);

    return [v5 persistApplicationProcessHandles];
  }
}

unint64_t sub_100009078()
{
  v1.tv_sec = 0;
  v1.tv_nsec = 0;
  if (!clock_gettime(_CLOCK_UPTIME_RAW, &v1))
  {
    return (v1.tv_nsec + 1000000000 * v1.tv_sec) / 0xF4240uLL;
  }

  if (os_log_type_enabled(qword_10020B5A8, OS_LOG_TYPE_ERROR))
  {
    sub_100123DB0();
  }

  return -1;
}

id sub_10000910C(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = off_10020B1B0;
  v16 = off_10020B1B0;
  if (!off_10020B1B0)
  {
    v9 = sub_100052F8C();
    v14[3] = dlsym(v9, "PPSCreateSubsystemCategoryPredicate");
    off_10020B1B0 = v14[3];
    v8 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v8)
  {
    v12 = sub_10011E650();
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  v10 = v8(v5, v6, v7);

  return v10;
}

id sub_100009264()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10020B1B8;
  v7 = qword_10020B1B8;
  if (!qword_10020B1B8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100053150;
    v3[3] = &unk_1001B5798;
    v3[4] = &v4;
    sub_100053150(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10000932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000A0C8(uint64_t a1, int a2)
{
  v4 = *(*(a1 + 32) + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10012CAE4(a2, v4);
  }

  return [*(a1 + 32) handleCacheDeletePurgeableSpaceNotification];
}

void sub_10000A3BC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = [*(*(a1 + 32) + 104) allKeys];
  v43 = a1;
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v3 = +[NSDate date];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v2;
  v37 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v37)
  {
    v36 = *v49;
    *&v4 = 138412802;
    v34 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v5;
        v6 = *(*(&v48 + 1) + 8 * v5);
        os_unfair_lock_lock((*(v43 + 32) + 12));
        v7 = [*(*(v43 + 32) + 128) objectForKeyedSubscript:v6];
        v8 = [v7 copy];
        v9 = v8;
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = +[NSSet set];
        }

        v11 = v10;

        v12 = [*(*(v43 + 32) + 120) objectForKeyedSubscript:v6];
        v13 = [v12 copy];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = +[NSSet set];
        }

        v16 = v15;

        v41 = v11;
        [v16 setByAddingObjectsFromSet:v11];
        v40 = v39 = v6;
        v38 = [*(v43 + 32) currentLoadFromActivities:? inGroupWithName:?];
        os_unfair_lock_unlock((*(v43 + 32) + 12));
        v17 = +[NSMutableArray array];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v45;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v45 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v44 + 1) + 8 * i);
              v24 = [v23 startDate];
              if (v24)
              {
                v25 = v24;
                v26 = [v23 startDate];
                [v3 timeIntervalSinceDate:v26];
                v28 = v27;

                if (v28 > 60.0)
                {
                  v29 = [v23 name];
                  [v17 addObject:v29];

                  v30 = *(v43 + 32);
                  v31 = [v23 startDate];
                  v32 = +[NSDate now];
                  LODWORD(v30) = [v30 shouldSuspendLongRunningActivity:v23 withStartDate:v31 whileBlockingOtherTasks:0 atDate:v32];

                  if (v30)
                  {
                    [*(v43 + 32) updateSuspendRequestDate:v3 forActivity:v23 withReason:@"Limitations"];
                    [*(v43 + 32) suspendActivity:v23];
                  }
                }
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v44 objects:v58 count:16];
          }

          while (v20);
        }

        if ([v17 count])
        {
          v33 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = v34;
            v53 = v39;
            v54 = 2048;
            v55 = v38;
            v56 = 2112;
            v57 = v17;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Current load for group %@ is %lld. Long running activities are %@", buf, 0x20u);
          }
        }

        v5 = v42 + 1;
      }

      while ((v42 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v37);
  }
}

void sub_10000AB94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _callInvalidationHandler:0];
}

uint64_t sub_10000B438(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020ADB8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10000B724(id a1, unint64_t a2, unint64_t a3)
{
  v5 = [_DASDaemonLogger logForCategory:@"cpmModes"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a2;
    v13 = 2048;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Contextual Power Targets updated. Mitigation: %lu, level: %llu", &v11, 0x16u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (!a2)
  {
    [v6 setObject:&off_1001C9670 forKeyedSubscript:@"Mitigation"];
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_7:
    [v7 setObject:&off_1001C9670 forKeyedSubscript:@"Level"];
    goto LABEL_8;
  }

  v8 = [NSNumber numberWithUnsignedInteger:a2];
  [v7 setObject:v8 forKeyedSubscript:@"Mitigation"];

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = [NSNumber numberWithUnsignedLongLong:a3];
  [v7 setObject:v9 forKeyedSubscript:@"Level"];

LABEL_8:
  v10 = +[_DASPPSDataManager sharedInstance];
  [v10 sendDataToPPS:v7 subsystem:@"BackgroundProcessing" category:@"CPMPowerTargets"];
}

uint64_t sub_10000BA78(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020ADC8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10000C6B8(id a1)
{
  qword_10020ADD8 = objc_alloc_init(_DASBMUtilityProvider);

  _objc_release_x1();
}

void sub_10000CC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 240), 8);
  _Block_object_dispose((v37 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000CCEC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000CD04(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10011BD2C(v4, v3);
    }
  }
}

uint64_t sub_10000CD64(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v6 = a1 + 40;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v26 = v4;
    v20 = [v4 eventBody];
    v21 = [v20 starting];

    v5 = v26;
    if (v21)
    {
      goto LABEL_14;
    }

    [v26 timestamp];
    v19 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_13;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v25 = v4;
    v7 = [v4 eventBody];
    v8 = [v7 starting];

    v5 = v25;
    if (v8)
    {
      [v25 timestamp];
      v9 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
      v5 = v25;
      v12 = *(*(a1 + 72) + 8);
      v13 = *(v12 + 40);
      v4 = (v12 + 40);
      if (!v13)
      {
        objc_storeStrong(v4, *(*(*(a1 + 48) + 8) + 40));
        v5 = v25;
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v4 = *(*(*v6 + 8) + 40);
    if (v4)
    {
      v26 = v5;
      [v4 timeIntervalSinceDate:?];
      if (v14 >= *(a1 + 80))
      {
        [*(a1 + 32) addObject:*(*(*(a1 + 56) + 8) + 40)];
      }

      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = 0;

      v17 = *(*(a1 + 48) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = 0;

      v19 = 0;
      v6 = a1 + 56;
LABEL_13:
      v22 = *(*v6 + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v19;

      v5 = v26;
    }
  }

LABEL_14:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_10000D0B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020ADE8 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_10000FC78(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10000FE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000FEA0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020ADF0;
  qword_10020ADF0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001046C(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = a2;
  v6 = [v10 integerValue];
  v7 = 1.0;
  if (v6 <= 999)
  {
    [v10 doubleValue];
    v7 = v8 / 1000.0;
  }

  v9 = [NSNumber numberWithDouble:v7];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:v5];
}

void sub_1000105D4(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  [a3 doubleValue];
  if (v5 >= 0.25)
  {
    v6 = *(a1 + 32);
    if (v5 >= 0.75)
    {
      v7 = &off_1001C96B8;
    }

    else
    {
      v7 = &off_1001C96A0;
    }

    v8 = v9;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = &off_1001C9688;
    v8 = v9;
  }

  [v6 setObject:v7 forKeyedSubscript:v8];
}

uint64_t sub_100010A58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  [v7 doubleValue];
  v9 = v8;

  v10 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v10 doubleValue];
  v12 = v11;

  if (v9 <= v12)
  {
    if (v12 <= v9)
    {
      v14 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:v5 error:0];
      v15 = [v14 bundleIdentifier];

      v16 = [LSApplicationRecord bundleRecordWithApplicationIdentifier:v6 error:0];
      v17 = [v16 bundleIdentifier];

      v18 = [*(a1 + 40) objectForKeyedSubscript:v15];
      v19 = [v18 intValue];
      v20 = [*(a1 + 40) objectForKeyedSubscript:v17];
      v21 = [v20 intValue];

      if (v19 <= v21)
      {
        v22 = [*(a1 + 40) objectForKeyedSubscript:v15];
        v23 = [v22 intValue];
        v24 = [*(a1 + 40) objectForKeyedSubscript:v17];
        v13 = v23 > [v24 intValue];
      }

      else
      {
        v13 = -1;
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = -1;
  }

  return v13;
}

uint64_t sub_100013CA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020AE08 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

id sub_1000153D0(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [NSNumber numberWithBool:*(a1 + 40)];
  [v2 setObject:v3 forKeyedSubscript:@"rateLimited"];

  if (*(a1 + 40))
  {
    v4 = &off_1001C96D0;
  }

  else
  {
    v4 = &off_1001C96E8;
  }

  [v2 setObject:v4 forKeyedSubscript:@"rateLimitedInt"];
  v5 = [*(a1 + 32) rateLimitConfigurationName];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = _DASDefaultConfigurationName;
  }

  [v2 setObject:v7 forKeyedSubscript:@"configurationName"];

  v8 = [_DASRateLimiterUtilities rateLimitIdentifierForActivity:*(a1 + 32)];
  [v2 setObject:v8 forKeyedSubscript:@"group"];

  return v2;
}

void sub_100016498(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) locked_modulateBudgets];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1000187AC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020AE20;
  qword_10020AE20 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_1000188B8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKey:@"budgets"];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = *(a1 + 40);
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    *&v8 = 138412290;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = *(a1 + 32);
        v14 = v13[2];
        v15 = [v13 convertNameFromFullToCompact:{v12, v23, v24}];
        v16 = [v14 objectForKey:v15];
        v17 = [v16 mutableCopy];

        if (v17)
        {
          [v17 setObject:v12 forKeyedSubscript:@"name"];
          v18 = [v17 objectForKeyedSubscript:@"budgetID"];

          if (!v18)
          {
            v19 = [_DASWidgetRefreshBudgetManager widgetBudgetIDFromBudgetName:v12];
            [v17 setObject:v19 forKeyedSubscript:@"budgetID"];
          }

          v20 = [[_DASWidgetRefreshBudget alloc] initWithDictionary:v17];
          if (v20)
          {
            [*(a1 + 48) addObject:v20];
          }

          v21 = *(*(a1 + 32) + 24);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = v23;
            v29 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Found in store: %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = *(*(a1 + 32) + 24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = v23;
            v29 = v12;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Budget for %@ not found in store", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v9);
  }
}

id sub_100018BF4(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 dictionaryRepresentation];
        v12 = *(a1 + 32);
        v13 = v12[2];
        v14 = [v10 name];
        v15 = [v12 convertNameFromFullToCompact:v14];
        [v13 setObject:v11 forKeyedSubscript:v15];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return [*(*(a1 + 32) + 8) setObject:*(*(a1 + 32) + 16) forKey:@"budgets"];
}

id sub_100018E10(uint64_t a1)
{
  v2 = [*(a1 + 40) dictionaryRepresentation];
  v3 = *(a1 + 32);
  v4 = v3[2];
  v5 = [*(a1 + 40) name];
  v6 = [v3 convertNameFromFullToCompact:v5];
  [v4 setObject:v2 forKeyedSubscript:v6];

  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);

  return [v8 setObject:v9 forKey:@"budgets"];
}

id sub_100018F4C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);

  return [v3 setObject:v2 forKey:@"lastModulation"];
}

uint64_t sub_100019088(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000194D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020AE28;
  qword_10020AE28 = v2;

  return _objc_release_x1(v2, v3);
}

int64_t sub_100019620(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a2;
  v5 = a3;
  [(NSNumber *)v4 doubleValue];
  v7 = v6;
  [(NSNumber *)v5 doubleValue];
  if (v7 <= v8)
  {
    [(NSNumber *)v4 doubleValue];
    v11 = v10;
    [(NSNumber *)v5 doubleValue];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_10001995C(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = os_transaction_create();
  v7 = objc_autoreleasePoolPush();
  v8 = +[NSMutableDictionary dictionary];
  v9 = [_DASAppResumePLLogger applicationBundleIDForExecutableName:v12];

  if (v9)
  {
    v10 = [_DASAppResumePLLogger applicationBundleIDForExecutableName:v12];
    [v8 setObject:v10 forKeyedSubscript:@"BundleID"];
  }

  else
  {
    [v8 setObject:v12 forKeyedSubscript:@"BundleID"];
  }

  [v8 setObject:v5 forKeyedSubscript:@"PredictionScore"];
  v11 = [NSNumber numberWithInt:kAppResumePredictionTypeSwap];
  [v8 setObject:v11 forKeyedSubscript:@"PredictionType"];

  [*(a1 + 32) addObject:v8];
  objc_autoreleasePoolPop(v7);
}

void sub_100019ABC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:v6 forKeyedSubscript:@"BundleID"];

  [v8 setObject:v5 forKeyedSubscript:@"PredictionScore"];
  v7 = [NSNumber numberWithInt:kAppResumePredictionTypeProactive];
  [v8 setObject:v7 forKeyedSubscript:@"PredictionType"];

  [*(a1 + 32) addObject:v8];
}

void sub_10001A1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001A438(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 logUpdatedCarryStatus];
  [v3 setTaskCompleted];
}

Class sub_10001A704(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020AE40)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10001A848;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B57B8;
    v6 = 0;
    qword_10020AE40 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020AE40)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ATXProactiveSuggestionClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10011C6E0();
  }

  qword_10020AE38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001A848(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020AE40 = result;
  return result;
}

uint64_t sub_10001AA58(uint64_t a1)
{
  v1 = [[_DASRemoteDeviceNearbyMonitor alloc] initWithDaemon:*(a1 + 32)];
  v2 = qword_10020AE50;
  qword_10020AE50 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10001AD54(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = [*(a1 + 32) unprotectedIsAlreadyPendingWidget:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3 + 3;

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = [(os_unfair_lock_s *)v3 pendingWidgets];
    [v5 addObject:*(a1 + 40)];

    os_unfair_lock_unlock((*(a1 + 32) + 12));
    v6 = *(a1 + 32);

    [v6 protectedRegisterForRemoteDevices];
  }
}

id sub_10001AEB8(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = [*(a1 + 32) pendingWidgets];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) pendingWidgets];
    [v4 removeObject:*(a1 + 40)];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
  v5 = *(a1 + 32);

  return [v5 protectedRegisterForRemoteDevices];
}

void sub_10001B1C4(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 12));
  v2 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [*(a1 + 32) pendingWidgets];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (*(a1 + 40))
        {
          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [v8 remoteDevice];
          if (v9)
          {
            v10 = v9;
            v11 = *(a1 + 40);
            v12 = [v8 remoteDevice];
            LODWORD(v11) = [v11 isEqualToString:v12];

            if (v11)
            {
              [v2 addObject:v8];
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 12));
  if ([v2 count])
  {
    v13 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Remote device nearby: %@, Re-evaluating activities: %@", buf, 0x16u);
    }

    v15 = [*(a1 + 32) daemon];
    [v15 evaluateScoreAndRunActivities:v2];
  }
}

void sub_10001BC30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_10001BC4C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  changes = nw_browse_result_get_changes(v5, v6);
  if ((changes & 2) != 0)
  {
    v14 = nw_browse_result_copy_endpoint(v6);
    if (v14)
    {
      v9 = v14;
      device_id = nw_endpoint_get_device_id();
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v12 = WeakRetained;
      if (!device_id || !WeakRetained)
      {
        goto LABEL_12;
      }

      v13 = [NSString stringWithUTF8String:device_id];
      [v12 updateDeviceNearby:v13];
      goto LABEL_11;
    }

    v17 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ((changes & 4) != 0)
  {
    v8 = nw_browse_result_copy_endpoint(v5);
    if (v8)
    {
      v9 = v8;
      v10 = nw_endpoint_get_device_id();
      v11 = objc_loadWeakRetained((a1 + 32));
      v12 = v11;
      if (!v10 || !v11)
      {
        goto LABEL_12;
      }

      v13 = [NSString stringWithUTF8String:v10];
      [v12 updateDeviceLost:v13];
LABEL_11:

LABEL_12:
      goto LABEL_18;
    }

    v17 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      sub_10011C8DC();
    }

LABEL_17:
  }

LABEL_18:
}

void sub_10001BDDC(id a1, int a2, OS_nw_error *a3)
{
  v4 = a3;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v6 = "Browser entered invalid state";
        v7 = buf;
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    if (a2 != 1)
    {
      goto LABEL_19;
    }

    v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v12 = 0;
    v6 = "Browser entered ready state";
    v7 = &v12;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, v6, v7, 2u);
    goto LABEL_18;
  }

  if (a2 == 2)
  {
    v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v11 = 0;
    v6 = "Browser entered failed state";
    v7 = &v11;
    goto LABEL_17;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      goto LABEL_19;
    }

    v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v9 = 0;
    v6 = "Browser entered waiting state";
    v7 = &v9;
    goto LABEL_17;
  }

  v5 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 0;
    v6 = "Browser entered cancelled state";
    v7 = &v10;
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  if (v4)
  {
    v8 = [_DASDaemonLogger logForCategory:@"NWBrowser"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10011C918();
    }
  }
}

void sub_10001C2CC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020AE60;
  qword_10020AE60 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001C6C0(uint64_t a1, void *a2, void *a3)
{
  v28 = a2;
  v30 = a3;
  v5 = *(*(a1 + 32) + 48);
  v6 = +[_CDContextQueries keyPathForPluginStatus];
  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  v9 = *(*(a1 + 32) + 16);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [NSNumber numberWithBool:v8, v28];
    *buf = 138412290;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Plugin status is now %@", buf, 0xCu);
  }

  [*(*(a1 + 32) + 56) reportChargingStatus:{v8, v28}];
  if (v8)
  {
    obj = [*(a1 + 32) startedDASActivities];
    objc_sync_enter(obj);
    v12 = [*(a1 + 32) startedDASActivities];
    v13 = [v12 mutableCopy];

    v14 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Plugged in! Stop tracking activities %@", buf, 0xCu);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v16)
    {
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [*(a1 + 32) stopTrackingActivity:*(*(&v38 + 1) + 8 * i)];
        }

        v16 = [v15 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    objc_sync_exit(obj);
    obja = [*(a1 + 32) startedActivities];
    objc_sync_enter(obja);
    v19 = [*(a1 + 32) startedActivities];
    v20 = [v19 copy];

    v21 = *(*(a1 + 32) + 16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Plugged in! Stop tracking activity names %@", buf, 0xCu);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = v20;
    v22 = [v33 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v22)
    {
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v33);
          }

          v25 = *(*(&v34 + 1) + 8 * j);
          v26 = +[NSMutableDictionary dictionary];
          [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:@"selfBudgeted"];
          [*(*(a1 + 32) + 56) reportStopEvent:v25 withInfo:v26];
          v27 = [*(a1 + 32) startedActivities];
          [v27 removeObject:v25];
        }

        v22 = [v33 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v22);
    }

    objc_sync_exit(obja);
  }
}

void sub_10001E1CC(id a1)
{
  v1 = objc_alloc_init(_DASPolicyDataCollection);
  v2 = qword_10020AE68;
  qword_10020AE68 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10001E4D8(uint64_t a1)
{
  [*(a1 + 32) evaluateAndReportBlockingReasonsForAllCriteria];
  [*(a1 + 32) reportPolicyBlockingReasonsForIntensiveTasksToPPS];
  v2 = *(a1 + 32);

  return [v2 reportPolicyBlockingReasonsForSpecificTasksToPPS];
}

id sub_10001F0B0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = [NSNumber numberWithInteger:a1[7]];
  v5 = [v2 networkQualityDictForCAWithPriority:v3 blockingCriteria:v4 responseDetails:a1[6]];

  return v5;
}

uint64_t sub_10002137C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020AE88;
  qword_10020AE88 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100021728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100021740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) dailyDataBudgetFromPlan:a2 error:a3];
  *(*(*(a1 + 48) + 8) + 24) = v4;
  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

void sub_100021CC8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_DEBUG))
  {
    sub_10011CC64();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = kUsageNetworkCellInBytes;
    v9 = kUsageNetworkCellOutBytes;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{v8, v22}];
        [v14 doubleValue];
        v11 = v11 + v15;

        v16 = [v13 objectForKeyedSubscript:v9];
        [v16 doubleValue];
        v10 = v10 + v17;
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  v18 = [NSNumber numberWithDouble:v11];
  [*(a1 + 40) setObject:v18 forKeyedSubscript:_DASUpdateActivityDownloadedOnCellKey];

  v19 = [NSNumber numberWithDouble:v10];
  [*(a1 + 40) setObject:v19 forKeyedSubscript:_DASUpdateActivityUploadedOnCellKey];

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v20 = *(a1 + 40);
  v21 = [*(a1 + 32) activityToDataMap];
  [v21 setObject:v20 forKeyedSubscript:*(a1 + 48)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100022504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022544(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(*(*(a1 + 32) + 24), OS_LOG_TYPE_DEBUG))
  {
    sub_10011CD84();
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = kUsageNetworkCellInBytes;
    v9 = kUsageNetworkCellOutBytes;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:{v8, v28}];
        [v14 doubleValue];
        v11 = v11 + v15;

        v16 = [v13 objectForKeyedSubscript:v9];
        [v16 doubleValue];
        v10 = v10 + v17;
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v18 = [*(a1 + 32) activityToDataMap];
  v19 = [v18 objectForKeyedSubscript:*(a1 + 40)];

  v20 = [*(a1 + 32) activityToDataMap];
  [v20 removeObjectForKey:*(a1 + 40)];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v21 = [v19 objectForKeyedSubscript:_DASUpdateActivityDownloadedOnCellKey];
  [v21 doubleValue];
  v23 = v11 - v22;

  v24 = [v19 objectForKeyedSubscript:_DASUpdateActivityUploadedOnCellKey];
  [v24 doubleValue];
  v26 = v10 - v25;

  [*(a1 + 32) getDataConsumedFromBytesOnCell:v23 + v26 bytesOnCellExpensive:0.0 bytesOnCellInexpensive:0.0 bytesOnWiFiExpensive:0.0];
  *(*(*(a1 + 56) + 8) + 24) = v27;
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100022FF0(id a1)
{
  v1 = os_log_create("com.apple.duetactivityscheduler", "budgetShMem");
  v2 = qword_10020AEA0;
  qword_10020AEA0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002313C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100023154(uint64_t a1)
{
  v2 = shm_open([@"com.apple.dasd.budgets" UTF8String], 2, 384);
  if (v2 != -1)
  {
    goto LABEL_2;
  }

  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating shared memory for budgeting (likely after reboot)", buf, 2u);
  }

  v4 = shm_open([@"com.apple.dasd.budgets" UTF8String], 514, 384);
  if (v4 == -1)
  {
    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10011CF94(v7);
    }
  }

  else
  {
    v2 = v4;
    if (ftruncate(v4, 0x4000) != -1)
    {
LABEL_2:
      *(*(*(a1 + 40) + 8) + 24) = mmap(0, 0x4000uLL, 3, 1, v2, 0);
      close(v2);
      if (*(*(*(a1 + 40) + 8) + 24) == -1)
      {
        v6 = *(a1 + 32);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10011CE7C(v6);
        }
      }

      else
      {
        qword_10020AEA8 = *(*(*(a1 + 40) + 8) + 24);
      }

      return;
    }

    close(v2);
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10011CF08(v5);
    }
  }
}

uint64_t sub_1000234A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000234C0(uint64_t a1)
{
  v2 = objc_alloc_init(*(a1 + 40));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100023634(uint64_t a1)
{
  v2 = [*(a1 + 32) budgetToIndex];
  v3 = [*(a1 + 40) name];
  v14 = [v2 objectForKeyedSubscript:v3];

  v4 = v14;
  if (v14)
  {
    v5 = [v14 unsignedIntValue];
    [*(a1 + 40) capacity];
    v6 = v5;
    *(qword_10020AEA8 + (v5 << 6) + 40) = v7;
    [*(a1 + 40) balance];
    *(qword_10020AEA8 + (v5 << 6) + 48) = v8;
    v9 = [*(a1 + 40) allocationType];
    *(qword_10020AEA8 + (v5 << 6) + 56) = v9;
    v10 = [*(a1 + 40) lastModulatedDate];

    if (v10)
    {
      v11 = [*(a1 + 40) lastModulatedDate];
      [v11 timeIntervalSinceReferenceDate];
      v13 = v12;
    }

    else
    {
      v13 = -1.0;
    }

    *(qword_10020AEA8 + (v6 << 6) + 64) = v13;
    v4 = v14;
  }
}

void sub_1000237F4(uint64_t a1)
{
  v21 = malloc_type_malloc(0x810uLL, 0x1000040E865D2FFuLL);
  bzero(v21, 0x810uLL);
  v2 = +[_DASSharedMemoryBudgetPersistence log];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 32);
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v4)
  {
    v23 = *v25;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v25 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v29 = v6;
          _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Saving budget: %@", buf, 0xCu);
        }

        v7 = [v6 name];
        v8 = v7;
        [v7 UTF8String];
        v9 = &v21[64 * v3 + 8];
        __strcpy_chk();

        [v6 capacity];
        *(v9 + 32) = v10;
        [v6 balance];
        *(v9 + 40) = v11;
        *(v9 + 48) = [v6 allocationType];
        v12 = [v6 lastModulatedDate];

        if (v12)
        {
          v13 = [v6 lastModulatedDate];
          [v13 timeIntervalSinceReferenceDate];
          v15 = v14;
        }

        else
        {
          v15 = -1.0;
        }

        *(v9 + 56) = v15;
        v16 = [*(a1 + 40) budgetToIndex];
        objc_sync_enter(v16);
        v17 = [NSNumber numberWithUnsignedChar:v3];
        v18 = [*(a1 + 40) budgetToIndex];
        v19 = [v6 name];
        [v18 setObject:v17 forKeyedSubscript:v19];

        objc_sync_exit(v16);
        ++v3;
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v4);
  }

  *v21 = v3;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *v21;
    *buf = 67109120;
    LODWORD(v29) = v20;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Num Budgets: %u", buf, 8u);
  }

  memcpy(qword_10020AEA8, v21, 0x810uLL);
  free(v21);
}

void sub_100023D98(uint64_t a1)
{
  v2 = malloc_type_malloc(0x810uLL, 0x1000040E865D2FFuLL);
  memcpy(v2, qword_10020AEA8, 0x810uLL);
  v3 = (a1 + 32);
  *(*(a1 + 32) + 8) = v2;
  v28 = a1;
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  if ([v5 count] == **(*v3 + 1))
  {
    v29 = +[NSMutableArray array];
    v6 = *v3;
    if (**(*v3 + 1))
    {
      v7 = 0;
      v8 = 8;
      while (1)
      {
        v31 = 0u;
        v32 = 0u;
        memset(buf, 0, sizeof(buf));
        v9 = (v6[1] + v8);
        v10 = *v9;
        v11 = v9[1];
        v12 = v9[3];
        v31 = v9[2];
        v32 = v12;
        *buf = v10;
        *&buf[16] = v11;
        v13 = [v6 validatedStringFromStoredValue:buf withAllowedNames:*v4];
        if (!v13)
        {
          break;
        }

        if (*(&v32 + 1) == 0.0 || *(&v32 + 1) == -1.0)
        {
          v15 = 0;
        }

        else
        {
          v15 = [NSDate dateWithTimeIntervalSinceReferenceDate:*(&v32 + 1)];
        }

        v16 = [_DASBudget budgetWithName:v13 capacity:v32 balance:v15 allocationType:v31 lastModulatedDate:?];
        [v29 addObject:v16];
        v17 = [*v3 budgetToIndex];
        objc_sync_enter(v17);
        v18 = [NSNumber numberWithInt:v7];
        v19 = [*v3 budgetToIndex];
        [v19 setObject:v18 forKeyedSubscript:v13];

        objc_sync_exit(v17);
        ++v7;
        v6 = *v3;
        v8 += 64;
        if (v7 >= **(*v3 + 1))
        {
          goto LABEL_12;
        }
      }

      v27 = +[_DASSharedMemoryBudgetPersistence log];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_10011D110(v27);
      }
    }

    else
    {
LABEL_12:
      v20 = +[_DASSharedMemoryBudgetPersistence log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = **(*v3 + 1);
        *buf = 67109378;
        *&buf[4] = v21;
        *&buf[8] = 2112;
        *&buf[10] = v29;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Stored Budgets: %u %@", buf, 0x12u);
      }

      v22 = [v29 copy];
      v23 = *(*(v28 + 48) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    v26 = v29;
  }

  else
  {
    v25 = +[_DASSharedMemoryBudgetPersistence log];
    v26 = v25;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10011D020(v3, v4, v25);
      v26 = v25;
    }
  }
}

void sub_100024174(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  *(qword_10020AEA8 + 2056) = v2;
  v3 = +[_DASSharedMemoryBudgetPersistence log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = *(qword_10020AEA8 + 2056);
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting modulation date: %@ (%lf)", &v6, 0x16u);
  }
}

void sub_1000243BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double sub_1000243E0(uint64_t a1)
{
  result = *(qword_10020AEA8 + 2056);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10002441C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_1000244DC(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020AEC0;
  qword_10020AEC0 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_100024A9C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100024AB4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [_CDContextualKeyPath keyPathWithKey:kDASWidgetRefreshMaximumBudgetDailyKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  v45 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:kDASDailyBudgetForAllWidgetsKey];
    v6 = [v5 intValue];

    v7 = [v4 objectForKeyedSubscript:kDASDailyBudgetMaxForSystemAddedIndividualWidgetKey];
    v8 = [v7 intValue];

    v9 = [v4 objectForKeyedSubscript:kDASDailyBudgetMaxForIndividualWidgetKey];
    v10 = [v9 intValue];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v6 = 750;
LABEL_6:
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 50;
  }

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = 50;
  }

  *(*(a1 + 32) + 16) = v11;
  v46 = v6;
  *(*(a1 + 32) + 12) = v6;
  v13 = [*(a1 + 32) getAverageWidgetViewsPerDay];
  v44 = [_CDContextualKeyPath keyPathWithKey:kDASWidgetSystemAddedKeyPath];
  v47 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:?];
  v48 = objc_alloc_init(NSMutableDictionary);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v54;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v54 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v53 + 1) + 8 * i);
        if ([v47 containsObject:v19])
        {
          v20 = v12;
        }

        else
        {
          v20 = v11;
        }

        v21 = [NSNumber numberWithInt:v20];
        [v48 setObject:v21 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v53 objects:v64 count:16];
    }

    while (v16);
  }

  v22 = [*(a1 + 32) allocatedBudgetsWithAverageViews:v14 groupTotalBudget:v46 individualMaxBudgets:v48 individualMinBudget:1];
  v23 = [v22 mutableCopy];
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v26 = [*(*(*(a1 + 40) + 8) + 40) allKeys];
  v27 = [v26 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v50;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v50 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v49 + 1) + 8 * j);
        v32 = [v14 objectForKeyedSubscript:v31];
        v33 = 0;
        v34 = 0;
        if (v32)
        {
          v35 = [v14 objectForKeyedSubscript:v31];
          [v35 doubleValue];
          v34 = v36;
        }

        v37 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v31];
        if (v37)
        {
          v38 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v31];
          [v38 doubleValue];
          v33 = v39;
        }

        v40 = *(*(a1 + 32) + 56);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          v58 = v31;
          v59 = 2048;
          v60 = v34;
          v61 = 2048;
          v62 = v33;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "For widget %{public}@, averageViewsPerDay: %.2lf and computedBudget: %.2lf", buf, 0x20u);
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v28);
  }

  v41 = +[NSDate now];
  v42 = *(a1 + 32);
  v43 = *(v42 + 40);
  *(v42 + 40) = v41;
}

uint64_t sub_100024FC8(uint64_t a1)
{
  v2 = +[NSDate distantPast];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_100025088(uint64_t a1)
{
  [*(*(a1 + 32) + 32) removeAllObjects];
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = +[NSDate distantPast];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100025614(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10011D154(v4, v3);
    }
  }
}

void sub_100025674(uint64_t a1, void *a2)
{
  v9 = [a2 eventBody];
  v3 = [v9 budgetID];
  v4 = [*(a1 + 32) valueForKey:v3];

  if (!v4)
  {
    v5 = [v9 startDate];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v3];
  }

  v6 = [*(a1 + 40) valueForKey:v3];

  if (v6)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v3];
    v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 intValue] + 1);
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v3];
  }

  else
  {
    [*(a1 + 40) setObject:&off_1001C9748 forKeyedSubscript:v3];
  }
}

void sub_1000260A4(id a1)
{
  v1 = [[_DASTrialManager alloc] initWithProject:222 andNamespace:@"COREOS_DAS"];
  v2 = qword_10020AEE8;
  qword_10020AEE8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000264B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1000264D8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 32));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v5 = objc_loadWeakRetained(&to);
    [v5 updateFactors];

    v6 = objc_loadWeakRetained(&to);
    [v6 updateKernelWithDASIdentifiers];
  }

  objc_destroyWeak(&to);
}

id sub_100026570(uint64_t a1)
{
  [*(a1 + 32) updateFactors];
  v2 = *(a1 + 32);

  return [v2 updateKernelWithDASIdentifiers];
}

void sub_1000272FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained readFromDefaults];
    [v3 sendToPPS:v2];

    WeakRetained = v3;
  }
}

void sub_100027ACC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:v6];
    [v4 addObject:v5];
  }
}

NSString *__cdecl sub_100028234(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

BOOL sub_100028284(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

BOOL sub_1000283A4(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 type] == 1;

  return v3;
}

NSString *__cdecl sub_1000283E4(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

BOOL sub_100028538(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 type] == 1;

  return v3;
}

NSString *__cdecl sub_100028578(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

BOOL sub_1000286CC(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 type] == 1;

  return v3;
}

NSString *__cdecl sub_10002870C(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];

  return v3;
}

_BYTE *sub_1000288D8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[8] == 1)
  {
    [result recordValue];
    ++*(*(a1 + 32) + 80);
    v3 = *(a1 + 32);
    if (!(v3[10] % v3[4]))
    {
      [v3 analyzeValues:v3[6] currentContext:v3[5]];
      v3 = *(a1 + 32);
    }

    v4 = v3[9];
    v5 = v3[8];

    return [v5 scheduleOnBehalfOf:@"com.apple.das.monitor.batteryTemperature" between:0 and:? waking:?];
  }

  return result;
}

uint64_t sub_100028A94(uint64_t result)
{
  *(*(result + 32) + 8) = 0;
  *(*(result + 32) + 16) = 0;
  return result;
}

void sub_100028B1C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) currentValue];
  [*(*(a1 + 32) + 48) addObject:v2];
}

uint64_t sub_100028D40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100028D58(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_100028E68(uint64_t a1)
{
  [*(a1 + 32) mean];
  v3 = v2;
  [*(a1 + 40) getReferenceTemperatureForContext:*(a1 + 48) reader:*(*(a1 + 40) + 24)];
  v5 = v4;
  v6 = os_log_create("com.apple.clas", "signals");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D444(v6, v5, v3);
  }

  if (v3 - v5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v7 = (v3 - v5) / 5.0;
    if (v7 > 100.0)
    {
      v7 = 100.0;
    }

    v8 = v7;
  }

  *(*(a1 + 40) + 16) = v8;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [NSNumber numberWithDouble:v3];
  [v9 setObject:v10 forKeyedSubscript:@"BatteryTemperatureMean"];

  [*(a1 + 32) rate];
  v11 = [NSNumber numberWithDouble:?];
  [v9 setObject:v11 forKeyedSubscript:@"BatteryTemperatureRate"];

  v12 = [NSNumber numberWithUnsignedInteger:v8];
  [v9 setObject:v12 forKeyedSubscript:@"BatteryTemperatureControlEffort"];

  v13 = *(a1 + 40);
  v14 = *(v13 + 96);
  *(v13 + 96) = v9;
}

uint64_t sub_1000291D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_10020AEF0;
  qword_10020AEF0 = v2;

  return _objc_release_x1(v2, v3);
}

_BYTE *sub_100029C00(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[9] == 1)
  {
    [result recordValue];
    ++*(*(a1 + 32) + 80);
    v3 = *(a1 + 32);
    if (!(v3[10] % v3[4]))
    {
      [v3 analyzeValues:v3[6] currentContext:v3[5]];
      v3 = *(a1 + 32);
    }

    v4 = v3[9];
    v5 = v3[8];

    return [v5 scheduleOnBehalfOf:@"com.apple.das.monitor.chargeRate" between:0 and:? waking:?];
  }

  return result;
}

uint64_t sub_100029DBC(uint64_t result)
{
  *(*(result + 32) + 9) = 0;
  *(*(result + 32) + 16) = 0;
  return result;
}

void sub_100029E44(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) currentValue];
  [*(*(a1 + 32) + 48) addObject:v2];
}

uint64_t sub_10002A0EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10002A104(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10002A214(uint64_t a1)
{
  v2 = +[_DASBatteryTemperatureReader batteryProperties];
  v3 = +[NSMutableDictionary dictionary];
  v4 = [v2 objectForKeyedSubscript:@"ChargerData"];
  v5 = [v4 objectForKeyedSubscript:@"NotChargingReason"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (+[_DASRequiresPluggedInPolicy isIgnorableNotChargingReason:](_DASRequiresPluggedInPolicy, "isIgnorableNotChargingReason:", [v5 unsignedLongLongValue]))
  {
    *(*(a1 + 32) + 16) = 0;
    [v3 setObject:&off_1001C9778 forKeyedSubscript:@"ChargeRate"];
    v6 = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 16)];
    [v3 setObject:v6 forKeyedSubscript:@"ChargeRateControlEffort"];

    objc_storeStrong((*(a1 + 32) + 96), v3);
    goto LABEL_23;
  }

  v7 = [v5 unsignedLongLongValue];
  v8 = *(a1 + 32);
  if ((v7 & 0x11E) != 0)
  {
    if ((*(v8 + 8) & 1) == 0)
    {
      v9 = 1;
LABEL_9:
      *(v8 + 8) = v9;
    }
  }

  else if (*(v8 + 8))
  {
    v9 = 0;
    goto LABEL_9;
  }

  [*(a1 + 40) rate];
  v11 = v10;
  v12 = os_log_create("com.apple.clas", "signals");
  v13 = [*(a1 + 40) count];
  if (v13 >= [*(a1 + 40) limit])
  {
    v14 = v11 * 60.0;
  }

  else
  {
    v14 = 2.0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not enough samples in the queue. Setting current rate to max rate", &v23, 2u);
    }
  }

  [*(a1 + 32) getReferenceChargeRateForContext:*(a1 + 48) reader:*(*(a1 + 32) + 24)];
  v16 = v15;
  v17 = v12;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = [*(a1 + 40) allObjects];
    v23 = 134218498;
    v24 = v16;
    v25 = 2048;
    v26 = v14;
    v27 = 2112;
    v28 = v22;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Charge Rate reference Value %lf Current value %lf, Signal values: %@", &v23, 0x20u);
  }

  if (v14 < 0.0 || v14 >= v16)
  {
    v18 = 0;
  }

  else
  {
    v19 = (v16 - v14) / v16 * 100.0;
    if (v19 > 100.0)
    {
      v19 = 100.0;
    }

    v18 = v19;
  }

  *(*(a1 + 32) + 16) = v18;
  v20 = [NSNumber numberWithDouble:v14];
  [v3 setObject:v20 forKeyedSubscript:@"ChargeRate"];

  v21 = [NSNumber numberWithUnsignedInteger:*(*(a1 + 32) + 16)];
  [v3 setObject:v21 forKeyedSubscript:@"ChargeRateControlEffort"];

  objc_storeStrong((*(a1 + 32) + 96), v3);
LABEL_23:
}

void sub_10002A73C(id a1)
{
  v1 = os_log_create("com.apple.DuetActivityScheduler", "DASMobileGestaltQueries");
  v2 = qword_10020AF00;
  qword_10020AF00 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10002AE9C(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = [*(*(a1 + 32) + 48) count];
  v3 = *(a1 + 32);
  if (v2 >= *(v3 + 16))
  {

    [v3 unprotectedExecuteWorkItems];
  }

  else if (v2 == 1)
  {
    v4 = *(v3 + 56);
    v5 = dispatch_time(0, (*(v3 + 8) * 1000000000.0));
    dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 32) + 8) / 10.0 * 1000000000.0));
    v6 = *(*(a1 + 32) + 56);

    dispatch_resume(v6);
  }
}

void sub_10002B020(uint64_t a1)
{
  if ([*(*(a1 + 32) + 48) count])
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(a1 + 40) count] != 0;
  }

  [*(*(a1 + 32) + 48) addObjectsFromArray:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 48) count];
  v4 = *(a1 + 32);
  if (v3 >= *(v4 + 16))
  {

    [v4 unprotectedExecuteWorkItems];
  }

  else if (v2)
  {
    v5 = *(v4 + 56);
    v6 = dispatch_time(0, (*(v4 + 8) * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, (*(*(a1 + 32) + 8) / 10.0 * 1000000000.0));
    v7 = *(*(a1 + 32) + 56);

    dispatch_resume(v7);
  }
}

void sub_10002B25C(id a1)
{
  v1 = objc_alloc_init(_DASResultDependencyPolicy);
  v2 = qword_10020AF18;
  qword_10020AF18 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10002B6C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002B6DC(uint64_t a1)
{
  v2 = [*(a1 + 32) keyToValue];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [*(a1 + 32) updateKeyFrequency:*(a1 + 40)];
    v7 = [*(a1 + 32) keyToValue];
    v4 = [v7 objectForKeyedSubscript:*(a1 + 40)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void sub_10002B860(uint64_t a1)
{
  if ([*(a1 + 32) capacity])
  {
    v2 = [*(a1 + 32) keyToValue];
    v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

    if (v3)
    {
      v4 = *(a1 + 48);
      v5 = [*(a1 + 32) keyToValue];
      [v5 setObject:v4 forKeyedSubscript:*(a1 + 40)];

      v6 = *(a1 + 32);
      v7 = *(a1 + 40);

      [v6 updateKeyFrequency:v7];
    }

    else
    {
      v8 = [*(a1 + 32) keyToValue];
      v9 = [v8 count];
      v10 = [*(a1 + 32) capacity];

      if (v9 >= v10)
      {
        v11 = [*(a1 + 32) freqToKeys];
        v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) minFreq]);
        v13 = [v11 objectForKeyedSubscript:v12];

        v14 = [v13 firstObject];
        [v13 removeObjectAtIndex:0];
        v15 = [*(a1 + 32) keyToValue];
        [v15 removeObjectForKey:v14];

        v16 = [*(a1 + 32) keyToFreq];
        [v16 removeObjectForKey:v14];

        if (![v13 count])
        {
          v17 = [*(a1 + 32) freqToKeys];
          v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) minFreq]);
          [v17 removeObjectForKey:v18];
        }
      }

      v19 = *(a1 + 48);
      v20 = [*(a1 + 32) keyToValue];
      [v20 setObject:v19 forKeyedSubscript:*(a1 + 40)];

      v21 = [*(a1 + 32) keyToFreq];
      [v21 setObject:&off_1001C9790 forKeyedSubscript:*(a1 + 40)];

      [*(a1 + 32) setMinFreq:1];
      v22 = [*(a1 + 32) freqToKeys];
      v23 = [v22 objectForKeyedSubscript:&off_1001C9790];

      if (!v23)
      {
        v24 = +[NSMutableOrderedSet orderedSet];
        v25 = [*(a1 + 32) freqToKeys];
        [v25 setObject:v24 forKeyedSubscript:&off_1001C9790];
      }

      v27 = [*(a1 + 32) freqToKeys];
      v26 = [v27 objectForKeyedSubscript:&off_1001C9790];
      [v26 addObject:*(a1 + 40)];
    }
  }
}

void sub_10002BF94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained callback];
    v2[2]();

    WeakRetained = v3;
  }
}

void sub_10002C6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002C704(uint64_t a1, void *a2, int a3)
{
  if (a3)
  {
    v4 = a2;
    v5 = +[_DASDataProtectionStateMonitor dataProtectionClassC];

    if (v5 == v4)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v7 = [WeakRetained log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Class C protected data now available, re-instantiating configured budgets", buf, 2u);
      }

      v8 = [WeakRetained queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10002C854;
      block[3] = &unk_1001B5668;
      v12 = WeakRetained;
      v9 = WeakRetained;
      dispatch_sync(v8, block);

      v10 = [v9 lockStateMonitor];
      [v10 setChangeHandler:0];
    }
  }
}

void sub_10002C854(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 managedBudgets];
  v5 = [v2 locked_instantiateBudgetsInto:v3 withRemovals:0];

  v4 = [*(a1 + 32) widgetBudgetModulator];
  [v4 locked_addBudgetsToBeModulated:v5];
}

void sub_10002C8E4(uint64_t a1)
{
  v2 = [*(a1 + 32) locked_instantiateBudgetsInto:*(*(a1 + 32) + 24) withRemovals:0];
  [*(*(a1 + 32) + 32) locked_addBudgetsToBeModulated:v2];
}

uint64_t sub_10002C9E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  v2 = objc_opt_new();
  v3 = qword_10020AF28;
  qword_10020AF28 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10002CB90(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBudgets];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10002CC30;
  v3[3] = &unk_1001B5D48;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_10002CC30(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v11[0] = @"name";
  v4 = a3;
  v5 = [v4 name];
  v12[0] = v5;
  v11[1] = @"balance";
  [v4 balance];
  v6 = [NSNumber numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"capacity";
  [v4 capacity];
  v8 = v7;

  v9 = [NSNumber numberWithDouble:v8];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v3 addObject:v10];
}

void sub_10002DCE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D83C(v5, v6, v7);
  }
}

void sub_10002DD50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10011D8C4(v3, v4);
  }
}

void sub_10002DE18(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Resetting budgets.", v7, 2u);
  }

  [*(*(a1 + 32) + 48) flushComputedBudgetCache];
  v3 = [*(a1 + 32) locked_instantiateBudgetsInto:*(*(a1 + 32) + 24) withRemovals:0];
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  v6 = [*(v4 + 24) allValues];
  [v5 locked_replaceBudgetsToBeModulated:v6];
}

void sub_10002E114(uint64_t a1)
{
  v4 = [*(a1 + 32) managedBudgets];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  [v2 balance];
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void sub_10002E258(uint64_t a1)
{
  v4 = [*(a1 + 32) managedBudgets];
  v2 = [v4 objectForKeyedSubscript:*(a1 + 40)];
  [v2 capacity];
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void sub_10002E39C(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBudgets];
  v3 = [_DASWidgetRefreshBudgetManager budgetNameFromWidgetBudgetID:*(a1 + 40)];
  v6 = [v2 objectForKeyedSubscript:v3];

  v4 = v6;
  if (v6)
  {
    [v6 balance];
    v4 = v6;
  }

  else
  {
    v5 = 0xFFF0000000000000;
  }

  *(*(*(a1 + 48) + 8) + 24) = v5;
}

void sub_10002E4F4(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBudgets];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setBalance:*(a1 + 48)];
    [*(a1 + 32) updateBudget:v3];
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      [v3 balance];
      v6 = *(a1 + 40);
      v11 = 134218242;
      v12 = v7;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Set Balance: %.2lf for %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 134218242;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to set Balance: %.2lf for %{public}@ ; budget not found", &v11, 0x16u);
    }
  }
}

void sub_10002E70C(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBudgets];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 decrementBy:*(a1 + 48)];
    [*(a1 + 32) updateBudget:v3];
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = v4;
      [v3 balance];
      v10 = 134218498;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Decrement budget by: %.2lf for %{public}@, new balance: %.2lf", &v10, 0x20u);
    }
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10011D93C(a1, (a1 + 40), v9);
    }
  }
}

void sub_10002E90C(uint64_t a1)
{
  v2 = [*(a1 + 32) managedBudgets];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 setCapacity:*(a1 + 48)];
    [*(a1 + 32) updateBudget:v3];
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      [v3 capacity];
      v6 = *(a1 + 40);
      v11 = 134218242;
      v12 = v7;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Set capacity of budget to: %.2lf for %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 134218242;
      v12 = v9;
      v13 = 2114;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to set capacity of budget to: %.2lf for %{public}@ ; budget not found", &v11, 0x16u);
    }
  }
}

void sub_10002EC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10002EC7C(void *a1)
{
  result = [*(a1[4] + 48) stopTrackingActivity:a1[5]];
  *(*(a1[6] + 8) + 24) = v3;
  return result;
}

void sub_10002F25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10002F280(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleDataProtectionChangeFor:v5 willBeAvailable:a3];
}

void sub_10002F3E8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002F4A0;
  v6[3] = &unk_1001B56B8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v5 = v2;
  [v5 performWithOptions:4 andBlock:v6];
}

id sub_10002F4A0(uint64_t a1)
{
  [*(a1 + 32) reset];
  [*(*(a1 + 40) + 56) removeObjectForKey:*(a1 + 48)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 invalidatePersistentStoreCoordinatorFor:v3];
}

void sub_10002F580(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = [v2 persistentStores];
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

          [v3 removePersistentStore:*(*(&v9 + 1) + 8 * v8) error:0];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [*(*(a1 + 32) + 64) removeObjectForKey:*(a1 + 40)];
  }
}

void sub_10002F9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002F9F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002FA0C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (*(a1 + 64))
  {
    if (!v5)
    {
      v6 = *(a1 + 32);
      v7 = objc_opt_class();
      v8 = *(*(a1 + 32) + 16);
      v36 = 0;
      v9 = [v7 createDatabaseDirectory:v8 error:&v36];
      v10 = v36;
      v11 = v10;
      if ((v9 & 1) != 0 || [v10 code] == 516)
      {
        v12 = [*(a1 + 32) managedObjectModel];
        if (v12)
        {
          v13 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:*(a1 + 40)];
          v14 = [NSURL fileURLWithPath:v13];

          v15 = *(a1 + 32);
          v16 = [objc_opt_class() persistentStoreOptionsFor:*(a1 + 40) readOnly:*(v15 + 8)];
          v35 = v11;
          v17 = [NSPersistentStoreCoordinator metadataForPersistentStoreOfType:NSSQLiteStoreType URL:v14 options:v16 error:&v35];
          v18 = v35;

          v19 = [v12 isConfiguration:0 compatibleWithStoreMetadata:v17];
          v20 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v12];
          v21 = *(*(a1 + 48) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

          if ((v19 & 1) == 0)
          {
            v23 = *(*(*(a1 + 48) + 8) + 40);
            v34 = v18;
            [v23 destroyPersistentStoreAtURL:v14 withType:NSSQLiteStoreType options:v16 error:&v34];
            v24 = v34;

            v18 = v24;
          }

          v25 = *(*(*(a1 + 48) + 8) + 40);
          v33 = v18;
          v26 = [v25 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v14 options:v16 error:&v33];
          v11 = v33;

          if (!v26)
          {
            NSLog(@"Failed to add persistent store: %@", v11);
            [*(a1 + 32) handleDatabaseErrors:v11 forPSC:*(*(*(a1 + 48) + 8) + 40) protectionClass:*(a1 + 40)];
            v27 = *(*(a1 + 48) + 8);
            v28 = *(v27 + 40);
            *(v27 + 40) = 0;
          }

          v29 = *(*(*(a1 + 48) + 8) + 40);
          if (v29)
          {
            [*(*(a1 + 32) + 64) setObject:v29 forKeyedSubscript:*(a1 + 40)];
          }
        }

        else
        {
          NSLog(@"Failed to load Managed Object Model from %@", *(*(a1 + 32) + 32));
        }
      }

      else
      {
        NSLog(@"%@ : did not exist and could not be created: %@", *(*(a1 + 32) + 16), v11);
        v32 = *(*(a1 + 48) + 8);
        v12 = *(v32 + 40);
        *(v32 + 40) = 0;
      }
    }
  }

  else if (v5)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v30 = *(*(a1 + 48) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = 0;
  }
}

void sub_10002FEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10002FEEC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (*(a1 + 64))
  {
    if (v5)
    {
      return;
    }

    v6 = [*(a1 + 32) persistentStoreCoordinatorFor:*(a1 + 40)];
    if (v6)
    {
      v11 = v6;
      v7 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      [*(*(*(a1 + 48) + 8) + 40) setPersistentStoreCoordinator:v11];
      [*(*(*(a1 + 48) + 8) + 40) setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
      [*(*(*(a1 + 48) + 8) + 40) setUndoManager:0];
      [*(*(a1 + 32) + 56) setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 40)];
      v6 = v11;
    }
  }

  else
  {
    if (!v5)
    {
      return;
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v10 = *(*(a1 + 48) + 8);
    v6 = *(v10 + 40);
    *(v10 + 40) = 0;
  }
}

void sub_1000302D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000302F0(uint64_t a1)
{
  [*(a1 + 32) invalidateManagedObjectContextFor:*(a1 + 40)];
  result = [*(a1 + 32) deleteDatabaseForPSC:*(a1 + 48) protectionClass:*(a1 + 40) obliterate:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

void sub_100030C28(id a1)
{
  v1 = objc_alloc_init(_APRSMetricRecorder);
  v2 = qword_10020AF38;
  qword_10020AF38 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100030CF8(id a1)
{
  v1 = os_log_create("com.apple.aprs", "metricRecorder");
  v2 = qword_10020AF48;
  qword_10020AF48 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100030EF4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100030FDC;
  v15[3] = &unk_1001B5E90;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void sub_100030FEC(void *a1, void *a2)
{
  v5 = a1[4];
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 setPredicates:{v4, v5}];

  [v3 setStateDescriptor:a1[5]];
  [v3 setUpdateHandler:a1[6]];
}

id sub_10003161C(uint64_t a1)
{
  [*(a1 + 32) recordMemoryMetrics];
  v2 = *(a1 + 32);

  return [v2 recordConfigState];
}

void sub_100031B70(uint64_t a1)
{
  v5 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  if (!v5 || (v2 = [v5 pid] == *(a1 + 48), v3 = v5, !v2))
  {
    v4 = [[_AppLoggingInfo alloc] initWithPid:*(a1 + 48)];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:*(a1 + 40)];

    v3 = v5;
  }
}

void sub_100031F04(void *a1)
{
  memset(v15, 0, sizeof(v15));
  v2 = +[NSMutableDictionary dictionary];
  if (memorystatus_control() < 1)
  {
    v7 = a1[4];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10011DA6C(v7);
    }
  }

  else
  {
    v3 = LODWORD(v15[0]);
    if (LODWORD(v15[0]))
    {
      v4 = (v15 | 0xC);
      do
      {
        if (*v4)
        {
          v5 = [NSString stringWithUTF8String:v4];
          if (v5)
          {
            v6 = [NSNumber numberWithInt:*(v4 - 1)];
            [v2 setObject:v6 forKeyedSubscript:v5];
          }
        }

        v4 += 40;
        --v3;
      }

      while (v3);
    }
  }

  v8 = a1[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "frozenApps - query from kernel: %@", buf, 0xCu);
  }

  v9 = [v2 allKeys];
  v10 = [NSMutableSet setWithArray:v9];

  [v10 intersectSet:a1[5]];
  v11 = a1[4];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "frozenApps - intersect with recommendation: %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000321C0;
  v13[3] = &unk_1001B5F30;
  v13[4] = a1[6];
  v14 = v2;
  v12 = v2;
  [v10 enumerateObjectsUsingBlock:v13];
}

void sub_1000321C0(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [_DASAppResumePLLogger applicationBundleIDForExecutableName:?];
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) objectForKeyedSubscript:v6];
    [v4 startLoggingForApp:v3 pid:objc_msgSend(v5 forEvent:{"intValue"), 2}];
  }
}

id sub_1000325E0(uint64_t a1)
{
  v2 = [*(a1 + 32) commonAnalytics];
  v3 = [v2 mutableCopy];

  [v3 addEntriesFromDictionary:*(a1 + 40)];
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reporting %@ for %@", &v7, 0x16u);
  }

  return v3;
}

void sub_100033DD8(id a1)
{
  v1 = objc_alloc_init(_DASLowPowerModePolicy);
  v2 = qword_10020AF58;
  qword_10020AF58 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100034C24(uint64_t a1)
{
  v3 = objc_opt_new();
  v2 = [v3 createOrUpdateActivity:*(a1 + 32) context:*(a1 + 40)];
  [*(a1 + 48) mocSaveAndReset:*(a1 + 40)];
}

void sub_100034D74(uint64_t a1)
{
  v2 = objc_opt_new();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v2 createOrUpdateActivity:*(*(&v9 + 1) + 8 * v7) context:{*(a1 + 40), v9}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [*(a1 + 48) mocSaveAndReset:*(a1 + 40)];
}

id sub_100034FA8(uint64_t a1)
{
  [*(a1 + 32) createMOInMOC:*(a1 + 40) activity:*(a1 + 48) group:0 triggers:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 mocSaveAndReset:v3];
}

void sub_100035180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100035198(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000351B0(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v5 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v6 = [v5 groupName];

      if (v6)
      {
        v7 = *(a1 + 40);
        v8 = [*(a1 + 32) objectAtIndexedSubscript:i];
        v9 = [v8 name];
        v10 = [v7 objectForKeyedSubscript:v9];
        v11 = *(*(a1 + 72) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;
      }

      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v16 = *(*(*(a1 + 72) + 8) + 40);
      v17 = [*(a1 + 64) objectAtIndexedSubscript:i];
      [v13 createMOInMOC:v14 activity:v15 group:v16 triggers:v17];
    }
  }

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);

  return [v18 mocSaveAndReset:v19];
}

void sub_100035578(uint64_t a1)
{
  v3 = objc_opt_new();
  v2 = [v3 createOrUpdateGroup:*(a1 + 32) context:*(a1 + 40)];
  [*(a1 + 48) mocSaveAndReset:*(a1 + 40)];
}

id sub_1000356EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = *(a1 + 56);
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  [v2 createMOInMOC:v3 group:v4 activities:v5];

  return [*(a1 + 32) mocSaveAndReset:*(a1 + 40)];
}

id sub_1000358B0(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      v6 = *(a1 + 40);
      v5 = *(a1 + 48);
      v7 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v8 = [*(a1 + 56) objectAtIndexedSubscript:i];
      [v6 createMOInMOC:v5 group:v7 activities:v8];
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);

  return [v9 mocSaveAndReset:v10];
}

void sub_100035A94(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchAllActivities:*(a1 + 40)];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 32) getActivityFromManagedObject:v7];
        [*(a1 + 48) addObject:v8];
        v9 = [v7 startDate];

        if (v9)
        {
          [*(a1 + 56) addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

id sub_100035D1C(uint64_t a1)
{
  [*(a1 + 32) createMOInMOC:*(a1 + 40) activity:*(a1 + 48) group:*(a1 + 56) triggers:*(a1 + 64)];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) updateActivityStarted:*(a1 + 48)];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 mocSaveAndReset:v3];
}

void sub_100035F80(uint64_t a1)
{
  v2 = [*(a1 + 40) fetchActivitiesUsingPredicate:*(a1 + 48) context:*(a1 + 56)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 64);
        v8 = [*(a1 + 40) getActivityFromManagedObject:*(*(&v9 + 1) + 8 * v6)];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_1000361DC(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchActivitiesUsingPredicate:*(a1 + 40) context:*(a1 + 48)];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 56);
        v8 = [*(a1 + 32) getActivityFromManagedObject:*(*(&v9 + 1) + 8 * v6)];
        [v7 addObject:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void sub_10003640C(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchAllGroups:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(a1 + 48);
          v9 = [*(a1 + 32) getGroupFromManagedObject:*(*(&v10 + 1) + 8 * v7)];
          [v8 addObject:v9];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }
}

id sub_100036644(uint64_t a1)
{
  [*(a1 + 32) updateActivityStarted:*(a1 + 40) context:*(a1 + 48)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  return [v2 mocSaveAndReset:v3];
}

id sub_100036794(uint64_t a1)
{
  [*(a1 + 32) updateActivityCompleted:*(a1 + 40) context:*(a1 + 48)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  return [v2 mocSaveAndReset:v3];
}

id sub_1000368E4(uint64_t a1)
{
  [*(a1 + 32) updateActivityCanceled:*(a1 + 40) context:*(a1 + 48)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  return [v2 mocSaveAndReset:v3];
}

id sub_100036AD0(uint64_t a1)
{
  [*(a1 + 40) deleteActivity:*(a1 + 48) context:*(a1 + 56)];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);

  return [v2 mocSaveAndReset:v3];
}

id sub_100036C40(uint64_t a1)
{
  [*(a1 + 40) deleteOldActivities:*(a1 + 48)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  return [v2 mocSaveAndReset:v3];
}

id sub_100036DB0(uint64_t a1)
{
  [*(a1 + 40) deleteActivitiesIfRequired:*(a1 + 48)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  return [v2 mocSaveAndReset:v3];
}

void sub_100037170(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 12), &state64);
  v2 = arc4random_uniform(0x1ABu);
  v3 = *(a1 + 32);
  if (state64 == 2)
  {
    v4 = v2;
    v5 = 2;
    goto LABEL_5;
  }

  if (state64 == 1)
  {
    [v3 logPrewarm:@"com.apple.mobilemail" pid:v2];
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = 1;
LABEL_5:
    [v3 logDock:@"com.apple.mobilemail" pid:v4 state:v5];
    return;
  }

  v6 = v3[4];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Error with notification com.apple.das.logPrewarmDock (Wrong state)", v7, 2u);
  }
}

uint64_t sub_1000372F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020AF60;
  qword_10020AF60 = v2;

  return _objc_release_x1(v2, v3);
}

int64_t sub_100037444(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a2;
  v5 = a3;
  [(NSNumber *)v4 doubleValue];
  v7 = v6;
  [(NSNumber *)v5 doubleValue];
  if (v7 <= v8)
  {
    [(NSNumber *)v4 doubleValue];
    v11 = v10;
    [(NSNumber *)v5 doubleValue];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void sub_1000377E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:v6 forKeyedSubscript:@"BundleID"];

  [v8 setObject:v5 forKeyedSubscript:@"PredictionScore"];
  v7 = [NSNumber numberWithInt:kAPRSPredictionTypeSwap];
  [v8 setObject:v7 forKeyedSubscript:@"PredictionType"];

  [*(a1 + 32) addObject:v8];
}

void sub_1000378BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:v6 forKeyedSubscript:@"BundleID"];

  [v8 setObject:v5 forKeyedSubscript:@"PredictionScore"];
  v7 = [NSNumber numberWithInt:kAPRSPredictionTypeProactive];
  [v8 setObject:v7 forKeyedSubscript:@"PredictionType"];

  [*(a1 + 32) addObject:v8];
}

void sub_100037D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100037DA0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_100038020(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 type] == 1;

  return v3;
}

void sub_100038060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  if (v4)
  {
    if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_ERROR))
    {
      sub_10011DC54(v6, v3);
    }
  }

  else if (os_log_type_enabled(*(v5 + 32), OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Successfully completed querying BMLibrary.App.InFocus\n", v7, 2u);
  }
}

void sub_1000380FC(uint64_t a1, void *a2)
{
  v4 = [a2 eventBody];
  if ([v4 starting])
  {
    v3 = [v4 bundleID];
    [*(a1 + 32) addObject:v3];
  }
}

int64_t sub_100038430(id a1, NSMutableDictionary *a2, NSMutableDictionary *a3)
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)a2 objectForKeyedSubscript:@"PredictionsScore"];
  v6 = [v5 intValue];
  v7 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:@"PredictionsScore"];

  LODWORD(v4) = [v7 intValue];
  if (v6 > v4)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void sub_1000384BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKeyedSubscript:@"BundleID"];
  v4 = [v3 objectForKeyedSubscript:@"PredictionType"];

  LODWORD(v3) = [v4 intValue];
  v5 = kAPRSPredictionTypeProactive;

  v6 = 40;
  if (v3 == v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

void sub_100038EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100039158(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 logUpdatedCarryStatus];
  [v3 setTaskCompleted];
}

Class sub_1000394EC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020AF78)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100039630;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B6170;
    v6 = 0;
    qword_10020AF78 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020AF78)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ATXProactiveSuggestionClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10011C6E0();
  }

  qword_10020AF70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100039630(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020AF78 = result;
  return result;
}

uint64_t sub_100039850(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020AF88;
  qword_10020AF88 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_100039CE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_10020AF90;
  qword_10020AF90 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100039FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100039FFC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10003A14C(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v3 = v2;
    *(*(a1[6] + 8) + 24) = [v2 BOOLValue];
    v2 = v3;
  }

  else
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

void sub_10003A2B4(uint64_t a1)
{
  v2 = objc_retainBlock(*(a1 + 48));
  [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

void sub_10003AA7C(id a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_10020AFA8;
  qword_10020AFA8 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10003AD94(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020AFB8 = objc_opt_new();

  return _objc_release_x1();
}

id sub_10003B01C(uint64_t a1)
{
  [*(a1 + 32) resetState];
  [*(a1 + 32) updatePredictedInterval];
  v2 = *(a1 + 32);
  v3 = v2[10];

  return [v2 setupHighCarbonImpactWindow:v3];
}

void sub_10003B150(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v3 = +[_CDContextQueries keyPathForPluginStatus];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  v6 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [NSNumber numberWithBool:v5];
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Plugin status is now %@", &v14, 0xCu);
  }

  v9 = *(a1 + 32);
  if (v5)
  {
    v10 = v9[11];
    v11 = +[_CDContextQueries keyPathForPluginStatus];
    v12 = [v10 lastModifiedDateForContextualKeyPath:v11];

    [v12 timeIntervalSinceNow];
    if (v13 > -10.0)
    {
      [*(a1 + 32) resetState];
      [*(a1 + 32) updatePredictedInterval];
      [*(a1 + 32) setupHighCarbonImpactWindow:*(*(a1 + 32) + 80)];
    }
  }

  else
  {
    [v9 resetState];
  }
}

void sub_10003B354(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 < 0.0)
  {
    v3 = *(*(a1 + 32) + 48);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "No CarbonImpact window. Prediction < 0";
    goto LABEL_7;
  }

  if (v2 == 0.0)
  {
    v5 = +[NSDate distantPast];
    v7 = *(a1 + 32);
    v6 = a1 + 32;
    v8 = *(v7 + 64);
    *(v7 + 64) = v5;

    v9 = +[NSDate distantPast];
    v10 = *(*v6 + 64);
    *(*v6 + 64) = v9;

    v11 = +[NSDate date];
    v12 = *(*v6 + 24);
    *(*v6 + 24) = v11;

    v3 = *(*v6 + 48);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "No Carbon Impact window. Prediction is 0";
    goto LABEL_7;
  }

  v13 = *(*(a1 + 32) + 24);
  if (!v13)
  {
    goto LABEL_13;
  }

  [v13 timeIntervalSinceNow];
  v14 = *(a1 + 32);
  if (v15 <= -v14[7])
  {
    v2 = *(a1 + 40);
LABEL_13:
    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v16 = qword_10020AFD0;
    v43 = qword_10020AFD0;
    if (!qword_10020AFD0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10003C61C;
      v45 = &unk_1001B5798;
      v46[0] = &v40;
      sub_10003C61C(buf);
      v16 = v41[3];
    }

    v17 = v16;
    _Block_object_dispose(&v40, 8);
    v18 = [v16 managerWithID:@"com.apple.dasd.gridDataManager" locationBundlePath:{@"/System/Library/LocationBundles/SystemCustomization.bundle", v40}];
    v19 = [v18 latestMarginalEmissionForecast];
    v20 = *(*(a1 + 32) + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = [v19 forecastMap];
      *buf = 138412290;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Emission Forecast: %@", buf, 0xCu);
    }

    [v19 refetchInterval];
    v24 = a1 + 32;
    *(*(a1 + 32) + 56) = fmax(v23, 14400.0);
    v25 = [*(a1 + 32) forecastForTimeInterval:v19 from:*(a1 + 40)];
    v26 = *(a1 + 32);
    v27 = [v19 fetchDate];
    v28 = v2 * 0.2;
    v29 = [v26 carbonImpactWindowStartForForecast:v25 withStartDate:v27 windowSize:v28];

    objc_storeStrong((*(a1 + 32) + 64), v29);
    v30 = [NSDate dateWithTimeInterval:*(*(a1 + 32) + 64) sinceDate:v28];
    v31 = *(*(a1 + 32) + 72);
    *(*v24 + 72) = v30;

    v32 = +[NSDate date];
    v33 = *(*(a1 + 32) + 24);
    *(*v24 + 24) = v32;

    v34 = *(*(a1 + 32) + 48);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *(a1 + 32);
      v37 = v35[8];
      v36 = v35[9];
      v38 = v35[3];
      v39 = v35[7];
      *buf = 138413058;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v36;
      *&buf[22] = 2112;
      v45 = v38;
      LOWORD(v46[0]) = 2048;
      *(v46 + 2) = v39;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "CarbonImpact Start: %@, CarbonImpact End %@, FetchTime %@, Forecast Cache internal %f", buf, 0x2Au);
    }

    [*(a1 + 32) saveCarbonImpactWindowState];

    return;
  }

  [v14 loadState];
  v3 = *(*(a1 + 32) + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "Emission Forecast fetched recently";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
  }
}

int64_t sub_10003BF48(id a1, NSNumber *a2, NSNumber *a3)
{
  if ([(NSNumber *)a2 compare:a3]== NSOrderedAscending)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

Class sub_10003C464(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020AFC8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10003C5A8;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B6290;
    v6 = 0;
    qword_10020AFC8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020AFC8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_OSChargingPredictor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10011DEEC();
  }

  qword_10020AFC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003C5A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020AFC8 = result;
  return result;
}

Class sub_10003C61C(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020AFD8)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10003C760;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B62A8;
    v6 = 0;
    qword_10020AFD8 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020AFD8)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_GDSManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10011DF14();
  }

  qword_10020AFD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10003C760(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020AFD8 = result;
  return result;
}

void sub_10003E6B8(uint64_t a1, double a2)
{
  if (a2 != 0.0)
  {
    v4 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"com.apple.dasd.systemEnergy"];
    v5 = v4;
    if (v4)
    {
      [v4 capacity];
      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.energyBudgetConsumed" byCount:llround(a2 * 10000.0 / v6)];
      v16 = @"EnergyBudgetUsage";
      [v5 capacity];
      v8 = [NSNumber numberWithDouble:a2 * 10000.0 / v7];
      v17 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      AnalyticsSendEvent();

      [v5 decrementBy:a2];
      [*(*(a1 + 32) + 40) updateBudget:v5];
      v10 = [_DASDaemonLogger logForCategory:@"energybudgeting"];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:@"com.apple.dasd.systemEnergy"];
        v12 = 134218242;
        v13 = a2;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Decremented energy budget by %f, energyBudget now is %@", &v12, 0x16u);
      }
    }
  }
}

void sub_10003E8B0(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = *(a1 + 32);
  v4 = [v3[3] objectForKeyedSubscript:@"com.apple.dasd.systemEnergy"];
  [v3 postNotificationWithBudget:v4];

  v5 = *(a1 + 32);
  v6 = [v5[3] objectForKeyedSubscript:@"com.apple.dasd.systemCellular"];
  [v5 postNotificationWithBudget:v6];
}

uint64_t sub_10003E9EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  v2 = objc_opt_new();
  v3 = qword_10020AFE8;
  qword_10020AFE8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10003EB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003EB60(uint64_t a1)
{
  result = [*(*(a1 + 32) + 56) dailyBudget];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_10003ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003ECD0(uint64_t a1)
{
  result = [*(*(a1 + 32) + 48) dailyBudget];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void sub_10003FE84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v11[0] = @"name";
  v4 = a3;
  v5 = [v4 name];
  v12[0] = v5;
  v11[1] = @"balance";
  [v4 balance];
  v6 = [NSNumber numberWithDouble:?];
  v12[1] = v6;
  v11[2] = @"capacity";
  [v4 capacity];
  v8 = v7;

  v9 = [NSNumber numberWithDouble:v8];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v3 addObject:v10];
}

void sub_1000408E4(id *a1)
{
  v2 = [a1[4] objectForKeyedSubscript:_DASUpdateActivityCellTransferKey];
  [v2 doubleValue];
  v4 = v3;

  v5 = [a1[4] objectForKeyedSubscript:_DASUpdateActivityWifiTransferKey];
  [v5 doubleValue];
  v7 = v6;

  v8 = [a1[4] objectForKeyedSubscript:_DASUpdateActivityWiFiExpensiveTransferKey];
  [v8 doubleValue];
  v10 = v9;

  v11 = [a1[4] objectForKeyedSubscript:_DASUpdateActivityCellExpensiveTransferKey];
  [v11 doubleValue];
  v13 = v12;

  v14 = [a1[4] objectForKeyedSubscript:_DASUpdateActivityWiFiInexpensiveTransferKey];
  [v14 doubleValue];
  v16 = v15;

  v17 = [a1[4] objectForKeyedSubscript:_DASUpdateActivityCellInexpensiveTransferKey];
  [v17 doubleValue];
  v19 = v18;

  v20 = a1 + 6;
  [*(a1[5] + 6) updateDataForActivity:a1[6] bytesOnCell:v4 bytesOnCellExpensive:v13 bytesOnCellInexpensive:v19 bytesOnWiFiExpensive:v10 bytesOnWiFiInexpensive:v16];
  v22 = v21;
  v23 = *(a1[5] + 2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_10011E0B4(a1 + 6, v23, v22);
  }

  if (v22 != 0.0)
  {
    v24 = [a1[5] dataBudgetForActivity:a1[6]];
    [v24 decrementBy:v22];
    [*(a1[5] + 5) updateBudget:v24];
    v25 = [a1[6] clientDataBudgetName];

    [v24 capacity];
    v27 = llround(v22 * 10000.0 / v26);
    if (v25)
    {
      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.customBudgetConsumed" byCount:v27];
    }

    else
    {
      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.networkBudgetConsumed" byCount:v27];
      [a1[5] reportMetricsForNetworkUsage:v24 forDataBudget:a1[6] totalUsage:v22 usageInCell:v4 + v7 usageInInexpensive:v4 forActivity:v19];
    }

    v28 = [_DASDaemonLogger logForCategory:@"networkbudgeting"];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *v20;
      v30 = [v29 relatedApplications];
      v31 = 134218754;
      v32 = v22;
      v33 = 2114;
      v34 = v29;
      v35 = 2114;
      v36 = v30;
      v37 = 2114;
      v38 = v24;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Decremented data budget by %f for activity %{public}@ (%{public}@) data budget is now %{public}@", &v31, 0x2Au);
    }
  }
}

id sub_100040CC8(uint64_t a1)
{
  [*(a1 + 32) capacity];
  v3 = v2;
  v4 = [_DASSystemBudgetManager identifierWithActivity:*(a1 + 40)];
  v5 = v4;
  if (v3 == 0.0 || v4 == 0)
  {
    v9 = [_DASDaemonLogger logForCategory:@"networkbudgeting"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10011E188((a1 + 40));
    }

    v7 = 0;
  }

  else
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = [NSNumber numberWithDouble:*(a1 + 48) * 10000.0 / v3];
    [v7 setObject:v8 forKeyedSubscript:@"NWBudgetUsage"];

    [v7 setObject:v5 forKeyedSubscript:@"ClientIdentifier"];
    v9 = [_DASSystemBudgetManager involvedProcessesForActivity:*(a1 + 40) withIdentifier:v5];
    v10 = [v9 anyObject];
    [v7 setObject:v10 forKeyedSubscript:@"RelatedApplication"];

    v11 = [NSNumber numberWithDouble:v3];
    [v7 setObject:v11 forKeyedSubscript:@"BudgetCapacity"];

    v12 = *(a1 + 56) / *(a1 + 64);
    v13 = [NSNumber numberWithDouble:*(a1 + 48) * (v12 * 10000.0) / v3];
    [v7 setObject:v13 forKeyedSubscript:@"CellUsage"];

    v14 = [NSNumber numberWithDouble:*(a1 + 48) * ((1.0 - v12) * 10000.0) / v3];
    [v7 setObject:v14 forKeyedSubscript:@"WifiUsage"];

    v15 = *(a1 + 72) / *(a1 + 64);
    v16 = [NSNumber numberWithDouble:*(a1 + 48) * (v15 * 10000.0) / v3];
    [v7 setObject:v16 forKeyedSubscript:@"InexpensiveUsage"];

    v17 = [NSNumber numberWithDouble:*(a1 + 48) * ((1.0 - v15) * 10000.0) / v3];
    [v7 setObject:v17 forKeyedSubscript:@"ExpensiveUsage"];

    v18 = [_DASDaemonLogger logForCategory:@"networkbudgeting"];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10011E21C(v7, v18);
    }
  }

  return v7;
}

uint64_t sub_1000412C0(uint64_t a1)
{
  v1 = [[_DASRemoteDeviceWakeMonitor alloc] initWithDaemon:*(a1 + 32)];
  v2 = qword_10020B008;
  qword_10020B008 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100041FB4(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"remoteScreenMonitor"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) deviceIdentifier];
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ is now awake, connected, and nearby, evaluate %@", &v6, 0x16u);
  }

  v5 = [*(a1 + 48) daemon];
  [v5 evaluateScoreAndRunActivities:*(a1 + 40)];
}

uint64_t sub_10004267C(uint64_t a1)
{
  qword_10020B018 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_1000427C0(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = [NSDate dateWithTimeIntervalSinceNow:-1800.0];
  v4 = [_DASBMHistogramBuilder builderForAppInFocusStreamStarting:v3];

  v5 = +[_DASPredictionManager predictionGenerationQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000428C8;
  v8[3] = &unk_1001B63B8;
  v6 = *(a1 + 32);
  v9 = v2;
  v10 = v6;
  v7 = v2;
  [v4 histogramOnResponseQueue:v5 withCompletion:v8];
}

void sub_1000428C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 countsDictionary];
  v5 = *(*(a1 + 40) + 88);
  objc_sync_enter(v5);
  [*(*(a1 + 40) + 88) removeAllObjects];
  if ([v4 count] < 0x1A)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100042C18;
    v15[3] = &unk_1001B5608;
    v15[4] = *(a1 + 40);
    [v4 enumerateKeysAndObjectsUsingBlock:v15];
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100042B98;
    v20[3] = &unk_1001B6390;
    v6 = v4;
    v21 = v6;
    v7 = [v6 keysSortedByValueUsingComparator:v20];
    v8 = [v7 mutableCopy];

    [v8 removeObjectsInRange:{25, (objc_msgSend(v6, "count") + -25.0)}];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(a1 + 40) + 88) addObject:*(*(&v16 + 1) + 8 * i)];
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v10);
    }
  }

  v13 = *(*(a1 + 40) + 32);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(*(a1 + 40) + 88);
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Recent Applications: %@", buf, 0xCu);
  }

  objc_sync_exit(v5);
}

id sub_100042B98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectForKeyedSubscript:a3];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

uint64_t sub_100042F2C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100042F44(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:@"ApplicationPolicy:application.topN"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 40);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = +[NSDate now];
  LODWORD(v5) = [v5 isPredictionTimeline:v6 validAtDate:v7 lastUpdatedAt:*(*(a1 + 32) + 48)];

  if (v5)
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 32), OS_LOG_TYPE_DEBUG))
    {
      sub_10011E4F8();
    }
  }

  else
  {
    if (qword_10020B038 != -1)
    {
      sub_10011E4A4();
    }

    v8 = atomic_load(byte_10020B040);
    v9 = *(*(a1 + 32) + 32);
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10011E4B8();
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No pending requests for Top N timeline, sending query", buf, 2u);
      }

      atomic_store(1u, byte_10020B040);
      v10 = *(a1 + 32);
      v11 = *(v10 + 72);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000430FC;
      block[3] = &unk_1001B5668;
      block[4] = v10;
      dispatch_async(v11, block);
    }
  }
}

void sub_1000430FC(uint64_t a1)
{
  v2 = +[_DASPredictionManager sharedTimelinePredictor];
  v6 = [v2 applicationLaunchLikelihoodForTop:10 withMinimumLikelihood:3600 withTemporalResolution:0.142857143];

  atomic_store(0, byte_10020B040);
  [*(*(a1 + 32) + 40) setObject:v6 forKeyedSubscript:@"ApplicationPolicy:application.topN"];
  v3 = +[NSDate now];
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;
}

void sub_1000432C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v26 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Processing query request for %@", buf, 0xCu);
  }

  v4 = (a1 + 40);
  v5 = [*(a1 + 32) cacheKeyFor:*(a1 + 40)];
  v6 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v5];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 32) + 40);
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = +[NSDate now];
  v12 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v5];
  LODWORD(v9) = [v9 isPredictionTimeline:v10 validAtDate:v11 lastUpdatedAt:v12];

  v13 = *(a1 + 32);
  if (v9)
  {
    if (os_log_type_enabled(*(v13 + 32), OS_LOG_TYPE_DEBUG))
    {
      sub_10011E5B0(v4);
    }
  }

  else
  {
    v14 = [*(v13 + 64) objectForKeyedSubscript:v5];

    v15 = *(*(a1 + 32) + 32);
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_10011E538((a1 + 40));
      }
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v4;
        *buf = 138412290;
        v26 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No pending requests for %@, sending query", buf, 0xCu);
      }

      v17 = +[NSDate now];
      [*(*(a1 + 32) + 64) setObject:v17 forKeyedSubscript:v5];

      v18 = *(*(a1 + 32) + 72);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004357C;
      block[3] = &unk_1001B56B8;
      v19 = *(a1 + 40);
      v20 = *(a1 + 32);
      v22 = v19;
      v23 = v20;
      v24 = v5;
      dispatch_async(v18, block);
    }
  }
}

void sub_10004357C(void *a1)
{
  v2 = +[_DASPredictionManager sharedTimelinePredictor];
  v3 = [v2 launchLikelihoodForApp:a1[4]];

  [*(a1[5] + 40) setObject:v3 forKeyedSubscript:a1[6]];
  v4 = +[NSDate now];
  v5 = [*(a1[5] + 64) objectForKeyedSubscript:a1[6]];
  if (v5)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
  }

  else
  {
    v8 = +[NSDate now];
    [v4 timeIntervalSinceDate:v8];
    v7 = v9;
  }

  v10 = *(a1[5] + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v13 = 138412802;
    v14 = v11;
    v15 = 2048;
    v16 = v7;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Timeline for %@ [Took %.0lfs]: %@", &v13, 0x20u);
  }

  v12 = +[NSDate now];
  [*(a1[5] + 56) setObject:v12 forKeyedSubscript:a1[6]];

  [*(a1[5] + 64) removeObjectForKey:a1[6]];
}

void sub_100044F48(id a1)
{
  v1 = objc_alloc_init(_DASBatteryLevelPolicy);
  v2 = qword_10020B050;
  qword_10020B050 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000458DC(id a1)
{
  v1 = objc_alloc_init(_DASBootTimePolicy);
  v2 = qword_10020B068;
  qword_10020B068 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100045F90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B080;
  qword_10020B080 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_1000465F4(id a1)
{
  v1 = objc_alloc_init(_DASRequiresBuddyCompletePolicy);
  v2 = qword_10020B090;
  qword_10020B090 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10004679C(uint64_t a1)
{
  v2 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:&off_1001C9850];
  if (!v2)
  {
    [*(*(a1 + 40) + 56) setObject:&__kCFBooleanFalse forKeyedSubscript:&off_1001C9850];
    [*(a1 + 40) _updateCache];
    v2 = [*(*(a1 + 40) + 56) objectForKeyedSubscript:&off_1001C9850];
  }

  v3 = v2;
  *(*(*(a1 + 48) + 8) + 24) = [v2 BOOLValue];
}

uint64_t sub_100046A60()
{
  if (!qword_10020B098)
  {
    qword_10020B098 = _sl_dlopen();
  }

  return qword_10020B098;
}

uint64_t sub_100046B30(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B098 = result;
  return result;
}

void *sub_100046BA4(uint64_t a1)
{
  v2 = sub_100046A60();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "BYSetupAssistantNeedsToRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10020B0A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100047434(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSDate now];
  [v2 handleTimerFireAtDate:v3 withContext:*(*(a1 + 32) + 48)];
}

void sub_1000474E0(id a1)
{
  v1 = objc_alloc_init(_DASNetworkSynchronizationPolicy);
  v2 = qword_10020B0B0;
  qword_10020B0B0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100047848(uint64_t a1)
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
  v3 = [v2 BOOLForKey:@"postNWAlignmentNotifications"];

  if (v3)
  {
    if (*(a1 + 32))
    {
      v4 = @"Denying tasks due to network alignment.";
    }

    else
    {
      v4 = @"No longer denying tasks due to network alignment.";
    }

    v5 = v4;
    v7 = +[_DASNotificationManager sharedManager];
    v6 = [NSDate dateWithTimeIntervalSinceNow:10800.0];
    [v7 postNotificationAtDate:0 withTitle:@"Network Alignment" withTextContent:v5 icon:0 url:0 expirationDate:v6];
  }
}

uint64_t sub_100047E2C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [objc_alloc(objc_opt_class()) initWithDaemon:*(a1 + 32)];
  v4 = qword_10020B0C0;
  qword_10020B0C0 = v3;

  return _objc_release_x1(v3, v4);
}

void sub_1000485F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004861C(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

void sub_100048834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100048858(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v4 + 16))(v4, WeakRetained, a2);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 32) assertions];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v17 + 1) + 8 * i) isValid])
        {
          *(*(a1 + 32) + 8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *(a1 + 32);
  if ((*(v11 + 8) & 1) == 0)
  {
    v12 = *(v11 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138412290;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Every assertion within %@ has been invalidated; notifying delegate", buf, 0xCu);
    }

    v14 = [*(a1 + 32) delegate];
    v15 = *(a1 + 32);
    v16 = [v15 activity];
    [v14 assertionGroup:v15 wasInvalidatedForActivity:v16];
  }
}

void sub_10004A42C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_10004A44C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_10004A6B4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B0D0;
  qword_10020B0D0 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_10004ABF0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B0E0;
  qword_10020B0E0 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10004B0FC(id a1)
{
  v1 = objc_alloc_init(_DASCPUUsagePolicy);
  v2 = qword_10020B0F0;
  qword_10020B0F0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10004B6A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B100;
  qword_10020B100 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10004B9D4(uint64_t a1)
{
  if (_NETRBClientCreate())
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    *cStr = 0u;
    v29 = 0u;
    if (_NETRBClientGetDynamicStoreKey())
    {
      *(*(a1 + 32) + 56) = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
      if (*(*(a1 + 32) + 56))
      {
LABEL_12:
        _NETRBClientDestroy();
        goto LABEL_13;
      }

      v2 = [_DASDaemonLogger logForCategory:@"InternetSharingPolicy"];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10011F1D0(v2, v3, v4, v5, v6, v7, v8, v9);
      }
    }

    else
    {
      v2 = [_DASDaemonLogger logForCategory:@"InternetSharingPolicy"];
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10011F198(v2, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    goto LABEL_12;
  }

  v10 = [_DASDaemonLogger logForCategory:@"InternetSharingPolicy"];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10011F208(v10, v11, v12, v13, v14, v15, v16, v17);
  }

LABEL_13:
  if (*(*(a1 + 32) + 56))
  {
    *(*(a1 + 32) + 40) = SCDynamicStoreCreate(kCFAllocatorDefault, @"com.apple.dasd", sub_10004BBE4, 0);
    v25 = *(a1 + 32);
    v26 = *(v25 + 40);
    v27 = *(v25 + 56);
    SCDynamicStoreSetNotificationKeys(v26, [NSArray arrayWithObjects:&v27 count:1], 0);
    SCDynamicStoreSetDispatchQueue(*(*(a1 + 32) + 40), *(*(a1 + 32) + 48));
    [*(a1 + 32) handleWirelessModemDynamicStoreChanged];
  }
}

void sub_10004BBE4()
{
  v0 = +[_DASInternetSharingPolicy policyInstance];
  [v0 handleWirelessModemDynamicStoreChanged];
}

uint64_t sub_10004BC2C(uint64_t a1)
{
  qword_10020B110 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10004C380(id a1)
{
  v1 = objc_alloc_init(_DASDataBudgetPolicy);
  v2 = qword_10020B120;
  qword_10020B120 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10004D0C8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B138;
  qword_10020B138 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10004D7F4(uint64_t a1)
{
  v5 = [NSDate dateWithTimeIntervalSinceNow:-1209600.0];
  v2 = +[_DASPredictionManager sharedTimelinePredictor];
  v3 = [v2 deviceNearbyLikelihoodWithStartDate:v5];

  atomic_store(0, byte_10020B140);
  [*(*(a1 + 32) + 40) setObject:v3 forKeyedSubscript:@"deviceNearby"];
  v4 = +[NSDate now];
  [*(a1 + 32) setLastPredictionTimelineUpdate:v4];
}

void sub_10004DE60(uint64_t a1)
{
  state64 = 0;
  if (!notify_get_state(*(*(a1 + 32) + 12), &state64))
  {
    [*(a1 + 32) handleEarlyThermalNotification:state64 != 0];
    v2 = +[_DASSystemConditionsRecorder sharedInstance];
    [v2 recordPowerManagementStatus];
  }
}

uint64_t sub_10004E020(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B158;
  qword_10020B158 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10004EB14(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[_DASPredictionManager sharedTimelinePredictor];
  v4 = [v3 deviceActivityLikelihood];

  atomic_store(0, byte_10020B168);
  if (v4)
  {
    [*(a1 + 32) printLowLikelihoodRegions];
    v5 = +[_DASPLLogger sharedInstance];
    [v5 recordPrediction:v4 key:@"deviceActivityPrediction" valueMultiplier:100];

    v6 = *(*(a1 + 32) + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Using timeline for device activity predictions: %@", &v8, 0xCu);
    }

    [*(*(a1 + 32) + 48) setObject:v4 forKeyedSubscript:@"kDeviceActivityTimelineKey"];
    v7 = +[NSDate now];
    [*(a1 + 32) setLastPredictionTimelineUpdate:v7];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10004EE4C(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B170;
  qword_10020B170 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_10004F49C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B188;
  qword_10020B188 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10004F848(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020B190 = objc_opt_new();

  return _objc_release_x1();
}

id sub_10005043C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10020B1A0;
  v7 = qword_10020B1A0;
  if (!qword_10020B1A0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100052F34;
    v3[3] = &unk_1001B5798;
    v3[4] = &v4;
    sub_100052F34(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100050504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100051070(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained ppsIDForSubsystem:*(a1 + 32) category:*(a1 + 40)];
    [v4 lockForSubsystemAndCategory:*(a1 + 32) category:*(a1 + 40)];
    [v4 sendDataToPPS:*(a1 + 48) ppsID:v3];
    [v4 unlockForSubsystemAndCategory:*(a1 + 32) category:*(a1 + 40)];
    WeakRetained = v4;
  }
}

id sub_100051974()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10020B1D0;
  v7 = qword_10020B1D0;
  if (!qword_10020B1D0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100053258;
    v3[3] = &unk_1001B5798;
    v3[4] = &v4;
    sub_100053258(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100051A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100052F34(uint64_t a1)
{
  sub_100052F8C();
  result = objc_getClass("PPSRequestDispatcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B1A0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10011F604();
    return sub_100052F8C();
  }

  return result;
}

uint64_t sub_100052F8C()
{
  v3[0] = 0;
  if (!qword_10020B1A8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10005308C;
    v3[4] = &unk_1001B54A0;
    v3[5] = v3;
    v4 = off_1001B6640;
    v5 = 0;
    qword_10020B1A8 = _sl_dlopen();
  }

  v0 = qword_10020B1A8;
  v1 = v3[0];
  if (!qword_10020B1A8)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10005308C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B1A8 = result;
  return result;
}

void *sub_100053100(uint64_t a1)
{
  v2 = sub_100052F8C();
  result = dlsym(v2, "PPSCreateSubsystemCategoryPredicate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10020B1B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100053150(uint64_t a1)
{
  sub_100052F8C();
  result = objc_getClass("PPSTimeSeriesRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B1B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10011F62C();
    return sub_1000531A8(v3);
  }

  return result;
}

Class sub_1000531A8(uint64_t a1)
{
  sub_100052F8C();
  result = objc_getClass("PPSHistogramRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B1C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10011F654();
    return sub_100053200(v3);
  }

  return result;
}

Class sub_100053200(uint64_t a1)
{
  sub_100052F8C();
  result = objc_getClass("PPSIntervalSetRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B1C8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10011F67C();
    return sub_100053258(v3);
  }

  return result;
}

Class sub_100053258(uint64_t a1)
{
  sub_100052F8C();
  result = objc_getClass("PPSTimeSeries");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B1D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10011F6A4();
    return sub_1000532B0(v3);
  }

  return result;
}

Class sub_1000532B0(uint64_t a1)
{
  sub_100052F8C();
  result = objc_getClass("PPSEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10020B1D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_10011F6CC();
    return [(BMPublisherOptions *)v3 optionsWithStartDate:v4, v5];
  }

  return result;
}

void sub_10005359C(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 40);
  v5 = *(a1 + 48);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100053794;
  v16[3] = &unk_1001B6660;
  v16[4] = v3;
  v16[5] = &v17;
  [v4 appLaunchResumeInfoWithStartDate:v2 withEndDate:v5 withReply:v16];
  if (*(v18 + 24) == 1)
  {
    v6 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(a1 + 32) + 24);
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Resumes %@", buf, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 32);
      *buf = 138412290;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Launches %@", buf, 0xCu);
    }

    [*(a1 + 32) recordResumesAndLaunches];
  }

  v10 = +[NSMutableDictionary dictionary];
  v11 = *(a1 + 32);
  v12 = *(v11 + 24);
  *(v11 + 24) = v10;

  v13 = +[NSMutableDictionary dictionary];
  v14 = *(a1 + 32);
  v15 = *(v14 + 32);
  *(v14 + 32) = v13;

  _Block_object_dispose(&v17, 8);
}

void sub_100053794(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_ERROR))
    {
      sub_10011F6F4();
    }

LABEL_4:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_5;
  }

  if (!v5)
  {
    v11 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10011F768(v11);
    }

    goto LABEL_4;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(a1 + 32) processSignpostInterval:*(*(&v12 + 1) + 8 * i)];
      }

      v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

LABEL_5:
}

void sub_100053EFC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[(_APRSBiomeBase *)_APRSBiomeAppLaunchTimeEvent];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = +[_APRSBiomeAppLaunchTimeEvent eventWithAppBundleID:activationTime:launchReason:](_APRSBiomeAppLaunchTimeEvent, "eventWithAppBundleID:activationTime:launchReason:", v5, [v13 unsignedIntValue], *(a1 + 40));
        [(_APRSBiomeBase *)_APRSBiomeAppLaunchTimeEvent postEvent:v14 usingSource:v7];
        [*(a1 + 32) addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

void sub_100054070(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[(_APRSBiomeBase *)_APRSBiomeAppLaunchTimeEvent];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = +[_APRSBiomeAppLaunchTimeEvent eventWithAppBundleID:activationTime:launchReason:](_APRSBiomeAppLaunchTimeEvent, "eventWithAppBundleID:activationTime:launchReason:", v5, [v13 unsignedIntValue], *(a1 + 40));
        [(_APRSBiomeBase *)_APRSBiomeAppLaunchTimeEvent postEvent:v14 usingSource:v7];
        [*(a1 + 32) addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

void sub_1000542B0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_100054518(id a1)
{
  v1 = objc_alloc_init(_DASEnergyBudgetPolicy);
  v2 = qword_10020B1E8;
  qword_10020B1E8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100055180(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 0;
  notify_cancel(*(*(a1 + 32) + 12));
  v1 = [_DASDaemonLogger logForCategory:@"fileProtection"];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Device is now ClassC unlocked", v2, 2u);
  }
}

uint64_t sub_10005520C(uint64_t a1)
{
  qword_10020B200 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_10005588C(id a1)
{
  v1 = objc_alloc_init(_DASFastPassPolicy);
  v2 = qword_10020B210;
  qword_10020B210 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100055EC4(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B220;
  qword_10020B220 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100056218(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [NSDate dateWithTimeIntervalSinceNow:-1900800.0];
  if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_10011FCA8();
  }

  [(_APRSBiomeBase *)_APRSBiomeAppKillEvent pruneEventsOlderThanDate:v4];
  [(_APRSBiomeBase *)_APRSBiomeAppLaunchTimeEvent pruneEventsOlderThanDate:v4];
  [(_APRSBiomeBase *)_APRSBiomeAppStateEvent pruneEventsOlderThanDate:v4];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = *(a1 + 32);
  v6 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v7 = [v5 appActivationTimeInfoStartingAtDate:v6 withBookmarkKey:0];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100056584;
  v16[3] = &unk_1001B6730;
  v16[4] = &v25;
  v16[5] = &v21;
  v16[6] = &v17;
  [v7 enumerateKeysAndObjectsUsingBlock:v16];
  v8 = v18[3];
  v9 = v22[3] + v8;
  if (v9 == 0.0)
  {
    v11 = 0.0;
    v10 = 0.0;
  }

  else
  {
    v10 = v8 / v9 * 100.0;
    v11 = v26[3] / v9;
  }

  v29[0] = @"resumeRate";
  v12 = [NSNumber numberWithDouble:v10];
  v29[1] = @"avgActivationTime";
  v30[0] = v12;
  v13 = [NSNumber numberWithDouble:v11];
  v30[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];

  v15 = v14;
  AnalyticsSendEventLazy();
  if (os_log_type_enabled(*(*(a1 + 32) + 8), OS_LOG_TYPE_DEBUG))
  {
    sub_10011FD10();
  }

  [v3 setTaskCompleted];

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void sub_100056548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_100056584(void *a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([v7 launchCount] >= 1 && objc_msgSend(v7, "resumeCount") >= 1)
  {
    [v7 totalLaunchActivationTime];
    v5 = v4;
    [v7 totalResumeActivationTime];
    *(*(a1[4] + 8) + 24) = v5 + v6 + *(*(a1[4] + 8) + 24);
    *(*(a1[5] + 8) + 24) = *(*(a1[5] + 8) + 24) + [v7 launchCount];
    *(*(a1[6] + 8) + 24) = *(*(a1[6] + 8) + 24) + [v7 resumeCount];
  }
}

void sub_10005688C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000568A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000568BC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 32) appActivationPublisherForEventsFrom:*(a1 + 48)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000569F4;
  v8[3] = &unk_1001B6780;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056A60;
  v7[3] = &unk_1001B67D0;
  v7[4] = *(a1 + 64);
  v6 = [v3 sinkWithBookmark:v2 completion:v8 receiveInput:v7];
}

void sub_1000569F4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 16) setObject:a3 forKeyedSubscript:?];
  }

  [*(a1 + 40) logCompletion:v5 forAnalysisName:*(a1 + 48)];
}

id sub_100056A60(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100056AD4;
  v3[3] = &unk_1001B67A8;
  v3[4] = *(a1 + 32);
  return [a2 enumerateKeysAndObjectsUsingBlock:v3];
}

void sub_100056AD4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 launchCount] >= 1 && objc_msgSend(v5, "resumeCount") >= 1)
  {
    [v5 totalLaunchActivationTime];
    v7 = v6 / [v5 launchCount];
    [v5 totalResumeActivationTime];
    v9 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v7 - v8 / [v5 resumeCount]);
    [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v10];
  }
}

void sub_100056DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056DF4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 32) appActivationPublisherForEventsFrom:*(a1 + 48)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100056F2C;
  v8[3] = &unk_1001B6780;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100056F98;
  v7[3] = &unk_1001B67D0;
  v7[4] = *(a1 + 64);
  v6 = [v3 sinkWithBookmark:v2 completion:v8 receiveInput:v7];
}

void sub_100056F2C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 16) setObject:a3 forKeyedSubscript:?];
  }

  [*(a1 + 40) logCompletion:v5 forAnalysisName:*(a1 + 48)];
}

BOOL sub_100057054(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];
  v4 = v3 != 0;

  return v4;
}

NSMutableDictionary *__cdecl sub_10005709C(id a1, NSMutableDictionary *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  v7 = [v6 bundleID];

  v8 = [(NSMutableDictionary *)v4 objectForKey:v7];
  if (!v8)
  {
    v9 = objc_alloc_init(AppActivationTimeInfo);
    [(NSMutableDictionary *)v4 setObject:v9 forKeyedSubscript:v7];

    v8 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v7];
  }

  v10 = [(BMStoreEvent *)v5 eventBody];
  v11 = [v10 launchReason];

  if (v11)
  {
    [v8 setResumeCount:{objc_msgSend(v8, "resumeCount") + 1}];
    v12 = [(BMStoreEvent *)v5 eventBody];
    v15 = [v12 activationTime];
    [v8 totalResumeActivationTime];
    [v8 setTotalResumeActivationTime:v16 + v15];
  }

  else
  {
    [v8 setLaunchCount:{objc_msgSend(v8, "launchCount") + 1}];
    v12 = [(BMStoreEvent *)v5 eventBody];
    v13 = [v12 activationTime];
    [v8 totalLaunchActivationTime];
    [v8 setTotalLaunchActivationTime:v14 + v13];
  }

  return v4;
}

void sub_100057448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100057460(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 32) appKillsInfoPublisherForEventsFrom:*(a1 + 48)];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100057598;
  v8[3] = &unk_1001B6780;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v9 = v4;
  v10 = v5;
  v11 = *(a1 + 56);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057604;
  v7[3] = &unk_1001B67D0;
  v7[4] = *(a1 + 64);
  v6 = [v3 sinkWithBookmark:v2 completion:v8 receiveInput:v7];
}

void sub_100057598(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (*(a1 + 32))
  {
    [*(*(a1 + 40) + 16) setObject:a3 forKeyedSubscript:?];
  }

  [*(a1 + 40) logCompletion:v5 forAnalysisName:*(a1 + 48)];
}

void sub_100057604(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_1001B6898];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100057658(id a1, NSString *a2, AppKillsInfo *a3, BOOL *a4)
{
  v11 = a3;
  v4 = [(AppKillsInfo *)v11 firstKillEventDate];
  [v4 timeIntervalSinceNow];
  v6 = vcvtpd_s64_f64(v5 / -86400.0);

  [(AppKillsInfo *)v11 meanSpringBoardKills];
  [(AppKillsInfo *)v11 setMeanSpringBoardKills:v7 / v6];
  [(AppKillsInfo *)v11 meanRunningBoardKills];
  [(AppKillsInfo *)v11 setMeanRunningBoardKills:v8 / v6];
  [(AppKillsInfo *)v11 meanJetsamKills];
  [(AppKillsInfo *)v11 setMeanJetsamKills:v9 / v6];
  [(AppKillsInfo *)v11 meanOtherKills];
  [(AppKillsInfo *)v11 setMeanOtherKills:v10 / v6];
}

BOOL sub_1000577B0(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 bundleID];
  v4 = v3 != 0;

  return v4;
}

NSMutableDictionary *__cdecl sub_1000577F8(id a1, NSMutableDictionary *a2, BMStoreEvent *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(BMStoreEvent *)v5 eventBody];
  v7 = [v6 bundleID];

  v8 = [(NSMutableDictionary *)v4 objectForKey:v7];
  if (!v8)
  {
    v9 = objc_alloc_init(AppKillsInfo);
    [(NSMutableDictionary *)v4 setObject:v9 forKeyedSubscript:v7];

    v8 = [(NSMutableDictionary *)v4 objectForKeyedSubscript:v7];
    [(BMStoreEvent *)v5 timestamp];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    [v8 setFirstKillEventDate:v10];
  }

  v11 = [(BMStoreEvent *)v5 eventBody];
  v12 = [v11 exitReason];

  if (v12 == 10)
  {
    [v8 meanSpringBoardKills];
    [v8 setMeanSpringBoardKills:v13 + 1.0];
  }

  else
  {
    v14 = [(BMStoreEvent *)v5 eventBody];
    v15 = [v14 exitReason];

    if (v15 == 15)
    {
      [v8 meanRunningBoardKills];
      [v8 setMeanRunningBoardKills:v16 + 1.0];
    }

    else
    {
      v17 = [(BMStoreEvent *)v5 eventBody];
      v18 = [v17 exitReason];

      if (v18 == 1)
      {
        [v8 meanJetsamKills];
        [v8 setMeanJetsamKills:v19 + 1.0];
      }

      else
      {
        [v8 meanOtherKills];
        [v8 setMeanOtherKills:v20 + 1.0];
      }
    }
  }

  return v4;
}

uint64_t sub_100057B0C(uint64_t a1)
{
  qword_10020B230 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_10005817C(uint64_t a1)
{
  qword_10020B240 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

uint64_t sub_1000588B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B250;
  qword_10020B250 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100058EEC(id a1)
{
  v1 = objc_alloc_init(_DASMemoryPressurePolicy);
  v2 = qword_10020B260;
  qword_10020B260 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100059918(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B270;
  qword_10020B270 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_10005A8BC(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B288;
  qword_10020B288 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10005AE54(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = *(a1 + 40);
  if (v5 == [a2 pid])
  {
    [*(a1 + 32) addObject:v6];
  }
}

id sub_10005B4A8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) lastProgress];
  if (![v3 isIndeterminate])
  {

    goto LABEL_6;
  }

  v4 = [*(a1 + 40) isIndeterminate];

  if (!v4)
  {
LABEL_6:
    [*(a1 + 32) setLastProgress:*(a1 + 40)];
    goto LABEL_7;
  }

  v5 = *(*v2 + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100120134(v2, v5);
  }

LABEL_7:
  v6 = *(*v2 + 88);
  [*v2 computeInstantaneousProgressRate];
  [v6 ingestRateUpdate:?];
  return [*v2 unsafe_step];
}

id sub_10005C6B0()
{

  return [v0 currentState];
}

void sub_10005CB8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005CBAC(id a1, BPSCompletion *a2)
{
  if ([(BPSCompletion *)a2 state])
  {
    v2 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001205B8();
    }
  }
}

void sub_10005CC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 eventBody], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 eventBody];
    v7 = [v6 starting];

    if (*(*(a1 + 32) + 8) != v7)
    {
      v8 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [NSNumber numberWithBool:v7];
        v18 = 138412290;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New plugin state %@", &v18, 0xCu);
      }

      *(*(a1 + 32) + 8) = v7;
      v10 = *(a1 + 32);
      if (v7)
      {
        [v10 updatePredictedDuration];
        [*(a1 + 32) logActivitiesAtPlugin];
      }

      else
      {
        [v10 logPredictionResults];
        v12 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [*(*(a1 + 32) + 64) description];
          v18 = 138412290;
          v19 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Runtime Allocation and Utilizations: %@", &v18, 0xCu);
        }

        [*(a1 + 32) logPredictionInfo];
        [*(a1 + 32) logRuntimeAllocationInfo];
        [*(*(a1 + 32) + 64) removeAllDynamicRuntimeActivityTracker];
        v14 = *(a1 + 32);
        v15 = *(v14 + 56);
        *(v14 + 56) = 0;

        v16 = *(a1 + 32);
        v17 = *(v16 + 72);
        *(v16 + 72) = 0;

        *(*(a1 + 32) + 80) = 0;
        *(*(a1 + 32) + 88) = 0;
      }
    }
  }

  else
  {
    v11 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1001205EC();
    }
  }
}

uint64_t sub_10005CF00(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B2B0;
  qword_10020B2B0 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_10005D03C(uint64_t a1)
{
  v2 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 96);
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Concurrency limit changed to %lu!", &v10, 0xCu);
  }

  *(*(a1 + 32) + 96) = *(a1 + 40);
  [*(a1 + 32) allocateRuntime];
  v4 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    [*(*(a1 + 32) + 56) duration];
    v6 = v5;
    [*(*(a1 + 32) + 64) allocatedRuntime];
    v8 = v7;
    v9 = [*(*(a1 + 32) + 64) description];
    v10 = 134218498;
    v11 = v6;
    v12 = 2048;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Predicted Duration %f, Allocated Duration %f, Allocated Activity Runtimes %@", &v10, 0x20u);
  }
}

void *sub_10005D2CC(void *result)
{
  v1 = result[4];
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    result = [*(v1 + 64) allocatedRuntimeRemainingForActivity:result[5]];
    *(*(v2[6] + 8) + 24) = v3;
  }

  return result;
}

void sub_10005D648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005D660(uint64_t a1)
{
  result = [*(a1 + 32) unprotectedAllocationEligibleForActivity:*(a1 + 40) asEnabled:*(*(a1 + 32) + 9)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10005D7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005D7D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v11 = [*(a1 + 40) name];
  if ([v2 isTrackingDynamicRuntimeActivity:?])
  {
    v3 = *(*(a1 + 32) + 64);
    v4 = [*(a1 + 48) name];
    LODWORD(v3) = [v3 isTrackingDynamicRuntimeActivity:v4];

    if (v3)
    {
      [*(*(a1 + 32) + 64) allocatedRuntimeRemainingForActivity:*(a1 + 40)];
      v6 = v5;
      [*(*(a1 + 32) + 64) allocatedRuntimeRemainingForActivity:*(a1 + 48)];
      if (v6 <= 0.0 && v7 <= 0.0)
      {
        v8 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [*(a1 + 40) name];
          v10 = [*(a1 + 48) name];
          *buf = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Delaying suspending uninterruptible task %@ for %@", buf, 0x16u);
        }

        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }
  }

  else
  {
  }
}

void sub_10005DAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005DAB8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) name];
  LODWORD(v2) = [v2 isTrackingDynamicRuntimeActivity:v3];

  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void sub_10005DD88(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 9) == 1 && *(v1 + 8) == 1)
  {
    if (*(v1 + 56))
    {
      v3 = *(v1 + 64);
      v4 = [*(a1 + 40) name];
      LODWORD(v3) = [v3 isTrackingDynamicRuntimeActivity:v4];

      if (v3)
      {
        v5 = [*(a1 + 40) suspendRequestDate];

        if (!v5)
        {
          v6 = [*(a1 + 40) startDate];

          if (v6)
          {
            if (*(a1 + 48) == 1)
            {
              [*(*(a1 + 32) + 64) allocatedRuntimeRemainingForActivity:*(a1 + 40)];
              if (v7 >= 0.0)
              {
                v8 = v7;
                [*(a1 + 40) interval];
                v10 = v9;
                [*(*(a1 + 32) + 56) duration];
                v12 = v10 <= v11;
                v13 = v8;
                if (!v12)
                {
                  goto LABEL_18;
                }

                v14 = [*(a1 + 40) startDate];
                [v14 timeIntervalSinceNow];
                v16 = v15;
                v17 = -v15;

                v18 = 0.0;
                if (v16 <= -0.0)
                {
                  v18 = v17;
                }

                v13 = v8 * 0.25 >= 10.0 ? v8 * 0.25 : v8;
                if (v18 <= 60.0)
                {
LABEL_18:
                  v19 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = [*(a1 + 40) name];
                    [*(a1 + 40) interval];
                    v21 = [NSNumber numberWithDouble:?];
                    v22 = [NSNumber numberWithDouble:v8];
                    v23 = [NSNumber numberWithDouble:v13];
                    *buf = 138413058;
                    v52 = v20;
                    v53 = 2112;
                    v54 = v21;
                    v55 = 2112;
                    v56 = v22;
                    v57 = 2112;
                    v58 = v23;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Activity %@ completed, repeating interval %@: Remaining runtime to deduct %@, Deducting %@", buf, 0x2Au);
                  }

                  v24 = *(*(a1 + 32) + 64);
                  v25 = [*(a1 + 40) name];
                  [v24 reallocateDuration:v25 fromActivity:v13];

                  *(*(a1 + 32) + 88) = (v13 + *(*(a1 + 32) + 88));
                  v26 = +[NSMutableArray array];
                  v27 = +[_DASDaemon sharedInstance];
                  v28 = [v27 allPendingTasks];

                  v48 = 0u;
                  v49 = 0u;
                  v46 = 0u;
                  v47 = 0u;
                  v29 = v28;
                  v30 = [v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
                  if (v30)
                  {
                    v31 = v30;
                    v32 = *v47;
                    do
                    {
                      for (i = 0; i != v31; i = i + 1)
                      {
                        if (*v47 != v32)
                        {
                          objc_enumerationMutation(v29);
                        }

                        v34 = *(*(&v46 + 1) + 8 * i);
                        if ([*(a1 + 32) unprotectedAllocationEligibleForActivity:v34 asEnabled:{*(*(a1 + 32) + 9), v46}])
                        {
                          if ([*(*(a1 + 32) + 64) isTrackingActivity:v34])
                          {
                            v35 = [*(a1 + 40) uuid];
                            v36 = [v34 uuid];
                            v37 = [v35 isEqual:v36];

                            if ((v37 & 1) == 0)
                            {
                              [*(*(a1 + 32) + 64) reallocatedRuntimeForActivity:v34];
                              if (v38 == 0.0)
                              {
                                v39 = [v34 name];
                                [v26 addObject:v39];
                              }
                            }
                          }
                        }
                      }

                      v31 = [v29 countByEnumeratingWithState:&v46 objects:v50 count:16];
                    }

                    while (v31);
                  }

                  if ([v26 count])
                  {
                    v40 = (*(*(a1 + 32) + 88) - *(*(a1 + 32) + 80));
                    v41 = v40 / [v26 count];
                    if (v41 >= 30.0)
                    {
                      [*(*(a1 + 32) + 64) addRuntime:v26 toTrackers:v41];
                      *(*(a1 + 32) + 80) = *(*(a1 + 32) + 88);
                      if (![*(a1 + 32) significantChangeToAllocatedDuration])
                      {
LABEL_44:

                        return;
                      }

                      v42 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                      {
                        [*(*(a1 + 32) + 64) allocatedRuntime];
                        v44 = [NSNumber numberWithDouble:?];
                        [*(a1 + 32) totalAllocatedDuration];
                        v45 = [NSNumber numberWithDouble:?];
                        v43 = [*(*(a1 + 32) + 64) description];
                        *buf = 138412802;
                        v52 = v44;
                        v53 = 2112;
                        v54 = v45;
                        v55 = 2112;
                        v56 = v43;
                        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Reallocate duration resulted in changes to total allocated runtime %@ != %@ : %@", buf, 0x20u);

                        goto LABEL_41;
                      }
                    }

                    else
                    {
                      v42 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                      {
                        v43 = [NSNumber numberWithDouble:v40];
                        v44 = [NSNumber numberWithDouble:v41];
                        *buf = 138412546;
                        v52 = v43;
                        v53 = 2112;
                        v54 = v44;
                        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Waiting to reallocate %@. Would only be allocating %@ per task", buf, 0x16u);
LABEL_41:

                        goto LABEL_42;
                      }
                    }
                  }

                  else
                  {
                    v42 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      v43 = [NSNumber numberWithDouble:v13];
                      *buf = 138412290;
                      v52 = v43;
                      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No task to redistribute %@", buf, 0xCu);
LABEL_42:
                    }
                  }

                  goto LABEL_44;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10005E4C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 9) == 1 && *(v1 + 8) == 1 && *(v1 + 56))
  {
    v3 = +[NSMutableArray array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if ([*(a1 + 32) unprotectedAllocationEligibleForActivity:v9 asEnabled:{*(*(a1 + 32) + 9), v18}])
          {
            v10 = *(*(a1 + 32) + 64);
            v11 = [v9 name];
            LOBYTE(v10) = [v10 isTrackingDynamicRuntimeActivity:v11];

            if ((v10 & 1) == 0)
            {
              v12 = [v9 name];
              [v3 addObject:v12];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v6);
    }

    if ([v3 count])
    {
      v13 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reallocating runtime for %@", buf, 0xCu);
      }

      [*(a1 + 32) allocateRuntime];
    }

    if ([*(a1 + 32) significantChangeToAllocatedDuration])
    {
      v14 = [_DASDaemonLogger logForCategory:@"dynamicRuntimeLimit"];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [*(*(a1 + 32) + 64) allocatedRuntime];
        v15 = [NSNumber numberWithDouble:?];
        [*(a1 + 32) totalAllocatedDuration];
        v16 = [NSNumber numberWithDouble:?];
        v17 = [*(*(a1 + 32) + 64) description];
        *buf = 138412802;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "New task resulted in changes to total allocated runtime %@ != %@ : %@", buf, 0x20u);
      }
    }
  }
}

Class sub_100060FE0(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020B2C0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100061124;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B6A50;
    v6 = 0;
    qword_10020B2C0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020B2C0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_OSChargingPredictor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_10011DEEC();
  }

  qword_10020B2B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100061124(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B2C0 = result;
  return result;
}

void sub_1000612A4(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  v3 = [*(a1 + 32) unCenter];
  v4 = [*(a1 + 32) defaultNotifcationRequest];
  [v3 addNotificationRequest:v4 withCompletionHandler:0];
}

uint64_t sub_1000613B8(uint64_t a1)
{
  result = +[_DASConfig isInternalBuild];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = objc_alloc_init(objc_opt_class());
    v5 = qword_10020B2D0;
    qword_10020B2D0 = v4;

    return _objc_release_x1(v4, v5);
  }

  return result;
}

uint64_t sub_1000617B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020B2D8 = objc_opt_new();

  return _objc_release_x1();
}

void sub_100061D34(uint64_t a1)
{
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v3)
  {

    return;
  }

  v4 = v3;
  v32 = a1;
  v33 = v2;
  LOBYTE(v5) = 0;
  LOBYTE(v6) = 0;
  LOBYTE(v7) = 0;
  LOBYTE(v36) = 0;
  v8 = *v38;
  v9 = &pc_session_begin_ptr;
  v34 = *v38;
  do
  {
    v10 = 0;
    v35 = v4;
    do
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(v2);
      }

      v11 = *(*(&v37 + 1) + 8 * v10);
      if (v36)
      {
        v36 = 1;
        if (v7)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = [v9[385] keyPathForBatteryLevel];
        if ([v11 isEqual:v14])
        {
          v36 = 1;
        }

        else
        {
          v16 = [v9[385] keyPathForLowPowerModeStatus];
          if ([v11 isEqual:v16])
          {
            v36 = 1;
          }

          else
          {
            v18 = [v9[385] keyPathForPluginStatus];
            if ([v11 isEqual:v18])
            {
              v36 = 1;
            }

            else
            {
              v20 = [v9[385] keyPathForBatteryStateDataDictionary];
              v36 = [v11 isEqual:v20];

              v9 = &pc_session_begin_ptr;
            }

            v4 = v35;
          }

          v8 = v34;
        }

        if (v7)
        {
LABEL_26:
          v7 = 1;
          if (v6)
          {
            goto LABEL_40;
          }

          goto LABEL_27;
        }
      }

      [v9[385] keyPathForMotionState];
      v13 = v12 = v9;
      if ([v11 isEqual:v13])
      {
        v7 = 1;
      }

      else
      {
        v15 = [v12[385] keyPathForCallInProgressStatus];
        if ([v11 isEqual:v15])
        {
          v7 = 1;
        }

        else
        {
          v17 = [v12[385] keyPathForCarplayConnectedStatus];
          if ([v11 isEqual:v17])
          {
            v7 = 1;
          }

          else
          {
            v19 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/car/isConnected"];
            if ([v11 isEqual:v19])
            {
              v7 = 1;
            }

            else
            {
              v26 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/maps/navigationInProgress"];
              v7 = [v11 isEqual:v26];

              v2 = v33;
            }

            v4 = v35;
          }

          v8 = v34;
        }
      }

      v9 = &pc_session_begin_ptr;
      if (v6)
      {
LABEL_40:
        v6 = 1;
        if (v5)
        {
          goto LABEL_53;
        }

        goto LABEL_41;
      }

LABEL_27:
      [v9[385] keyPathForThermalPressureLevel];
      v22 = v21 = v9;
      if ([v11 isEqual:v22])
      {
        v6 = 1;
      }

      else
      {
        v23 = [v21[385] keyPathForCPUUsageLevel];
        if ([v11 isEqual:v23])
        {
          v6 = 1;
        }

        else
        {
          v24 = [v21[385] keyPathForInUseStatus];
          if ([v11 isEqual:v24])
          {
            v6 = 1;
          }

          else
          {
            v25 = [_CDContextualKeyPath ephemeralKeyPathWithKey:@"/system/peakPowerPressureLevel"];
            if ([v11 isEqual:v25])
            {
              v6 = 1;
            }

            else
            {
              v30 = +[_CDContextQueries keyPathForEnergyBudgetRemainingStatus];
              v6 = [v11 isEqual:v30];

              v2 = v33;
            }

            v4 = v35;
          }

          v8 = v34;
        }
      }

      v9 = &pc_session_begin_ptr;
      if (v5)
      {
LABEL_53:
        v5 = 1;
        goto LABEL_54;
      }

LABEL_41:
      v27 = [v9[385] keyPathForNetworkingBudgetRemainingStatus];
      if ([v11 isEqual:v27])
      {
        v5 = 1;
      }

      else
      {
        v28 = +[_CDNetworkContext keyPathForWiFiConnectionStatus];
        if ([v11 isEqual:v28])
        {
          v5 = 1;
        }

        else
        {
          v29 = +[_CDNetworkContext keyPathForCellConnectionStatus];
          v5 = [v11 isEqual:v29];

          v2 = v33;
        }

        v4 = v35;
      }

LABEL_54:
      v10 = v10 + 1;
    }

    while (v4 != v10);
    v4 = [v2 countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v4);

  if (v36)
  {
    v31 = v32;
    [*(v32 + 40) recordBatteryStatus];
    if ((v6 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_63:
    [*(v31 + 40) recordPowerManagementStatus];
    if ((v5 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_59:
    [*(v31 + 40) recordNetworkStatus];
    if ((v7 & 1) == 0)
    {
      return;
    }

LABEL_65:
    [*(v31 + 40) recordMotionStatus];
    return;
  }

  v31 = v32;
  if (v6)
  {
    goto LABEL_63;
  }

LABEL_58:
  if (v5)
  {
    goto LABEL_59;
  }

LABEL_64:
  if (v7)
  {
    goto LABEL_65;
  }
}

uint64_t sub_100062344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  v3 = qword_10020B2E8;
  qword_10020B2E8 = v2;

  return _objc_release_x1(v2, v3);
}

void sub_100062870(id a1)
{
  v1 = dispatch_queue_create("com.apple.dasd.aprsBiomeEventQueue", 0);
  v2 = qword_10020B300;
  qword_10020B300 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100062B74(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100062BEC;
  v3[3] = &unk_1001B6AB8;
  v3[4] = *(a1 + 40);
  return [v1 pruneWithPredicateBlock:v3];
}

BOOL sub_100062BEC(uint64_t a1, void *a2, _BYTE *a3)
{
  [a2 timestamp];
  v6 = *(a1 + 32);
  if (v5 >= v6)
  {
    *a3 = 1;
  }

  return v5 < v6;
}

id sub_100062D9C(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = qword_10020B320;
  v10 = qword_10020B320;
  if (!qword_10020B320)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000638AC;
    v6[3] = &unk_1001B5798;
    v6[4] = &v7;
    sub_1000638AC(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [v2 predictor];
  *(*(a1 + 32) + 32) = [v4 historicalClassification];

  return [*(a1 + 40) setInteger:*(*(a1 + 32) + 32) forKey:@"drainBehavior"];
}

void sub_100062E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062EA0(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_10020B310;
  qword_10020B310 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100063778(uint64_t a1)
{
  v4 = +[_APRSMetricRecorder sharedInstance];
  v2 = [*(a1 + 32) bundle];
  v3 = [v2 identifier];
  [v4 endEventForApp:v3 pid:objc_msgSend(*(a1 + 32) forEvent:{"pid"), 0}];
}

Class sub_1000638AC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_10020B328)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000639F0;
    v4[4] = &unk_1001B54A0;
    v4[5] = v4;
    v5 = off_1001B6B20;
    v6 = 0;
    qword_10020B328 = _sl_dlopen();
    v2 = v4[0];
    if (qword_10020B328)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_OSBatteryDrainPredictor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100120764();
  }

  qword_10020B320 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000639F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10020B328 = result;
  return result;
}

uint64_t sub_100063CB0(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B338;
  qword_10020B338 = v1;

  return _objc_release_x1(v1, v2);
}

uint64_t sub_100064664(uint64_t a1)
{
  v2 = +[_CDClientContext userContext];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v5 setWifiPredictionTimeline:v3];

  v6 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100120874(v4);
  }

  v7 = [*v4 wifiPredictionTimeline];
  [*(*v4 + 10) setObject:v7 forKeyedSubscript:@"wifiPredictions"];

  v8 = +[_DASPLLogger sharedInstance];
  v9 = [*v4 wifiPredictionTimeline];
  [v8 recordPrediction:v9 key:@"wiFiAssociatedPrediction" valueMultiplier:1];

  return 1;
}

uint64_t sub_100064774(uint64_t a1)
{
  v2 = +[_CDClientContext userContext];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  [v5 setCellPredictionTimeline:v3];

  v6 = [_DASDaemonLogger logForCategory:@"predictions"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1001208FC(v4);
  }

  v7 = [*v4 cellPredictionTimeline];
  [*(*v4 + 10) setObject:v7 forKeyedSubscript:@"cellPredictions"];

  v8 = +[_DASPLLogger sharedInstance];
  v9 = [*v4 cellPredictionTimeline];
  [v8 recordPrediction:v9 key:@"cellQualityPrediction" valueMultiplier:1];

  return 1;
}

void sub_100065720(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [[CTBundle alloc] initWithBundleType:1];
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = *(v10 + 128);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000659CC;
    v17[3] = &unk_1001B6B78;
    v17[4] = v10;
    [v11 copyCarrierBundleValue:v9 key:@"ManagedHours" bundleType:v8 completion:v17];
    if (*(a1 + 40) != 1)
    {
LABEL_18:

      goto LABEL_19;
    }

    v12 = [CTServiceDescriptor descriptorWithSubscriptionContext:v9];
    if (v12)
    {
      *(*(a1 + 32) + 9) = [*(*(a1 + 32) + 128) smartDataMode:v12 error:0];
      v13 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 9))
        {
          v14 = @"enabled";
        }

        else
        {
          v14 = @"disabled";
        }

        *buf = 138412290;
        v19 = v14;
        v15 = "Smart data mode is %@";
        goto LABEL_16;
      }
    }

    else
    {
      v13 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v19 = @"Service Descriptor is nil.";
        v15 = "Error getting service descriptor: %@";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    goto LABEL_18;
  }

  v8 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"Context is nil.";
    if (v7)
    {
      v16 = v7;
    }

    *buf = 138412290;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Error getting preferred data subscription: %@", buf, 0xCu);
  }

LABEL_19:
}

void sub_1000659CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !v6) && (isKindOfClass & 1) != 0)
  {
    v8 = *(a1 + 32);
    v9 = +[NSDate date];
    [v8 parseCTCongestionHoursDictionary:v5 atDate:v9];
  }

  else
  {
    v10 = [_DASDaemonLogger logForCategory:@"carrierBundle"];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Error copying carrier bundle value: %@", &v11, 0xCu);
    }

    [*(a1 + 32) clearOffPeakDiscountedHours];
  }
}

void sub_100065BB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100065BD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = [_DASDaemonLogger logForCategory:@"networkQuality"];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100120984();
      }

      [v7 setPrivateNetworkCellConnection:0];
    }

    else
    {
      [WeakRetained setPrivateNetworkCellConnection:a2];
      if (a2)
      {
        v9 = [_DASDaemonLogger logForCategory:@"networkQuality"];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109120;
          v10[1] = 1;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PNW Status: %u", v10, 8u);
        }
      }
    }
  }
}

void sub_100066114(id a1)
{
  v1 = objc_alloc_init(_DASNetworkQualityPolicy);
  v2 = qword_10020B350;
  qword_10020B350 = v1;

  v3 = qword_10020B350;

  [v3 registerForPredictionChanges];
}

uint64_t sub_1000686F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B398;
  qword_10020B398 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10006958C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_10020B3A8;
  qword_10020B3A8 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100069E74(id a1)
{
  v1 = objc_alloc_init(_DASRequiresPluggedInPolicy);
  v2 = qword_10020B3C0;
  qword_10020B3C0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006A368(uint64_t a1)
{
  if (*(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
  {
    if (dword_100209FC0 != 1)
    {
      [*(*(a1 + 40) + 88) setObject:*(a1 + 48) forKey:@"limitationsInEffectStart"];
      dword_100209FC0 = 1;
    }
  }

  else if (dword_100209FC0)
  {
    dword_100209FC0 = 0;
    v2 = [*(*(a1 + 40) + 88) objectForKey:@"limitationsInEffectStart"];
    if (v2)
    {
      [*(a1 + 48) timeIntervalSinceDate:v2];
      v4 = fmax(round(v3), 0.0);
      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.plugin.limitationDuration" byCount:v4];
      v5 = [_DASDaemonLogger logForCategory:@"stats"];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [NSNumber numberWithDouble:v4 / 60.0];
        *buf = 138412290;
        v53 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Limitations were in effect for %@ mins", buf, 0xCu);
      }

      [*(*(a1 + 40) + 88) removeObjectForKey:@"limitationsInEffectStart"];
    }
  }

  v7 = *(a1 + 57);
  if (v7 == 1 && dword_100209FC4 != 1)
  {
    [*(*(a1 + 40) + 88) setObject:*(a1 + 48) forKey:@"allowableDurationStart"];
    dword_100209FC4 = 1;
    return;
  }

  if ((v7 & 1) == 0 && dword_100209FC4)
  {
    dword_100209FC4 = 0;
    v9 = [*(*(a1 + 40) + 88) objectForKey:@"allowableDurationStart"];
    if (!v9)
    {
LABEL_47:

      return;
    }

    [*(a1 + 48) timeIntervalSinceDate:v9];
    v11 = fmax(round(v10), 0.0);
    p_cache = _DASProcessLifecycleMonitor.cache;
    [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.plugin.allowableDuration" byCount:v11];
    p_info = &OBJC_METACLASS____DASDaemonLogger.info;
    v14 = [_DASDaemonLogger logForCategory:@"stats"];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [NSNumber numberWithDouble:v11 / 60.0];
      *buf = 138412290;
      v53 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Allowable duration: %@ mins", buf, 0xCu);
    }

    [*(*(a1 + 40) + 88) removeObjectForKey:@"allowableDurationStart"];
    v16 = [*(*(a1 + 40) + 88) arrayForKey:@"dailyAllowableDurationStarts"];
    v17 = [v16 mutableCopy];

    v18 = [*(*(a1 + 40) + 88) arrayForKey:@"dailyAllowableDurations"];
    v19 = [v18 mutableCopy];

    if (![v17 count])
    {
      v51 = v9;
      v24 = [NSArray arrayWithObjects:&v51 count:1];
      v25 = [v24 mutableCopy];

      v26 = [NSNumber numberWithLongLong:v11];
      v50 = v26;
      v27 = [NSArray arrayWithObjects:&v50 count:1];
      v28 = [v27 mutableCopy];

      v19 = v28;
      v17 = v25;
LABEL_46:
      [*(*(a1 + 40) + 88) setObject:v17 forKey:@"dailyAllowableDurationStarts"];
      [*(*(a1 + 40) + 88) setObject:v19 forKey:@"dailyAllowableDurations"];

      goto LABEL_47;
    }

    v20 = [v17 lastObject];
    [v9 timeIntervalSinceDate:v20];
    v22 = v21;

    if (v22 <= 86400.0)
    {
      v23 = [v19 lastObject];
      v29 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v23 integerValue] + v11);
      [v19 setObject:v29 atIndexedSubscript:{objc_msgSend(v19, "count") - 1}];
    }

    else
    {
      [v17 addObject:v9];
      v23 = [NSNumber numberWithLongLong:v11];
      [v19 addObject:v23];
    }

    v30 = [v17 objectAtIndexedSubscript:0];
    [v9 timeIntervalSinceDate:v30];
    v32 = v31;

    if (v32 <= 604800.0)
    {
LABEL_44:
      if ([v17 count] >= 8)
      {
        [v17 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
      }

      goto LABEL_46;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v33 = v19;
    v34 = [v33 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v46;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v46 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v36 += [*(*(&v45 + 1) + 8 * i) integerValue];
        }

        v35 = [v33 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v35);

      p_cache = (_DASProcessLifecycleMonitor + 16);
      if (v36 > 53999)
      {
        v42 = 0;
        p_info = &OBJC_METACLASS____DASDaemonLogger.info;
LABEL_41:
        [*(a1 + 40) setDeficitProcessing:v42];
        [*(*(a1 + 40) + 88) setBool:v42 forKey:@"deficitProcessing"];
        v43 = [p_info + 1 logForCategory:@"stats"];
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = [*(a1 + 40) deficitProcessing];
          *buf = 67109120;
          LODWORD(v53) = v44;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Deficit Processing=%u", buf, 8u);
        }

        goto LABEL_44;
      }

      v39 = v36;
      p_info = (&OBJC_METACLASS____DASDaemonLogger + 32);
    }

    else
    {

      v39 = 0.0;
    }

    v40 = [p_info + 1 logForCategory:{@"stats", v45}];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = [NSNumber numberWithDouble:v39 / 3600.0];
      *buf = 138412290;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Allowable duration for last 7 days was %@ hours; allowing deficit processing", buf, 0xCu);
    }

    v42 = 1;
    [p_cache + 233 setValue:1 forKey:@"com.apple.das.plugin.usersInDeficitProcessing"];
    goto LABEL_41;
  }
}

uint64_t sub_10006B854(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006B86C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1 + 32) + 72) pluginLikelihood];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  atomic_store(0, byte_10020B3D0);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = +[_DASPLLogger sharedInstance];
    [v6 recordPrediction:*(*(*(a1 + 40) + 8) + 40) key:@"powerPluggedInPrediction" valueMultiplier:100];

    v7 = [_DASDaemonLogger logForCategory:@"predictions"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100120B88(a1 + 40, v7);
    }

    v8 = +[NSDate now];
    [*(a1 + 32) setLastPredictionTimelineUpdate:v8];

    [*(*(a1 + 32) + 64) setObject:*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:@"plugin"];
  }

  else
  {
    v9 = [_DASDaemonLogger logForCategory:@"prediction"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100120C0C(v9);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10006BBC0(id a1)
{
  v1 = objc_alloc_init(_DASActivityProgressPolicy);
  v2 = qword_10020B3E8;
  qword_10020B3E8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006C104(void *a1)
{
  v3 = a1;
  if ([v3 state])
  {
    v1 = [v3 error];
    v2 = [v1 description];
    printf("Error: %s\n", [v2 UTF8String]);
  }

  else
  {
    puts("Complete");
  }
}

void sub_10006C890(id a1)
{
  v1 = objc_alloc_init(_DASRequiresRestartPolicy);
  v2 = qword_10020B3F8;
  qword_10020B3F8 = v1;

  _objc_release_x1(v1, v2);
}

id sub_10006CDCC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 components:96 fromDate:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
  v10[0] = @"Default";
  v5 = [NSNumber numberWithBool:*(a1 + 40)];
  v11[0] = v5;
  v10[1] = @"StartHour";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 hour]);
  v11[1] = v6;
  v10[2] = @"StartMinute";
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 minute]);
  v11[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

void sub_10006E078(id a1)
{
  v1 = objc_alloc_init(_DASThermalPolicy);
  v2 = qword_10020B408;
  qword_10020B408 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006F3C4(id a1)
{
  v1 = os_log_create("com.apple.aprs", "appResume.AppKillWriter");
  v2 = qword_10020B420;
  qword_10020B420 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006F6D4(id a1)
{
  v1 = objc_alloc_init(_APRSBiomeAppKillEventWriter);
  v2 = qword_10020B430;
  qword_10020B430 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10006F7F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RBSProcessPredicate predicateMatchingProcessTypeApplication];
  v8 = v4;
  v5 = [NSArray arrayWithObjects:&v8 count:1];
  [v3 setPredicates:v5];

  [v3 setEvents:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006F91C;
  v6[3] = &unk_1001B5EB8;
  v7 = *(a1 + 32);
  [v3 setUpdateHandler:v6];
}

void sub_10006F91C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = [a4 exitEvent];
  v8 = [v7 context];
  v9 = [v7 process];
  v10 = [v9 pid];

  v11 = [v6 bundle];

  v12 = [v11 identifier];
  v13 = [v8 status];
  v14 = +[_APRSBiomeAppKillEvent eventWithAppBundleID:pid:exitReason:](_APRSBiomeAppKillEvent, "eventWithAppBundleID:pid:exitReason:", v12, v10, [v13 domain]);

  [(_APRSBiomeBase *)_APRSBiomeAppKillEvent postEvent:v14];
  v15 = *(a1 + 32);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100120ED0(v14, v15);
  }
}

void sub_100071524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100071544(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_10007155C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    v7 = [_DASActivityDependency dependencyFromDescriptor:v4 withUID:*(a1 + 48)];
    v6 = v7 != 0;
    if (v7)
    {
      [*(*(*(a1 + 40) + 8) + 40) addObject:v7];
    }

    else
    {
      v8 = qword_10020B438;
      if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
      {
        sub_100121A00(a1, v8);
      }
    }
  }

  else
  {
    v5 = qword_10020B438;
    if (os_log_type_enabled(qword_10020B438, OS_LOG_TYPE_ERROR))
    {
      sub_100121944(a1, v5, v4);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t *sub_100072B7C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void sub_1000730F0(uint64_t a1, int token)
{
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    v3 = *(a1 + 32);
    if (state64)
    {
      [v3 setRecentTriggerEvent:0];
      [*(a1 + 32) setWaitingForInactivity:0];
      *(*(a1 + 32) + 10) = 1;
      v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
      [v4 setBool:*(*(a1 + 32) + 10) forKey:@"ignoreTH"];
    }

    else
    {
      [v3 handleTriggerEvent];
      *(*(a1 + 32) + 10) = 0;
      v4 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
      [v4 removeObjectForKey:@"ignoreTH"];
    }
  }
}

void sub_100073384(id a1)
{
  v1 = objc_alloc_init(_DASThunderingHerdPolicy);
  v2 = qword_10020B478;
  qword_10020B478 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100073BC8(id a1)
{
  v1 = objc_alloc_init(_DASUserRequestedBackupPolicy);
  v2 = qword_10020B488;
  qword_10020B488 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100073FD0(id a1)
{
  v1 = objc_alloc_init(_DASBackgroundAppKillDemo);
  v2 = qword_10020B498;
  qword_10020B498 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100074544(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 32);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10007462C;
  v15[3] = &unk_1001B5E90;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void sub_10007463C(void *a1, void *a2)
{
  v5 = a1[4];
  v3 = a2;
  v4 = [NSArray arrayWithObjects:&v5 count:1];
  [v3 setPredicates:{v4, v5}];

  [v3 setStateDescriptor:a1[5]];
  [v3 setUpdateHandler:a1[6]];
}

uint64_t sub_100075124(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B4B0;
  qword_10020B4B0 = v2;

  return _objc_release_x1(v2, v3);
}

uint64_t sub_100075FDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  qword_10020B4C0 = objc_alloc_init(objc_opt_class());

  return _objc_release_x1();
}

void sub_100076400(id a1)
{
  v1 = objc_alloc_init(_DASProcessLifecycleMonitor);
  v2 = qword_10020B4D0;
  qword_10020B4D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100076688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL sub_100076B04(id a1, BMStoreEvent *a2)
{
  v2 = [(BMStoreEvent *)a2 eventBody];
  v3 = [v2 type] == 1;

  return v3;
}

void sub_100076B44(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = *(*(a1 + 32) + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100121D68(v4, v3);
    }
  }
}

void sub_100076BA4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 eventBody];
  v4 = [v3 bundleID];

  if (v4)
  {
    v5 = [v8 eventBody];
    v6 = [v5 starting];

    v7 = *(a1 + 32);
    if (v6)
    {
      [v7 addObject:v4];
    }

    else
    {
      [v7 removeObject:v4];
    }
  }
}

void sub_100076C48(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100121E10(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 40) mutableCopy];
  v10 = *(a1 + 32);
  v11 = *(v10 + 8);
  *(v10 + 8) = v9;
}

void sub_100076F30(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100121E80(v1);
  }
}

uint64_t sub_100076F70(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000770F4(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10007727C;
        block[3] = &unk_1001B56B8;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        block[4] = v7;
        block[5] = v9;
        v12 = v10;
        dispatch_async(v8, block);

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void sub_10007727C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) copy];
  [v1 processLifecycleMonitor:v2 updatedForegroundedProcesses:v3];
}

uint64_t sub_100077560(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(objc_opt_class());
  v3 = qword_10020B4E0;
  qword_10020B4E0 = v2;

  return _objc_release_x1(v2, v3);
}