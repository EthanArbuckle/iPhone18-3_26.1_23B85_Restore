uint64_t sub_100000CA8(uint64_t a1, void *a2, UInt8 **a3, unsigned int *a4, UInt8 **a5, unsigned int *a6)
{
  if (DeviceIdentityIsSupported())
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.fairplaydeviceidentityd.BAA", v12);

    if (!v13)
    {
      v18 = 3;
LABEL_31:

      return v18;
    }

    v44[0] = kMAOptionsBAAKeychainLabel;
    v44[1] = kMAOptionsBAAKeychainAccessGroup;
    v45[0] = @"fpdi";
    v45[1] = @"com.apple.fairplaydeviceidentityd";
    v44[2] = kMAOptionsBAASCRTAttestation;
    v44[3] = kMAOptionsResuseExistingKey;
    v45[2] = &off_10044F2C8;
    v45[3] = &__kCFBooleanTrue;
    v45[4] = &__kCFBooleanTrue;
    v44[4] = kMAOptionsBAADeleteDuplicateKeychainItems;
    v44[5] = kMAOptionsBAASkipNetworkRequest;
    v14 = [NSNumber numberWithUnsignedChar:a1];
    v45[5] = v14;
    v45[6] = &off_10044F2E0;
    v44[6] = kMAOptionsBAAValidity;
    v44[7] = kMAOptionsBAAOIDSToInclude;
    v43[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
    v43[1] = kMAOptionsBAAOIDDeviceIdentifiers;
    v43[2] = kMAOptionsBAAOIDDeviceOSInformation;
    v43[3] = kMAOptionsBAAOIDHardwareProperties;
    v15 = [NSArray arrayWithObjects:v43 count:4];
    v45[7] = v15;
    v28 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:8];

    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 2;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_10000119C;
    v33 = sub_1000011AC;
    v34 = 0;
    v16 = dispatch_semaphore_create(0);
    DeviceIdentityIssueClientCertificateWithCompletion();
    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
    if (!v30[5])
    {
LABEL_30:
      v18 = *(v40 + 6);

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v39, 8);

      goto LABEL_31;
    }

    v17 = v36[3];
    if (a2)
    {
      *a2 = v17;
    }

    else if (v17)
    {
      CFRelease(v17);
    }

    if (a3)
    {
      v19 = [v30[5] objectAtIndexedSubscript:0];
      v20 = SecCertificateCopyData(v19);

      Length = CFDataGetLength(v20);
      v22 = malloc_type_malloc(Length, 0x100004077774924uLL);
      if (v22)
      {
        v46.location = 0;
        v46.length = Length;
        CFDataGetBytes(v20, v46, v22);
      }

      else
      {
        *(v40 + 6) = 3;
      }

      *a3 = v22;
      if (a4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
      Length = 0;
      if (a4)
      {
LABEL_17:
        *a4 = Length;
      }
    }

    if (a5)
    {
      v23 = [v30[5] objectAtIndexedSubscript:1];
      v24 = SecCertificateCopyData(v23);

      v25 = CFDataGetLength(v24);
      v26 = malloc_type_malloc(v25, 0x100004077774924uLL);
      if (v26)
      {
        v47.location = 0;
        v47.length = v25;
        CFDataGetBytes(v24, v47, v26);
      }

      else
      {
        *(v40 + 6) = 3;
      }

      *a5 = v26;
      if (!a6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v24 = 0;
      v25 = 0;
      if (!a6)
      {
        goto LABEL_26;
      }
    }

    *a6 = v25;
LABEL_26:
    if (v24)
    {
      CFRelease(v24);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    goto LABEL_30;
  }

  return 4;
}

void sub_100001164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000119C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000011B4(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if ([v7 count] == 2)
  {
    v9 = *(*(a1 + 40) + 8);
    if (v8)
    {
      *(v9 + 24) = 1;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v8 description];
        v15 = 138412290;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "BAA Certificate(s) are expired: %@", &v15, 0xCu);
      }
    }

    else
    {
      *(v9 + 24) = 0;
    }

    v12 = [v7 copy];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *(*(*(a1 + 56) + 8) + 24) = a2;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 2;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 description];
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to obtain BAA certificates: %@", &v15, 0xCu);
    }
  }

  if (a2 && !*(*(*(a1 + 56) + 8) + 24))
  {
    CFRelease(a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_100001384(uint64_t a1, unsigned int a2, void *a3, _DWORD *a4, UInt8 **a5, unsigned int *a6, UInt8 **a7, unsigned int *a8)
{
  v16 = dispatch_semaphore_create(0);
  if (DeviceIdentityIsSupported())
  {
    v50 = kMAOptionsBAANetworkTimeoutInterval;
    v51 = &off_10044F2F8;
    v17 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v18 = [NSData dataWithBytes:a1 length:a2];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 5;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_10000119C;
    v44 = sub_1000011AC;
    v45 = 0;
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_100001760;
    v34 = &unk_100428320;
    v36 = &v46;
    v37 = &v40;
    v38 = a3;
    v39 = a4;
    v35 = v16;
    DeviceIdentityCreateHostSignatureWithCompletion();
    dispatch_semaphore_wait(v35, 0xFFFFFFFFFFFFFFFFLL);
    v19 = v41[5];
    if (v19)
    {
      if (!*a3 || !*a4)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to copy host signature.", buf, 2u);
        }

        v23 = 5;
        goto LABEL_30;
      }

      if (a5)
      {
        v20 = [v19 objectAtIndexedSubscript:0];
        theData = SecCertificateCopyData(v20);

        Length = CFDataGetLength(theData);
        v22 = malloc_type_malloc(Length, 0x100004077774924uLL);
        if (v22)
        {
          v52.location = 0;
          v52.length = Length;
          CFDataGetBytes(theData, v52, v22);
        }

        else
        {
          *(v47 + 6) = 3;
        }

        *a5 = v22;
      }

      else
      {
        theData = 0;
        Length = 0;
      }

      if (a6)
      {
        *a6 = Length;
      }

      if (a7)
      {
        v24 = [v41[5] objectAtIndexedSubscript:1];
        v25 = SecCertificateCopyData(v24);

        v26 = CFDataGetLength(v25);
        v27 = malloc_type_malloc(v26, 0x100004077774924uLL);
        if (v27)
        {
          v53.location = 0;
          v53.length = v26;
          CFDataGetBytes(v25, v53, v27);
        }

        else
        {
          *(v47 + 6) = 3;
        }

        *a7 = v27;
      }

      else
      {
        v25 = 0;
        v26 = 0;
      }

      if (a8)
      {
        *a8 = v26;
      }

      if (v25)
      {
        CFRelease(v25);
      }

      if (theData)
      {
        CFRelease(theData);
      }
    }

    v23 = *(v47 + 6);
LABEL_30:

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);

    goto LABEL_31;
  }

  v23 = 4;
LABEL_31:

  return v23;
}

void sub_100001734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_100001760(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([v8 count] == 2)
  {
    v10 = *(*(a1 + 40) + 8);
    if (v9)
    {
      *(v10 + 24) = 6;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 description];
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Host Certificate(s) are expired: %@", &v16, 0xCu);
      }
    }

    else
    {
      *(v10 + 24) = 0;
    }

    v13 = [v8 copy];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    **(a1 + 56) = sub_100001928(v7, *(a1 + 64));
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 5;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 description];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to obtain host certificates: %@", &v16, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void *sub_100001928(void *a1, unsigned int *a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if (a2)
    {
      v6 = [v3 length];
      v5 = malloc_type_malloc(v6, 0x100004077774924uLL);
      if (v5)
      {
        memcpy(v5, [v4 bytes], v6);
        *a2 = v6;
      }
    }
  }

  return v5;
}

uint64_t sub_1000019C4(int a1, int *a2)
{
  if (!a2)
  {
    return 4294922646;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      result = sub_100001ACC();
      if (!result)
      {
        *a2 = 2;
        return result;
      }
    }

    else
    {
      result = 0;
    }

    goto LABEL_14;
  }

  valuePtr = 0.0;
  v4 = CFPreferencesCopyAppValue(@"BAAScheduledPrefetchAbsoluteTime", @"com.apple.fairplaydeviceidentityd");
  if (!v4 || (v5 = v4, Value = CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr), CFRelease(v5), !Value))
  {
    result = sub_100001BD4(&valuePtr);
    if (result)
    {
      goto LABEL_14;
    }

    sub_100001C40(valuePtr);
  }

  if (CFAbsoluteTimeGetCurrent() < valuePtr)
  {
    v7 = 1;
LABEL_20:
    result = 0;
    *a2 = v7;
    return result;
  }

  if (!sub_100001ACC())
  {
    v7 = 2;
    goto LABEL_20;
  }

  result = sub_100001BD4(&valuePtr);
  if (!result)
  {
    v7 = 1;
    sub_100001C40(valuePtr);
    goto LABEL_20;
  }

LABEL_14:
  *a2 = 0;
  return result;
}

uint64_t sub_100001ACC()
{
  v0 = sub_100000CA8(1, 0, 0, 0, 0, 0);
  v1 = v0;
  if (v0)
  {
    if (v0 == 1 && arc4random_uniform(0x64u) < 0x50)
    {
      v1 = 0;
    }

    else if (sub_100000CA8(0, 0, 0, 0, 0, 0))
    {
      v1 = 4294922631;
    }

    else
    {
      v1 = 0;
    }
  }

  analytics_send_event_lazy();
  return v1;
}

uint64_t sub_100001BD4(double *a1)
{
  if (!a1)
  {
    return 4294922646;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current < 712584000.0)
  {
    Current = Current + arc4random_uniform((712584000.0 - Current));
  }

  result = 0;
  *a1 = Current;
  return result;
}

void sub_100001C40(double a1)
{
  valuePtr = a1;
  v1 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &valuePtr);
  CFPreferencesSetAppValue(@"BAAScheduledPrefetchAbsoluteTime", v1, @"com.apple.fairplaydeviceidentityd");
  CFPreferencesAppSynchronize(@"com.apple.fairplaydeviceidentityd");
  analytics_send_event_lazy();
  if (v1)
  {
    CFRelease(v1);
  }
}

xpc_object_t sub_100001D20(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "state", *(a1 + 32));
  return empty;
}

xpc_object_t sub_100001D5C(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  Current = CFAbsoluteTimeGetCurrent();
  xpc_dictionary_set_uint64(empty, "current_time", Current);
  xpc_dictionary_set_uint64(empty, "scheduled_time", *(a1 + 32));
  xpc_dictionary_set_BOOL(empty, "rescheduled", *(a1 + 40));
  return empty;
}

uint64_t start()
{
  printf("Launching fairplaydeviceidentityd");
  putchar(10);
  xpc_activity_register("com.apple.fairplaydeviceidentityd.baa-prefetch", XPC_ACTIVITY_CHECK_IN, &stru_1004283A0);
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.fairplaydeviceidentityd", v0);
  if (v1)
  {
    v2 = v1;
    mach_service = xpc_connection_create_mach_service("com.apple.fairplaydeviceidentityd", v1, 1uLL);
    if (mach_service)
    {
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100002140;
      handler[3] = &unk_1004283E0;
      handler[4] = v2;
      v5 = mach_service;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_activate(v5);
      dispatch_main();
    }
  }

  return 4294922644;
}

void sub_100001EC4(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_get_state(a2))
  {
    valuePtr = 0.0;
    Current = CFAbsoluteTimeGetCurrent();
    v8 = Current;
    v3 = CFPreferencesCopyAppValue(@"BackgroundActivityLastRan", @"com.apple.fairplaydeviceidentityd");
    v4 = v3;
    v5 = 0.0;
    if (v3 && CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr))
    {
      v5 = Current - valuePtr;
    }

    v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, &v8);
    CFPreferencesSetAppValue(@"BackgroundActivityLastRan", v6, @"com.apple.fairplaydeviceidentityd");
    CFPreferencesAppSynchronize(@"com.apple.fairplaydeviceidentityd");
    *buf = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000022C4;
    v13 = &unk_100428400;
    v14 = v8;
    v15 = v5;
    analytics_send_event_lazy();
    if (v4)
    {
      CFRelease(v4);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    LODWORD(valuePtr) = 0;
    v7 = sub_1000019C4(0, &valuePtr);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v7;
      LOWORD(v11) = 1024;
      *(&v11 + 2) = LODWORD(valuePtr);
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "kFPDIBAAPrefetchActivityEvent: RUN (status: %d, state: %d)", buf, 0xEu);
    }

    if (!v7 && LODWORD(valuePtr) == 2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "kFPDIBAAPrefetchActivityEvent: Using xpc_activity_unregister() to disable this activity for the rest of this boot", buf, 2u);
      }

      xpc_activity_unregister("com.apple.fairplaydeviceidentityd.baa-prefetch");
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "kFPDIBAAPrefetchActivityEvent: CHECK_IN", buf, 2u);
  }
}

void sub_100002140(uint64_t a1, xpc_connection_t connection)
{
  xpc_connection_set_target_queue(connection, *(a1 + 32));
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_1000021D0;
  handler[3] = &unk_1004283C0;
  handler[4] = connection;
  xpc_connection_set_event_handler(connection, handler);
  xpc_connection_resume(connection);
}

void sub_1000021D0(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      printf("Peer disconnected.");
      goto LABEL_10;
    }

    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    printf("Peer received error: %s", string);
    putchar(10);
  }

  else if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    printf("Peer received unexpected object type");
LABEL_10:
    putchar(10);
    v6 = *(a1 + 32);

    xpc_connection_cancel(v6);
    return;
  }

  v5 = *(a1 + 32);

  sub_1000D9A18(v5, object);
}

xpc_object_t sub_1000022C4(uint64_t a1)
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "current_time", *(a1 + 32));
  xpc_dictionary_set_uint64(empty, "delay_time", *(a1 + 40));
  return empty;
}

uint64_t sub_10000277C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  LODWORD(a51) = *(v53 + 8);
  STACK[0x570] = &STACK[0x721E819939177B67];
  STACK[0x578] = &STACK[0x1DC6E11A77B79221];
  STACK[0x580] = &STACK[0x721E819939177CAF];
  STACK[0x588] = &STACK[0x1DC6E11A77B792A9];
  STACK[0x590] = &STACK[0x1DC6E11A77B79209];
  STACK[0x598] = &STACK[0x37CA302CFAD4CEEB];
  STACK[0x5A0] = &STACK[0x462595F2AC0CCB40];
  STACK[0x5A8] = &STACK[0x37CA302CFAD4CEE3];
  v55 = a4 - 879781518;
  STACK[0x358] = 0;
  STACK[0x5B0] = &STACK[0x338];
  STACK[0x338] = 0;
  LODWORD(STACK[0x314]) = -1240130101;
  STACK[0x5B8] = &STACK[0x200];
  STACK[0x200] = 0x270676553BF336C1;
  STACK[0x2C8] = 0;
  v56 = a4 - 879781991;
  (*(a6 + 8 * (a4 ^ 0x3470CCF6)))(*(v54 + 8 * (a4 ^ 0x347086B1)) - 490484647, &STACK[0xB80], 80);
  STACK[0x5C0] = &STACK[0xB80];
  v57 = (*(a6 + 8 * (a4 ^ 0x3470CCB7)))(128);
  STACK[0x280] = v57 + 0x270676553BF336C1;
  STACK[0x3A0] = 0x270676553BF336C1;
  LODWORD(STACK[0x3AC]) = 1418211938;
  return (*(a6 + 8 * (((v57 == 0) * (v56 ^ 0x1E4E)) ^ v55)))(v57, v58, v59, v60, v61, a6, v62, a4, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_10000294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = (*(a6 + 8 * (v61 ^ 0x542C)))(112);
  STACK[0x800] = v64;
  STACK[0x2C0] = v64 + 0x5AB679E9A06C14EALL;
  LODWORD(STACK[0x398]) = v63 + 2;
  return (*(a61 + 8 * (((v64 == 0) * (v61 ^ 0x1CD3 ^ (v62 - 663) ^ (((v61 ^ 0xD78) + 70251455) | 0x30408020))) ^ v61 ^ 0xD78)))();
}

uint64_t sub_1000029E4@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = STACK[0x800];
  *v5 = 320605855;
  *(v5 + 4) = 716240777;
  *(v5 + 72) = 0x49836E4B49836E4BLL;
  *(v5 + 80) = 545;
  *(v5 + 8) = 4626;
  *(v5 + 10) = 18;
  *(v5 + 11) = 4626;
  *(v5 + 13) = 18;
  *(v5 + 14) = 4626;
  *(v5 + 16) = 18;
  *(v5 + 17) = 4626;
  *(v5 + 19) = 18;
  *(v5 + 20) = 4626;
  *(v5 + 22) = 18;
  *(v5 + 23) = 4626;
  *(v5 + 25) = 18;
  v6 = STACK[0x800];
  v7 = STACK[0x800];
  *(v6 + 26) = 4626;
  *(v6 + 28) = 18;
  *(v6 + 29) = 4626;
  *(v6 + 31) = 18;
  *(v6 + 32) = 4626;
  *(v6 + 34) = 18;
  *(v6 + 35) = 4626;
  *(v6 + 37) = 18;
  *(v6 + 38) = 4626;
  *(v6 + 40) = 18;
  *(v6 + 41) = 4626;
  *(v6 + 43) = 18;
  *(v6 + 44) = 4626;
  *(v6 + 46) = 18;
  *(v7 + 47) = 4626;
  *(v7 + 49) = 18;
  v8 = STACK[0x800];
  v9 = STACK[0x800];
  *(v8 + 50) = 4626;
  *(v8 + 52) = 18;
  *(v9 + 53) = 4626;
  *(v9 + 55) = 18;
  v10 = STACK[0x800];
  v11 = STACK[0x800];
  *(v10 + 56) = 4626;
  *(v10 + 58) = 18;
  *(v11 + 59) = 4626;
  *(v11 + 61) = 18;
  v12 = STACK[0x800];
  v13 = STACK[0x800];
  *(v12 + 62) = 4626;
  *(v12 + 64) = 18;
  *(v13 + 65) = 4626;
  *(v13 + 67) = 18;
  v14 = STACK[0x800];
  v15 = STACK[0x800];
  *(v14 + 68) = 4626;
  *(v14 + 70) = 18;
  *(v15 + 71) = 18;
  v16 = STACK[0x2C0];
  STACK[0x628] = STACK[0x2C0];
  STACK[0x630] = v16 - 0x5AB679E9A06C1496;
  *(v16 - 0x5AB679E9A06C1496) = -1125453800;
  STACK[0x638] = v16 - 0x5AB679E9A06C1482;
  *(v16 - 0x5AB679E9A06C1482) = 49289790;
  *(v16 - 0x5AB679E9A06C1492) = 4626;
  *(v16 - 0x5AB679E9A06C1490) = 18;
  *(v16 - 0x5AB679E9A06C148FLL) = 4626;
  *(v16 - 0x5AB679E9A06C148DLL) = 18;
  *(v16 - 0x5AB679E9A06C148CLL) = 4626;
  *(v16 - 0x5AB679E9A06C148ALL) = 18;
  *(v16 - 0x5AB679E9A06C1489) = 4626;
  *(v16 - 0x5AB679E9A06C1487) = 18;
  STACK[0x640] = v16 - 0x5AB679E9A06C1492;
  *(v16 - 0x5AB679E9A06C1486) = 303174162;
  STACK[0x648] = v16 - 0x5AB679E9A06C147ELL;
  *(v16 - 0x5AB679E9A06C147ELL) = 28;
  v17 = STACK[0x280];
  v18 = STACK[0x628] == a2 || v17 == 0x270676553BF336C1;
  STACK[0x650] = v17;
  v19 = !v18;
  STACK[0x658] = *(a1 + 8 * v2);
  LOBYTE(STACK[0x667]) = v19;
  LODWORD(STACK[0x45C]) = v4;
  return (*(a1 + 8 * ((v19 * ((v2 - v3 + 1681) ^ 0x3470D186 ^ (233 * (v2 ^ 0x2B8)))) ^ (v2 + 7261))))();
}

uint64_t sub_100002CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x628];
  v8 = STACK[0x628];
  v9 = STACK[0x650];
  v10 = STACK[0x650];
  *(v9 - 0x270676553BF336B1) = *(STACK[0x628] - 0x5AB679E9A06C14EALL);
  *(v9 - 0x270676553BF33669) = *(v7 - 0x5AB679E9A06C14A2);
  *(v9 - 0x270676553BF33665) = *(v7 - 0x5AB679E9A06C149ELL);
  *(v9 - 0x270676553BF33661) = *(v7 - 0x5AB679E9A06C149ALL);
  *(v9 - 0x270676553BF33660) = *(v7 - 0x5AB679E9A06C1499);
  *(v9 - 0x270676553BF33649) = *STACK[0x638];
  *(v9 - 0x270676553BF3365DLL) = *STACK[0x630];
  *(v9 - 0x270676553BF33645) = *STACK[0x648] & 1 ^ 0x27;
  v11 = *(a6 + 8 * v6);
  STACK[0x808] = v7 - 0x5AB679E9A06C14A2;
  STACK[0x810] = v8 - 0x5AB679E9A06C14E2;
  STACK[0x818] = v10 - 0x270676553BF336A9;
  STACK[0x440] = 586773264;
  return v11(v10 - 0x270676555EECA99ALL, v8 - 0x5AB679E9C36587D3, ((v6 - 71439547) & 0xFE625DE5) - 4196423829, v6 ^ 0xE7Cu, -1396058474, v6 ^ 0xE3Au, -840142842, v6 ^ 0xFB5u);
}

uint64_t sub_100002ED0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v16 = v10;
  v17 = v10 - 1;
  *(a1 + v16) = *(a2 + v16) ^ *(*(v15 + 8 * a4) + a5 + (a3 & v17)) ^ *(*(v15 + 8 * a6) + a7 + (a3 & v17)) ^ (-63 * (a3 & v17)) ^ *((a3 & v17) + *(v15 + 8 * a8) + v11 + 3) ^ v9;
  return (*(v14 + 8 * (((v12 == v16) * v13) ^ v8)))();
}

uint64_t sub_100002F40()
{
  STACK[0x440] = v2;
  STACK[0x820] = STACK[0x628] - 0x5AB679E9A06C14C2;
  STACK[0x828] = STACK[0x650] - 0x270676553BF33689;
  STACK[0x448] = v0;
  return (*(v3 + 8 * (v1 ^ 0xFA204F05 ^ ((v1 > 0xDC54BA37) * ((v1 + 98554293) ^ 0x17A1)))))();
}

uint64_t sub_100002FF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v13 = v7 + a3;
  v14 = v11 + v7;
  *(a2 + v13) = *(a1 + v13) ^ *(v8 + (v14 & 0xF)) ^ *(v9 + (v14 & 0xF)) ^ *((v14 & 0xF) + v10 + 3) ^ (-63 * (v14 & 0xF)) ^ a4;
  return (*(v12 + 8 * (((v14 == a5) * a6) ^ v6)))();
}

uint64_t sub_100003048()
{
  v3 = STACK[0x650] - 0x270676553BF33659;
  v4 = *(v2 + 8 * v0);
  STACK[0x448] = v1;
  STACK[0x830] = v3;
  STACK[0x450] = 2005710959;
  return v4(v0 ^ 0x25D4u, -3143602734, 4294967271, 96, v0 & 0x3195C8AD, -2959624486, 18, ((v0 - 7769) | 0x1804u) + 2005703001);
}

uint64_t sub_100003180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, unsigned int a61)
{
  STACK[0x450] = v62;
  v65 = *(STACK[0x628] - 0x5AB679E9A06C14E6);
  v66 = (STACK[0x650] - 0x270676553BF336ADLL);
  STACK[0x838] = v66;
  *v66 = v65;
  LODWORD(STACK[0x45C]) = v63;
  return (*(v64 + 8 * ((9157 * (v65 == ((v61 - 51) ^ 0x34709832) - 163549016)) ^ v61)))(a1, a2, a3, a4, a5, v64, a7, a61);
}

uint64_t sub_10000333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = v61 - 5459;
  v63 = (*(a6 + 8 * ((v61 - 5459) ^ 0x40C4)))(STACK[0x628] - 0x5AB679E9A06C14EALL);
  return (*(a61 + 8 * v62))(v63);
}

uint64_t sub_100003390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v34 = *(v33 + 24) == ((a4 - 879776323) ^ 0x4BDF7CEE);
  LODWORD(STACK[0x4E8]) = 1418211936;
  return (*(a6 + 8 * ((32137 * v34) ^ (a4 - 879776476))))(3415191762, 879776001, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

uint64_t sub_100003400@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  LODWORD(STACK[0x4EC]) = v4 - 2 * ((v4 + 2066951584) & 0x5F112CE3 ^ v4 & 1) + ((v3 - 2402) ^ 0xDA4471BE);
  STACK[0xA50] = &STACK[0xBD0];
  STACK[0xA58] = v2 + 0x75F5E70427D78558;
  LODWORD(STACK[0x4E4]) = -42900;
  return (*(a1 + 8 * (v3 ^ (50 * (a2 == 0)))))();
}

uint64_t sub_1000034BC@<X0>(uint64_t a1@<X5>, _BYTE *a2@<X8>)
{
  LOBYTE(STACK[0xBD0]) = *a2;
  LOBYTE(STACK[0xBD1]) = a2[1];
  LOBYTE(STACK[0xBD2]) = a2[2];
  LOBYTE(STACK[0xBD3]) = a2[3];
  LOBYTE(STACK[0xBD4]) = a2[4];
  LOBYTE(STACK[0xBD5]) = a2[5];
  LOBYTE(STACK[0xBD6]) = a2[6];
  LOBYTE(STACK[0xBD7]) = a2[7];
  LOBYTE(STACK[0xBD8]) = a2[8];
  LOBYTE(STACK[0xBD9]) = a2[9];
  LOBYTE(STACK[0xBDA]) = a2[10];
  LOBYTE(STACK[0xBDB]) = a2[11];
  LOBYTE(STACK[0xBDC]) = a2[12];
  LOBYTE(STACK[0xBDD]) = a2[13];
  LOBYTE(STACK[0xBDE]) = a2[14];
  LOBYTE(STACK[0xBDF]) = a2[15];
  STACK[0xA48] = STACK[0xA50];
  return (*(a1 + 8 * v2))();
}

uint64_t sub_100003550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v44 = STACK[0xA48];
  STACK[0xA60] = STACK[0xA48];
  if (a41)
  {
    v45 = v44 == 0;
  }

  else
  {
    v45 = 1;
  }

  v48 = v45 || v41 == 0 || v42 == 0x2C22455E98AA4154;
  LODWORD(STACK[0x4E4]) = -42900;
  return (*(a6 + 8 * ((15 * (((67 * ((v43 - 19) & 0x7F ^ 0x78)) ^ v48) & 1)) ^ v43)))();
}

uint64_t sub_1000035D0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = LODWORD(STACK[0x4EC]) == a2 - 552526989 || (STACK[0x4EC] & 0xF) != 2;
  LODWORD(STACK[0x4E4]) = -42899;
  return (*(a1 + 8 * ((v3 * (22 * (a2 ^ 0x139C) - 16356)) ^ a2)))();
}

uint64_t sub_10000362C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v57 = *(v56 + 8 * (v53 - 16535)) - 916321714;
  v58 = *(v56 + 8 * (v53 - 16199)) - 1505848290;
  v59 = *(v56 + 8 * (v53 - 16552)) - 1934671019;
  v60 = *(v56 + 8 * (v53 - 16394)) - 933624799;
  v61 = *(v60 + (*(v55 - 0x2C22455E98AA4147) ^ 0xF4));
  v62 = *(v59 + (*(v55 - 0x2C22455E98AA4151) ^ 0xA7)) ^ 0xFB;
  v63 = *(v57 + (*(v55 - 0x2C22455E98AA4146) ^ 0x3FLL));
  v64 = *(v59 + (*(v55 - 0x2C22455E98AA4149) ^ 0x38)) ^ 0x9F;
  v65 = *(v58 + (*(v55 - 0x2C22455E98AA4148) ^ 0xC4));
  v66 = ((*(v57 + (*(v55 - 0x2C22455E98AA4152) ^ 0x69)) ^ 0xE8) << 8) | ((*(v60 + (*(v55 - 0x2C22455E98AA4153) ^ 0xD0)) ^ 0x8F) << 16) | v62 | ((*(v58 + (*(v55 - 0x2C22455E98AA4154) ^ 0xCALL)) ^ ((v53 ^ 0x6C10) + 126)) << 24);
  v67 = v66 - 2 * (v66 & 0x3FFF7857 ^ v62 & 3) + 1073707092;
  v68 = *(v59 + (*(v55 - 0x2C22455E98AA4145) ^ 0xALL));
  v69 = ((*(v57 + (*(v55 - 0x2C22455E98AA414ELL) ^ 0x4ALL)) ^ 0x19) << 8) | ((*(v58 + (*(v55 - 0x2C22455E98AA4150) ^ 0xF6)) ^ 0xCCCCCCCC) << 24);
  LODWORD(v58) = ((*(v57 + (*(v55 - 0x2C22455E98AA414ALL) ^ 0x85)) ^ 0x7D) << 8) | ((*(v60 + (*(v55 - 0x2C22455E98AA414BLL) ^ 0x20)) ^ 0xE3) << 16) | ((*(v58 + (*(v55 - 0x2C22455E98AA414CLL) ^ 0xFLL)) ^ 0x5F) << 24) | v64;
  v70 = v58 - 2 * (v58 & 0x30FE54FD ^ v64 & 8);
  v71 = (v68 ^ 0x7F | ((v65 ^ 0x97) << 24) | ((v61 ^ 0x4C) << 16) | ((v63 ^ 0xC7) << 8)) ^ 0xF8448E62;
  v72 = *(v59 + (*(v55 - 0x2C22455E98AA414DLL) ^ 0x90)) ^ 0x26 | v69 | ((*(v60 + (*(v55 - 0x2C22455E98AA414FLL) ^ 0x89)) ^ 0x4F) << 16);
  v73 = v72 - ((2 * v72) & 0x78FB0858);
  v74 = *(v56 + 8 * (v53 ^ 0x4015)) - 1729408806;
  LODWORD(v59) = *(v74 + 4 * (v63 ^ 0xF6u));
  v75 = *(v56 + 8 * (v53 ^ 0x4033)) - 1100299966;
  LODWORD(v68) = (v59 - ((2 * v59 + 207651110) & 0x26A1B01E) - 1182721886) ^ *(v75 + 4 * (v68 ^ 0x35));
  v76 = *(v56 + 8 * (v53 - 16438)) - 1674513899;
  v77 = (v68 - ((2 * v68) & 0xD0E06B68) + 1752184244) ^ *(v76 + 4 * (v65 ^ 0xFEu));
  v78 = *(v56 + 8 * (v53 ^ 0x4051)) - 1507838730;
  LODWORD(STACK[0x518]) = v67;
  v79 = v67 ^ *(v78 + 4 * (v61 ^ 0x98u)) ^ (v77 - ((2 * v77) & 0x27162B10) - 1819601528);
  LODWORD(STACK[0x52C]) = v73 + 1014858796;
  v80 = v79 ^ (v73 + 1014858796);
  LODWORD(STACK[0x534]) = v80;
  LODWORD(STACK[0x51C]) = v70 - 1325509387;
  LODWORD(STACK[0x528]) = v71;
  v81 = v80 ^ 0x1D7251BF ^ (v70 - 1325509387);
  v82 = v81 ^ v71;
  v83 = *(v75 + 4 * (v82 ^ 0xFAu)) ^ *(v78 + 4 * (BYTE2(v82) ^ 0xEBu)) ^ (*(v74 + 4 * (BYTE1(v82) ^ 0x41u)) - 1506787181);
  LODWORD(STACK[0x530]) = v79;
  v84 = v79 ^ *(v76 + 4 * (HIBYTE(v82) ^ 0xA)) ^ ((v83 ^ 0x80DBCD87) - 2 * ((v83 ^ 0x80DBCD87) & 0x687035BC ^ v83 & 8) + 1752184244);
  LODWORD(STACK[0x544]) = v81;
  v81 ^= 0xA5C21207;
  LODWORD(STACK[0x568]) = v84 ^ 0xD9332761;
  v85 = v84 ^ 0xD9332761 ^ v80 ^ 0x1D7251BF;
  LODWORD(STACK[0x564]) = v82 ^ 0x69101DD8;
  v86 = v85 ^ v81 ^ v82 ^ 0x69101DD8;
  v87 = *(v78 + 4 * (BYTE2(v86) ^ 0xB5u));
  LODWORD(STACK[0x5E4]) = v85 ^ v81;
  v88 = v87 ^ 0x80DBCD87 ^ *(v75 + 4 * (v86 ^ 0xEDLL));
  v89 = *(v76 + ((v86 >> 22) & 0x3FC ^ 0x338)) ^ v84 ^ (*(v74 + 4 * (BYTE1(v86) ^ 0x74)) - 1506787181) ^ (v88 - ((2 * v88) & 0xD0E06B68) + 1752184244);
  LODWORD(STACK[0x56C]) = v85;
  v90 = v89 ^ 0x5785F150 ^ v81;
  v91 = v90 ^ v86;
  v92 = v89 ^ 0x5785F150 ^ v85;
  v93 = *(v75 + 4 * ((v90 ^ v86) ^ 0x4Bu)) ^ *(v76 + 4 * (((v90 ^ v86) >> 24) ^ 0xFE)) ^ 0x7B20EDBB;
  v94 = *(v78 + 4 * (BYTE2(v91) ^ 0xFDLL)) ^ (*(v74 + 4 * (BYTE1(v91) ^ 0xDCLL)) - 1506787181);
  LODWORD(STACK[0x610]) = v89;
  v95 = (v93 - ((2 * v93) & 0x27162B10) - 1819601528) ^ v94 ^ v89;
  LODWORD(STACK[0x604]) = v86;
  LODWORD(STACK[0x614]) = v92;
  v96 = v95 ^ v92;
  v97 = v96 ^ 0x8AAA062D;
  v98 = v86 ^ v96 ^ 0x8AAA062D;
  LODWORD(v86) = *(v76 + 4 * (HIBYTE(v98) ^ 0x84));
  LODWORD(STACK[0x6A8]) = v91;
  v99 = *(v78 + 4 * (BYTE2(v98) ^ 0x81u));
  LODWORD(STACK[0x6B8]) = v96;
  v100 = (v86 ^ v99 ^ 0xFBFB203C) - ((2 * (v86 ^ v99 ^ 0xFBFB203C)) & 0x26A1B01E);
  LODWORD(v86) = (*(v74 + 4 * (BYTE1(v98) ^ 0x3BLL)) - 1506787181) ^ *(v75 + 4 * (v98 ^ 0x96));
  LODWORD(STACK[0x6AC]) = v95;
  v101 = v86 ^ v95 ^ (v100 + 324065295);
  LODWORD(STACK[0x69C]) = v90;
  v102 = v97 ^ v90;
  LODWORD(STACK[0x6E4]) = v101 ^ 0x14182450;
  v103 = v101 ^ 0x14182450 ^ v97;
  LODWORD(STACK[0x704]) = v103;
  v104 = v103 ^ 0xDACE03B0;
  LODWORD(STACK[0x6BC]) = v102;
  v105 = v103 ^ 0xDACE03B0 ^ v102;
  v106 = v105 ^ v98;
  LODWORD(STACK[0x6C4]) = v98;
  HIDWORD(v107) = ((v105 ^ v98) >> 3) ^ 0x3387B6A;
  LODWORD(v107) = ((v105 ^ ~v98) << 29) ^ 0xC0000000;
  v108 = *(v74 + 4 * (((v105 ^ v98) >> 8) ^ 1u));
  v109 = (v108 - ((2 * v108 + 207651110) & 0x27162B10) + 968578587) ^ *(v78 + 4 * (((v105 ^ v98) >> 16) ^ 0x6Bu));
  v110 = (v109 - ((2 * v109) & 0x26A1B01E) + 324065295) ^ *(v75 + 4 * ((v107 >> 29) ^ 0x19C3DBA2));
  v111 = *(v76 + 4 * (HIBYTE(v106) ^ 0x98)) ^ v101 ^ (v110 - ((2 * v110) & 0xD0E06B68) + 1752184244);
  LODWORD(STACK[0x79C]) = v111 ^ v104;
  v112 = v111 ^ v104 ^ 0xE8E19CCA;
  LODWORD(STACK[0x840]) = v112 ^ v105;
  v113 = v112 ^ v105 ^ 0x417844C6;
  LODWORD(STACK[0x788]) = v106 ^ 0xFB3D99E1;
  v114 = v113 ^ v106 ^ 0xFB3D99E1;
  v115 = *(v78 + 4 * (BYTE2(v114) ^ 0x2Bu)) ^ 0x80DBCD87 ^ *(v75 + 4 * (v114 ^ 0xFCLL));
  v116 = (*(v74 + 4 * (BYTE1(v114) ^ 0x6ELL)) - 1506787181) ^ *(v76 + ((v114 >> 22) & 0x3FC ^ 0x37C));
  LODWORD(STACK[0x78C]) = v111;
  v117 = v116 ^ v111 ^ (v115 - ((2 * v115) & 0xD0E06B68) + 1752184244);
  v118 = v117 ^ 0x2541FBA8 ^ v112;
  LODWORD(STACK[0x874]) = v118;
  v118 ^= 0x6138E3D5u;
  LODWORD(STACK[0x76C]) = v105;
  LODWORD(STACK[0x848]) = v114;
  LODWORD(STACK[0x84C]) = v117 ^ 0x2541FBA8;
  v119 = v117 ^ 0x2541FBA8 ^ v105 ^ v114;
  v120 = *(v76 + 4 * (HIBYTE(v119) ^ 0x74)) ^ *(v75 + 4 * (v119 ^ 0x12u)) ^ 0x7B20EDBB;
  v121 = *(v78 + 4 * (BYTE2(v119) ^ 0xF4)) ^ v117 ^ (*(v74 + 4 * (BYTE1(v119) ^ 0x1ALL)) - 1506787181) ^ (v120 - ((2 * v120) & 0x27162B10) - 1819601528);
  LODWORD(STACK[0x844]) = v113;
  LODWORD(STACK[0x880]) = v118;
  v122 = v121 ^ 0x46F3D7AB ^ v118;
  v123 = v121 ^ 0x46F3D7AB ^ v113;
  LODWORD(STACK[0x884]) = v119;
  v124 = *(v74 + 4 * (((v119 ^ v121 ^ 0xD7AB ^ v113) >> 8) ^ 0xF2u));
  LODWORD(v60) = (v124 - ((2 * v124 + 207651110) & 0x27162B10) + 968578587) ^ *(v78 + 4 * (((v119 ^ v123) >> 16) ^ 0xE2u));
  LODWORD(v60) = (v60 - ((2 * v60) & 0xD0E06B68) + 1752184244) ^ *(v76 + 4 * (((v119 ^ v123) >> 24) ^ 0x4B));
  LODWORD(STACK[0x894]) = v121;
  LODWORD(v58) = v121 ^ *(v75 + 4 * ((v119 ^ v123) ^ 0x68u)) ^ (v60 - ((2 * v60) & 0x26A1B01E) + 324065295);
  LODWORD(STACK[0x954]) = v58;
  LODWORD(v58) = v122 ^ 0x92C1A4EB ^ v58;
  LODWORD(STACK[0x91C]) = v123;
  LODWORD(STACK[0x95C]) = v58;
  LODWORD(v58) = v58 ^ v123;
  LODWORD(STACK[0x96C]) = v58;
  LODWORD(v58) = v58 ^ 0x7A3EF30D;
  LODWORD(STACK[0x92C]) = v119 ^ v123 ^ 0x5195D7EA;
  LODWORD(v60) = v58 ^ v119 ^ v123 ^ 0x5195D7EA;
  LODWORD(STACK[0x9A4]) = v60 ^ 0xF4D49F3B;
  LODWORD(v74) = *(v78 + 4 * (BYTE2(v60) ^ 0x63u)) ^ *(v76 + 4 * (BYTE3(v60) ^ 0x61)) ^ (*(v74 + 4 * (BYTE1(v60) ^ 0x14u)) - 1506787181) ^ *(v75 + 4 * ((v58 ^ v119 ^ v123 ^ 0xEA) ^ 0xBAu));
  LODWORD(STACK[0x8A4]) = v122;
  LODWORD(STACK[0x9B4]) = v74;
  v125 = v74 ^ v122;
  LODWORD(STACK[0x9B8]) = v125;
  v126 = *(v56 + 8 * (v53 ^ 0x40E6)) - 1379750611;
  v127 = STACK[0xA60];
  LODWORD(v74) = *(v126 + (*STACK[0xA60] ^ 0xF5));
  LODWORD(STACK[0x9BC]) = v125 ^ v58;
  v128 = *(v56 + 8 * (v53 ^ 0x4086)) - 934620019;
  v129 = *(v56 + 8 * (v53 - 16222)) - 1746711891;
  v130 = *(v56 + 8 * (v53 - 16208)) - 1413361555;
  LODWORD(v58) = *(v130 + (v127[2] ^ 0x17));
  HIDWORD(v107) = ~v58;
  LODWORD(v107) = (v58 ^ 0xBC) << 24;
  LODWORD(v57) = (((v74 - 23) ^ 9) << 24) | (((v107 >> 25) ^ 0xE1) << 8) | (51 * *(v129 + (v127[3] ^ 0xAFLL)) - 78);
  HIDWORD(a36) = -78;
  LODWORD(v78) = *(v130 + (v127[6] ^ 0xB5));
  HIDWORD(v107) = ~v78;
  LODWORD(v107) = (v78 ^ 0xBC) << 24;
  LODWORD(v58) = (51 * *(v129 + (v127[7] ^ 0x47)) - 78) ^ 0x15 | (((*(v126 + (v127[4] ^ 0xC4)) - 23) ^ 0x78) << 24) | ((*(v128 + (v127[5] ^ 0x6FLL)) ^ 0xFE) << 16) | (((v107 >> 25) ^ 0x19) << 8);
  LODWORD(v78) = *(v130 + (v127[14] ^ 0xB0));
  HIDWORD(v107) = ~v78;
  LODWORD(v107) = (v78 ^ 0xBC) << 24;
  LODWORD(v57) = v57 | ((*(v128 + (v127[1] ^ 0x8CLL)) ^ 0xCF) << 16);
  HIDWORD(a42) = v58 ^ 0xA8EA70AC;
  LODWORD(v127) = (((*(v128 + (v127[13] ^ 0x16)) ^ 0xC4) << 16) | (((*(v126 + (v127[12] ^ 0x67)) - 23) ^ 0x88888888) << 24) | (((51 * *(v129 + (v127[15] ^ 0x43))) ^ 1) - 78) | (((v107 >> 25) ^ 0xE5) << 8)) ^ 0x2168F88C;
  LODWORD(v74) = STACK[0x4EC];
  LODWORD(STACK[0x4C4]) = v57 ^ 0x8CD15BF8;
  LODWORD(STACK[0x4C8]) = v127;
  HIDWORD(v152) = v74 ^ 0xDF112CE2;
  LODWORD(STACK[0x9C0]) = v74 ^ 0xDF112CE2;
  LODWORD(v152) = STACK[0x954];
  HIDWORD(a33) = LODWORD(STACK[0x954]) ^ LODWORD(STACK[0x9B4]);
  LODWORD(v151) = STACK[0x528];
  HIDWORD(v151) = STACK[0x51C];
  LODWORD(v150) = STACK[0x52C];
  HIDWORD(v150) = STACK[0x518];
  LODWORD(v149) = STACK[0x564];
  HIDWORD(v149) = STACK[0x544];
  LODWORD(v148) = STACK[0x5E4];
  HIDWORD(v148) = STACK[0x56C];
  LODWORD(v147) = STACK[0x604];
  HIDWORD(v147) = STACK[0x568];
  LODWORD(v146) = STACK[0x69C];
  HIDWORD(v146) = STACK[0x614];
  LODWORD(v145) = STACK[0x6A8];
  HIDWORD(v145) = STACK[0x610];
  LODWORD(v144) = STACK[0x6BC];
  HIDWORD(v144) = STACK[0x6B8];
  LODWORD(v143) = STACK[0x6C4];
  HIDWORD(v143) = STACK[0x6AC];
  LODWORD(v142) = STACK[0x788];
  HIDWORD(v142) = STACK[0x6E4];
  LODWORD(v141) = STACK[0x704];
  HIDWORD(v141) = STACK[0x76C];
  LODWORD(v140) = STACK[0x78C];
  HIDWORD(v140) = STACK[0x79C];
  LODWORD(v139) = STACK[0x848];
  HIDWORD(v139) = STACK[0x840];
  LODWORD(v138) = STACK[0x884];
  HIDWORD(v138) = STACK[0x84C];
  LODWORD(v137) = STACK[0x844];
  HIDWORD(v137) = STACK[0x874];
  LODWORD(v136) = STACK[0x92C];
  HIDWORD(v136) = STACK[0x880];
  LODWORD(v135) = STACK[0x8A4];
  HIDWORD(v135) = STACK[0x894];
  LODWORD(v134) = STACK[0x9A4];
  HIDWORD(v134) = STACK[0x91C];
  LODWORD(v133) = STACK[0x95C];
  HIDWORD(v133) = STACK[0x96C];
  LODWORD(v132) = STACK[0x9BC];
  HIDWORD(v132) = STACK[0x9B8];
  return (*(a6 + 8 * v53))(207, 229, v126, v128, v129, 51, v121, v123, a9, a10, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, STACK[0x530], v149, v150, v151, STACK[0xA58], a33, v152, v54, a36, v130, v129, v128, v126, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_100004484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, int a61, uint64_t a62)
{
  v326 = (v63 - 1074147219) & 0xEFBF63FF;
  v339 = ((2 * (v62 ^ 0xA097857B)) & 0x145E7EFBELL) + (v62 ^ 0x6FE2F7E3026472A4) + (v326 ^ 0x901D081CF2B5697ELL);
  v64 = a32 + v339 - 0x75F5E70427D78558;
  v65 = 8 * (v64 & 7);
  v66 = __ROR8__(v64 - ((2 * v64) & 0x1865B3EC0B92005ALL) + 0xC32D9F605C9002DLL, 8);
  v67 = (v66 & 0xF8FFFFFFFFFFFFFFLL ^ 0x280C32D9F605C900) - ((2 * (v66 & 0xF8FFFFFFFFFFFFFFLL ^ 0x280C32D9F605C900) - 0x2CD890DC65595E7CLL) & 0xC7B88D7CBFB9B282) - 0x2E9001AFD2CFD5FDLL;
  *(&v68 + 1) = ((v66 ^ 0xF605C900) - ((2 * (v66 ^ 0xF605C900) - 1700355708) & 0xBFB9B282) + 758131203) ^ 0xFFFFFFBF;
  *&v68 = v67 ^ 0x6534AB8BA0E33F00;
  v69 = (v68 >> 8) + (v67 ^ 0x29A91705CA79B9ACLL);
  *(&v68 + 1) = v67 ^ 0x9A91705CA79B9ACLL;
  *&v68 = v67 ^ 0x2000000000000000;
  v70 = v69 + 0x5AE5A15CE2900795 - ((2 * v69) & 0xB5CB42B9C5200F2ALL);
  v71 = v70 ^ ((v68 >> 61) + 0x5AE5A15CE2900795 - ((2 * (v68 >> 61)) & 0xB5CB42B9C5200F2ALL));
  v72 = (v71 ^ 0x77E35FD4FCBE378CLL) + ((v70 >> 8) ^ 0x2D06FE881E2E30);
  v73 = v72 + ((v70 << 56) ^ 0x1900000000000000);
  *(&v68 + 1) = v71 ^ 0x17E35FD4FCBE378CLL;
  *&v68 = v71 ^ 0x6000000000000000;
  v74 = v73 ^ (v68 >> 61);
  *(&v68 + 1) = v72 ^ 0xEEEEEEEE;
  *&v68 = v73 ^ 0x4B5EFAAC9232C400;
  v75 = (v74 ^ 0x4B5EFAAC9232C4EELL) + (v68 >> 8);
  *(&v68 + 1) = v74 ^ 0xB5EFAAC9232C4EELL;
  *&v68 = v74 ^ 0x4000000000000000;
  v76 = v75 ^ (v68 >> 61);
  *(&v68 + 1) = v75 ^ 0x16;
  *&v68 = v75 ^ 0x83A4EBD40C3CAF00;
  v77 = (v68 >> 8) + (v76 ^ 0x83A4EBD40C3CAF16) - 0xEC93C6AA9BC2832 - ((2 * ((v68 >> 8) + (v76 ^ 0x83A4EBD40C3CAF16))) & 0xE26D872AAC87AF9CLL);
  *(&v68 + 1) = v76 ^ 0x3A4EBD40C3CAF16;
  *&v68 = v76 ^ 0x8000000000000000;
  v78 = (v68 >> 61) - 0xEC93C6AA9BC2832 - ((2 * (v68 >> 61)) & 0xE26D872AAC87AF9CLL);
  *(&v68 + 1) = v77 ^ 0xFFFFFFE7;
  *&v68 = v77 ^ 0x46FA2278B7CF600;
  v79 = v68 >> 8;
  v80 = v78 ^ v77;
  *(&v68 + 1) = v78 ^ v77 ^ 0x155961B2DD3F2129;
  *&v68 = v78 ^ ~v77;
  v81 = v79 + (v80 ^ 0xF55961B2DD3F2129) - 0x492BE7A4FCAD4989 - ((2 * (v79 + (v80 ^ 0xF55961B2DD3F2129))) & 0x6DA830B606A56CEELL);
  v82 = ((v68 >> 61) - 0x492BE7A4FCAD4989 - ((2 * (v68 >> 61)) & 0x6DA830B606A56CEELL)) ^ v81;
  *(&v68 + 1) = (v79 + (v80 ^ 0xDD3F2129) + 55752311 - ((2 * (v79 + (v80 ^ 0xDD3F2129))) & 0x6A56CEE)) ^ 0xBE;
  *&v68 = v81 ^ 0x8F5ECA3C05504400;
  v83 = (v82 ^ 0x398AD2670602F2C9) + (v68 >> 8) - 0x987695A54711DACLL - ((2 * ((v82 ^ 0x398AD2670602F2C9) + (v68 >> 8))) & 0xECF12D4B571DC4A8);
  *(&v68 + 1) = v82 ^ 0x198AD2670602F2C9;
  *&v68 = v82 ^ 0x2000000000000000;
  v84 = ((v68 >> 61) - 0x987695A54711DACLL - ((2 * (v68 >> 61)) & 0xECF12D4B571DC4A8)) ^ 0xC48877EC7E57888 ^ v83;
  *(&v68 + 1) = v83 ^ 0xDC;
  *&v68 = v83 ^ 0xFA3011DB6C6B9A00;
  v85 = a32 + v339 - 0x75F5E70427D78550 - ((2 * (a32 + v339 - 0x75F5E70427D78550)) & 0xB3D7BD919CD18B72) + 0x59EBDEC8CE68C5B9;
  v86 = (v85 >> 8) ^ 0x59EBDEC8CE68C5;
  v87 = (v86 | (v85 >> 3 << 59) ^ 0xB800000000000000) + 0x6993B791CD5350C2;
  v88 = v87 + 0x236AE7DC9136EB5ELL - 2 * (v87 & 0x236AE7DC9136EB5FLL ^ v86 & 1);
  v89 = ((v84 + (v68 >> 8)) ^ 0xAC4C9E6531F6AF30) >> v65;
  *(&v68 + 1) = v88 ^ 0xA0;
  *&v68 = v88 ^ 0x21820AE96E090D00;
  v90 = v89 + 0x702A49230EBDAACFLL - ((2 * v89) & 0xE05492461D7B559ELL);
  v91 = (v68 >> 8) + (v88 ^ 0x6D1FB66704938BB3) - 0x1069591E4D9405F8 - ((2 * ((v68 >> 8) + (v88 ^ 0x6D1FB66704938BB3))) & 0xDF2D4DC364D7F410);
  *(&v68 + 1) = v88 ^ 0xD1FB66704938BB3;
  *&v68 = v88 ^ 0x6000000000000000;
  v92 = v91 ^ ((v68 >> 61) - 0x1069591E4D9405F8 - ((2 * (v68 >> 61)) & 0xDF2D4DC364D7F410));
  *(&v68 + 1) = v91 ^ 0x84;
  *&v68 = v91 ^ 0x9875F9354ED5CD00;
  v93 = (v92 ^ 0x77E35FD4FCBE378CLL) + (v68 >> 8) - 0x34C184E05A7050F2 - ((2 * ((v92 ^ 0x77E35FD4FCBE378CLL) + (v68 >> 8))) & 0x967CF63F4B1F5E1CLL);
  *(&v68 + 1) = v92 ^ 0x17E35FD4FCBE378CLL;
  *&v68 = v92 ^ 0x6000000000000000;
  v94 = ((v68 >> 61) - 0x34C184E05A7050F2 - ((2 * (v68 >> 61)) & 0x967CF63F4B1F5E1CLL)) ^ v93;
  *(&v68 + 1) = v93 ^ 0xE0;
  *&v68 = v93 ^ 0x806081B337BD6B00;
  v95 = (v94 ^ 0x4B5EFAAC9232C4EELL) + (v68 >> 8);
  *(&v68 + 1) = v94 ^ 0xB5EFAAC9232C4EELL;
  *&v68 = v94 ^ 0x4000000000000000;
  v96 = v95 ^ (v68 >> 61);
  v97 = (v96 ^ 0x83A4EBD40C3CAF16) + ((v95 << 56) ^ 0x1600000000000000) + ((v95 >> 8) ^ 0x83A4EBD40C3CAFLL);
  *(&v68 + 1) = v96 ^ 0x3A4EBD40C3CAF16;
  *&v68 = v96 ^ 0x8000000000000000;
  v98 = v68 >> 61;
  *(&v68 + 1) = v97 ^ 0x29;
  *&v68 = v97 ^ 0xF55961B2DD3F2100;
  v99 = (v68 >> 8) + (v97 ^ v98 ^ 0xF55961B2DD3F2129);
  *(&v68 + 1) = v97 ^ v98 ^ 0x155961B2DD3F2129;
  *&v68 = v97 ^ ~v98;
  v100 = v99 ^ (v68 >> 61);
  *(&v68 + 1) = v99 ^ 0xC9;
  *&v68 = v99 ^ 0x398AD2670602F200;
  v101 = (v100 ^ 0x398AD2670602F2C9) + (v68 >> 8) + 0x5CFB439BFA018E17 - ((2 * ((v100 ^ 0x398AD2670602F2C9) + (v68 >> 8))) & 0xB9F68737F4031C2ELL);
  *(&v68 + 1) = v100 ^ 0x198AD2670602F2C9;
  *&v68 = v100 ^ 0x2000000000000000;
  v102 = v68 >> 61;
  *(&v68 + 1) = v101 ^ 0xFFFFFF9F;
  *&v68 = v101 ^ 0x50B3C4E53DE4F600;
  v103 = (v68 >> 8) + ((v102 + 0x5CFB439BFA018E17 - ((2 * v102) & 0xB9F68737F4031C2ELL)) ^ 0xC48877EC7E57888 ^ v101);
  v104 = ((v103 ^ 0xAC4C9E6531F6AF30) >> v65) + 0x57901885F7F6FB75 - ((2 * ((v103 ^ 0xAC4C9E6531F6AF30) >> v65)) & 0xAF20310BEFEDF6EALL);
  v65 ^= 0x3Cu;
  v105 = (v90 ^ 0x702A49230EBDAACFLL) + 16 * ((v103 ^ 0xC4C9E6531F6AF30) << v65);
  v106 = v105 + 0x545AA1813219CA60 - 2 * (v105 & 0x545AA1813219CA61 ^ (v90 ^ 0x702A49230EBDAACFLL) & 1);
  *&v68 = __ROR8__(a32 + v339 - 0x75F5E70427D78548 - ((2 * (a32 + v339 - 0x75F5E70427D78548)) & 0xB70870402F9383DALL) - 0x247BC7DFE8363E13, 8);
  v107 = (v68 & 0xF8FFFFFFFFFFFFFFLL ^ 0xE8DB84382017C9C1) - ((2 * (v68 & 0xF8FFFFFFFFFFFFFFLL ^ 0xE8DB84382017C9C1) + 0x13276F239AA6A184) & 0x23FD265357CF066ALL) + 0x7F924ABB793AD3F7;
  *(&v68 + 1) = ((v68 ^ 0x2017C9C1) - ((2 * (v68 ^ 0x2017C9C1) - 1700355708) & 0x57CF066A) + 2033898487) ^ 0xCB;
  *&v68 = v107 ^ 0x17167E1C54D86500;
  v108 = (v68 >> 8) + (v107 ^ 0x5B8BC2923E42E3D8);
  *(&v68 + 1) = v107 ^ 0x1B8BC2923E42E3D8;
  *&v68 = v107 ^ 0x4000000000000000;
  v109 = v108 ^ (v68 >> 61);
  *(&v68 + 1) = v108 ^ 0x8C;
  *&v68 = v108 ^ 0x77E35FD4FCBE3700;
  v110 = (v109 ^ 0x77E35FD4FCBE378CLL) + (v68 >> 8) + 0x11D33329720E6039 - ((2 * ((v109 ^ 0x77E35FD4FCBE378CLL) + (v68 >> 8))) & 0x23A66652E41CC072);
  *(&v68 + 1) = v109 ^ 0x17E35FD4FCBE378CLL;
  *&v68 = v109 ^ 0x6000000000000000;
  v111 = ((v68 >> 61) + 0x11D33329720E6039 - ((2 * (v68 >> 61)) & 0x23A66652E41CC072)) ^ v110;
  *(&v68 + 1) = v110 ^ 0xD7;
  *&v68 = v110 ^ 0x5A8DC985E03CA400;
  v112 = (v111 ^ 0x4B5EFAAC9232C4EELL) + (v68 >> 8) - 0x5BC3CF005084ECABLL - ((2 * ((v111 ^ 0x4B5EFAAC9232C4EELL) + (v68 >> 8))) & 0x487861FF5EF626AALL);
  *(&v68 + 1) = v111 ^ 0xB5EFAAC9232C4EELL;
  *&v68 = v111 ^ 0x4000000000000000;
  v113 = ((v68 >> 61) - 0x5BC3CF005084ECABLL - ((2 * (v68 >> 61)) & 0x487861FF5EF626AALL)) ^ v112;
  *(&v68 + 1) = v112 ^ 0x43;
  *&v68 = v112 ^ 0x2798DB2BA347BC00;
  v114 = v68 >> 8;
  *(&v68 + 1) = v113 ^ 0x3A4EBD40C3CAF16;
  *&v68 = v113 ^ 0x8000000000000000;
  v115 = v68 >> 61;
  v116 = v114 + (v113 ^ 0x83A4EBD40C3CAF16);
  v117 = (v116 ^ v115 ^ 0xF55961B2DD3F2129) + ((v116 << 56) ^ 0x2900000000000000) + ((v116 >> 8) ^ 0xF55961B2DD3F21);
  *(&v68 + 1) = v116 ^ v115 ^ 0x155961B2DD3F2129;
  *&v68 = v116 ^ ~v115;
  v118 = v68 >> 61;
  *(&v68 + 1) = v117 ^ 0xC9;
  *&v68 = v117 ^ 0x398AD2670602F200;
  v119 = v117 ^ v118;
  v120 = (v68 >> 8) + (v119 ^ 0x398AD2670602F2C9) - 0x747538F178E0A9AELL - ((2 * ((v68 >> 8) + (v119 ^ 0x398AD2670602F2C9))) & 0x17158E1D0E3EACA4);
  *(&v68 + 1) = v119 ^ 0x198AD2670602F2C9;
  *&v68 = v119 ^ 0x2000000000000000;
  v121 = (v68 >> 61) - 0x747538F178E0A9AELL - ((2 * (v68 >> 61)) & 0x17158E1D0E3EACA4);
  *(&v68 + 1) = v120 ^ 0xA;
  *&v68 = v120 ^ 0x87C2407040FA2E00;
  v122 = (v104 ^ 0x57901885F7F6FB75) + 16 * ((((v121 ^ 0xC48877EC7E57888 ^ v120) + (v68 >> 8)) ^ 0xC4C9E6531F6AF30) << v65);
  v123 = v122 + 0x4A8155DF2D19F4E1 - 2 * (v122 & 0x4A8155DF2D19F4E3 ^ v104 & 2);
  LODWORD(v120) = *(a37 + (BYTE2(v106) ^ 0xD4));
  DWORD1(v68) = ~v120;
  LODWORD(v68) = (v120 ^ 0xBC) << 24;
  v124 = ((*(a39 + (BYTE1(v106) ^ 0x98)) ^ 0xAC) << 16) | (((*(a40 + (v90 ^ 0xC3)) - 23) ^ 0x21) << 24) | (((v68 >> 25) ^ 0xAD) << 8) | (BYTE4(a36) + 51 * *(a38 + (BYTE3(v106) ^ 0x20))) ^ 0x72;
  LODWORD(v122) = *(a37 + (BYTE6(v106) ^ 0x59));
  DWORD1(v68) = ~v122;
  LODWORD(v68) = (v122 ^ 0xBC) << 24;
  LODWORD(v120) = (((*(a40 + (BYTE4(v106) ^ 0xF8)) - 23) ^ 0x27) << 24) | ((*(a39 + (BYTE5(v106) ^ 0xF5)) ^ 0xBA) << 16) | (((v68 >> 25) ^ 0x60) << 8) | (BYTE4(a36) + 51 * *(a38 + (HIBYTE(v106) ^ 0x95))) ^ 0xC8;
  LODWORD(v122) = *(a37 + (BYTE2(v123) ^ 0xEBLL));
  DWORD1(v68) = ~v122;
  LODWORD(v68) = (v122 ^ 0xBC) << 24;
  LODWORD(v90) = ((*(a39 + (BYTE1(v123) ^ 0x6ELL)) ^ 0xA5) << 16) | (((*(a40 + (v104 ^ 0x9BLL)) - 23) ^ 0x23) << 24) | (((v68 >> 25) ^ 0x4B) << 8) | (BYTE4(a36) + 51 * *(a38 + (BYTE3(v123) ^ 0xB5))) ^ 0x7E;
  LODWORD(v104) = *(a37 + (BYTE6(v123) ^ 0xE7));
  DWORD1(v68) = ~v104;
  LODWORD(v68) = (v104 ^ 0xBC) << 24;
  v334 = (v62 & 0xFFFFFFFC ^ 0x5DFFEBF47568E284) - 0x5DFFEBF4D5FF67FFLL + ((2 * (v62 & 0xFFFFFFFC ^ 0xA097857B)) & 0x1ABFECFFELL);
  v125 = (((*(a40 + (BYTE4(v123) ^ 0x37)) - 23) ^ 0x8C) << 24) | ((*(a39 + (BYTE5(v123) ^ 0x6ELL)) ^ 0x51) << 16) | (((v68 >> 25) ^ 0xD1) << 8) | (BYTE4(a36) + 51 * *(a38 + (HIBYTE(v123) ^ 0xDB))) ^ 0x29;
  v337 = v62 & 0xFFFFFFFE ^ 0xA097857B;
  v338 = v62 & 0xFFFFFFF7 ^ 0xA097857B;
  v335 = v62 & 0xFFFFFFF8 ^ 0xA097857F;
  v336 = (v62 & 0xFFFFFFFB ^ 0x5BE97AEF5C6A789ELL) - 0x5BE97AEFFCFDFDE1 + ((2 * (v62 & 0xFFFFFFFB ^ 0xA097857F)) & 0x1F9FBFBC2);
  v333 = (v62 & 0xFFFFFFF0 ^ 0xFF4727EFFB622880) + 0xB8D810A40A5201 + ((2 * (v62 & 0xFFFFFFF0 ^ 0xA097857F)) & 0xB7EB5BFELL);
  HIDWORD(v328) = v62 & 0xFFFFFFF1 ^ 0xA097857F;
  LODWORD(v115) = *(a37 + (*(a35 + HIDWORD(v328)) ^ 0x68));
  DWORD1(v68) = ~v115;
  LODWORD(v68) = (v115 ^ 0xBC) << 24;
  v329 = (v62 & 0xFFFFFFF2 ^ 0xFFFF4B2F5B6AF6A1) + 0xB4D004028C22 + ((2 * (v62 & 0xFFFFFFF2 ^ 0xA097857F)) & 0x1F7FAE7BCLL);
  v332 = (v62 & 0xFFFFFFF3 ^ 0x5FFAE7BBDF186AA1) - 0x5FFAE7BB7F8FEFDELL + ((2 * (v62 & 0xFFFFFFF3 ^ 0xA097857F)) & 0xFF1FDFBCLL);
  LODWORD(v122) = (BYTE4(a36) + 51 * *(a38 + (*(a35 + v333) ^ 0xCLL))) ^ 0x2D | (((v68 >> 25) ^ 0x40) << 8) | ((*(a39 + (*(a35 + v329) ^ 0xCBLL)) ^ 0x86) << 16);
  HIDWORD(a49) = v62 & 0xFFFFFFFD ^ 0xA097857B;
  LODWORD(v99) = *(a37 + (*(a35 + HIDWORD(a49)) ^ 0xAELL));
  DWORD1(v68) = ~v99;
  LODWORD(v68) = (v99 ^ 0xBC) << 24;
  LODWORD(v122) = v122 | (((*(a40 + (*(a35 + v332) ^ 0xBCLL)) - 23) ^ 0xB3) << 24);
  v331 = (v62 & 0xFFFFFFF9 ^ 0xF6BBFB1D5F2C7A98) + 0x94404E200440019 + ((2 * (v62 & 0xFFFFFFF9 ^ 0xA097857F)) & 0x1FF77FFCELL);
  LODWORD(v115) = *(a37 + (*(a35 + v331) ^ 0x2ALL));
  LOBYTE(v99) = (v68 >> 25) ^ 0xA0;
  DWORD1(v68) = ~v115;
  LODWORD(v68) = (v115 ^ 0xBC) << 24;
  LODWORD(v106) = (BYTE4(a36) + 51 * *(a38 + (*(a35 + v334) ^ 0xDDLL))) ^ 0x4C | ((*(a39 + (*(a35 + v337) ^ 0x51)) ^ 0x8D) << 16) | (v99 << 8);
  HIDWORD(v330) = v62 & 0xFFFFFFF6 ^ 0xA097857B;
  LODWORD(v123) = (BYTE4(a36) + 51 * *(a38 + (*(a35 + v335) ^ 0xF6))) ^ 0xAE | (((*(a40 + (*(a35 + v336) ^ 0x7ELL)) - 23) ^ 0x70) << 24) | (((v68 >> 25) ^ 0x55) << 8);
  HIDWORD(a46) = v62 & 0xFFFFFFF5 ^ 0xA097857B;
  LODWORD(v99) = *(a37 + (*(a35 + HIDWORD(a46)) ^ 0xC2));
  DWORD1(v68) = ~v99;
  LODWORD(v68) = (v99 ^ 0xBC) << 24;
  LODWORD(v330) = v62;
  v327 = (v62 & 0xFFFFFFFA ^ 0x5FFF9FFA5E757AD0) - 0x5FFF9FFAFEE2FFAFLL + ((2 * (v62 & 0xFFFFFFFA ^ 0xA097857F)) & 0x1FDC5FF5ELL);
  LODWORD(v99) = *(a39 + (*(a35 + v327) ^ 0xD7)) ^ 0x20;
  LODWORD(v328) = v62 & 0xFFFFFFF4 ^ 0xA097857B;
  v126 = (v106 | (((*(a40 + (*(a35 + v339) ^ 0xD7)) - 23) ^ 0xA1) << 24)) ^ v124;
  v127 = ((((*(a40 + (*(a35 + v338) ^ 0xAALL)) - 23) ^ 0xFFFFFFEF) << 24) | ((*(a39 + (*(a35 + HIDWORD(v330)) ^ 0xDBLL)) ^ 0x41) << 16) | (((v68 >> 25) ^ 0x95) << 8) | (BYTE4(a36) + 51 * *(a38 + (*(a35 + v328) ^ 0x26))) ^ 0xE6) ^ v90;
  v128 = (v127 - ((2 * v127) & 0x1A86CC2E) - 1924962793) ^ a61;
  LODWORD(v122) = ((v122 ^ v125) - ((2 * (v122 ^ v125)) & 0x35A6866E) - 1697430729) ^ LODWORD(STACK[0x4C8]);
  v129 = (v128 - 1325509387 - ((2 * v128) & 0x61FCA9EA)) ^ HIDWORD(a31);
  v130 = (v122 - ((2 * v122) & 0xA92E5528) + 1419192980) ^ a31;
  LODWORD(v90) = (((v123 | (v99 << 16)) ^ v120) - ((2 * ((v123 | (v99 << 16)) ^ v120)) & 0x26A3962E) + 324127511) ^ HIDWORD(a42);
  v131 = LODWORD(STACK[0x4C4]) ^ HIDWORD(a30) ^ (v126 - ((2 * v126) & 0x6ED5C0B6) + 929751131);
  v132 = (v90 + 1014858796 - ((2 * v90) & 0x78FB0858)) ^ a30;
  v133 = *(&off_10044E3E0 + v63 - 11455) - 2101346186;
  LODWORD(v115) = *&v133[4 * (((v90 + 44 - ((2 * v90) & 0x58)) ^ a30) ^ 0x66)];
  v134 = *(&off_10044E3E0 + v63 - 11392) - 601269683;
  LODWORD(v99) = ((BYTE2(v130) ^ 0xCA) + 980000839 - ((2 * (BYTE2(v130) ^ 0xCA)) & 0x8E)) ^ *&v134[4 * (BYTE2(v130) ^ 0x2C)];
  LODWORD(v115) = (v99 + 597066785 - ((2 * v99) & 0x472D0842)) ^ v115;
  v135 = *(&off_10044E3E0 + (v63 ^ 0x2D40)) - 1264984691;
  LODWORD(v99) = ((BYTE2(v131) ^ 0x93) + 980000839 - ((2 * (BYTE2(v131) ^ 0x93)) & 0x8E)) ^ *&v134[4 * (BYTE2(v131) ^ 0x75)];
  v136 = *&v135[4 * (HIBYTE(v132) ^ 0x96)] ^ *&v133[4 * ((LOBYTE(STACK[0x4C4]) ^ BYTE4(a30) ^ (v126 - ((2 * v126) & 0xB6) + 91)) ^ 0xAD)] ^ 0x50ACFBB2;
  v137 = (v115 + 1933213587 - ((2 * v115) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v129) ^ 0x6A)];
  v138 = ((BYTE2(v132) ^ 0x2C) + 980000839 - ((2 * (BYTE2(v132) ^ 0x2C)) & 0x8E)) ^ *&v134[4 * (BYTE2(v132) ^ 0xCA)];
  v139 = (v138 + 1933213587 - ((2 * v138) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v131) ^ 0x21)];
  LODWORD(v115) = (v99 + 597066785 - ((2 * v99) & 0x472D0842)) ^ *&v133[4 * (v129 ^ 0xF1)];
  v140 = (v115 + 1933213587 - ((2 * v115) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v130) ^ 0xC1)];
  v141 = v136 + 83486865 - ((2 * v136) & 0x9F3D122);
  v142 = (v139 + 597066785 - ((2 * v139) & 0x472D0842)) ^ *&v133[4 * (v130 ^ 0x60)];
  v143 = BYTE2(v129);
  v144 = (BYTE2(v129) ^ 0xD2) + 980000839 - ((2 * (BYTE2(v129) ^ 0xD2)) & 0x8E);
  v145 = BYTE1(v131) ^ 0xBF;
  v146 = v145 - 197;
  if (v145 < 0xC5)
  {
    v146 = BYTE1(v131) ^ 0xBF;
  }

  v147 = v145 + 59;
  if (v145 < 0xC5)
  {
    v147 = BYTE1(v131) ^ 0xBF;
  }

  v148 = v146 + ((BYTE1(v131) ^ 0xBF) - v147);
  v149 = *(&off_10044E3E0 + (v63 ^ 0x2CF8)) - 9752667;
  v150 = (v140 + 83486865 - ((2 * v140) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v132) ^ 0x3C)];
  v151 = *&v149[4 * v148] ^ (v137 + 83486865 - ((2 * v137) & 0x9F3D122));
  v152 = (v142 + 83486865 - ((2 * v142) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v129) ^ 0xF6)];
  v153 = (v151 - ((2 * v151) & 0x4F2F7B96) + 664255947) ^ HIDWORD(a29);
  v154 = v141 ^ HIDWORD(a28) ^ *&v149[4 * (BYTE1(v130) ^ 0x47)] ^ *&v134[4 * (v143 ^ 0x34)] ^ v144;
  v155 = (v152 - ((2 * v152) & 0xBE73DF8E) - 549851193) ^ a28;
  v156 = ((BYTE2(v153) ^ 0x98) + 980000839 - ((v153 >> 15) & 0x8E)) ^ *&v134[4 * (BYTE2(v153) ^ 0x7E)];
  v157 = (v150 - ((2 * v150) & 0x4DF9933C) - 1493382754) ^ a29;
  v158 = *&v149[4 * (BYTE1(v154) ^ 0x51)] ^ *&v135[4 * (HIBYTE(v157) ^ 0x65)] ^ ((BYTE2(v155) ^ 0x39) + 980000839 - ((2 * (BYTE2(v155) ^ 0x39)) & 0x8E)) ^ *&v134[4 * (BYTE2(v155) ^ 0xDF)];
  v159 = (v156 + 1933213587 - ((2 * v156) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v154) ^ 0xF8)];
  v160 = (v159 + 597066785 - ((2 * v159) & 0x472D0842)) ^ *&v133[4 * (v155 ^ 0x2A)];
  v161 = *&v133[4 * (v154 ^ 0x35)] ^ 0x276F6CB0 ^ *&v149[4 * (BYTE1(v155) ^ 0x70)];
  v162 = *&v134[4 * (BYTE2(v157) ^ 0x53)] ^ BYTE2(v157) ^ 0xB5 ^ (v161 + 980000839 - ((2 * v161) & 0x74D3408E));
  v163 = (v162 + 1933213587 - ((2 * v162) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v153) ^ 0xC0)];
  v164 = ((BYTE2(v154) ^ 0x5A) + 980000839 - ((2 * (BYTE2(v154) ^ 0x5A)) & 0x8E)) ^ *&v149[4 * (BYTE1(v153) ^ 0x69)] ^ *&v134[4 * (BYTE2(v154) ^ 0xBC)] ^ *&v135[4 * (HIBYTE(v155) ^ 0x55)];
  v165 = (v160 + 83486865 - ((2 * v160) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v157) ^ 0x1B)];
  v166 = *&v133[4 * (v153 ^ 0xD7)];
  v167 = (v165 + 1906685452 + (~(2 * v165) | 0x1CB493E9)) ^ HIDWORD(a27);
  v168 = ((v164 ^ 0x77C39702) + 597066785 - 2 * ((v164 ^ 0x77C39702) & 0x23968439 ^ v164 & 0x18)) ^ *&v133[4 * (v157 ^ 0x3C)];
  v169 = (v163 - ((2 * v163) & 0x2762054) + 20647978) ^ a27;
  v170 = v166 ^ a26 ^ ((v158 ^ 0x77C39702) + 597066785 - 2 * ((v158 ^ 0x77C39702) & 0x23968431 ^ v158 & 0x10));
  v171 = *&v134[4 * (BYTE2(v169) ^ 0xE7)] ^ 0x4953DFD4 ^ *&v135[4 * (HIBYTE(v167) ^ 0x9E)];
  v172 = ((BYTE2(v167) ^ 0x26) + 980000839 - 2 * ((BYTE2(v167) ^ 0x26) & 0x57 ^ HIWORD(v167) & 0x10)) ^ *&v134[4 * (BYTE2(v167) ^ 0xC0)];
  v173 = (v172 + 597066785 - ((2 * v172) & 0x472D0842)) ^ *&v133[4 * (v170 ^ 0x6D)];
  v174 = (v168 - ((2 * v168) & 0xCD98BE6A) - 422813899) ^ HIDWORD(a26);
  v175 = *&v133[4 * (((v168 - ((2 * v168) & 0x6A) + 53) ^ BYTE4(a26)) ^ 0xA5)] ^ (v171 + 597066785 - ((2 * v171) & 0x472D0842));
  v176 = (v173 + 83486865 - ((2 * v173) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v169) ^ 0x12)];
  v177 = *&v149[4 * (BYTE1(v167) ^ 0x58)] ^ *&v133[4 * (v169 ^ 0x2B)] ^ 0x276F6CB0 ^ *&v134[4 * (BYTE2(v174) ^ 0xF5)] ^ ((BYTE2(v174) ^ 0x13) + 980000839 - ((2 * (BYTE2(v174) ^ 0x13)) & 0x8E));
  v178 = (v177 + 1933213587 - ((2 * v177) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v170) ^ 0x6E)];
  v179 = *&v135[4 * (HIBYTE(v169) ^ 0xD0)] ^ *&v149[4 * ((((v168 - ((2 * v168) & 0xBE6A) + 24373) ^ WORD2(a26)) >> 8) ^ 0x9B)] ^ *&v134[4 * (BYTE2(v170) ^ 0xE1)] ^ ((BYTE2(v170) ^ 7) + 980000839 - ((2 * (BYTE2(v170) ^ 7)) & 0x8E));
  HIDWORD(a42) = 597066813;
  v180 = *&v149[4 * (BYTE1(v170) ^ 0xFA)] ^ (v175 + 83486865 - ((2 * v175) & 0x9F3D122));
  v181 = BYTE2(v169) ^ 0x42E34D7F ^ (v180 + 1122192766 - ((2 * v180) & 0x85C69AFC));
  v182 = (v176 + 1933213587 - ((2 * v176) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v174) ^ 0x90)];
  v183 = *&v133[4 * (v167 ^ 0xDF)] ^ a25 ^ ((v179 ^ 0x77C39702) + 597066785 - 2 * ((v179 ^ 0x77C39702) & 0x2396843D ^ v179 & 0x1C));
  v184 = (v182 - ((2 * v182) & 0xC30E3DCA) + 1636245221) ^ HIDWORD(a24);
  v185 = (v181 - ((2 * v181) & 0xF158F198) + 2024569036) ^ HIDWORD(a25);
  v186 = ((BYTE2(v184) ^ 0x87) + 980000839 - 2 * ((BYTE2(v184) ^ 0x87) & 0x4F ^ HIWORD(v184) & 8)) ^ *&v134[4 * (BYTE2(v184) ^ 0x61)];
  v187 = (v186 + 83486865 - ((2 * v186) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v185) ^ 0xD2)];
  v188 = ((BYTE2(v185) ^ 0xDE) + 980000839 - ((2 * (BYTE2(v185) ^ 0xDE)) & 0x8E)) ^ *&v134[4 * (BYTE2(v185) ^ 0x38)];
  v189 = (v178 - ((2 * v178) & 0xBCA162A4) - 565137070) ^ a24;
  v190 = (v188 + 597066785 - ((2 * v188) & 0x472D0842)) ^ *&v133[4 * (((v178 - ((2 * v178) & 0xA4) + 82) ^ a24) ^ 0x99)];
  v191 = *&v133[4 * (((v182 - ((2 * v182) & 0xCA) - 27) ^ BYTE4(a24)) ^ 8)] ^ *&v149[4 * (BYTE1(v189) ^ 0xE3)];
  v192 = (v187 + 1933213587 - ((2 * v187) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v189) ^ 0x80)];
  v193 = ((BYTE2(v189) ^ 0x1F) + 980000839 - ((2 * (BYTE2(v189) ^ 0x1F)) & 0x8E)) ^ *&v134[4 * (BYTE2(v189) ^ 0xF9)];
  v194 = (v193 + 597066785 - ((2 * v193) & 0x472D0842)) ^ *&v133[4 * (v185 ^ 0x6B)];
  v195 = (v194 + 1933213587 - ((2 * v194) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v183) ^ 0x4C)];
  v196 = (v190 + 1933213587 - ((2 * v190) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v184) ^ 0x44)];
  v197 = (v195 + 83486865 - ((2 * v195) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v184) ^ 0x81)];
  v198 = *&v134[4 * (BYTE2(v183) ^ 0xDA)] ^ HIDWORD(a23) ^ *&v135[4 * (HIBYTE(v185) ^ 0x99)] ^ ((BYTE2(v183) ^ 0x3C) + 980000839 + (~(2 * (BYTE2(v183) ^ 0x3C)) | 0xFFFFFF71) + 1) ^ ((v191 ^ 0x276F6CB0) + 1933213587 - 2 * ((v191 ^ 0x276F6CB0) & 0x733A7F9F ^ v191 & 0xC));
  v199 = *&v133[4 * (v183 ^ 0x68)];
  v200 = BYTE1(v183) ^ 0x82;
  v201 = (v197 - ((2 * v197) & 0x1C67F70E) + 238287751) ^ a23;
  v202 = (v192 + 597066785 - ((2 * v192) & 0x472D0842)) ^ v199;
  v203 = *&v149[4 * v200] ^ HIDWORD(a22) ^ (v196 + 83486865 - ((2 * v196) & 0x9F3D122));
  v204 = v202 - ((2 * v202) & 0x56468AD0);
  v205 = *&v134[4 * (BYTE2(v201) ^ 0xDD)] ^ *&v135[4 * (HIBYTE(v198) ^ 0xBC)] ^ 0x4953DFD4;
  v206 = ((BYTE2(v198) ^ 0xEA) + 980000839 - ((2 * (BYTE2(v198) ^ 0xEA)) & 0x8E)) ^ *&v134[4 * (BYTE2(v198) ^ 0xC)];
  v207 = (v204 - 1423751832) ^ a22;
  v208 = (v205 + 83486865 - ((2 * v205) & 0x9F3D122)) ^ *&v149[4 * ((((v204 + 17768) ^ a22) >> 8) ^ 0xF0)];
  v209 = ((BYTE2(v207) ^ 0x10) + 980000839 - ((v207 >> 15) & 0x8E)) ^ *&v134[4 * (BYTE2(v207) ^ 0xF6)];
  v210 = (v208 + 597066785 - ((2 * v208) & 0x472D0842)) ^ *&v133[4 * (v203 ^ 0xF1)];
  v211 = v210 - ((2 * v210) & 0x8DCDE184);
  v212 = *&v134[4 * (BYTE2(v203) ^ 0xA)] ^ *&v149[4 * (BYTE1(v198) ^ 0x63)] ^ 0x3E9048D6;
  v213 = (v206 + 83486865 - ((2 * v206) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v201) ^ 0x36)];
  v214 = (v213 + 1933213587 - ((2 * v213) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v203) ^ 0x21)];
  v215 = (v209 + 83486865 - ((2 * v209) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v203) ^ 0xE3)];
  v216 = (v214 + 597066785 - ((2 * v214) & 0x472D0842)) ^ *&v133[4 * (v207 ^ 0x7E)];
  v217 = *&v135[4 * (HIBYTE(v207) ^ 0x8F)] ^ (v212 + 1933213587 - ((2 * v212) & 0xE674FF26));
  v218 = (v215 + 597066785 - ((2 * v215) & 0x472D0842)) ^ *&v133[4 * (v198 ^ 0x98)];
  v219 = (v217 + 597066785 - ((2 * v217) & 0x472D0842)) ^ *&v133[4 * (v201 ^ 0x94)];
  v220 = BYTE2(v203) ^ 0xD8707716 ^ (v219 - 663718122 - ((2 * v219) & 0xB0E0EFF4) + 228);
  v221 = v218 + 1933213587 - ((2 * v218) & 0xE674FF26);
  v222 = v220 - ((2 * v220) & 0xDF1D9BDC);
  v223 = *&v135[4 * (HIBYTE(v201) ^ 8)] ^ HIDWORD(a20) ^ v221;
  v224 = (v211 - 957943614) ^ a20;
  v225 = ((BYTE2(v224) ^ 0xCA) + 980000839 - ((2 * (BYTE2(v224) ^ 0xCA)) & 0x8E)) ^ *&v134[4 * (BYTE2(v224) ^ 0x2C)];
  v226 = *&v133[4 * ((v224 ^ BYTE2(v201)) ^ 0x3F)] ^ 0x50ACFBB2 ^ *&v135[4 * (HIBYTE(v223) ^ 0x60)];
  v227 = (v216 - ((2 * v216) & 0x89EBAB14) - 990521974) ^ HIDWORD(a21);
  v228 = ((BYTE2(v227) ^ 0xED) + 980000839 - ((2 * (BYTE2(v227) ^ 0xED)) & 0x8E)) ^ *&v134[4 * (BYTE2(v227) ^ 0xB)];
  v229 = (v222 - 275853842) ^ a21;
  v230 = (v228 + 1933213587 - ((2 * v228) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v229) ^ 0x2C)];
  v231 = (v226 + 83486865 - ((2 * v226) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v227) ^ 0x6E)] ^ *&v134[4 * (BYTE2(v229) ^ 0x8C)] ^ ((BYTE2(v229) ^ 0x6A) + 980000839 - ((2 * (BYTE2(v229) ^ 0x6A)) & 0x8E));
  v232 = (v225 + 83486865 - ((2 * v225) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v223) ^ 0x10)];
  v233 = (v230 + 597066785 - ((2 * v230) & 0x472D0842)) ^ *&v133[4 * (v223 ^ 0xAB)];
  v234 = (v232 + 597066785 - ((2 * v232) & 0x472D0842)) ^ *&v133[4 * (v229 ^ 0x7C)];
  v235 = (v233 + 83486865 - ((2 * v233) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v224) ^ 4)];
  v236 = ((BYTE2(v223) ^ 0x9E) + 980000839 - ((2 * (BYTE2(v223) ^ 0x9E)) & 0x8E)) ^ *&v134[4 * (BYTE2(v223) ^ 0x78)];
  v237 = (v236 + 83486865 - ((2 * v236) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v229) ^ 0xDB)];
  v238 = (v234 + 1933213587 - ((2 * v234) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v227) ^ 0x4E)];
  v239 = (v237 + 1933213587 - ((2 * v237) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v224) ^ 6)];
  v240 = *&v133[4 * (v227 ^ 0x37)] ^ HIDWORD(a19) ^ (v239 + 597066785 - ((2 * v239) & 0x472D0842));
  v241 = (v238 + 1759714531 + (~(2 * v238) | 0x2E39C63B)) ^ a19;
  v242 = ((BYTE2(v240) ^ 0x7A) + 980000839 - ((2 * (BYTE2(v240) ^ 0x7A)) & 0x8E)) ^ *&v134[4 * (BYTE2(v240) ^ 0x9C)];
  v243 = ((BYTE2(v241) ^ 0xF) + 980000839 - ((2 * (BYTE2(v241) ^ 0xF)) & 0x8E)) ^ *&v134[4 * (BYTE2(v241) ^ 0xE9)];
  v244 = (v243 + 83486865 - ((2 * v243) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v240) ^ 0x3E)];
  v245 = (v242 + 1933213587 - ((2 * v242) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v241) ^ 0x7B)];
  v246 = (v235 - ((2 * v235) & 0xD42DBFFE) + 1779884031) ^ a18;
  v247 = (v244 + 1933213587 - ((2 * v244) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v246) ^ 0x15)];
  v248 = (v245 + 597066785 - ((2 * v245) & 0x472D0842)) ^ *&v133[4 * (v246 ^ 0x83)];
  v249 = (v231 - ((2 * v231) & 0x464251E0) + 589375728) ^ HIDWORD(a18);
  v250 = (v247 + 597066785 - ((2 * v247) & 0x472D0842)) ^ *&v133[4 * (((v231 - ((2 * v231) & 0xE0) - 16) ^ BYTE4(a18)) ^ 0x16)];
  v251 = *&v133[4 * (v241 ^ 0x13)] ^ *&v135[4 * (HIBYTE(v240) ^ 0x75)];
  v252 = *&v135[4 * (HIBYTE(v249) ^ 0xA2)] ^ *&v133[4 * (v240 ^ 0x49)];
  v253 = (v248 + 83486865 - ((2 * v248) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v249) ^ 0xB0)];
  v254 = *&v134[4 * (BYTE2(v246) ^ 0x69)] ^ *&v149[4 * ~(v241 >> 8)] ^ ((BYTE2(v246) ^ 0x8F) + 980000839 - ((2 * (BYTE2(v246) ^ 0x8F)) & 0x8E)) ^ ((v252 ^ 0x50ACFBB2) + 83486865 - 2 * ((v252 ^ 0x50ACFBB2) & 0x4F9E895 ^ v252 & 4));
  v255 = *&v149[4 * (BYTE1(v246) ^ 0x3F)] ^ ((BYTE2(v249) ^ 0x50) + 980000839 - 2 * ((BYTE2(v249) ^ 0x50) & 0x67 ^ HIWORD(v249) & 0x20)) ^ *&v134[4 * (BYTE2(v249) ^ 0xB6)] ^ ((v251 ^ 0x50ACFBB2) + 83486865 - 2 * ((v251 ^ 0x50ACFBB2) & 0x4F9E89D ^ v251 & 0xC));
  v256 = (v255 - ((2 * v255) & 0xBB8C6222) + 1573269777) ^ HIDWORD(a16);
  v257 = (v254 - ((2 * v254) & 0xB302422) - 2053631471) ^ a16;
  v258 = (v253 - ((2 * v253) & 0x57A5C788) + 735241156) ^ HIDWORD(a17);
  v259 = ((BYTE2(v256) ^ 0x68) + 980000839 - ((2 * (BYTE2(v256) ^ 0x68)) & 0x8E)) ^ *&v134[4 * (BYTE2(v256) ^ 0x8E)];
  v260 = ((BYTE2(v258) ^ 0x93) + 980000839 - ((2 * (BYTE2(v258) ^ 0x93)) & 0x8E)) ^ *&v134[4 * (BYTE2(v258) ^ 0x75)];
  v261 = (v257 - ((2 * v257) & 0x6FC44A26) + 937567507) ^ HIDWORD(a15);
  v262 = ((BYTE2(v261) ^ 0x91) + 980000839 - 2 * ((BYTE2(v261) ^ 0x91) & 0x4F ^ HIWORD(v261) & 8)) ^ *&v134[4 * (BYTE2(v261) ^ 0x77)];
  v263 = (v262 + 1933213587 - ((2 * v262) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v256) ^ 0x77)];
  v264 = *&v149[4 * (BYTE1(v258) ^ 0x87)] ^ *&v133[4 * (v256 ^ 0x19)] ^ 0x276F6CB0;
  v265 = (v250 - ((2 * v250) & 0x39AF88EC) - 1663581066) ^ a17;
  v266 = (v263 + 83486865 - ((2 * v263) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v265) ^ 0x50)];
  v267 = (v260 + 597066785 - ((2 * v260) & 0x472D0842)) ^ *&v133[4 * (v261 ^ 0x31)];
  v268 = (v264 + 980000839 - ((2 * v264) & 0x74D3408E)) ^ *&v134[4 * (BYTE2(v265) ^ 0x77)];
  v269 = (v268 + 1933213587 - ((2 * v268) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v261) ^ 0x45)] ^ BYTE2(v265);
  v270 = (v267 + 1933213587 - ((2 * v267) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v265) ^ 0x48)];
  v271 = (v270 + 83486865 - ((2 * v270) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v256) ^ 0xDD)];
  v272 = (v259 + 83486865 - ((2 * v259) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v261) ^ 0xCE)];
  v273 = (v272 + 597066785 - ((2 * v272) & 0x472D0842)) ^ *&v133[4 * (v265 ^ 0xE4)];
  v274 = HIBYTE(v258) ^ 0xE0;
  v275 = (v266 + 597066785 - ((2 * v266) & 0x472D0842)) ^ *&v133[4 * (v258 ^ 0x81)];
  v276 = v271 - ((2 * v271) & 0x91C0D848);
  v277 = (v273 + 1933213587 - ((2 * v273) & 0xE674FF26)) ^ *&v135[4 * v274];
  v278 = (v277 - ((2 * v277) & 0xF23382BC) + 2031731038) ^ HIDWORD(a14);
  v279 = v275 - ((2 * v275) & 0x35F806C4) + 452723554;
  v280 = ((v269 ^ 0x91) - ((2 * v269) & 0x510C68C0) - 1467599776) ^ HIDWORD(a13);
  v281 = v279 ^ a14;
  v282 = *&v149[4 * (BYTE1(v278) ^ 0x22)] ^ *&v135[4 * (HIBYTE(v280) ^ 0xEB)];
  v283 = (v282 ^ 0x77C39702) + 597066785 - 2 * ((v282 ^ 0x77C39702) & 0x2396843D ^ v282 & 0x1C);
  v284 = ((BYTE2(v281) ^ 1) + 980000839 - ((2 * (BYTE2(v281) ^ 1)) & 0x8E)) ^ *&v134[4 * (BYTE2(v281) ^ 0xE7)];
  v285 = (v284 + 83486865 - ((2 * v284) & 0x9F3D122)) ^ *&v149[4 * (((((v269 ^ 0x91) - ((2 * v269) & 0x68C0) + 13408) ^ WORD2(a13)) >> 8) ^ 0xF6)];
  v286 = ((BYTE2(v278) ^ 0xF5) + 597066785 - ((2 * (BYTE2(v278) ^ 0xF5)) & 0x42)) ^ *&v133[4 * ((((v269 ^ 0x91) - ((2 * v269) & 0xC0) + 96) ^ BYTE4(a13)) ^ 0xD4)];
  v287 = (v286 + 980000839 - ((2 * v286) & 0x74D3408E)) ^ *&v134[4 * (BYTE2(v278) ^ 0x13)];
  v288 = (v285 + 1933213587 - ((2 * v285) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v278) ^ 0xC0)];
  v289 = (v287 + 83486865 - ((2 * v287) & 0x9F3D122)) ^ *&v149[4 * (BYTE1(v281) ^ 0x12)];
  v290 = (v276 + 1222667300) ^ a15;
  v291 = *&v135[4 * (HIBYTE(v281) ^ 0xD2)] ^ *&v133[4 * (v278 ^ 0xAF)] ^ 0x50ACFBB2 ^ *&v134[4 * (BYTE2(v280) ^ 2)] ^ ((BYTE2(v280) ^ 0xE4) + 980000839 - 2 * ((BYTE2(v280) ^ 0xE4) & 0x57 ^ HIWORD(v280) & 0x10));
  v292 = *&v134[4 * (BYTE2(v290) ^ 0xC3)];
  v293 = *&v149[4 * (BYTE1(v290) ^ 0xC7)];
  v294 = (v289 + 1933213587 - ((2 * v289) & 0xE674FF26)) ^ *&v135[4 * (HIBYTE(v290) ^ 0xF2)];
  LODWORD(v149) = *&v133[4 * (v290 ^ 0x26)] ^ a34 ^ (v288 + 597066785 - ((2 * v288) & 0x472D0842));
  v295 = (v294 + 1353719357 - ((2 * v294) & 0xA1603C7A)) ^ a13;
  v296 = (v291 + 83486865 - ((2 * v291) & 0x9F3D122)) ^ v293;
  v297 = *&v133[4 * (v281 ^ 0x2B)] ^ HIDWORD(a12) ^ v292 ^ ((BYTE2(v290) ^ 0x25) + 980000839 - 2 * ((BYTE2(v290) ^ 0x25) & 0x57 ^ HIWORD(v290) & 0x10)) ^ v283;
  v298 = (v296 - ((2 * v296) & 0x27A0ACA6) - 1815062957) ^ a12;
  v299 = HIBYTE(v298) ^ 0x12;
  v300 = *(&off_10044E3E0 + (v63 ^ 0x2DE9)) - 2099355746;
  v301 = *(&off_10044E3E0 + v63 - 11402) - 1452943823;
  v302 = *&v301[4 * (BYTE2(v298) ^ 0xEC)] + (BYTE2(v298) ^ 0x1708D0CD) - 551978954;
  v303 = *(&off_10044E3E0 + (v63 ^ 0x2D7E)) - 635875851;
  v304 = (v302 - 110181255 - ((2 * v302) & 0xF2DD88F2)) ^ *&v300[4 * (v295 ^ 0x87)];
  v305 = *&v300[4 * (v297 ^ 0x40)] ^ 0x891858FC ^ *&v303[4 * (BYTE1(v298) ^ 0x79)];
  v306 = *&v300[4 * (v298 ^ 0x69)];
  v307 = *(&off_10044E3E0 + v63 - 11169) - 506792510;
  v308 = *&v307[4 * v299] ^ (*&v301[4 * (BYTE2(v297) ^ 0x2A)] + (BYTE2(v297) ^ 0x1708D00B) - 551978954) ^ 0x757C268D ^ *&v300[4 * (v149 ^ 0x56)];
  v309 = (v304 - 1944919308 - ((2 * v304) & 0x1825C5E8)) ^ *&v307[4 * ((v149 >> 24) ^ 0xA7)];
  v310 = *&v307[4 * (HIBYTE(v297) ^ 0xBE)];
  v311 = v308 + 1886821509 - ((2 * v308) & 0xE0ED390A);
  v312 = *&v303[4 * (BYTE1(v149) ^ 0xB0)];
  v313 = *&v303[4 * (BYTE1(v295) ^ 0x34)];
  v314 = *&v303[4 * (BYTE1(v297) ^ 0xC7)];
  LODWORD(v307) = *&v307[4 * (HIBYTE(v295) ^ 0xA6)] ^ (v305 - 1944919308 - ((2 * v305) & 0x1825C5E8));
  LODWORD(v303) = BYTE2(v295);
  v315 = (v309 + 1886821509 - ((2 * v309) & 0xE0ED390A)) ^ v314;
  v316 = *&v301[4 * (v303 ^ 0xC1)];
  LODWORD(v307) = v307 ^ (*&v301[4 * (BYTE2(v149) ^ 0x74)] + (BYTE2(v149) ^ 0x1708D055) - 551978954);
  LODWORD(v307) = (v307 + 1353719357 - ((2 * v307) & 0xA1603C7A)) ^ a13;
  LODWORD(v307) = (v307 - ((2 * v307) & 0x7ED8BFB6) + 1064067035) ^ a11;
  HIDWORD(v317) = v307 ^ 0x609A69B;
  LODWORD(v317) = v307 ^ 0x10000000;
  LODWORD(v307) = v317 >> 27;
  HIDWORD(v317) = v307 ^ 0x1A;
  LODWORD(v317) = v307 ^ 0x535CA9E0;
  v318 = HIDWORD(a33) ^ (v315 - 1492988948 + (~(2 * v315) | 0xB1FA6829));
  v319 = (v317 >> 5) - ((2 * (v317 >> 5)) & 0x528657BA) - 1455215651;
  v320 = *(&off_10044E3E0 + (v63 ^ 0x2CAE)) - 2045456059;
  *(a41 + HIDWORD(v328)) = v320[BYTE1(v319) ^ 0x70] ^ 0xE1;
  v321 = *(&off_10044E3E0 + (v63 ^ 0x2D8E)) - 710064283;
  v322 = v313 ^ HIDWORD(a11) ^ v311;
  *(a41 + v334) = v321[v318 ^ 0x39] ^ 0x88;
  v323 = *(&off_10044E3E0 + (v63 ^ 0x2DEE)) - 1155194875;
  LODWORD(v307) = v323[BYTE2(v319) ^ 0x27];
  HIDWORD(v317) = ~v307;
  LODWORD(v317) = (v307 ^ 0x48) << 24;
  *(a41 + v329) = (v317 >> 27) ^ 0x97;
  LODWORD(v307) = v323[BYTE2(v322) ^ 0x3CLL];
  HIDWORD(v317) = ~v307;
  LODWORD(v317) = (v307 ^ 0x48) << 24;
  *(a41 + v327) = (v317 >> 27) ^ 0x86;
  LODWORD(v307) = ((v310 ^ 0xFC647E71 ^ v312) - 110181255 - ((2 * (v310 ^ 0xFC647E71 ^ v312)) & 0xF2DD88F2)) ^ a11 ^ v306 ^ (v316 + (v303 ^ 0x1708D0E0) - 551978954);
  *(a41 + v328) = v321[(((v310 ^ 0x71 ^ v312) + 121 - ((2 * (v310 ^ 0x71 ^ v312)) & 0xF2)) ^ a11 ^ v306 ^ (v316 + (v303 ^ 0xE0) + 54)) ^ 0x60] ^ 0xDE;
  *(a41 + v335) = v321[(v313 ^ BYTE4(a11) ^ v311) ^ 0xA1];
  LOBYTE(v303) = v321[v319 ^ 0xC0];
  LODWORD(STACK[0x9C4]) = v318;
  *(a41 + v333) = v303 ^ 0x5F;
  LODWORD(v303) = v323[BYTE2(v318) ^ 0x45];
  HIDWORD(v317) = ~v303;
  LODWORD(v317) = (v303 ^ 0x48) << 24;
  *(a41 + v337) = (v317 >> 27) ^ 0x36;
  LODWORD(STACK[0x9DC]) = v322;
  v324 = *(&off_10044E3E0 + v63 - 11131) - 1135901350;
  *(a41 + v336) = v324[HIBYTE(v322) ^ 0x21] ^ 0x93;
  LODWORD(STACK[0xA1C]) = v319;
  *(a41 + v332) = v324[HIBYTE(v319) ^ 0x1CLL] ^ 0xEF;
  *(a41 + HIDWORD(a49)) = v320[LOBYTE(STACK[0x9C5]) ^ 0x75] ^ 0x95;
  LODWORD(STACK[0x9FC]) = v307;
  *(a41 + HIDWORD(a46)) = v320[BYTE1(v307) ^ 0x76] ^ 0xE1;
  *(a41 + v338) = v324[LOBYTE(STACK[0x9FF]) ^ 0xDALL] ^ 0x50;
  *(a41 + v331) = v320[BYTE1(v322) ^ 0x76] ^ 0x2A;
  LODWORD(v307) = v323[LOBYTE(STACK[0x9FE]) ^ 0xA1];
  HIDWORD(v317) = ~v307;
  LODWORD(v317) = (v307 ^ 0x48) << 24;
  *(a41 + HIDWORD(v330)) = (v317 >> 27) ^ 0x98;
  *(a41 + v339) = v324[(v318 >> 24) ^ 0xA7] ^ 0x2C;
  LODWORD(STACK[0x4CC]) = v62;
  LODWORD(STACK[0x4E0]) = a61;
  LODWORD(v307) = (v62 ^ 0xA097857B) - 1600682629 - ((2 * (v62 ^ 0xA097857B) + 32) & 0x412F0AF6) + 16;
  LODWORD(STACK[0xA6C]) = v307;
  return (*(a62 + 8 * ((501 * ((v307 ^ 0xA097857B) < HIDWORD(a34))) ^ v63)))(v318, v320, 386453728, 1353719357, v311, a62, 4074604786, 3742988342, a9, v326, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v327, v328, v329, a46, v330, v331, a49, a50, v332);
}

uint64_t sub_1000073EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  HIDWORD(a42) = LODWORD(STACK[0x9DC]) ^ 0xB5D2B7A3;
  v53 = LODWORD(STACK[0xA1C]) ^ 0xC39089B;
  LODWORD(STACK[0x4C4]) = LODWORD(STACK[0x9C4]) ^ 0x9A16D9A0;
  LODWORD(STACK[0x4C8]) = v53;
  return (*(a6 + 8 * ((24277 * (v52 != -177500290)) ^ (v52 - 3771))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52);
}

uint64_t sub_1000074CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = (*(a6 + 8 * (v61 + 174)))(16);
  STACK[0x668] = v64;
  LODWORD(STACK[0x390]) = v63 + 2;
  return (*(a61 + 8 * (((((33 * (v61 ^ 0xAB)) ^ (v64 == 0)) & 1) * ((v61 + 879770937) ^ (v62 - 101))) ^ v61)))();
}

uint64_t sub_10000753C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0x668];
  v10 = STACK[0x668] + 0xAB5C364D9808152;
  v11 = STACK[0x650];
  v12 = (STACK[0x650] - 0x270676553BF336B9);
  *v9 = 0x4761F68478C333F5;
  v9[1] = 0x4761F68478C333F5;
  *v12 = v10;
  STACK[0x670] = v12;
  STACK[0x678] = v11 - 0x270676553BF336C1;
  LODWORD(STACK[0x390]) = v8;
  return (*(a6 + 8 * (((v11 == 0x270676553BF336C1) * ((v7 + (v6 ^ 0x3C56) - 66) ^ (v7 - 1345) ^ (37 * (v6 ^ 0x3C56)))) ^ v6)))();
}

uint64_t sub_1000075E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = (*(a6 + 8 * (v61 + 17069)))(16);
  STACK[0x680] = v64;
  LODWORD(STACK[0x390]) = v63 + 2;
  return (*(a61 + 8 * (((v64 == 0) * ((v62 + v61 - 1974) ^ 0x3470AD5C ^ (23 * (v61 ^ 0x64E)))) ^ v61)))();
}

uint64_t sub_100007678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = STACK[0x840];
  LODWORD(STACK[0x300]) = STACK[0x840];
  LODWORD(STACK[0x39C]) = v8;
  return (*(a6 + 8 * (((v7 + ((v9 + v6 + 1132862115) & 0xBC79DEEF) - 689) * (v10 == v8)) ^ v6)))();
}

uint64_t sub_100007790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, unsigned int a61)
{
  v62 = STACK[0x680];
  v63 = STACK[0x680] + 0xAB5C364D9808152;
  *v62 = 0x4761F68478C333F5;
  v62[1] = 0x4761F68478C333F5;
  *STACK[0x678] = v63;
  v64 = *STACK[0x670];
  STACK[0x238] = v64;
  LODWORD(STACK[0x218]) = 1758090239;
  v65 = STACK[0x5C0];
  LODWORD(STACK[0x21C]) = 389344002;
  LODWORD(STACK[0x298]) = 2109455582;
  LODWORD(STACK[0x460]) = 389344002;
  LODWORD(STACK[0x464]) = 1758090239;
  STACK[0x468] = v64;
  STACK[0x470] = v65;
  return (*(a6 + 8 * v61))(a1, a2, a3, a4, a5, a6, a7, a61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57);
}

uint64_t sub_100007838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x690] == 0x270676553BF336C1;
  LODWORD(STACK[0x3B0]) = v7;
  return (*(a6 + 8 * ((v8 * (v6 - 3637 + v6 - 11333 - 7499)) ^ v6)))();
}

uint64_t sub_100007884@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45)
{
  v45 = *(STACK[0x690] - 0x270676553BF336B9);
  STACK[0x248] = *(a1 + 8 * a2);
  LODWORD(STACK[0x3B4]) = a45;
  STACK[0x3B8] = v45;
  LODWORD(STACK[0x3C0]) = -58104704;
  return (*(a1 + 8 * (((a2 + 2046643058) & 0x8602F7AC ^ 0x5C54) + a2)))();
}

uint64_t sub_1000078F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x5C8] = *STACK[0x5B8];
  v63 = STACK[0x358];
  v64 = &STACK[0xA70] + STACK[0x358];
  STACK[0x2E8] = v64;
  v65 = v64 + 16;
  v66 = v63 + (((v61 ^ 0x34CEu) - 5547) ^ (v61 - 8625));
  STACK[0x5D0] = v66;
  STACK[0x358] = v66;
  (*(a6 + 8 * (v61 ^ 0x6014)))();
  v67 = (*(a61 + 8 * (v61 + 8180)))(v65, 0, 32);
  STACK[0x340] = 0xAB5C364D9808152;
  STACK[0x328] = 0;
  LODWORD(STACK[0x22C]) = -1240130101;
  STACK[0x2F0] = 0;
  LODWORD(STACK[0x2FC]) = -1240130101;
  v68 = STACK[0x5C8];
  STACK[0x220] = STACK[0x5C8];
  STACK[0x420] = STACK[0x5D0];
  LODWORD(STACK[0x428]) = v62;
  return (*(a61 + 8 * ((211 * (v68 == 0x270676553BF336C1)) ^ v61)))(v67);
}

uint64_t sub_100007A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = *(STACK[0x5C8] - 0x270676553BF336C1);
  STACK[0x268] = 0;
  a65 = -1240130101;
  STACK[0x4F0] = a6 + 8 * v65;
  STACK[0x4F8] = STACK[0x578];
  STACK[0x500] = &a65;
  STACK[0x508] = v66;
  return (*(a6 + 8 * ((((v65 + 913228998) & 0xC99177FF) - 9751) ^ v65)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61);
}

uint64_t sub_100007ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *STACK[0x5B0];
  STACK[0x5D8] = v8;
  LODWORD(STACK[0x5E4]) = STACK[0x314];
  return (*(a6 + 8 * (((v8 != 0) * (v7 + ((v6 - 185377627) & 0x3F7CF7E5) - 2315)) ^ v6)))();
}

uint64_t sub_100007B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = v61 - 534;
  v64 = &STACK[0xA70] + STACK[0x7E0];
  STACK[0x5E8] = v64;
  STACK[0x5F0] = v64;
  v65 = v64 + 32;
  STACK[0x5F8] = (v64 + 32);
  (*(a6 + 8 * (v61 + 6129)))();
  v66 = (*(a61 + 8 * (v63 ^ 0x7A07)))(v65, 0, 32);
  STACK[0x2A0] = 32;
  v67 = LODWORD(STACK[0x5E4]) == ((17 * (v63 ^ 0x318D)) ^ 0xB6150356);
  LODWORD(STACK[0x388]) = v62;
  return (*(a61 + 8 * ((22 * v67) ^ v63)))(v66);
}

uint64_t sub_100007BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = *(a6 + 8 * v61);
  v64 = 2054851651 * ((~((v62 - 160) ^ 0xBEF983FCD6948862 | 0xC2D597260C5C8BF3) + (((v62 - 160) ^ 0xBEF983FCD6948862) & 0xC2D597260C5C8BF3)) ^ 0x222490DEA9995348);
  *(v62 - 148) = (v61 - 1915005086) ^ v64;
  *(v62 - 160) = v63 - v64;
  v65 = (*(a6 + 8 * (v61 ^ 0x4C53)))(v62 - 160);
  v66 = *(v62 - 152);
  LODWORD(STACK[0x388]) = v66;
  return (*(a61 + 8 * (v61 ^ 0x3672 ^ ((v66 == ((v61 + 542701435) & 0xDFA743EF) - 1418255769) * (((v61 + 1120) | 0x1419) - 6635)))))(v65);
}

uint64_t sub_100007CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  LODWORD(STACK[0x604]) = ((v61 ^ 0x4042) - 1240130562) ^ LODWORD(STACK[0x5E4]);
  v63 = (*(a6 + 8 * (v61 ^ 0xBD9)))();
  STACK[0x608] = v63;
  LODWORD(STACK[0x388]) = v62 + 2;
  return (*(a61 + 8 * (((v63 == 0) * ((17 * (v61 ^ 0x4042)) ^ 0x1ED0)) ^ v61)))();
}

uint64_t sub_100007D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LODWORD(STACK[0x604]) - ((2 * LODWORD(STACK[0x604])) & 0xECFEF4F2) + 1988065913;
  v9 = (((v6 + 383) | 0x7B0) ^ v8 ^ 0x8C818072) + 1742305917 + ((v8 << ((v6 + 92) ^ (v7 - 14))) & 0xF5FDAB7E ^ 0xE4FCA072);
  LODWORD(STACK[0x610]) = v9;
  return (*(a6 + 8 * ((21 * (v9 == 1658343484)) ^ v6)))();
}

uint64_t sub_100007EA4@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = a2 - 879782288;
  v58 = (a2 - 766415754) & 0xF93E3CFE;
  v59 = a2 - 879782295;
  v60 = STACK[0x5E8];
  *(v60 + 8) = STACK[0x608];
  v61 = STACK[0x604];
  *(v60 + 16) = STACK[0x604];
  *(v60 + 20) = v61;
  v62 = (*(a1 + 8 * (a2 ^ 0x3470CCBE)))(*(*(&off_10044E3E0 + (a2 ^ (v56 - 175))) - 1711110499), 40, STACK[0x5F0], 32, STACK[0x5F8], &STACK[0x2A0]);
  v63 = v57 - 1418258865 + v58 + v62 - ((2 * v62) & 0x56EEC7EC);
  LODWORD(STACK[0x384]) = v63;
  return (*(a55 + 8 * ((27 * (v63 != v55)) ^ v59)))();
}

uint64_t sub_100007F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x2A0] == ((v6 + 4869) ^ 0x3076);
  LODWORD(STACK[0x384]) = v7 + 3;
  return (*(a6 + 8 * ((v8 * (5059 * (v6 ^ 0x1D52) - 5437)) ^ v6)))();
}

uint64_t sub_100007FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x5E8] + 56);
  LODWORD(STACK[0x614]) = v7;
  return (*(a6 + 8 * ((29 * (v7 == ((v6 - 14856) ^ 0x3117 ^ ((v6 - 14856) | 0x1C10) ^ 0x2D07))) ^ v6)))();
}

uint64_t sub_100008020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x2C8] = STACK[0x608];
  LODWORD(STACK[0x388]) = v7;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_100008060@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = LODWORD(STACK[0x614]) + v2 - ((a2 + 1458481819) & (2 * LODWORD(STACK[0x614])));
  LODWORD(STACK[0x384]) = v3;
  LODWORD(STACK[0x388]) = v2;
  return (*(a1 + 8 * ((10879 * (v3 == (((a2 - 4305) | 0x121D) ^ 0xAB777D6B))) ^ a2)))();
}

uint64_t sub_1000080C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = STACK[0x384];
  v63 = (*(a6 + 8 * (v61 ^ 0x7A05)))(STACK[0x608]);
  LODWORD(STACK[0x388]) = v62;
  return (*(a61 + 8 * v61))(v63);
}

uint64_t sub_100008100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x388];
  STACK[0x358] = STACK[0x7E0];
  LODWORD(STACK[0x38C]) = v7;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_100008130@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x38C];
  v3 = *STACK[0x5B0];
  STACK[0x618] = v3;
  LODWORD(STACK[0x34C]) = v2;
  return (*(a1 + 8 * (((v3 == 0) * ((((a2 - 18754) | 0x2508) ^ 0xCB8F5C09) + ((a2 + 6274155) | 0x341080E0))) ^ a2)))();
}

uint64_t sub_100008198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = (*(a6 + 8 * (v61 + 9463)))(STACK[0x618]);
  *STACK[0x5B0] = 0;
  return (*(a61 + 8 * v61))(v62);
}

uint64_t sub_1000081DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v7 + v6 - 2053;
  LODWORD(STACK[0x42C]) = v9;
  return (*(a6 + 8 * (v9 ^ 0x702A ^ (573 * (v6 ^ (v8 + 16))))))();
}

uint64_t sub_10000821C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = STACK[0x2C8];
  STACK[0x620] = STACK[0x2C8];
  return (*(a6 + 8 * ((49 * (v9 != 0)) ^ (v8 + a8 - 202))))();
}

uint64_t sub_10000824C@<X0>(uint64_t a1@<X5>, int a2@<W7>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v56 = a3 - 297;
  v57 = (*(a1 + 8 * (a2 - 879770766)))(STACK[0x620]);
  return (*(a56 + 8 * v56))(v57);
}

uint64_t sub_1000082E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (v6 - 5277) | 0x309;
  v9 = LODWORD(STACK[0x874]) == v8 - v7 + 1996938517;
  LODWORD(STACK[0x398]) = STACK[0x874];
  return (*(a6 + 8 * ((v9 * (v8 + 5649)) ^ v8)))();
}

uint64_t sub_10000832C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  v58 = *(STACK[0x280] - 0x270676553BF336C1);
  STACK[0x238] = v58;
  LODWORD(STACK[0x218]) = 1758090238;
  v59 = STACK[0x5C0];
  LODWORD(STACK[0x21C]) = 389344002;
  LODWORD(STACK[0x298]) = -1075652217;
  LODWORD(STACK[0x460]) = 389344002;
  LODWORD(STACK[0x464]) = 1758090238;
  STACK[0x468] = v58;
  STACK[0x470] = v59;
  return (*(a6 + 8 * (a9 + 6308)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_10000839C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = LODWORD(STACK[0x874]) == ((v6 - 160332586) & 0x3DFEEEED ^ (v6 - 1344085285) & 0x501D3FE7 ^ 0x9F07D0F7);
  LODWORD(STACK[0x398]) = STACK[0x874];
  return (*(a6 + 8 * ((12497 * v7) ^ v6)))();
}

uint64_t sub_100008404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = *(STACK[0x280] - 0x270676553BF336B9);
  STACK[0x688] = v64;
  STACK[0x288] = 0x4761F68478C333F5;
  LODWORD(STACK[0x394]) = v63;
  return (*(a6 + 8 * (a9 ^ (4 * ((((v64 == 0xAB5C364D9808152) ^ a9) ^ ((a9 - 32) | 0x21)) & 1u)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_1000084A0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x4C4]) = a2 ^ 0x3026;
  LODWORD(STACK[0x4C8]) = 1082348533;
  return (*(a1 + 8 * (((((a2 ^ 0x3026) + 845) | 0x484) ^ 0x2E86) + (a2 ^ 0x3026))))();
}

uint64_t sub_1000084EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  *(v62 - 160) = v61 + 2054851651 * ((2 * ((v62 - 160) & 0x52D034B0) - (v62 - 160) - 1389376694) ^ 0x2181646C) + 14138;
  v63 = (*(a6 + 8 * (v61 + 18880)))(v62 - 160);
  v64 = *(STACK[0x280] - 0x270676553BF336B9);
  v65 = *(v62 - 152) ^ 0x437C99EC;
  STACK[0x248] = *(a61 + 8 * v61);
  LODWORD(STACK[0x3B4]) = v65;
  STACK[0x3B8] = v64;
  LODWORD(STACK[0x3C0]) = 1082348533;
  return (*(a61 + 8 * (v61 - 9148 + v61 + 17175)))(v63);
}

uint64_t sub_1000085B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = LODWORD(STACK[0x6AC]) == v9;
  LODWORD(STACK[0x398]) = STACK[0x6AC];
  return (*(a6 + 8 * ((15180 * v10) ^ (a8 + v8))))();
}

uint64_t sub_1000085E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x300]) = v9;
  LODWORD(STACK[0x39C]) = v9;
  return (*(a6 + 8 * (v8 + a8 + 751)))();
}

uint64_t sub_100008608@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x300]) = -1418238986;
  LODWORD(STACK[0x39C]) = -1418238986;
  return (*(a1 + 8 * (a2 & 0xFAB4FFE3 ^ 0xC89491DF ^ (((((a2 & 0xFAB4FFE3) + 1738238621) | 0x4408681) ^ 0x3470898F) * ((a2 & 0xFAB4FFE3) < 0xEF82EF47)))))();
}

uint64_t sub_1000086FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7 + v6 - 2011;
  STACK[0x208] = STACK[0x280];
  LODWORD(STACK[0x42C]) = v8;
  return (*(a6 + 8 * ((v6 ^ 0x3470C382) - 4678 + v8)))();
}

uint64_t sub_10000873C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x7E8] = v2;
  v3 = *(a1 + 8 * SLODWORD(STACK[0x42C]));
  STACK[0x318] = v3;
  STACK[0x240] = v2;
  STACK[0x438] = v3;
  return (*(a1 + 8 * (((((a2 + 58) ^ (v2 == 0x37CA302CFAD4CCE3)) & 1) * (((a2 - 15715) | 0x174) ^ 0x99B)) ^ a2)))();
}

uint64_t sub_1000087B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(STACK[0x7E8] - 0x37CA302CFAD4CCE3);
  STACK[0x7F0] = v8;
  STACK[0x2D8] = v8;
  return (*(a6 + 8 * ((13 * ((((v6 + 68) ^ (v7 + 107)) ^ (v8 == 0x270676553BF336C1)) & 1)) ^ v6)))();
}

uint64_t sub_100008814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x7F0] + 0x4B180B43FD2442B6;
  STACK[0x350] = *(a6 + 8 * v6);
  STACK[0x430] = v7;
  return (*(a6 + 8 * (((v6 + 922062129) & 0xFD7AF6F7 ^ 0x347089DC) + v6)))();
}

uint64_t sub_100008870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x280] = 0x270676553BF336C1;
  LODWORD(STACK[0x39C]) = STACK[0x300];
  return (*(a6 + 8 * (v8 + a8 - 1963)))();
}

uint64_t sub_1000088A4@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x39C];
  v3 = STACK[0x280];
  *STACK[0x5B8] = STACK[0x280];
  STACK[0x3A0] = v3;
  LODWORD(STACK[0x3AC]) = v2;
  return (*(a1 + 8 * (a2 - 879781498)))();
}

uint64_t sub_1000088E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x3AC];
  STACK[0x690] = STACK[0x3A0];
  LODWORD(STACK[0x38C]) = v7;
  return (*(a6 + 8 * ((231 * (v7 != ((v6 + 3672) ^ 0xAB774F24))) ^ v6)))();
}

uint64_t sub_100008988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = LODWORD(STACK[0x3B0]) == (((v6 + 2932) | 0x42) ^ 0xAB7749A5);
  LODWORD(STACK[0x38C]) = STACK[0x3B0];
  return (*(a6 + 8 * ((23838 * v7) ^ v6)))();
}

uint64_t sub_1000089D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x69C]) = STACK[0x3C0];
  v9 = STACK[0x3B8];
  STACK[0x6A0] = STACK[0x3B8];
  LODWORD(STACK[0x6A8]) = STACK[0x3B4];
  LODWORD(STACK[0x3C4]) = v8;
  return (*(a6 + 8 * (((v9 == 0xAB5C364D9808152) * (v7 + v6 - 17020 + (v6 ^ 0x3470C54D) - 2594)) ^ v6)))();
}

uint64_t sub_100008A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3C8] = 0;
  LODWORD(STACK[0x3D0]) = STACK[0x69C];
  LOWORD(STACK[0x3D6]) = 4422;
  LODWORD(STACK[0x3D8]) = STACK[0x6A8];
  LODWORD(STACK[0x3DC]) = -1240130097;
  STACK[0x3E0] = 0x8C38D1834A63647;
  STACK[0x3E8] = STACK[0x6A0];
  return (*(a6 + 8 * ((((2 * v63) ^ 0xADA) + 7872) ^ v63)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100008B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x6AC]) == v9;
  LODWORD(STACK[0x41C]) = STACK[0x6AC];
  return (*(a6 + 8 * ((v11 * (((a8 ^ (v10 - 876)) - 661) ^ 0x33F0)) ^ (a8 + v8))))();
}

uint64_t sub_100008B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x250] = 0;
  v7 = *(STACK[0x220] - 0x270676553BF336B9);
  STACK[0x4F0] = a6 + 8 * v6;
  STACK[0x4F8] = STACK[0x590];
  STACK[0x500] = &STACK[0x22C];
  STACK[0x508] = v7;
  return (*(a6 + 52616))();
}

uint64_t sub_100008BD8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = STACK[0x3E8];
  STACK[0x6B0] = STACK[0x3E0];
  v5 = STACK[0x3DC];
  LODWORD(STACK[0x6B8]) = STACK[0x3DC];
  LODWORD(STACK[0x6BC]) = STACK[0x3D8];
  LOWORD(STACK[0x6C2]) = STACK[0x3D6];
  LODWORD(STACK[0x6C4]) = STACK[0x3D0];
  STACK[0x6C8] = STACK[0x3C8];
  STACK[0x290] = v4;
  v7 = v4 != 0xAB5C364D9808152 && (v5 ^ ((a2 ^ 0x31FBu) - 1240144759)) < 0xFFFFFFF6;
  LODWORD(STACK[0x414]) = v3;
  return (*(a1 + 8 * ((v7 * ((v2 + a2 - 2247) ^ (v2 - 95))) ^ a2)))();
}

uint64_t sub_100008C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = (*(a6 + 8 * (v61 + 4373)))(32);
  STACK[0x6D0] = v64;
  STACK[0x6D8] = &STACK[0x2E0];
  STACK[0x2E0] = v64 + 0x4761F68478C333F5;
  LODWORD(STACK[0x410]) = v63 + 2;
  return (*(a61 + 8 * (((v64 == 0) * ((v61 + 1064525222) & 0xF4FCEFF9 ^ (v62 - 10))) ^ v61)))();
}

uint64_t sub_100008CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = STACK[0x6D0];
  *v64 = 0x4761F68478C333F5;
  *(v64 + 8) = 0x4761F68478C333F5;
  v65 = LODWORD(STACK[0x6B8]) ^ 0xB6151DCB;
  LODWORD(STACK[0x6E4]) = v65;
  v66 = ((v65 + 10) ^ 0x7BFD69DE) - 1660944512 + ((2 * (v65 + 10)) & 0xF7FAD3BC);
  *(v64 + 16) = v66;
  v67 = (*(a6 + 8 * (v61 + 4373)))(v66 - 419260766);
  *(v64 + 24) = v67;
  STACK[0x6E8] = v64 + 24;
  LODWORD(STACK[0x410]) = v62;
  return (*(a61 + 8 * ((28 * ((((v61 - 96) ^ (v63 - 62)) ^ (v67 == 0)) & 1)) ^ (v61 - 6047))))();
}

uint64_t sub_100008DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(STACK[0x6F5]) = LODWORD(STACK[0x6B8]) == -1240130097;
  v8 = LOWORD(STACK[0x6C2]);
  LOBYTE(STACK[0x6F6]) = v8 >> ((v6 ^ v7) + 39);
  v9 = *(a6 + 8 * (v6 ^ 0x3032));
  LOBYTE(STACK[0x6F7]) = v8;
  STACK[0x558] = 0x2FC92220EDE8F7EBLL;
  return v9(0x7EDA10D8E8BDE475, STACK[0x6E8], 203, 0x72B0B1A0EB3E1587, 0xCB3A8F808CEFA77ELL);
}

uint64_t sub_100008F50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, int a58, char a59)
{
  v66 = *a2;
  v67 = *a2 + 4;
  v68 = __ROR8__(v67 & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = (0xD4F4E5F14C1EA78 - v68) & 0x4CD81EFE8FE3B1B9 | (v68 + a4) & 0xB327E101701C4E46;
  v70 = v69 ^ 0x189F288B139DDC92;
  v69 ^= 0x8D1AA58C4A6D70A9;
  v71 = (__ROR8__(v70, 8) + v69) ^ v59;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ a1;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v60;
  v76 = __ROR8__(v75, 8);
  v77 = v75 ^ __ROR8__(v74, 61);
  v78 = (((2 * (v76 + v77)) & 0xDA36B97DC122FFD4) - (v76 + v77) - 0x6D1B5CBEE0917FEBLL) ^ 0x12478B359CDA47DCLL;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v62;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v61;
  v83 = __ROR8__(v82, 8);
  v84 = __ROR8__(v81, 61);
  *(v66 + 4) = a59 ^ (((((2 * (v83 + (v82 ^ v84))) & 0x690FF71E81D3EE3ELL) - (v83 + (v82 ^ v84)) - 0x3487FB8F40E9F720) ^ 0x33612E0554EEFA7EuLL) >> (8 * (v67 & 7u)));
  v85 = __ROR8__((v66 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = ((2 * (v85 + a4)) | 0x587B403F710B33CALL) - (v85 + a4) - 0x2C3DA01FB88599E5;
  v87 = v86 ^ 0x787A966A24FBF4CELL;
  v86 ^= 0xEDFF1B6D7D0B58F5;
  v88 = __ROR8__(v87, 8);
  v89 = (v88 + v86 - ((2 * (v88 + v86)) & 0xB52AF481DEBED47ALL) - 0x256A85BF10A095C3) ^ 0xABE6E57774A6E5E4;
  v90 = v89 ^ __ROR8__(v86, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) & 0x903F4534BF6955C0) - (v91 + v90) - 0x481FA29A5FB4AAE1) ^ 0xC93A4DBD48F6B16ALL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (((2 * (v94 + v93)) & 0x5C307F409900B7F2) - (v94 + v93) + 0x51E7C05FB37FA406) ^ 0x9AF8115ABA65D1A0;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ v63;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = __ROR8__((0x5E4EF690E20CD2B0 - ((v99 + v98) ^ 0xEF0BBF44D834E002 | 0x5E4EF690E20CD2B0) + ((v99 + v98) ^ 0xEF0BBF44D834E002 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36, 8);
  v101 = (0x5E4EF690E20CD2B0 - ((v99 + v98) ^ 0xEF0BBF44D834E002 | 0x5E4EF690E20CD2B0) + ((v99 + v98) ^ 0xEF0BBF44D834E002 | 0xA1B1096F1DF32D4FLL)) ^ 0xCBD8739B38E1DC36 ^ __ROR8__(v98, 61);
  v102 = (v100 + v101) ^ v61;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  *(v66 + 5) = a57 ^ (((((2 * (v104 + v103)) | 0x39371380251567D4) - (v104 + v103) + 0x6364763FED754C16) ^ 0x6482A3B5F9724174) >> (8 * ((v66 + 5) & 7)));
  STACK[0x3F0] = 0x2FC92220EDE8F7F1;
  return (*(a6 + 8 * (v65 + v64 + 5756)))();
}

uint64_t sub_10000934C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v18 = *a2 + STACK[0x558] - 0x2FC92220EDE8F7EBLL;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((v19 + a4) | 0x4473AF4093FD868BLL) - ((v19 + a4) | 0xBB8C50BF6C027974) - 0x4473AF4093FD868CLL;
  v21 = __ROR8__(v20 ^ 0x103499350F83EBA0, 8);
  v20 ^= 0x85B114325673479BLL;
  v22 = (v21 + v20) ^ 0x71739F379BF98FD9;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = __ROR8__((0xF8065C5468770AD6 - ((v24 + v23) | 0xF8065C5468770AD6) + ((v24 + v23) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL, 8);
  v26 = (0xF8065C5468770AD6 - ((v24 + v23) | 0xF8065C5468770AD6) + ((v24 + v23) | 0x7F9A3AB9788F529)) ^ 0x7923B3737F35115CLL ^ __ROR8__(v23, 61);
  v27 = (v25 + v26) ^ 0xCB1FD105091A75A6;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v29 + v28 - ((2 * (v29 + v28)) & 0x60317E7E2F95E7CELL) - 0x4FE740C0E8350C19) ^ 0x30BB974B947E342ELL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = *(a6 + 8 * v13);
  v33 = (__ROR8__(v30, 8) + v31) ^ v11;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v10;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *v18 = (((((2 * ((v37 + v36) ^ 0x43F178B4D98B7452)) | 0x4770352C8FBEC122) - ((v37 + v36) ^ 0x43F178B4D98B7452) + 0x5C47E569B8209F6FLL) ^ 0x1850485775ACE65DuLL) >> (8 * ((*a2 + LOBYTE(STACK[0x558]) + 21) & 7u))) ^ HIBYTE(a9) ^ 0xB6;
  v38 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((2 * ((v38 + a4) ^ 0x66E9636B7B522E08)) | 0x9198600C55AE5EBCLL) - ((v38 + a4) ^ 0x66E9636B7B522E08) + 0x3733CFF9D528D0A2;
  v40 = v39 ^ 0xFA626518CDFB6C7DLL;
  v39 ^= 0x6FE7E81F940BC046uLL;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0x71739F379BF98FD9;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a1;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0xCB1FD105091A75A6;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v12;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (((2 * (v49 + v48)) & 0x5B7AB7335E1C4A0ELL) - (v49 + v48) - 0x2DBD5B99AF0E2508) ^ 0x572061D6ADD7CB83;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v10;
  *(v18 + 1) = (((__ROR8__(v52, 8) + (v52 ^ __ROR8__(v51, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v18 + 1) & 7))) ^ BYTE2(a9) ^ 0x15;
  v53 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = ((2 * (v53 + a4)) | 0xD26D64F9B5F9A13CLL) - (v53 + a4) - 0x6936B27CDAFCD09ELL;
  v55 = v54 ^ 0x3D7184094682BDB5;
  v54 ^= 0xA8F4090E1F72118ELL;
  v56 = __ROR8__(v55, 8);
  v57 = (0x106BA8B4217F8315 - ((v56 + v54) | 0x106BA8B4217F8315) + ((v56 + v54) | 0xEF94574BDE807CEALL)) ^ 0x9EE7C87C4579F333;
  v58 = v57 ^ __ROR8__(v54, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a1;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xCB1FD105091A75A6;
  v62 = __ROR8__(v61, 8);
  v63 = v61 ^ __ROR8__(v60, 61);
  v64 = (v62 + v63 - ((2 * (v62 + v63)) & 0xF13B5A97EEF23B9ALL) - 0x76252B40886E233) ^ 0x783E853F74CDDA04;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (v66 + v65 - ((2 * (v66 + v65)) & 0xD28C89D33650FA36) + 0x694644E99B287D1BLL) ^ 0xEC248159660E6C60;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v10;
  *(v18 + 2) = (((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v68, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v18 + 2) & 7))) ^ BYTE1(a9) ^ 0x1D;
  v70 = __ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v70 - ((2 * v70 - 0x1A9E9CBE2983D4F2) & 0xD5FA7621D5890D1ELL) - 0x2252134E29FD63EALL;
  v72 = v71 ^ 0x3EBA0D6576BAEBA4;
  v71 ^= 0xAB3F80622F4A479FLL;
  v73 = (__ROR8__(v72, 8) + v71) ^ 0x71739F379BF98FD9;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((v75 + v74) & 0xF13D7081F999AACFLL ^ 0xD1247000C089A841) + ((v75 + v74) & 0xEC28F7E06665530 ^ 0xC028C4806265401) - 1) ^ 0xA3FCEC902E121834;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0x72FEE9966B00DB32) - 0x46808B34CA7F9267) ^ 0x7260A5CE3C9A183FLL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = __ROR8__((((2 * (v81 + v80)) | 0x9BF2874C46BB2BF0) - (v81 + v80) + 0x3206BC59DCA26A08) ^ 0x4D5A6BD2A0E95231, 8);
  v83 = (((2 * (v81 + v80)) | 0x9BF2874C46BB2BF0) - (v81 + v80) + 0x3206BC59DCA26A08) ^ 0x4D5A6BD2A0E95231 ^ __ROR8__(v80, 61);
  v84 = (((2 * (v82 + v83)) | 0xC7DAE37E88912B22) - (v82 + v83) + a7) ^ a8;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = ((v15 | (2 * (v86 + v85))) - (v86 + v85) + v16) ^ v14;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  *(v18 + 3) = a9 ^ a3 ^ ((((v17 | (2 * (v89 + v88))) - (v89 + v88) + a5) ^ v9) >> (8 * ((v18 + 3) & 7)));
  LODWORD(STACK[0x564]) = a9;
  LODWORD(STACK[0x568]) = v13;
  return v32();
}

uint64_t sub_100009C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x6F8] = *(*STACK[0x6D8] - 0x4761F68478C333DDLL);
  v7 = LODWORD(STACK[0x6E4]) - ((2 * LODWORD(STACK[0x6E4])) & 0x4EAF30BA) - 1487431587;
  v8 = (v7 ^ 0xD5A8632E) + (((v6 + 341860731) | 0x201002C1) ^ 0xFB8D6A3F) + (((v6 - 550544038) & 0x71D3F73D ^ 0xB4FC81DB) & (2 * v7) ^ 0x44AF30A2);
  LODWORD(STACK[0x704]) = v8;
  return (*(a6 + 8 * (v6 | ((v8 != 1123936337) << 6))))(a1, 0xCB1FD105091A75A6, 0x71739F379BF98FD9, a4, 0x7EDA10D8E8BDE475);
}

uint64_t sub_100009EA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, int a7@<W8>)
{
  v22 = v11 + (a7 - 1) + ((a7 - 1 < v7) << 32) + v13;
  v23 = __ROR8__((v22 + v12 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((a3 + 2 * v23) & 0xA682CC081D3CC4C6) + 0x49F217A4F9DC77EALL;
  v25 = __ROR8__(v24 ^ 0x8306507192E00F48, 8);
  v24 ^= 0x1683DD76CB10A373uLL;
  v26 = (v25 + v24) ^ a2;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a4;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a1;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x16C26BF63D6479ECLL) - 0x749ECA04E14DC30ALL) ^ 0xBC21D8F9D06FB3FLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0x3176A05114BE070ELL) + a6) ^ v14;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = ((v16 | (2 * ((v38 + v37) ^ v15))) - ((v38 + v37) ^ v15) + v17) ^ v18;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  *(v22 + v12 + 10) = (((v8 - ((v41 + v40) | v8) + ((v41 + v40) | v19)) ^ v20) >> (8 * ((v22 + v12 + 10) & 7))) ^ *(v10 + v22);
  return (*(a5 + 8 * (((v7 + 1 == a7) * v21) ^ v9)))();
}

uint64_t sub_10000A100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, int a4@<W8>)
{
  v5 = a4 + 5912;
  v6 = LODWORD(STACK[0x6B8]) == ((v5 + 2113789251) & 0xB67287FB) - 2119919902;
  LODWORD(STACK[0x410]) = v4 + 28;
  return (*(a3 + 8 * ((v6 * (v5 - 6430)) ^ v5)))(a1, a2, 0xCB1FD105091A75A6);
}

uint64_t sub_10000A190@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, int a3@<W8>)
{
  v4 = *(*STACK[0x6D8] - 0x4761F68478C333DDLL);
  v5 = STACK[0x6B0];
  v6 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (0x8D4F4E5F14C1EA78 - v6) & (((a3 + 2013099591) & 0xBC72EEF7) - 0x4EDC2E6440023510) | (v6 + 0x72B0B1A0EB3E1587) & 0x4ADC2E640B91AE2ELL;
  v8 = v7 ^ 0xE564E7EE68103CFALL;
  v7 ^= 0x70E16AE931E090C1uLL;
  v9 = __ROR8__(v8, 8);
  v10 = (v9 + v7 - ((2 * (v9 + v7)) & 0xB542D5AA10E925ELL) + 0x5AA16AD5087492FLL) ^ 0x74D9899ACB7EC6F6;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (((v12 + v11) ^ 0xB15146501DE8B6F8) - ((2 * ((v12 + v11) ^ 0xB15146501DE8B6F8)) & 0x2FBBA3BDFDFC908ALL) + 0x17DDD1DEFEFE4845) ^ 0xD85687560BAB1AC8;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) & 0xDBBCA2A7F6876CE0) - (v15 + v14) + 0x1221AEAC04BC498FLL) ^ 0xD93E7FA90DA63C29;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x80A3287483B4C7C9;
  v19 = v18 ^ __ROR8__(v17, 61);
  v20 = __ROR8__(v18, 8);
  v21 = (v20 + v19 - ((2 * (v20 + v19)) & 0xC1F3C952FDBD84A4) - 0x1F061B5681213DAELL) ^ 0x659B211983F8D329;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0x97F56CB0FB361A73;
  v4[10] = (((__ROR8__(v23, 8) + (v23 ^ __ROR8__(v22, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 10) & 7u))) ^ HIBYTE(STACK[0x6B0]) ^ 8;
  v24 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((2 * v24 + 0x5616341D67C2B0ELL) & 0x10309689D7FEB624) - 0x137031A28C28F67;
  v26 = v25 ^ 0xD85F7D3177813639;
  v25 ^= 0x4DDAF0362E719A02uLL;
  v27 = __ROR8__(v26, 8);
  v28 = (((v27 + v25) | 0x337A902E34222EAELL) - ((v27 + v25) | 0xCC856FD1CBDDD151) - 0x337A902E34222EAFLL) ^ 0x42090F19AFDBA177;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) | 0x7B372A0BF60D2AC5) - ((v30 + v29) | 0x84C8D5F409F2D53ALL) - 0x7B372A0BF60D2AC6) ^ 0x5ED3AD31EB0CEB0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a1;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x80A3287483B4C7C9;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x8562C5B0FD26117BLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x97F56CB0FB361A73;
  v4[11] = (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 11) & 7u))) ^ LOWORD(STACK[0x6B6]) ^ 0xC3;
  v40 = __ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = ((2 * v40 - 0x1A9E9CBE2983D4F2) & 0xB50EA0BD07EE0F74) - v40 + 0x32C7FE0090CAE2BELL;
  v42 = v41 ^ 0xF13F99D4E076956ELL;
  v41 ^= 0x64BA14D3B9863955uLL;
  v43 = (__ROR8__(v42, 8) + v41) ^ 0x71739F379BF98FD9;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v3;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ a1;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x80A3287483B4C7C9;
  v50 = __ROR8__(v49, 8);
  v51 = v49 ^ __ROR8__(v48, 61);
  v52 = (((v50 + v51) | 0xAE83C850330BCB1ELL) - ((v50 + v51) | 0x517C37AFCCF434E1) + 0x517C37AFCCF434E1) ^ 0x2BE10DE0CE2DDA65;
  v53 = __ROR8__(v52, 8);
  v54 = v52 ^ __ROR8__(v51, 61);
  v55 = (((2 * (v53 + v54)) & 0x8B666A266E091910) - (v53 + v54) - 0x45B3351337048C89) ^ 0x2DB9A65C33CD6904;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v4[12] = (((((2 * (v57 + v56)) | 0x21458F0F9B85813CLL) - (v57 + v56) - 0x10A2C787CDC2C09ELL) ^ 0xE8BBEDF2263A3200) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(v5) ^ 0x8D;
  v58 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = (0xD4F4E5F14C1EA78 - v58) & 0x745A46F181E71788 | (v58 + 0x72B0B1A0EB3E1587) & 0x8BA5B90E7E18E877;
  v60 = __ROR8__(v59 ^ 0x201D70841D997AA3, 8);
  v59 ^= 0xB598FD834469D698;
  v61 = (((2 * (v60 + v59)) | 0x26843C234468C454) - (v60 + v59) - 0x13421E11A234622ALL) ^ 0x6231812639CDEDF3;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) | 0x61D635255ACF2C94) - ((v63 + v62) | 0x9E29CADAA530D36BLL) - 0x61D635255ACF2C95) ^ 0x1F0C25FDB272C8E1;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ a1;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0x80A3287483B4C7C9;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((v70 + v69) | 0xBAAB3E68C36E4B71) - ((v70 + v69) | 0x4554C1973C91B48ELL) + 0x4554C1973C91B48ELL) ^ 0x3FC9FBD83E485A0ALL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x97F56CB0FB361A73;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  LODWORD(v73) = STACK[0x6B0];
  v4[13] = (((((v75 + v74) ^ 0x4325F627768ABA89 | 0x899A10D664E772BCLL) - ((v75 + v74) ^ 0x4325F627768ABA89 | 0x7665EF299B188D43) + 0x7665EF299B188D43) ^ 0x32A6CC84F9953AABLL) >> (8 * ((v4 + 13) & 7u))) ^ LODWORD(STACK[0x6B4]) ^ 0x18;
  v76 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((v76 + 0x72B0B1A0EB3E1587) | 0x393C5199A3ABE61FLL) - ((v76 + 0x72B0B1A0EB3E1587) | 0xC6C3AE665C5419E0) - 0x393C5199A3ABE620;
  v78 = v77 ^ 0x6D7B67EC3FD58B34;
  v77 ^= 0xF8FEEAEB6625270FLL;
  v79 = __ROR8__(v78, 8);
  v80 = (((2 * (v79 + v77)) & 0xA01676447DFA0AA6) - (v79 + v77) + 0x2FF4C4DDC102FAACLL) ^ 0x5E875BEA5AFB7575;
  v81 = v80 ^ __ROR8__(v77, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v3;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ a1;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (v86 + v85 - ((2 * (v86 + v85)) & 0x281B8329B2C6E956) + 0x140DC194D96374ABLL) ^ 0x94AEE9E05AD7B362;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((v89 + v88) | 0x73019C173CCE7FA9) - ((v89 + v88) | 0x8CFE63E8C3318056) - 0x73019C173CCE7FAALL) ^ 0xF66359A7C1E86ED2;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((v92 + v91) | 0x5071512C1C535486) - ((v92 + v91) | 0xAF8EAED3E3ACAB79) - 0x5071512C1C535487) ^ 0xC7843D9CE7654EF5;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v4[14] = (((v95 + v94 - ((2 * (v95 + v94)) & 0x52FFCC8FA67424BALL) + 0x297FE647D33A125DLL) ^ 0xD166CC3238C2E0C3) >> (8 * ((v4 + 14) & 7u))) ^ LODWORD(STACK[0x6B3]) ^ 0x34;
  v96 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((2 * v96 + 0x65616341D67C2B0ELL) & 0x40755CE9BCEE341ELL) - v96 - 0x16EB6015C9B52F97;
  v98 = __ROR8__(v97 ^ 0xF8267FEBDF688DBLL, 8);
  v97 ^= 0x9A07EAF9E40624E0;
  v99 = (v98 + v97) ^ 0x71739F379BF98FD9;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (v101 + v100 - ((2 * (v101 + v100)) & 0x6FB477EC2E9438B2) + 0x37DA3BF6174A1C59) ^ 0x49002B2EFFF7F82CLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((2 * (v104 + v103)) & 0x6760441E82814852) - (v104 + v103) - 0x33B0220F4140A42ALL) ^ 0x7500CF5B7A52E70;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) & 0x14B03C0D0DEA5DFELL) - (v107 + v106) + 0x75A7E1F9790AD100) ^ 0xF504C98DFABE16C9;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x39BC71E438FBF891) - ((v110 + v109) | 0xC6438E1BC704076ELL) - 0x39BC71E438FBF892) ^ 0xBCDEB454C5DDE9EALL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (((2 * (v113 + v112)) & 0xFC603D156314A35ELL) - (v113 + v112) - 0x7E301E8AB18A51B0) ^ 0x163A8DC5B543B423;
  v4[15] = (((__ROR8__(v114, 8) + (v114 ^ __ROR8__(v112, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 15) & 7u))) ^ LODWORD(STACK[0x6B2]) ^ 0xA6;
  v115 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = (v115 + 0x72B0B1A0EB3E1587) ^ 0xC1C2BB72C58EC110;
  v117 = (__ROR8__((v115 + 0x72B0B1A0EB3E1587) ^ 0x544736759C7E6D2BLL, 8) + v116) ^ 0x71739F379BF98FD9;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ v3;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (v121 + v120 - ((2 * (v121 + v120)) & 0x102741A6410C0D3CLL) - 0x77EC5F2CDF79F962) ^ 0x430C71D6299C7338;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (v124 + v123 - ((2 * (v124 + v123)) & 0xBC90FC75EE7BA9DCLL) - 0x21B781C508C22B12) ^ 0x5EEB564E74891327;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x8562C5B0FD26117BLL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x97F56CB0FB361A73;
  v4[16] = (((__ROR8__(v129, 8) + (v129 ^ __ROR8__(v128, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 16) & 7u))) ^ LODWORD(STACK[0x6B1]) ^ 0x36;
  v130 = __ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = ((2 * (v130 + 0x72B0B1A0EB3E1587)) | 0xA5E64CF69756B5C4) - (v130 + 0x72B0B1A0EB3E1587) + 0x2D0CD984B454A51ELL;
  v132 = v131 ^ 0x86B4100ED7D537C9;
  v131 ^= 0x13319D098E259BF2uLL;
  v133 = __ROR8__(v132, 8);
  v134 = __ROR8__((((2 * (v133 + v131)) | 0x559C992A13D30352) - (v133 + v131) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70, 8);
  v135 = (((2 * (v133 + v131)) | 0x559C992A13D30352) - (v133 + v131) - 0x2ACE4C9509E981A9) ^ 0x5BBDD3A292100E70 ^ __ROR8__(v131, 61);
  v136 = (v134 + v135) ^ v3;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ a1;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = (__ROR8__(v138, 8) + v139) ^ 0x80A3287483B4C7C9;
  v141 = v140 ^ __ROR8__(v139, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (((2 * (v142 + v141)) & 0x3B5AD3916A0336E4) - (v142 + v141) - 0x1DAD69C8B5019B73) ^ 0x67305387B7D875F6;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ 0x97F56CB0FB361A73;
  v4[17] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v144, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v4 + 17) & 7u))) ^ v73 ^ 0x47;
  return (*(a2 + 8 * (a3 - 8540)))();
}

uint64_t sub_10000B06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = v56 + a8 - 854;
  LODWORD(STACK[0x4C4]) = v57;
  LODWORD(STACK[0x4C8]) = STACK[0x6C4];
  return (*(a6 + 8 * ((a8 ^ 0x3470A412) + v57)))(a1, a2, a3, a4, a5, a6, a7, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_10000B0C8@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  STACK[0x908] = v3;
  STACK[0x910] = a2;
  LODWORD(STACK[0x91C]) = STACK[0x4C8];
  v5 = *(a1 + 8 * SLODWORD(STACK[0x4C4]));
  STACK[0x2D0] = v5;
  STACK[0x4D8] = v5;
  LODWORD(STACK[0x4E0]) = v4;
  return (*(a1 + 8 * ((((v2 ^ (a2 == 0xAB5C364D9808152)) & 1) * (v2 - 2582)) ^ v2)))(0x97F56CB0FB361A73, 0x8562C5B0FD26117BLL, 0x80A3287483B4C7C9, 0x72B0B1A0EB3E1587);
}

uint64_t sub_10000B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t a63)
{
  STACK[0x720] = a63;
  v64 = *(a63 - 0x4761F68478C333EDLL);
  STACK[0x728] = v64;
  v65 = STACK[0x2E0];
  STACK[0x730] = STACK[0x2E0];
  *(v65 - 0x4761F68478C333EDLL) = v64;
  STACK[0x738] = v65 - 0x4761F68478C333EDLL;
  STACK[0x740] = a63 - 0x4761F68478C333F5;
  v66 = *(a63 - 0x4761F68478C333F5);
  STACK[0x748] = v65 - 0x4761F68478C333F5;
  *(v65 - 0x4761F68478C333F5) = v66;
  STACK[0x400] = v66;
  return (*(a6 + 8 * (((v64 != 0x4761F68478C333F5) * ((v63 - 1664643) & 0xEB79FFFE ^ 0xEB60D231)) ^ (v63 + 805))))();
}

uint64_t sub_10000B320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x728] - 0x4761F68478C333F5) = STACK[0x730];
  STACK[0x400] = *STACK[0x748];
  return (*(a6 + 8 * ((17767 * (v6 < 0xD2521F74)) ^ (v6 + 345991593))))();
}

uint64_t sub_10000B388@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x400];
  STACK[0x750] = STACK[0x400];
  return (*(a1 + 8 * (((v2 != 0x4761F68478C333F5) * (a2 - 3365)) ^ a2)))();
}

uint64_t sub_10000B4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (STACK[0x720] - 0x4761F68478C333DDLL);
  STACK[0x758] = v7;
  v8 = *v7;
  STACK[0x760] = *v7;
  return (*(a6 + 8 * (((v8 == 0) * (v6 - 7848 + (v6 ^ 0x782B) - 24429)) ^ v6)))();
}

uint64_t sub_10000B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = (*(a6 + 8 * (v61 + 3874)))(STACK[0x760]);
  *STACK[0x758] = 0;
  return (*(a61 + 8 * v61))(v62);
}

uint64_t sub_10000B638@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x290];
  STACK[0x708] = STACK[0x290];
  v3 = v2 - 0xAB5C364D980814ALL;
  v4 = *(v2 - 0xAB5C364D980814ALL);
  STACK[0x710] = v3;
  STACK[0x718] = v4;
  return (*(a1 + 8 * (((v4 == 0x4761F68478C333F5) * (((a2 - 16657) | 0x24CD) + ((a2 + 490305244) & 0xE2C66CDF) - 18797)) ^ a2)))();
}

uint64_t sub_10000B6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *STACK[0x710] = v6;
  *(STACK[0x708] - 0xAB5C364D9808152) = v6;
  return (*(a6 + 8 * v7))();
}

uint64_t sub_10000B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x718] - 0x4761F68478C333F5) = v7;
  v8 = STACK[0x710];
  *(v7 - 0x4761F68478C333EDLL) = *STACK[0x710];
  *v8 = v7;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_10000B7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0x410];
  LODWORD(STACK[0x76C]) = STACK[0x410];
  return (*(a6 + 8 * ((14 * (((v9 == v7) ^ (v6 - v8 + 52)) & 1)) ^ (v6 - 879773375))))();
}

uint64_t sub_10000B7F0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x2E0];
  STACK[0x770] = STACK[0x2E0];
  STACK[0x778] = v2 - 0x4761F68478C333DDLL;
  v3 = *(v2 - 0x4761F68478C333DDLL);
  STACK[0x780] = v3;
  return (*(a1 + 8 * (((v3 == 0) * ((6 * (((a2 - 263) | 0x110) ^ 0x102)) ^ 0x493B)) ^ a2)))();
}

uint64_t sub_10000B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = (*(a6 + 8 * (v61 ^ 0x4763)))(STACK[0x780]);
  *STACK[0x778] = 0;
  return (*(a61 + 8 * v61))(v62);
}

uint64_t sub_10000B974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x414];
  LODWORD(STACK[0x788]) = STACK[0x414];
  LODWORD(STACK[0x488]) = v71;
  return a71();
}

uint64_t sub_10000BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x268];
  LODWORD(STACK[0x78C]) = a71;
  LODWORD(STACK[0x304]) = a71;
  STACK[0x210] = v73;
  LODWORD(STACK[0x348]) = -1240130101;
  STACK[0x2B8] = 0x8C38D1834A63647;
  STACK[0x258] = 0;
  v74 = (*(a6 + 8 * (v71 + 7533)))(16);
  STACK[0x790] = v74;
  STACK[0x2B0] = v74 + 0xAB5C364D9808152;
  LODWORD(STACK[0x4EC]) = v72 + 2;
  return (*(a62 + 8 * (((v74 == 0) * ((706 * ((v71 - 1156400906) & 0x44ED5FE7 ^ 0x45D0)) ^ 0x3E98)) ^ v71)))(v74, v75, v76, v77, v78, a62, v79, a61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58);
}

uint64_t sub_10000BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x790];
  *v7 = 0x4761F68478C333F5;
  v7[1] = 0x4761F68478C333F5;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_10000BBFC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x930] = v2;
  v4 = v3 ^ 0xB6151DCB;
  STACK[0x938] = v4;
  v5 = v2 - 0x2183AE95DFEA8AE0;
  v6 = ((((a2 - 9721) | 0x2380u) - 5627) ^ 0xC5CCEA69) + v4;
  v8 = v5 > 0xC5CCF7C6 && v5 < v6;
  return (*(a1 + 8 * ((2057 * v8) ^ a2)))();
}

uint64_t sub_10000BC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x210];
  STACK[0x940] = STACK[0x210];
  LODWORD(STACK[0x4E4]) = v7;
  return (*(a6 + 8 * (((v8 != 0) * ((v6 + 1076210752) & 0xBFDA3F57 ^ 0x1F2A)) ^ v6)))();
}

uint64_t sub_10000BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (v6 - 11001) | 0x241;
  v9 = ((2 * STACK[0x938]) & 0x1CFDFDAFELL) + (STACK[0x938] ^ 0xEF97E7B3E7EFED7FLL);
  STACK[0x948] = v9;
  LODWORD(v9) = v9 - STACK[0x930] + 0x31EBC6E2BDC7951ELL < ((v8 + 5200) ^ (2 * v8) ^ 0x570Cu ^ 0xFFFFFFFFFFFFA259);
  LODWORD(STACK[0x4E4]) = v7 + 28;
  return (*(a6 + 8 * ((14541 * v9) ^ v8)))();
}

uint64_t sub_10000BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x930];
  v8 = STACK[0x940];
  v9 = STACK[0x930] - 0x2183AE96A5B7829DLL;
  v10 = v9 + STACK[0x940];
  v11 = (*(v10 - 10) << (v6 + 42)) | (*(v10 - 9) << 16);
  v12 = *(v10 - 8) << ((v6 + 83) ^ 0x49);
  LODWORD(STACK[0x954]) = (v11 | v12 | *(v10 - 7)) - 1240130101 - 2 * ((v11 | v12 | *(v10 - 7)) & 0x36151DCF ^ *(v10 - 7) & 4);
  LOWORD(v11) = _byteswap_ushort(*(((2 * (v9 - 6)) & 0x1ADE7F39AE5BF676) + ((v9 - 6) ^ 0xD6F3F9CD72DFB3BLL) + v8 - 0xD6F3F9CD72DFB3BLL));
  LOWORD(v10) = v11 - 2 * (v11 & 0x635 ^ *(((2 * (v9 - 6)) & 0x1ADE7F39AE5BF676) + ((v9 - 6) ^ 0xD6F3F9CD72DFB3BLL) + v8 - 0xD6F3F9CD72DFB3ALL) & 4) - 31180;
  LOWORD(STACK[0x958]) = v10;
  LOWORD(STACK[0x95A]) = v10 - 3;
  v13 = (((2 * (v9 - 4)) & 0x7BECFB7ABF3FBDEELL) + ((v9 - 4) ^ 0xFDF67DBD5F9FDEF7) + v8 + 0x2098242A0602109);
  LODWORD(v9) = (*v13 << 24) | (v13[1] << 16) | (v13[2] << 8);
  LODWORD(v13) = (v9 | v13[3]) - 1240130101 - 2 * ((v9 | v13[3]) & 0x36151DCF ^ v13[3] & 4);
  LODWORD(STACK[0x95C]) = v13;
  v14 = (v13 ^ 0xB6151DCB) + v7;
  STACK[0x960] = v14 + 10;
  v15 = v14 - 0x2183AE96072FCC46;
  v16 = STACK[0x948] + 0x1068184CB697C8D8;
  v18 = v16 > 0x9E87B656 && v15 > v16;
  return (*(a6 + 8 * ((486 * v18) ^ v6)))();
}

uint64_t sub_10000C13C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v3 = (STACK[0x940] + STACK[0x930] + a2);
  v4 = (v3[1] << ((v2 + 112) ^ 0x77)) | (*v3 << 24) | (v3[2] << 8);
  LODWORD(STACK[0x348]) = (v4 | v3[3]) - 1240130101 - 2 * ((v4 | v3[3]) & 0x36151DCF ^ v3[3] & 4);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10000C304@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v3 = (STACK[0x940] + STACK[0x930] + a2);
  v4 = (*v3 << 56) | (v3[1] << 48) | (*((v2 ^ 0xCA9B2090) + STACK[0x930] + STACK[0x940] - 0x2183AE9770528C02) << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x2B8] = v4 + 0x8C38D1834A63647 - ((2 * v4) & 0x11871A30694C6C8ELL);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_10000C40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x2B0];
  v65 = STACK[0x348];
  v66 = STACK[0x2B8];
  STACK[0x3C8] = STACK[0x258];
  LODWORD(STACK[0x3D0]) = STACK[0x954];
  LOWORD(STACK[0x3D6]) = STACK[0x95A];
  LODWORD(STACK[0x3D8]) = v65;
  LODWORD(STACK[0x3DC]) = STACK[0x95C];
  STACK[0x3E0] = v66;
  STACK[0x3E8] = v64;
  return (*(a6 + 8 * (v63 + 7243 + ((v63 + 518895993) & 0xE1124DFB))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10000C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x79C]) = STACK[0x418];
  v7 = STACK[0x268];
  STACK[0x7A0] = STACK[0x268];
  return (*(a6 + 8 * ((14 * (v7 == 0)) ^ (v6 - 879780267))))();
}

uint64_t sub_10000C4F4@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v56 = a2 - 231;
  v57 = (*(a1 + 8 * (v55 - 879770766)))(STACK[0x7A0]);
  return (*(a55 + 8 * v56))(v57);
}

uint64_t sub_10000C528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = LODWORD(STACK[0x79C]) == ((v6 + 311778558) & 0xB8FA1EEE ^ (v8 - 702));
  LODWORD(STACK[0x41C]) = STACK[0x79C];
  return (*(a6 + 8 * ((v9 * ((v6 + v7 - 2195) ^ 0xD7)) ^ (v6 + v7))))();
}

uint64_t sub_10000C57C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x340];
  STACK[0x248] = *(a1 + 8 * a2);
  LODWORD(STACK[0x3B4]) = -1240130101;
  STACK[0x3B8] = v2;
  LODWORD(STACK[0x3C0]) = -815579951;
  return (*(a1 + 8 * ((((a2 + 381) | 0x4188) ^ 0x5C72) + a2)))();
}

uint64_t sub_10000C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = LODWORD(STACK[0x894]) == (a8 ^ 0x34708FDB ^ (v9 + 1036) ^ (a8 - 2048073714) & 0x45A29BDE);
  LODWORD(STACK[0x41C]) = STACK[0x894];
  return (*(a6 + 8 * ((12843 * v10) ^ (a8 + v8))))();
}

uint64_t sub_10000C628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unint64_t a62)
{
  v65 = STACK[0x328];
  v66 = STACK[0x2E8];
  v67 = STACK[0x22C];
  STACK[0x7A8] = a62;
  v68 = 1901182499 * ((v64 - 160) ^ 0x4C1D87E2);
  *(v64 - 120) = v66;
  *(v64 - 112) = v65;
  *(v64 - 160) = ((v67 ^ 0x4DABF27D) + 1861222384 + ((v67 << ((4 * (v62 ^ 0x53)) ^ 0xA5)) & 0xF77DDF6C ^ ((v62 ^ 0x853) + 1680349595))) ^ v68;
  *(v64 - 152) = v65;
  *(v64 - 144) = a62;
  *(v64 - 132) = v68 ^ 0x42DBB3DE;
  *(v64 - 128) = (v62 + 9565) ^ v68;
  v69 = (*(a6 + 8 * (v62 + 16642)))(v64 - 160);
  v70 = *(v64 - 136);
  LODWORD(STACK[0x41C]) = v70;
  return (*(a61 + 8 * ((5368 * (v70 == v63)) ^ v62)))(v69);
}

uint64_t sub_10000C724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x340];
  STACK[0x308] = *(a6 + 8 * v6);
  STACK[0x4A8] = STACK[0x7A8];
  LODWORD(STACK[0x4B0]) = 1099992266;
  LODWORD(STACK[0x4B4]) = -1240130069;
  STACK[0x4B8] = v7;
  return (*(a6 + 8 * (((v6 ^ 0x437F) - 15069) ^ v6)))();
}

uint64_t sub_10000C778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x894]) == v9;
  LODWORD(STACK[0x41C]) = STACK[0x894];
  return (*(a6 + 8 * ((((((a8 + 1613838365) & 0x6B5E43CF) + 8131) ^ (66 * (a8 ^ (v10 + 9)))) * v11) ^ (a8 + v8))))();
}

uint64_t sub_10000C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = STACK[0x340];
  v66 = STACK[0x22C];
  STACK[0x308] = *(a6 + 8 * v64);
  STACK[0x4A8] = a64;
  LODWORD(STACK[0x4B0]) = 1262304268;
  LODWORD(STACK[0x4B4]) = v66;
  STACK[0x4B8] = v65;
  return (*(a6 + 8 * (v64 - 15917 + ((v64 - 73012685) & 0x45A56FB))))();
}

uint64_t sub_10000C830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = LODWORD(STACK[0x894]) == v9;
  LODWORD(STACK[0x41C]) = STACK[0x894];
  return (*(a6 + 8 * ((v10 * (((a8 + 48530718) & 0xC8AAF6CE) + 5090)) ^ (a8 + v8))))();
}

uint64_t sub_10000C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0xA1C]) == v9 + a8 - v10 + 731 - 718;
  LODWORD(STACK[0x41C]) = STACK[0xA1C];
  return (*(a6 + 8 * ((v11 * (((a8 + v8 - 2097) | 0x480) + 9521)) ^ (a8 + v8))))();
}

uint64_t sub_10000C8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x340];
  v8 = STACK[0x250];
  v9 = STACK[0x22C];
  STACK[0x308] = *(a6 + 8 * v6);
  STACK[0x4A8] = v8;
  LODWORD(STACK[0x4B0]) = 1262304268;
  LODWORD(STACK[0x4B4]) = v9;
  STACK[0x4B8] = v7;
  return (*(a6 + 8 * ((97 * (v6 ^ 0x532) - 15112) ^ v6)))();
}

uint64_t sub_10000C920@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = STACK[0x4B8];
  STACK[0x878] = STACK[0x4B8];
  LODWORD(STACK[0x880]) = STACK[0x4B4];
  LODWORD(STACK[0x884]) = STACK[0x4B0];
  STACK[0x888] = STACK[0x4A8];
  LODWORD(STACK[0x4C0]) = v2;
  return (*(a1 + 8 * (((v3 != 0xAB5C364D9808152) * (a2 - 18404 + (a2 ^ 0x47F0))) ^ a2)))();
}

uint64_t sub_10000C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x3C8] = STACK[0x888];
  LODWORD(STACK[0x3D0]) = STACK[0x884];
  LOWORD(STACK[0x3D6]) = -10518;
  LODWORD(STACK[0x3D8]) = -1240130101;
  LODWORD(STACK[0x3DC]) = STACK[0x880];
  STACK[0x3E0] = 0x8C38D1834A63647;
  STACK[0x3E8] = STACK[0x878];
  return (*(a6 + 8 * ((v63 + 9782) ^ v63)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LODWORD(STACK[0x894]) == ((a8 + v8 - 1154935683) & 0x44D6F6EA) - 1418244268;
  LODWORD(STACK[0x41C]) = STACK[0x894];
  return (*(a6 + 8 * ((v9 * (((a8 + v8 - 2160) | 0x204) + 16112)) ^ (a8 + v8))))();
}

uint64_t sub_10000CADC@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v3 = STACK[0x250];
  STACK[0x7B0] = STACK[0x250];
  return (*(a1 + 8 * (((v3 == 0) * (a2 ^ 0x34709243 ^ v2)) ^ a2)))();
}

uint64_t sub_10000CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x7B8] = STACK[0x220];
  LODWORD(STACK[0x41C]) = v7 + 3;
  return (*(a6 + 8 * (v6 - 879781345)))();
}

uint64_t sub_10000CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LODWORD(STACK[0x894]) == v9;
  LODWORD(STACK[0x41C]) = STACK[0x894];
  return (*(a6 + 8 * (((((a8 - v10 + 655) | 0x4C) ^ 0x101) * v11) ^ (a8 + v8))))();
}

uint64_t sub_10000CC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x340];
  STACK[0x4F0] = a6 + 8 * v6;
  STACK[0x4F8] = STACK[0x588];
  STACK[0x500] = &STACK[0x2FC];
  STACK[0x508] = v7;
  return (*(a6 + 8 * (v6 - 11644 + ((v6 - 57423067) & 0x36C7257))))();
}

uint64_t sub_10000CCC0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = STACK[0x508];
  STACK[0x970] = STACK[0x508];
  STACK[0x978] = STACK[0x500];
  STACK[0x980] = STACK[0x4F8];
  STACK[0x988] = *STACK[0x4F0];
  LODWORD(STACK[0x544]) = v3;
  return (*(a1 + 8 * (((v4 == 0xAB5C364D9808152) * (((a2 + 340804619) | 0x20200081) + ((a2 - 13580) ^ (v2 - 3655)))) ^ a2)))();
}

uint64_t sub_10000CD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (STACK[0x970] - 0xAB5C364D9808152);
  STACK[0x990] = v7;
  v8 = *v7;
  STACK[0x998] = v8;
  LODWORD(STACK[0x51C]) = 2124049500;
  return (*(a6 + 8 * (((v8 == 0x4761F68478C333F5) * ((((v6 - 17691) | 0xC48) + 9823) ^ v6 ^ 0x75F2)) ^ v6)))();
}

uint64_t sub_10000CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x510] = STACK[0x998];
  v7 = *(a6 + 8 * v6);
  LODWORD(STACK[0x518]) = 2124049500;
  return v7(2003602224, 251956887, a3, 4294959907, 2114, 8010);
}

uint64_t sub_10000CE98(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 - 0x4761F68478C333E5);
  v15 = ((v7 + v9) & v10 ^ a1) + v12;
  v16 = v15 < 0xF607253A;
  v17 = v15 > a2 - v14;
  if (v16 != (a2 - v14) < 0xF607253A)
  {
    v17 = v16;
  }

  return (*(v13 + 8 * ((v17 * (((v7 + v8) & v11) - 3341)) ^ v7)))();
}

uint64_t sub_10000CF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  LODWORD(STACK[0x518]) = v8;
  LODWORD(STACK[0x9A4]) = v10;
  STACK[0x510] = a7;
  STACK[0x9A8] = v9;
  LODWORD(STACK[0x9B4]) = a3;
  LODWORD(STACK[0x51C]) = v8;
  return (*(v11 + 8 * (a8 - 2992)))();
}

uint64_t sub_10000CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x51C];
  LODWORD(STACK[0x9B8]) = STACK[0x51C];
  v9 = (v8 + 14) & 0xF;
  LODWORD(STACK[0x9BC]) = v9;
  LODWORD(STACK[0x9C0]) = 870132629 - v9;
  LODWORD(STACK[0x544]) = v7 + 28;
  return (*(a6 + 8 * ((824 * (v8 - 2124067261 + ((v6 + 1073586854) & 0xF472D6F1) - 879772032 + (16 - v9) < 0xFFFFFFF6)) ^ v6)))();
}

uint64_t sub_10000D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v63 = LODWORD(STACK[0x9C0]) + LODWORD(STACK[0x9B8]) - ((((v61 + 296491614) & 0xEE53E9EC) + ((LODWORD(STACK[0x9C0]) + LODWORD(STACK[0x9B8])) << v61) + 454067878) & 0x6C2A3B96) + 60655092;
  LODWORD(STACK[0x9C4]) = v63;
  v64 = (*(a6 + 8 * (v61 ^ 0xF37)))(v63 ^ 0xB6151DCB);
  STACK[0x9C8] = v64;
  LODWORD(STACK[0x544]) = v62 + 2;
  return (*(a61 + 8 * ((203 * (v64 != 0)) ^ v61)))();
}

uint64_t sub_10000D108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *STACK[0x990];
  STACK[0x9D0] = v7;
  LODWORD(STACK[0x534]) = 1321681556;
  return (*(a6 + 8 * (((v7 == 0x4761F68478C333F5) * (((v6 - 15176) ^ 0xFFFFEF79) + v6 - 10889)) | v6)))();
}

uint64_t sub_10000D168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v47 = *(a2 + 8 * a3);
  STACK[0x520] = STACK[0x9D0];
  LODWORD(STACK[0x528]) = v46;
  return v47(a1, 4294950712, 0xB9EF1617C447D0CALL, 0x30C800000440D049, 0x4010E9E83BB82F35, LODWORD(STACK[0x52C]), 0x200002033000124, 0x648F3655AB3EBC47, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, STACK[0x9C8], STACK[0xA00]);
}

uint64_t sub_10000D4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61)
{
  v77 = ((a6 - 1) | (((a6 - 1) < 0x45FAE98) << 32)) + a2;
  v78 = v77 + v76 + a3;
  v79 = __ROR8__(v78 & (v69 - 879789801), 8);
  v80 = ((v79 + 0x72B0B1A0EB3E1587) & v70 ^ a7) + ((v79 + 0x72B0B1A0EB3E1587) & a5 ^ a4) - 1;
  v81 = v80 ^ a8;
  v82 = v80 ^ v68;
  v83 = __ROR8__(v81, 8);
  v84 = ((a1 & (2 * (v83 + v82))) - (v83 + v82) + v71) ^ v67;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x7EDA10D8E8BDE475;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0xCB1FD105091A75A6;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x80A3287483B4C7C9;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x8562C5B0FD26117BLL;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v95 = (v62 - ((v94 + v93) | v62) + ((v94 + v93) | v72)) ^ v73;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = __ROR8__(v95, 8);
  *(v65 + v77 + v75) = ((((v63 | (2 * (v97 + v96))) - (v97 + v96) + v61) ^ v64) >> (8 * (v78 & 7u))) ^ *v78;
  return (*(a61 + 8 * (((v74 == 0) * v66) ^ a59)))();
}

uint64_t sub_10000D720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x7C0] = a68;
  v70 = (*(a6 + 8 * (v68 + 3791)))();
  STACK[0x7C8] = &STACK[0x340];
  v71 = STACK[0x340];
  STACK[0x7D0] = STACK[0x340];
  LODWORD(STACK[0x41C]) = v69;
  return (*(a61 + 8 * (((v71 == 0xAB5C364D9808152) * (((v68 - 14644) | 0x8A) + ((v68 - 13134) | 0x110) - 2865)) ^ v68)))(v70);
}

uint64_t sub_10000D7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = STACK[0x7C0];
  STACK[0xA20] = STACK[0x7C0];
  v65 = *(STACK[0x7B8] - 0x270676553BF33669);
  v66 = STACK[0x7B8] - 0x270676553BF336A9;
  v67 = 358777457 * ((623861311 - ((v63 - 160) | 0x252F5E3F) + ((v63 - 160) | 0xDAD0A1C0)) ^ 0xB578A5B2);
  *(v63 - 144) = STACK[0x7D0];
  *(v63 - 136) = v66;
  *(v63 - 148) = v67 + v65 + 20235713;
  *(v63 - 128) = v61 - v67 - 510;
  *(v63 - 124) = 593035557 - v67;
  *(v63 - 160) = v64;
  *(v63 - 120) = 1789030517 - v67;
  v68 = (*(a6 + 8 * (v61 ^ 0x4336)))(v63 - 160);
  v69 = *(v63 - 152);
  LODWORD(STACK[0x41C]) = v69;
  return (*(a61 + 8 * (((v69 == v62) * ((v61 - 1000086891) & 0x3B9C16FE ^ 0x1857)) ^ v61)))(v68);
}

uint64_t sub_10000D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *STACK[0x7C8];
  STACK[0x308] = *(a6 + 8 * (v6 - 970));
  STACK[0x4A8] = STACK[0xA20];
  LODWORD(STACK[0x4B0]) = -365885575;
  LODWORD(STACK[0x4B4]) = -1240130069;
  STACK[0x4B8] = v7;
  return (*(a6 + 8 * (((v6 + 15777) ^ 0x4E31) + v6 - 970)))();
}

uint64_t sub_10000D930(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  LODWORD(STACK[0x518]) = v9;
  LODWORD(STACK[0x9A4]) = v9;
  STACK[0x510] = v8;
  STACK[0x9A8] = v8;
  LODWORD(STACK[0x9B4]) = a3;
  LODWORD(STACK[0x544]) = v11 + 28;
  LODWORD(STACK[0x51C]) = v7;
  return (*(v10 + 8 * a7))();
}

uint64_t sub_10000D96C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53, uint64_t a54, uint64_t a55, int a56, int a57, unint64_t a58, unint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x528]) = v65;
  LODWORD(STACK[0x9DC]) = a1;
  STACK[0x520] = v63;
  STACK[0x9E0] = v66;
  STACK[0x9E8] = a59;
  STACK[0x9F0] = a58;
  LODWORD(STACK[0x9FC]) = a57;
  LODWORD(STACK[0x530]) = v64;
  STACK[0xA00] = a53;
  LODWORD(STACK[0x52C]) = a6;
  LODWORD(STACK[0x534]) = v65;
  return (*(a62 + 8 * v62))();
}

uint64_t sub_10000D9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (LODWORD(STACK[0x534]) - 1321681556);
  v8 = STACK[0x9C8];
  v9 = ((2 * v7) & 0xB77F6F74) + (v7 ^ 0xBAFB677B5BBFB7BALL) + STACK[0x9C8];
  *((v6 ^ 0x347099C2u) + v9 + 0x450498846FCFC165) = 0;
  *(v9 + 0x45049884A4404847) = 0;
  *(v9 + ((2 * v6) ^ 0x45049884A440760FLL)) = 0;
  *(((2 * (v7 + 4)) & 0x10E36FF5ALL) + ((v7 + 4) ^ 0xDDE9ACB7871B7FADLL) + v8 + 0x2216534878E48053) = -9392;
  v10 = (2 * LODWORD(STACK[0x9C0]) + 118) & 0x56;
  v11 = LODWORD(STACK[0x9BC]);
  v12 = ((2 * (v7 + 6)) & 0x1FE7BFBEELL) + ((v7 + 6) ^ 0xFEEB6777FF3DFDF7) + v8 + 0x114988800C20209;
  *v12 = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = (-69 - v11 - v10) ^ 0xAB;
  STACK[0xA08] = v8 + (v7 + 10);
  v13 = ((16 - v11) ^ 0xFBDAFFFFDBF5EFDFLL) + 2 * (16 - v11) + 0x425000049DA2B64;
  STACK[0xA10] = v13;
  LOBYTE(STACK[0xA1B]) = v13 < 0x25D01B43;
  return (*(a6 + 8 * ((101 * (((16 - v11) ^ 0xFBDAFFFFDBF5EFDFLL) + 2 * (16 - v11) == 0xFBDAFFFFDBF5EFDFLL)) ^ v6)))();
}

uint64_t sub_10000DC2C@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  *(v7 + v2) = 0;
  if (v5 != v3 < a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = v3 < v6;
  }

  return (*(a1 + 8 * ((!v9 * v8) ^ v4)))();
}

uint64_t sub_10000DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(STACK[0x980] - 0x1DC6E11A77B78FB9) = STACK[0x9C8];
  *STACK[0x978] = STACK[0x9C4];
  LODWORD(STACK[0x544]) = v8;
  return (*(a6 + 8 * (v7 + v6 - 1492)))();
}

uint64_t sub_10000DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = LODWORD(STACK[0xA1C]) == ((a8 - 1644977721) ^ 0x79134980) + a8 + v8 - 1644;
  LODWORD(STACK[0x41C]) = STACK[0xA1C];
  return (*(a6 + 8 * ((11300 * v9) ^ (a8 + v8))))();
}

uint64_t sub_10000DD2C@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  *(STACK[0x5A0] - 0x462595F2AC0CC808) = STACK[0x2F0];
  LODWORD(STACK[0x314]) = STACK[0x2FC];
  LODWORD(STACK[0x41C]) = v2;
  return (*(a1 + 8 * (((((a2 + 765188452) | 0xC2) ^ 0x2D9C11C9) + a2) ^ (19655 * (a2 < 0x13DE38E8)))))();
}

uint64_t sub_10000DDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  STACK[0x350] = *(a6 + 8 * v59);
  STACK[0x430] = STACK[0x580];
  return (*(a6 + 8 * ((v60 + v59 - v61 + 1644 + 30) ^ v59)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59);
}

uint64_t sub_10000DE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = (STACK[0xA28] + v8);
  STACK[0xA30] = v10;
  v11 = *v10;
  STACK[0xA38] = *v10;
  STACK[0x2A8] = v11;
  return (*(a6 + 8 * (((v11 == 0xAB5C364D9808152) * (((v6 - 170) | v7) ^ v9)) ^ v6)))();
}

uint64_t sub_10000DEDC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = STACK[0xA38];
  v4 = *(STACK[0xA38] - 0xAB5C364D9808152);
  STACK[0xA40] = v4;
  STACK[0x550] = v3;
  return (*(a1 + 8 * ((((a2 ^ (v4 + v2 == 0xAC4B07ADE75E8D63)) & 1) * (3 * (a2 ^ 0x1688) - 11684)) ^ a2)))();
}

uint64_t sub_10000E048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v64 = (*(a6 + 8 * (v61 ^ 0x5166)))(v62);
  *v63 = 0;
  return (*(a61 + 8 * v61))(v64);
}

uint64_t sub_10000E08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x548] = v9;
  STACK[0xA48] = v7;
  STACK[0xA50] = v9;
  STACK[0xA58] = v10;
  STACK[0xA60] = v8;
  STACK[0x550] = STACK[0x2A8];
  return (*(a6 + 8 * v6))();
}

uint64_t sub_10000E224(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8 + a8 - 1631;
  STACK[0x350] = *(a6 + 8 * v9);
  return (*(a6 + 8 * (v9 ^ a5 ^ (((v9 ^ a2) < a3) * a4))))();
}

uint64_t sub_10000E2C0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x4E8]) = v2;
  STACK[0x340] = v3;
  LODWORD(STACK[0x4EC]) = v2;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_10000E2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x4EC];
  LODWORD(STACK[0x96C]) = STACK[0x4EC];
  return (*(a6 + 8 * (((v8 == v7) * (((v6 + 337658074) | 0x20500040) + ((v6 + 879771930) ^ 0xFFFFFFDF))) ^ v6)))();
}

uint64_t sub_10000E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v10 = STACK[0x328];
  STACK[0x7D8] = STACK[0x328];
  return (*(a6 + 8 * (((((v10 == 0) ^ (a8 - 84)) & 1) * (v9 + a8 - 2143)) ^ (v8 + a8 + 587))))();
}

uint64_t sub_10000E380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v61 = a8 - 1246010197;
  v62 = (*(a6 + 8 * (a8 - 879770766)))(STACK[0x7D8]);
  return (*(a61 + 8 * (v61 ^ 0xEA2BEA15 ^ v61 ^ 0xEA2BE32E ^ (7325 * (v61 > 0x2E10D99D)))))(v62);
}

uint64_t sub_10000E3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x420] = STACK[0x358];
  LODWORD(STACK[0x428]) = a68;
  return (*(a6 + 8 * v68))();
}

uint64_t sub_10000E424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x428];
  v9 = STACK[0x420] - 18918 + ((v6 - 5527) | 0x4090u);
  STACK[0x7E0] = v9;
  STACK[0x358] = v9;
  LODWORD(STACK[0x38C]) = v8;
  return (*(a6 + 8 * (((v8 == v7) * ((v6 + 1825710401) & 0x932DF277 ^ 0x6EA9)) ^ v6)))();
}

uint64_t sub_10000E490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = (v61 + a8 - 234) | 0x124;
  v63 = a8 - 879778505;
  v64 = (*(a6 + 8 * (a8 ^ 0x3470CCB2)))(STACK[0x2D8] - 0x270676553BF336C1);
  v65 = STACK[0x240];
  STACK[0x7F8] = STACK[0x240];
  return (*(a61 + 8 * (((v65 == 0x37CA302CFAD4CCE3) * (v62 ^ 0x977)) ^ v63)))(v64);
}

uint64_t sub_10000E5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x238];
  v67 = STACK[0x218];
  LODWORD(STACK[0x460]) = STACK[0x21C];
  LODWORD(STACK[0x464]) = v67;
  STACK[0x468] = v66;
  STACK[0x470] = a65;
  return (*(a6 + 8 * v65))();
}

uint64_t sub_10000E5E8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = STACK[0x470];
  v4 = STACK[0x464];
  v5 = STACK[0x460];
  STACK[0x320] = STACK[0x468];
  LODWORD(STACK[0x334]) = v4;
  STACK[0x278] = v3;
  LODWORD(STACK[0x310]) = v5;
  LODWORD(STACK[0x47C]) = v5;
  LODWORD(STACK[0x480]) = v5;
  LODWORD(STACK[0x484]) = 219047021;
  LODWORD(STACK[0x4A4]) = v2;
  return (*(a1 + 8 * ((((a2 - 693944827) & 0x295CAEB5 ^ (a2 - 1244227469) & 0x4A296F7A ^ 0x2BE3) * (v3 == 0)) ^ a2)))();
}

uint64_t sub_10000E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = STACK[0x484];
  LODWORD(STACK[0x844]) = STACK[0x484];
  v9 = STACK[0x480];
  LODWORD(STACK[0x848]) = STACK[0x480];
  LODWORD(STACK[0x84C]) = STACK[0x47C];
  LODWORD(STACK[0x264]) = v8;
  v8 -= 1724175408;
  v10 = (v6 ^ 0x8C2) + 6861 + v9 - 1894480519;
  v11 = (v8 < 0xA649903D) ^ (v10 < 3 * (v6 ^ 0x8C2u) - 1505132200);
  v12 = v8 < v10;
  if (v11)
  {
    v12 = v10 < 3 * (v6 ^ 0x8C2u) - 1505132200;
  }

  LODWORD(STACK[0x4A0]) = v7;
  return (*(a6 + 8 * ((116 * v12) ^ v6)))();
}

uint64_t sub_10000E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x844];
  v8 = (v6 + 1480634957 + LODWORD(STACK[0x844]) - 1699685791);
  STACK[0x850] = v8;
  v9 = STACK[0x278];
  STACK[0x858] = STACK[0x278];
  LODWORD(v8) = *(v9 + 40 * v8 + 36) - LODWORD(STACK[0x334]) == 362056928;
  LODWORD(STACK[0x48C]) = STACK[0x84C];
  LODWORD(STACK[0x490]) = v7;
  return (*(a6 + 8 * ((v8 * (v6 + 10154)) ^ v6)))();
}

uint64_t sub_10000E874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6 ^ 0x2C77;
  v9 = (v6 ^ 0x77) - 66;
  v10 = STACK[0x320];
  STACK[0x860] = STACK[0x320];
  LODWORD(STACK[0x488]) = v7;
  return (*(a6 + 8 * ((120 * (((v10 == 0xAB5C364D9808152) ^ v9) & 1)) ^ v8)))();
}

uint64_t sub_10000E8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x858] + 40 * STACK[0x850];
  v65 = *v64;
  LODWORD(v64) = *(v64 + 24);
  STACK[0x3C8] = 0;
  LODWORD(STACK[0x3D0]) = v64;
  LOWORD(STACK[0x3D6]) = 692;
  LODWORD(STACK[0x3D8]) = -1240130101;
  LODWORD(STACK[0x3DC]) = -1240130109;
  STACK[0x3E0] = v65;
  STACK[0x3E8] = STACK[0x860];
  return (*(a6 + 8 * ((((a9 - 9777) | 0x8B8) ^ 0x2DAD) + a9 - 9472)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_10000E954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = LODWORD(STACK[0x488]) == ((v6 - 1702332156) & 0x31070EFF ^ (v8 + 2333));
  LODWORD(STACK[0x4A0]) = STACK[0x488];
  return (*(a6 + 8 * ((v10 * (4066 * (v6 ^ (v9 - 11)) + 1192)) ^ (v7 + v6 - 1768))))();
}

uint64_t sub_10000E9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x264];
  LODWORD(STACK[0x48C]) = STACK[0x310];
  LODWORD(STACK[0x490]) = v7;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_10000E9E8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x490];
  v3 = STACK[0x48C];
  LODWORD(STACK[0x494]) = STACK[0x48C];
  LODWORD(STACK[0x498]) = v3;
  LODWORD(STACK[0x49C]) = v2;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_10000EA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x498];
  v8 = v6 - 4933 + LODWORD(STACK[0x49C]) - 3124;
  LODWORD(STACK[0x47C]) = STACK[0x494];
  LODWORD(STACK[0x480]) = v7;
  LODWORD(STACK[0x484]) = v8;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_10000EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x858] + 40 * STACK[0x850];
  v8 = *(v7 + 16);
  STACK[0x868] = v7 + 16;
  LODWORD(STACK[0x494]) = STACK[0x84C];
  LODWORD(STACK[0x498]) = STACK[0x848];
  LODWORD(STACK[0x49C]) = STACK[0x844];
  return (*(a6 + 8 * (((((v6 + 96) ^ (v8 == 0)) & 1) * (((v6 + 1507) | 0xD62) - 8050)) | (v6 + 12140))))();
}

uint64_t sub_10000EB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x858] + 40 * STACK[0x850];
  v8 = *(v7 + 24);
  v9 = *STACK[0x868];
  LODWORD(v7) = *(v7 + 32);
  v10 = STACK[0x320];
  STACK[0x308] = *(a6 + 8 * v6);
  STACK[0x4A8] = v9;
  LODWORD(STACK[0x4B0]) = v8;
  LODWORD(STACK[0x4B4]) = v7;
  STACK[0x4B8] = v10;
  return (*(a6 + 8 * (((v6 ^ 0x434E) - 15116) ^ v6)))();
}

uint64_t sub_10000EBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x858] + 40 * STACK[0x850];
  v8 = *(v7 + 24);
  LODWORD(v7) = *(v7 + 8);
  v9 = STACK[0x320];
  STACK[0x248] = *(a6 + 8 * v6);
  LODWORD(STACK[0x3B4]) = v7;
  STACK[0x3B8] = v9;
  LODWORD(STACK[0x3C0]) = v8;
  return (*(a6 + 8 * (v6 ^ 0x638B ^ (v6 - 394010854) & 0x177C63EF)))();
}

uint64_t sub_10000EDC8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = LODWORD(STACK[0x92C]) == v2;
  LODWORD(STACK[0x398]) = STACK[0x92C];
  return (*(a1 + 8 * ((((20 * (((a2 + 338718563) | 0x20400461) ^ (v3 - 257))) ^ 0x1A02) * v4) ^ a2)))();
}

uint64_t sub_10000EE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0x288];
  v10 = *(STACK[0x288] - 0x4761F68478C333DDLL);
  STACK[0x898] = v10;
  LODWORD(STACK[0x8A4]) = *(v9 - 0x4761F68478C333E5);
  STACK[0x270] = v10;
  LODWORD(STACK[0x394]) = v8;
  return (*(a6 + 8 * (((v10 == 0) * ((v6 - 13187) ^ 0x34708F8C ^ v7)) | v6)))();
}

uint64_t sub_10000EE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (((v70 + 341867380) | 0x20100200u) ^ 0x382BB8E29F177878) + LODWORD(STACK[0x8A4]) + ((LODWORD(STACK[0x8A4]) < (v70 ^ 0x94Cu) + 419260733) << 32);
  STACK[0x370] = v72;
  STACK[0x8A8] = a70;
  STACK[0x378] = a70;
  LODWORD(STACK[0x394]) = v71 + 28;
  return (*(a6 + 8 * ((6822 * (v72 - a70 - 0x1212C19E4EC4BB30 < 0xFFFFFFFFFFFFFFF6)) ^ v70)))();
}

uint64_t sub_10000EFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  STACK[0x8B0] = &STACK[0x270];
  v53 = v50 + ((2 * (v51 - 0x2618F74475A0ACCDLL)) & 0x5FD327BDEF56EDDCLL) + ((v51 - 0x2618F74475A0ACCDLL) ^ 0x2FE993DEF7AB76EELL) - 0x2FE993DEF7AB76EELL;
  STACK[0x8B8] = v53;
  v54 = __ROR8__(v53 & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = v54 + ((v52 - 1101589192) & 0x77F997F7 ^ 0x72B0B1A0DF4E9366);
  v56 = ((0xD4F4E5F14C1EA78 - v54) & 0x3155E6E371D4A28CLL) + v55 - (v55 & 0x3355E6E371D4A28CLL);
  v57 = __ROR8__(v56 ^ 0x6712D096EDAACFA7, 8);
  v56 ^= 0xF2975D91B45A639CLL;
  v58 = (((2 * (v57 + v56)) & 0x42B72E0FC71A909ALL) - (v57 + v56) - 0x215B9707E38D484ELL) ^ 0xAFD7F7CF878B386BLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0x3CED25A7FD3D6C94) - (v60 + v59) - 0x1E7692D3FE9EB64ALL) ^ 0x60AC820B1623523FLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) & 0xD51C261F31283AECLL) - (v63 + v62) - 0x6A8E130F98941D77) ^ 0x5E6E3DF56E71972FLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) & 0x67E5D14539A6B3E0) - (v66 + v65) + 0x4C0D175D632CA60FLL) ^ 0xCCAE3F29E09861C6;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ a2;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ a1;
  v72 = __ROR8__(v71, 8);
  v73 = __ROR8__(v70, 61);
  LOBYTE(STACK[0x8C7]) = ((0xE05FFA49ABAE0FD4 - ((v72 + (v71 ^ v73)) | 0xE05FFA49ABAE0FD4) + ((v72 + (v71 ^ v73)) | 0x1FA005B65451F02BLL)) ^ 0xE7B92FC3BFA902B5) >> (8 * (v53 & 7u));
  STACK[0x8C8] = v53 + 1;
  v74 = __ROR8__((v53 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((0xD4F4E5F14C1EA78 - v74) & 0x3D9236DAA7C2E47FLL) + v74 + a4 - ((v74 + a4) & 0x399236DAA7C2E47FLL);
  v76 = __ROR8__(v75 ^ 0x69D500AF3BBC8954, 8);
  v75 ^= 0xFC508DA8624C256FLL;
  v77 = (v76 + v75) ^ 0x71739F379BF98FD9;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (v79 + v78 - ((2 * (v79 + v78)) & 0x5826CDB5EC674BFALL) - 0x53EC992509CC5A03) ^ 0xD2C976021E8E4188;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (0x7107CA4467DAA2B3 - ((v82 + v81) ^ 0x90985294394D5C8BLL | 0x7107CA4467DAA2B3) + ((v82 + v81) ^ 0x90985294394D5C8BLL | 0x8EF835BB98255D4CLL)) ^ 0xD57FB62AA8727461;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a3;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) & 0xDF117294C14ABF8CLL) - (v87 + v86) - 0x6F88B94A60A55FC7) ^ 0x15158305627CB142;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ a1;
  LOBYTE(STACK[0x8D7]) = ((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v53 + 1) & 7));
  v91 = STACK[0x378];
  STACK[0x8D8] = STACK[0x378];
  STACK[0x8E0] = STACK[0x270];
  v92 = ((v91 - 0x2618F74475A0ACCBLL) ^ 0x2FDDB7F3BC8EEF4FLL) - 0x2059162020002101 + ((2 * (v91 - 0x2618F74475A0ACCBLL)) & 0x5FBB6FE7791DDE9ELL);
  STACK[0x8E8] = v92;
  STACK[0x8F0] = v91 - 0x2618F74475A0ACC7;
  v93 = STACK[0x370] - 0x382BB8E24D8F9E65;
  STACK[0x8F8] = v93;
  LOBYTE(STACK[0x907]) = v93 < 0x76D5C992;
  return (*(a6 + 8 * (v52 ^ (a7 + 13) ^ (12223 * (v52 != -294734647)))))(12223, 0xCC3A300350DD3914, LOWORD(STACK[0x366]), 20, v92, 0xE5616341D67C2B0ELL, a7, 0x71739F379BF98FD9, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50);
}

uint64_t sub_10000F610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unsigned __int8 a58, int a59, unsigned __int16 a60)
{
  v63 = (*v61 ^ a58) | ((*v60 ^ a60) << 8);
  LOWORD(STACK[0x366]) = v63 - 2 * (v63 & 0x6C0F ^ (*v61 ^ a58) & 4) + 27659;
  return (*(a6 + 8 * (v62 + a8 + 1106)))();
}

uint64_t sub_10000F6B0@<X0>(unint64_t a1@<X1>, int a2@<W3>, uint64_t a3@<X5>, uint64_t a4@<X7>, int a5@<W8>)
{
  v13 = v7 + v5 - 0xF84A1D39C8ECE4ELL;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = v14 - ((a3 + 2 * v14) & 0xD7B687425C130ED2) + 0x5E8BF54219479CF0;
  v16 = __ROR8__(v15 ^ 0xBF9C75D4B277EA42, 8);
  v15 ^= 0x2A19F8D3EB874679uLL;
  v17 = (v16 + v15) ^ a4;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x995B8213116B44B3 - ((v19 + v18) ^ 0xA9ABE765327C02E1 | 0x995B8213116B44B3) + ((v19 + v18) ^ 0xA9ABE765327C02E1 | 0x66A47DECEE94BB4CLL)) ^ 0xB1D58A5134555DD8;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) | 0x8F9F3AA7979996ACLL) - (v22 + v21) - 0x47CF9D53CBCCCB56) ^ 0x8CD04C56C2D6BEF0;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  LODWORD(STACK[0x56C]) = a5;
  v26 = (((2 * (v25 + v24)) | 0x5D19FDB5C715120ALL) - (v25 + v24) + 0x517301251C7576FBLL) ^ 0x2E2FD6AE603E4ECCLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v9;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v10;
  v31 = __ROR8__((v13 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v29) = (((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v29, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * (v13 & 7u))) ^ *v13;
  v32 = -2 - (((0x8D4F4E5F14C1EA78 - v31) | 0x70B9FD8A439F9F18) + ((v31 + v6) | 0x8F460275BC6060E7));
  v33 = v32 ^ 0x24FECBFFDFE1F233;
  v32 ^= 0xB17B46F886115E08;
  v34 = (__ROR8__(v33, 8) + v32) ^ a4;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (0x19917B79A964598ELL - ((v36 + v35) | 0x19917B79A964598ELL) + ((v36 + v35) | 0xE66E8486569BA671)) ^ 0x98B4945EBE264204 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__((0x19917B79A964598ELL - ((v36 + v35) | 0x19917B79A964598ELL) + ((v36 + v35) | 0xE66E8486569BA671)) ^ 0x98B4945EBE264204, 8) + v37) ^ v12;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x80A3287483B4C7C9;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((((2 * (v42 + v41)) | 0xEF21E864F137DBA2) - (v42 + v41) - 0x7790F432789BEDD1) ^ 0xF2F2318285BDFCAALL, 8);
  v44 = (((2 * (v42 + v41)) | 0xEF21E864F137DBA2) - (v42 + v41) - 0x7790F432789BEDD1) ^ 0xF2F2318285BDFCAALL ^ __ROR8__(v41, 61);
  v45 = (((2 * (v43 + v44)) & 0x434EDAA1E60D4BA6) - (v43 + v44) + 0x5E5892AF0CF95A2CLL) ^ 0xC9ADFE1FF7CF405FLL;
  LODWORD(v45) = (((__ROR8__(v45, 8) + (v45 ^ __ROR8__(v44, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v13 + 1) & 7))) ^ *(v13 + 1);
  v46 = __ROR8__((v13 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v47 = ((2 * (v46 + v6)) | 0xE7D352924E9D8982) - (v46 + v6) + 0xC1656B6D8B13B3FLL;
  v48 = v47 ^ 0xA7AE9F3CBB30A9EALL;
  v47 ^= 0x322B123BE2C005D1uLL;
  v49 = __ROR8__(v48, 8);
  v50 = __ROR8__((((2 * (v49 + v47)) | 0xE9AEAA22E55F59ELL) - (v49 + v47) - 0x74D7551172AFACFLL) ^ 0x763EEA668CD37516, 8);
  v51 = (((2 * (v49 + v47)) | 0xE9AEAA22E55F59ELL) - (v49 + v47) - 0x74D7551172AFACFLL) ^ 0x763EEA668CD37516 ^ __ROR8__(v47, 61);
  v52 = (((2 * (v50 + v51)) | 0xF5C836BD36429738) - (v50 + v51) - 0x7AE41B5E9B214B9CLL) ^ 0x43E0B86739CAFE9;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (0x33F0F3581F53F1CALL - ((v54 + v53) | 0x33F0F3581F53F1CALL) + ((v54 + v53) | 0xCC0F0CA7E0AC0E35)) ^ 0x710DDA2E9B67B93;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (0xAB7263B5897B05FDLL - ((v57 + v56) | 0xAB7263B5897B05FDLL) + ((v57 + v56) | 0x548D9C4A7684FA02)) ^ 0xD42EB43EF5303DCBLL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v9;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ v10;
  LODWORD(v61) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xF8192A75EBF8F29ELL) >> (8 * ((v13 + 2) & 7))) ^ *(v13 + 2);
  v63 = *(v13 + 3);
  v13 += 3;
  v64 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = (v64 + v6) ^ 0xC1C2BB72C58EC110;
  v66 = __ROR8__((v64 + v6) ^ 0x544736759C7E6D2BLL, 8);
  v67 = __ROR8__((((2 * (v66 + v65)) | 0x580992B6F3AECAACLL) - (v66 + v65) - 0x2C04C95B79D76556) ^ 0x5D77566CE22EEA8FLL, 8);
  v68 = (((2 * (v66 + v65)) | 0x580992B6F3AECAACLL) - (v66 + v65) - 0x2C04C95B79D76556) ^ 0x5D77566CE22EEA8FLL ^ __ROR8__(v65, 61);
  v69 = (0xD7EEA3B808AFF673 - ((v67 + v68) ^ 0xB70FAD487CFABC9CLL | 0xD7EEA3B808AFF673) + ((v67 + v68) ^ 0xB70FAD487CFABC9CLL | 0x28115C47F750098CLL)) ^ 0xE1C4E1D763175165;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v12;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x80A3287483B4C7C9;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v9;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v10;
  v78 = __ROR8__(v77, 8);
  v79 = __ROR8__(v76, 61);
  LODWORD(v13) = (((((2 * (v78 + (v77 ^ v79))) | 0x684634ED764B9714) - (v78 + (v77 ^ v79)) + v11) ^ a1) >> (8 * (v13 & 7u))) ^ v63;
  LODWORD(v29) = (v45 << 16) | (v29 << 24) | (v61 << 8) | v13;
  LODWORD(STACK[0xA6C]) = v29 - 1240130101 - 2 * (v29 & 0x36151DDF ^ v13 & a2);
  return (*(v8 + 8 * a5))();
}

uint64_t sub_10000FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v14 = (v9 ^ v12) + v8;
  STACK[0x368] = v14 + 10;
  v14 -= 0x2618F743FECAE335;
  v15 = v14 < 0x76D5C992;
  v16 = v14 > v10;
  if (v11 != v15)
  {
    v16 = v15;
  }

  LODWORD(STACK[0x394]) = v13 + 28;
  return (*(a6 + 8 * ((a8 - 879776283) ^ (453 * v16))))();
}

uint64_t sub_100010030@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  LODWORD(STACK[0x4CC]) = -1418238986;
  STACK[0x4D0] = v2;
  return (*(a1 + 8 * a2))();
}

uint64_t sub_100010104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v65 = SLOWORD(STACK[0x366]) == -1156;
  LODWORD(STACK[0x394]) = v64 + 20;
  return (*(a6 + 8 * ((54 * (((v62 - 2) ^ v65) & 1)) ^ (v63 + v62 + 33))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_1000101F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  STACK[0x920] = v11;
  STACK[0x230] = v11;
  LODWORD(STACK[0x4CC]) = v10 + 21;
  STACK[0x4D0] = 0x4761F68478C333F5;
  return (*(a6 + 8 * (((v11 == 0x4761F68478C333F5) * ((v7 ^ v9) + v8 + v7 - 1414 - 3461)) | (v7 - 879773147))))();
}

uint64_t sub_10001025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x4CC];
  *STACK[0x908] = STACK[0x4D0];
  STACK[0x4D8] = STACK[0x2D0];
  LODWORD(STACK[0x4E0]) = v7;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_1000102F4(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 - dword_100450C68) ^ 0x20)) ^ byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 - dword_100450C68) ^ 0x20))] ^ 0xC4]) + 337);
  v3 = *(v2 - 1524146595);
  v4 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + v3) ^ 0x20)) ^ byte_10040EBA0[byte_1003FFD80[(33 * ((qword_100450D48 + v3) ^ 0x20))] ^ 0x96]) + 394);
  v5 = v3 - &v11 + *(v4 - 895037751);
  *(v2 - 1524146595) = 2128276769 * v5 - 0x1122E604F1A703E0;
  *(v4 - 895037751) = 2128276769 * (v5 ^ 0xEEDD19FB0E58FC20);
  v6 = *(&off_10044E3E0 + ((33 * (dword_100450C68 ^ 0x20 ^ qword_100450D48)) ^ byte_1004247A0[byte_10041B080[(33 * (dword_100450C68 ^ 0x20 ^ qword_100450D48))] ^ 0x65]) - 69);
  v7 = *(v6 - 1286256454);
  v8 = 1751014823 * ((&v12[0xDA529600B909DE2] - 2 * (v12 & 0x6D294B005C84EF10)) ^ 0xEFED50DE0977B087);
  v15 = -1660720320 - v8;
  v12[0] = v7 - v8;
  v12[1] = a2;
  v14 = a1;
  v9 = 33 * ((*(v4 - 895037751) + *(v2 - 1524146595)) ^ 0x20);
  (*(v6 + 8 * ((byte_10040EBA0[byte_1003FFD80[v9] ^ 0x8C] ^ v9) + 18908) - 1286268654))(v12);
  return v13;
}

void sub_100010544(id a1)
{
  v1 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + dword_100450E78) ^ 0x20)) ^ byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 + dword_100450E78) ^ 0x20))] ^ 0x57]) - 42);
  v2 = *(v1 - 1342158783);
  v3 = *(&off_10044E3E0 + (byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 + v2) ^ 0x20))] ^ 0x57] ^ (33 * ((qword_100450D48 + v2) ^ 0x20))) + 286);
  v4 = *(v3 - 895037751) - v2 - &v14;
  v5 = 2128276769 * v4 + 0x1122E604F1A703E0;
  v6 = 2128276769 * (v4 ^ 0xEEDD19FB0E58FC20);
  *(v1 - 1342158783) = v5;
  *(v3 - 895037751) = v6;
  LOBYTE(v6) = 33 * ((v6 - *(v1 - 1342158783)) ^ 0x20);
  v7 = *(&off_10044E3E0 + (byte_1004247A0[byte_10041B080[v6] ^ 0x65] ^ v6) + 106);
  *(v7 - 1414356775) = 97;
  *(v7 - 1414356771) = 0x272117B282DA5774;
  *(v7 - 1414356763) = 0xBD0E989B22845223;
  *(v7 - 1414356755) = 1770900648;
  *(v7 - 1414356751) = -57;
  *(v7 - 1414356747) = 0xF461B3E8F2863F2ELL;
  *(v7 - 1414356735) = 1132571706;
  v8 = *(&off_10044E3E0 + ((33 * ((*(v3 - 895037751) - *(v1 - 1342158783)) ^ 0x20)) ^ byte_10040EDA0[byte_100400080[(33 * ((*(v3 - 895037751) - *(v1 - 1342158783)) ^ 0x20))] ^ 0xC4]) + 296);
  *(v8 - 1580036718) = 0x272117B282DA5774;
  *(v8 - 1580036710) = 0xBD0E989B22845223;
  *(v8 - 1580036702) = 1770900648;
  *(v8 - 1580036698) = -57;
  *(v8 - 1580036694) = 0xF461B3E8F2863F2ELL;
  *(v8 - 1580036722) = 97;
  *(v8 - 1580036682) = 1132571706;
  v9 = *(&off_10044E3E0 + ((33 * (dword_100450E78 ^ 0x20 ^ qword_100450D48)) ^ byte_10040EDA0[byte_100400080[(33 * (dword_100450E78 ^ 0x20 ^ qword_100450D48))] ^ 0xBF]) + 66);
  v10 = *(v9 - 1286256534);
  v11 = 53688491 * ((~v15 & 0x518729085A2FBEA3 | v15 & 0xAE78D6F7A5D0415CLL) ^ 0xF9636C33EC366675);
  v17 = v11 - 939496460;
  v16 = v10 ^ v11;
  v12 = 33 * ((*(v3 - 895037751) + *(v1 - 1342158783)) ^ 0x20);
  v13 = v9 - 1286268654;
  (*(v9 - 1286268654 + 8 * ((byte_10040EBA0[byte_1003FFD80[v12] ^ 0xBA] ^ v12) + 18868)))(v15);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100010984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  HIDWORD(a10) = 0;
  v12 = (*(v11 + 8 * (v10 ^ 0x7A8411EAu)))(0, &a10 + 4);
  return (*(v11 + 8 * (((v12 == ((v10 - 2055481672) | 0x518) - 14105) * (3 * (v10 ^ (v10 - 827)) + 23827)) ^ (v10 - 2055485044))))(v12, v13);
}

uint64_t sub_100010A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53, char a54, char a55)
{
  v57 = *(&off_10044E3E0 + (v55 ^ 0xED1));
  v58 = *(v57 - 212029222);
  a25 = *v58 - 43;
  a26 = v58[1] - 43;
  a27 = v58[2] - 43;
  a28 = v58[3] + 71 * (v55 ^ 0x7B);
  a29 = v58[4] - 43;
  a30 = v58[5] - 43;
  a31 = v58[6] - 43;
  a32 = v58[7] - 43;
  a33 = v58[8] - 43;
  a34 = v58[9] - 43;
  a35 = v58[10] - 43;
  a36 = v58[11] - 43;
  a37 = v58[12] - 43;
  a38 = v58[13] - 43;
  a39 = v58[14] - 43;
  a40 = v58[15] - 43;
  a41 = v58[16] - 43;
  a42 = v58[17] - 43;
  a43 = v58[18] - 43;
  a44 = v58[19] - 43;
  v59 = *(v57 - 212029222);
  a45 = v59[20] - 43;
  a46 = v59[21] - 43;
  a47 = v59[22] - 43;
  a48 = v59[23] - 43;
  a49 = v59[24] - 43;
  a50 = v59[25] - 43;
  a51 = v59[26] - 43;
  a52 = v59[27] - 43;
  a53 = v59[28] - 43;
  a54 = v59[29] - 43;
  a55 = v59[30] - 43;
  v60 = (*(v56 + 8 * (v55 + 15328)))(&a25);
  return (*(v56 + 8 * ((247 * (v60 != 0)) ^ v55)))(v60, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_100010C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41)
{
  v43 = *(*(&off_10044E3E0 + (v41 ^ 0xF4C)) - 2117654051);
  a24 = *v43 - 3;
  a25 = v43[1] - 3;
  a26 = v43[2] - 3;
  a27 = v43[3] - 3;
  a28 = v43[4] - 3;
  a29 = v43[5] - 3;
  a30 = v41 + 93 + v43[6] + 40;
  a31 = v43[7] - 3;
  a32 = v43[8] - 3;
  a33 = v43[9] - 3;
  a34 = v43[10] - 3;
  a35 = v43[11] - 3;
  a36 = v43[12] - 3;
  a37 = v43[13] - 3;
  a38 = v43[14] - 3;
  a39 = v43[15] - 3;
  a40 = v43[16] - 3;
  a41 = v43[17] - 3;
  v44 = (*(v42 + 8 * (v41 ^ 0x4420)))(&a24);
  return (*(v42 + 8 * ((247 * (v44 != 0)) ^ v41)))(v44, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t sub_100010DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10)
{
  v12 = (*(v11 + 8 * (v10 + 9647)))(a10);
  v13 = ((v12 << (-73 * (v10 ^ 0xD0) + 110)) & 0xEAFDD5F8) + (v12 ^ 0x757EEAFC) != 1971251964;
  return (*(v11 + 8 * ((v13 | (32 * v13)) ^ v10)))();
}

uint64_t sub_100010EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20)
{
  a11 = *(v22 + 8 * v20);
  a12 = v21;
  a20 = v23 + 22;
  *(v24 - 116) = v20 + 422488289 * ((((v24 - 120) | 0x14AD061) + (~(v24 - 120) | 0xFEB52F9E)) ^ 0xFDD572E4) - 1116779182;
  *(v24 - 112) = &a11;
  v25 = (*(v22 + 8 * (v20 ^ 0x4C00)))(v24 - 120);
  return (*(v22 + 8 * ((v20 + 3497) ^ v20 ^ (v20 + 5844) ^ (8435 * (*(v24 - 120) == -1418238986)))))(v25);
}

uint64_t sub_100010F90()
{
  *(v4 - 112) = v1;
  *(v4 - 116) = 41492489 * ((2 * ((v4 - 120) & 0x2735FC8) - (v4 - 120) - 41115597) ^ 0x5CD8AC88) + v0 + 16104;
  *(v4 - 120) = (v3 + 48) ^ (9 * ((2 * ((v4 - 120) & 0xC8) - (v4 - 120) + 51) ^ 0x88));
  v5 = (*(v2 + 8 * (v0 + 16782)))(v4 - 120);
  return (*(v2 + 8 * (((*(v4 - 104) == ((v0 + 192152856) & 0xF48BFBFD) - 1418241503) * (((v0 + 2402) | 0x1CA) + 1897)) ^ v0)))(v5);
}

uint64_t sub_10001105C()
{
  *(v1 + 24) = 46;
  *(v1 + 40) = 0;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_1000110C8()
{
  *(v1 + 24) = 46;
  *(v1 + 40) = 0;
  return (*(v2 + 8 * v0))();
}

uint64_t sub_10001122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2)
  {
    v5 = *(a2 + 16) == (v4 ^ 0x210125BBu) + 638343532 + 0x4AE9B61DAD3B4DB6;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v3 + 8 * ((37 * v6) ^ (v4 + 118332011))))(a1);
}

uint64_t sub_10001129C()
{
  v7 = (*(v2 + 8 * (v4 ^ 0x5A58)))(40);
  *v7 = v6 - 1016001833;
  *(v7 + 8) = ((v4 - v1) ^ 0xB51649E28B37149ELL) + v5;
  *(v7 + 24) = v0;
  *(v7 + 16) = v3 ^ 0x19CFD7E2;
  *(v7 + 32) = 0;
  return (*(v2 + 8 * v4))(v7);
}

uint64_t sub_100011344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (v5)
  {
    v9 = *(a5 + 40) == 0;
  }

  else
  {
    v9 = 1;
  }

  v11 = v9 || *(a5 + 48) == 0x706918E707F8BB97;
  return (*(v6 + 8 * (((((v7 + v8 + 278) | 0x2000) - 8343) * v11) ^ (v8 + 118336088))))(a1, a2, a3, a4);
}

uint64_t sub_100011450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14)
{
  v27 = (*(v15 + 8 * (v16 + 8636)))(0, v14, 134217984);
  v18 = (*(v15 + 8 * (v16 + 8678)))(a14, v27, *(*(v17 + 8 * (v16 - 10118)) - 488494207), 0);
  return (*(v15 + 8 * (((v18 != 0) * (((v16 - 9402) | 0x2022) ^ 0x2470)) ^ v16)))(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1000114F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = v17 - 776;
  v19 = (*(v15 + 8 * (v18 ^ 0x6FC8)))(a15);
  v20 = v19 - ((((14 * (v18 ^ 0x2723) - 8987) | 0x1EC0u) ^ 0x24E4C3BEBE06C94CLL) & (2 * v19)) + 0x127261DF5F036B43;
  *(v16 - 0x706918E707F8BB97) = v20;
  v29 = (*(v15 + 8 * (v18 ^ 0x6FE0)))(v20 ^ 0x5F036B43);
  return (*(v15 + 8 * ((109 * (v29 != 0)) ^ v18)))(v29, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1000115C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17, uint64_t a18)
{
  v30 = (*(v19 + 8 * (v18 ^ 0x5560)))(a15);
  v21 = (((v18 - 7111) | 0x2022) ^ *a17 ^ 0xA5FD9ADA) + 1742305917 + ((((v18 - 8063) | 0x2601) ^ 0xF5FD8D33) & (2 * *a17) ^ 0xB4048206);
  *(v20 - 84) = v21;
  return (*(v19 + 8 * ((16381 * (v21 == 1658343484)) ^ v18)))(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a18);
}

uint64_t sub_10001182C(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + dword_100450E58) ^ 0x20)) ^ byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 + dword_100450E58) ^ 0x20))] ^ 0xE4]) + 30);
  v3 = *(v2 - 638861511);
  v4 = *(&off_10044E3E0 + (byte_10040EDA0[byte_100400080[(33 * ((qword_100450D48 + v3) ^ 0x20))] ^ 0x57] ^ (33 * ((qword_100450D48 + v3) ^ 0x20))) + 286);
  v5 = &v11[v3 + *(v4 - 895037751)];
  *(v2 - 638861511) = 2128276769 * v5 + 0x1122E604F1A703E0;
  *(v4 - 895037751) = 2128276769 * (v5 ^ 0xEEDD19FB0E58FC20);
  v6 = *(&off_10044E3E0 + ((33 * ((qword_100450D48 + dword_100450E58) ^ 0x20)) ^ byte_1003FFF80[byte_1004246A0[(33 * ((qword_100450D48 + dword_100450E58) ^ 0x20))] ^ 0xFC]) - 136);
  v7 = *(v6 - 1286256446);
  v8 = 1751014823 * (((v12 ^ 0x2CAC2FBD102933AFLL | 0x902C6CD926F678A2) - (v12 ^ 0x2CAC2FBD102933AFLL | 0x6FD39326D909875DLL) + 0x6FD39326D909875DLL) ^ 0x3E4458BA632C149ALL);
  v15 = -1660720320 - v8;
  v12[0] = v7 - v8;
  v12[1] = a2;
  v14 = a1;
  v9 = 33 * (*(v2 - 638861511) ^ 0x20 ^ *(v4 - 895037751));
  (*(v6 + 8 * ((byte_10040EBA0[byte_1003FFD80[v9] ^ 0x96] ^ v9) + 18976) - 1286268654))(v12);
  return v13;
}

uint64_t sub_100011B6C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, int a8)
{
  v11 = v9 + v10 + 1374;
  v12 = *(v8 + 8 * v11);
  v13 = ((2 * (&a6 & 0x69780F345499830) - &a6 - 0x69780F345499831) ^ 0x518C3A370CAFBF19) * a1;
  a8 = v10 + v13;
  a7 = v12 ^ v13;
  v14 = (*(v8 + 8 * (v10 + 939515494)))(&a6);
  return (*(v8 + 8 * (v11 ^ 0x2F5E)))(v14);
}

uint64_t sub_100011CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int *a13)
{
  a11 = -1240130101;
  v17 = *(*(v14 + 8 * (v15 + v16 + 72)) - 785247935);
  a13 = &a11;
  a12 = v17;
  return (*(v13 + 8 * (((v17 == ((v16 + 195611974) & 0x2C56EFD7 ^ 0x6C16C342)) * ((v16 + 195611974) ^ 0xD3A934A3)) ^ (v16 + 939514193))))(a1, a2, a3, a4);
}

uint64_t sub_100011D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15)
{
  v18 = v16 ^ 0xD3A91028;
  v19 = 771 * (v16 ^ 0xD3A9392D);
  a14 = (v16 ^ 0xD3A91028) - 422488289 * ((-1626638864 - (&a13 | 0x9F0B75F0) + (&a13 | 0x60F48A0F)) ^ 0x9C6B288B) - 4048;
  a15 = v15 + 0x3D00B7A92B0973B0;
  v20 = (*(v17 + 8 * ((v16 ^ 0xD3A91028) + 8574)))(&a13);
  return (*(v17 + 8 * (((a13 == -1418238986) * ((v19 - 6021) ^ (v18 + 62))) ^ v18)))(v20);
}

uint64_t sub_100011E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12)
{
  if ((*a12 & 1) == ((v15 - 7219) ^ 0x2912))
  {
    v16 = 1813441105;
  }

  else
  {
    v16 = 1813441106;
  }

  *(v13 + v14) = v16;
  return (*(v12 + 8 * v15))(a1, a2);
}

void sub_100012030(uint64_t a1)
{
  v5 = *(a1 + 16) != 0x374C0BFB7E28CD93 && *(a1 + 24) != 0x67301DA000F3501ALL && *(a1 + 32) != 0 && *a1 != 0x388E91526D1D7DF0;
  v1 = *(a1 + 8) - 693709591 * (a1 ^ 0xA932BA1B);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_100012120()
{
  STACK[0x340] = v0;
  v5 = *(v3 + 40) - v2 - ((2 * (*(v3 + 40) - v2) + 1675739352) & (v1 - 1340333078)) + 167712309;
  v6 = *(v4 + 8 * ((120 * (((2 * v5) & 0x7BFADB7C ^ 0x30184B10) + (v5 ^ 0xE5F35877) + 2012741222 == 905276452)) ^ (v1 - 1672)));
  STACK[0x348] = v4;
  return v6();
}

uint64_t sub_1000122D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  STACK[0x308] = v13;
  STACK[0x310] = v14;
  v17 = v8 - v15 - (a7 + a6 + a8) + ((a7 + a6 + a8) & 0xF);
  v19 = (v17 + v11) > 0xF && (v17 + v10) > 0xF && v8 - v15 + v9 >= (((v12 - 360) | 0x380u) ^ 0x47B8uLL);
  v20 = v17 + a2 + 1;
  v22 = v19 && v20 > 0xF;
  return (*(v16 + 8 * ((15 * v22) ^ v12)))();
}

uint64_t sub_100012358(int a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(v6 + 8 * ((a1 - 9077) ^ ((2 * (a4 > 0xF)) | (4 * (a4 > 0xF)))));
  STACK[0x2F8] = v4;
  STACK[0x2F0] = v5;
  LODWORD(STACK[0x304]) = a4;
  return v7();
}

uint64_t sub_100012394(int a1, __n128 a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x2DC]) = a4 + 13;
  STACK[0x338] = (a4 + 9) & 0xF;
  STACK[0x330] = (a4 + 7) & 0xF;
  STACK[0x328] = (a4 + 6) & 0xF;
  STACK[0x2E8] = (a4 + 5) & 0xF;
  STACK[0x2E0] = (a4 + 4) & 0xF;
  STACK[0x320] = (a4 + 3) & 0xF;
  STACK[0x318] = (a4 + 2) & 0xF;
  v5.n128_u64[0] = STACK[0x338];
  v5.n128_u64[1] = a4 & 0xF ^ 8u;
  v6.n128_u64[0] = STACK[0x330];
  v6.n128_u64[1] = STACK[0x328];
  v7.n128_u64[0] = STACK[0x2E8];
  v7.n128_u64[1] = STACK[0x2E0];
  v10.val[0].i64[0] = STACK[0x320];
  v10.val[0].i64[1] = STACK[0x318];
  v10.val[1].i64[0] = (a4 + 1) & 0xF;
  v10.val[1].i64[1] = a4 & 0xF;
  v10.val[2].i64[0] = (a4 - 1) & 0xF;
  v10.val[2].i64[1] = (a4 + 14) & 0xF;
  v10.val[3].i64[0] = STACK[0x2DC] & 0xF;
  v10.val[3].i64[1] = (a4 + 12) & 0xF;
  v8.n128_u64[0] = 0xA3A3A3A3A3A3A3A3;
  v8.n128_u64[1] = 0xA3A3A3A3A3A3A3A3;
  return (*(STACK[0x348] + 8 * (a1 - 11080)))(v4 - 15, a2, v5, v6, v7, xmmword_1004248A0, vqtbl4q_s8(v10, xmmword_1004248A0), v8);
}

uint64_t sub_1000124D8(uint64_t a1, uint64_t a2, double a3, __n128 a4, __n128 a5, __n128 a6, int8x16_t a7, double a8, int8x16_t a9)
{
  v18 = v14 & 0xF;
  v19 = v13;
  v20.i64[0] = vqtbl4q_s8(*(&a4 - 1), a7).u64[0];
  *&v20.i64[1] = a8;
  v21 = vrev64q_s8(vmulq_s8(v20, a9));
  *(a1 + v14) = veorq_s8(veorq_s8(veorq_s8(*(v10 + v18 - 15), *(v12 + v14)), veorq_s8(*(v9 + v18 - 15), *(v18 + a2 - 14))), vextq_s8(v21, v21, 8uLL));
  return (*(v17 + 8 * (((v15 == 0) * v16) ^ v11)))();
}

uint64_t sub_1000125D4(double a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, int a9)
{
  STACK[0x330] = v9 - 7;
  STACK[0x328] = v11 - 7;
  LODWORD(STACK[0x338]) = v10 - 11646;
  v13 = *(v12 + 8 * (v10 - 11646));
  LODWORD(STACK[0x2E8]) = a6 & 0xFFFFFFF8;
  LODWORD(STACK[0x320]) = -(a6 & 0xFFFFFFF8);
  LODWORD(STACK[0x318]) = a7 + a9 + a8 + 4;
  a2.n128_u16[0] = -23645;
  a2.n128_u8[2] = -93;
  a2.n128_u8[3] = -93;
  a2.n128_u8[4] = -93;
  a2.n128_u8[5] = -93;
  a2.n128_u8[6] = -93;
  a2.n128_u8[7] = -93;
  return v13(xmmword_1004248B0, a2);
}

uint64_t sub_100012650(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8, char a9, int a10)
{
  v16 = (a10 + v12 + 8);
  v21.val[0].i64[0] = (a10 + v12 + 8) & 0xF;
  v21.val[0].i64[1] = (v15 + v12 + 8) & 0xF;
  v17 = STACK[0x348];
  v21.val[1].i64[0] = (v14 + v12 + 8) & 0xF;
  v21.val[1].i64[1] = (a5 + v12 + 8) & 0xF ^ 8;
  v21.val[2].i64[0] = (v13 + v12 + 8) & 0xF;
  v21.val[2].i64[1] = (a9 + v12 + 8) & 0xF;
  v21.val[3].i64[0] = (a8 + v12 + 8) & 0xF;
  v21.val[3].i64[1] = (LODWORD(STACK[0x318]) + v12 + 8) & 0xF;
  v18 = LODWORD(STACK[0x320]) == v12;
  *(STACK[0x328] + v16) = veor_s8(veor_s8(veor_s8(*(v11 + (v16 & 0xF) - 7), *(a7 + v16)), veor_s8(*(v10 + (v16 & 0xF) - 7), *((v16 & 0xF) + a4 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v21, a1), a2)));
  v19 = v18;
  return (*(v17 + 8 * ((24016 * v19) ^ LODWORD(STACK[0x338]))))();
}

uint64_t sub_100012970@<X0>(int a1@<W8>)
{
  *(v1 + 64) = STACK[0x350];
  *(v2 - 191) = STACK[0x351];
  *(v2 - 183) = STACK[0x359];
  *(v2 - 179) = STACK[0x35D];
  *(v2 - 177) = STACK[0x35F];
  return (*(v3 + 8 * a1))();
}

uint64_t sub_100012A20@<X0>(int a1@<W8>)
{
  v4 = v2 - 2 * ((a1 ^ 0x184B) & v2 ^ (v2 + 837869676) & 0x44BFF43D) - 156183384;
  v5 = (v1 + 1787997624) & 0x956D3DFF;
  LODWORD(STACK[0x340]) = v5;
  v7 = v4 != v5 + 1153423166 && (((v1 + 1787997624) ^ 0x6A92DEF1) & v4) == 12;
  return (*(v3 + 8 * ((31 * v7) ^ v1)))();
}

uint64_t sub_100012AC8(unint64_t a1)
{
  STACK[0x310] = v5;
  STACK[0x308] = v4;
  STACK[0x2F0] = v7;
  STACK[0x2F8] = v6;
  v10 = *v1 ^ 0x24;
  v11 = STACK[0x340];
  v12 = *(v8 + 8 * (LODWORD(STACK[0x340]) ^ 0x1D68));
  LODWORD(STACK[0x298]) = v2;
  v13 = v12 - 1931685359;
  LODWORD(v12) = (*(v12 - 1931685359 + v10) >> 1) & 0x45 ^ *(v12 - 1931685359 + v10);
  LODWORD(STACK[0x2AC]) = v12;
  v14 = (v12 ^ 0x59) << 24;
  v15 = *(v8 + 8 * (v11 - 6982)) - 2042470399;
  LODWORD(v10) = *(v15 + (*(v9 - 207) ^ 0x35));
  LODWORD(v10) = (v10 >> 1) & 8 ^ v10;
  LODWORD(STACK[0x304]) = v10;
  v16 = v14 & 0xFF00FFFF | ((v10 ^ 0xF2) << 16);
  v17 = *(v8 + 8 * (v11 - 7405)) - 1990561150;
  LODWORD(v10) = *(v17 + (*(v9 - 206) ^ 0xCFLL));
  v18 = *(v9 - 205);
  v19 = -29 * v10 - 91;
  LODWORD(v10) = ((-116 * v10 - 108) * (-29 * v10 + 37)) ^ v19;
  LODWORD(v10) = v10 - 2 * (v10 & 0x67 ^ v19 & 1) + 102;
  LODWORD(STACK[0x2A8]) = v10;
  v20 = *(v9 - 204);
  STACK[0x328] = a1;
  v21 = *(v8 + 8 * (v11 - 7217)) - 581976162;
  v22 = v20 ^ 0x26;
  LODWORD(v20) = *(v21 + (v18 ^ 0x5F)) + (v18 ^ 0xFFFFFF8D ^ ((v18 ^ 0xFFFFFFBF) - 2 * (((v18 ^ 0xFFFFFFBF) + 116) & 0x4F ^ (v18 ^ 0xFFFFFFBF) & 2) + 65));
  v23 = v16 & 0xFFFF00FF | ((v10 ^ 4) << 8);
  v24 = (*(v13 + v22) >> 1) & 0x45 ^ *(v13 + v22);
  LODWORD(STACK[0x290]) = v24;
  LODWORD(v10) = (v24 ^ 0xA4) << 24;
  v25 = *(v15 + (*(v9 - 203) ^ 0x27));
  v26 = (v25 >> 1) & 8 ^ v25;
  LODWORD(STACK[0x2A4]) = v26;
  v27 = *(v9 - 201);
  LODWORD(v18) = *(v17 + (*(v9 - 202) ^ 0x14));
  v28 = -29 * v18;
  LODWORD(v10) = v10 & 0xFF00FFFF | ((v26 ^ 0x1E) << 16);
  LODWORD(v18) = ((-116 * v18 - 108) * (-29 * v18 + 37)) ^ (-29 * v18 - 91);
  v29 = v18 - 2 * (v18 & 0x47 ^ (v28 - 91) & 1) + 70;
  LODWORD(STACK[0x288]) = v29;
  v30 = *(v13 + (*(v9 - 200) ^ 0xF0));
  v31 = (v30 >> 1) & 0x45 ^ v30;
  LODWORD(STACK[0x264]) = v31;
  v32 = *(v21 + (v27 ^ 0x72)) + (v27 ^ ((v27 ^ 0xFFFFFF92) - ((2 * (v27 ^ 0xFFFFFF92) - 24) & 0xFFFFFFAA) - 55) ^ 0x38) - 93;
  STACK[0x268] = v32;
  LODWORD(v10) = v10 & 0xFFFF0000 | ((v29 ^ 0x8C) << 8) | v32;
  v33 = v10 + 1354816395 + ~(2 * (v10 & 0x50C0DB9E ^ v32 & 0x14));
  LODWORD(v10) = *(v15 + (*(v9 - 199) ^ 0xEFLL));
  v34 = (v10 >> 1) & 8 ^ v10;
  LODWORD(STACK[0x280]) = v34;
  LODWORD(v32) = ((v31 ^ 0xAC) << 24) | ((v34 ^ 0xF0) << 16);
  LODWORD(v10) = *(v17 + (*(v9 - 198) ^ 0xAELL));
  LODWORD(v18) = -29 * v10 - 91;
  LODWORD(v10) = ((-116 * v10 - 108) * (-29 * v10 + 37)) ^ v18;
  LODWORD(v10) = v10 - 2 * (v10 & 0x1F ^ v18 & 2);
  v35 = *(v9 - 197);
  v36 = *(v13 + (*(v9 - 196) ^ 0xDELL));
  v37 = *(v21 + (v35 ^ 0x65)) + (v35 ^ 0x5B ^ ((v35 ^ 0xFFFFFF85) + ~(2 * (((v35 ^ 0xFFFFFF85) + 52) & 0x23 ^ v35 & 2)) - 106));
  LODWORD(v10) = v10 + 29;
  LODWORD(STACK[0x260]) = v10;
  LODWORD(v32) = v32 & 0xFFFF00FF | ((v10 ^ 0x44) << 8);
  v38 = v36 ^ 0xFFFFFFA4 ^ (((v36 >> 1) & 0x45 ^ 0x41) + ((2 * (((v36 >> 1) & 0x45 ^ 0x41 | 0x7C) ^ (v36 >> 1) & 0x45)) ^ 0xFFFFFF85) + 101);
  LOBYTE(v10) = *(v15 + (*(v9 - 195) ^ 0xFELL)) ^ 0x93 ^ (((*(v15 + (*(v9 - 195) ^ 0xFELL)) >> 1) & 8 ^ 0xEE) - 2);
  LOBYTE(v15) = *(v17 + (*(v9 - 194) ^ 0xADLL));
  v39 = (-29 * v15 - 91) ^ ((-116 * v15 - 108) * (-29 * v15 + 37));
  LODWORD(v15) = (*(v9 - 193) ^ ((*(v9 - 193) ^ 0xFFFFFFB1) - ((2 * (*(v9 - 193) ^ 0xFFFFFFB1) - 24) & 0xFFFFFFE4) - 26) ^ 0x3C) + *(v21 + (*(v9 - 193) ^ 0x51));
  v40 = v15 + ((-72 - 2 * v15) | 0x49);
  v41 = *(v8 + 8 * (v11 - 7229)) - 1174488398;
  LODWORD(STACK[0x25C]) = v10;
  STACK[0x240] = v38;
  LODWORD(v17) = (v10 << 16) | (v38 << 24) | ((v39 ^ 3) << 8);
  LODWORD(STACK[0x248]) = v39 ^ 3;
  LODWORD(v35) = (v39 ^ 0xBE832FDF) + (v39 ^ 0x65);
  STACK[0x2B0] = (v20 - 93);
  LODWORD(v10) = *(v41 + 4 * (v10 ^ 0x92u));
  v42 = v41;
  v43 = (v23 & 0xFFFFFF00 | (v20 - 93)) ^ (v10 >> 3) & 0xA8C000C ^ 0x8040004;
  v44 = *(v8 + 8 * (v11 ^ 0x1DD1)) - 396007470;
  v45 = *(v8 + 8 * (v11 - 7056)) - 1043414615;
  v46 = (v40 + 127);
  STACK[0x250] = v46;
  LOBYTE(v40) = (v40 + 127) ^ 0xDB;
  LODWORD(v17) = v17 & 0xFFFFFF00 | v40;
  v47 = *(v8 + 8 * (v11 & 0xBA3782E2)) - 81950659;
  LODWORD(v10) = v10 ^ *(v44 + 4 * (v39 ^ 0x3Fu)) ^ (v35 - ((2 * v35) & 0x29042AE8) - 707390092) ^ (*(v45 + 4 * (v46 ^ 0x9Cu)) + (v40 ^ 0x8602D229) - 1807310807) ^ 0x54A89E92 ^ (v43 - 2 * (v43 & 0x1E052CB9 ^ (v20 - 93) & 0x11) - 1643828056);
  v48 = ((*(v47 + (v38 ^ 0x81)) + 101) ^ 0xFF9FD2F1) + 2 * (((*(v47 + (v38 ^ 0x81)) + 101) ^ 0xCE) & 0x3F) + 6303169;
  STACK[0x238] = (v37 - 93);
  v49 = v10 + v48 - 2 * (v10 & v48) - ((2 * (v10 + v48 - 2 * (v10 & v48))) & 0xA9A2288C) - 724495290;
  LODWORD(STACK[0x210]) = v49;
  LODWORD(STACK[0x21C]) = v49 ^ v33;
  v50 = v49 ^ v33 ^ (v32 & 0xFFFFFF00 | (v37 - 93));
  LODWORD(STACK[0x270]) = v50;
  v51 = v50 ^ 0xD9B98D65;
  LODWORD(STACK[0x330]) = v50 ^ 0xD9B98D65;
  LODWORD(v46) = ((v50 ^ 0x8D65 ^ v17) >> 8);
  LODWORD(STACK[0x220]) = v46;
  LODWORD(STACK[0x228]) = (v49 ^ v33 ^ (v37 - 93)) ^ 0x65 ^ v17;
  LODWORD(v35) = *(v45 + 4 * ((v51 ^ v17) ^ 0x83u)) + ((v51 ^ v17) ^ 0x8602D2ED) - 1807310807;
  LODWORD(STACK[0x224]) = ((v50 ^ 0xD9B98D65 ^ v17) >> 16);
  v52 = v41;
  LODWORD(v32) = *(v41 + 4 * (((v50 ^ 0xD9B98D65 ^ v17) >> 16) ^ 0xE6u));
  LODWORD(v35) = v32 ^ *(v44 + 4 * (v46 ^ 0x43)) ^ (v32 >> 3) & 0xA8C000C ^ v35;
  v53 = (v50 ^ 0xD9B98D65 ^ v17) >> 24;
  STACK[0x230] = v53;
  v54 = v35 ^ (*(v47 + (v53 ^ 0xB8)) + 101) ^ ((v46 ^ 0xBE832FA3) + (v46 ^ 0x19) - ((2 * ((v46 ^ 0xBE832FA3) + (v46 ^ 0x19))) & 0x29042AE8) - 707390092) ^ 0xC9E3147;
  v55 = v54 ^ v33;
  LODWORD(STACK[0x27C]) = v55;
  LODWORD(v13) = v55 ^ 0xEFB68D38;
  LODWORD(v10) = v55 ^ 0xEFB68D38 ^ v17;
  LODWORD(STACK[0x2E8]) = v55 ^ 0xEFB68D38;
  LODWORD(STACK[0x20C]) = BYTE1(v10);
  v56 = (BYTE1(v10) ^ 0x75) + (BYTE1(v10) ^ 0xBE832FCF);
  LODWORD(STACK[0x2B8]) = BYTE2(v10);
  LODWORD(v35) = *(v41 + 4 * (BYTE2(v10) ^ 0x25u));
  LODWORD(STACK[0x2BC]) = v10;
  v57 = *(v44 + 4 * (BYTE1(v10) ^ 0x2Fu)) ^ (v35 >> 3) & 0xA8C000C ^ (*(v45 + 4 * (v10 ^ 0x81u)) + (v10 ^ 0x8602D2EF) - 1807310807) ^ (v56 - ((2 * v56) & 0x29042AE8) - 707390092);
  v58 = BYTE3(v10);
  STACK[0x200] = v58;
  v59 = v57 ^ (*(v47 + (v58 ^ 0xBD)) + 101) ^ 0xCE ^ 0x8040004;
  LODWORD(STACK[0x2C0]) = v54 ^ v49;
  LODWORD(v41) = v54 ^ v49 ^ v35 ^ (v59 - ((2 * v59) & 0xA04FFAA) - 2063433771);
  LODWORD(STACK[0x2CC]) = v41;
  LODWORD(v35) = v41 ^ 0xEB97A99B ^ v51 ^ v10;
  LODWORD(v10) = v35 ^ 0xE7135B;
  LODWORD(STACK[0x2C4]) = ((v35 ^ 0xE7135B) >> 16);
  v60 = *(v52 + 4 * (((v35 ^ 0xE7135B) >> 16) ^ 0x44u));
  v61 = (((v60 >> 3) & 0xA8C000C ^ 0x8040004) - ((2 * ((v60 >> 3) & 0xA8C000C ^ 0x8040004)) & 0x3FFFFF0) + 565108282) ^ v60;
  v161 = BYTE1(v10);
  v62 = (BYTE1(v10) ^ 0xC8) + (BYTE1(v10) ^ 0xBE832F72);
  v163 = v35 ^ 0x5B;
  v158 = ((v61 ^ 0xEB036C00) - 2 * ((v61 ^ 0xEB036C00) & 0x3EDEF3A2 ^ v61 & 2) - 1092684896) ^ *(v44 + 4 * (((v35 ^ 0x135B) >> 8) ^ 0x92u)) ^ v41 ^ 0xEB97A99B ^ (*(v45 + 4 * (v35 ^ 0x14u)) + (v35 ^ 0x8602D27A) - 1807310807) ^ (v62 - ((2 * v62) & 0x29042AE8) - 707390092);
  LODWORD(v58) = v41 ^ 0xEB97A99B ^ v13;
  LODWORD(STACK[0x2C8]) = v58;
  v162 = BYTE3(v35);
  v157 = v158 ^ (*(v47 + (v162 ^ 0x4A)) + 101);
  LODWORD(STACK[0x2D0]) = v157 ^ v58;
  LODWORD(v35) = v157 ^ v58 ^ 0x40EB20AC;
  v159 = v35 ^ v41 ^ 0xEB97A99B ^ v51;
  v63 = v159 ^ 0x62BBB11D ^ v10;
  v160 = ((v159 ^ 0xB11D ^ v10) >> 8);
  v64 = *(v52 + 4 * (BYTE2(v63) ^ 0x3Au));
  LODWORD(v10) = (v64 >> 3) & 0xA8C000C ^ *(v44 + 4 * (v160 ^ 0xCu)) ^ (*(v45 + 4 * (v159 ^ 0x1D ^ v10 ^ 0x74u)) + (v159 ^ 0x1D ^ v10 ^ 0x8602D21A) - 1807310807) ^ (*(v47 + (HIBYTE(v63) ^ 0x41)) + 101) ^ ((v160 ^ 0x56) + (v160 ^ 0xBE832FEC) - ((2 * ((v160 ^ 0x56) + (v160 ^ 0xBE832FEC))) & 0x29042AE8) - 707390092);
  LODWORD(v13) = v157 ^ v64 ^ ((v10 ^ 0x8040004) - 2 * ((v10 ^ 0x8040004) & 0x6B982DF ^ v10 & 0x10) - 2034662705);
  LODWORD(STACK[0x2D8]) = v13;
  v149 = v13 ^ 0x3D38EC4D ^ v35;
  v155 = v149 ^ v159 ^ 0x62BBB11D;
  LODWORD(v35) = (v155 ^ 0xDF9C21A ^ v63 ^ 0xC132D03A) >> (HIBYTE(v63) & 8 ^ 8) >> (HIBYTE(v63) & 8);
  LODWORD(v41) = ((v155 ^ 0xDF9C21A ^ v63) >> 16);
  LODWORD(STACK[0x2D4]) = v41;
  LODWORD(v58) = *(v52 + 4 * (v41 ^ 0xFE));
  LODWORD(v58) = v58 ^ 0xB67C5084 ^ (((v58 >> 3) & 0xA8C000C ^ 0x8040004) - ((2 * ((v58 >> 3) & 0xA8C000C ^ 0x8040004)) & 0x11000018) + 2094129854);
  LODWORD(v35) = (v35 - ((2 * v35) & 0x9A) - 51);
  v151 = v155 ^ 0xC21A ^ v63;
  v153 = v155 ^ 0x1A ^ v63;
  v143 = (v58 - ((2 * v58) & 0xD9F24D60) + 1828267696) ^ *(v44 + 4 * (v35 ^ 0x32)) ^ v13 ^ 0x3D38EC4D ^ (*(v45 + 4 * (v153 ^ 0xAFu)) + (v153 ^ 0x8602D2C1) - 1807310807) ^ ((v35 ^ 0x68) + (v35 ^ 0xBE832FD2) - ((2 * ((v35 ^ 0x68) + (v35 ^ 0xBE832FD2))) & 0x29042AE8) - 707390092);
  v152 = (v155 ^ 0xDF9C21A ^ v63) >> 24;
  LODWORD(v35) = v143 ^ (*(v47 + (v152 ^ 0x28)) + 101) ^ 0xCE;
  LODWORD(STACK[0x2DC]) = v35;
  v141 = v35 ^ 0xED76EFA4 ^ v149 ^ 0xEC4CCD29;
  v145 = ((v141 ^ v63) >> 8);
  v146 = (v141 ^ v63);
  v147 = ((v141 ^ v63) >> 16);
  v65 = *(v52 + 4 * (v147 ^ 0x7Bu));
  v144 = (v141 ^ v63) >> 24;
  v66 = v65 ^ *(v44 + 4 * (v145 ^ 0xC8u)) ^ (v65 >> 3) & 0xA8C000C ^ (*(v45 + 4 * (v146 ^ 0x4Du)) + (v146 ^ 0x8602D223) - 1807310807) ^ (*(v47 + (v144 ^ 0x8F)) + 101) ^ ((v145 ^ 0x92) + (v145 ^ 0xBE832F28) - 707390091 + ((2 * ((v145 ^ 0x92) + (v145 ^ 0xBE832F28))) & 0x2AE8 ^ 0xD6FBFFFF)) ^ 0x264FE5C8;
  LODWORD(v46) = v66 ^ v35 ^ 0xED76EFA4;
  LODWORD(STACK[0x2E0]) = v46;
  v67 = v66 ^ v149 ^ 0xEC4CCD29;
  v142 = v141 ^ v155 ^ 0xDF9C21A;
  LODWORD(v20) = v67 ^ v142;
  LODWORD(v17) = v67;
  LODWORD(STACK[0x320]) = v67;
  LODWORD(STACK[0x318]) = v67 ^ v142;
  v68 = v67 ^ v142 ^ 0xA32BF97A ^ v141 ^ v63;
  LODWORD(v13) = (BYTE1(v68) ^ 0x28) + (BYTE1(v68) ^ 0xBE832F92);
  v140 = v20 ^ 0x7A ^ (v141 ^ v63);
  v69 = *(v52 + 4 * (BYTE2(v68) ^ 0xFDu));
  LODWORD(v13) = (v69 >> 3) & 0xA8C000C ^ *(v44 + 4 * (BYTE1(v68) ^ 0x72u)) ^ (*(v45 + 4 * (v140 ^ 0x89u)) + (v140 ^ 0x8602D2E7) - 1807310807) ^ (v13 - 707390091 + ((2 * v13) & 0x2AE8 ^ 0xD6FBFFFF));
  LODWORD(v13) = v69 ^ 0xDF6ACFCE ^ ((v13 ^ 0x8040004) - 2 * ((v13 ^ 0x8040004) & 0x15C77DF7 ^ v13 & 3) + 365395444);
  LODWORD(v13) = (v13 - ((2 * v13) & 0x1AA3F3CA) + 223476197) ^ v46;
  HIDWORD(v70) = v13 ^ 0xF9D837;
  LODWORD(v70) = v13 ^ 0xA4000000;
  LODWORD(v13) = v70 >> 25;
  v71 = v68 ^ 0x6E11B65B;
  HIDWORD(v70) = v13 ^ 0x2F;
  LODWORD(v70) = v13 ^ (((*(v47 + (HIBYTE(v68) ^ 0x58)) + 101) ^ 0xCE) << 7) ^ 0x8CF97A00;
  LODWORD(v13) = (v70 >> 7) - ((2 * (v70 >> 7)) & 0x51490196) + 681869515;
  LODWORD(v52) = v13 ^ v17 ^ 0xEB81DE89;
  v139 = v52 ^ v20 ^ 0xA32BF97A ^ 0x9DFAEBFB;
  LODWORD(v10) = v139 ^ v68 ^ 0x6E11B65B;
  v72 = (BYTE1(v10) ^ 0xBE832F7D) + (BYTE1(v10) ^ 0xC7);
  v73 = *(v42 + 4 * (BYTE2(v10) ^ 0x84u));
  LODWORD(v10) = (v73 >> 3) & 0xA8C000C ^ *(v44 + 4 * (BYTE1(v10) ^ 0x9Du)) ^ (*(v45 + 4 * (v10 ^ 7u)) + (v10 ^ 0x8602D269) - 1807310807) ^ (*(v47 + (BYTE3(v10) ^ 0xDFLL)) + 101) ^ (v72 - ((2 * v72) & 0x29042AE8) - 707390092);
  v74 = v13 ^ v73 ^ ((v10 ^ 0x8040004) - ((2 * v10) & 0x6A525CC0) + 891891296);
  v75 = STACK[0x340];
  v76 = *(v8 + 8 * (LODWORD(STACK[0x340]) ^ 0x1C83)) - 952918322;
  v77 = LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x330]);
  LODWORD(v58) = v74 ^ 0x98FAAAC6 ^ v52;
  v78 = v58 ^ v71;
  v79 = BYTE2(v78);
  LODWORD(v41) = *(v42 + 4 * (BYTE2(v78) ^ 0xFAu));
  LODWORD(v17) = BYTE1(v78);
  v80 = v78;
  v138 = v78;
  LODWORD(v21) = *(v44 + 4 * (BYTE1(v78) ^ 0xC9u));
  v81 = (BYTE1(v78) ^ 0xBE832F29) + (BYTE1(v78) ^ 0x93);
  STACK[0x338] = v3;
  v82 = HIBYTE(v80);
  LODWORD(v41) = v41 ^ v21 ^ (v41 >> 3) & 0xA8C000C ^ (*(v45 + 4 * (v80 ^ 0xE2u)) + (v80 ^ 0x8602D28C) - 1807310807) ^ (*(v47 + (v82 ^ 0x97)) + 101) ^ (v81 - ((2 * v81) & 0x29042AE8) - 707390092) ^ 0x697796D4;
  v134 = v41 ^ v74 ^ 0x98FAAAC6;
  v136 = v41 ^ v52;
  v83 = *(v8 + 8 * (v75 ^ 0x1C8E)) - 342107783;
  v84 = *(v8 + 8 * (v75 - 7140)) - 896032971;
  v85 = *(v8 + 8 * (v75 ^ 0x1CCC)) - 898023411;
  LODWORD(v10) = *(v76 + 4 * (BYTE1(v58) ^ 0xBAu));
  LODWORD(v35) = (4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) - ((8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v58 ^ 0x6Au));
  LODWORD(v35) = (v35 - ((2 * v35) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v58) ^ 0x21u));
  LODWORD(v35) = (v35 - ((2 * v35) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (BYTE3(v58) ^ 0x32));
  LODWORD(STACK[0x2E8]) = (v35 - ((2 * v35) & 0x374A3EF6) - 1683677317) ^ v10;
  v131 = v58 ^ v139;
  v127 = *(v76 + 4 * (v17 ^ 0x22));
  LODWORD(v10) = (4 * (v127 ^ 0x3D139D40) * (v127 ^ 0x3D139D40) - ((8 * (v127 ^ 0x3D139D40) * (v127 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v80 ^ 0xBDu));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (v79 ^ 0x81u));
  v130 = v82 ^ 0xAB;
  v132 = v10 - ((2 * v10) & 0x80EB4788);
  LODWORD(v10) = *(v76 + 4 * (BYTE1(v13) ^ 0x8Cu));
  LODWORD(v82) = (4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) - ((8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (((v70 >> 7) - ((2 * (v70 >> 7)) & 0x96) - 53) ^ 1u));
  v86 = (v82 - ((2 * v82) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v13) ^ 0xA0u));
  v87 = (v86 - ((2 * v86) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (BYTE3(v13) ^ 0x7A));
  LODWORD(STACK[0x330]) = (v87 - ((2 * v87) & 0xF3FDBF1A) - 100737139) ^ v10;
  LODWORD(v10) = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x2E0])) ^ 0x64u));
  LODWORD(v13) = (4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) - ((8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x2E0]) ^ 0x3Du));
  LODWORD(v13) = (v13 - ((2 * v13) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x2E0])) ^ 0xF2u));
  LODWORD(v13) = (v13 - ((2 * v13) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x2E0])) ^ 0x69u));
  LODWORD(STACK[0x2E0]) = (v13 - ((2 * v13) & 0x8D69E18E) + 1186263239) ^ v10;
  LODWORD(v10) = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x320])) ^ 0x1Bu));
  LODWORD(v13) = ((~(8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) | 0x63EEA8EF) + 4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) + 1309191051) ^ *(v83 + 4 * (LODWORD(STACK[0x320]) ^ 0x55u));
  LODWORD(v13) = (v13 - ((2 * v13) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x320])) ^ 0xCDu));
  LODWORD(v13) = (v13 - ((2 * v13) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x320])) ^ 0x7Fu));
  LODWORD(STACK[0x320]) = (v13 - ((2 * v13) & 0x8FF3BFDA) - 939925523) ^ v10;
  LODWORD(v13) = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x318])) ^ 0xE3u));
  LODWORD(v10) = (4 * (v13 ^ 0x3D139D40) * (v13 ^ 0x3D139D40) - ((8 * (v13 ^ 0x3D139D40) * (v13 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x318]) ^ 0xA1u));
  LODWORD(v58) = *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x318])) ^ 0x20u));
  LODWORD(v10) = ((v58 ^ 0x4075A3C4) + 1479235370 + ((2 * v58) & 0xB056AE52 ^ 0x7FBDF9FF)) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x318])) ^ 0xDCu)) ^ (v10 - ((2 * v10) & 0x4BD57218) + 636139788);
  LODWORD(STACK[0x318]) = (v10 - ((2 * v10) & 0x8497F50) + 69517224) ^ v13;
  LODWORD(v35) = *(v76 + 4 * (BYTE1(v143) ^ 0x25u));
  LODWORD(v10) = (4 * (v35 ^ 0x3D139D40) * (v35 ^ 0x3D139D40) - ((8 * (v35 ^ 0x3D139D40) * (v35 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x2DC]) ^ 0x65u));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v143) ^ 0x50u));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(v143) ^ 0x2E));
  LODWORD(STACK[0x2DC]) = (v10 - ((2 * v10) & 0x54F30E92) - 1434876087) ^ v35;
  LODWORD(v35) = *(v76 + 4 * (v145 ^ 0xBEu));
  LODWORD(v10) = (4 * (v35 ^ 0x3D139D40) * (v35 ^ 0x3D139D40) - ((8 * (v35 ^ 0x3D139D40) * (v35 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v146 ^ 0x95u));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (v147 ^ 0xC9u));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (v144 ^ 0x68));
  v148 = v35 ^ 0x4131B7EC ^ (v10 - ((2 * v10) & 0x78445558) + 1008872108);
  LODWORD(v10) = *(v76 + 4 * (BYTE1(v149) ^ 0x54u));
  LODWORD(v82) = (4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) - ((8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v149 ^ 0x14u));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v149) ^ 0xF6u));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(v149) ^ 0x2D));
  LODWORD(STACK[0x2D8]) = (v82 - ((2 * v82) & 0xCCF4D4B0) - 428185000) ^ v10;
  v126 = *(v76 + 4 * (BYTE1(v155) ^ 0xB7u));
  LODWORD(v10) = (4 * (v126 ^ 0x3D139D40) * (v126 ^ 0x3D139D40) - ((8 * (v126 ^ 0x3D139D40) * (v126 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * ((v149 ^ v159 ^ 0x1D) ^ 0x6Au));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v155) ^ 0xEDu));
  v150 = v10 - ((2 * v10) & 0x80EB4788);
  LODWORD(v10) = *(v76 + 4 * (HIBYTE(v151) ^ 0x77u));
  LODWORD(v20) = (4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) - ((8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v153 ^ 0x96u));
  LODWORD(v20) = (v20 - ((2 * v20) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (LODWORD(STACK[0x2D4]) ^ 0xF0u));
  LODWORD(STACK[0x2D4]) = *(v85 + 4 * (v152 ^ 0xE8)) ^ v10 ^ (v20 - ((2 * v20) & 0x80EB4788) + 1081451460);
  LODWORD(v10) = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x2D0])) ^ 0x65u));
  LODWORD(v82) = (4 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40) - ((8 * (v10 ^ 0x3D139D40) * (v10 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x2D0]) ^ 0xEDu));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x2D0])) ^ 0x33u));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x2D0])) ^ 0x93u));
  LODWORD(STACK[0x2D0]) = (v82 - ((2 * v82) & 0x291F65D8) + 344961772) ^ v10;
  LODWORD(v13) = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x2CC])) ^ 0x63u));
  LODWORD(v10) = (4 * (v13 ^ 0x3D139D40) * (v13 ^ 0x3D139D40) - ((8 * (v13 ^ 0x3D139D40) * (v13 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x2CC]) ^ 0x9Cu));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x2CC])) ^ 0x5Du));
  LODWORD(v20) = STACK[0x2C8];
  v88 = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x2C8])) ^ 0xEDu));
  LODWORD(STACK[0x2CC]) = *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x2CC])) ^ 0x9Bu)) ^ v13 ^ (v10 - ((2 * v10) & 0x80EB4788) + 1081451460);
  LODWORD(v13) = (4 * (v88 ^ 0x3D139D40) * (v88 ^ 0x3D139D40) - ((8 * (v88 ^ 0x3D139D40) * (v88 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v20 ^ 0xEBu));
  LODWORD(v13) = (v13 - ((2 * v13) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v20) ^ 6u));
  LODWORD(v13) = (v13 - ((2 * v13) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (BYTE3(v20) ^ 0xD8));
  LODWORD(STACK[0x2C8]) = (v13 - ((2 * v13) & 0xAC5A547A) - 701683139) ^ v88;
  v89 = *(v76 + 4 * (v161 ^ 0x9Fu));
  LODWORD(v82) = (4 * (v89 ^ 0x3D139D40) * (v89 ^ 0x3D139D40) - ((8 * (v89 ^ 0x3D139D40) * (v89 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v163 ^ 0x3Du));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (LODWORD(STACK[0x2C4]) ^ 0x12u));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (v162 ^ 0x65));
  LODWORD(STACK[0x2C4]) = (v82 - ((2 * v82) & 0x23EA1F50) + 301273000) ^ v89;
  v90 = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x2C0])) ^ 0x37u));
  LODWORD(v82) = (4 * (v90 ^ 0x3D139D40) * (v90 ^ 0x3D139D40) - ((8 * (v90 ^ 0x3D139D40) * (v90 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x2C0]) ^ 0x49u));
  LODWORD(v82) = (v82 - ((2 * v82) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x2C0])) ^ 0x21u));
  LODWORD(v10) = (v82 - ((2 * v82) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x2C0])) ^ 0xEBu));
  LODWORD(STACK[0x2C0]) = (v10 - ((2 * v10) & 0x16A6C8C8) + 190014564) ^ v90;
  v91 = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x27C])) ^ 0x3Fu));
  LODWORD(v10) = (4 * (v91 ^ 0x3D139D40) * (v91 ^ 0x3D139D40) - ((8 * (v91 ^ 0x3D139D40) * (v91 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * ((LODWORD(STACK[0x27C]) ^ 0xA9) + ((2 * LODWORD(STACK[0x27C])) & 0xF8 ^ 0xFFFFFFAF) + 125));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x27C])) ^ 0x5Eu));
  LODWORD(v10) = (v10 - ((2 * v10) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x27C])) ^ 0xD9u));
  LODWORD(STACK[0x27C]) = (v10 - ((2 * v10) & 0xD54F03CE) + 1789362663) ^ v91;
  v92 = *(v76 + 4 * (BYTE1(v77) ^ 0xA7u));
  v93 = (4 * (v92 ^ 0x3D139D40) * (v92 ^ 0x3D139D40) - ((8 * (v92 ^ 0x3D139D40) * (v92 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (v77 ^ 0xFEu));
  LODWORD(v35) = (v93 - ((2 * v93) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(v77) ^ 0x6Bu));
  v94 = LODWORD(STACK[0x2BC]) ^ 0xC6;
  v95 = (v35 - ((2 * v35) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(v77) ^ 0xF2));
  LODWORD(STACK[0x2BC]) = (v95 - ((2 * v95) & 0x4EEF555C) + 662153902) ^ v92;
  v96 = *(v76 + 4 * (LODWORD(STACK[0x20C]) ^ 0xC4u));
  v97 = (4 * (v96 ^ 0x3D139D40) * (v96 ^ 0x3D139D40) - ((8 * (v96 ^ 0x3D139D40) * (v96 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * v94);
  v98 = (v97 - ((2 * v97) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (LODWORD(STACK[0x2B8]) ^ 0x36u));
  v99 = (v98 - ((2 * v98) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (STACK[0x200] ^ 0xCC));
  LODWORD(STACK[0x2B8]) = (v99 - ((2 * v99) & 0xC9DE3FA8) + 1693392852) ^ v96;
  v125 = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x210])) ^ 0x65u));
  v100 = (4 * (v125 ^ 0x3D139D40) * (v125 ^ 0x3D139D40) - ((8 * (v125 ^ 0x3D139D40) * (v125 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x210]) ^ 0xA8u));
  v101 = (v100 - ((2 * v100) & 0x4BD57218) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x210])) ^ 0xE3u));
  LODWORD(v10) = HIBYTE(LODWORD(STACK[0x210])) ^ 0xA7;
  LODWORD(v35) = *(v76 + 4 * (BYTE1(LODWORD(STACK[0x270])) ^ 0x7Au));
  v102 = (4 * (v35 ^ 0x3D139D40) * (v35 ^ 0x3D139D40) - ((8 * (v35 ^ 0x3D139D40) * (v35 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ *(v83 + 4 * (LODWORD(STACK[0x270]) ^ 0xB2u));
  v103 = (v102 - 2 * (v102 & 0x25EAB90D ^ *(v83 + 4 * (LODWORD(STACK[0x270]) ^ 0xB2u)) & 1) + 636139788) ^ *(v84 + 4 * (BYTE2(LODWORD(STACK[0x270])) ^ 0x80u));
  v104 = (v103 - ((2 * v103) & 0x80EB4788) + 1081451460) ^ *(v85 + 4 * (HIBYTE(LODWORD(STACK[0x270])) ^ 0xE4u));
  LODWORD(STACK[0x270]) = (v104 - ((2 * v104) & 0x8450EC04) + 1109947906) ^ v35;
  LODWORD(v35) = *(v83 + 4 * (LODWORD(STACK[0x228]) ^ 0x47u));
  v105 = *(v76 + 4 * (LODWORD(STACK[0x220]) ^ 0xD5u));
  LODWORD(v84) = *(v84 + 4 * (LODWORD(STACK[0x224]) ^ 0x10u));
  LODWORD(STACK[0x20C]) = *(v85 + 4 * (HIBYTE(v131) ^ 0x81));
  LODWORD(STACK[0x228]) = *(v85 + 4 * v130);
  LODWORD(STACK[0x200]) = *(v85 + 4 * (HIBYTE(v142) ^ 0x71));
  LODWORD(STACK[0x224]) = *(v85 + 4 * (HIBYTE(v155) ^ 0x5B));
  LODWORD(STACK[0x220]) = *(v85 + 4 * v10);
  LODWORD(v10) = *(v85 + 4 * (STACK[0x230] ^ 0x76));
  LODWORD(v58) = (4 * (v105 ^ 0x3D139D40) * (v105 ^ 0x3D139D40) - ((8 * (v105 ^ 0x3D139D40) * (v105 ^ 0x3D139D40)) & 0x9C115710) + 1309191050) ^ v35;
  LODWORD(v20) = (v58 - 2 * (v58 & 0x25EAB90D ^ v35 & 1) + 636139788) ^ v84;
  LODWORD(v58) = STACK[0x340];
  v106 = *(v8 + 8 * (STACK[0x340] & 0x887B6149)) - 1601320687;
  LODWORD(STACK[0x230]) = v132 + 1081451460;
  LODWORD(STACK[0x21C]) = v150 + 1081451460;
  LODWORD(STACK[0x210]) = v101 - ((2 * v101) & 0x80EB4788) + 1081451460;
  LODWORD(v10) = (v20 - ((2 * v20) & 0x80EB4788) + 1081451460) ^ v10;
  LODWORD(v44) = (v10 - ((2 * v10) & 0xF0307F3A) - 132628579) ^ v105;
  LODWORD(v20) = LODWORD(STACK[0x304]) ^ 0xD9;
  LODWORD(v45) = v58;
  v107 = *(v8 + 8 * (v58 ^ 0x1C93)) - 1027106754;
  v108 = *(v8 + 8 * (v58 - 7304)) - 1119593487;
  v109 = *(v8 + 8 * (v58 ^ 0x1D60)) - 820849319;
  v123 = *(v106 + 4 * (LODWORD(STACK[0x290]) ^ 0x19u));
  v124 = *(v107 + 4 * (LODWORD(STACK[0x2A4]) ^ 0x93u));
  LODWORD(STACK[0x238]) = *(v109 + (STACK[0x268] ^ 0x4FLL)) ^ (2 * v124) ^ (8 * v124) ^ (((4 * v123) ^ 0xFE19281C) * (v123 ^ 0x3F864A07));
  LODWORD(v10) = *(v106 + 4 * (HIBYTE(v134) ^ 0xFA));
  v110 = *(v107 + 4 * (BYTE2(v134) ^ 0x2Au));
  v111 = (8 * v110) ^ (2 * v110);
  HIDWORD(v70) = v111 ^ 0x246490E;
  LODWORD(v70) = v111 ^ 0x10000000;
  v112 = v70 >> 27;
  LODWORD(v17) = *(v108 + 4 * (BYTE1(v134) ^ 0x1Bu));
  HIDWORD(v70) = v17 ^ 0x84AB42;
  LODWORD(v70) = v17 ^ 0x58000000;
  LODWORD(v17) = (v70 >> 24) - ((2 * (v70 >> 24)) & 0x16C6D8EC);
  HIDWORD(v70) = v112 ^ 0xFFFFFFFD;
  LODWORD(v70) = v112 ^ 0xDA56C6C0;
  LODWORD(v85) = *(v109 + (v134 ^ 0x10));
  v113 = ((2 * (v85 ^ 0xB5)) & 0x1BC) + (v85 ^ 0xFF6E9E6B);
  v114 = (((4 * v10) ^ 0xFE19281C) * (v10 ^ 0x3F864A07)) ^ (v70 >> 5) ^ ((v17 - 1956418442) >> 2) & 0x6EF33A ^ (((-9527586 - v113) ^ (7 - (v85 ^ 0xB2)) ^ (v113 + 9527586)) + 7) ^ 0x48D318;
  v115 = v110 ^ 0xAB8F47DD ^ (v114 - ((2 * v114) & 0x64CFE9E2) + 845673713);
  LODWORD(v10) = v10 ^ 0xC0F53EC8 ^ (v115 - ((2 * v115) & 0xFEE6E99E) - 9210673);
  v116 = (v10 - ((2 * v10) & 0x16C6D8EC) - 1956418442) ^ (v17 - 1956418442);
  v117 = *(v106 + 4 * (HIBYTE(v136) ^ 0x5B));
  LODWORD(v10) = *(v108 + 4 * (BYTE1(v136) ^ 0x40u));
  HIDWORD(v70) = v10 ^ 0x84AB42;
  LODWORD(v70) = v10 ^ 0x58000000;
  LODWORD(v58) = (v70 >> 24) - ((2 * (v70 >> 24)) & 0x66C976FA) - 1285244035;
  v118 = *(v107 + 4 * (BYTE2(v136) ^ 0x64u));
  v119 = (8 * v118) ^ (2 * v118) ^ *(v109 + (v136 ^ 0x7ALL)) ^ (((4 * v117) ^ 0xFE19281C) * (v117 ^ 0x3F864A07)) ^ v58 ^ 0xFC94FF38 ^ (((v58 >> 2) & 0x6EF33A ^ 0x48221A) - ((2 * ((v58 >> 2) & 0x6EF33A ^ 0x48221A)) & 0xC96670) - 1285244035) ^ 0x60;
  LODWORD(v21) = *(v106 + 4 * (((v136 ^ v131 ^ v138) >> 24) ^ 0xEA));
  LODWORD(STACK[0x288]) = v21;
  LODWORD(STACK[0x280]) = 4 * (v21 ^ 0x3F864A07) * (v21 ^ 0x3F864A07) - ((8 * (v21 ^ 0x3F864A07) * (v21 ^ 0x3F864A07)) & 0x87495580) + 1134865089;
  LODWORD(STACK[0x304]) = *(v107 + 4 * v20);
  LODWORD(STACK[0x268]) = *(v107 + 4 * (((v136 ^ v131 ^ v138) >> 16) ^ 0xC0u));
  LODWORD(v106) = *(v108 + 4 * (((v136 ^ v131 ^ v138) >> 8) ^ 0x19u));
  HIDWORD(v70) = v106 ^ 0x84AB42;
  LODWORD(v70) = v106 ^ 0x58000000;
  LODWORD(v106) = (v70 >> 24) - ((2 * (v70 >> 24)) & 0x6ADBD8B0) + 896396376;
  LODWORD(STACK[0x264]) = v106;
  LODWORD(v106) = (v106 >> 2) & 0x6EF33A ^ 0x4A7312;
  LODWORD(STACK[0x250]) = (2 * v106) & 0xD9C030;
  LODWORD(STACK[0x248]) = v106 + 896396376;
  LODWORD(v152) = *(v109 + ((v136 ^ v131 ^ v138) ^ 0xB1));
  LODWORD(v106) = (LODWORD(STACK[0x2E8]) ^ 0xD83FE286) + (LODWORD(STACK[0x2D8]) ^ 0x8EF50631) + (LODWORD(STACK[0x2D0]) ^ 0xA5F23EAA) + (LODWORD(STACK[0x2C4]) ^ 0xF7B73EA7) + (LODWORD(STACK[0x2B8]) ^ 0x1435A567) - 1397674596;
  LODWORD(v13) = ((2 * v106) & 0xB7FEE3C8) + (v106 ^ 0x5BFF71E4) - ((2 * (((2 * v106) & 0xB7FEE3C8) + (v106 ^ 0x5BFF71E4)) - 2100381140) & 0xDB2858A0) - 1359247002;
  LODWORD(STACK[0x2B0]) = v13;
  LODWORD(STACK[0x290]) = v116;
  v121 = ((2 * ((v116 ^ 0x9DC0AECA) + (v13 ^ 0x6D942C50))) & 0xBEFA5BFE) + (((v116 ^ 0x9DC0AECA) + (v13 ^ 0x6D942C50)) ^ 0x5F7D2DFF);
  LODWORD(STACK[0x260]) = (2 * v148) & 0x4C91066;
  LODWORD(STACK[0x25C]) = v148 - 2107340749;
  v120 = (v119 - ((2 * v119) & 0x52C3236E) + 694260151) ^ v117;
  LODWORD(v85) = ((v120 ^ 0x16E7DBB0) - 2 * ((v120 ^ 0x16E7DBB0) & 0x179DAA3B ^ v120 & 2) + 396208697) ^ v118;
  v137 = (LODWORD(STACK[0x2D4]) ^ 0x68DC5664) + (v85 ^ 0xB9B4F2EF) - 1198963923 + v121 - ((2 * ((LODWORD(STACK[0x2D4]) ^ 0x68DC5664) + (v85 ^ 0xB9B4F2EF) - 1198963923 + v121)) & 0x4CDEE140) + 644837536;
  v135 = (LODWORD(STACK[0x27C]) ^ 0xF6BFA5D6) + 1510253357 + (v137 ^ 0x266F70A0) - ((2 * ((LODWORD(STACK[0x27C]) ^ 0xF6BFA5D6) + 1510253357 + (v137 ^ 0x266F70A0))) & 0xFACF4156) + 2103943339;
  LODWORD(v13) = (v135 ^ 0x7D67A0AB) - ((2 * (v135 ^ 0x7D67A0AB) - 1119678516) & 0xA9FC22E8) + 866097498;
  LODWORD(STACK[0x2AC]) = v13;
  LODWORD(v10) = (LODWORD(STACK[0x2C8]) ^ 0xA27BBCD8) + (LODWORD(STACK[0x2BC]) ^ 0xD8637188) + (v44 ^ 0xCB444DD3) + (v13 ^ 0x54FE1174) + 2;
  LODWORD(v13) = v10 - ((2 * v10 + 1443520218) & 0x45732A36) - 843135864;
  LODWORD(v10) = (LODWORD(STACK[0x2CC]) ^ 0xB5479DBE) + (LODWORD(STACK[0x270]) ^ 0x9170702);
  LODWORD(STACK[0x2A8]) = v13;
  v128 = v10 + (v13 ^ 0x22B9951B) + 1 - ((2 * (v10 + (v13 ^ 0x22B9951B) + 1)) & 0x90328504) - 937868670;
  v156 = ((2 * ((v128 ^ 0xC8194282) - (LODWORD(STACK[0x330]) ^ 0x2A06FB))) & 0xE7BDE37E) + (((v128 ^ 0xC8194282) - (LODWORD(STACK[0x330]) ^ 0x2A06FB)) ^ 0xF3DEF1BF);
  v129 = ((2 * ((LODWORD(STACK[0x318]) ^ 0x39387756) + 203492929 + v156 + 1)) & 0x37DFDFF2) + (((LODWORD(STACK[0x318]) ^ 0x39387756) + 203492929 + v156 + 1) ^ 0x1BEFEFF9);
  LODWORD(v10) = (LODWORD(STACK[0x2E0]) ^ 0x16072E5E) + (LODWORD(STACK[0x2DC]) ^ 0xA8EE8F81) + 122456721;
  v133 = v129 - ((2 * v129 + 747166098) & 0x4868F1B6) - 92740188;
  LODWORD(v10) = v10 + (v133 ^ 0x243478DB) - ((2 * (v10 + (v133 ^ 0x243478DB)) - 1574403910) & 0xD1E9F0B8) + 973682873;
  LODWORD(STACK[0x2A4]) = v10;
  v154 = ((2 * ((v10 ^ 0x68F4F85C) + (LODWORD(STACK[0x320]) ^ 0x3DAD5383))) & 0xAFDD6BFC) + (((v10 ^ 0x68F4F85C) + (LODWORD(STACK[0x320]) ^ 0x3DAD5383)) ^ 0x57EEB5FE);
  LODWORD(STACK[0x240]) = (2 * (((2 * ((LODWORD(STACK[0x2C0]) ^ 0xB185342D) - 1475261950 + v154 + 1)) & 0xF57F7AB4) + (((LODWORD(STACK[0x2C0]) ^ 0xB185342D) - 1475261950 + v154 + 1) ^ 0x7ABFBD5A)) + 1444207282) & 0x59394200;
  LODWORD(STACK[0x238]) = v152 ^ 0x60;
  LODWORD(STACK[0x298]) = v121;
  return (*(STACK[0x348] + 8 * v45))(2966771710, ((v45 + 11848974) | 0xCC031403) - 1151465780);
}

uint64_t sub_10001699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, int a47, int a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, int a59, uint64_t a60, unsigned int a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x250]) = a46 - a48;
  LODWORD(STACK[0x248]) = LODWORD(STACK[0x330]) ^ (a66 + 203492929) ^ 0xFFD5F904;
  v66 = LODWORD(STACK[0x2A4]) ^ a59;
  LODWORD(STACK[0x20C]) = a64 - 1475261950;
  LODWORD(STACK[0x200]) = v66 ^ 0x3EC3BFE7;
  return (*(STACK[0x348] + 8 * ((8434 * (a61 > 0xB51CD24D)) ^ (a61 + 860362605))))(358321164, 1653896364, 2863311531, 1431655766, a5, 28878);
}

uint64_t sub_100016C0C@<X0>(uint64_t a1@<X7>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, int a57, uint64_t a58, uint64_t a59, int a60, int a61, int a62)
{
  LODWORD(STACK[0x224]) ^= LODWORD(STACK[0x21C]);
  LODWORD(STACK[0x228]) = LODWORD(STACK[0x210]) ^ LODWORD(STACK[0x220]);
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x288]) ^ a57 ^ a55 ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x238]) ^ LODWORD(STACK[0x264]) ^ a2 ^ 0x80B61FFE;
  LODWORD(STACK[0x238]) = LODWORD(STACK[0x25C]) - LODWORD(STACK[0x260]);
  LODWORD(STACK[0x230]) = LODWORD(STACK[0x2A8]) ^ a62;
  LODWORD(STACK[0x264]) = a61 - LODWORD(STACK[0x240]);
  LODWORD(STACK[0x240]) = v63;
  LODWORD(STACK[0x260]) = v63 ^ a60;
  LODWORD(STACK[0x21C]) = a48 ^ a50;
  return (*(a1 + 8 * ((v62 + 97019809 + ((v62 + 97022145) | 0xC4)) ^ (6668 * (v62 < 0xC4FA9BEA)))))(3078436858, 1659252716);
}

uint64_t sub_100016F64()
{
  v2 = (v0 + 320307165) & 0xECE8AF7B;
  v3 = *(STACK[0x348] + 8 * ((6831 * ((((v1 & 1) - v0) | (v0 - (v1 & 1))) >= 0)) ^ (v0 + 11557)));
  LODWORD(STACK[0x25C]) = v2;
  return v3(801987916);
}

uint64_t sub_1000170A8()
{
  STACK[0x328] = 0x6D809EB745318882;
  STACK[0x298] = 0x44CD0F194B6A5023;
  STACK[0x280] = 0xDF1A37A079E40F1;
  STACK[0x290] = 0xD40195C2DF35936;
  STACK[0x288] = 0x1B0DBF0DE6245BLL;
  v2 = (*(v0 + 8 * (v1 + 6925)))(1028);
  STACK[0x340] = v2;
  return (*(STACK[0x348] + 8 * ((219 * (v2 == 0)) ^ v1)))();
}

uint64_t sub_100018CC4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, unsigned int a7@<W6>, int a8@<W7>, unsigned int a9@<W8>)
{
  v21 = ((((v12 - (v9 & v10)) ^ v18) ^ v11) - ((2 * (((v12 - (v9 & v10)) ^ v18) ^ v11) + 1970) & a4) + a5) ^ *(*(v19 + 8 * a2) + 4 * (((v12 - (v9 & v10)) ^ v18) ^ v13) + a1);
  *(v16 + 4 * ((v12 - (v9 & v10)) ^ a7)) = v15 ^ v20 ^ a6 ^ (v21 - 1949070390 - (v17 & (2 * v21)));
  return (*(STACK[0x348] + 8 * (a3 ^ (((v14 | a9) >> 31) * a8))))();
}

uint64_t sub_100018F94(int a1, int a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7, int a8)
{
  v22 = *(*(v20 + 8 * a2) + 4 * ((((v13 ^ (v10 - (v11 & 0x92))) - ((2 * (v13 ^ (v10 - (v11 & 0x92)))) & 0x68) - 76) ^ v16) ^ v14) + a3);
  HIDWORD(v23) = ~v22;
  LODWORD(v23) = v22 ^ a4;
  v24 = ((v23 >> 5) + v19 - (a1 & (2 * (v23 >> 5)))) ^ v17;
  *(v15 + 4 * ((v10 - (v11 & 0x92)) ^ a6)) = v18 ^ (v24 - 313053634 - (v12 & (2 * v24))) ^ a5;
  return (*(v21 + 8 * (a8 ^ (((v9 | v8) >= 0) * a7))))();
}

uint64_t sub_100019044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * (a72 + 2827)))(1028);
  STACK[0x328] = v73 + 0x6D809EB745318882;
  return (*(STACK[0x348] + 8 * (((((v73 == 0) ^ (a72 - 96)) & 1) * ((a72 - 8410113) & 0xFEFDFFE7 ^ 0xFE7DEB6E)) ^ a72)))();
}

uint64_t sub_1000192BC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X7>, int a6@<W8>)
{
  v22 = v6 ^ v12;
  v23 = v10 ^ *(*(a5 + 8 * v8) + 4 * (v22 ^ 0xA1DCA0FA) - 28050970);
  v24 = (v23 + v21 - ((2 * v23) & 0x274B7528)) ^ v19;
  v25 = (v24 + v15 - ((2 * v24) & 0x1B0943E8)) ^ v16;
  v26 = (v25 + a3 - ((2 * v25) & 0xF81D2368)) ^ v14;
  v27 = (v26 - 1868380919 - (v11 & (2 * v26))) ^ v20;
  v28 = (v27 + a4 - (a1 & (2 * v27))) ^ v18;
  v29 = (v28 + 992442364 - (v9 & (2 * v28))) ^ v13;
  v30 = (v29 - ((2 * v29) & 0x2552099E) - 1834416945) ^ a2;
  *(v17 + 4 * v6) = v22 ^ 0x46C3B192 ^ (v30 - ((2 * v30) & 0x84073B72) + 1107533241);
  return (*(STACK[0x348] + 8 * ((14668 * (v7 == 0)) ^ a6)))();
}

uint64_t sub_1000193F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (*(STACK[0x348] + 8 * (a65 ^ 0x6537)))(1028);
  STACK[0x298] = v65 + 0x44CD0F194B6A5023;
  STACK[0x248] = v65;
  return (*(STACK[0x348] + 8 * ((((((a65 ^ 0xAB) + 1) ^ (v65 == 0)) & 1) * (((a65 - 397) | 0x10) ^ 0x2DDB)) ^ a65)))(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1000195E4@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v22 = v11 - (v12 & a9);
  v23 = (v10 - (v14 ^ v22)) ^ ((v22 ^ 0xF94B0478) + 1);
  v24 = ((v23 + 112524167 - ((v23 << ((v17 + 121) ^ 0x4C)) & a9)) ^ v22) + v10;
  v25 = (v24 - ((2 * v24) & 0xF7) + 123);
  v26 = *(*(v21 + 8 * a5) + 4 * (v25 ^ a4) + a6) ^ a2 ^ ((v25 ^ a3) - (a7 & (2 * (v25 ^ a3))) + a8);
  *(v16 + 4 * ((v11 - (v12 & a9)) ^ v19)) = v9 ^ (v26 + a1 - (v15 & (2 * v26))) ^ v18;
  return (*(STACK[0x348] + 8 * (((v13 == 0) * v20) ^ v17)))();
}

uint64_t sub_1000196BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v29 = STACK[0x348];
  v30 = (*(STACK[0x348] + 8 * (v28 ^ 0x7C2B)))(1028);
  STACK[0x290] = v30 + 0xD40195C2DF35936;
  return (*(v29 + 8 * ((((((v28 - 13763) ^ (v30 == 0)) & 1) == 0) * (((v28 + 2121205426) & 0x8190FB6F) - 14413)) | v28)))(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_100019764()
{
  v1 = *(STACK[0x348] + 8 * v0);
  v2 = 3 * (v0 ^ 0x3256);
  LODWORD(STACK[0x20C]) = v2;
  return v1(-1025116314, v2 ^ 0x1EAFu, 120405566, 103408172, 1662316822, 379561875, 3700518285, 31920);
}

uint64_t sub_1000198BC(uint64_t a1, char a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v23 = *(*(v19 + 8 * v14) + 4 * (((v9 - (v10 & 0x1E)) ^ v8) ^ v13) + a1);
  v24 = (v23 >> a2) ^ (v23 >> 8) ^ a3;
  v25 = ((v23 ^ a6 ^ (v24 - (a4 & (2 * v24)) + a5)) + v20 - (v12 & (2 * (v23 ^ a6 ^ (v24 - (a4 & (2 * v24)) + a5))))) ^ v15;
  *(v16 + 4 * ((v9 - (v10 & 0x1E)) ^ 0xFu)) = v22 ^ (v25 + v18 - (v21 & (2 * v25))) ^ a7;
  return (*(STACK[0x348] + 8 * (((v11 == 0) * a8) ^ v17)))();
}

uint64_t sub_100019960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v26 = STACK[0x20C];
  v27 = 1366 * (LODWORD(STACK[0x20C]) ^ 0x1EA8);
  v28 = (*(STACK[0x348] + 8 * (LODWORD(STACK[0x20C]) ^ 0x54CD)))(1032);
  return (*(STACK[0x348] + 8 * (((v28 == 0) * (v27 ^ 0x1076)) ^ v26)))(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100019B98(int a1, int a2, int a3, unsigned int a4, int a5)
{
  v21 = ((v5 - (v6 & v8)) ^ v20) ^ *(*(v15 + 8 * v10) + 4 * (((v5 - (v6 & v8)) ^ v20) ^ v9) + v11);
  v22 = ((a1 ^ v21) + v18 - 2 * ((a1 ^ v21) & v17 ^ v21 & 1)) ^ v19;
  *(v13 + 4 * ((v5 - (v6 & v8)) ^ a4)) = v16 ^ (v22 + v12 - (a2 & (2 * v22))) ^ a3;
  return (*(STACK[0x348] + 8 * (((v7 == 0) * a5) ^ v14)))();
}

uint64_t sub_100019C24()
{
  v1 = (*(STACK[0x348] + 8 * (v0 ^ 0x5BB4)))(1032);
  STACK[0x288] = v1 + 0x1B0DBF0DE6245BLL;
  return (*(STACK[0x348] + 8 * (((v1 == 0) * (v0 ^ 0x1BA4 ^ (6 * (v0 ^ 0x1065)))) ^ v0)))(v1, v2, v3, v4, v5, v6);
}

uint64_t sub_100019CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, uint64_t a44, int a45, unsigned int a46)
{
  v47 = *(STACK[0x348] + 8 * v46);
  LODWORD(STACK[0x20C]) = (v46 - 2626) | 0x991;
  return v47(382711960, 501788420, 1515992014, a17 ^ 0x72C6CE10 ^ a43 ^ (a18 + 37027841) ^ a46, 745314962, 11242);
}

uint64_t sub_100019E10(int a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37)
{
  v54 = (v38 - (v39 & v41));
  v55 = a4 ^ ((v54 ^ v44 ^ v46) - ((a1 + 2 * (v54 ^ v44 ^ v46)) & a2) + a3) ^ *(*(v47 + 8 * v42) + 4 * (v54 ^ v44 ^ (v46 + 149)) + v43);
  v56 = (v55 + v52 - (v53 & (2 * v55))) ^ a37;
  *(v48 + 4 * (v54 ^ v37)) = v51 ^ (v56 + v50 - (v49 & (2 * v56))) ^ a5;
  return (*(STACK[0x348] + 8 * (((v40 == 0) * a6) ^ v45)))();
}

uint64_t sub_100019EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v29 = STACK[0x20C];
  v30 = (*(STACK[0x348] + 8 * (LODWORD(STACK[0x20C]) ^ 0x43FF)))(1032);
  STACK[0x280] = v30 + 0xDF1A37A079E40F1;
  return (*(STACK[0x348] + 8 * (((v30 == 0) * (((v29 + 1184675312) & 0xB96367FF) - 9202)) ^ v29)))(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_100019F3C()
{
  (*(STACK[0x348] + 8 * (v2 ^ 0x68AA)))(v0 - 0x226B2A5994216FE4);
  (*(STACK[0x348] + 8 * (v2 + 10070)))(STACK[0x328] - 0x6D809EB745318882);
  (*(STACK[0x348] + 8 * (v2 ^ 0x68AA)))(v1 - 0xF3F84BBD2398360);
  (*(STACK[0x348] + 8 * (v2 + 10070)))(STACK[0x280] - 0xDF1A37A079E40F1);
  (*(STACK[0x348] + 8 * (v2 + 10070)))(STACK[0x298] - 0x44CD0F194B6A5023);
  (*(STACK[0x348] + 8 * (v2 ^ 0x68AA)))(STACK[0x340]);
  (*(STACK[0x348] + 8 * (v2 + 10070)))(STACK[0x290] - 0xD40195C2DF35936);
  v3 = (*(STACK[0x348] + 8 * (v2 + 10070)))(STACK[0x288] - 0x1B0DBF0DE6245BLL);
  return (*(STACK[0x348] + 8 * v2))(v3);
}

uint64_t sub_10001A190@<X0>(int a1@<W4>, unsigned int a2@<W8>)
{
  v10 = (v2 - 1);
  v11 = v10 + ((v4 + 245866949) & 0xF1587FE8 ^ 0x273921B4B395CDB0) + ((v10 < a2) << 32) - 0x273921B4CD92AE19;
  v12 = (((v6 + v10 + ((v4 + 245866949) & 0xF1587FE8 ^ 0xB395CDB0) + 846025191) ^ *(*(*(v8 + 8 * (v4 - 9472)) - 1044409835) + (*(*(v8 + 8 * (v4 & 0xC6835A02)) - 1120588707) & 0xFFFFFFFFBA961A1CLL))) & 0x7FFFFFFF) * a1;
  v13 = v12 ^ HIWORD(v12);
  HIDWORD(v14) = v10 + ((v4 + 245866949) & 0xF1587FE8 ^ 0xB395CDB0) + 846025191;
  LODWORD(v14) = v13 * a1;
  *(v6 + v11 + v7) = *(*(v8 + 8 * (v4 - 9564)) + ((v14 >> 24) & 0xFFF) - 2007864231) ^ *(v5 + v11) ^ (-63 * v13);
  return (*(v9 + 8 * (((v10 == a2) * v3) ^ v4)))();
}

void sub_10001EC94(uint64_t a1)
{
  v1 = 2054851651 * (((a1 | 0x6B04F1C7) - (a1 | 0x94FB0E38) - 1795486152) ^ 0xE7AA5EE1);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_10001ED84@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = *(a1 + 12) - v2;
  v6 = v4 != 625121699 && (v4 - 625121705) > 0xFFFFFFF3;
  v7 = *(v3 + 8 * ((a2 + 16598) ^ (4 * v6)));
  STACK[0x8B0] = v3;
  return v7();
}

uint64_t sub_10001EE44(unint64_t a1)
{
  STACK[0x238] = a1;
  STACK[0x980] = v1 + 0x7AD18AC4D0DA518DLL;
  STACK[0x988] = v2 + 0x1E1FE89EBD68F402;
  return (*(v5 + 8 * (v4 ^ (54 * (v3 == 0)))))();
}

uint64_t sub_10001EF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  *(a4 + 96) = *v4;
  *&STACK[0xA20] = v7;
  *(a4 + 64) = *v4;
  STACK[0x9F8] = *(v4 + 8);
  STACK[0xA00] = *(v4 + 16);
  STACK[0xA08] = *(v4 + 24);
  return (*(v6 + 8 * v5))(a1, &STACK[0x9B0], &STACK[0x30F6A2803771F897]);
}

uint64_t sub_10001EFAC()
{
  v4 = v1 & 0x3EB24DDD;
  if (v0)
  {
    v5 = STACK[0x348] == v2;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v3 + 8 * ((((v4 - 19300983) ^ ((v4 - 253) | 0x648) ^ 0xFED98992) * v6) ^ v4)))();
}

uint64_t sub_10001F14C@<X0>(uint64_t *a1@<X0>, int a2@<W8>)
{
  STACK[0x238] = a1;
  v5 = *a1;
  v6 = *a1 + 0x27C3370D067AB99ALL;
  STACK[0x960] = v2 + 0x4998816651743FFELL;
  STACK[0x968] = v3 + 0x610FC8725D1E70CCLL;
  return (*(v4 + 8 * (((((a2 - 1877697203) | 0x43480A84) ^ 0xD35CCDF1 ^ (1042 * (a2 ^ 0x7C5))) * (v5 == v3)) ^ (a2 + 2033))))(a1, v6);
}

uint64_t sub_10001F1F0(uint64_t a1)
{
  LOBYTE(STACK[0x9F0]) = *v1;
  LOBYTE(STACK[0x9F1]) = v1[1];
  LOBYTE(STACK[0x9F2]) = v1[2];
  LOBYTE(STACK[0x9F3]) = v1[3];
  LOBYTE(STACK[0x9F4]) = v1[4];
  LOBYTE(STACK[0x9F5]) = v1[5];
  LOBYTE(STACK[0x9F6]) = v1[6];
  LOBYTE(STACK[0x9F7]) = v1[7];
  LOBYTE(STACK[0x9F8]) = v1[8];
  LOBYTE(STACK[0x9F9]) = v1[9];
  LOBYTE(STACK[0x9FA]) = v1[10];
  LOBYTE(STACK[0x9FB]) = v1[11];
  LOBYTE(STACK[0x9FC]) = v1[12];
  LOBYTE(STACK[0x9FD]) = v1[13];
  LOBYTE(STACK[0x9FE]) = v1[14];
  LOBYTE(STACK[0x9FF]) = v1[15];
  return (*(v3 + 8 * ((4177 * (v2 < 0x488171A7)) ^ (v2 + 748904480))))(a1, &STACK[0x27C3370D067AC38A]);
}

uint64_t sub_10001F2C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  STACK[0x718] = v2 ^ 0x42E6u;
  if (v4)
  {
    v6 = a1 == a2;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && v3 != 0 && *(&off_10044E3E0 + (v2 ^ 0x4436)) != 192735699;
  v10 = *(v5 + 8 * ((v9 * (167 * (v2 ^ 0x453E) - 1995)) ^ v2));
  LODWORD(STACK[0x710]) = -42900;
  return v10();
}

uint64_t sub_10001F334()
{
  v3 = *(v2 + 8 * ((v1 + 9917) ^ (15 * (v0 == 518865444))));
  LODWORD(STACK[0x710]) = -42899;
  STACK[0x718] = v1;
  return v3();
}

uint64_t sub_10001F3EC(unint64_t a1)
{
  STACK[0x238] = a1;
  STACK[0x9A0] = v1 + 0xAD32829D3B70BA2;
  STACK[0x9A8] = v2 + 0x43B040E62C52A399;
  return (*(v5 + 8 * (((1331 * ((v4 - 1108966596) & 0xC31FFEFB ^ 0x8106B6DC) - 9289) * (v3 != 0)) | v4)))();
}

uint64_t sub_10001F4BC()
{
  STACK[0x270] = &STACK[0x68A43AAA77746F2F];
  v4 = *(v1 + 16);
  *(v2 + 576) = *v1;
  *&STACK[0xC00] = v4;
  STACK[0xC10] = *v1;
  STACK[0xC18] = *(v1 + 8);
  STACK[0xC20] = *(v1 + 16);
  STACK[0xC28] = *(v1 + 24);
  return (*(v3 + 8 * v0))();
}

uint64_t sub_10001F564()
{
  if (v1)
  {
    v4 = STACK[0x270] == v0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * (((((5 * (v2 ^ 0x39EF)) ^ 0x81069A47) + 2130266439) * v5) ^ v2)))();
}

uint64_t sub_10001F6AC@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x238] = a1;
  STACK[0x978] = v2 + 0x6F973BA06C3310A2;
  STACK[0x970] = v3 + 0x1876383746DE2E1ELL;
  return (*(v5 + 8 * ((a2 + 942) ^ ((v4 == 0) | (4 * (v4 == 0))))))();
}

uint64_t sub_10001F770@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = *(v2 + 16);
  *(a1 + 96) = *v2;
  *&STACK[0xA20] = v4;
  *(a1 + 64) = *v2;
  STACK[0x9F8] = *(v2 + 8);
  STACK[0xA00] = *(v2 + 16);
  STACK[0xA08] = *(v2 + 24);
  return (*(v3 + 8 * (a2 | 0xCA)))();
}

uint64_t sub_10001F810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (v3)
  {
    v7 = a3 == v4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v6 + 8 * (((((v5 - 7312) ^ 0x17A2) - 1806) * v8) ^ (v5 - 7312))))();
}

uint64_t sub_10001F8FC@<X0>(unint64_t a1@<X0>, int a2@<W8>)
{
  STACK[0x238] = a1;
  STACK[0x990] = v2 + 0x475BCA23DA06A31CLL;
  STACK[0x998] = v3 + 0x51133B5774CD998DLL;
  return (*(v5 + 8 * ((a2 + 10375) ^ (53 * (v4 == 0)))))();
}

uint64_t sub_10001F9B4(uint64_t a1)
{
  v4 = *(v2 + 16);
  *(a1 + 608) = *v2;
  *&STACK[0xC20] = v4;
  STACK[0xBF0] = *v2;
  STACK[0xBF8] = *(v2 + 8);
  STACK[0xC00] = *(v2 + 16);
  STACK[0xC08] = *(v2 + 24);
  return (*(v3 + 8 * v1))();
}

uint64_t sub_10001FA40()
{
  if (v1)
  {
    v5 = v0 == v3;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v4 + 8 * (((((v2 - 10800) | 0x16D2) ^ 0x16DC) * v6) ^ v2)))();
}

uint64_t sub_10001FB08()
{
  v4 = (v2 + 14725) | 0x907;
  v5 = *(v0 - 0x686929048CA517E1);
  LODWORD(STACK[0x318]) = ((2 * v5) & 0x7C) + (v5 ^ 0x3E);
  v6 = *(v0 - 0x686929048CA517DFLL);
  LODWORD(STACK[0x940]) = v6 - ((2 * v6) & 0x4C);
  LODWORD(STACK[0x7B0]) = v1;
  v7 = *(v0 - 0x686929048CA517E6);
  LODWORD(STACK[0x930]) = v7 - ((2 * v7) & 0x3A);
  v8 = *(v0 - 0x686929048CA517DELL);
  LODWORD(STACK[0x920]) = v8 - ((2 * v8) & 0x26);
  v9 = *(v0 - 0x686929048CA517E5);
  LODWORD(STACK[0x910]) = v9 - ((2 * v9) & 0xFFFFFF83);
  v10 = *(v0 - 0x686929048CA517DDLL);
  LODWORD(STACK[0x950]) = v2;
  LODWORD(STACK[0x900]) = v10 - ((2 * v10) & 0xFFFFFFD2);
  LODWORD(STACK[0x8F8]) = -53 * v9 - ((-106 * v9) & 0xFFFFFF83);
  LODWORD(STACK[0x8F0]) = -75 * v6 - ((106 * v6) & 0x4C);
  LODWORD(STACK[0x8E8]) = -85 * v7 - ((22 * v7) & 0x3A);
  LODWORD(STACK[0x8E0]) = -41 * v8 - ((46 * v8) & 0x26);
  LODWORD(STACK[0x8D8]) = -119 * v10 - ((18 * v10) & 0xFFFFFFD2);
  v11 = *(v0 - 0x686929048CA517DCLL);
  LODWORD(STACK[0x8D0]) = (v11 ^ 0x3E) + ((2 * v11) & 0x7C);
  v12 = *(v0 - 0x686929048CA517E4);
  LODWORD(STACK[0x8C0]) = (v12 ^ 0xFFFFFFDD) + ((2 * v12) & 0xFFFFFFBA);
  v13 = *(v0 - 0x686929048CA517DBLL);
  LODWORD(STACK[0x8B8]) = v13 + (~(2 * v13) | 0xFFFFFFE7);
  LODWORD(STACK[0x8C8]) = 53 * v13 - ((10 * v13) & 0x18);
  v14 = *(v0 - 0x686929048CA517D7);
  LODWORD(STACK[0x8A8]) = 53 * v14 - ((106 * v14) & 0xFFFFFFBA);
  LODWORD(STACK[0x8A0]) = v14 - ((2 * v14) & 0xFFFFFFBA);
  v15 = *(v0 - 0x686929048CA517DALL);
  LODWORD(STACK[0x298]) = -101 * v15 + 69;
  LODWORD(STACK[0x890]) = (v15 ^ 0xFFFFFFCD) + ((2 * v15) & 0xFFFFFF9A);
  v16 = *(v0 - 0x686929048CA517D9);
  LODWORD(STACK[0x898]) = 125 * v16 - ((-6 * v16) & 0xFFFFFFFB);
  v17 = *(v0 - 0x686929048CA517E3);
  v18 = v16 - ((2 * v16) & 0xFFFFFFFB);
  LODWORD(STACK[0x880]) = v17 - ((v4 ^ 0x4E) & (2 * v17));
  LODWORD(STACK[0x888]) = -3 * v17 - ((122 * v17) & 0x40);
  v19 = (121 * v12 + 68);
  v20 = *(v0 - 0x686929048CA517E2);
  LODWORD(STACK[0x870]) = v20 - ((2 * v20) & 0xFFFFFFD8);
  LODWORD(STACK[0x878]) = -((-86 * v20) & 0xFFFFFFD8) - 43 * v20;
  v21 = *(v0 - 0x686929048CA517E0);
  LODWORD(STACK[0x28C]) = 115 * v5 + 62;
  LODWORD(STACK[0x860]) = v21 - ((2 * v21) & 0x20);
  LODWORD(STACK[0x868]) = -((26 * v21) & 0x20) - 83 * v21;
  LODWORD(STACK[0x294]) = 95 * v11 + 58;
  v22 = *(v0 - 0x686929048CA517D8);
  LODWORD(STACK[0x29C]) = 47 * v22 + 29;
  v23 = *(v0 - 0x686929048CA517D5);
  LODWORD(STACK[0x858]) = ((2 * v23) & 0xFFFFFF9F) + (v23 ^ 0xFFFFFFCF);
  v24 = *(v0 - 0x686929048CA517D6);
  v25 = *(v0 - 0x686929048CA517C9);
  LODWORD(STACK[0x850]) = (v24 ^ 0xFFFFFFEB) + ((2 * v24) & 0xFFFFFFD6);
  v26 = *(v0 - 0x686929048CA517D2);
  LODWORD(STACK[0x848]) = (v25 ^ 0xFFFFFFDD) + ((2 * v25) & 0xFFFFFFBA);
  LODWORD(STACK[0x838]) = (v26 ^ 0x4E) + ((2 * v26) & 0xFFFFFF9C);
  v27 = *(v0 - 0x686929048CA517CALL);
  LODWORD(STACK[0x830]) = (v27 ^ 0x3F) + 2 * (v27 & 0x3F);
  v28 = *(v0 - 0x686929048CA517D3);
  LODWORD(STACK[0x828]) = (v28 ^ 0xFFFFFFEF) + ((2 * v28) & 0xFFFFFFDF);
  v29 = *(v0 - 0x686929048CA517D1);
  LODWORD(STACK[0x234]) = -83 * v23 + 79;
  v30 = *(v0 - 0x686929048CA517CBLL);
  v31 = *(v0 - 0x686929048CA517CFLL);
  v32 = *(v0 - 0x686929048CA517CCLL);
  v33 = *(v0 - 0x686929048CA517CELL);
  v34 = 2 * (v33 & 0x3F) + (v33 ^ 0xFFFFFFBF);
  LODWORD(STACK[0x230]) = -87 * v24 + 97;
  LODWORD(STACK[0x218]) = -49 * v28 + 47;
  v35 = *(v0 - 0x686929048CA517C7);
  v36 = v3;
  LODWORD(STACK[0x20C]) = 25 * *(v0 - 0x686929048CA517D4) + 7;
  LODWORD(STACK[0x240]) = -39 * v31 + 24;
  LODWORD(STACK[0x208]) = -27 * v26 + 10;
  LODWORD(STACK[0x21C]) = 85 * v25 + 92;
  LODWORD(STACK[0x224]) = 69 * v32 + 66;
  LODWORD(STACK[0x22C]) = 113 * v30 + 48;
  LODWORD(STACK[0x204]) = 19 * v29 + 12;
  LODWORD(STACK[0x214]) = 41 * v33 + 63;
  LODWORD(STACK[0x210]) = 57 * *(v0 - 0x686929048CA517CDLL) + 106;
  LODWORD(STACK[0x220]) = 67 * v27 + 18;
  STACK[0x2D8] = v0;
  v37 = *(v0 - 0x686929048CA517C8);
  LODWORD(STACK[0x228]) = -77 * v35 + 35;
  LODWORD(STACK[0x840]) = v4;
  v38 = (v4 - 18695) | 0x2846;
  STACK[0x5A0] = &STACK[0x9F0];
  LODWORD(STACK[0x31C]) = LODWORD(STACK[0x880]) - 96;
  LODWORD(STACK[0x5CC]) = LODWORD(STACK[0x940]) + 38;
  LODWORD(STACK[0x5BC]) = LODWORD(STACK[0x8B8]) - 115;
  LODWORD(STACK[0x5B4]) = LODWORD(STACK[0x870]) + 108;
  LODWORD(STACK[0x5C8]) = LODWORD(STACK[0x930]) + 29;
  LODWORD(STACK[0x5C4]) = LODWORD(STACK[0x920]) - 109;
  LODWORD(STACK[0x5B0]) = LODWORD(STACK[0x910]) - 63;
  LODWORD(STACK[0x5AC]) = LODWORD(STACK[0x900]) - 23;
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x8C0]) + 103;
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x8A0]) + 93;
  v39 = (LODWORD(STACK[0x890]) + 120);
  LODWORD(STACK[0x5B8]) = v18 - 3;
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x8F8]) - 63;
  LODWORD(STACK[0x5C0]) = LODWORD(STACK[0x860]) - 112;
  LODWORD(STACK[0x27C]) = LODWORD(STACK[0x888]) - 96;
  LODWORD(STACK[0x314]) = v22 + 29;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x8F0]) + 38;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x878]) + 108;
  LODWORD(STACK[0x338]) = LODWORD(STACK[0x8E8]) + 29;
  LODWORD(STACK[0x340]) = LODWORD(STACK[0x8E0]) - 109;
  LODWORD(STACK[0x26C]) = LODWORD(STACK[0x868]) - 112;
  LODWORD(STACK[0x284]) = LODWORD(STACK[0x8C8]) - 116;
  LODWORD(STACK[0x268]) = LODWORD(STACK[0x8D8]) - 23;
  LODWORD(STACK[0x270]) = LODWORD(STACK[0x898]) - 3;
  LODWORD(STACK[0x280]) = LODWORD(STACK[0x8A8]) + 93;
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x848]) + 127;
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x830]) - 45;
  LODWORD(STACK[0x2AC]) = LODWORD(STACK[0x828]) + 64;
  LODWORD(STACK[0x2B0]) = (~v37 + 2 * v37) ^ 0xFFFFFF80;
  LODWORD(STACK[0x330]) = (v30 ^ 0xFFFFFFBB) + ((2 * v30) & 0x76) + 117;
  LODWORD(STACK[0x2A8]) = (v35 ^ 0x3F) + 2 * (v35 & 0x3F) - 28;
  v40 = v39;
  LODWORD(STACK[0x838]) = LODWORD(STACK[0x7B0]) + 2085137031;
  v41 = *(v36 + 8 * LODWORD(STACK[0x950]));
  LODWORD(STACK[0x7A8]) = v38;
  LODWORD(STACK[0x830]) = (v38 ^ 0x28) - 99;
  LODWORD(STACK[0x940]) = 2058625494;
  LODWORD(STACK[0x950]) = 1432473681;
  return v41(v40, v34 ^ 0xFFFFFF80, (99 * v37 + 127), v19);
}

uint64_t sub_100020458(int a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x29C]) = v17;
  LODWORD(STACK[0x950]) += 16;
  STACK[0x930] = v10 + 16;
  LODWORD(STACK[0x920]) = v12 + 16;
  v20 = *v16;
  LODWORD(STACK[0x900]) = v20;
  v21 = v8 + v20 - 80;
  v22 = LODWORD(STACK[0x234]) - 43 * v21;
  v23 = v16[1];
  LODWORD(STACK[0x8E8]) = v14 + v23;
  v24 = v22 - 83 * v23;
  v25 = v16[2];
  LODWORD(STACK[0x910]) = v13 + v25;
  v26 = LODWORD(STACK[0x20C]) + 25 * v25;
  v27 = v16[3];
  v28 = LODWORD(STACK[0x2AC]) + v27;
  LODWORD(STACK[0x8F8]) = LODWORD(STACK[0x218]) - v27 - 48 * v27;
  v24 -= 37;
  LODWORD(STACK[0x234]) = v24;
  v29 = v26 - 49 * v24;
  LODWORD(STACK[0x8F0]) = v29;
  v30 = v28 - 109 * v29 - 3384;
  v31 = v16[4];
  v32 = LODWORD(STACK[0x208]) - 27 * v31;
  LODWORD(STACK[0x2AC]) = v30;
  v33 = v32 - 5 * v30;
  LODWORD(STACK[0x888]) = v33;
  LODWORD(STACK[0x8E0]) = a8 + v31;
  v34 = v16[5];
  v35 = v19 + v34;
  LODWORD(STACK[0x8D8]) = LODWORD(STACK[0x204]) + 19 * v34;
  v36 = v16[6];
  LODWORD(STACK[0x8D0]) = v18 + v36;
  v37 = v11 + v36 * LODWORD(STACK[0x830]);
  v38 = v16[7];
  LODWORD(STACK[0x8C8]) = v15 + v38;
  v39 = LODWORD(STACK[0x240]) - 39 * v38;
  v40 = v16[9];
  v41 = v9 + v40;
  v42 = LODWORD(STACK[0x210]) + 57 * v40;
  v43 = v16[8];
  v44 = a2 + v43;
  LODWORD(STACK[0x8C0]) = LODWORD(STACK[0x214]) + 41 * v43;
  v45 = v16[10];
  LODWORD(STACK[0x8B8]) = a7 + v45;
  v47 = LODWORD(STACK[0x224]) + 69 * v45;
  v48 = v16[11];
  v49 = LODWORD(STACK[0x330]) + v48;
  v50 = LODWORD(STACK[0x22C]) + 113 * v48;
  v51 = v16[12];
  LODWORD(STACK[0x8A8]) = LODWORD(STACK[0x350]) + v51;
  v52 = LODWORD(STACK[0x220]) + 67 * v51;
  v53 = v35 - 71 * v33 + 1433;
  LODWORD(STACK[0x2A4]) = v53;
  v54 = v37 + 107 * v53;
  LODWORD(STACK[0x898]) = v54;
  v55 = v39 - 57 * v54 + 122;
  LODWORD(STACK[0x240]) = v55;
  v56 = v44 + 83 * v55;
  LODWORD(STACK[0x8A0]) = v42 - 67 * v56;
  v56 += 56;
  LODWORD(STACK[0x320]) = v56;
  v57 = v41 - 91 * v56 + 101;
  LODWORD(STACK[0x328]) = v57;
  v58 = v47 + 43 * v57;
  LODWORD(STACK[0x890]) = v49 - 33 * v58;
  v59 = v16[13];
  v60 = LODWORD(STACK[0x348]) + v59;
  v61 = LODWORD(STACK[0x21C]) + 85 * v59;
  v58 += 50;
  LODWORD(STACK[0x224]) = v58;
  v62 = v50 + 111 * v58 + 98;
  LODWORD(STACK[0x22C]) = v62;
  v63 = v52 + 59 * v62 - 16;
  LODWORD(STACK[0x880]) = v61 - 33 * v63;
  v64 = v16[15];
  v65 = LODWORD(STACK[0x228]) - 77 * v64;
  v66 = LODWORD(STACK[0x2A8]) + v64;
  v67 = v16[14];
  v68 = LODWORD(STACK[0x2B0]) + v67;
  LODWORD(STACK[0x878]) = a3 + 99 * v67;
  LODWORD(STACK[0x220]) = v63;
  v69 = v60 + 99 * v63;
  LODWORD(STACK[0x870]) = v69;
  v70 = v68 - 43 * v69 - 314;
  v71 = v65 + v70 - 127;
  v72 = LODWORD(STACK[0x5C8]) ^ 0x1D;
  LODWORD(STACK[0x228]) = v71;
  LODWORD(STACK[0x2B0]) = v70;
  v73 = v66 + 123 * v70;
  v74 = (LODWORD(STACK[0x338]) ^ 0x1D) - v73 + (v73 << 6) - 216;
  LODWORD(STACK[0x868]) = v74 - ((2 * v74) & 0x3A);
  v75 = v72 - 49 * v71 - 77 - ((2 * (v72 - 49 * v71 - 77)) & 0x3A) + 29;
  LODWORD(STACK[0x5C8]) = v75;
  v76 = (LODWORD(STACK[0x5B0]) ^ 0xFFFFFFC1) + ((50 * (v75 ^ 0x1D)) & 0xFFFFFFDC) + ((25 * (v75 ^ 0x1D)) ^ 0x6E) - 110;
  v77 = (LODWORD(STACK[0x288]) ^ 0xFFFFFFC1) + ((-90 * (v75 ^ 0x1D)) & 0xFFFFFFFC);
  LODWORD(STACK[0x828]) = v75 ^ 0x1D;
  v78 = v77 + ((-45 * (v75 ^ 0x1D)) ^ 0x7E) - 126;
  v79 = v76 - ((2 * v76) & 0xFFFFFF83) - 63;
  LODWORD(STACK[0x5B0]) = v79;
  v80 = v79 ^ 0xFFFFFFC1;
  v81 = LODWORD(STACK[0x310]) + ((54 * v80) & 0xFFFFFFE7);
  STACK[0x808] = v80;
  v82 = v81 + ((27 * v80) ^ 0x73);
  LODWORD(STACK[0x858]) = v82;
  v83 = v78 - ((2 * v78) & 0xFFFFFF83) - 63;
  LODWORD(STACK[0x288]) = v83;
  v84 = a4 + ((82 * (v83 ^ 0xFFFFFFC1)) & 0x54) + ((-23 * (v83 ^ 0xFFFFFFC1)) ^ 0xFFFFFFAA);
  v85 = (LODWORD(STACK[0x31C]) ^ 0xFFFFFFA0) - v84 + 16 * v84 + 1294;
  v86 = v85 - ((2 * v85) & 0x40) - 96;
  LODWORD(STACK[0x31C]) = v86;
  v87 = (LODWORD(STACK[0x290]) ^ 0x6C) + ((-70 * (v86 ^ 0xFFFFFFA0)) & 0xFFFFFF9A);
  LODWORD(STACK[0x818]) = v86 ^ 0xFFFFFFA0;
  v88 = v87 + ((-35 * (v86 ^ 0xFFFFFFA0)) ^ 0x4D) - 77;
  v89 = v88 - ((2 * v88) & 0xFFFFFFD8) + 108;
  LODWORD(STACK[0x290]) = v89;
  v90 = LODWORD(STACK[0x318]) + ((22 * (v89 ^ 0x6C)) & 0x2E) + ((-21 * (v89 ^ 0x6C)) ^ 0xFFFFFF97);
  LODWORD(STACK[0x860]) = v90;
  v91 = v90 + 111;
  v92 = (LODWORD(STACK[0x26C]) ^ 0xFFFFFF90) + 95 * (v90 + 111) - 60;
  v93 = LODWORD(STACK[0x27C]) ^ 0xFFFFFFA0;
  LODWORD(STACK[0x7F8]) = v82 - 81;
  v94 = v93 - 69 * (v82 - 81) + 126 - ((2 * (v93 - 69 * (v82 - 81) + 126)) & 0x40) - 96;
  LODWORD(STACK[0x27C]) = v94;
  v95 = v94 ^ 0xFFFFFFA0;
  LODWORD(v80) = (LODWORD(STACK[0x5B4]) ^ 0x6C) + ((58 * (v94 ^ 0xA0)) & 0x7E);
  v96 = v92 - ((2 * v92) & 0x20) - 112;
  LODWORD(STACK[0x26C]) = v96;
  v97 = (LODWORD(STACK[0x2A0]) ^ 0x26) + ((26 * (v96 ^ 0xFFFFFF90)) & 0xFFFFFFBF) + ((-115 * (v96 ^ 0xFFFFFF90)) ^ 0x5F) - 95;
  v98 = v80 + ((93 * v95) ^ 0xFFFFFFBF) + 65 - ((2 * (v80 + ((93 * v95) ^ 0xFFFFFFBF) + 65)) & 0xFFFFFFD8);
  v99 = v97 - ((2 * v97) & 0x4C) + 38;
  LODWORD(STACK[0x2A0]) = v99;
  v99 ^= 0x26u;
  LODWORD(v80) = (LODWORD(STACK[0x5C4]) ^ 0xFFFFFF93) + ((-17 * v99) ^ 0x37) + ((94 * v99) & 0x6E) - 55;
  v98 += 108;
  LODWORD(STACK[0x5B4]) = v98;
  v100 = v98 ^ 0x6Cu;
  v101 = LODWORD(STACK[0x28C]) + ((74 * v100) & 0xFFFFFFEC);
  LODWORD(v80) = v80 - ((2 * v80) & 0x26) - 109;
  LODWORD(STACK[0x5C4]) = v80;
  v102 = v80 ^ 0xFFFFFF93;
  LODWORD(v80) = (LODWORD(STACK[0x5AC]) ^ 0xFFFFFFE9) + ((42 * (v80 ^ 0x93)) & 0x3E) + ((-43 * (v80 ^ 0xFFFFFF93)) ^ 0x1F);
  STACK[0x7D8] = v100;
  LODWORD(STACK[0x850]) = v101 + ((-91 * v100) ^ 0x76);
  v103 = LODWORD(STACK[0x5C0]) ^ 0xFFFFFF90;
  LODWORD(STACK[0x820]) = v91;
  v104 = v103 - 69 * v91 + 84 - ((2 * (v103 - 69 * v91 + 84)) & 0x20) - 112;
  v105 = LODWORD(STACK[0x5CC]) ^ 0x26;
  LODWORD(STACK[0x5C0]) = v104;
  v106 = v104 ^ 0xFFFFFF90;
  STACK[0x800] = v106;
  LODWORD(STACK[0x848]) = v105 - 59 * v106 - ((2 * (v105 - 59 * v106)) & 0x4C);
  v107 = (LODWORD(STACK[0x340]) ^ 0xFFFFFF93) + ((114 * v99) & 0x72) + ((-71 * v99) ^ 0x39) - 57;
  v108 = v107 - ((2 * v107) & 0x26);
  v109 = (LODWORD(STACK[0x268]) ^ 0xFFFFFFE9) + ((-3 * v102) ^ 0xFFFFFFDF);
  LODWORD(STACK[0x7B8]) = v102;
  v110 = v109 + ((-6 * v102) & 0xFFFFFFBF) + 33 + (~(2 * (v109 + ((-6 * v102) & 0xFFFFFFBF) + 33)) | 0x2D);
  v111 = v80 - 31 - ((2 * (v80 - 31)) & 0xFFFFFFD2) - 23;
  LODWORD(STACK[0x7C0]) = v111 ^ 0xFFFFFFE9;
  LODWORD(STACK[0x5AC]) = v111;
  v112 = ((LODWORD(STACK[0x294]) + (v111 ^ 0x16) - 57) ^ 0x3B) + ((2 * (LODWORD(STACK[0x294]) + (v111 ^ 0x16) - 57)) & 0x76);
  v113 = (LODWORD(STACK[0x284]) ^ 0xFFFFFF8C) - 29 * v112 - 81;
  LODWORD(v106) = (LODWORD(STACK[0x5BC]) ^ 0xFFFFFF8C) - 73 * v112 - 45;
  v114 = v113 - ((2 * v113) & 0x18) - 116;
  LODWORD(STACK[0x284]) = v114;
  v115 = LODWORD(STACK[0x298]) + ((70 * (v114 ^ 0xFFFFFF8C)) & 0xFFFFFF87) + ((35 * (v114 ^ 0xFFFFFF8C)) ^ 0xFFFFFFC3);
  LODWORD(v100) = (LODWORD(STACK[0x5B8]) ^ 0xFFFFFFFD) + 57 * v115 + 3384;
  v116 = v106 - ((2 * v106) & 0x18) - 116;
  LODWORD(STACK[0x5BC]) = v116;
  LODWORD(STACK[0x7E0]) = v116 ^ 0xFFFFFF8C;
  v117 = a1 + ((90 * (v116 ^ 0xFFFFFF8C)) & 0xFFFFFFB8) + ((45 * (v116 ^ 0xFFFFFF8C)) ^ 0x5C);
  LODWORD(v106) = (LODWORD(STACK[0x270]) ^ 0xFFFFFFFD) - 43 * v115 - 2728;
  v118 = v100 - ((2 * v100) & 0xFFFFFFFB) - 3;
  LODWORD(STACK[0x5B8]) = v118;
  v119 = v118 ^ 0xFFFFFFFD;
  LODWORD(v100) = LODWORD(STACK[0x314]) + ((122 * v119) & 0xFFFFFFB6);
  STACK[0x810] = v119;
  v120 = v100 + ((-67 * v119) ^ 0x5B);
  v121 = (LODWORD(STACK[0x5A8]) ^ 0x5D) - 5 * v120 + 344;
  v122 = v121 - ((2 * v121) & 0xFFFFFFBA);
  LODWORD(STACK[0x270]) = v106 + (~(2 * v106) | 5) - 2;
  v123 = LODWORD(STACK[0x230]) - 87 * LODWORD(STACK[0x900]);
  v124 = (LODWORD(STACK[0x280]) ^ 0x5D) - 9 * v120 + 568;
  v125 = LODWORD(STACK[0x8E8]) - 55 * v21;
  LODWORD(STACK[0x280]) = v124 - ((2 * v124) & 0xFFFFFFBA) + 93;
  v126 = LODWORD(STACK[0x838]) < 0x7AB421C6;
  v127 = STACK[0x940];
  if (v126 == LODWORD(STACK[0x940]) < 0x7AB421C6)
  {
    v126 = LODWORD(STACK[0x940]) < LODWORD(STACK[0x838]);
  }

  v128 = LODWORD(STACK[0x910]) + 91 * (v125 - 89) - 21;
  LODWORD(STACK[0x20C]) = LODWORD(STACK[0x8F0]) + 31;
  v129 = LODWORD(STACK[0x8F8]) - 107 * v128;
  v130 = LODWORD(STACK[0x8E0]) + 113 * v129;
  LODWORD(STACK[0x218]) = v129 - 19;
  LODWORD(STACK[0x208]) = LODWORD(STACK[0x888]) - 21;
  LODWORD(STACK[0x204]) = LODWORD(STACK[0x8D8]) + 71 * (v130 - 2082) + 58;
  v131 = LODWORD(STACK[0x8C0]) + 75 * LODWORD(STACK[0x240]);
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x8A0]) - 3627;
  LODWORD(STACK[0x214]) = v131 - 8;
  v132 = LODWORD(STACK[0x890]) - 1776;
  LODWORD(STACK[0x330]) = v132;
  LODWORD(STACK[0x350]) = LODWORD(STACK[0x8A8]) - 103 * v132 + 80;
  LODWORD(STACK[0x348]) = LODWORD(STACK[0x870]) + 10;
  v133 = LODWORD(STACK[0x878]) - 29 * LODWORD(STACK[0x880]);
  LODWORD(STACK[0x21C]) = LODWORD(STACK[0x880]) + 82;
  LODWORD(STACK[0x2A8]) = v73 - 5;
  LODWORD(STACK[0x338]) = LODWORD(STACK[0x868]) + 29;
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x858]) - 115;
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x860]) + 105;
  LODWORD(STACK[0x28C]) = LODWORD(STACK[0x850]) - 118;
  v134 = LODWORD(STACK[0x320]);
  LODWORD(STACK[0x5CC]) = LODWORD(STACK[0x848]) + 38;
  LODWORD(STACK[0x340]) = v108 - 109;
  LODWORD(STACK[0x268]) = v110 - 22;
  LODWORD(STACK[0x294]) = v112 - 1;
  LODWORD(STACK[0x298]) = v115 + 61;
  LODWORD(STACK[0x5A8]) = v122 + 93;
  LODWORD(STACK[0x230]) = v123 - 109 * ((v122 + 93) ^ 0x5D) - 38 * ((v122 + 93) ^ 0x5D);
  v135 = *(STACK[0x8B0] + 8 * ((50 * v126) ^ LODWORD(STACK[0x840])));
  LODWORD(STACK[0x940]) = v127 + 16;
  LODWORD(STACK[0x314]) = v120 - 91;
  return v135(v117 - 92, v134, (v133 - 2270), v84 + 86);
}

uint64_t sub_100020F78(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  LODWORD(STACK[0x248]) = v8;
  LODWORD(STACK[0x24C]) = v13;
  LODWORD(STACK[0x250]) = a8;
  LODWORD(STACK[0x254]) = v18;
  LODWORD(STACK[0x258]) = v15;
  LODWORD(STACK[0x25C]) = a7;
  LODWORD(STACK[0x2B8]) = v19;
  LODWORD(STACK[0x260]) = v14;
  LODWORD(STACK[0x244]) = a4;
  LODWORD(STACK[0x2BC]) = a1;
  LODWORD(STACK[0x29C]) = v16;
  v21 = STACK[0x7A8];
  v22 = 0xFFFFFFFF00000000;
  if (LODWORD(STACK[0x950]) >= 0x5561D051)
  {
    v22 = 0;
  }

  v23 = v10 - v11 + v22;
  v24 = (((STACK[0x808] - ((2 * STACK[0x808]) & 0x86) + 37759) << ((LOBYTE(STACK[0x7A8]) ^ 0x80u) + 98)) - 0x3C000000000000) ^ 0x9343000000000000;
  v25 = (((LODWORD(STACK[0x828]) - ((2 * LODWORD(STACK[0x828])) & 0xCCCCCCCC) + 9) << 56) - 0x2300000000000000) ^ 0xE600000000000000;
  v26 = (v24 - ((2 * v24) & 0x5F80000000000000) - 0x103FD5641BDC7181) ^ 0xEFC02A9BE4238E7FLL | (v25 - ((2 * v25) & 0x2400000000000000) + 0x12E08D6064024F14) ^ 0x12E08D6064024F14;
  v27 = ((((LOBYTE(STACK[0x7F8]) - 102) - ((2 * (LODWORD(STACK[0x7F8]) - 102)) & 0x1F2u) + 4144391) << 40) - 0xE0000000000) ^ 0x3F3CF90000000000;
  v28 = (((LODWORD(STACK[0x818]) - ((2 * LODWORD(STACK[0x818])) & 0xBEu) - 1289282970) << 32) - 0x700000000) ^ 0xB3271A5F00000000;
  v29 = (v26 - ((2 * v26) & 0x80A0741F2E035B2CLL) - 0x3FAFC5F068FE526ALL) ^ 0xC0503A0F9701AD96 | (v27 - ((2 * v27) & 0xFFE9C0000000000) - 0x7800B1CFF3D4397BLL) ^ 0x87FF4E300C2BC685;
  v30 = (v29 - ((2 * v29) & 0x211A0A98D034202) + 0x108D054C681A101) ^ 0x108D054C681A101 | (v28 - ((2 * v28) & 0x3DED99A400000000) - 0x6109332D6214B7A8) ^ 0x9EF6CCD29DEB4858;
  v31 = (((STACK[0x7D8] - ((2 * STACK[0x7D8]) & 0x82)) << 24) - 0x74217ED0BF000000) ^ 0x8BDE812F41000000;
  v32 = v31 - ((2 * v31) & 0x1644150DF6000000) - 0x74DDF57904C7C48DLL;
  v33 = (((LODWORD(STACK[0x7C0]) - ((2 * LODWORD(STACK[0x7C0])) & 0xA2u) + 31605) << 48) - 0x24000000000000) ^ 0x7B51000000000000;
  v34 = (v30 - ((2 * v30) & 0x72FC947A987B969ALL) - 0x4681B5C2B3C234B3) ^ 0xB97E4A3D4C3DCB4DLL | v32 ^ 0x8B220A86FB383B73;
  v35 = ((((LOBYTE(STACK[0x820]) - 68) - ((2 * (LODWORD(STACK[0x820]) - 68)) & 0xC4)) << 16) - 0x16EEEBD8F29E0000) ^ 0xE91114270D620000;
  v36 = (v34 - ((2 * v34) & 0x13E74B888EDE99A0) + 0x9F3A5C4476F4CD0) ^ 0x9F3A5C4476F4CD0 | (v35 - ((2 * v35) & 0x7DAF5D25BCAE0000) + 0x7ED7AE92DE5710EFLL) ^ 0x7ED7AE92DE5710EFLL;
  v37 = (((STACK[0x800] - ((2 * STACK[0x800]) & 0x5ALL)) << 8) - 0x5E53CB15FFC5D300) ^ 0xA1AC34EA003A2D00;
  v38 = ((LOBYTE(STACK[0x5CC]) ^ 0x26u) - ((2 * (LODWORD(STACK[0x5CC]) ^ 0x26u)) & 0x13ELL) - 0x6BE8D2B61B2A8061) ^ (v37 - ((2 * v37) & 0x795686C896CC1400) - 0x4354BC9BB499F55FLL) ^ (v36 - ((2 * v36) & 0xD7E523E2862729FCLL) - 0x140D6E0EBCEC6B02);
  v39 = (((LODWORD(STACK[0x7B8]) - ((2 * LODWORD(STACK[0x7B8])) & 0x92u) + 237) << 56) - 0x2400000000000000) ^ 0xC900000000000000;
  v40 = (v33 - ((2 * v33) & 0xDE2000000000000) - 0x390E25AA68554317) ^ 0xC6F1DA5597AABCE9 | (v39 - (v39 >> 60 << 61) + 0x70022A787C2B81D7) ^ 0x70022A787C2B81D7;
  v41 = ((((v9 + 88) - ((2 * (v9 + 88)) & 0x184u) + 11219652) << 40) - 0x20000000000) ^ 0xAB32C20000000000;
  v42 = (((LODWORD(STACK[0x7E0]) - ((2 * LODWORD(STACK[0x7E0])) & 0x86u) - 1414152080) << 32) - 0x2D00000000) ^ 0xABB5C04300000000;
  v43 = (v41 - ((2 * v41) & 0x72A4060000000000) - 0x6ADFCF0AD921403) ^ 0xF952030F526DEBFDLL | (v40 - ((2 * v40) & 0x8266A95FC863C242) + 0x413354AFE431E121) ^ 0x413354AFE431E121;
  v44 = ((((v20 + 95) - ((2 * (v20 - 161)) & 0x6ALL)) << 24) - 0x603A8D14CB000000) ^ 0x9FC572EB35000000;
  v45 = (v42 - ((2 * v42) & 0x7748D67400000000) - 0x45B94C5AFD97944) ^ 0xFBA46B3A502686BCLL | (v43 - ((2 * v43) & 0x3B9D8D872D418FB6) - 0x6231393C695F3825) ^ 0x9DCEC6C396A0C7DBLL;
  v46 = (v44 - ((2 * v44) & 0x5FDCFCD9BA000000) + 0x2FEE7E6CDD0C0000) ^ 0x2FEE7E6CDD0C0000 | (v45 - ((2 * v45) & 0x5DBF0DC7EEEC0AF2) + 0x2EDF86E3F7760579) ^ 0x2EDF86E3F7760579;
  v47 = ((((v12 - 120) - ((2 * (v12 - 120)) & 0x1ALL)) << 8) - 0x2496A672FCA8F300) ^ 0xDB69598D03570D00;
  v48 = (((STACK[0x810] - ((2 * STACK[0x810]) & 0x188)) << 16) + 0xA434B8833C40000) ^ 0xA434B8833C40000;
  v49 = (v48 - ((2 * v48) & 0x3EBC3DF53F1C0000) + 0x1F5E1EFA9F8E6121) ^ 0x1F5E1EFA9F8E6121 | (v46 - ((2 * v46) & 0x8B13AF11FA93B49ELL) + 0x4589D788FD49DA4FLL) ^ 0x4589D788FD49DA4FLL;
  v50 = (v47 - ((2 * v47) & 0x41923550A3B31200) - 0x5F36E557AE26761ALL) ^ 0xA0C91AA851D989E6 | (v49 - ((2 * v49) & 0xC64AA2B8A57357CLL) - 0x79CDAAEA3AD46542) ^ 0x86325515C52B9ABELL;
  STACK[0x990] = v23;
  _Q0 = 0uLL;
  __asm
  {
    AESE            V1.16B, V0.16B
    AESMC           V1.16B, V1.16B
    AESIMC          V2.16B, V1.16B
    AESD            V2.16B, V0.16B
  }

  v60.i64[0] = (v50 - ((2 * v50) & 0x27BABBEED56B4F10) + 0x13DD5DF76AB5A788) ^ (v17 - ((2 * v17) & 0x1A0) - 0x7C759134A3301F30) ^ 0xE29F243EE42801DFLL;
  v60.i64[1] = (v38 ^ 0xCEB0756C11D6D006) + 0x2C14114800300104 + ((2 * v38) & 0xA7D7DD6FFF9FFDF8 ^ 0x22971527DC125DF0);
  v61 = vandq_s8(v60, xmmword_1004248E0);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(v60, vaddq_s64(v61, v61)), xmmword_1004248E0), xmmword_1004248E0);
  v63 = vandq_s8(v62, xmmword_1004248D0);
  STACK[0x730] = &STACK[0xAF0];
  *&STACK[0x610] = vaddq_s8(vsubq_s8(v62, vaddq_s8(v63, v63)), xmmword_1004248D0);
  v64 = *(STACK[0x8B0] + 8 * v21);
  LODWORD(STACK[0x59C]) = -1449486434;
  LODWORD(STACK[0x598]) = 1476203263;
  LODWORD(STACK[0x590]) = 1820135256;
  LODWORD(STACK[0x588]) = 2097728;
  LODWORD(STACK[0x580]) = -2003824378;
  LODWORD(STACK[0x578]) = -154271744;
  LODWORD(STACK[0x3CC]) = -81788928;
  LODWORD(STACK[0x888]) = 103;
  *&STACK[0x560] = xmmword_100424B30;
  *&STACK[0x550] = xmmword_100424B50;
  *&STACK[0x540] = xmmword_100424C00;
  *&STACK[0x530] = xmmword_100424C10;
  LODWORD(STACK[0x748]) = 59;
  STACK[0x8D8] = 59;
  LODWORD(STACK[0x264]) = 13;
  STACK[0x8F8] = 13;
  STACK[0x930] = 13;
  STACK[0x940] = 13;
  STACK[0x910] = 13;
  STACK[0x900] = 13;
  STACK[0x920] = 13;
  *&STACK[0x5E0] = xmmword_1004248D0;
  v65 = LODWORD(STACK[0x350]);
  v66 = LODWORD(STACK[0x340]);
  *&STACK[0x950] = xmmword_100424B90;
  return v64(&unk_100424000, &unk_100424000, &unk_100424000, &unk_100424000, &unk_100424000, v66, 0x34E92702EA06D296, v65, 0x9AC20D4120002052, 0x474008A1A58C2091, 0x653DF2BFDFFFDFAELL, 0xB8BFF75F5A73DF6FLL, 0xC0A31003D0846441, 0x4003C8120081861, 0x3F5CEFFD2F7B9BBFLL, 0xFBFFC37FDFF7E79FLL, 0x40A12A0601A1D275, 0x2C2ADAA1017FD3C7, 0xE45FDE081CE5439CLL, 0x44D67F19F99D489, 0xE9EE8FC93D176FE9, 0x240054CA5E547E8BLL, 0xB297F3F90B6916B9, 0x1B3DA4C37365DE56, 0x1482C24205100242, 0x1010488C181280BLL, 0xC7CE58FE9DD5E4B2, 0x48282D972AC7069ELL, 0x3831A701622A1B4DLL, 0xB7D7D268D538F961, 0xEB7D3DBEFAEFFDBELL, 0xFEFEFB783E7ED7F5, 0xB150BFC60C8A1444, 0xA117A55F5A51A2AFLL, 0x88882A626B311CFFLL, 0x7F209E73AC9CE297, 0x7FFDC5FB2EDA49CALL, 0xD7D519DEDE883458, 0x1551E8B2E3BE7D00, 0x36436BA8BC78E7FDLL, 0xB7FD6DB7D3CDB100, 0x6391A56BA7DDA3EFLL, 0x2D6D1B78224F4A73, 0x682E6D31081C2813, 0xF075565075B0551, 0x794B712D4317750BLL, 0x9655AFD1EE632DAELL, 0xBF5F0863533914A6, 0xF713DD01F75E7FFALL, 0x3493D50119BBEFF9, 0x5A2D8278F665E9FALL, 0x5FE95E27642F755ALL, 0xBA8FF2FCB730F9DBLL, 0x7183DCDAEAA5BC3);
}

uint64_t sub_100021C20(int a1, int a2, int8x16_t a3, int8x16_t a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, int32x4_t a11, int8x16_t a12, int32x4_t a13, int8x16_t a14, int8x16_t a15, int32x4_t a16, int32x4_t a17, int32x4_t a18, int32x4_t a19, int8x16_t a20, int32x4_t a21, int8x16_t a22, int8x16_t a23, int8x16_t a24, int8x16_t a25, int8x16_t a26, int8x16_t a27, int8x16_t a28, int8x16_t a29, int8x16_t a30, int8x16_t a31, int64x2_t a32, int8x16_t a33, int8x16_t a34, int64x2_t a35)
{
  STACK[0x8F0] = v40;
  LODWORD(STACK[0x2C0]) = a2;
  LODWORD(STACK[0x2C4]) = a1;
  LODWORD(STACK[0x2C8]) = v36;
  LODWORD(STACK[0x2CC]) = a6;
  LODWORD(STACK[0x2D0]) = v42;
  LODWORD(STACK[0x2D4]) = v39;
  LODWORD(STACK[0x828]) = v38;
  LODWORD(STACK[0x338]) = v44;
  LODWORD(STACK[0x340]) = a8;
  v45 = STACK[0x248];
  v46 = LODWORD(STACK[0x260]) - 23 * LODWORD(STACK[0x248]) - 73;
  LODWORD(STACK[0x260]) = v46;
  v47 = LODWORD(STACK[0x24C]) + 59 * v46;
  LODWORD(STACK[0x758]) = v47;
  v48 = v47 - 53;
  v49 = STACK[0x2AC];
  LODWORD(STACK[0x24C]) = v48;
  v50 = v49 - 119 * v48;
  LODWORD(STACK[0x740]) = v50;
  v51 = (4 * v40) ^ 0x5D7Cu;
  v50 += 65;
  LODWORD(STACK[0x2AC]) = v50;
  v52 = LODWORD(STACK[0x250]) + v50 * (v51 - 55);
  LODWORD(STACK[0x890]) = v52;
  v53 = v52 - 99;
  v54 = STACK[0x2A4];
  LODWORD(STACK[0x250]) = v53;
  v55 = v54 + 113 * v53;
  LODWORD(STACK[0x8A8]) = v55;
  v55 -= 106;
  LODWORD(STACK[0x2A4]) = v55;
  v56 = LODWORD(STACK[0x254]) + 79 * v55;
  LODWORD(STACK[0x898]) = v56;
  v57 = v56 + 76;
  v58 = STACK[0x258];
  LODWORD(STACK[0x254]) = v57;
  v59 = v58 - 47 * v57;
  LODWORD(STACK[0x8C0]) = v59;
  v60 = v59 - 38;
  v61 = LODWORD(STACK[0x320]) - (v59 - 38);
  LODWORD(STACK[0x258]) = v60;
  v62 = v61 + (v60 << 6);
  LODWORD(STACK[0x8B8]) = v62;
  v63 = v62 + 24;
  v64 = STACK[0x328];
  LODWORD(STACK[0x320]) = v63;
  v65 = v64 + 109 * v63;
  LODWORD(STACK[0x8C8]) = v65;
  v65 += 45;
  LODWORD(STACK[0x328]) = v65;
  v66 = LODWORD(STACK[0x25C]) - 73 * v65;
  LODWORD(STACK[0x8D0]) = v66;
  v66 += 58;
  LODWORD(STACK[0x25C]) = v66;
  v67 = v37 + 97 * v66;
  LODWORD(STACK[0x8E0]) = v67;
  v68 = a10 - 99 * v67 + 86;
  v69 = v43 - 107 * v68 - 122;
  LODWORD(STACK[0x348]) = v69;
  v70 = LODWORD(STACK[0x2B0]) - 127 * v69 - 92;
  LODWORD(STACK[0x2B0]) = v70;
  v71 = LODWORD(STACK[0x2A8]) - 121 * v70;
  LODWORD(STACK[0x8E8]) = v71;
  v72 = (LODWORD(STACK[0x5C8]) ^ 0x1D) + 117 * v71 + 820;
  v73 = v72 - ((2 * v72) & 0x3A) + 29;
  v74 = LODWORD(STACK[0x5B0]) ^ 0xFFFFFFC1;
  LODWORD(STACK[0x5C8]) = v73;
  v75 = v73 ^ 0x1D;
  v76 = 2 * (v73 ^ 0x1D);
  v77 = v74 + (v76 & 0x5C) + ((-127 * (v73 ^ 0x1D)) ^ 0x2E) - 46;
  v78 = v77 - ((2 * v77) & 0xFFFFFF83) - 63;
  LODWORD(STACK[0x5B0]) = v78;
  v78 ^= 0xFFFFFFC1;
  v79 = LODWORD(STACK[0x310]) + ((110 * v78) & v35) + ((55 * v78) ^ 0xFFFFFFB9);
  v80 = LODWORD(STACK[0x31C]) ^ 0xFFFFFFA0;
  LODWORD(STACK[0x8A0]) = v79;
  v81 = v80 - 5 * v79 - 271 - ((2 * (v80 - 5 * v79 - 271)) & 0x40) - 96;
  LODWORD(STACK[0x31C]) = v81;
  v82 = ((-98 * (v81 ^ 0xFFFFFFA0)) & 0xFFFFFFCF) + ((-49 * (v81 ^ 0xFFFFFFA0)) ^ 0x67) - 103;
  v83 = v82 + (LODWORD(STACK[0x5B4]) ^ 0x6C) - ((2 * (v82 + (LODWORD(STACK[0x5B4]) ^ 0x6C))) & 0xFFFFFFD8) + 108;
  LODWORD(STACK[0x5B4]) = v83;
  v84 = v83 ^ 0x6C;
  v85 = LODWORD(STACK[0x318]) + ((-15 * (v83 ^ 0x6C)) ^ 0x65) + ((-30 * (v83 ^ 0x6C)) & 0xFFFFFFCA);
  v86 = LODWORD(STACK[0x5C0]) ^ 0xFFFFFF90;
  LODWORD(STACK[0x318]) = v85 - 101;
  v87 = v86 + 119 * (v85 - 101) + 46 - ((2 * (v86 + 119 * (v85 - 101) + 46)) & 0x20) - 112;
  LODWORD(STACK[0x5C0]) = v87;
  v88 = v87 ^ 0xFFFFFF90;
  v89 = (LODWORD(STACK[0x5CC]) ^ 0x26) + ((-110 * (v87 ^ 0xFFFFFF90)) & 0xFFFFFF92) + ((73 * (v87 ^ 0xFFFFFF90)) ^ 0x49) - 73;
  v90 = v89 - ((2 * v89) & 0x4C) + 38;
  LODWORD(STACK[0x5CC]) = v90;
  v91 = v90 ^ 0x26;
  v92 = (LODWORD(STACK[0x5C4]) ^ 0xFFFFFF93) + ((38 * (v90 ^ 0x26)) & 0x7A) + ((-45 * (v90 ^ 0x26)) ^ 0xFFFFFFBD) + 67;
  v93 = v92 - ((2 * v92) & 0x26) - 109;
  LODWORD(STACK[0x5C4]) = v93;
  v94 = v93 ^ 0xFFFFFF93;
  v95 = ((18 * (v93 ^ 0xFFFFFF93)) & 0xFFFFFFDA) + (LODWORD(STACK[0x5AC]) ^ 0xFFFFFFE9) + ((-119 * (v93 ^ 0xFFFFFF93)) ^ 0xFFFFFFED);
  v96 = v95 - ((2 * v95 + 38) & 0xFFFFFFD2) - 4;
  LODWORD(STACK[0x5AC]) = v96;
  v97 = LODWORD(STACK[0x2B8]) + ((38 * (v96 ^ 0xFFFFFFE9)) & 0xFFFFFFE8) + ((-109 * (v96 ^ 0xFFFFFFE9)) ^ 0xFFFFFFF4);
  v98 = (LODWORD(STACK[0x5BC]) ^ 0xFFFFFF8C) - 95 * v97;
  LODWORD(STACK[0x710]) = v97;
  v99 = v98 - 1262 - ((2 * (v98 - 1262)) & 0x18) - 116;
  LODWORD(STACK[0x5BC]) = v99;
  v100 = v99 ^ 0xFFFFFF8C;
  v101 = LODWORD(STACK[0x2BC]) + ((-63 * (v99 ^ 0xFFFFFF8C)) ^ 0x7E) + ((-126 * (v99 ^ 0xFFFFFF8C)) & 0xFFFFFFFC) - 126;
  v102 = (LODWORD(STACK[0x5B8]) ^ 0xFFFFFFFD) - 97 * v101 + 37;
  v103 = v102 + (~(2 * v102) | 5) - 2;
  LODWORD(STACK[0x5B8]) = v103;
  v104 = v103 ^ 0xFFFFFFFD;
  v105 = LODWORD(STACK[0x314]) + ((-74 * (v103 ^ 0xFFFFFFFD)) & 0xFFFFFFD6) + ((91 * (v103 ^ 0xFFFFFFFD)) ^ 0xFFFFFFEB);
  LODWORD(STACK[0x708]) = v105;
  v106 = (LODWORD(STACK[0x5A8]) ^ 0x5D) + 103 * v105 + 2248;
  v107 = v106 + (~(2 * v106) | 0x45) + 94;
  LODWORD(STACK[0x5A8]) = v107;
  v108 = (v76 & 6) + ((-87 * v75) ^ 0xFFFFFF83) + 125;
  v109 = (((v108 - ((2 * v108) & 0x2E) + 35) << 56) - 0xC00000000000000) ^ 0x1700000000000000;
  v110 = ((90 * v78) & 0xFFFFFFAE) + ((-83 * v78) ^ 0xFFFFFFD7) + 41;
  v111 = (((v110 - ((2 * v110) & 0x132) + 55462) << 48) - 0xD000000000000) ^ 0xD899000000000000;
  v112 = (v111 - 0x20CF52ADA2116AB4 - ((2 * v111) & 0x3E60000000000000)) ^ 0xDF30AD525DEE954CLL | (v109 + 0x325EE6E51FFF279BLL + (~(2 * v109) | 0x9BFFFFFFFFFFFFFFLL) + 1) ^ 0x325EE6E51FFF279BLL;
  v113 = ((((25 * v79 + 75) - ((2 * (25 * v79 + 1867)) & 0x138) + 3628491) << 40) - 0x2F0000000000) ^ 0x375D9C0000000000;
  v114 = (v112 - 0x33F3C7A7E47B2FF1 - ((2 * v112) & 0x981870B03709A01ELL)) ^ 0xCC0C38581B84D00FLL | (v113 + 0x299AB226A39BE326 - ((2 * v113) & 0x5335640000000000)) ^ 0x299AB226A39BE326;
  v115 = (((v82 - ((2 * v82) & 0x86) + 1263686989) << 32) - 0xA00000000) ^ 0x4B52554300000000;
  v116 = 19 * v85 - 1817;
  v117 = STACK[0x8B0];
  v118 = (((v116 - ((2 * v116) & 0x28)) << 16) - 0x7E93F6091AEC0000) ^ 0x816C09F6E5140000;
  v119 = ((((((6 * v88) & 0x76) + ((3 * v88) ^ 0xBB) + 69) - ((2 * (((6 * v88) & 0x76) + ((3 * v88) ^ 0xBB) + 69)) & 0xCELL)) << 8) + 0x4FD255187B9D6700) ^ 0x4FD255187B9D6700;
  v120 = (v115 + 0x48D7AB6A6C3FBBCDLL - ((2 * v115) & 0x11AF56D400000000)) ^ 0x48D7AB6A6C3FBBCDLL | (v114 + 0x3CC88DABF82CB576 - ((2 * v114) & 0x79911B57F0596AECLL)) ^ 0x3CC88DABF82CB576;
  v121 = (v118 + 0x15D7D1847B606219 - ((2 * v118) & 0x2BAFA308F6C00000)) ^ 0x15D7D1847B606219 | (v120 + 0x1992F3EA2F4BE7AFLL - ((2 * v120) & 0x3325E7D45E97CF5ELL)) ^ 0x1992F3EA2F4BE7AFLL;
  v122 = (v119 + 0x188512C2C87A13F2 - ((2 * v119) & 0x310A258590F42600)) ^ 0x188512C2C87A13F2 | (v121 + 0x2B70174A2226367BLL - ((2 * v121) & 0x56E02E94444C6CF6)) ^ 0x2B70174A2226367BLL;
  v123 = ((114 * (v96 ^ 0xFFFFFFE9)) & 0xFFFFFFF7) + ((57 * (v96 ^ 0xFFFFFFE9)) ^ 0xFFFFFFFB) + 5;
  v124 = (((v123 - ((2 * v123) & 0xE2) + 23419) << 48) - 0xA000000000000) ^ 0x5B71000000000000;
  v125 = v124 - 0x6798027A94D81A13 - ((2 * v124) & 0x30CE000000000000);
  v126 = ((((-54 * v84) & 0xBE) + ((-27 * v84) ^ 0x5F) - 95) << 24) - (((((-54 * v84) & 0xBE) + ((-27 * v84) ^ 0x5F) - 95) << 25) & 0x12000000);
  v127 = ((((69 * v97 - 102) - 2 * ((69 * v97 - 102) & 0x1Fu) + 10878265) << 40) - 0x1A0000000000) ^ 0xA5FD1F0000000000;
  v128 = ((82 * v94) & 0xFFFFFFDF) + ((41 * v94) ^ 0xFFFFFFEF) + 17;
  v125 ^= 0x9867FD856B27E5EDLL;
  v129 = v125 | (((((v128 - ((2 * v128) & 0x30) + 183) << 56) - 0x1EE23433691B5E62) ^ 0x9800000000000000) - 55) & 0xFF00000000000000;
  v130 = (v129 - 0x54967294AC97F4B4 - 2 * (v129 & 0x2B698D6B53680B6ELL ^ v125 & 0x22)) ^ 0xAB698D6B53680B4CLL | (v127 + 0x55556924CF86F4AELL - ((2 * v127) & 0x2AAAD20000000000)) ^ 0x55556924CF86F4AELL;
  LODWORD(STACK[0x2BC]) = v101;
  v131 = ((((67 * v101 - 15) - ((2 * (67 * v101 - 15)) & 0x4CLL)) << 24) + 0x744EEEB326000000) ^ 0x744EEEB326000000;
  v132 = ((((((-30 * v100) & 0xD6) + ((113 * v100) ^ 0xEB) + 21) - ((2 * (((-30 * v100) & 0xFFFFFFD6) + ((113 * v100) ^ 0xFFFFFFEB) + 21)) & 0x166) + 1547356915) << 32) - 0x4000000000) ^ 0x5C3ACAB300000000;
  v133 = LODWORD(STACK[0x348]);
  v134 = (v130 + 0x35E1F364FE4AB70CLL - ((2 * v130) & 0x6BC3E6C9FC956E18)) ^ 0x35E1F364FE4AB70CLL | (v132 - 0x421D8883E4668485 - ((2 * v132) & 0x7BC4EEF800000000)) ^ 0xBDE2777C1B997B7BLL;
  v135 = (v134 - 0x43E49F0AFA7B0119 - ((2 * v134) & 0x7836C1EA0B09FDCELL)) ^ 0xBC1B60F50584FEE7 | (v131 - 0x7FF64EAB575A113DLL - ((2 * v131) & 0x1362A950000000)) ^ 0x8009B154A8A5EEC3;
  v136 = ((((85 * v104) - ((170 * v104) & 0x1C0)) << 16) - 0x6A2030AEF200000) ^ 0xF95DFCF510E00000;
  v137 = STACK[0x708];
  v138 = ((((99 * v137 - 24) - ((2 * (99 * v137 + 2024)) & 0x68)) << 8) - 0x1588BA347CC3CC00) ^ 0xEA7745CB833C3400;
  v139 = (v135 - 0x43C7D82DE7B997ADLL - ((2 * v135) & 0x78704FA4308CD0A6)) ^ 0xBC3827D218466853 | (v136 + 0x12ABCBFB35A2DE3BLL - ((2 * v136) & 0x255797F66B440000)) ^ 0x12ABCBFB35A2DE3BLL;
  LODWORD(v136) = ((-77 * (v107 ^ 0x5D)) ^ 0x7F) + 102 * (v107 ^ 0x5D) - 127;
  v140 = (v136 + 0x1A0D831E6D5A273ELL - ((2 * v136) & 0x7CLL)) ^ 0x1A0D831E6D5A273ELL | (v138 - 0x3B285797E2FFF391 - ((2 * v138) & 0x9AF50D03A001800)) ^ 0xC4D7A8681D000C6FLL;
  v141 = (2 * v140) & 0x454308976FE6D216;
  v142 = (v140 - v141 - 0x5D5E7BB4480C96F5) ^ (v139 - ((2 * v139) & 0x80826DCDE15D7B32) - 0x3FBEC9190F514267);
  v143 = ((((-78 * v91) & 0x9C) + ((-39 * v91) ^ 0xCE) + 50) - ((2 * (((-78 * v91) & 0x9C) + ((-39 * v91) ^ 0xCEu) + 50)) & 0xA4) + 0x67834A0EADF3C852) ^ (v126 - 0x6A93DB38F6E500DCLL) ^ (v122 - ((2 * v122) & 0x7D92C756A5BA8114) + 0x3EC963AB52DD408ALL);
  v144.i64[0] = (v142 ^ 0x395F659298E3F8ACLL) - 0x5BBFD73FDFBE2C3ELL + ((2 * v142) & 0xB77FAE7FBF7C587CLL ^ 0x8541245A8E380824);
  v144.i64[1] = (v143 ^ 0x73C9F69517990883) + 0x401004081E528081 + ((2 * v143) & 0x7FDFF7EFC35AFEFELL ^ 0x184C12C5C048EEF8);
  LODWORD(v126) = v45 + ((18 * (v107 ^ 0x5D)) & 0xFFFFFF8F) + ((-119 * (v107 ^ 0x5D)) ^ 0xFFFFFFC7) + 57;
  LODWORD(STACK[0x248]) = v126;
  v145 = (((-9 - 87 * v126 - ((2 * (-9 - 87 * v126)) & 0x66666666u) + 225) << 56) - 0x2E00000000000000) ^ 0xB300000000000000;
  v146 = ((((-114 - 49 * LOBYTE(STACK[0x740])) - ((2 * (-3186 - 49 * LODWORD(STACK[0x740]))) & 0x17Eu) + 677299149) << 32) - 0xE00000000) ^ 0x285EC3BF00000000;
  v147 = ((((-99 - 83 * LOBYTE(STACK[0x260])) - ((2 * (-99 - 83 * LODWORD(STACK[0x260]))) & 0xEAu) + 58006) << 48) - 0x21000000000000) ^ 0xE275000000000000;
  v148 = ((((25 * LOBYTE(STACK[0x758]) + 36) - ((2 * (25 * LODWORD(STACK[0x758]) - 1244)) & 0x18Au) + 1539582) << 40) - 0x390000000000) ^ 0x177DC50000000000;
  v149 = (v145 + 0x38303176BB14EFBBLL - ((2 * v145) & 0x7000000000000000)) ^ 0x38303176BB14EFBBLL | (v147 - 0xA31ED4FF2A5EBECLL - ((2 * v147) & 0x6B9C000000000000)) ^ 0xF5CE12B00D5A1414;
  v150 = ((((-27 * LOBYTE(STACK[0x890]) + 127) - ((2 * (-27 * LODWORD(STACK[0x890]) + 2687)) & 0x1ECLL)) << 24) + 0x700AF7E1F6000000) ^ 0x700AF7E1F6000000;
  v151 = (v149 - 0x2452BD89FDDF39D8 - ((2 * v149) & 0xB75A84EC04418C50)) ^ 0xDBAD42760220C628 | (v148 - 0x60C8CBE1B64D906CLL - ((2 * v148) & 0x3E6E680000000000)) ^ 0x9F37341E49B26F94;
  v152 = (v151 + 0x6754CC5DF0E6C373 - ((2 * v151) & 0xCEA998BBE1CD86E6)) ^ 0x6754CC5DF0E6C373 | (v150 - 0x3CD6A3F179550CE7 - ((2 * v150) & 0x652B81D0C000000)) ^ 0xC3295C0E86AAF319;
  v153 = (v152 + 0x68816E686628B21ALL - ((2 * v152) & 0xD102DCD0CC516434)) ^ 0x68816E686628B21ALL | (v146 - 0x4E2A626C537AFD4 - ((2 * v146) & 0x763AB3B200000000)) ^ 0xFB1D59D93AC8502CLL;
  v154 = v153 - 0x2D825060729141D8 - ((2 * v153) & 0xA4FB5F3F1ADD7C50);
  v155 = ((((3 * LOBYTE(STACK[0x898]) + 18) - ((2 * (3 * LODWORD(STACK[0x898]) + 274)) & 0xD6)) << 8) + 0x16C8CA5E63516B00) ^ 0x16C8CA5E63516B00;
  v156 = v155 - 0x72FC0B98F8937C95 - ((2 * v155) & 0x1A07E8CE0ED90600);
  v157 = ((((19 * LOBYTE(STACK[0x8A8]) + 62) - ((2 * (19 * LODWORD(STACK[0x8A8]) - 1986)) & 0x1EELL)) << 16) - 0x4B76B1F46D090000) ^ 0xB4894E0B92F70000;
  v158 = (v154 ^ 0xD27DAF9F8D6EBE28 | v156 ^ 0x8D03F467076C836BLL) - ((2 * (v154 ^ 0xD27DAF9F8D6EBE28 | v156 ^ 0x8D03F467076C836BLL)) & 0xDF5BEC5C172912C2);
  v159 = (((41 * LODWORD(STACK[0x8B8]) + 961 - ((2 * (41 * LODWORD(STACK[0x8B8]) + 961)) & 0xD2u) + 238) << 56) - 0x500000000000000) ^ 0xE900000000000000;
  v160 = v159 - 0x202858CCF5E7CC08 - ((2 * v159) & 0xBFFFFFFFFFFFFFFFLL);
  v161 = (114 - 39 * LOBYTE(STACK[0x8C0])) - ((2 * (1394 - 39 * LODWORD(STACK[0x8C0]))) & 0x1B2);
  v162 = ((((57 * LOBYTE(STACK[0x8C8]) + 107) - ((2 * (57 * LODWORD(STACK[0x8C8]) + 2667)) & 0x40u) + 22322) << 48) - 0x12000000000000) ^ 0x5720000000000000;
  v163 = (v162 - 0x3293B2302E5C5F3DLL - ((2 * v162) & 0x1AD8000000000000)) ^ 0xCD6C4DCFD1A3A0C3 | v160 ^ 0xDFD7A7330A1833F8;
  v164 = ((((69 * LOBYTE(STACK[0x8D0]) - 40) - ((2 * (69 * LODWORD(STACK[0x8D0]) + 4056)) & 0x17Cu) + 6283208) << 40) - 0xA0000000000) ^ 0x5FDFBE0000000000;
  v165 = (v163 - 0x1DA9593E382BE3F9 - ((2 * v163) & 0xC4AD4D838FA8380ELL)) ^ 0xE256A6C1C7D41C07 | (v164 + 0x1659CE9809343570 + (~(2 * v164) | 0xD34C63FFFFFFFFFFLL) + 1) ^ 0x1659CE9809343570;
  v166 = LODWORD(STACK[0x8E0]);
  v167 = ((((113 * v166 - 18) - ((2 * (113 * v166 - 274)) & 0x156u) + 341936832) << 32) - 0x1500000000) ^ 0x14618AAB00000000;
  LODWORD(STACK[0x350]) = v68;
  v168 = ((((67 * v68 + 74) - ((2 * (67 * v68 + 74)) & 0x1F6)) << 24) - 0x1C6D5B9005000000) ^ 0xE392A46FFB000000;
  v169 = (v165 + 0x7493944AA5F031AFLL - ((2 * v165) & 0xE92728954BE0635ELL)) ^ 0x7493944AA5F031AFLL | (v167 + 0x6294A947B35F8CE6 - ((2 * v167) & 0x4529528E00000000)) ^ 0x6294A947B35F8CE6;
  v170 = (v169 - 0x1760B969A45557F7 - ((2 * v169) & 0xD13E8D2CB7555012)) ^ 0xE89F46965BAAA809 | (v168 - 0x4E0871B6B19C919 - ((2 * v168) & 0x763EF1C928000000)) ^ 0xFB1F78E494E636E7;
  v171 = ((((85 * v133 + 116) - ((2 * (85 * v133 + 116)) & 0x16)) << 16) - 0x72C7771131F50000) ^ 0x8D3888EECE0B0000;
  v172 = (v170 - 0x44AE703D3855FC03 - ((2 * v170) & 0x76A31F858F5407FALL)) ^ 0xBB518FC2C7AA03FDLL | (v171 + 0x81D5AE3EC2F581ALL - ((2 * v171) & 0x103AB5C7D85E0000)) ^ 0x81D5AE3EC2F581ALL;
  v173 = ((((99 * LOBYTE(STACK[0x2B0]) - 29) - ((2 * (99 * LODWORD(STACK[0x2B0]) - 29)) & 0xB4)) << 8) + 0x2F4F0F1B554F5A00) ^ 0x2F4F0F1B554F5A00;
  v174 = (-77 * LODWORD(STACK[0x8E8]) + 108);
  v175 = (v173 - ((2 * v173) & 0x6703634393DEC00) - 0x3CC7E4E5E361094CLL) ^ (v174 - ((2 * (-77 * LODWORD(STACK[0x8E8]) - 660)) & 0xEALL) - 0x118EC4C2527B278BLL) ^ (v172 - ((2 * v172) & 0xA23B4F84EAD50184) - 0x2EE2583D8A957F3ELL);
  v176 = (v157 - ((2 * v157) & 0x54E5C49A03760000) + 0x2A72E24D01BB525DLL) ^ (v161 + 0x557F34B5E3A68ED9) ^ (v158 + 0x6FADF62E0B948961);
  v177.i64[0] = (v175 ^ 0xBBA9F8B6B38F75F8) - 0x47FD7F5377FFDBFBLL + ((2 * v175) & 0x8FFAFEA6EFFFB7F6 ^ 0x88A80E8288E11406);
  v177.i64[1] = (v176 ^ 0xEF0D39E106D0661BLL) + 0x52E6C810A6CC02 + ((2 * v176) & 0xFF5A326FDEB267FCLL ^ 0x2140002DD21223C8);
  v178 = vandq_s8(v144, a35);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(v144, vaddq_s64(v178, v178)), a35), a35);
  v180 = vandq_s8(v179, a34);
  _Q6 = veorq_s8(veorq_s8(*&STACK[0x610], a33), vaddq_s8(vsubq_s8(v179, vaddq_s8(v180, v180)), a34));
  __asm
  {
    AESIMC          V6.16B, V6.16B
    AESIMC          V6.16B, V6.16B
    AESIMC          V6.16B, V6.16B
    AESIMC          V6.16B, V6.16B
  }

  v190 = vandq_s8(_Q6, a4);
  v191 = vsubq_s8(_Q6, vaddq_s8(v190, v190));
  v192 = vandq_s8(v177, a32);
  v193 = vaddq_s64(vsubq_s64(v177, vaddq_s64(v192, v192)), a32);
  v194 = veorq_s8(v193, a32);
  v195 = vandq_s8(v194, a31);
  v196 = vmlaq_s8(a28, veorq_s8(veorq_s8(*&STACK[0x5E0], a30), vaddq_s8(vsubq_s8(v194, vaddq_s8(v195, v195)), a31)), a29);
  v197 = vextq_s8(v196, v196, 0xFuLL);
  v198 = vextq_s8(vmlaq_s8(a26, v197, a27), a3, 1uLL);
  v199 = vandq_s8(v198, a25);
  v200 = vsubq_s8(v198, vaddq_s8(v199, v199));
  v199.i64[0] = 0x5858585858585858;
  v199.i64[1] = 0x5858585858585858;
  _Q6.i64[0] = 0xC9C9C9C9C9C9C9C9;
  _Q6.i64[1] = 0xC9C9C9C9C9C9C9C9;
  v201 = vextq_s8(a3, vmlaq_s8(v199, v197, _Q6), 1uLL);
  v202 = vandq_s8(v201, a24);
  v203 = vsubq_s8(v201, vaddq_s8(v202, v202));
  v204 = vandq_s8(v194, a21);
  v205 = vsubq_s32(v194, vaddq_s32(v204, v204));
  v206 = vandq_s8(v194, a22);
  v207 = vaddq_s32(vaddq_s32(vaddq_s32(veorq_s8(v193, a23), vaddq_s32(v206, v206)), a19), veorq_s8(vaddq_s32(v205, a21), a20));
  v208 = vandq_s8(v207, a18);
  v209 = vsubq_s32(v207, vaddq_s32(v208, v208));
  v210 = veorq_s8(vaddq_s8(v203, a24), a24);
  v211 = vandq_s8(v210, a17);
  v212 = vsubq_s32(v210, vaddq_s32(v211, v211));
  v213 = vaddq_s8(v200, a25);
  v214 = vandq_s8(veorq_s8(vaddq_s32(v212, a17), a17), veorq_s8(vaddq_s32(v209, a18), a18));
  v215 = vandq_s8(v214, a16);
  v216 = vsubq_s32(v214, vaddq_s32(v215, v215));
  v217 = vandq_s8(veorq_s8(v213, a25), a14);
  v218 = vaddq_s32(vaddq_s32(vaddq_s32(veorq_s8(v213, a15), vaddq_s32(v217, v217)), a13), veorq_s8(vaddq_s32(v216, a16), a16));
  v219 = veorq_s8(v218, a12);
  v220 = vandq_s8(v218, a12);
  v221 = vaddq_s32(vaddq_s32(v219, a11), vaddq_s32(v220, v220));
  v222 = vandq_s8(v221, a4);
  LODWORD(STACK[0x2A8]) = LODWORD(STACK[0x8E8]) + 7;
  LODWORD(STACK[0x310]) = LODWORD(STACK[0x8A0]) + 71;
  LODWORD(STACK[0x2B8]) = LODWORD(STACK[0x710]) + 12;
  LODWORD(STACK[0x314]) = v137 + 21;
  *&STACK[0x610] = vaddq_s8(v191, a4);
  v223 = *(v117 + 8 * STACK[0x8F0]);
  *&STACK[0x5E0] = vaddq_s8(vsubq_s8(v221, vaddq_s8(v222, v222)), a4);
  LODWORD(STACK[0x400]) = STACK[0x760];
  LODWORD(STACK[0x3F8]) = STACK[0x768];
  STACK[0x8E8] = LODWORD(STACK[0x728]);
  LODWORD(STACK[0x3F0]) = STACK[0x770];
  LODWORD(STACK[0x3E8]) = STACK[0x778];
  LODWORD(STACK[0x8C8]) = STACK[0x6C0];
  LODWORD(STACK[0x3E0]) = STACK[0x780];
  STACK[0x8F0] = LODWORD(STACK[0x520]);
  LODWORD(STACK[0x3D8]) = STACK[0x790];
  LODWORD(STACK[0x758]) = STACK[0x518];
  STACK[0x8E0] = LODWORD(STACK[0x6A8]);
  LODWORD(STACK[0x3D4]) = STACK[0x788];
  LODWORD(STACK[0x3D0]) = STACK[0x7C0];
  LODWORD(STACK[0x358]) = STACK[0x798];
  LODWORD(STACK[0x740]) = STACK[0x510];
  LODWORD(STACK[0x30C]) = STACK[0x7A0];
  LODWORD(STACK[0x308]) = STACK[0x7A8];
  LODWORD(STACK[0x304]) = STACK[0x7B0];
  LODWORD(STACK[0x300]) = STACK[0x7B8];
  LODWORD(STACK[0x2FC]) = STACK[0x818];
  LODWORD(STACK[0x2F8]) = STACK[0x7D8];
  LODWORD(STACK[0x2F0]) = STACK[0x7E0];
  LODWORD(STACK[0x5D0]) = v41;
  LODWORD(STACK[0x2EC]) = STACK[0x7F8];
  LODWORD(STACK[0x2E8]) = STACK[0x800];
  LODWORD(STACK[0x2E4]) = STACK[0x808];
  LODWORD(STACK[0x2E0]) = STACK[0x810];
  LODWORD(STACK[0x8D0]) = 39;
  return v223(v174, v166, 234, v133, v51, -589824, a9, v141, a11.i64[0], a11.i64[1], a12.i64[0], a12.i64[1], a13.i64[0], a13.i64[1], a14.i64[0], a14.i64[1], a15.i64[0], a15.i64[1], a16.i64[0], a16.i64[1], a17.i64[0], a17.i64[1], a18.i64[0], a18.i64[1], a19.i64[0], a19.i64[1], a20.i64[0], a20.i64[1], a21.i64[0], a21.i64[1], a22.i64[0], a22.i64[1], a23.i64[0], a23.i64[1], a24.i64[0], a24.i64[1], a25.i64[0], a25.i64[1], a26.i64[0], a26.i64[1], a27.i64[0], a27.i64[1], a28.i64[0], a28.i64[1], a29.i64[0], a29.i64[1], a30.i64[0], a30.i64[1], a31.i64[0], a31.i64[1], a32.i64[0], a32.i64[1], a33.i64[0], a33.i64[1], a34.i64[0]);
}

uint64_t sub_100023614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = STACK[0x990] - 0x475BCA23DA06A31CLL;
  v10 = (8 * ((v9 ^ 4) - ((2 * v9) & ((a5 ^ 0x79) - 59))) + 14) & (53 * (a5 ^ 0x79) - 105) ^ 0x28;
  v11 = v9 - ((2 * v9) & 0xE4EEC4076F62AE10) - 0xD889DFC484EA8F8;
  v12 = v11 >> 8;
  v13 = ((((v11 << 56) ^ 0x800000000000000) - ((v11 << 57) & 0x4A00000000000000) + 0x257B293F629086DFLL) & 0xF800000000000000 | (v11 >> 8)) ^ 0x20F2776203B7B157;
  v14 = (v13 - 0x15ACD0EC284184E4 - 2 * (v13 & 0x68532F13D7BE7B3CLL ^ v12 & 0x20)) ^ 0xEA532F13D7BE7B1CLL;
  v15 = v14 - ((2 * v14 + 0x65616341D67C2B0ELL) & 0x76A103270C5833A2) + 0x2E013334716A2F58;
  *(&v16 + 1) = v15 ^ 0xFA;
  *&v16 = v15 ^ 0xEF17B7E61A527400;
  v17 = (v15 ^ 0x7A923AE143A2D8C1) + ((v16 >> 8) ^ 0x76FFDBABFF7F736FLL) + ((2 * (v16 >> 8)) & 0xEDFFB757FEFEE6DELL) - 0x76FFDBABFF7F736FLL;
  v18 = v17 - ((2 * v17) & 0x4C60B682DB585D12) + 0x26305B416DAC2E89;
  *(&v16 + 1) = v15 ^ 0x1A923AE143A2D8C1;
  *&v16 = v15 ^ 0x6000000000000000;
  v19 = v18 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0x1111D7ADCE5264FELL) + 0x888EBD6E729327FLL);
  *(&v16 + 1) = v18 ^ 0x50;
  *&v16 = v18 ^ 0x5743C476F655A100;
  v20 = v16 >> 8;
  *(&v16 + 1) = v19 ^ 0x1FCB2FA0117C932FLL;
  *&v16 = v19 ^ 0x4000000000000000;
  v21 = (v19 ^ 0x5FCB2FA0117C932FLL) + (v20 ^ 0xFFFFFFEB3F197FDALL) + ((2 * v20) & 0xFFFFFFD67E32FFB4) + 0x14C0E68026;
  v22 = v21 - ((2 * v21) & 0x4CB4919CAA76A302) + 0x265A48CE553B5181;
  v23 = v22 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0xFE6C94028F6DBE06) + 0x7F364A0147B6DF03);
  *(&v16 + 1) = v23 ^ 0x7B61217FA306AF7;
  *&v16 = v23 ^ 0x2000000000000000;
  v24 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0x6677889818899D2) + 0x333BC44C0C44CE9;
  *(&v16 + 1) = v22 ^ 0xF4;
  *&v16 = v22 ^ 0x58805816BD86B500;
  v25 = (v23 ^ 0x27B61217FA306AF7) + ((v16 >> 8) ^ 0xDF9EF99ABA7D71BFLL) + ((2 * (v16 >> 8)) & 0xBF3DF33574FAE37ELL) + 0x2061066545828E41;
  v26 = v25 - ((2 * v25) & 0xAE4395F81B070468) + 0x5721CAFC0D838234;
  v27 = v26 ^ v24;
  *(&v16 + 1) = v26 ^ 0x92;
  *&v16 = v26 ^ 0x9C3E1BF90499F700;
  v28 = (v26 ^ v24 ^ 0x9F0DA7BDC45DBB7BLL) + ((v16 >> 8) ^ 0x5EFEF6DDDEF7FB37) + ((2 * (v16 >> 8)) & 0xBDFDEDBBBDEFF66ELL) - 0x5EFEF6DDDEF7FB37;
  *(&v16 + 1) = v27 ^ 0x1F0DA7BDC45DBB7BLL;
  *&v16 = v27 ^ 0x8000000000000000;
  v29 = v28 - ((2 * v28) & 0xEC82A5D630F81020) - 0x9BEAD14E783F7F0;
  v30 = v29 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0xE7F04B3B3A9B6718) + 0x73F8259D9D4DB38CLL);
  *(&v16 + 1) = v29 ^ 0xD9;
  *&v16 = v29 ^ 0x76E27A9F9BC8CF00;
  v31 = (v30 ^ 0x51A5F0206857C55) + ((v16 >> 8) ^ 0x277F7DEB1A64FEDFLL) + ((2 * (v16 >> 8)) & 0x4EFEFBD634C9FDBELL) - 0x277F7DEB1A64FEDFLL;
  v32 = v31 - ((2 * v31) & 0x33EBE9255A661CF0) + 0x19F5F492AD330E78;
  *(&v16 + 1) = v30 ^ 0x51A5F0206857C55;
  *&v16 = v30;
  v33 = v32 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0xDE15DE389F813B06) - 0x10F510E3B03F627DLL);
  *(&v16 + 1) = v32 ^ 3;
  *&v16 = v32 ^ 0x9C97312250151F00;
  v34 = (v33 ^ 0x739DDE3E1FD58280) + ((v16 >> 8) ^ 0xAD7B6C9EFB39FF57) + ((2 * (v16 >> 8)) & 0x5AF6D93DF673FEAELL) + 0x5284936104C600A9;
  v35 = v34 - ((2 * v34) & 0xDECE74E34A2D8E16) + 0x6F673A71A516C70BLL;
  *(&v16 + 1) = v33 ^ 0x139DDE3E1FD58280;
  *&v16 = v33 ^ 0x6000000000000000;
  v36 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0xAB3B521AA6E1DF22) + 0x559DA90D5370EF91;
  *(&v16 + 1) = v35 ^ 0x78;
  *&v16 = v35 ^ 0xF89256C15E20DD00;
  v37 = (v36 ^ 0xAD0FFFCC0D5032E9 ^ v35) + ((v16 >> 8) ^ 0xABBAFDBFF156361FLL) + ((2 * (v16 >> 8)) & 0x5775FB7FE2AC6C3ELL) + 0x544502400EA9C9E1;
  v38 = ((v37 - ((2 * v37) & 0xC34216A0890ECDCLL) - 0x79E5EF4AFBB78992) ^ 0x7E033AC0EFB084F0uLL) >> v10;
  *(&v16 + 1) = (LODWORD(STACK[0x990]) - 968153620 - ((2 * (LODWORD(STACK[0x990]) + 637099244)) & 0x40A39254) + 42) & 0xF8 ^ 0x28u;
  *&v16 = (STACK[0x990] + 0x51420FBBC64B25ECLL - ((2 * (STACK[0x990] - 0x475BCA23DA06A314)) & 0x313BB3BF40A39254) + 42) ^ 0x989DD9DFA051C900;
  v39 = v38 - 0x5A7939D3837A1158 - ((2 * v38) & 0x4B0D8C58F90BDD50);
  v40 = ((2 * (v16 >> 8)) & 0x60B5625EDF2DFF56) + ((v16 >> 8) ^ 0x375AB12F6F96FFABLL);
  v41 = v40 - ((2 * v40 + 0x76AC00E2F74E2BB8) & 0x5F3E59F8B18E49ACLL);
  *(&v16 + 1) = (v41 - 730973518) ^ 0xFFFFFFFD;
  *&v16 = (v41 + 0x6AF52D6DD46E3AB2) ^ 0x7BD81A89C4B94900;
  v42 = ((v41 + 0x6AF52D6DD46E3AB2) ^ 0xEE5D978E9D49E5C6) + ((v16 >> 8) ^ 0xFE1CDBDF1BFEDD3ELL) + ((2 * (v16 >> 8)) & 0xFC39B7BE37FDBA7CLL) + 0x1E32420E40122C2;
  *(&v16 + 1) = (v41 + 0x6AF52D6DD46E3AB2) ^ 0xE5D978E9D49E5C6;
  *&v16 = 0x950AD2922B91C54DLL - v41;
  v43 = v42 - ((2 * v42) & 0xF26770176A0CDA96) - 0x6CC47F44AF992B5;
  v44 = v43 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0x1C4CA47D984C49CLL) - 0x7F1D9ADC133D9DB2);
  *(&v16 + 1) = v43 ^ 0x92;
  *&v16 = v43 ^ 0x8840273C2EFFE200;
  v45 = (v44 ^ 0x8A2421FC23D80DCLL) + ((v16 >> 8) ^ 0xF5F6DDBBEBCBFFFDLL) + ((2 * (v16 >> 8)) & 0xEBEDBB77D797FFFALL) + 0xA09224414340003;
  v46 = v45 - ((2 * v45) & 0x3A8AEF4630F22FCLL) - 0x7E2BA885CE786E82;
  *(&v16 + 1) = v44 ^ 0x8A2421FC23D80DCLL;
  *&v16 = v44;
  v47 = v46 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0xDA548B0DAE9D12CLL) - 0x792D5BA7928B176ALL);
  *(&v16 + 1) = v46 ^ 0xB;
  *&v16 = v46 ^ 0xFF0E47A2D93A7500;
  v48 = (v47 ^ 0x79DCE3FAB44E9D9DLL) + ((v16 >> 8) ^ 0xDBE6E7DFFB373FFDLL) + ((2 * (v16 >> 8)) & 0xB7CDCFBFF66E7FFALL) + 0x2419182004C8C003;
  v49 = v48 - ((2 * v48) & 0x9216EB250392FB1ELL) + 0x490B759281C97D8FLL;
  *(&v16 + 1) = v47 ^ 0x19DCE3FAB44E9D9DLL;
  *&v16 = v47 ^ 0x6000000000000000;
  v50 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0x48A7021A6CDD5DE4) - 0x5BAC7EF2C991510ELL;
  *(&v16 + 1) = v49 ^ 0x29;
  *&v16 = v49 ^ 0x8214A49788D30800;
  v51 = v49 ^ v50;
  v52 = (v51 ^ 0x2647259ABEBDA6DBLL) + ((v16 >> 8) ^ 0xFF2F77AF7D3DBABFLL) + ((2 * (v16 >> 8)) & 0xFE5EEF5EFA7B757ELL) + 0xD0885082C24541;
  v53 = v52 - ((2 * v52) & 0x896F68E50F6B7062) + 0x44B7B47287B5B831;
  *(&v16 + 1) = v51 ^ 0x647259ABEBDA6DBLL;
  *&v16 = v51 ^ 0x2000000000000000;
  v54 = v53 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0x185A3F64B3D62378) + 0xC2D1FB259EB11BCLL);
  *(&v16 + 1) = v53 ^ 0xF8;
  *&v16 = v53 ^ 0xC4149C0604017F00;
  v55 = v16 >> 8;
  *(&v16 + 1) = v54 ^ 0x83983B45DEA6E44;
  *&v16 = v54 ^ 0xC000000000000000;
  v56 = (v54 ^ 0xC83983B45DEA6E44) + (v55 ^ 0x7F76D9EFA7DCFF6FLL) + ((2 * v55) & 0xFEEDB3DF4FB9FEDELL) - 0x7F76D9EFA7DCFF6FLL;
  v57 = v56 - ((2 * v56) & 0x3E03E7BE23A5B018) + 0x1F01F3DF11D2D80CLL;
  v58 = v57 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0x30DF4BC389AC8086) - 0x67905A1E3B29BFBDLL);
  v59 = ((v57 << 56) ^ 0x7700000000000000) + 0x1AC99F2C8BB48AE6 - ((2 * ((v57 << 56) ^ 0x7700000000000000)) & 0x3400000000000000);
  v60 = ((v57 >> 8) ^ 0x9A63366FECF4C9) + (v58 ^ 0x20C938E28228934);
  *(&v16 + 1) = v58 ^ 0x20C938E28228934;
  *&v16 = v58;
  v61 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0x3DFF0FC4AD61EFCCLL) - 0x6100781DA94F081ALL;
  v62 = (v60 ^ 0xEC74FF9ECEBBFFE3) + ((2 * v60) & 0xD8E9FF3D9D77FFC6) + (v59 ^ 0x1AC99F2C8BB48AE6);
  v63 = (2 * v62 + 0x271600C26288003ALL) & 0x29160FCAA5AEA500;
  v62 -= 0x57E9F7B97BE4AD63;
  v64 = v62 - v63;
  *(&v16 + 1) = v62 ^ 0xFFFFFFF3;
  *&v16 = v64 ^ 0x37E6B55A9E14800;
  v65 = (v61 ^ 0x9D81ECB7FF51BF15 ^ v64) + ((v16 >> 8) ^ 0x1CF2EB7FBFFF7EF5) + ((2 * (v16 >> 8)) & 0x39E5D6FF7FFEFDEALL) - 0x1CF2EB7FBFFF7EF5;
  v66 = (v65 - ((2 * v65) & 0x385B744C702E776) + 0x1C2DBA2638173BBLL) ^ 0xF9DBF1D788798125;
  v67 = (v66 >> v10) + 0x7E3A797B891C6F70 - ((2 * (v66 >> v10)) & 0xFC74F2F71238DEE0);
  LOBYTE(v65) = 58 - v10;
  v68 = ((((v66 << (58 - v10)) - ((2 * (v66 << (58 - v10))) & 0x32DFDB6180344E0)) << 6) + 0x65BFB6C300689C00) ^ 0x65BFB6C300689C00;
  v69 = ((v68 - 0x3D00DDF11CBBF848 - ((2 * v68) & 0x85FE441DC6880F00)) ^ 0xC2FF220EE34407B8) + (v39 ^ 0xA586C62C7C85EEA8);
  v70 = v69 - ((2 * v69) & 0xF5D084AD59A82332) + 0x7AE84256ACD41199;
  v71 = STACK[0x990] - 0x475BCA23DA06A30CLL - ((2 * (STACK[0x990] - 0x475BCA23DA06A30CLL)) & 0x59FCF255767EC698) - 0x530186D544C09CB4;
  v72 = ((((v71 << 56) ^ 0x4C00000000000000) - ((2 * ((v71 << 56) ^ 0x4C00000000000000)) & 0xBC00000000000000) + 0x5E8E7B0683D63C29) & 0xF800000000000000 | (v71 >> 8)) ^ 0x58ACFE792ABB3F63;
  v73 = (v72 - 0x556B94C7B2653C58 - ((2 * v72) & 0x5128D6709B358750)) ^ 0xAA946B384D9AC3A8;
  v74 = v73 - ((2 * v73 + 0x65616341D67C2B0ELL) & 0x40D54E24701FDF52);
  v75 = (((((v74 - 0x6CE4A74CDCB1FAD0) << 56) ^ 0x8200000000000000) - 0x1684FB5FE5A4A5A2 - (((v74 - 0x6CE4A74CDCB1FAD0) << 57) & 0xD200000000000000)) ^ 0xE97B04A01A5B5A5ELL) + ((v74 - 0x6CE4A74CDCB1FAD0) ^ 0xE1A81C60FD812EB9);
  v76 = (((v74 - 0x6CE4A74CDCB1FAD0) >> 8) ^ 0x742D9167A47182) + (v75 ^ 0x3FA57DF75D7F7CBFLL) + ((2 * v75) & 0x7F4AFBEEBAFEF97ELL) - 0x3FA57DF75D7F7CBFLL;
  *(&v16 + 1) = (v74 - 0x6CE4A74CDCB1FAD0) ^ 0x1A81C60FD812EB9;
  *&v16 = 0x6CE4A74CDCB1FACFLL - v74;
  v77 = v76 - ((2 * v76) & 0x2A18E20A7F49E2BCLL) + 0x150C71053FA4F15ELL;
  v78 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0x3D604A3848D7E662) - 0x614FDAE3DB940CCFLL;
  *(&v16 + 1) = v77 ^ 0xFFFFFF87;
  *&v16 = v77 ^ 0x647FEE32A45D7E00;
  v79 = (v77 ^ v78 ^ 0xFACFCB2E80368DB6) + ((v16 >> 8) ^ 0x1FEBF73FBF6FBBFDLL) + ((2 * (v16 >> 8)) & 0x3FD7EE7F7EDF77FALL) - 0x1FEBF73FBF6FBBFDLL;
  v80 = v79 - ((2 * v79) & 0x47390297EC6AF092) - 0x5C637EB409CA87B7;
  *(&v16 + 1) = v77 ^ v78 ^ 0x1ACFCB2E80368DB6;
  *&v16 = v77 ^ ~v78;
  v81 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0x7D29607D44C7BAF0) + 0x3E94B03EA263DD78;
  v82 = v80 ^ v81;
  *(&v16 + 1) = v80 ^ 0x3C;
  *&v16 = v80 ^ 0xDD4691931E889C00;
  v83 = v16 >> 8;
  *(&v16 + 1) = v80 ^ v81 ^ 0x3D221ADBCEB4144;
  *&v16 = v80 ^ ~v81;
  v84 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0x1C0020FAA8BE347CLL) - 0x71FFEF82ABA0E5C2;
  v85 = (v82 ^ 0xE3D221ADBCEB4144) + (v83 ^ 0x3EFECDC4FFEA39E7) + ((2 * v83) & 0x7DFD9B89FFD473CELL) - 0x3EFECDC4FFEA39E7;
  v86 = v85 - ((2 * v85) & 0x687E76CF60B42AB8) - 0x4BC0C4984FA5EAA4;
  *(&v16 + 1) = v86 ^ 0xFA;
  *&v16 = v86 ^ 0x7F20EA62B9406000;
  v87 = (v86 ^ v84 ^ 0xF120FA1FED1F7AC4) + ((v16 >> 8) ^ 0x4DE3BBDFBFFDFC75) + ((2 * (v16 >> 8)) & 0x9BC777BF7FFBF8EALL) - 0x4DE3BBDFBFFDFC75;
  v88 = v87 - ((2 * v87) & 0xF8E3FE730BEC3BB6) + 0x7C71FF3985F61DDBLL;
  *(&v16 + 1) = v86 ^ v84 ^ 0x1120FA1FED1F7AC4;
  *&v16 = v86 ^ ~v84;
  v89 = v88 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0xF15024633CE3078ELL) + 0x78A812319E7183C7);
  *(&v16 + 1) = v88 ^ 0x12;
  *&v16 = v88 ^ 0xFCD2D74D0642DA00;
  v90 = (v89 ^ 0x847AC57C983359D5) + ((v16 >> 8) ^ 0x9F5EBDDF3CFDF4DELL) + ((2 * (v16 >> 8)) & 0x3EBD7BBE79FBE9BCLL) + 0x60A14220C3020B22;
  *(&v16 + 1) = v89 ^ 0x47AC57C983359D5;
  *&v16 = v89 ^ 0x8000000000000000;
  v91 = v90 - ((2 * v90) & 0xB5D30D747ACC8EE6) - 0x25167945C299B88DLL;
  v92 = v91 ^ ((v16 >> 61) - ((2 * (v16 >> 61)) & 0xB3C4482158578364) + 0x59E22410AC2BC1B2);
  *(&v16 + 1) = v91 ^ 8;
  *&v16 = v91 ^ 0x5F8B430AC0405600;
  v93 = (v92 ^ 0x669671A6C6B97BALL) + ((v16 >> 8) ^ 0x7934EBCBCFEFF7AELL) + ((2 * (v16 >> 8)) & 0xF269D7979FDFEF5CLL) - 0x7934EBCBCFEFF7AELL;
  v94 = v93 - ((2 * v93) & 0x8867AEBE3D8C586) - 0x7BBCC28A0E139D3DLL;
  *(&v16 + 1) = v92 ^ 0x669671A6C6B97BALL;
  *&v16 = v92;
  v95 = (v16 >> 61) - ((2 * (v16 >> 61)) & 0xF1E6489B4BB5F6EALL) + 0x78F3244DA5DAFB75;
  *(&v16 + 1) = v94 ^ 0xB0;
  *&v16 = v94 ^ 0x13B651C50ADA7800;
  v96 = (v95 ^ 0x6B457588AF0083C5 ^ v94) + ((v16 >> 8) ^ 0xEAECE3FFDEE9F7DFLL) + ((2 * (v16 >> 8)) & 0xD5D9C7FFBDD3EFBELL) + 0x15131C0021160821;
  LODWORD(STACK[0x8C0]) = (v70 >> 8) ^ 0x16;
  v97 = ((((((v96 - ((2 * v96) & 0xCACA6619A24B3B2CLL) + 0x6565330CD1259D96) ^ 0x657C19793ADD6F08) << v65) - ((2 * (((v96 - ((2 * v96) & 0xCACA6619A24B3B2CLL) + 0x6565330CD1259D96) ^ 0x657C19793ADD6F08) << v65)) & 0x1679A62C1D4C298)) << 6) + 0x2CF34C583A9853C0) ^ 0x2CF34C583A9853C0;
  LODWORD(STACK[0x690]) = v39 ^ 0xFFFFFF89;
  LODWORD(STACK[0x670]) = HIDWORD(v70) ^ 0xFFFFFFAF;
  v98 = ((v97 + 0x6F8596BDF494A8B1 - ((2 * v97) & 0xDF0B2D7BE9295100)) ^ 0x6F8596BDF494A8B1) + (v67 ^ 0x7E3A797B891C6F70);
  v99 = v98 - ((2 * v98) & 0x363BDBA2BFC1D9AELL) + 0x1B1DEDD15FE0ECD7;
  LODWORD(STACK[0x6A0]) = (v70 >> 40) ^ 0xB;
  LODWORD(STACK[0x668]) = HIBYTE(v70) ^ 0xFFFFFFAE;
  LODWORD(STACK[0x8B8]) = HIWORD(v70) ^ 0xFFFFFFD4;
  LODWORD(STACK[0x678]) = (v99 >> 16) ^ 0x5E;
  LODWORD(STACK[0x8A8]) = (v70 >> 24) ^ 0xFFFFFF94;
  LODWORD(STACK[0x688]) = HIWORD(v99) ^ 0xFFFFFF8D;
  LODWORD(STACK[0x680]) = (v70 >> 16) ^ 0xFFFFFFA2;
  LODWORD(STACK[0x698]) = HIBYTE(v99) ^ v6;
  LODWORD(STACK[0x660]) = v67 ^ 0x45;
  v100 = *(v8 + 8 * (a5 ^ (8 * (v5 == 36))));
  LODWORD(STACK[0x658]) = (v99 >> 40) ^ 0xFFFFFF82;
  LODWORD(STACK[0x8A0]) = (v99 >> 8) ^ 0x13;
  LODWORD(STACK[0x898]) = (v99 >> 24) ^ 0xFFFFFFDB;
  LODWORD(STACK[0x890]) = HIDWORD(v99) ^ 0x55;
  LODWORD(STACK[0x888]) = v7;
  return v100();
}

uint64_t sub_100024E94(double a1, double a2, double a3, int8x16_t a4)
{
  LODWORD(STACK[0x828]) = v5;
  LODWORD(STACK[0x888]) = v7;
  LODWORD(STACK[0x330]) = v4;
  LODWORD(STACK[0x348]) = v8;
  STACK[0x818] = v6;
  STACK[0x8F0] = (v6 + 7383);
  v10 = STACK[0x990];
  v11 = *(STACK[0x990] - 0x475BCA23DA06A31BLL);
  LODWORD(STACK[0x920]) = v11 - ((2 * v11) & 0xFFFFFF83);
  v12 = *(v10 - 0x475BCA23DA06A318);
  LODWORD(STACK[0x930]) = v12 - ((2 * v12) & 0x1D8);
  v13 = *(v10 - 0x475BCA23DA06A316);
  LODWORD(STACK[0x910]) = v13 - ((2 * v13) & 0x20);
  v14 = *(v10 - 0x475BCA23DA06A319);
  v15 = *(v10 - 0x475BCA23DA06A31CLL);
  v16 = *(v10 - 0x475BCA23DA06A31ALL);
  v17 = *(v10 - 0x475BCA23DA06A30FLL);
  v18 = *(v10 - 0x475BCA23DA06A317);
  v19 = *(v10 - 0x475BCA23DA06A310);
  v20 = *(v10 - 0x475BCA23DA06A314);
  v21 = (((v11 - ((2 * v11) & 0x8Cu) + 37984) << 48) - 0x1A000000000000) ^ 0x9446000000000000;
  v22 = v21 + 0x2D60E15238BEC93 - ((2 * v21) & 0x5AC000000000000);
  v23 = *(v10 - 0x475BCA23DA06A313);
  v24 = (((v16 - ((2 * v16) & 0x188u) + 4042715) << 40) - 0x170000000000) ^ 0x3DAFC40000000000;
  v25 = v24 - 0x10155330BDBF5AC0 - ((2 * v24) & 0x5FD5580000000000);
  LODWORD(v24) = *(v10 - 0x475BCA23DA06A312);
  v26 = *(v10 - 0x475BCA23DA06A30DLL);
  v27 = *(v10 - 0x475BCA23DA06A30ELL);
  v28 = *(v10 - 0x475BCA23DA06A311);
  v29 = (((v15 - ((2 * v15) & 0x60u) + 81) << 56) - 0x2100000000000000) ^ 0x3000000000000000;
  v30 = (v29 + 0x66C068440E64300ELL - ((2 * v29) & 0xCCCCCCCCCCCCCCCCLL)) ^ 0x66C068440E64300ELL | v22 ^ 0x2D60E15238BEC93;
  v31 = (((v14 - ((2 * v14) & 0x130u) - 1598627913) << 32) - 0x1F00000000) ^ 0xA0B6DF9800000000;
  v32 = (v30 + 0x6FD4CBAD17830729 - ((2 * v30) & 0xDFA9975A2F060E52)) ^ 0x6FD4CBAD17830729 | v25 ^ 0xEFEAACCF4240A540;
  v33 = (v32 + 0x4D63B54AC77B53FALL - ((2 * v32) & 0x9AC76A958EF6A7F4)) ^ 0x4D63B54AC77B53FALL | (v31 + 0x45B5EC07F9A608FCLL - ((2 * v31) & 0xB6BD80E00000000)) ^ 0x45B5EC07F9A608FCLL;
  v34 = (((v18 - ((2 * v18) & 0xEEEEEEEEEEEEEEEELL)) << 16) - 0x3AE4E92D38890000) ^ 0xC51B16D2C7770000;
  v35 = (((v12 - ((2 * v12) & 0x46)) << 24) - 0x4DF9B5A2DD000000) ^ 0xB2064A5D23000000;
  v36 = (v33 - 0x642B8ADBA452490ELL - ((2 * v33) & 0x37A8EA48B75B6DE4)) ^ 0x9BD475245BADB6F2 | (v35 + 0x2023A3DAF249C30CLL - ((2 * v35) & 0x404747B5E4000000)) ^ 0x2023A3DAF249C30CLL;
  v37 = (v36 + 0x7E6A86C70EBB2C7DLL - ((2 * v36) & 0xFCD50D8E1D7658FALL)) ^ 0x7E6A86C70EBB2C7DLL | (v34 - 0x319B58BAA3BB405BLL - ((2 * v34) & 0x1CC94E8AB8880000)) ^ 0xCE64A7455C44BFA5;
  v38 = v37 - ((2 * v37) & 0x5D0A4CD4BDA6E696);
  v39 = (((v13 - ((2 * v13) & 0x9A)) << 8) - 0x1A26AFB83D0DB300) ^ 0xE5D95047C2F24D00;
  v40 = (((v24 - ((2 * v24) & 0x11A) + 7048648) << 40) - 0x3B0000000000) ^ 0x6B8D8D0000000000;
  v41 = (((0xFFFF000000000000 * v23 - 0x1201000000000000) ^ 0xEDFF000000000000) + 0x7F8F495B28AFE20ALL - ((2 * ((0xFFFF000000000000 * v23 - 0x1201000000000000) ^ 0xEDFF000000000000)) & 0xFF1FFFFFFFFFFFFFLL)) ^ 0x7F8F495B28AFE20ALL | (0x87F2DF71437662E1 - ((v20 & 7) << 57) + ((((v20 - ((2 * v20) & 0xD0u) + 32) << 56) - 0x3800000000000000) ^ 0xE800000000000000)) ^ 0x87F2DF71437662E1;
  v42 = v41 - 0x5110A4BEEADE992CLL - ((2 * v41) & 0x5DDEB6822A42CDA8);
  v43 = (((v19 - ((2 * v19) & 0xCE)) << 24) + 0x5FE813D967000000) ^ 0x5FE813D967000000;
  v44 = v42 ^ 0xAEEF5B41152166D4 | (v40 - 0xA92E2DD21E973D3 - ((2 * v40) & 0x6ADA3A0000000000)) ^ 0xF56D1D22DE168C2DLL;
  v45 = (v44 - 0xC3945073474CFA3 - ((2 * v44) & 0xE78D75F1971660BALL)) ^ 0xF3C6BAF8CB8B305DLL | (v43 + 0x615ABF02C30A92F2 - ((2 * v43) & 0x42B57E0586000000)) ^ 0x615ABF02C30A92F2;
  v46 = (((v28 - ((2 * v28) & 0x142u) - 529413424) << 32) - 0x2F00000000) ^ 0xE071CAA100000000;
  v47 = (v45 + 0x3476FF14E9846515 - ((2 * v45) & 0x68EDFE29D308CA2ALL)) ^ 0x3476FF14E9846515 | (v46 - 0x533C834C2251C517 - ((2 * v46) & 0x5986F96600000000)) ^ 0xACC37CB3DDAE3AE9;
  v48 = (((v17 - ((2 * v17) & 0x46)) << 16) - 0x3012CFEF50DD0000) ^ 0xCFED3010AF230000;
  v49 = (v47 + 0x11D047DD1B499D4BLL - ((2 * v47) & 0x23A08FBA36933A96)) ^ 0x11D047DD1B499D4BLL | (v48 - 0x24720E549EAAB2C2 - ((2 * v48) & 0x371BE356C2AA0000)) ^ 0xDB8DF1AB61554D3ELL;
  v50 = (((v27 - ((2 * v27) & 0x3A)) << 8) - 0x61AA85B3DCD8E300) ^ 0x9E557A4C23271D00;
  v51 = *(v10 - 0x475BCA23DA06A315);
  v52 = (v26 - ((2 * v26) & 0x18C) - 0x43CFA1E5FFF90B3ALL) ^ (v50 - ((2 * v50) & 0x2C2A851BE1DE0A00) - 0x69EABD720F10FA08) ^ 0x78135ACF698A0D79 ^ (v49 - ((2 * v49) & 0xA46C8CB132C7F88ELL) + 0x523646589963FC47);
  v53.i64[0] = (v52 + 0x2F8669093FE694A5 - ((2 * v52) & 0x5F0CD2127FCD294ALL)) ^ 0x2F8669093FE694A5;
  v53.i64[1] = (v51 - ((2 * v51) & 0x18A) + 0x229A2CA7964D15C5) ^ (v39 - ((2 * v39) & 0x17C202BB46A2C000) - 0x341EFEA25CAE9FCELL) ^ 0x47FE0B906BCF06BCLL ^ (v38 - 0x517AD995A12C8CB5);
  v54 = vandq_s8(v53, xmmword_100424AA0);
  STACK[0x920] = (LODWORD(STACK[0x920]) - 63);
  LODWORD(STACK[0x718]) = LODWORD(STACK[0x930]) + 108;
  STACK[0x930] = (LODWORD(STACK[0x910]) - 112);
  LODWORD(STACK[0x720]) = v14 - ((2 * v14) & 0x40) - 96;
  LODWORD(STACK[0x728]) = v15 - ((2 * v15) & 0x3A) + 29;
  LODWORD(STACK[0x6A8]) = v51 - ((2 * v51) & 0x4C) + 38;
  LODWORD(STACK[0x820]) = (v16 ^ 0xFFFFFFD5) + ((2 * v16) & 0x1AA) + 111;
  STACK[0x910] = v17 - ((2 * v17) & 0xFFFFFFFB) - 3;
  LODWORD(STACK[0x830]) = (v18 ^ 0x3F) + 2 * (v18 & 0x3F) - 1;
  LODWORD(STACK[0x510]) = v19 + 69;
  LODWORD(STACK[0x6B0]) = v20 - ((2 * v20) & 0x26) - 109;
  v55 = veorq_s8(vaddq_s64(vsubq_s64(v53, vaddq_s64(v54, v54)), xmmword_100424AA0), xmmword_100424AA0);
  STACK[0x900] = v23 - ((2 * v23) & 0x1D2) - 23;
  v56 = vandq_s8(v55, xmmword_100424AB0);
  LODWORD(STACK[0x518]) = v24 + 58;
  LODWORD(STACK[0x520]) = v26 + (~(2 * v26) | 0x45) + 94;
  LODWORD(STACK[0x6C0]) = (v27 ^ 0xFFFFFFDF) + ((2 * v27) & 0xFFFFFFBF) + 62;
  LODWORD(STACK[0x6B8]) = v28 - ((2 * v28) & 0x18) - 116;
  v57 = *(v9 + 8 * STACK[0x818]);
  LODWORD(STACK[0x73C]) = 85;
  return v57(veorq_s8(veorq_s8(a4, xmmword_100424AB0), vaddq_s8(vsubq_s8(v55, vaddq_s8(v56, v56)), xmmword_100424AB0)));
}

uint64_t sub_100025E68(double a1, double a2, double a3, __n128 a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x6B0]) = v12;
  LODWORD(STACK[0x828]) = v10;
  LODWORD(STACK[0x2B4]) = a8;
  LODWORD(STACK[0x330]) = v8;
  LODWORD(STACK[0x348]) = v11;
  v13 = *&STACK[0x5E0];
  v14 = HIBYTE(*&STACK[0x5E0]);
  STACK[0x818] = v9;
  STACK[0x728] = (v9 - 2586) | 0x1420u;
  LODWORD(STACK[0x810]) = (v14 ^ 0xFFFFFF8B) - (((v14 ^ 0xFFFFFF8B) & 0x7E ^ v14 & 4) << (((v9 - 26) | 0x20) - 111));
  LODWORD(STACK[0x808]) = (BYTE14(v13) ^ 0xFFFFFFCC) - ((2 * (BYTE14(v13) ^ 0xFFFFFFCC)) & 0xFFFFFFE4);
  LODWORD(STACK[0x800]) = (BYTE12(v13) ^ 0x62) + ((2 * ((BYTE12(v13) ^ 0x62 | 0x79) ^ BYTE12(v13))) ^ 0xFFFFFFC9);
  LODWORD(STACK[0x7F8]) = (BYTE11(v13) ^ 0x4A) + (~(2 * BYTE11(v13)) | 0xFFFFFFFD);
  LODWORD(STACK[0x7E0]) = (BYTE9(v13) ^ 0xFFFFFFFB) + (~(2 * (BYTE9(v13) ^ 0xFFFFFFFB)) | 0xFFFFFF8F);
  LODWORD(STACK[0x7D8]) = (BYTE10(v13) ^ 2) + ((2 * BYTE10(v13)) & 0xFFFC ^ 0xFFFFFFFB);
  LODWORD(STACK[0x7C0]) = (BYTE8(v13) ^ 0x5F) - ((2 * (BYTE8(v13) ^ 0x5F)) & 0xFFFFFFAE);
  LODWORD(STACK[0x7B8]) = (BYTE7(v13) ^ 0x61) - ((2 * BYTE7(v13)) & 0x18);
  LODWORD(STACK[0x7B0]) = (BYTE6(v13) ^ 0x46) - 2 * ((BYTE6(v13) ^ 0x46) & 0xF ^ BYTE6(v13) & 8);
  LODWORD(STACK[0x7A8]) = (BYTE5(v13) ^ 0x72) - 2 * ((BYTE5(v13) ^ 0x72) & 0x17 ^ BYTE5(v13) & 1);
  LODWORD(STACK[0x7A0]) = (BYTE3(v13) ^ 0x19) - ((2 * (BYTE3(v13) ^ 0x19)) & 0xFFFFFFBF);
  LODWORD(STACK[0x798]) = (BYTE4(v13) ^ 0xFFFFFFD0) - ((2 * (BYTE4(v13) ^ 0xFFFFFFD0)) & 0xFFFFFFAC);
  LODWORD(STACK[0x790]) = (BYTE1(v13) ^ 0x52) - ((2 * (BYTE1(v13) ^ 0x52)) & 0x4E);
  LODWORD(STACK[0x788]) = (BYTE2(v13) ^ 0x3D) - 2 * ((BYTE2(v13) ^ 0x3D) & 0x5B ^ BYTE2(v13) & 2);
  LODWORD(STACK[0x778]) = (v13 ^ 0x54) - ((2 * (v13 ^ 0x54)) & 0xFFFFFFA0);
  v15 = (a4.n128_u8[15] ^ 0x8B) - ((2 * (a4.n128_u8[15] ^ 0x8B)) & 0xCA) + 101;
  LODWORD(STACK[0x780]) = -(v15 ^ 0x8E);
  v16 = (a4.n128_u8[14] ^ 0xFFFFFFCC) + ~(2 * ((a4.n128_u8[14] ^ 0xFFFFFFCC) & 0x37 ^ a4.n128_u8[14] & 2)) - 74;
  LODWORD(STACK[0x770]) = (v16 ^ 0xA082877C) - ((2 * (v16 ^ 0x5E)) & 0x1BA);
  v17 = (a4.n128_u8[13] ^ 0xFFFFFFDD) + (~(2 * (a4.n128_u8[13] ^ 0xFFFFFFDD)) | 0xFFFFFFEF) + 9;
  LODWORD(STACK[0x768]) = (v17 ^ 0x920804E5) - ((2 * (v17 ^ 0xE3)) & 0x1F2);
  LODWORD(STACK[0x760]) = -(((a4.n128_u8[12] ^ 0x62) - 2 * ((a4.n128_u8[12] ^ 0x62) & 0x25 ^ a4.n128_u8[12] & 5) + 32) ^ 0xCB);
  v18 = (a4.n128_u8[11] ^ 0x4A) - ((2 * (a4.n128_u8[11] ^ 0x4A)) & 0xFFFFFF8F) + 71;
  LODWORD(STACK[0x708]) = (v18 ^ 0xC00602A8) - ((2 * (v18 ^ 0xAC)) & 0x1F6);
  v19 = (a4.n128_u8[10] ^ 0xFFFFFF82) - 2 * ((a4.n128_u8[10] ^ 0xFFFFFF82) & 0x3F) + 63;
  v20 = (a4.n128_u8[9] ^ 0xFFFFFFFB) - ((2 * (a4.n128_u8[9] ^ 0xFFFFFFFB)) & 0x5A) - 83;
  v21 = ((2 * (((a4.n128_u8[8] ^ 0x5F) + (~(2 * (a4.n128_u8[8] ^ 0x5F)) | 0x35) + 102) ^ 0x8E)) & 0x1BA) + (((a4.n128_u8[8] ^ 0x5F) + (~(2 * (a4.n128_u8[8] ^ 0x5F)) | 0x35) + 102) ^ 0x4F134E53);
  v22 = (a4.n128_u8[7] ^ 0x61) + ~(2 * ((a4.n128_u8[7] ^ 0x61) & 0x68 ^ a4.n128_u8[7] & 8)) + 97;
  v23 = (a4.n128_u8[6] ^ 0x46) - 2 * ((a4.n128_u8[6] ^ 0x46) & 0x49 ^ a4.n128_u8[6] & 8) - 63;
  v24 = (a4.n128_u8[5] ^ 0x72) - ((2 * (a4.n128_u8[5] ^ 0x72)) & 0xFFFFFFCF) + 103;
  v25 = (a4.n128_u8[3] ^ 0x19) - ((2 * (a4.n128_u8[3] ^ 0x19)) & 0xE8) - 12;
  v26 = (a4.n128_u8[2] ^ 0x3D) - 2 * ((a4.n128_u8[2] ^ 0x3D) & 0x3F ^ a4.n128_u8[2] & 2) + 61;
  v27 = (a4.n128_u8[0] ^ 0x54) - 2 * ((a4.n128_u8[0] ^ 0x54) & 0x79 ^ a4.n128_u8[0] & 8) + 113;
  LODWORD(STACK[0x650]) = STACK[0x898];
  LODWORD(STACK[0x640]) = STACK[0x8A0];
  LODWORD(STACK[0x6C0]) = STACK[0x750];
  LODWORD(STACK[0x648]) = STACK[0x890];
  LODWORD(STACK[0x630]) = STACK[0x8A8];
  LODWORD(STACK[0x638]) = STACK[0x8B8];
  LODWORD(STACK[0x62C]) = STACK[0x8C0];
  LODWORD(STACK[0x710]) = STACK[0x8D8];
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x810]) + 122;
  LODWORD(STACK[0x3C4]) = LODWORD(STACK[0x808]) + 114;
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x800]) - 6;
  LODWORD(STACK[0x3BC]) = LODWORD(STACK[0x7F8]) + 2;
  LODWORD(STACK[0x3B0]) = LODWORD(STACK[0x7E0]) + 57;
  LODWORD(STACK[0x3A8]) = LODWORD(STACK[0x7D8]) - 1;
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x7C0]) + 87;
  LODWORD(STACK[0x398]) = LODWORD(STACK[0x7B8]) + 12;
  LODWORD(STACK[0x390]) = LODWORD(STACK[0x7B0]) - 121;
  LODWORD(STACK[0x388]) = LODWORD(STACK[0x7A8]) - 106;
  LODWORD(STACK[0x380]) = LODWORD(STACK[0x7A0]) + 95;
  LODWORD(STACK[0x378]) = LODWORD(STACK[0x798]) + 86;
  LODWORD(STACK[0x370]) = LODWORD(STACK[0x790]) - 89;
  LODWORD(STACK[0x36C]) = LODWORD(STACK[0x788]) + 89;
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x778]) + 80;
  STACK[0x518] = v15 ^ 0x53u;
  v28 = STACK[0x818];
  STACK[0x6A8] = *(&off_10044E3E0 + (STACK[0x818] ^ 0x1307)) - 1987575490;
  STACK[0x510] = v16 ^ 0x83u;
  LODWORD(STACK[0x50C]) = LODWORD(STACK[0x770]) + 1;
  LODWORD(STACK[0x4F0]) = LODWORD(STACK[0x780]) - 2045270527;
  STACK[0x4E0] = v17 ^ 0x3Eu;
  LODWORD(STACK[0x4D8]) = LODWORD(STACK[0x768]) + 1;
  STACK[0x4D0] = ((a4.n128_u8[12] ^ 0x62) - 2 * ((a4.n128_u8[12] ^ 0x62) & 0x25 ^ a4.n128_u8[12] & 5) + 32) ^ 0x16u;
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x760]) + 1741313;
  STACK[0x4C0] = v18 ^ 0x71u;
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x708]) + 1;
  STACK[0x4B0] = v19 ^ 9u;
  LODWORD(STACK[0x4A8]) = (v19 ^ 0x348112D0) - ((2 * (v19 ^ 0xD4)) & 0x1F6) + 1;
  STACK[0x4A0] = v20 ^ 0x9Bu;
  LODWORD(STACK[0x498]) = (v20 ^ 0x62989047) - ((2 * (v20 ^ 0x46)) & 0x1FC) + 1;
  LODWORD(STACK[0x520]) = v21;
  STACK[0x490] = (v21 - 1326665437) ^ 0xDDu;
  STACK[0x488] = v22 ^ 0x56u;
  LODWORD(STACK[0x480]) = (v22 ^ 0x21C4000B) - 2 * ((v22 ^ 0x8B) & 0x7F) + 1;
  STACK[0x478] = v23 ^ 0xF7u;
  LODWORD(STACK[0x470]) = (v23 ^ 0x441884) - ((2 * v23) & 0xA2) + 1;
  STACK[0x468] = v24 ^ 0x51u;
  LODWORD(STACK[0x460]) = (v24 ^ 0x42000301) - ((2 * v24) & 0xE4) + 1;
  STACK[0x458] = a4.n128_u8[4] ^ 0xE6u;
  LODWORD(STACK[0x450]) = (a4.n128_u8[4] ^ 0xA86105B7) - ((2 * (a4.n128_u8[4] ^ 0x3B)) & 0xE6) + 1;
  STACK[0x448] = v25 ^ 0xC2u;
  LODWORD(STACK[0x440]) = -(v25 ^ 0x1F) - 1072528895;
  v29 = STACK[0x8B0];
  STACK[0x438] = v26 ^ 0xBu;
  LODWORD(STACK[0x430]) = (v26 ^ 0x40091046) - ((2 * (v26 ^ 0xD6)) & 0xDE) + 1;
  STACK[0x428] = a4.n128_u8[1] ^ 0x64u;
  LODWORD(STACK[0x420]) = (a4.n128_u8[1] ^ 0xE2A500BA) - ((2 * (a4.n128_u8[1] ^ 0xB9)) & 0x1F8) + 1;
  STACK[0x418] = v27 ^ 0x47u;
  LODWORD(STACK[0x410]) = (v27 ^ 0x188109D3) - ((2 * (v27 ^ 0x9A)) & 0x16C) + 1;
  v30 = *(v29 + 8 * v28);
  v31 = STACK[0x31C];
  LODWORD(STACK[0x408]) = STACK[0x31C] & 0xFFFFFFF7 ^ 0x50;
  LODWORD(STACK[0x760]) = STACK[0x400];
  LODWORD(STACK[0x768]) = STACK[0x3F8];
  LODWORD(STACK[0x8A8]) = STACK[0x2D0];
  LODWORD(STACK[0x770]) = STACK[0x3F0];
  LODWORD(STACK[0x778]) = STACK[0x3E8];
  LODWORD(STACK[0x8C0]) = STACK[0x2D4];
  LODWORD(STACK[0x8B8]) = STACK[0x2CC];
  LODWORD(STACK[0x8A0]) = STACK[0x2C8];
  LODWORD(STACK[0x780]) = STACK[0x3E0];
  LODWORD(STACK[0x790]) = STACK[0x3D8];
  LODWORD(STACK[0x6F8]) = STACK[0x8F8];
  LODWORD(STACK[0x898]) = STACK[0x2C0];
  LODWORD(STACK[0x788]) = STACK[0x3D4];
  LODWORD(STACK[0x7C0]) = STACK[0x3D0];
  LODWORD(STACK[0x708]) = STACK[0x940];
  LODWORD(STACK[0x798]) = STACK[0x358];
  LODWORD(STACK[0x890]) = STACK[0x2C4];
  LODWORD(STACK[0x7A0]) = STACK[0x30C];
  LODWORD(STACK[0x7A8]) = STACK[0x308];
  LODWORD(STACK[0x7B0]) = STACK[0x304];
  LODWORD(STACK[0x7B8]) = STACK[0x300];
  LODWORD(STACK[0x818]) = STACK[0x2FC];
  LODWORD(STACK[0x7D8]) = STACK[0x2F8];
  STACK[0x940] = LODWORD(STACK[0x6B8]);
  LODWORD(STACK[0x7E0]) = STACK[0x2F0];
  LODWORD(STACK[0x7F8]) = STACK[0x2EC];
  LODWORD(STACK[0x800]) = STACK[0x2E8];
  LODWORD(STACK[0x808]) = STACK[0x2E4];
  LODWORD(STACK[0x810]) = STACK[0x2E0];
  LODWORD(STACK[0x358]) = BYTE13(v13);
  LODWORD(STACK[0x400]) = LODWORD(STACK[0x310]) - 68;
  LODWORD(STACK[0x3F8]) = v31 & 8;
  v32 = v31 & 8 | 0x72;
  LODWORD(STACK[0x3F0]) = v32;
  LODWORD(STACK[0x3E8]) = -28 - v32;
  LODWORD(STACK[0x3E0]) = LODWORD(STACK[0x318]) - 62;
  LODWORD(STACK[0x3D8]) = LODWORD(STACK[0x314]) - 29;
  LODWORD(STACK[0x3D4]) = LODWORD(STACK[0x2B8]) - 58;
  LODWORD(STACK[0x3D0]) = LODWORD(STACK[0x2BC]) - 69;
  return v30();
}

uint64_t sub_100026878(int a1)
{
  v3 = LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x690]) ^ LODWORD(STACK[0x604]);
  v4 = LODWORD(STACK[0x3C4]) ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x5F8]);
  v5 = LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x6C0]);
  v6 = LODWORD(STACK[0x358]) ^ (LODWORD(STACK[0x608]) - 68) ^ 0xFFFFFFDD;
  LODWORD(STACK[0x680]) ^= 0xFFFFFF88 ^ (v6 - ((2 * v6) & 0x10) + (a1 ^ 0x50));
  v7 = LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x670]);
  v8 = LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x6C8]);
  v9 = LODWORD(STACK[0x3A8]) ^ (LODWORD(STACK[0x5FC]) - 62) ^ 0x7E;
  LODWORD(STACK[0x6A0]) ^= 0xFFFFFFDA ^ (v9 - ((2 * v9) & 0xFFFFFFB4) - 38);
  v10 = LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x6F0]) ^ LODWORD(STACK[0x668]);
  v11 = LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x710]) ^ LODWORD(STACK[0x660]);
  v12 = LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x6D8]) ^ LODWORD(STACK[0x640]);
  v13 = LODWORD(STACK[0x388]) ^ (LODWORD(STACK[0x6E0]) - 58) ^ 0xFFFFFF96;
  v14 = (v13 - ((2 * v13) & 0x20) + 16) ^ LODWORD(STACK[0x678]);
  v15 = LODWORD(STACK[0x378]) ^ LODWORD(STACK[0x708]) ^ LODWORD(STACK[0x650]);
  v16 = LODWORD(STACK[0x380]) ^ (LODWORD(STACK[0x600]) - 69) ^ 0x5F;
  v17 = (v16 - 2 * (v16 & 0xF) + 15) ^ LODWORD(STACK[0x648]);
  v18 = 1928411992 - (LODWORD(STACK[0x5D0]) | ((LODWORD(STACK[0x5D0]) < 0x72F13B58) << 32));
  STACK[0x998] += v18;
  v19 = LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x658]);
  v20 = LODWORD(STACK[0x370]) ^ (LODWORD(STACK[0x700]) - 29) ^ 0xFFFFFFA7;
  LODWORD(STACK[0x688]) ^= (v20 - ((2 * v20) & 0x7A) - 67) ^ 0xFFFFFFBD;
  v21 = LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x6E8]);
  v22 = STACK[0x990] + v18;
  LODWORD(STACK[0x690]) = v3 ^ 0x67;
  LODWORD(STACK[0x62C]) = v4 ^ 0xFFFFFFB3;
  LODWORD(STACK[0x630]) = v5 ^ 0x59;
  LODWORD(STACK[0x670]) = v7 ^ 0x6D;
  LODWORD(STACK[0x638]) = v8 ^ 0xFFFFFFA8;
  LODWORD(STACK[0x668]) = v10 ^ 0x71;
  LODWORD(STACK[0x660]) = v11 ^ 0xFFFFFF9F;
  LODWORD(STACK[0x640]) = v12 ^ 0x6E;
  LODWORD(STACK[0x678]) = v14 ^ 0x10;
  LODWORD(STACK[0x650]) = v15 ^ 0xFFFFFFDA;
  LODWORD(STACK[0x648]) = v17 ^ 0xF;
  LODWORD(STACK[0x658]) = v19 ^ 0xFFFFFFA4;
  LODWORD(STACK[0x698]) = v21 ^ 0xD;
  STACK[0x990] = v22;
  v23 = *(v1 + 8 * v2);
  LODWORD(STACK[0x5D0]) = 1928411992;
  return v23();
}

uint64_t sub_100026B4C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (a1 - 957978330) ^ 0xC6E650A4;
  v14 = STACK[0x8E8];
  v15 = *(&off_10044E3E0 + (a1 ^ 0x9B2)) - 1712105723;
  v16 = *&v15[8 * (STACK[0x8E8] ^ 0x65)];
  v17 = STACK[0x920];
  v18 = ((a1 - 957978330) & 0x3919CDEF ^ 0x1B18D31F43663B25) - ((2 * (STACK[0x920] ^ 0xC1)) & 0x196) + (STACK[0x920] ^ 0xC1u);
  STACK[0x718] = v13;
  v19 = *&v15[8 * (v18 ^ (v13 + 0x3B18D31F43665858))];
  v20 = (v12 - 68);
  v21 = ((v11 ^ 0xA0u) + 0x704ADC15DE8E8621 - ((2 * (v11 ^ 0xA0u)) & 0x42)) ^ 0x704ADC15DE8E875ALL;
  v22 = v11;
  v23 = (LODWORD(STACK[0x830]) - 62);
  LODWORD(v13) = a8 - 58;
  v24 = ((a8 - 58) - 0x8E73B9BC3DA3FC6 - ((2 * (a8 - 58)) & 0x74)) ^ 0xF718C4643C25C140;
  v25 = v8;
  v26 = (LODWORD(STACK[0x8C8]) - 29);
  v27 = STACK[0x930];
  v28 = STACK[0x8E0];
  v29 = *&v15[8 * (STACK[0x8E0] ^ 0x59)];
  LODWORD(v19) = v19 ^ v16 ^ *&v15[8 * (((v12 - 68) - 0x281D58796D2D772ALL - ((2 * v20) & 0x1ACLL)) ^ 0xD7E2A78692D289ACLL)] ^ *&v15[8 * v21] ^ *&v15[8 * (v10 ^ 0x10)];
  v30 = STACK[0x900];
  v31 = STACK[0x940];
  v32 = STACK[0x910];
  v33 = STACK[0x8F0];
  LODWORD(v19) = v19 ^ *&v15[8 * (((LOBYTE(STACK[0x830]) - 62) - 0x272AC218BCBA5B21 - ((2 * v23) & 0x1BELL)) ^ 0xD8D53DE74345A5A2)] ^ *&v15[8 * (STACK[0x930] ^ 0xEE)] ^ v29 & 0xBF ^ *&v15[8 * (v9 ^ 0xEB)] ^ *&v15[8 * (STACK[0x900] ^ 0x90)] ^ (-(v29 & 0x40) - 857964334) ^ *&v15[8 * v24];
  LODWORD(v16) = *&v15[8 * (STACK[0x940] ^ 0xF7)] ^ *&v15[8 * (((a4 - 69) + 0x33ECF3D3F36818D9 - ((2 * (a4 - 69)) & 0x1B2)) ^ 0x33ECF3D3F36819A5)] ^ *&v15[8 * (STACK[0x910] ^ 0x80)] ^ *&v15[8 * (((LOBYTE(STACK[0x8C8]) - 29) + 0x248021D6C8AED699 - ((2 * v26) & 0x132)) ^ 0x248021D6C8AED7E7)] ^ *&v15[8 * (STACK[0x8F0] ^ 0x22)];
  STACK[0x750] = v23;
  STACK[0x720] = v20;
  LODWORD(v19) = v14 ^ v27 ^ v20 ^ v17 ^ 0x37 ^ ((v23 ^ v16 ^ 0x68 ^ v19) - ((2 * (v23 ^ v16 ^ 0x68 ^ v19)) & 0xFFFFFFF7) + 123);
  STACK[0x8D8] = v9;
  STACK[0x8F8] = v10;
  LODWORD(v19) = v9 ^ v28 ^ v13 ^ v10 ^ 0xFFFFFFF6 ^ (v19 - ((2 * v19) & 0x5E) + 47);
  LODWORD(v19) = (a4 - 69) ^ v30 ^ v31 ^ 0x5E ^ (v19 - ((2 * v19) & 0x76) + 59);
  STACK[0x740] = v26;
  LODWORD(v19) = v32 ^ v26 ^ (v19 - ((2 * v19) & 0x4E) - 89);
  LODWORD(v19) = ((v19 ^ 0x5A) - 2 * ((v19 ^ 0x5A) & 0x57 ^ v19 & 5) - 46) ^ v33;
  v34 = (v19 ^ v22) ^ 0xAELL;
  v35 = *(&off_10044E3E0 + a1 - 2126) - 376713947;
  STACK[0x8C8] = v35;
  LODWORD(v35) = *(v35 + v34) - ((2 * *(v35 + v34) + 18) & 0x3A) - 90;
  LODWORD(v32) = (v35 & 0xFFFFFF80 | 0x6E) ^ v35 & 0x7F;
  v36 = (((16 * v35) ^ 0xD0) + (~(2 * ((16 * v35) ^ 0xD0)) | 0xDF) + 22) & 0x60 ^ v32;
  v37 = ((((16 * v35) ^ 0xD0) + (~(2 * ((16 * v35) ^ 0xD0)) | 0xDF) + 22) & 0x60 ^ (v35 & 0x80 | 0x6E) ^ v35 & 0x7F ^ 0x41) + 0xD2FB9A5A809547CLL - ((2 * (v36 ^ 0x41u)) & 0xF8);
  v38 = (((v37 << 8) ^ 0x2FB9A5A809547C00) + 0x62D070D0EA20A95CLL - ((2 * ((v37 << 8) ^ 0x2FB9A5A809547C00)) & 0x45A0E1A1D4415200)) ^ 0x62D070D0EA20A95CLL | v37 ^ 0xD2FB9A5A809547CLL;
  v39 = ((((v38 - 0x632A87EBFBB58446 - ((2 * v38) & 0x39AAF0280894F774)) << 16) ^ 0x7814044A7BBA0000) + 0xB083D8FFA8BF5A0 - ((2 * (((v38 - 0x632A87EBFBB58446 - ((2 * v38) & 0x39AAF0280894F774)) << 16) ^ 0x7814044A7BBA0000)) & 0x16107B1FF5160000)) ^ 0xB083D8FFA8BF5A0 | (v38 - 0x632A87EBFBB58446 - ((2 * v38) & 0x39AAF0280894F774)) ^ 0x9CD57814044A7BBALL;
  v40 = ((((v39 + 0x519FD122FA956EBFLL - ((2 * v39) & 0x233FA245F52ADD7ELL)) << 32) ^ 0xFA956EBF00000000) - 0x54DA8E1BD468950DLL - ((2 * (((v39 + 0x519FD122FA956EBFLL - ((2 * v39) & 0x233FA245F52ADD7ELL)) << 32) ^ 0xFA956EBF00000000)) & 0x564AE3C800000000)) ^ 0xAB2571E42B976AF3 | (v39 + 0x519FD122FA956EBFLL - ((2 * v39) & 0x233FA245F52ADD7ELL)) ^ 0x519FD122FA956EBFLL;
  v41 = v40 - ((2 * v40) & 0x3134F9B92C54494ELL);
  v42 = *(v25 + 8 * (a1 ^ (43 * (LODWORD(STACK[0x888]) == 103))));
  STACK[0x830] = v19 ^ v22;
  STACK[0x608] = v34;
  LODWORD(STACK[0x820]) = v36;
  LODWORD(STACK[0x758]) = v32;
  STACK[0x728] = v41;
  return v42();
}

uint64_t sub_100027174()
{
  LODWORD(STACK[0x6C8]) = v1 ^ 0xFFFFFFF0;
  v3 = v1 ^ LODWORD(STACK[0x6A0]) ^ (v0 - 5915);
  v4 = v1 ^ LODWORD(STACK[0x638]) ^ 0xFFFFFFB1;
  v5 = v1 ^ LODWORD(STACK[0x690]) ^ 0x22u;
  STACK[0x6B8] = v1 ^ LODWORD(STACK[0x698]) ^ 0xFFFFFFEA;
  return (*(v2 + 8 * v0))(v1 ^ LODWORD(STACK[0x688]) ^ 0x76u, v5, v4, v1 ^ 0x41u, v1 ^ 0x3Du, v1 ^ LODWORD(STACK[0x668]) ^ 0xFFFFFFFA, v3, v1 ^ 0xFFFFFFBA);
}

uint64_t sub_100027278()
{
  v2 = STACK[0x718];
  LODWORD(STACK[0x6C8]) = v0 ^ 0xD;
  v3 = v0 ^ LODWORD(STACK[0x638]) ^ 0x4Au;
  v4 = v0 ^ LODWORD(STACK[0x690]) ^ 0x1Au;
  v5 = v0 ^ LODWORD(STACK[0x668]) ^ 0xFFFFFFDE;
  v6 = v0 ^ LODWORD(STACK[0x6A0]) ^ 0xFFFFFFCA;
  STACK[0x6B8] = v0 ^ 0xFFFFFFC2 ^ LODWORD(STACK[0x698]);
  return (*(v1 + 8 * v2))(v0 ^ LODWORD(STACK[0x688]) ^ 0xFFFFFF98, v4, v3, v0 ^ 0xFFFFFFF9, v0 ^ 0x15u, v5, v6, v0 ^ 0x72u);
}

uint64_t sub_100027388()
{
  LODWORD(STACK[0x6C8]) = v1 ^ 0x7B;
  v3 = LODWORD(STACK[0x878]) ^ v1 ^ 4u;
  v4 = LODWORD(STACK[0x8B8]) ^ v1 ^ (v0 - 6020) ^ 0x11u;
  v5 = LODWORD(STACK[0x858]) ^ v1 ^ 0xFFFFFFAC;
  STACK[0x6B8] = LODWORD(STACK[0x860]) ^ v1 ^ 0xFFFFFFEC;
  return (*(v2 + 8 * v0))(LODWORD(STACK[0x850]) ^ v1 ^ 0xFFFFFF8C, v5, v4, v1 ^ 0x36u, v1 ^ 0xFFFFFF86, v3, LODWORD(STACK[0x840]) ^ v1 ^ 0xFFFFFF82, v1 ^ 0xFFFFFFF3);
}

uint64_t sub_100027490@<X0>(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, unsigned __int8 a3@<W2>, char a4@<W3>, unsigned __int8 a5@<W5>, unsigned __int8 a6@<W6>, char a7@<W7>, char a8@<W8>)
{
  v20 = STACK[0x8C8];
  v21 = *(STACK[0x8C8] + (a2 ^ 0x23));
  LODWORD(STACK[0x720]) = v17;
  LODWORD(STACK[0x718]) = 4 * v17;
  LODWORD(STACK[0x6D0]) = v21 + ((4 * v17) ^ 0x1853) - ((2 * v21 + 2) & 4);
  v22 = *(v20 + (v12 ^ 0x21));
  v23 = *(v20 + ((a4 ^ v11) ^ 0xCFu));
  LODWORD(STACK[0x6D8]) = v22 - ((2 * v22 + 18) & 0xFFFFFF92);
  LODWORD(STACK[0x6C0]) = v23 - ((2 * v23 + 18) & 0x54);
  v24 = *(v20 + (v15 ^ 0xEELL));
  LODWORD(STACK[0x6F0]) = v24 + ((-20 - 2 * v24) | 0x3F);
  v25 = *(v20 + (a6 ^ 0x23));
  LODWORD(STACK[0x6F8]) = v25 - ((2 * v25 + 18) & 0xFFFFFFAE);
  v26 = *(v20 + (a3 ^ 0xACLL));
  LODWORD(STACK[0x710]) = v26 + ((-20 - 2 * v26) | 7);
  LOBYTE(v26) = v10 ^ v19 ^ 0x71;
  v27 = *(v20 + (a5 ^ 0x35));
  v28 = *(v20 + v26);
  LODWORD(STACK[0x708]) = v27 - ((2 * v27 + 18) & 0x44);
  LODWORD(STACK[0x700]) = (v28 ^ 0xFFFFFF80) - ((2 * v28 + 18) & 0xFFFFFFE0);
  v29 = *(v20 + (v18 ^ 0x5CLL));
  v30 = *(v20 + (a7 ^ a8 ^ 0xBE));
  LODWORD(STACK[0x6E8]) = v29 - ((2 * v29 + 18) & 0xFFFFFFA4);
  LODWORD(STACK[0x6E0]) = v30 - ((2 * v30 + 18) & 0xFFFFFFCC);
  v31 = *(v20 + (v8 ^ 0xB3));
  v32 = v31 - ((2 * v31 + 18) & 0xFFFFFFFC) - 121;
  LOBYTE(v29) = LODWORD(STACK[0x6C8]) ^ v14 ^ 0xD4;
  v33 = ((((16 * v32) ^ 0xE0) - ((2 * ((16 * v32) ^ 0xE0)) & 0x40) + 109) & 0x60 ^ v32 & 0xFFFFFFE6 | v32 & 0x19) ^ 0x1E;
  LODWORD(STACK[0x6B0]) = v33 - 2 * (v33 & 7);
  v34 = *(v20 + (a1 ^ v16));
  LODWORD(STACK[0x6C8]) = v34 - ((2 * v34 + 18) & 0x34);
  v35 = *(v20 + v29);
  v36 = v35 - 109 - ((2 * v35 + 2) & 4);
  v37 = *(v20 + (STACK[0x6B8] ^ 0xA2));
  LODWORD(STACK[0x6B8]) = ((16 * v36) ^ 0x20) - 32 * ((v35 - 109) & 1);
  v38 = v37 - ((2 * v37 + 18) & 0x60);
  v39 = *(v20 + (STACK[0x8E8] ^ 0x26));
  v40 = v39 - ((2 * v39 + 18) & 0x54);
  v41 = *(v20 + (STACK[0x920] ^ 0xFALL));
  v42 = *(v20 + (v13 ^ 0x3BLL));
  v43 = v41 - ((2 * v41 + 18) & 0xFFFFFFC4);
  v44 = *(v20 + (STACK[0x930] ^ 0xABLL));
  LODWORD(STACK[0x930]) = v44 + ((-20 - 2 * v44) | 0x31);
  v45 = *(v20 + (STACK[0x900] ^ 0xD2));
  LODWORD(STACK[0x920]) = v45 - ((2 * v45 + 18) & 0xFFFFFFBC);
  v46 = *(v20 + (v9 ^ 0x3BLL)) - ((2 * *(v20 + (v9 ^ 0x3BLL)) + 18) & 0x26);
  v47 = *(v20 + (STACK[0x910] ^ 0xC6));
  v48 = (2 * v47 + 18) & 0xFFFFFFF8;
  v47 -= 123;
  v49 = v47 - v48;
  v50 = (((16 * (v47 - v48)) ^ 0x40) - ((32 * v47) & 0x40) + 43) & 0x60 | (v47 - v48) & 0x10;
  LODWORD(STACK[0x940]) = (v50 ^ 0x30) + ((2 * v50) ^ 0x9F);
  v51 = *(v20 + (STACK[0x740] ^ 0x3BLL));
  LODWORD(STACK[0x910]) = v51 + ((108 - 2 * v51) | 0xFFFFFFA9);
  v52 = *(v20 + (STACK[0x8F0] ^ 0x66));
  v53 = v52 - ((2 * v52 + 18) & 0x5E);
  v54 = (v42 - ((2 * v42 + 18) & 0x5C) + 55) ^ (LODWORD(STACK[0x6C0]) - 77);
  v55 = ((((((v40 + 51) ^ LOBYTE(STACK[0x6D0]) ^ (16 * ((v40 + 51) ^ LOBYTE(STACK[0x6D0])) - ((32 * ((v40 + 51) ^ LOBYTE(STACK[0x6D0]))) & 0x40) + 36) & 0x60) ^ 8) - ((2 * ((v40 + 51) ^ LODWORD(STACK[0x6D0]) ^ (16 * ((v40 + 51) ^ LOBYTE(STACK[0x6D0])) - ((32 * ((v40 + 51) ^ LOBYTE(STACK[0x6D0]))) & 0x40) + 36) & 0x60 ^ 8)) & 0x11E)) << 16) - 359727104) ^ 0xEA8F0000;
  v56 = ((((((v43 - 21) ^ (LOBYTE(STACK[0x6D8]) - 46)) ^ 0xB ^ (48 - ((16 * ((v43 - 21) ^ (LOBYTE(STACK[0x6D8]) - 46))) ^ 0xB0)) & 0x60) - ((2 * ((v43 - 21) ^ (LODWORD(STACK[0x6D8]) - 46) ^ 0xB ^ (48 - ((16 * ((v43 - 21) ^ (LOBYTE(STACK[0x6D8]) - 46))) ^ 0xB0)) & 0x60)) & 0x38)) << 8) - 1233445888) ^ 0xB67B1C00;
  v57 = (v56 + 1591759744 - ((2 * v56) & 0x3DC0A600)) ^ 0x5EE05380 | (v55 + 43735073 - ((2 * v55) & 0x5360000)) ^ 0x29B5821;
  v58 = (LODWORD(STACK[0x6F0]) - 22) ^ 0x72 ^ (-16 * (LOBYTE(STACK[0x6F0]) - 22) + 50) & 0x60;
  v59 = (((v58 - ((2 * v58) & 0x1C)) << 24) + 234881024) ^ 0xE000000;
  v60 = v54 ^ 0x36 ^ (((16 * v54) ^ 0x40) + (~(32 * v54) | 0xDF) + 17) & 0x60;
  v61 = (v57 + 957126252 - ((2 * v57) & 0x72192CD8)) ^ 0x390C966C | (v60 + 1519442327 - ((2 * v60) & 0x12E)) ^ 0x5A90D997;
  v62 = (v61 + 1401368751 - ((2 * v61) & 0xA70E615E)) ^ 0x538730AF | (v59 + 890748583 - ((2 * v59) & 0x6A000000)) ^ 0x3517BEA7;
  v63 = LODWORD(STACK[0x718]) ^ 0x1820;
  LOBYTE(v20) = LODWORD(STACK[0x6B0]) - 121;
  LODWORD(STACK[0x900]) = v36 - 8;
  LODWORD(STACK[0x8F0]) = LODWORD(STACK[0x6C8]) + 35;
  LODWORD(STACK[0x8F8]) = (LODWORD(STACK[0x6B8]) + 31) & 0x68;
  v64 = v46 - 100;
  v65 = (((16 * (v46 - 100)) ^ 0x30) + 72) & 0x60;
  v66 = LODWORD(STACK[0x940]) - 15;
  v67 = LODWORD(STACK[0x910]) + 53;
  LODWORD(STACK[0x940]) = v62 + 1531761029;
  v68 = ((((v20 ^ v64 ^ v65 ^ 0x54) - 2 * ((v20 ^ (v64 ^ v65) ^ 0x54) & 0x1F)) << 16) + 1629421568) ^ 0x611F0000;
  v69 = ((((LOBYTE(STACK[0x900]) ^ v49 & 0xEF ^ v66 ^ 0x16 ^ LOBYTE(STACK[0x8F8])) - ((2 * (LODWORD(STACK[0x900]) ^ v49 & 0xEF ^ v66 ^ 0x16 ^ LODWORD(STACK[0x8F8]))) & 0x46)) << 8) - 430497024) ^ 0xE6572300;
  v70 = (v53 - 72) ^ (v38 - 71) ^ (32 * ((v53 - 72) ^ (v38 - 71)) + 16 * ((v53 - 72) ^ ~(v38 - 71)) + 28) & 0x60 ^ 0x7F;
  v71 = (((v70 - ((2 * v70) & 0xBBBBBBBB)) << 24) + 1560281088) ^ 0x5D000000;
  v72 = v67 ^ LODWORD(STACK[0x8F0]) ^ 0x31 ^ (16 * (v67 ^ LODWORD(STACK[0x8F0]))) & 0x60;
  v73 = (v69 - 1617497523 - ((2 * v69) & 0x3F2DE400)) ^ 0x9F96F24D | (v72 + 1633493140 - ((2 * v72) & 0x128)) ^ 0x615D2094;
  v74 = (v73 - 1641704062 - ((2 * v73) & 0x3C4B2B04)) ^ 0x9E259582 | (v68 - 1647507335 - ((2 * v68) & 0x3B9A0000)) ^ 0x9DCD0879;
  return (*(STACK[0x8B0] + 8 * SLODWORD(STACK[0x720])))(~(2 * ((v74 + 487956538 - ((2 * v74) & 0x3A2B4074)) ^ 0x1D15A03A | (v71 - 1843476617 - ((2 * v71) & 0x24000000)) ^ 0x921EC777)) | 0xEDEC43F1, ((LODWORD(STACK[0x820]) >> 3) ^ 8) - ((LODWORD(STACK[0x820]) >> 2) & 0x22) - 1930780911, (v63 - 13173), 4019372314);
}

uint64_t sub_10002829C@<X0>(int a1@<W1>, char a2@<W2>, int a3@<W3>, int a4@<W6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v18 = (((a3 << a2) ^ v8) + v15 - (v9 & (2 * ((a3 << a2) ^ v8)))) ^ v15 | v7;
  *(v17 + 8 * (a1 ^ a3 ^ v12)) = v6 ^ *(v10 + 8 * ((v18 + v13 - (v11 & (2 * v18))) ^ (v13 + 56))) ^ a5;
  return (*(v16 + 8 * ((240 * (((v14 + (a3 ^ v14) - ((2 * (a3 ^ v14) + 2) & a4) + 1) ^ (v14 - 26)) > 0x3F)) ^ a6)))();
}

uint64_t sub_100028328@<X0>(int a1@<W0>, int a2@<W8>)
{
  LODWORD(STACK[0x930]) = a2 - 2234;
  LODWORD(STACK[0x728]) = a2 - 9167;
  v9 = (a2 - 9167) ^ 0x2F2Eu;
  v10 = LODWORD(STACK[0x940]) - v2;
  v11 = v3 - v4;
  v12 = v6 - v7;
  v13 = v5 + a1 - 1995842040;
  v14 = (v13 ^ 0xC36DBF37) - ((2 * (v13 ^ 0xC36DBF37)) & 0x1D4B047B8) + 0x6C59DC89EA5823DCLL;
  STACK[0x758] = v9;
  v15 = (v11 ^ 0xD316E3D8) - ((2 * (v11 ^ 0xD316E3D8)) & 0x4A56E2E) + 0x638B6B8D0252B717;
  v16 = STACK[0x730];
  v17 = *(STACK[0x730] + (BYTE2(v14) ^ 0x58));
  v18 = *(STACK[0x730] + (BYTE1(v15) ^ 0xB7));
  v19 = ((v6 - v7) ^ 0x79224669u) - ((((v6 - v7) ^ 0x79224669u) << (v9 + 122)) & 0x101E4326) + 0x1D0EE32B080F2193;
  v20 = *(STACK[0x730] + (BYTE1(v19) ^ 0x21));
  v21 = *(STACK[0x730] + (v10 ^ 0x57));
  v22 = (v10 ^ 0x2F061E57u) - ((2 * (v10 ^ 0x2F061E57u)) & 0x18F078034) - 0x5B9BCA0B387C3FE6;
  v23 = *(STACK[0x730] + (BYTE1(v14) ^ 0x23));
  v24 = *(STACK[0x730] + (v11 ^ 0xD8));
  v25 = *(STACK[0x730] + (BYTE2(v19) ^ 0xFLL));
  v26 = *(STACK[0x730] + ((v22 >> 24) ^ 0xA46435F4C7));
  v27 = (v19 >> 24) ^ 0x1D0EE32B08;
  v28 = *(STACK[0x730] + (BYTE2(v15) ^ 0x52));
  v29 = (v15 >> 24) ^ 0x638B6B8D02;
  v30 = *(STACK[0x730] + (BYTE1(v22) ^ 0xC0));
  v31 = *(STACK[0x730] + ((v14 >> 24) ^ 0x6C59DC89EALL));
  LODWORD(v15) = *(STACK[0x730] + (BYTE2(v22) ^ 0x83));
  v32 = *(STACK[0x730] + (v13 ^ 0x37));
  v33 = *(STACK[0x730] + (v12 ^ 0x69));
  v34 = STACK[0x6A8];
  v35 = ((((v25 - 815951540 - ((2 * v25) & 0x98)) ^ 0xCF5D91A7) - 1284916627) ^ 0x2038A8) - ((2 * (((v25 - 815951540 - ((2 * v25) & 0x98)) ^ 0xCF5D91A7) - 1284916627)) & 0xFFBF8EAE) + *(STACK[0x6A8] + 4 * ((v25 - 815951540 - ((2 * v25) & 0x98)) ^ 0xCF5D917A)) + 1;
  v36 = (v35 - ((2 * v35 - 1356915642) & 0x8D50E626) + 506986806) ^ 0xAB46CA8D;
  v37 = 608570463 - (v17 ^ 0xEB) + *(STACK[0x6A8] + 4 * (v17 ^ 0x36));
  v38 = (((v36 - ((2 * v36) & 0x138C29202)) << 16) - 0x5447639EB6FF0000) ^ 0xABB89C6149010000;
  v39 = (((v37 - ((2 * v37) & 0x11CF925DELL)) << 8) + 0x1A44E78E7C92EF00) ^ 0x1A44E78E7C92EF00;
  v40 = 608570463 - (v18 ^ 0xEB) + *(STACK[0x6A8] + 4 * (v18 ^ 0x36));
  v41 = 608570463 - (v21 ^ 0xEB) + *(STACK[0x6A8] + 4 * (v21 ^ 0x36));
  v42 = (((v39 - ((2 * v39) & 0x395A64EFD000) + 0x1CAD3277E8C7) ^ (v40 - ((2 * v40) & 0x1B5CCEBDELL) + 0x3C6DAE675EFLL) ^ (v38 + 0xA1B5DEA5495BLL + (~(2 * v38) | 0xBC9442B5FFFFLL))) << 16) ^ 0xBEDE3634D4720000;
  v43 = (((v41 - ((2 * v41) & 0xAE68A29ELL)) << 8) + 0x20F5A65734514F00) ^ 0x20F5A65734514F00;
  v44 = (v42 - ((2 * v42) & 0xC2473654AB900000) + 0x61239B2A55C80F4ALL) ^ (v43 - ((2 * v43) & 0x74A06F1A0CEDCE00) + 0x3A50378D0676E7EALL);
  LODWORD(v44) = v44 ^ HIDWORD(v44);
  LODWORD(v43) = (v26 ^ 0xD210015B) - ((2 * (v26 ^ 0xFFFFFFFB)) & 0x9E) + *(STACK[0x6A8] + 4 * (v26 ^ 0x36)) + 1;
  v45 = (v43 - ((2 * v43 - 1536420516) & 0xEA0C51A6) - 952355967) ^ 0x98E8914D;
  v46 = (v20 ^ 0x9804AA9) - ((2 * (v20 ^ 0xA9)) & 0x17A) + 449167901 + *(STACK[0x6A8] + 4 * (v20 ^ 0x36));
  v47 = (((v45 - ((2 * v45) & 0x12E13FF4ALL)) << 16) + 0x58CD9709FFA50000) ^ 0x58CD9709FFA50000;
  v48 = (((v46 - ((2 * v46) & 0x1EDAC23C0)) << 8) - 0x4108390929EE2000) ^ 0xBEF7C6F6D611E000;
  v49 = (v23 ^ 0xC05E2ACB) - ((2 * (v23 ^ 0xCB)) & 0xFFFFFFBF) + 1676141119 + *(STACK[0x6A8] + 4 * (v23 ^ 0x36));
  v50 = (v24 ^ 0x1008046B) - 2 * ((v24 ^ 0x6B) & 0x7F) + 339609567 + *(STACK[0x6A8] + 4 * (v24 ^ 0x36));
  v51 = (((v48 - ((2 * v48) & 0x6ED734FBE00) + 0x8376B9A7DFB5) ^ (v49 - ((2 * v49) & 0x1CFC23848) + 0xEDB4E7E11C24) ^ (v47 - ((2 * v47) & 0xE8D6729A0000) + 0x746B394DB9A6)) << 16) ^ 0x1AA9670B7A370000;
  v52 = (((v50 - ((2 * v50) & 0x1AC510BF2)) << 8) + 0x75175D62885F900) ^ 0x75175D62885F900;
  v53 = (v51 - ((2 * v51) & 0xBEC1071DF2D60000) + 0x5F60838EF96B03C4) ^ (v52 - ((2 * v52) & 0x3DC984A7C46DC800) + 0x1EE4C253E236E4DBLL);
  LODWORD(v51) = ((2 * (*(STACK[0x730] + v27) ^ 0x69)) & 0xFA) + (*(STACK[0x730] + v27) ^ 0x6DDFFE96);
  LODWORD(v53) = v53 ^ HIDWORD(v53);
  LODWORD(v51) = *(STACK[0x6A8] + 4 * ((v51 - 1843396221) ^ 0xDDu)) - v51;
  v54 = (v51 - ((2 * v51 + 608966072) & 0x2086D27E) + 577336347) ^ 0x7DADD0A1u;
  v55 = (v31 ^ 0x4102CCCB) - ((2 * (v31 ^ 0xCB)) & 0xFFFFFFBF) - 482131905 + *(STACK[0x6A8] + 4 * (v31 ^ 0x36));
  v56 = (((v54 - ((2 * v54) & 0x179D5D2D8)) << 16) - 0x4834431516940000) ^ 0xB7CBBCEAE96C0000;
  v57 = (((v55 - ((2 * v55) & 0x6707A970)) << 8) + 0x1FE4303383D4B800) ^ 0x1FE4303383D4B800;
  v58 = (v28 ^ 0x101158F9) - ((2 * (v28 ^ 0xFFFFFFFB)) & 0x1DA) + 338998349 + *(STACK[0x6A8] + 4 * (v28 ^ 0x36));
  v59 = (v30 ^ 0xA10406F) - ((2 * (v30 ^ 0xFFFFFFEF)) & 0xF6) + 439733211 + *(STACK[0x6A8] + 4 * (v30 ^ 0x36));
  v60 = (((v57 - ((2 * v57) & 0x8854E1EEF800) + 0xC42A70F77CA2) ^ (v58 - ((2 * v58) & 0x15E74502ELL) + 0xF11EAF3A2817) ^ (v56 - ((2 * v56) & 0x2FD06A060000) + 0x17E8350310AALL)) << 16) ^ 0x22DCEACE441F0000;
  v61 = (((v59 - ((2 * v59) & 0x1ADD429F8)) << 8) - 0x694072915EB0400) ^ 0xF96BF8D6EA14FC00;
  v62 = (v60 - ((2 * v60) & 0xFD6B222264740000) - 0x14A6EEECDC59612) ^ (v61 - ((2 * v61) & 0x673FA30EC3A4EC00) - 0x4C602E789E2D895CLL);
  LODWORD(v61) = v62 ^ HIDWORD(v62);
  LODWORD(v62) = (*(STACK[0x730] + v29) ^ 0xA00140ED) - ((2 * (*(STACK[0x730] + v29) ^ 0xE9)) & 0xFFFFFFF3) + *(STACK[0x6A8] + 4 * (*(STACK[0x730] + v29) ^ 0x36)) + 1;
  LODWORD(v15) = ((2 * (v15 ^ 0xFFFFFFFB)) & 0x5C) + (v15 ^ 0x5FEFFFC5);
  v63 = (v62 - ((2 * v62 + 143235248) & 0x72F4798C) - 1111553762) ^ 0xD4948558;
  v64 = (*(STACK[0x6A8] + 4 * ((v15 - 1609563950) ^ 0xDDu)) - v15 - 2076832883);
  v65 = ((2 * (v33 ^ 0xFFFFFF83)) & 0x12E) + (v33 ^ 0x56D8C97C);
  STACK[0x920] = -458752;
  v66 = (((v63 - ((2 * v63) & 0xDA0F544ELL)) << 16) + 0x61F26D07AA270000) ^ 0x61F26D07AA270000;
  v67 = (((v64 - ((2 * v64) & 0x166D5D1F8)) << 8) + 0x6342BEB36AE8FC00) ^ 0x6342BEB36AE8FC00;
  v68 = *(v34 + 4 * ((v65 - 1457047959) ^ 0xDD)) - v65 + 2065618422;
  v69 = (v32 ^ 0xDA8210E8) - ((2 * (v32 ^ 0xE8)) & 0x1F8) + 1237580892 + *(v34 + 4 * (v32 ^ 0x36));
  v70 = (((v67 - ((2 * v67) & 0x625843059800) + 0x312C2182CCB9) ^ (v68 - ((2 * v68) & 0x61AF9768) + 0x1D1E30D7CBB4) ^ (v66 - ((2 * v66) & 0xF3889F6A0000) + 0x79C44FB5AAC2)) << 16) ^ 0x55F65EE0ADCF0000;
  v71 = (((v69 - ((2 * v69) & 0x7EEF3C2)) << 8) + 0x2EFA0903F779E100) ^ 0x2EFA0903F779E100;
  v72 = (v70 - ((2 * v70) & 0x647B1B1573C0000) + 0x323D8D8AB9E7E35) ^ (v71 - ((2 * v71) & 0x49E61600AC0B7A00) + 0x24F30B005605BD1BLL);
  LOBYTE(v70) = v72 ^ BYTE4(v72);
  v73 = (v53 ^ 0x31EB3AFDLL) - ((2 * (v53 ^ 0x31EB3AFDLL)) & 0xB8455DF4) + 0x7F2564B55C22AEFALL;
  v74 = *(v16 + (BYTE1(v73) ^ 0xAELL));
  v75 = (v72 ^ HIDWORD(v72) ^ 0x78412968) - 2 * ((v72 ^ HIDWORD(v72) ^ 0x78412968) & 0xEC7F22BELL ^ (v72 ^ HIDWORD(v72)) & 2) - 0x7980FB761380DD44;
  v76 = *(v16 + (BYTE2(v75) ^ 0x7FLL));
  LODWORD(v26) = *(v16 + (v44 ^ 0x48));
  v77 = (v61 ^ 0xB1447CCCLL) - ((2 * (v61 ^ 0xB1447CCCLL)) & 0xA0BD73A2) + 0x21292F57505EB9D1;
  v78 = *(v16 + (BYTE1(v77) ^ 0xB9));
  v79 = (v44 ^ 0x89E42248) - ((2 * (v44 ^ 0x89E42248)) & 0x1CDFB0DFALL) + 0x3133455EE6FD86FDLL;
  v80 = *(v16 + (BYTE1(v75) ^ 0x22));
  v81 = *(v16 + (BYTE2(v77) ^ 0x5ELL));
  v82 = *(v16 + (BYTE2(v73) ^ 0x22));
  LODWORD(v39) = *(v16 + (v53 ^ 0xFDLL));
  v83 = *(v16 + ((v77 >> 24) ^ 0x21292F5750));
  v84 = *(v16 + ((v79 >> 24) ^ 0x3133455EE6));
  v85 = *(v16 + (BYTE1(v79) ^ 0x86));
  v86 = *(v16 + ((v75 >> 24) ^ 0x867F0489ECLL));
  v87 = *(v16 + (v61 ^ 0xCCLL));
  LODWORD(v77) = *(v16 + (BYTE2(v79) ^ 0xFDLL));
  v88 = *(v16 + (v70 ^ 0x68));
  v89 = *(v16 + ((v73 >> 24) ^ 0x7F2564B55CLL));
  LODWORD(v79) = (v81 ^ 0x842060E9) - ((2 * (v81 ^ 0xE9)) & 0xFFFFFFFB) + *(v34 + 4 * (v81 ^ 0x36)) + 1;
  v90 = (v79 - ((2 * v79 + 4937912) & 0x27E5B6E) + 560257555) ^ 0x6CD19429u;
  v91 = 608570463 - (v76 ^ 0xEB) + *(v34 + 4 * (v76 ^ 0x36));
  v92 = (((v90 - ((2 * v90) & 0x1B908D170)) << 16) + 0x69BFDC8468B80000) ^ 0x69BFDC8468B80000;
  v93 = (((v91 - ((2 * v91) & 0xEA4CD0B6)) << 8) + 0x402AB17526685B00) ^ 0x402AB17526685B00;
  v94 = (v74 ^ 0xD50005C3) - ((2 * (v74 ^ 0xFFFFFFC3)) & 0x1AE) + 1329989431 + *(v34 + 4 * (v74 ^ 0x36));
  v95 = (v93 - ((2 * v93) & 0x1485831D200) + 0xA42C18E944) ^ (v94 - ((2 * v94) & 0xF8DEC2B4) + 0xA9407C6F615ALL) ^ (v92 - ((2 * v92) & 0xD49E1BA00000) + 0x6A4F0DD0490CLL);
  LODWORD(v26) = ((2 * (v26 ^ 0xFFFFFFE3)) & 0x1EA) + (v26 ^ 0x5A5F6F1E);
  v96 = (*(v34 + 4 * ((v26 - 1516204021) ^ 0xDDu)) - v26 + 2124774484);
  v97 = (((v96 - ((2 * v96) & 0xE7DE3284)) << 8) - 0x177FF8C10E6BE00) ^ 0xFE880073EF194200;
  v98 = (((v95 << 16) ^ 0xC3AB5DA7C1120000) - ((2 * ((v95 << 16) ^ 0xC3AB5DA7C1120000)) & 0x8CDBFFD10FB60000) + 0x466DFFE887DB81E8) ^ (v97 - ((2 * v97) & 0xC5EE702EAE70000) + 0x62F738175738038);
  LODWORD(v98) = v98 ^ HIDWORD(v98);
  LODWORD(v80) = (v80 ^ 0x800280E9) - ((2 * (v80 ^ 0xE9)) & 0xFFFFFFFB) + *(v34 + 4 * (v80 ^ 0x36)) + 1;
  LODWORD(v97) = ((2 * (v39 ^ 0xFFFFFFEF)) & 0xF2) + (v39 ^ 0x44B7AF92);
  v99 = (v80 - ((2 * v80 + 8853688) & 0x389617E) + 638074139) ^ 0x6C2A0921u;
  v100 = (*(v34 + 4 * ((v97 - 1152888697) ^ 0xDDu)) - v97 + 1761459160);
  STACK[0x8E8] = -3145728;
  v101 = (((v99 - ((2 * v99) & 0x484C214E)) << 16) + 0x1BDC242610A70000) ^ 0x1BDC242610A70000;
  v102 = (((v100 - ((2 * v100) & 0x1885D753ALL)) << 8) - 0x18F2F23BD1456300) ^ 0xE70D0DC42EBA9D00;
  v103 = (v84 ^ 0xB1683CC9) - ((2 * (v84 ^ 0xC9)) & 0xBBBBBBBB) + 1927139389 + *(v34 + 4 * (v84 ^ 0x36));
  v104 = (v78 ^ 0x4D03DEEA) - ((2 * (v78 ^ 0xEA)) & 0x1FC) - 683528610 + *(v34 + 4 * (v78 ^ 0x36));
  v105 = (((v102 - ((2 * v102) & 0xB052096F9200) + 0x582904B7C902) ^ (v103 - ((2 * v103) & 0x8AE6EBA) + 0xEF770457375DLL) ^ (v101 - ((2 * v101) & 0x7619ED6E0000) + 0x3B0CF6B7BDCFLL)) << 16) ^ 0x8C52F65743900000;
  v106 = (((v104 - ((2 * v104) & 0x86A85B6)) << 8) - 0x42749CFBCABD2500) ^ 0xBD8B63043542DB00;
  v107 = (v105 - ((2 * v105) & 0x5A50B958D0A40000) + 0x2D285CAC6852A5ABLL) ^ (v106 - ((2 * v106) & 0x69EE2B5A4B000) + 0x40034F715AD258CDLL);
  LODWORD(v107) = v107 ^ HIDWORD(v107);
  LODWORD(v86) = (v86 ^ 0xB921892B) - 2 * ((v86 ^ 0x2B) & 0x3F) + *(v34 + 4 * (v86 ^ 0x36)) + 1;
  v108 = (v86 - ((2 * v86 - 699857604) & 0x83E099C0) - 1391145090) ^ 0xAC1EF57E;
  v109 = (v82 ^ 0xD00C01E6) - ((2 * (v82 ^ 0xFFFFFFEF)) & 0x1E4) + 1413090130 + *(v34 + 4 * (v82 ^ 0x36));
  v110 = (((v108 - ((2 * v108) & 0x4353272A)) << 16) - 0xA87DE566C6B0000) ^ 0xF57821A993950000;
  v111 = (((v109 - ((2 * v109) & 0x1BD0E41C0)) << 8) - 0x14BC2B2178DF2000) ^ 0xEB43D4DE8720E000;
  v112 = (v85 ^ 0xC00160FF) - ((2 * ~v85) & 0x1D6) + 1682222155 + *(v34 + 4 * (v85 ^ 0x36));
  v113 = (v83 ^ 0x50C800EA) - ((2 * (v83 ^ 0xEA)) & 0x1FC) - 746714018 + *(v34 + 4 * (v83 ^ 0x36));
  v114 = (((v111 - ((2 * v111) & 0x4D07A7974800) + 0x2683D3CBA43ELL) ^ (v112 - ((2 * v112) & 0xF745B300) + 0xC3077BA2D980) ^ (v110 - ((2 * v110) & 0xC6DD0F800000) + 0xE36E87C0B0EALL)) << 16) ^ 0x6EA2FA9CD540000;
  v115 = (((v113 - ((2 * v113) & 0x1306743F0)) << 8) - 0x77D36E67CC5E0800) ^ 0x882C919833A1F800;
  v116 = (v114 - ((2 * v114) & 0x9F4A2E87BC2C0000) - 0x305AE8BC21E948C7) ^ (v115 - ((2 * v115) & 0x1F7186BD68C79000) - 0x30473CA14B9C37FFLL);
  LODWORD(v116) = v116 ^ HIDWORD(v116);
  LODWORD(v88) = (v88 ^ 0x1502D9) - ((2 * (v88 ^ 0xFFFFFFFB)) & 0x19A) + *(v34 + 4 * (v88 ^ 0x36));
  v117 = (v88 + 1 - 2 * ((v88 + 607193645) & 0x6A81755B ^ (v88 + 1) & 3) + 246579076) ^ 0x76FCCC6u;
  v118 = (((v117 - ((2 * v117) & 0x169E3D174)) << 8) + 0x65E8A8B4F1E8BA00) ^ 0x65E8A8B4F1E8BA00;
  v119 = v118 - ((2 * v118) & 0x29266ECBF5C80200) + 0x14933765FAE40108;
  LODWORD(v89) = (v89 ^ 0xA61D09DD) - ((2 * ~v89) & 0x192) + 2116617001 + *(v34 + 4 * (v89 ^ 0x36));
  LODWORD(v89) = v89 - ((2 * v89) & 0x23D1EF8E) - 1847003193;
  LODWORD(v77) = ((2 * (v77 ^ 0xE9)) & 0xFFFFFFFB) + (v77 ^ 0xFFF83716);
  v120 = ((v119 & 0x531E4B7308 ^ v89 & 0x1E4B73CB | v119 & 0xACE1B48C00 ^ v89 & 0xE1B48C34) ^ 0x6586E24F51) - ((2 * ((v119 & 0x531E4B7308 ^ v89 & 0x1E4B73CB | v119 & 0xACE1B48C00 ^ v89 & 0xE1B48C34) ^ 0x6586E24F51)) & 0x16B60185336);
  v121 = (*(v34 + 4 * ((v77 + 509955) ^ 0xDDu)) - v77 + 608060508);
  v122 = (((v121 - ((2 * v121) & 0x7B58D052)) << 8) + 0x5D988A3DAC682900) ^ 0x5D988A3DAC682900;
  v123 = (v87 ^ 0xC06C11A9) - ((2 * (v87 ^ 0xA9)) & 0x17A) + 1675229981 + *(v34 + 4 * (v87 ^ 0x36));
  v124 = (v122 - ((2 * v122) & 0x40CC3AE7C4C33200) - 0x1F99E28C1D9E66FCLL) ^ (v123 - ((2 * v123) & 0x613E24F2) + 0x497DCFBC309F1279) ^ ((((v120 << 16) - 0x3E4A4FF3D6650000) ^ 0xC1B5B00C299B0000) - ((2 * (((v120 << 16) - 0x3E4A4FF3D6650000) ^ 0xC1B5B00C299B0000)) & 0x18494C4296960000) - 0x73DB59DEB4B44C9ALL);
  *(&v125 + 1) = v124 ^ 0x1B;
  *&v125 = v124 ^ 0x253F7403770CA600;
  v126 = (v125 >> 9) - ((2 * (v125 >> 9)) & 0x4D75E0931BEB9C6ELL) - 0x59450FB6720A31C9;
  *(&v125 + 1) = v126 ^ 0x5705B3F8922700;
  *&v125 = v126 ^ 0x7B00000000000000;
  v127 = ((((v125 >> 55) - ((2 * (v125 >> 55)) & 0x47778925C053AALL)) << 8) - 0x5C443B6D1FD62B00) ^ 0xA3BBC492E029D500;
  LODWORD(v119) = (v127 - ((2 * v127) & 0x844C2200) + 1109791116) ^ ((v127 - ((2 * v127) & 0x97B984D0844C2200) + 0x4BDCC2684226118CLL) >> 32);
  v128 = (v107 ^ 0x610C6CF3) - 2 * ((v107 ^ 0x610C6CF3) & 0x8A02C3BBLL ^ v107 & 8) - 0x7076C94075FD3C4DLL;
  v129 = *(v16 + ((v128 >> 24) ^ 0x8F8936BF8ALL));
  v130 = (v119 ^ 0x177983F4) - 2 * ((v119 ^ 0x177983F4) & 0x323E223F ^ v119 & 2) + 0x4B982976323E223DLL;
  v131 = *(v16 + (BYTE1(v130) ^ 0x22));
  v132 = *(v16 + (v98 ^ 0x3FLL));
  v133 = (v116 ^ 0xB4A72CF5) - ((2 * (v116 ^ 0xB4A72CF5)) & 0x9197E09ELL) + 0x613AB2D348CBF04FLL;
  v134 = *(v16 + ((v133 >> 24) ^ 0x613AB2D348));
  v135 = (v98 ^ 0xB7155C3FLL) - ((2 * (v98 ^ 0xB7155C3FLL)) & 0xE7950944) + 0x12CC8CD373CA84A2;
  v136 = *(v16 + (BYTE2(v128) ^ 2));
  v137 = *(v16 + ((v135 >> 24) ^ 0x12CC8CD373));
  v138 = *(v16 + (v119 ^ 0xF4));
  v139 = *(v16 + (BYTE2(v133) ^ 0xCBLL));
  v140 = *(v16 + (v116 ^ 0xF5));
  v141 = *(v16 + (v107 ^ 0xF3));
  v142 = *(v16 + (BYTE1(v133) ^ 0xF0));
  v143 = *(v16 + (BYTE1(v128) ^ 0xC3));
  v144 = *(v16 + (BYTE1(v135) ^ 0x84));
  v145 = *(v16 + (BYTE2(v130) ^ 0x3ELL));
  v146 = v16;
  v147 = -(v129 ^ 0xEB);
  v148 = v129 ^ 0x36;
  v149 = *(v146 + (BYTE2(v135) ^ 0xCALL));
  v150 = *(v146 + ((v130 >> 24) ^ 0x4B98297632));
  LODWORD(v130) = v147 + 82845697 + *(v34 + 4 * v148);
  v151 = (v130 - ((2 * v130 + 1051449532) & 0x3ACF0320) - 1128436242) ^ 0x7089380Eu;
  v152 = (v132 ^ 0x8C4444CA) - ((2 * (v132 ^ 0xCA)) & 0x1BC) - 1744713666 + *(v34 + 4 * (v132 ^ 0x36));
  v153 = (((v151 - ((2 * v151) & 0x1B85F3C00)) << 16) + 0x65AEDC2F9E000000) ^ 0x65AEDC2F9E000000;
  v154 = (((v152 - ((2 * v152) & 0x8A857350)) << 8) - 0x140D72BABD465800) ^ 0xEBF28D4542B9A800;
  v155 = (v134 ^ 0x918A02EC) - ((2 * (v134 ^ 0xFFFFFFEF)) & 0x1F0) - 1833170344 + *(v34 + 4 * (v134 ^ 0x36));
  v156 = (v131 ^ 0x9A810CB) - ((2 * (v131 ^ 0xCB)) & 0xFFFFFFBF) + 446561343 + *(v34 + 4 * (v131 ^ 0x36));
  v157 = (((v154 - ((2 * v154) & 0x5DC9DC785200) + 0xAEE4EE3C2924) ^ (v155 - ((2 * v155) & 0xE2A7EDC) + 0x3E4407153F6ELL) ^ (v153 - ((2 * v153) & 0x4E96B9560000) + 0xA74B5CAB8FC4)) << 16) ^ 0x37EBB582998E0000;
  v158 = (((v156 - ((2 * v156) & 0xB1C3F84)) << 8) + 0x9EA6C058E1FC200) ^ 0x9EA6C058E1FC200;
  v159 = (v157 - ((2 * v157) & 0xCD3A844FAAB20000) - 0x1962BDD82AA64B33) ^ (v158 - ((2 * v158) & 0x3168DB06C8647200) + 0x18B46D836432394ALL);
  LODWORD(v159) = v159 ^ HIDWORD(v159);
  LODWORD(v139) = (v139 ^ 0x640266B) - 2 * ((v139 ^ 0x6B) & 0x7F) + *(v34 + 4 * (v139 ^ 0x36)) + 1;
  v160 = (v139 - ((2 * v139 + 67881916) & 0x64F88DA) - 1590842805) ^ 0x6EC97DF3u;
  v161 = (v138 ^ 0x1402E8) - ((2 * (v138 ^ 0xE8)) & 0x1F8) + 607259228 + *(v34 + 4 * (v138 ^ 0x36));
  v162 = (((v160 - ((2 * v160) & 0x530F52CE)) << 16) + 0x1E9C2987A9670000) ^ 0x1E9C2987A9670000;
  v163 = (((v161 - ((2 * v161) & 0x90A646A2)) << 8) - 0x3A7EF1B7ACDCAF00) ^ 0xC5810E4853235100;
  v164 = (v136 ^ 0x4440C1E6) - ((2 * (v136 ^ 0xFFFFFFEF)) & 0x1E4) - 536523950 + *(v34 + 4 * (v136 ^ 0x36));
  v165 = (v137 ^ 0xA00C84F3) - ((2 * (v137 ^ 0xE3)) & 0xFFFFFFCF) - 2076604345 + *(v34 + 4 * (v137 ^ 0x36));
  v166 = (((v163 - ((2 * v163) & 0x32C8F8261200) + 0x99647C13091FLL) ^ (v164 - ((2 * v164) & 0x372CFB22) + 0x7DF21B967D91) ^ (v162 - ((2 * v162) & 0xE0B1A5C0000) + 0x7058D2E4CA2)) << 16) ^ 0xE393EAAB382C0000;
  v167 = (((v165 - ((2 * v165) & 0x14A4A227ALL)) << 8) - 0x72CA005ADAEEC300) ^ 0x8D35FFA525113D00;
  v168 = (v166 - ((2 * v166) & 0x6FCDFB6A5F100000) - 0x4819024AD07796B8) ^ (v167 - ((2 * v167) & 0x4929B37C5E71A400) + 0x2494D9BE2F38D266);
  LODWORD(v168) = v168 ^ HIDWORD(v168);
  LODWORD(v144) = 134813953 - (v144 ^ 0xEB) + *(v34 + 4 * (v144 ^ 0x36));
  v169 = (v144 - ((2 * v144 + 947513020) & 0xD832C8FA) - 2007607333) ^ 0x81F7DDE3;
  v170 = (v140 ^ 0x5880926A) - ((2 * (v140 ^ 0x6A)) & 0xFC) - 876250658 + *(v34 + 4 * (v140 ^ 0x36));
  v171 = (((v169 - ((2 * v169) & 0xA36A441ALL)) << 16) - 0x4D85AE4ADDF30000) ^ 0xB27A51B5220D0000;
  v172 = (((v170 - ((2 * v170) & 0x424E663E)) << 8) - 0x7B129FDED8CCE100) ^ 0x84ED602127331F00;
  v173 = (v145 ^ 0x4486045) - ((2 * (v145 ^ 0xFFFFFFCF)) & 0xA2) + 536718257 + *(v34 + 4 * (v145 ^ 0x36));
  v174 = (v141 ^ 0x58001F0B) - 2 * ((v141 ^ 0xB) & 0x1F) - 867832705 + *(v34 + 4 * (v141 ^ 0x36));
  v175 = (((v172 - ((2 * v172) & 0x424849F8C800) + 0x212424FC64D3) ^ (v171 - ((2 * v171) & 0xE1F64EE40000) + 0xF0FB277270FFLL) ^ (v173 - ((2 * v173) & 0x42DC5AE4) + 0x5402216E2D72)) << 16) ^ 0x85DD22E0395E0000;
  v176 = (((v174 - ((2 * v174) & 0x604D8D62)) << 8) + 0x1ABA9B3026C6B100) ^ 0x1ABA9B3026C6B100;
  v177 = (v175 - ((2 * v175) & 0x86C5AB5D2E100000) + 0x4362D5AE97080025) ^ (v176 - ((2 * v176) & 0x2833830BD97D8600) + 0x1419C185ECBEC3FFLL);
  LODWORD(v176) = (v149 ^ 0xC00E2061) - ((2 * (v149 ^ 0xFFFFFFE3)) & 0xEA) + *(v34 + 4 * (v149 ^ 0x36)) + 1;
  v178 = (v176 - ((2 * v176 - 932194392) & 0xE6641D90) + 1466563228) ^ 0x1EDCB756;
  v179 = 608570463 - (v142 ^ 0xEB) + *(v34 + 4 * (v142 ^ 0x36));
  v180 = (((v178 - ((2 * v178) & 0xE87C19BALL)) << 16) + 0x34E6743E0CDD0000) ^ 0x34E6743E0CDD0000;
  v181 = (((v179 - ((2 * v179) & 0x1D3A3A560)) << 8) - 0x32422E162E2D5000) ^ 0xCDBDD1E9D1D2B000;
  v182 = (v150 ^ 0xCC80E0CF) - ((2 * (v150 ^ 0xFFFFFFCF)) & 0x1B6) + 1472539707 + *(v34 + 4 * (v150 ^ 0x36));
  v183 = (v143 ^ 0x142518E9) - ((2 * (v143 ^ 0xE9)) & 0xFFFFFFFB) + 270595165 + *(v34 + 4 * (v143 ^ 0x36));
  v184 = (((v181 - ((2 * v181) & 0x4614FDA38E00) + 0xA30A7ED1C78ALL) ^ (v180 - ((2 * v180) & 0x5D4D6F560000) + 0x2EA6B7AB9907) ^ (v182 - ((2 * v182) & 0x42C05A5A) + 0x675821602D2DLL)) << 16) ^ 0xEAF4E81A73A00000;
  v185 = (((v183 - ((2 * v183) & 0x14385F248)) << 8) + 0x450BF3A1C2F92400) ^ 0x450BF3A1C2F92400;
  v186 = (v184 - ((2 * v184) & 0x4BDDB7480640000) - 0x7DA11245BFCD771BLL) ^ (v185 - ((2 * v185) & 0x23C9AB066E3F5800) - 0x6E1B2A7CC8E053CCLL);
  LODWORD(v186) = v186 ^ HIDWORD(v186);
  v187 = (v186 ^ 0xCAFF4863) - 2 * ((v186 ^ 0xCAFF4863) & 0x7B7DDF64 ^ v186 & 4) - 0x4DB14694848220A0;
  v188 = *(v8 + (BYTE2(v187) ^ 0x7DLL));
  LOBYTE(v149) = v177 ^ BYTE4(v177);
  v189 = *(v8 + (v159 ^ 0xBALL));
  v190 = (v177 ^ HIDWORD(v177) ^ 0xDCF799BCLL) - ((2 * (v177 ^ HIDWORD(v177) ^ 0xDCF799BCLL)) & 0xC2BF5766) - 0x2C4439449EA0544DLL;
  v191 = *(v8 + (v168 ^ 0x42));
  v192 = (v168 ^ 0x980FD842) - ((2 * (v168 ^ 0x980FD842)) & 0x1ABA4A3E0) - 0x79813662A2DAE10;
  v193 = (v159 ^ 0xF2164BBALL) - ((2 * (v159 ^ 0xF2164BBALL)) & 0x164FE6710) + 0x504ADA1EB27F3388;
  v194 = *(v8 + ((v192 >> 24) ^ 0xF867EC99D5));
  v195 = *(v8 + (BYTE2(v190) ^ 0x5FLL));
  v196 = *(v8 + ((v193 >> 24) ^ 0x504ADA1EB2));
  LODWORD(v166) = *(v8 + (BYTE1(v187) ^ 0xDFLL));
  v197 = *(v8 + (BYTE1(v190) ^ 0xABLL));
  v198 = *(v8 + (v149 ^ 0xBCLL));
  v199 = *(v8 + (BYTE2(v193) ^ 0x7FLL));
  v200 = *(v8 + (BYTE2(v192) ^ 0xD2));
  v201 = *(v8 + (v186 ^ 0x63));
  v202 = *(v8 + ((v190 >> 24) ^ 0xD3BBC6BB61));
  v203 = *(v8 + (BYTE1(v192) ^ 0x51));
  v204 = *(v8 + ((v187 >> 24) ^ 0xB24EB96B7BLL));
  v205 = *(v8 + (BYTE1(v193) ^ 0x33));
  LODWORD(v192) = (v195 ^ 0x664CE) - ((2 * (v195 ^ 0xFFFFFFCF)) & 0x1B4) + *(v34 + 4 * (v195 ^ 0x36)) + 1;
  v206 = (v192 - ((2 * v192 + 1216303218) & 0xE5D1033A) + 388508118) ^ 0x1F063803;
  v207 = (v191 ^ 0x1624A1B) - 2 * ((v191 ^ 0xFB) & 0xF) + 585351535 + *(v34 + 4 * (v191 ^ 0x36));
  v208 = (((v206 - ((2 * v206) & 0x151E7FFAELL)) << 16) + 0x5E66A8F3FFD70000) ^ 0x5E66A8F3FFD70000;
  v209 = (((v207 + (~(2 * v207) | 0xFFFFFEA7D65D05)) << 8) - 0x1E01D553EB2E8200) ^ 0xE1FE2AAC14D17D00;
  v210 = (v189 ^ 0x10120163) - ((2 * (v189 ^ 0x63)) & 0xEEEEEEEE) + 338954967 + *(v34 + 4 * (v189 ^ 0x36));
  v211 = (v188 ^ 0x41009943) - ((2 * (v188 ^ 0xFFFFFFC3)) & 0xAE) - 481987913 + *(v34 + 4 * (v188 ^ 0x36));
  v212 = (((v209 - ((2 * v209) & 0x4FA3A5F1600) + 0x5A7D1D2F8B06) ^ (v210 - ((2 * v210) & 0x79C05168) + 0xF6883CE028B4) ^ (v208 - ((2 * v208) & 0xFA4B30460000) + 0x7D259823CD99)) << 16) ^ 0xD1D0B9EC6E2B0000;
  v213 = (((v211 - ((2 * v211) & 0x177EA6B50)) << 8) - 0x74EB68440ACA5800) ^ 0x8B1497BBF535A800;
  v214 = (v212 - ((2 * v212) & 0x8E04A23440680000) + 0x4702511A2034FDC9) ^ (v213 + 0x47C0798134EEB888 + (~(2 * v213) | 0xF07F0CFD96228FFFLL));
  LODWORD(v214) = v214 ^ HIDWORD(v214);
  LODWORD(v197) = (v197 ^ 0x40100FA) - ((2 * (v197 ^ 0xEA)) & 0xDDDDDDDD) + *(v34 + 4 * (v197 ^ 0x36)) + 1;
  v215 = (v197 - ((2 * v197 + 1082792090) & 0x6A665772) + 1433942022) ^ 0xD8DD9227;
  v216 = 608570463 - (v194 ^ 0xEB) + *(v34 + 4 * (v194 ^ 0x36));
  v217 = (((v215 - ((2 * v215) & 0x3DB06B90)) << 16) + 0x28821ED835C80000) ^ 0x28821ED835C80000;
  v218 = (((v216 - ((2 * v216) & 0xC256BE0)) << 8) + 0x6EB2E20612B5F000) ^ 0x6EB2E20612B5F000;
  LODWORD(v166) = v166 + 190414930 - ((2 * v166) & 0xC8) + 18;
  v219 = (v196 ^ 0x101226E3) - ((2 * (v196 ^ 0xE3)) & 0xFFFFFFEF) + 338945623 + *(v34 + 4 * (v196 ^ 0x36));
  v220 = (((v166 ^ 0xB59808F) - 1284916627) ^ 0x600CA204) - ((2 * ((v166 ^ 0xB59808F) - 1284916627)) & 0x3FE6BBF6) + 2007180488 + *(v34 + 4 * (v166 ^ 0xB598052));
  v221 = (((v218 - ((2 * v218) & 0x7EF0D78F7C00) + 0x3F786BC7BE48) ^ (v219 - ((2 * v219) & 0x2C8317EC) + 0x211116418BF6) ^ (v217 - ((2 * v217) & 0x4FC17CCC0000) + 0xA7E0BE66EDA6)) << 16) ^ 0xB989C3E0D8180000;
  v222 = (((v220 - ((2 * v220) & 0x1EAD2A1D4)) << 8) - 0x531EBF0A96AF1600) ^ 0xACE140F56950EA00;
  v223 = (v221 - ((2 * v221) & 0x411BF44965020000) - 0x5F7205DB4D7E5A1BLL) ^ (v222 - ((2 * v222) & 0x77E9EECAD1248200) - 0x40B089A976DBEC4);
  LODWORD(v223) = v223 ^ HIDWORD(v223);
  LODWORD(v201) = (v201 ^ 0x914600E8) - ((2 * (v201 ^ 0xE8)) & 0x1F8) + *(v34 + 4 * (v201 ^ 0x36)) + 1;
  v224 = (v201 - ((2 * v201 + 637540534) & 0x75BCA6DA) - 841064504) ^ 0xD730EAF3;
  v225 = (v198 ^ 0x210067E1) - ((2 * (v198 ^ 0xFFFFFFE3)) & 0x1EA) + 54895957 + *(v34 + 4 * (v198 ^ 0x36));
  LODWORD(v218) = v200 ^ 0x8280089F;
  LODWORD(v222) = (2 * ~v200) & 0x116;
  LODWORD(v200) = *(v34 + 4 * (v200 ^ 0x36));
  STACK[0x940] = -1441792;
  v226 = (((v224 - ((2 * v224) & 0x193C0F28CLL)) << 16) - 0xC96361F86BA0000) ^ 0xF369C9E079460000;
  v227 = (((v225 - ((2 * v225) & 0x1414CBF26)) << 8) - 0x7BE6355F59A06D00) ^ 0x8419CAA0A65F9300;
  v228 = (v199 ^ 0x24A24F) - ((2 * (v199 ^ 0xFFFFFFCF)) & 0xB6) + 606169531 + *(v34 + 4 * (v199 ^ 0x36));
  v229 = (((v227 - ((2 * v227) & 0xC150E4DDDC00) + 0x60A8726EEE68) ^ ((v218 - v222 - 1580858389 + v200) - ((2 * (v218 - v222 - 1580858389 + v200)) & 0x1FFD931E2) + 0xF598FFEC98F1) ^ (v226 - ((2 * v226) & 0x4939E86C0000) + 0xA49CF436BA87)) << 16) ^ 0x31AC79B4CC1E0000;
  v230 = (((v228 - ((2 * v228) & 0x143106176)) << 8) + 0x73B903A18830BB00) ^ 0x73B903A18830BB00;
  v231 = (v229 - ((2 * v229) & 0x701889B261F60000) - 0x47F3BB26CF043AC3) ^ (v230 - ((2 * v230) & 0x2C9E60D1AFF06800) - 0x69B0CF972807CB86);
  LODWORD(v231) = v231 ^ HIDWORD(v231);
  LODWORD(v203) = (v203 ^ 0x202421F8) - ((2 * (v203 ^ 0xFFFFFFFB)) & 0x1D8) + *(v34 + 4 * (v203 ^ 0x36)) + 1;
  v232 = (v203 - ((2 * v203 + 138663574) & 0x9B9416FA) + 1374418632) ^ 0xA024B2E3;
  v233 = (v205 ^ 0x60901BF) - ((2 * ~v205) & 0x156) + 507317003 + *(v34 + 4 * (v205 ^ 0x36));
  STACK[0x8F0] = -3014656;
  v234 = (((v232 - ((2 * v232) & 0x1F0088B12)) << 16) - 0x3D2607FBBA770000) ^ 0xC2D9F80445890000;
  v235 = (((v233 - ((2 * v233) & 0x69292CC)) << 8) + 0x58FF2C0349496600) ^ 0x58FF2C0349496600;
  v236 = (v204 ^ 0x8DA080C7) - ((2 * (v204 ^ 0xFFFFFFCF)) & 0x1A6) - 1767535565 + *(v34 + 4 * (v204 ^ 0x36));
  v237 = (v202 ^ 0x80082B) + 600177215 - 2 * ((v202 ^ 0xEB) & 0x3F) + *(v34 + 4 * (v202 ^ 0x36)) + 2400;
  v238 = (((v235 - ((2 * v235) & 0xA341BFFA1E00) + 0xD1A0DFFD0F74) ^ (v236 - ((2 * v236) & 0x5AB92826) + 0xD92D2D5C9413) ^ (v234 - ((2 * v234) & 0x17E745200000) + 0xBF3A290F640)) << 16) ^ 0x37E50316D270000;
  v239 = (((v237 - ((2 * v237) & 0x81D11DC0)) << 8) - 0x2B1F3BF17712000) ^ 0xFD4E0C40E88EE000;
  v240 = (v238 - ((2 * v238) & 0xDC204FD4EED40000) + 0x6E1027EA776AEE3BLL) ^ (v239 - ((2 * v239) & 0x1FB335F428DEA00) - 0x7F0266505EB90AA9);
  v241 = (v223 ^ 0xB9FDFF8ALL) - ((2 * (v223 ^ 0xB9FDFF8ALL)) & 0xE7AA183ALL) + 0x6AF447A973D50C1DLL;
  LODWORD(v240) = v240 ^ HIDWORD(v240);
  v242 = (v240 ^ 0x5BCD17C1) - 2 * ((v240 ^ 0x5BCD17C1) & 0xF733F6B1 ^ v240 & 0x30) + 0x78FC3140F733F681;
  v243 = *(v8 + (v240 ^ 0xC1));
  LODWORD(v87) = *(v8 + ((v241 >> 24) ^ 0x6AF447A973));
  v244 = (v214 ^ 0xF41674BCLL) - ((2 * (v214 ^ 0xF41674BCLL)) & 0x58AE3DDA) + 0xEC234E02C571EEDLL;
  STACK[0x8D8] = v244;
  v245 = *(v8 + (BYTE1(v244) ^ 0x1ELL));
  v246 = *(v8 + (v231 ^ 0x86));
  LODWORD(v217) = *(v8 + ((v242 >> 24) ^ 0x78FC3140F7));
  v247 = (v231 ^ 0xFB485086) - ((2 * (v231 ^ 0xFB485086)) & 0xC93782B4) + 0x3A43642E649BC15ALL;
  v248 = *(v8 + ((v247 >> 24) ^ 0x3A43642E64));
  v249 = *(v8 + (v214 ^ 0xBCLL));
  LODWORD(v231) = *(v8 + (BYTE2(v241) ^ 0xD5));
  v250 = *(v8 + (BYTE2(v247) ^ 0x9BLL));
  v251 = *(v8 + (BYTE1(v241) ^ 0xCLL));
  v252 = *(v8 + (BYTE1(v242) ^ 0xF6));
  LODWORD(v212) = *(v8 + (BYTE2(v242) ^ 0x33));
  v253 = *(v8 + ((v244 >> 24) ^ 0xEC234E02CLL));
  v254 = *(v8 + (BYTE2(v244) ^ 0x57));
  v255 = *(v8 + (v223 ^ 0x8ALL));
  v256 = *(v8 + (BYTE1(v247) ^ 0xC1));
  LODWORD(v223) = ((2 * (v87 ^ 0xFFFFFFE3)) & 0x14A) + (v87 ^ 0xF3BBF34E);
  LODWORD(v223) = *(v34 + 4 * ((v223 + 205786203) ^ 0xDDu)) - v223;
  v257 = (v223 - 2 * ((v223 + 402784260) & 0x541EE22E ^ v223 & 2) - 333389264) ^ 0x39F05BB2;
  v258 = (v245 ^ 0xD80880F3) - ((2 * (v245 ^ 0xE3)) & 0xFFFFFFCF) + 1279102023 + *(v34 + 4 * (v245 ^ 0x36));
  STACK[0x910] = -983040;
  v259 = (((v257 - ((2 * v257) & 0xDB286D5ELL)) << 16) - 0x13D6926BC9510000) ^ 0xEC296D9436AF0000;
  v260 = (((v258 - ((2 * v258) & 0x112B0FA20)) << 8) + 0x78863E89587D1000) ^ 0x78863E89587D1000;
  v261 = (v243 ^ 0x105082CB) - ((2 * (v243 ^ 0xCB)) & 0xFFFFFFBF) + 334858815 + *(v34 + 4 * (v243 ^ 0x36));
  v262 = (v260 - ((2 * v260) & 0xD4D8D5A86400) + 0xEA6C6AD43200) ^ (v261 - ((2 * v261) & 0x1CD60B9ACLL) + 0xB347E6B05CD6) ^ (v259 - ((2 * v259) & 0x4957189E0000) + 0xA4AB8C4FAAA1);
  v263 = (v246 ^ 0xD00420EA) - ((2 * (v246 ^ 0xEA)) & 0x1FC) + 1413606494 + *(v34 + 4 * (v246 ^ 0x36));
  LODWORD(v260) = ((2 * (v231 ^ 0xEB)) & 0xFFFFFFDF) + (v231 ^ 0x73FCFF04);
  LODWORD(v246) = *(v34 + 4 * (v260 - 1945960431 + ((v260 - (v231 ^ 0x36) + 153445377 - 2 * ((v260 - (v231 ^ 0x36) + 201523217) & 0x9AAA73F ^ (v260 - (v231 ^ 0x36) + 153445377) & 9) + 210256710) ^ 0x765558C8)));
  v264 = ((v262 << 16) ^ 0xFD80002BC4770000) - ((2 * ((v262 << 16) ^ 0xFD80002BC4770000)) & 0xF9EC9CEBCAE80000) - 0x309B18A1A8B89E1;
  v265 = (((v263 - ((2 * v263) & 0x1CB9D44AALL)) << 8) + 0x5789CFE5CEA25500) ^ 0x5789CFE5CEA25500;
  v266 = v264 ^ (v265 - ((2 * v265) & 0x6CE2406A63385A00) + 0x36712035319C2D16);
  LODWORD(v266) = v266 ^ HIDWORD(v266);
  v267 = (v246 - v260 - ((2 * (v246 - v260) + 8788124) & 0x58E554C) + 453654260) ^ 0x6F299338u;
  v268 = 608570463 - (v249 ^ 0xEB) + *(v34 + 4 * (v249 ^ 0x36));
  LODWORD(v217) = ((2 * ~v217) & 0x1C6) + (v217 ^ 0x67F6F008);
  STACK[0x8F8] = -3276800;
  v269 = (((v267 - ((2 * v267) & 0x157DA1A8)) << 16) + 0x56970ABED0D40000) ^ 0x56970ABED0D40000;
  v270 = (((v268 - ((2 * v268) & 0x1F9626EEELL)) << 8) - 0x79E9A0034EC88900) ^ 0x86165FFCB1377700;
  v271 = (*(v34 + 4 * ((v217 - 1744236771) ^ 0xDDu)) - v217 - 1942160062);
  v272 = (v248 ^ 0x101C20FE) - ((2 * ~v248) & 0x1D4) + 338291786 + *(v34 + 4 * (v248 ^ 0x36));
  LODWORD(v212) = ((2 * ~v212) & 0x94) + (v212 ^ 0xBFFDFDA1);
  v273 = (((v270 - ((2 * v270) & 0x268F31BBDA00) + 0x134798DDED4BLL) ^ (v271 - ((2 * v271) & 0xD58020BALL) + 0xC8856AC0105DLL) ^ (v269 - ((2 * v269) & 0x30920F3E0000) + 0x1849079F1B74)) << 16) ^ 0xC38BF582E6620000;
  v274 = (((v272 - ((2 * v272) & 0x1EF9D91C2)) << 8) + 0x97A91F7CEC8E100) ^ 0x97A91F7CEC8E100;
  v275 = (v273 - ((2 * v273) & 0xB596DB236B2E0000) - 0x2534926E4A685258) ^ (v274 - ((2 * v274) & 0x6507C414476FE600) - 0x4D7C1DF5DC480C44);
  LODWORD(v275) = v275 ^ HIDWORD(v275);
  LODWORD(v274) = *(v34 + 4 * ((v212 + 1073873590) ^ 0xDDu)) - v212;
  v276 = (v274 - ((2 * v274 + 143135570) & 0x1CBF420A) + 1923328686) ^ 0x63B1189Bu;
  v277 = (v250 ^ 0xE02CA7EC) - ((2 * (v250 ^ 0xFFFFFFEF)) & 0x1F0) + 1142515032 + *(v34 + 4 * (v250 ^ 0x36));
  v278 = (((v276 - ((2 * v276) & 0x1B17C59BCLL)) << 16) + 0x5B3AD8BE2CDE0000) ^ 0x5B3AD8BE2CDE0000;
  v279 = (((v277 - ((2 * v277) & 0x12CCBACF8)) << 8) + 0x7AADEF9665D67C00) ^ 0x7AADEF9665D67C00;
  v280 = (v251 ^ 0x214A4AAB) - ((2 * (v251 ^ 0xAB)) & 0xFFFFFF7F) + 50053663 + *(v34 + 4 * (v251 ^ 0x36));
  v281 = 608570463 - (v253 ^ 0xEB) + *(v34 + 4 * (v253 ^ 0x36));
  v282 = (((v279 - ((2 * v279) & 0x27806403C600) + 0x13C03201E3AFLL) ^ (v280 - ((2 * v280) & 0x5E99D47A) + 0x97652F4CEA3DLL) ^ (v278 - ((2 * v278) & 0x27A1E3200000) + 0x13D0F190A5A1)) << 16) ^ 0x9775ECDDAC330000;
  v283 = (((v281 - ((2 * v281) & 0xE11F1E60)) << 8) - 0x5E26098F7070D000) ^ 0xA1D9F6708F8F3000;
  v284 = (v282 - ((2 * v282) & 0xD3C8B107E2AC0000) - 0x161BA77C0EA9BA76) ^ (v283 - ((2 * v283) & 0x52769A8ECDAA7E00) - 0x16C4B2B8992AC07FLL);
  LODWORD(v254) = (v254 ^ 0x85085EFF) - ((2 * ~v254) & 0x1D6) + *(v34 + 4 * (v254 ^ 0x36)) + 1;
  v285 = (v254 - ((2 * v254 + 1048272020) & 0x3303665A) - 1195417225) ^ 0xF46F0AB3;
  v286 = (v252 ^ 0x3CC28DB) - ((2 * (v252 ^ 0xCB)) & 0xFFFFFF9F) + 544859183 + *(v34 + 4 * (v252 ^ 0x36));
  v287 = (((v285 - ((2 * v285) & 0x19B80B836)) << 16) - 0x68A9323FA3E50000) ^ 0x9756CDC05C1B0000;
  v288 = (((v286 - ((2 * v286) & 0x17ADF177CLL)) << 8) - 0x17D54F4290744200) ^ 0xE82AB0BD6F8BBE00;
  v289 = (v256 ^ 0x825868) - ((2 * (v256 ^ 0x68)) & 0xF8) + 600028124 + *(v34 + 4 * (v256 ^ 0x36));
  v290 = (v255 ^ 0x122C84A) - ((2 * (v255 ^ 0x4A)) & 0xBC) + 589513662 + *(v34 + 4 * (v255 ^ 0x36));
  v291 = (((v288 - ((2 * v288) & 0xE15CA271F600) + 0xF0AE5138FB39) ^ (v289 - ((2 * v289) & 0x561142A6) + 0x52C72B08A153) ^ (v287 - ((2 * v287) & 0x22B3B21E0000) + 0x1159D90F8AEFLL)) << 16) ^ 0xB330A33FD0850000;
  v292 = (((v290 - ((2 * v290) & 0x38AB2754)) << 8) + 0x2D246B1C5593AA00) ^ 0x2D246B1C5593AA00;
  v293 = (v291 - ((2 * v291) & 0xE922F17DAA600000) - 0xB6E87412ACFE373) ^ (v292 - ((2 * v292) & 0x586CB9AE8A196A00) + 0x2C365CD7450CB575);
  v294 = (v266 ^ 0xABC90D4BLL) - ((2 * (v266 ^ 0xABC90D4BLL)) & 0x119033C38) - 0x60307797737E61E4;
  LODWORD(v293) = v293 ^ HIDWORD(v293);
  v295 = (v293 ^ 0x38565CB4) - ((2 * (v293 ^ 0x38565CB4)) & 0xD16EB10ELL) - 0x30D64D2E9748A779;
  v296 = *(v8 + (BYTE2(v294) ^ 0x81));
  v297 = *(v8 + (BYTE1(v295) ^ 0x58));
  v298 = (v275 ^ 0xA1ADE31FLL) - ((2 * (v275 ^ 0xA1ADE31FLL)) & 0x1F4B45C7ALL) - 0x76D579D805A5D1C3;
  v299 = *(v8 + (BYTE4(v284) ^ 0x7ELL));
  v300 = *(v8 + ((v298 >> 24) ^ 0x892A8627FALL));
  v301 = *(v8 + (v275 ^ 0x1FLL));
  v302 = *(v8 + (BYTE1(v294) ^ 0x9ELL));
  v303 = v284 & 0xFFFFFF00 ^ HIDWORD(v284);
  v304 = *(v8 + (v293 ^ 0xB4));
  v305 = *(v8 + (BYTE2(v303) ^ 0x23));
  LODWORD(v280) = *(v8 + (v266 ^ 0x4BLL));
  LODWORD(v212) = *(v8 + (BYTE2(v298) ^ 0x5ALL));
  v306 = *(v8 + ((v303 >> 24) ^ 0xF8));
  v307 = *(v8 + ((v295 >> 24) ^ 0xCF29B2D168));
  LODWORD(STACK[0x900]) = LODWORD(STACK[0x888]);
  v308 = *(v8 + (BYTE1(v303) ^ 0xF7));
  v309 = *(v8 + (BYTE2(v295) ^ 0xB7));
  LODWORD(v295) = *(v8 + (BYTE1(v298) ^ 0x2ELL));
  v310 = *(v8 + ((v294 >> 24) ^ 0x9FCF88688CLL));
  LODWORD(v298) = (v299 ^ 0x1960DAA) - ((2 * (v299 ^ 0xAAAAAAAA)) & 0x17C) + *(v34 + 4 * (v299 ^ 0x36)) + 1;
  v311 = (v298 - ((2 * v298 + 1163918906) & 0xDBFAE6AC) - 1867681165) ^ 0x8013CAC8;
  v312 = (v301 ^ 0xE250B83D) - ((2 * ~v301) & 0x52) + 1106596745 + *(v34 + 4 * (v301 ^ 0x36));
  v313 = (((v311 - ((2 * v311) & 0x7FE949EA)) << 16) + 0x609F3FF4A4F50000) ^ 0x609F3FF4A4F50000;
  v314 = (((v312 - ((2 * v312) & 0x69A6C4F0)) << 8) - 0x411273CB2C9D8800) ^ 0xBEED8C34D3627800;
  v315 = (v296 ^ 0x592E08F3) - ((2 * (v296 ^ 0xE3)) & 0xFFFFFFCF) - 887618489 + *(v34 + 4 * (v296 ^ 0x36));
  v316 = (v297 ^ 0x920D20E9) - ((2 * (v297 ^ 0xE9)) & 0xFFFFFFFB) - 1841763235 + *(v34 + 4 * (v297 ^ 0x36));
  v317 = (((v314 - ((2 * v314) & 0xE67A6659BA00) + 0x733D332CDD82) ^ (v315 - ((2 * v315) & 0x2F0B28F4) + 0xA9AC1785947ALL) ^ (v313 - ((2 * v313) & 0xB9BD05EA0000) + 0x5CDE82F557ECLL)) << 16) ^ 0x864FA65C1E140000;
  v318 = (((v316 - ((2 * v316) & 0xE4E38E68)) << 8) + 0x21A7AD7271C73400) ^ 0x21A7AD7271C73400;
  v319 = (v317 - ((2 * v317) & 0x968CE9C662000000) + 0x4B4674E33100009FLL) ^ (v318 - ((2 * v318) & 0x782C3A322EEA3200) + 0x7C161D1917751948);
  LODWORD(v319) = v319 ^ HIDWORD(v319);
  LODWORD(v302) = (v302 ^ 0xB2148EA) - ((2 * (v302 ^ 0xEA)) & 0x1FC) + *(v34 + 4 * (v302 ^ 0x36)) + 1;
  v320 = (v302 - ((2 * v302 + 843679930) & 0x9EC7D730) - 393695243) ^ 0x228D5206;
  v321 = 608570463 - (v304 ^ 0xEB) + *(v34 + 4 * (v304 ^ 0x36));
  v322 = (((v320 - ((2 * v320) & 0xE16F8344)) << 16) - 0x63868F483E5E0000) ^ 0x9C7970B7C1A20000;
  v323 = (((v321 - ((2 * v321) & 0x1A2846700)) << 8) + 0x3B3666D142338000) ^ 0x3B3666D142338000;
  v324 = (v306 ^ 0x950300FD) - ((2 * ~v306) & 0x1D2) - 1891431351 + *(v34 + 4 * (v306 ^ 0x36));
  LODWORD(v212) = ((2 * (v212 ^ 0xFFFFFFE3)) & 0x1EC) + (v212 ^ 0x7DDFB71D);
  v325 = (v300 ^ 0x81020DF3) - ((2 * (v300 ^ 0xE3)) & 0xFFFFFFCF) - 1555824825 + *(v34 + 4 * (v300 ^ 0x36));
  v326 = (((v323 - ((2 * v323) & 0x9573D8451400) + 0x4AB9EC228A23) ^ (v324 - ((2 * v324) & 0x11ADE0C32) + 0xE08D6F0619) ^ (v322 - ((2 * v322) & 0xF7FAC19A0000) + 0x7BFD60CD7FF2)) << 16) ^ 0x31A40180F3C80000;
  v327 = (((v325 - ((2 * v325) & 0x17496738CLL)) << 8) - 0x2C385245B4C63A00) ^ 0xD3C7ADBA4B39C600;
  v328 = (v326 - ((2 * v326) & 0x4E952DABF4140000) + 0x274A96D5FA0A92EALL) ^ (v327 - ((2 * v327) & 0x5C26477338B4F800) + 0x6E1323B99C5A7C74);
  LODWORD(v212) = *(v34 + 4 * ((v212 - 2111813622) ^ 0xDDu)) - v212;
  LODWORD(v326) = ((2 * ~v280) & 0x1C0) + (v280 ^ 0xFF7FED0B);
  v329 = (v212 - ((2 * v212 + 1145800874) & 0xB930399E) - 21110492) ^ 0xB176A551;
  v330 = v329 - ((2 * v329) & 0x1256D118CLL);
  LODWORD(v329) = v328 ^ HIDWORD(v328);
  v331 = (600177215 - v326 + *(v34 + 4 * ((v326 + 8393248) ^ 0xDDu)));
  LODWORD(v326) = *(v34 + 4 * (v307 ^ 0x36));
  STACK[0x8E0] = -786432;
  v332 = (((v331 - ((2 * v331) & 0x89BAD6E8)) << 8) + 0x770DEA44DD6B7400) ^ 0x770DEA44DD6B7400;
  v333 = (v305 ^ 0x468011CB) - ((2 * (v305 ^ 0xCB)) & 0xFFFFFFBF) - 574227649 + *(v34 + 4 * (v305 ^ 0x36));
  v334 = (((v332 - ((2 * v332) & 0x1333CFB1F000) + 0x8999E7D8F822) ^ (608570463 - (v307 ^ 0xEB) + v326 - ((2 * (608570463 - (v307 ^ 0xEB) + v326)) & 0x176CAB512) + 0x4ACABB655A89) ^ ((((v330 << 16) - 0x588E6D49773A0000) ^ 0xA77192B688C60000) - ((2 * (((v330 << 16) - 0x588E6D49773A0000) ^ 0xA77192B688C60000)) & 0x551FC2260000) + 0x2A8FE1130357)) << 16) ^ 0xE9DCBDAEA1FC0000;
  v335 = (((v333 - ((2 * v333) & 0x160D3A078)) << 8) + 0x58EFCEB069D03C00) ^ 0x58EFCEB069D03C00;
  v336 = (v334 - ((2 * v334) & 0xD9C8676A245E0000) - 0x131BCC4AEDD0E7AELL) ^ (v335 - ((2 * v335) & 0x2A8E1D809A204A00) + 0x55470EC04D1025CALL);
  LODWORD(v334) = 2 * ((v295 ^ 0x6B) & 0x7F) + (v295 ^ 0x7F9AEF94);
  LODWORD(v336) = v336 ^ HIDWORD(v336);
  LODWORD(v334) = *(v34 + 4 * ((v334 - 2140860287) ^ 0xDDu)) - v334;
  v337 = (v334 - ((2 * v334 + 130152380) & 0x3869A54E) - 1072312699) ^ 0xF1DA6B39;
  v338 = (v310 ^ 0x808C404B) - ((2 * (v310 ^ 0x4B)) & 0xBE) - 1548104769 + *(v34 + 4 * (v310 ^ 0x36));
  v339 = (((v337 - ((2 * v337) & 0x1708CDF70)) << 16) - 0x3E5C47B990480000) ^ 0xC1A3B8466FB80000;
  v340 = (((v338 - ((2 * v338) & 0x126F136ECLL)) << 8) - 0x5327666C87648A00) ^ 0xACD89993789B7600;
  v341 = (v309 ^ 0xD54904FA) - ((2 * (v309 ^ 0xEA)) & 0xDDDDDDDD) + 1325205582 + *(v34 + 4 * (v309 ^ 0x36));
  v342 = (v308 ^ 0x180A48FF) - ((2 * ~v308) & 0x1D6) + 205243467 + *(v34 + 4 * (v308 ^ 0x36));
  v343 = (((v340 - ((2 * v340) & 0xA8DFC99C8A00) + 0xD46FE4CE4539) ^ (v341 - ((2 * v341) & 0xFD96BF4CLL) + 0x34647ECB5FA6) ^ (v339 - ((2 * v339) & 0x86F0230E0000) + 0xC3781187EB96)) << 16) ^ 0x23738B82F1090000;
  v344 = (((v342 - ((2 * v342) & 0x7AB977F6)) << 8) - 0x5A10DDC2A3440500) ^ 0xA5EF223D5CBBFB00;
  v345 = (v343 - ((2 * v343) & 0x804A92239FD60000) + 0x40254911CFEB9B44) ^ (v344 - ((2 * v344) & 0x6675FA315A2E1000) + 0x333AFD18AD17082BLL);
  LODWORD(v345) = v345 ^ HIDWORD(v345);
  v346 = (v319 ^ 0xBFB60892) - 2 * ((v319 ^ 0xBFB60892) & 0x2E18D8B4 ^ v319 & 4) - 0x338B29E7D1E72750;
  v347 = *(v8 + (BYTE1(v346) ^ 0xD8));
  v348 = (v336 ^ 0xCCC7CDEALL) - ((2 * (v336 ^ 0xCCC7CDEALL)) & 0x56AB68DC) - 0x3F5CC87BD4AA4B92;
  v349 = *(v8 + (v345 ^ 0x8DLL));
  v350 = (v329 ^ 0x42A47C20) - ((2 * (v329 ^ 0x42A47C20)) & 0x1F84E1D38) - 0x58A3C70803D8F164;
  v351 = *(v8 + (BYTE2(v348) ^ 0x55));
  v352 = (v345 ^ 0x4CCB3E8DLL) - ((2 * (v345 ^ 0x4CCB3E8DLL)) & 0x4491CACC) + 0x258433C32248E566;
  v353 = *(v8 + (BYTE1(v350) ^ 0xELL));
  v354 = *(v8 + ((v352 >> 24) ^ 0x258433C322));
  v355 = *(v8 + (v329 ^ 0x20));
  v356 = *(v8 + (BYTE1(v348) ^ 0xB4));
  v357 = *(v8 + ((v350 >> 24) ^ 0xA75C38F7FCLL));
  v358 = *(v8 + (v319 ^ 0x92));
  v359 = *(v8 + ((v346 >> 24) ^ 0xCC74D6182ELL));
  v360 = *(v8 + (v336 ^ 0xEALL));
  v361 = *(v8 + (BYTE2(v352) ^ 0x48));
  v362 = *(v8 + ((v348 >> 24) ^ 0xC0A337842BLL));
  v363 = *(v8 + (BYTE2(v350) ^ 0x27));
  v364 = *(v8 + (BYTE1(v352) ^ 0xE5));
  v365 = *(v8 + (BYTE2(v346) ^ 0x18));
  LODWORD(v319) = (v349 ^ 0x2422204C) - ((2 * (v349 ^ 0xFFFFFFCF)) & 0xB0) + *(v34 + 4 * (v349 ^ 0x36)) + 1;
  v366 = (v319 - ((2 * v319 + 4708206) & 0x3A8AFA34) + 493447377) ^ 0xF0ABC484;
  v367 = (v351 ^ 0x8030807B) - ((2 * (v351 ^ 0xFFFFFFFB)) & 0xDE) - 1542091825 + *(v34 + 4 * (v351 ^ 0x36));
  v368 = (((v366 - ((2 * v366) & 0x19ACE0264)) << 16) + 0xF20CD6701320000) ^ 0xF20CD6701320000;
  v369 = (((v367 - ((2 * v367) & 0x1378A938ELL)) << 8) - 0x4703B5643AB63900) ^ 0xB8FC4A9BC549C700;
  v370 = (v353 ^ 0x840000AF) - ((2 * (v353 ^ 0xAB)) & 0x77777777) - 1606022117 + *(v34 + 4 * (v353 ^ 0x36));
  v371 = (v369 - ((2 * v369) & 0x297776792800) + 0x14BBBB3C946DLL) ^ (v370 - ((2 * v370) & 0xFACD314ELL) + 0xBA017D6698A7) ^ (v368 - ((2 * v368) & 0xFF8230CC0000) + 0x7FC11866B10BLL);
  v372 = (v347 ^ 0x6143B4FB) - ((2 * (v347 ^ 0xEB)) & 0xFFFFFFDF) - 1023256497 + *(v34 + 4 * (v347 ^ 0x36));
  v373 = (((v372 - ((2 * v372) & 0x27A87F88)) << 8) - 0x7694BAEC2BC03C00) ^ 0x896B4513D43FC400;
  v374 = (((v371 << 16) ^ 0xD17BDE3CBDC10000) - ((2 * ((v371 << 16) ^ 0xD17BDE3CBDC10000)) & 0x10B3BC27710C0000) + 0x859DE13B886193ELL) ^ (v373 - ((2 * v373) & 0x166492870849B000) + 0xB3249438424D8CCLL);
  LODWORD(v374) = v374 ^ HIDWORD(v374);
  LODWORD(v373) = (v355 ^ 0x3109CA7) - ((2 * (v355 ^ 0xFFFFFFEF)) & 0x166) + *(v34 + 4 * (v355 ^ 0x36)) + 1;
  v375 = (v373 - ((2 * v373 + 40558628) & 0x145D6552) - 1419500869) ^ 0x67C00B37u;
  v376 = (v358 ^ 0x894448DB) - ((2 * (v358 ^ 0xCB)) & 0xFFFFFF9F) - 1694383057 + *(v34 + 4 * (v358 ^ 0x36));
  v377 = (((v375 - ((2 * v375) & 0x1B60DFC4ALL)) << 16) + 0x353DB06FE250000) ^ 0x353DB06FE250000;
  v378 = (((v376 - ((2 * v376) & 0x162C0D7E8)) << 8) - 0x324AB34E9F940C00) ^ 0xCDB54CB1606BF400;
  v379 = (v354 ^ 0xD0315D6B) - 2 * ((v354 ^ 0x6B) & 0x7F) + 1410641631 + *(v34 + 4 * (v354 ^ 0x36));
  v380 = (v356 ^ 0xEA444AF9) - ((2 * (v356 ^ 0xFFFFFFFB)) & 0x1DA) + 973193805 + *(v34 + 4 * (v356 ^ 0x36));
  v381 = (((v378 - ((2 * v378) & 0x7FC73BEB000) + 0x83FE39DF5826) ^ (v379 - ((2 * v379) & 0x90214D1CLL) + 0x5DE54810A68ELL) ^ (v377 - ((2 * v377) & 0x2AD572000000) + 0x956AB900E55CLL)) << 16) ^ 0x4B71C8CF1BF40000;
  v382 = (((v380 - ((2 * v380) & 0x98819818)) << 8) + 0x48E4754C40CC0C00) ^ 0x48E4754C40CC0C00;
  v383 = (v381 - ((2 * v381) & 0x9AA04895E3780000) + 0x4D50244AF1BC36D3) ^ (v382 - ((2 * v382) & 0x34AC782124223A00) + 0x1A563C1092111D18);
  LODWORD(v381) = (v360 ^ 0x808824EC) - ((2 * (v360 ^ 0xFFFFFFEF)) & 0x1F0);
  v384 = v360 ^ 0x36;
  LODWORD(v360) = v383 ^ HIDWORD(v383);
  LODWORD(v383) = v381 + *(v34 + 4 * v384) + 1;
  v385 = (v383 - ((2 * v383 + 1199296686) & 0x742756C2) + 1574015928) ^ LODWORD(STACK[0x598]);
  v386 = (v357 ^ 0x6588C0B7) - ((2 * ~v357) & 0x146) - 1094890493 + *(v34 + 4 * (v357 ^ 0x36));
  v387 = (((v385 - ((2 * v385) & 0x1A544EF56)) << 16) + 0x6EE0D2A277AB0000) ^ 0x6EE0D2A277AB0000;
  v388 = (((v386 - ((2 * v386) & 0x4200F25A)) << 8) - 0xC5012DEFF86D300) ^ 0xF3AFED2100792D00;
  v389 = (v359 ^ 0x852109EF) - ((2 * (v359 ^ 0xEB)) & 0xFFFFFFF7) - 1624964261 + *(v34 + 4 * (v359 ^ 0x36));
  v390 = (v361 ^ 0xBE50EC6A) - ((2 * (v361 ^ 0x6A)) & 0xFC) + 1710563294 + *(v34 + 4 * (v361 ^ 0x36));
  v391 = (((v388 - ((2 * v388) & 0xB19183F3C400) + 0xD8C8C1F9E242) ^ (v389 - ((2 * v389) & 0x19986BB38) + 0x28D8CCC35D9CLL) ^ (v387 - ((2 * v387) & 0x19EE643C0000) + 0xCF7321EA3D2)) << 16) ^ 0xFCE73F241C0C0000;
  v392 = (((v390 - ((2 * v390) & 0x39AF7964)) << 8) + 0x3EBAA1CD7BCB200) ^ 0x3EBAA1CD7BCB200;
  v393 = (v391 - ((2 * v391) & 0x7CB22C076CE80000) - 0x41A6E9FC498B98C4) ^ (v392 - ((2 * v392) & 0x65FB48E751FA1E00) + 0x72FDA473A8FD0FFDLL);
  v394 = v393 ^ HIDWORD(v393);
  LODWORD(v362) = (v362 ^ 0x8042A1F1) - ((2 * (v362 ^ 0xFFFFFFE3)) & 0x1CA) + *(v34 + 4 * (v362 ^ 0x36)) + 1;
  v395 = (v362 - ((2 * v362 + 1208407688) & 0x999241AC) - 255030246) ^ 0xA1279948;
  v396 = (v363 ^ 0x4A0212E6) - ((2 * (v363 ^ 0xFFFFFFEF)) & 0x1E4) - 633079214 + *(v34 + 4 * (v363 ^ 0x36));
  v397 = (((v395 - ((2 * v395) & 0x17149C4D2)) << 16) - 0x7666475B1D970000) ^ 0x8999B8A4E2690000;
  v398 = (((v396 - ((2 * v396) & 0x1A4B081FALL)) << 8) + 0x3AA0ACD25840FD00) ^ 0x3AA0ACD25840FD00;
  v399 = 608570463 - (v365 ^ 0xEB) + *(v34 + 4 * (v365 ^ 0x36));
  v400 = (v364 ^ 0x40D00BB) - ((2 * (v364 ^ 0xFFFFFFFB)) & 0x15E) + 540609551 + *(v34 + 4 * (v364 ^ 0x36));
  v401 = (((v398 - ((2 * v398) & 0xA248FD601800) + 0xD1247EB00C03) ^ (v399 - ((2 * v399) & 0x67CA8AEC) + 0xD0C633E54576) ^ (v397 - ((2 * v397) & 0x393A4E980000) + 0x9C9D274CC5B7)) << 16) ^ 0x9D7F6A198CC20000;
  v402 = (((v400 - ((2 * v400) & 0x4E1B8C5A)) << 8) - 0x277A4DD8F239D300) ^ 0xD885B2270DC62D00;
  v403 = (v401 - ((2 * v401) & 0x696671011CD00000) + 0x34B338808E68CEBALL) ^ (v402 - ((2 * v402) & 0x7C9B637FE631AA00) - 0x41B24E400CE72A01);
  v404 = (v403 ^ HIDWORD(v403) ^ 0x4F9B8B32) - ((2 * (v403 ^ HIDWORD(v403) ^ 0x4F9B8B32)) & 0x1B28FE310) - 0x6149388026B80E78;
  LODWORD(v378) = *(v8 + (v360 ^ 0xF8));
  LODWORD(v369) = *(v8 + (v374 ^ 0xFELL));
  v405 = (v394 ^ 0xCAEA85C0) - 2 * ((v394 ^ 0xCAEA85C0) & 0x6EFAD45A ^ v394 & 0x12) + 0xBB10ECB6EFAD448;
  v406 = (v374 ^ 0x3B1DE1FELL) - 2 * ((v374 ^ 0x3B1DE1FELL) & 0x93268B0DLL ^ v374 & 1) + 0x1E6A170993268B0CLL;
  LODWORD(v349) = *(v8 + (BYTE1(v405) ^ 0xD4));
  v407 = (v360 ^ 0xA8FC25F8) - ((2 * (v360 ^ 0xA8FC25F8)) & 0x5A40770C) + 0x3DBAEBCD2D203B86;
  LODWORD(v381) = *(v8 + (BYTE2(v404) ^ 0x47));
  LODWORD(v384) = *(v8 + ((v406 >> 24) ^ 0x1E6A170993));
  LODWORD(v360) = *(v8 + ((v405 >> 24) ^ 0xBB10ECB6ELL));
  LODWORD(v387) = *(v8 + (BYTE1(v404) ^ 0xF1));
  LOBYTE(v388) = *(v8 + (BYTE2(v406) ^ 0x26));
  LODWORD(v397) = *(v8 + (BYTE1(v406) ^ 0x8BLL));
  LODWORD(v406) = *(v8 + ((v403 ^ BYTE4(v403)) ^ 0x32));
  LODWORD(v355) = ((v369 ^ LOBYTE(STACK[0x7E0])) ^ 0xA4A82375) - ((2 * (v369 ^ LODWORD(STACK[0x7E0]) ^ 0xF6)) & 0xF8) + *(v34 + 4 * ((v369 ^ LOBYTE(STACK[0x7E0])) ^ 0x2Bu)) + 1;
  LODWORD(v369) = (v349 ^ (LODWORD(STACK[0x798]) - 68)) - ((2 * (v349 ^ (LODWORD(STACK[0x798]) - 68))) & 0xFFFFFFB8) + 92;
  v408 = (v355 - ((2 * v355 - 12856906) & 0xF9C43020) + 2088763627) ^ 0x110CA18E;
  v409 = 608570463 - ((*(v8 + ((v404 >> 24) ^ 0x9EB6C77FD9)) ^ LODWORD(STACK[0x7D8])) ^ 0x2Au) + *(v34 + 4 * ((*(v8 + ((v404 >> 24) ^ 0x9EB6C77FD9)) ^ LODWORD(STACK[0x7D8])) ^ 0xF7u));
  v410 = (((v408 - ((2 * v408) & 0x1CD85DC32)) << 16) - 0x773193D11E70000) ^ 0xF88CE6C2EE190000;
  v411 = (((v409 - ((2 * v409) & 0x33033794)) << 8) - 0x3C002CE67E643600) ^ 0xC3FFD319819BCA00;
  v412 = (v369 ^ 0x80018036) - ((2 * (v369 ^ 0xB7)) & 0xFC) - 1539011618 + *(v34 + 4 * (v369 ^ 0x6Au));
  v413 = ((v378 ^ LOBYTE(STACK[0x780])) ^ 0xA0C42043) - ((2 * (v378 ^ LODWORD(STACK[0x780]) ^ 0x4B)) & 0x1EE) - 2088637353 + *(v34 + 4 * ((v378 ^ LOBYTE(STACK[0x780])) ^ 0x96u));
  v414 = (((v411 - ((2 * v411) & 0xE19927ACFE00) + 0x70CC93D67F9BLL) ^ (v412 - ((2 * v412) & 0x10E596B2) + 0x9E7E0872CB59) ^ (v410 - ((2 * v410) & 0x343C17C0000) + 0x81A1E0BE2163)) << 16) ^ 0x6F137B1A95A10000;
  v415 = (((v413 - ((2 * v413) & 0x5CEFE834)) << 8) - 0x6301D3D1880BE600) ^ 0x9CFE2C2E77F41A00;
  v416 = (v414 - ((2 * v414) & 0x114CA90AAAF20000) - 0x7759AB7AAA86BE87) ^ (v415 - ((2 * v415) & 0x49F3DFAF0D850800) - 0x5B061028793D7BD6);
  LODWORD(v412) = *(v8 + ((v407 >> 24) ^ 0x3DBAEBCD2DLL)) ^ LODWORD(STACK[0x768]);
  LODWORD(v403) = HIDWORD(v416) ^ v416 ^ LODWORD(STACK[0x790]);
  LODWORD(v416) = (2 * ((v412 ^ 0x87) - ((2 * (v412 ^ 0x87)) & 0x1EA)) - 958025238) ^ 0xC6E5B1EA;
  LODWORD(v416) = ((v416 - ((2 * v416) & 0xA8) + 213) & 0xDA ^ 0xD0) + (((v412 ^ 0x6C) - ((2 * (v412 ^ 0x6C)) & 0xD8) + 1641742188) ^ 0xD2B345EA);
  LODWORD(v384) = (v384 ^ (LODWORD(STACK[0x800]) - 62)) + (~(2 * (v384 ^ (LODWORD(STACK[0x800]) - 62))) | 0x5B) + 83;
  LODWORD(v416) = (v416 ^ 0x10328446) + *(v34 + 4 * (v412 ^ 0x5Au)) - ((2 * v416) & 0xDF9AF772) + 1;
  v417 = (v416 - ((2 * v416 + 251299082) & 0x53C89B5C) - 245264333) ^ 0xC40AF430;
  v418 = (v384 ^ 0xC0739F1) - ((2 * (v384 ^ 0xB9)) & 0x16E) + 406770455 + *(v34 + 4 * (v384 ^ 0x64u));
  v419 = (((v417 - ((2 * v417) & 0x1E7AD69ECLL)) << 16) - 0x22A80C294B0A0000) ^ 0xDD57F3D6B4F60000;
  v420 = (((v418 - ((2 * v418) & 0x1A923E842)) << 8) - 0x3120AF2B6E0BDF00) ^ 0xCEDF50D491F42100;
  v421 = ((v381 ^ LOBYTE(STACK[0x770])) ^ 0xB400383B) - ((2 * (v381 ^ LODWORD(STACK[0x770]) ^ 0x7B)) & 0x17E) + 1883624479 + *(v34 + 4 * ((v381 ^ LOBYTE(STACK[0x770])) ^ 0xA6u));
  v422 = ((*(v8 + (v394 ^ 0xC0)) ^ LODWORD(STACK[0x788])) ^ 0x9682144D) - 2 * (((*(v8 + (v394 ^ 0xC0)) ^ LODWORD(STACK[0x788])) ^ 0xCD) & 0x7F) - 1916536865 + *(v34 + 4 * ((*(v8 + (v394 ^ 0xC0)) ^ LODWORD(STACK[0x788])) ^ 0x10u));
  v423 = (((v420 - ((2 * v420) & 0xD739BED66A00) + 0xEB9CDF6B3515) ^ (v421 - ((2 * v421) & 0x1F14EDF9ALL) + 0x96BDF8A76FCDLL) ^ (v419 - ((2 * v419) & 0x9C2EDACA0000) + 0x4E176D65F716)) << 16) ^ 0x33364AA9ADCE0000;
  v424 = (((v422 - ((2 * v422) & 0x10F9C4530)) << 8) + 0x2196987CE229800) ^ 0x2196987CE229800;
  v425 = (v423 - ((2 * v423) & 0xE8523FEF314C0000) + 0x74291FF798A6D9A7) ^ (v424 - ((2 * v424) & 0x3108E6294D104200) + 0x58847314A68821DCLL);
  LODWORD(v387) = ((v387 ^ LOBYTE(STACK[0x7A8])) ^ 0xAA0052F6) - ((2 * (v387 ^ LODWORD(STACK[0x7A8]) ^ 0x67)) & 0xDC) + *(v34 + 4 * ((v387 ^ LOBYTE(STACK[0x7A8])) ^ 0xBAu)) + 1;
  LODWORD(v404) = *(v8 + (BYTE2(v407) ^ 0x20)) ^ LODWORD(STACK[0x7A0]);
  v426 = (v387 - ((2 * v387 + 9139098) & 0x3276D8C) - 69635949) ^ LODWORD(STACK[0x590]);
  v427 = ((v360 ^ LOBYTE(STACK[0x7B0])) ^ 0x886A004B) - ((2 * (v360 ^ LODWORD(STACK[0x7B0]) ^ 0x78)) & 0x198) - 1680077780 + *(v34 + 4 * ((v360 ^ LOBYTE(STACK[0x7B0])) ^ 0xA5u));
  v428 = (((v426 - ((2 * v426) & 0x13785F46ALL)) << 16) - 0x4ACB643D05CB0000) ^ 0xB5349BC2FA350000;
  v429 = (((v427 - ((2 * v427) & 0x1A7854CFELL)) << 8) + 0x420DDCD3C2A67F00) ^ 0x420DDCD3C2A67F00;
  LOBYTE(v388) = (v388 ^ (LOBYTE(STACK[0x7F8]) - 58)) - ((2 * (v388 ^ (LOBYTE(STACK[0x7F8]) - 58))) & 0xE3) + 113;
  v430 = (v404 ^ 0x343210A) - ((2 * (v404 ^ 2)) & 0x1EE) + 553839447 + *(v34 + 4 * (v404 ^ 0xDFu));
  v431 = 608570463 - (v388 ^ 0x9Au) + *(v34 + 4 * (v388 ^ 0x47u));
  LODWORD(v394) = *(v8 + (BYTE1(v407) ^ 0x3BLL)) ^ (LODWORD(STACK[0x760]) - 29);
  v432 = (((v429 - ((2 * v429) & 0xF1A70C68B000) + 0x78D3863458FDLL) ^ (v430 - ((2 * v430) & 0x1B6E956EALL) + 0xA313DB74AB75) ^ (v428 - ((2 * v428) & 0x239E72860000) + 0x11CF3943F123)) << 16) ^ 0xCA0F640302AB0000;
  v433 = (((v431 - ((2 * v431) & 0x34E05436)) << 8) + 0x790E01A702A1B00) ^ 0x790E01A702A1B00;
  v434 = (v432 - ((2 * v432) & 0xFE37DACA73F40000) - 0xE4129AC60568D9) ^ (v433 - ((2 * v433) & 0xDA92D9BB3017000) + 0x46D496CDD980B86DLL);
  LODWORD(v394) = ((v394 - ((2 * v394) & 0xAC) - 42) ^ 0x8C11A43B) - ((2 * ((v394 - ((2 * v394) & 0xFFFFFFAC) - 42) ^ 0x3D)) & 0x1F2) + *(v34 + 4 * ((v394 - ((2 * v394) & 0xAC) - 42) ^ 0xE0u));
  LODWORD(v434) = HIDWORD(v434) ^ v434 ^ LODWORD(STACK[0x778]);
  v435 = (v394 + 1 - 2 * ((v394 + 406087769) & 0x1A5A947F ^ (v394 + 1) & 5) + 848231634) ^ 0x77B42DE4u;
  LODWORD(v406) = (v406 ^ (LODWORD(STACK[0x810]) - 69)) - ((2 * (v406 ^ (LODWORD(STACK[0x810]) - 69))) & 0xFFFFFFB2) + 89;
  v436 = ((v397 ^ LOBYTE(STACK[0x7B8])) ^ 0xEC8002B2) - ((2 * (v397 ^ LODWORD(STACK[0x7B8]) ^ 0xB6)) & 0x1F6) + 935725659 + *(v34 + 4 * ((v397 ^ LOBYTE(STACK[0x7B8])) ^ 0x6Bu));
  v437 = (((v435 - ((2 * v435) & 0x51765848)) << 16) + 0x7B0D28BB2C240000) ^ 0x7B0D28BB2C240000;
  v438 = (((v436 - ((2 * v436) & 0x1AE13EBEELL)) << 8) - 0x5323DF28F60A0900) ^ 0xACDC20D709F5F700;
  v439 = (v406 ^ 0x40004) - ((2 * v406) & 0x92u) + 608308137 + *(v34 + 4 * (v406 ^ 0x6Fu));
  v440 = (v438 - ((2 * v438) & 0xD279CDEE4E00) + 0x693CE6F7278BLL) ^ (v439 - ((2 * v439) & 0x19771AF40) + 0x9415CBB8D7A0) ^ (v437 - ((2 * v437) & 0x5098C7500000) + 0xA84C63A88DCFLL);
  v441 = ((*(v8 + (BYTE2(v405) ^ 0xFALL)) ^ LODWORD(STACK[0x808])) ^ 0xA4470AD6) - 2 * (((*(v8 + (BYTE2(v405) ^ 0xFALL)) ^ LODWORD(STACK[0x808])) ^ 0x16) & 0x3F) + 2147418527 + *(v34 + 4 * ((*(v8 + (BYTE2(v405) ^ 0xFALL)) ^ LODWORD(STACK[0x808])) ^ 0xCBu));
  v442 = (v403 ^ 0x2E94046) - ((2 * (v403 ^ 0x2E94046)) & 0x1E6B82082) - 0x7E0A34D00CA3EFBFLL;
  v443 = (((v441 - ((2 * v441) & 0x132F99714)) << 8) - 0x5CCB2A6683347600) ^ 0xA334D5997CCB8A00;
  v444 = (((v440 << 16) ^ 0x55654EE77DE40000) - ((2 * ((v440 << 16) ^ 0x55654EE77DE40000)) & 0x1D4CFB1396700000) + 0xEA67D89CB381DB8) ^ (v443 - ((2 * v443) & 0x7BEA59D8448DB800) - 0x20AD313DDB923DDLL);
  v445 = *(v8 + ((v442 >> 24) ^ 0x81F5CB2FF3));
  LODWORD(v443) = HIDWORD(v444) ^ v444 ^ LODWORD(STACK[0x7C0]);
  v446 = *(v8 + ((BYTE4(v444) ^ v444 ^ LOBYTE(STACK[0x7C0])) ^ 0xECLL));
  v447 = *(v8 + (v434 ^ 0xF8));
  v448 = *(v8 + ((BYTE4(v425) ^ v425 ^ LOBYTE(STACK[0x818])) ^ 0x71));
  v449 = HIDWORD(v425) ^ v425 ^ LODWORD(STACK[0x818]) ^ 0x696E2971;
  v450 = v449 - ((2 * v449) & 0x890DCE98) + 0x249B407A4486E74CLL;
  v451 = (v434 ^ 0xB7FC4AF8) - ((2 * (v434 ^ 0xB7FC4AF8)) & 0x5294A986) - 0x21DF981FD6B5AB3DLL;
  v452 = *(v8 + (BYTE2(v442) ^ 0x5CLL));
  v453 = *(v8 + (BYTE1(v442) ^ 0x10));
  v454 = (v443 ^ 0x4634E4EC) - ((2 * (v443 ^ 0x4634E4EC)) & 0x9CFD8B0) - 0x63770175FB1813A8;
  v455 = *(v8 + ((v450 >> 24) ^ 0x249B407A44));
  v456 = *(v8 + ((v451 >> 24) ^ 0xDE2067E029));
  v457 = *(v8 + ((v454 >> 24) ^ 0x9C88FE8A04));
  v458 = *(v8 + (BYTE2(v451) ^ 0x4ALL));
  v459 = *(v8 + (BYTE2(v450) ^ 0x86));
  LODWORD(STACK[0x900]) = LODWORD(STACK[0x900]) != 103;
  LODWORD(v448) = (v448 ^ 0x468CFB) - ((2 * (v448 ^ 0xEB)) & 0xFFFFFFDF) + *(v34 + 4 * (v448 ^ 0x36)) + 1;
  v460 = (v448 - ((2 * v448 + 1207894172) & 0xFE314CF6) - 1558698295) ^ 0x92F61FE5;
  v461 = (v445 ^ 0x13594F8) - ((2 * (v445 ^ 0xFFFFFFFB)) & 0x1D8) + 588281932 + *(v34 + 4 * (v445 ^ 0x36));
  v462 = (((v460 - ((2 * v460) & 0x147D093A)) << 16) + 0x43CE0A3E849D0000) ^ 0x43CE0A3E849D0000;
  v463 = v462 - ((2 * v462) & 0x11F418960000);
  v464 = (((v461 - ((2 * v461) & 0x58DE47BC)) << 8) - 0x724E87D390DC2200) ^ 0x8DB1782C6F23DE00;
  v465 = v464 - ((2 * v464) & 0xA4083BBC400);
  v466 = *(v8 + (BYTE2(v454) ^ 0xE7));
  v467 = *(v8 + (BYTE1(v450) ^ 0xE7));
  v468 = *(v8 + (BYTE1(v454) ^ 0xECLL));
  v469 = STACK[0x8D8] >> 8;
  v470 = *(v8 + (BYTE1(v451) ^ 0x54));
  v471 = *(v8 + (v403 ^ 0x46));
  v472 = (v446 ^ 0xE09201E6) - ((2 * (v446 ^ 0xFFFFFFEF)) & 0x1E4) + 1135872850 + *(v34 + 4 * (v446 ^ 0x36));
  v473 = (v465 + 0x852041DDE2DALL) ^ (v472 - ((2 * v472) & 0x95D660D8) + 0xC3D34AEB306CLL) ^ (v463 + 0x8FA0C4BB168);
  v474 = (v447 ^ 0xC15F9) - ((2 * (v447 ^ 0xFFFFFFFB)) & 0x1DA) + 607778637 + *(v34 + 4 * (v447 ^ 0x36));
  v475 = (((v474 - ((2 * v474) & 0x1203FE6E4)) << 8) - 0x49B6BC6FE00C8E00) ^ 0xB64943901FF37200;
  v476 = (((v473 << 16) ^ 0x4E09077D63DE0000) - ((2 * ((v473 << 16) ^ 0x4E09077D63DE0000)) & 0x103EED04E6120000) - 0x77E0897D8CF660B2) ^ (v475 - ((2 * v475) & 0x647CE9BF0DEA0200) - 0xDC18B20790AFE4DLL);
  LODWORD(v476) = v476 ^ HIDWORD(v476);
  LODWORD(v475) = (v456 ^ 0x417018CB) - ((2 * (v456 ^ 0xCB)) & 0xFFFFFFBF) + *(v34 + 4 * (v456 ^ 0x36)) + 1;
  v477 = (v475 - ((2 * v475 + 1168894076) & 0x6E107ED0) - 1713491034) ^ 0x5AE686F6u;
  v478 = (v455 ^ 0x99900DB) - ((2 * (v455 ^ 0xCB)) & 0xFFFFFF9F) + 447548463 + *(v34 + 4 * (v455 ^ 0x36));
  LODWORD(v447) = v452 ^ 0xEB;
  LODWORD(v452) = *(v34 + 4 * (v452 ^ 0x36));
  STACK[0x8D8] = -3538944;
  v479 = (((v477 - ((2 * v477) & 0x1CBAA0DC0)) << 16) + 0x48E3E5D506E00000) ^ 0x48E3E5D506E00000;
  v480 = (((v478 - ((2 * v478) & 0x1DE06C2C2)) << 8) + 0x7D053BEF03616100) ^ 0x7D053BEF03616100;
  v481 = (v480 - ((2 * v480) & 0x83A9C2742000) + 0x41D4E13A103BLL) ^ ((608570463 - v447 + v452) - ((2 * (608570463 - v447 + v452)) & 0x1D9B1CCCALL) + 0xB3E5ECD8E665) ^ (v479 - ((2 * v479) & 0x6EE848420000) + 0x377424216B8FLL);
  v482 = (v457 ^ 0x20A118B) - ((2 * (v457 ^ 0x8B)) & 0xFFFFFF3F) + 574356223 + *(v34 + 4 * (v457 ^ 0x36));
  v483 = (((v482 - ((2 * v482) & 0x12FFDA1EELL)) << 8) - 0x54E1FD68012F0900) ^ 0xAB1E0297FED0F700;
  v484 = (((v481 << 16) ^ 0xC54529C39DD10000) - ((2 * ((v481 << 16) ^ 0xC54529C39DD10000)) & 0x3B4FA18F202E0000) + 0x1DA7D0C790178C58) ^ (v483 - ((2 * v483) & 0x7F9664F080996000) + 0x7FCB3278404CB06CLL);
  LODWORD(v481) = *(v34 + 4 * (v459 ^ 0x36));
  LODWORD(v480) = (v459 ^ 0x50008E6) - ((2 * (v459 ^ 0xFFFFFFEF)) & 0x1E4);
  v485 = v484 ^ HIDWORD(v484);
  LODWORD(v484) = v480 + v481 + 1 - ((2 * (v480 + v481 + 1) + 1049364642) & 0xF5727308) + 436157909;
  v486 = (v453 ^ 0x5981015A) - ((2 * (v453 ^ 0xFFFFFFFB)) & 0x9C) - 893056338 + *(v34 + 4 * (v453 ^ 0x36));
  v487 = ((((v484 ^ 0x1757801A) - ((2 * (v484 ^ 0x1757801A)) & 0x74844CCA)) << 16) - 0x2066C5BDD99B0000) ^ 0xDF993A4226650000;
  v488 = (((v486 - ((2 * v486) & 0xBD762C10)) << 8) + 0x7DA65A5EBB160800) ^ 0x7DA65A5EBB160800;
  v489 = (v466 ^ 0xA348A162) - ((2 * (v466 ^ 0xFFFFFFE3)) & 0xEC) - 2130875690 + *(v34 + 4 * (v466 ^ 0x36));
  v490 = (v458 ^ 0x500D3) - ((2 * (v458 ^ 0xC3)) & 0xFFFFFF8F) + 608242727 + *(v34 + 4 * (v458 ^ 0x36));
  v491 = (((v488 - ((2 * v488) & 0x11487678F000) + 0x88A43B3C789FLL) ^ (v489 - ((2 * v489) & 0x5210F7D4) + 0x2F3829087BEALL) ^ (v487 - ((2 * v487) & 0x20D692E40000) + 0x906B49729A97)) << 16) ^ 0x37F75B4699E20000;
  v492 = (((v490 - ((2 * v490) & 0x1E12CD4D8)) << 8) + 0x304F27F0966A6C00) ^ 0x304F27F0966A6C00;
  v493 = (v491 - ((2 * v491) & 0xA70BC569CEE60000) - 0x2C7A1D4B188C35F1) ^ (v492 - ((2 * v492) & 0x6D1C6B5EB9386A00) + 0x768E35AF5C9C35FDLL);
  LODWORD(v492) = (v467 ^ 0x8AB188F3) - ((2 * (v467 ^ 0xE3)) & 0xFFFFFFCF) + *(v34 + 4 * (v467 ^ 0x36)) + 1;
  LODWORD(v488) = (v471 ^ 0xEB) - 2 * ((v471 ^ 0xEB) & 3) + 178121731;
  LODWORD(v488) = ((((2 * v488) ^ 0x153BD806) - 2 * (((2 * v488) ^ 0x153BD806) & 0x3A ^ (2 * v488) & 0x18) + 163) & 0xDA ^ 0x82) + (v488 ^ 0xB9F4566E);
  v494 = (v492 - ((2 * v492 + 858327180) & 0xCE77F8CA) - 2133819221) ^ 0xAD545FB;
  v495 = *(v34 + 4 * (v471 ^ 0x36)) + (v488 ^ 0xB8A00408) - ((2 * v488) & 0x8EBFF7EE) + 521126596;
  v496 = (((v494 - ((2 * v494) & 0x1759DF346)) << 16) + 0x56E3BACEF9A30000) ^ 0x56E3BACEF9A30000;
  v497 = (((v495 - ((2 * v495) & 0x544A023E)) << 8) + 0x6791C92A25011F00) ^ 0x6791C92A25011F00;
  v498 = (v468 ^ 0x100609E1) - ((2 * (v468 ^ 0xFFFFFFE3)) & 0x1EA) + 339739477 + *(v34 + 4 * (v468 ^ 0x36));
  v499 = (v470 ^ 0x8424084B) - ((2 * (v470 ^ 0x4B)) & 0xBE) - 1608383553 + *(v34 + 4 * (v470 ^ 0x36));
  v500 = (((v497 - ((2 * v497) & 0xBDF297187E00) + 0xDEF94B8C3FDFLL) ^ (v498 - ((2 * v498) & 0x7B4F8C24) + 0xF8EC3DA7C612) ^ (v496 - ((2 * v496) & 0x173D13260000) + 0xB9E8993F574)) << 16) ^ 0x2D8BFFB80CB90000;
  v501 = (((v499 - ((2 * v499) & 0xE592AC2CLL)) << 8) - 0x3E015C8D36A9EA00) ^ 0xC1FEA372C9561600;
  v502 = (v500 - ((2 * v500) & 0xA8F01CAFD1700000) + 0x54780E57E8B8CCCELL) ^ (v501 - ((2 * v501) & 0x1D19EF7ED3A9FE00) + 0x4E8CF7BF69D4FF53);
  LODWORD(v500) = v502 ^ HIDWORD(v502);
  v503 = (v476 ^ 0x28735CFCLL) - ((2 * (v476 ^ 0x28735CFCLL)) & 0x84F37656) - 0x43075509BD8644D5;
  v504 = *(v8 + (v500 ^ 0xB2));
  v505 = *(v8 + (BYTE2(v503) ^ 0x79));
  LODWORD(v493) = v493 ^ HIDWORD(v493);
  v506 = (v485 ^ 0x78BD5FCCLL) - 2 * ((v485 ^ 0x78BD5FCCLL) & 0xAE575797 ^ v485 & 0x13) - 0x686BCE951A8A87CLL;
  v507 = (v493 ^ 0x9DE7D5D9) + 0x33BB28459E9192CBLL - 2 * ((v493 ^ 0x9DE7D5D9) & 0x9E9192CFLL ^ v493 & 4);
  v508 = (v500 ^ 0x4EB916B2) - ((2 * (v500 ^ 0x4EB916B2)) & 0xA357EFF0) - 0x69482812AE540808;
  v509 = ((((v507 ^ 0x33BB28459E9192CBLL) >> (v469 & 0x10 ^ 0x10)) + 0x26B20925C309D315 - ((2 * ((v507 ^ 0x33BB28459E9192CBLL) >> (v469 & 0x10 ^ 0x10))) & 0x4D64124B8613A62ALL)) ^ 0x26B20925C309D315) >> (v469 & 0x10);
  v510 = *(v8 + ((v509 - ((2 * v509) & 0x68) + 52) ^ 0x34));
  v511 = *(v8 + ((v508 >> 24) ^ 0x96B7D7ED51));
  v512 = *(v8 + ((v506 >> 24) ^ 0xF9794316AELL));
  v513 = *(v8 + (BYTE2(v506) ^ 0x57));
  v515 = *(v8 + (BYTE1(v503) ^ 0xBBLL));
  v516 = *(v8 + (BYTE1(v506) ^ 0x57));
  v517 = *(v8 + (v493 ^ 0xD9));
  v518 = *(v8 + (BYTE2(v508) ^ 0xABLL));
  v519 = *(v8 + (v476 ^ 0xFCLL));
  v520 = *(v8 + (BYTE1(v508) ^ 0xF7));
  v521 = *(v8 + (v485 ^ 0xCCLL));
  v522 = (v503 >> 24) ^ 0xBCF8AAF642;
  v523 = *(v8 + ((v507 >> 24) ^ 0x33BB28459ELL));
  v524 = *(v8 + v522);
  LODWORD(v522) = (v510 ^ 0xA14440FA) - ((2 * (v510 ^ 0xEA)) & 0xDDDDDDDD) + *(v34 + 4 * (v510 ^ 0x36)) + 1;
  v525 = (v522 - ((2 * v522 + 100898970) & 0x6DCE3150) - 1175919371) ^ 0xDB09A136;
  v526 = (((v525 - ((2 * v525) & 0x14927BD6CLL)) << 8) + 0x7035EBA493DEB600) ^ 0x7035EBA493DEB600;
  v527 = (v512 ^ 0x80020E6B) - 2 * ((v512 ^ 0x6B) & 0x7F) - 1160461958 + *(v34 + 4 * (v512 ^ 0x36));
  v528 = (v526 - ((2 * v526) & 0x2214EE775DFF4A00) - 0x2EF588C451005AFDLL) ^ 0xD10A773B43111C9DLL;
  v529 = (v527 | ((v527 < 0x1690C39B) << 32)) - 378586011;
  v530 = (v528 & v529) - ((2 * (v528 & v529)) & 0x1E681FB9766144);
  v531 = v528 + v529 - ((2 * (v528 + v529)) & 0xAB47FE87FDA514);
  v532 = (((((v531 << 8) + 0x55A3FF43FED28A00) ^ 0x55A3FF43FED28A00) - 0x753BBFF74509DB0FLL - ((2 * (((v531 << 8) + 0x55A3FF43FED28A00) ^ 0x55A3FF43FED28A00)) & 0x1588801175EC4800)) ^ 0x8AC44008BAF624F1) - (((((v530 << 9) - 0x6197E046899EBC00) ^ 0x9E681FB976614400) + 0x47F576C9BCD3950FLL - ((2 * (((v530 << 9) - 0x6197E046899EBC00) ^ 0x9E681FB976614400)) & 0xFEAED9379A72800)) ^ 0x47F576C9BCD3950FLL);
  v533 = (v505 ^ 0x21A008AB) - ((2 * (v505 ^ 0xAB)) & 0xFFFFFF7F) + 44434463 + *(v34 + 4 * (v505 ^ 0x36));
  v534 = (v504 ^ 0x401086EA) - ((2 * (v504 ^ 0xEA)) & 0x1FC) - 466254242 + *(v34 + 4 * (v504 ^ 0x36));
  v535 = (((v532 - ((2 * v532) & 0x8355CDEC6138) + 0x41AAE6F6309CLL) ^ (v533 - ((2 * v533) & 0x30AFC6C4) + 0x72F31857E362)) << 16) ^ 0x3359FEA1D3FE0000;
  v536 = (((v534 - ((2 * v534) & 0x1A0FB29C0)) << 8) + 0x52CB59D07D94E000) ^ 0x52CB59D07D94E000;
  v537 = (v535 - ((2 * v535) & 0x86FA83C5FAF80000) - 0x3C82BE1D0283858CLL) ^ (v536 - ((2 * v536) & 0x37B9282D630FDE00) + 0x1BDC9416B187EFA6);
  v538 = v537 ^ HIDWORD(v537);
  v514 = *(v8 + (BYTE1(v507) ^ 0x92));
  LODWORD(v536) = (v514 ^ 0x24B0573) - ((2 * (v514 ^ 0xFFFFFFE3)) & 0xCE) + *(v34 + 4 * (v514 ^ 0x36)) + 1;
  v539 = (v536 - ((2 * v536 + 1140198796) & 0x544FCD88) - 870126198) ^ 0x47C95F5Au;
  v540 = (v513 ^ 0x11917D2B) - 2 * ((v513 ^ 0x2B) & 0x3F) + 313822879 + *(v34 + 4 * (v513 ^ 0x36));
  v541 = (STACK[0x8E8] + ((v539 - ((2 * v539) & 0x16DFC5324)) << 16) - 0x48274901D63E0000) ^ 0xB7D8B6FE29920000;
  v542 = (((v540 - ((2 * v540) & 0xB5B7703ELL)) << 8) - 0x6317CCA52447E100) ^ 0x9CE8335ADBB81F00;
  v543 = (v515 ^ 0xC0241A6B) - 2 * ((v515 ^ 0x6B) & 0x7F) + 1679946207 + *(v34 + 4 * (v515 ^ 0x36));
  v544 = (v511 ^ 0xCB101CF9) - ((2 * (v511 ^ 0xFFFFFFFB)) & 0x1DA) + 1496707149 + *(v34 + 4 * (v511 ^ 0x36));
  v545 = (((v542 - ((2 * v542) & 0xD7B4FFEF1200) + 0xEBDA7FF7893ELL) ^ (v543 - ((2 * v543) & 0x5B2D74EC) + 0x57902D96BA76) ^ (v541 - ((2 * v541) & 0xBA505D340000) + 0xDD282E9A5698)) << 16) ^ 0x61627CFB65D00000;
  v546 = (((v544 - ((2 * v544) & 0x60A89456)) << 8) + 0x6B3BE830544A2B00) ^ 0x6B3BE830544A2B00;
  v547 = (v545 - ((2 * v545) & 0x3F054575DC900000) + 0x1F82A2BAEE48D29DLL) ^ (v546 - ((2 * v546) & 0x793F46ECF66D1800) - 0x3605C8984C9735ALL);
  LODWORD(v543) = *(v34 + 4 * (v516 ^ 0x36));
  LODWORD(v545) = (v516 ^ 0x8A0649FF) - ((2 * ~v516) & 0x1D6);
  LODWORD(v516) = v547 ^ HIDWORD(v547);
  v548 = (v545 + v543 + 1 - ((2 * (v545 + v543 + 1) + 880772756) & 0xC5FDB49C) - 46228072) ^ 0x8F1063D0;
  v549 = (v519 ^ 0x8280246B) - 2 * ((v519 ^ 0x6B) & 0x7F) - 1580865569 + *(v34 + 4 * (v519 ^ 0x36));
  v550 = (((v548 - ((2 * v548) & 0x656B1AEA)) << 16) + 0x795832B58D750000) ^ 0x795832B58D750000;
  v551 = (((v549 - ((2 * v549) & 0x94BD83C8)) << 8) + 0x58F0B54A5EC1E400) ^ 0x58F0B54A5EC1E400;
  v552 = (v518 ^ 0x90D5083F) - ((2 * ~v518) & 0x56) - 1821310069 + *(v34 + 4 * (v518 ^ 0x36));
  v553 = (v517 ^ 0xC3C480E9) + 1619099937 - ((2 * (v517 ^ 0xE9)) & 0xFFFFFFFB) + *(v34 + 4 * (v517 ^ 0x36)) + 2876;
  v554 = (((v551 - ((2 * v551) & 0xDA2C2A5C4400) + 0x6D16152E22D0) ^ (v552 - ((2 * v552) & 0xCBE5114CLL) + 0x43AE65F288A6) ^ (v550 - ((2 * v550) & 0xA39B48EC0000) + 0xD1CDA476141CLL)) << 16) ^ 0xFF75D4AABE6A0000;
  v555 = (((v553 - ((2 * v553) & 0x19EB8774CLL)) << 8) - 0x7F472430A3C45A00) ^ 0x80B8DBCF5C3BA600;
  v556 = (v554 - ((2 * v554) & 0xCDBBB73064360000) - 0x19222467CDE44C50) ^ (v555 - ((2 * v555) & 0x6E786C516BD17E00) - 0x8C3C9D74A174052);
  v557 = v523 ^ 0x36;
  LODWORD(v552) = (v523 ^ 0x2147B) - ((2 * (v523 ^ 0xFFFFFFFB)) & 0xDE);
  LODWORD(v523) = v556 ^ HIDWORD(v556);
  LODWORD(v556) = v552 + *(v34 + 4 * v557) + 1;
  v558 = (v556 - ((2 * v556 + 1216868252) & 0x5EC6D92E) - 744004507) ^ 0x428DD509u;
  v559 = (v521 ^ 0x3015EA) - ((2 * (v521 ^ 0xEA)) & 0x1FC) + 605419358 + *(v34 + 4 * (v521 ^ 0x36));
  v560 = (((v558 - ((2 * v558) & 0x3EE904BC)) << 16) + 0xEB41F74825E0000) ^ 0xEB41F74825E0000;
  v561 = (((v559 - ((2 * v559) & 0x187441EEELL)) << 8) - 0x49752D3C5DF08900) ^ 0xB68AD2C3A20F7700;
  v562 = (v524 ^ 0x401000E8) - ((2 * (v524 ^ 0xE8)) & 0x1F8) - 466219940 + *(v34 + 4 * (v524 ^ 0x36));
  v563 = (v520 ^ 0x5004107B) - ((2 * (v520 ^ 0xFFFFFFFB)) & 0xDE) - 733873201 + *(v34 + 4 * (v520 ^ 0x36));
  v564 = (((v561 - ((2 * v561) & 0xFE4549DEA200) + 0x7F22A4EF51A2) ^ (v562 - ((2 * v562) & 0x16C7A4592) + 0x2C55B63D22C9) ^ (v560 - ((2 * v560) & 0xD5809D480000) + 0x6AC04EA4284ALL)) << 16) ^ 0x39B75C765B210000;
  v565 = (((v563 - ((2 * v563) & 0x17956927CLL)) << 8) + 0x5B97E3BCAB493E00) ^ 0x5B97E3BCAB493E00;
  v566 = (v564 - ((2 * v564) & 0xB6FFB2B619040000) - 0x248026A4F37D6705) ^ (v565 - ((2 * v565) & 0x179561D6FFB24800) + 0xBCAB0EB7FD92485);
  v567 = *(v8 + (BYTE1(v538) ^ 0xB3));
  LODWORD(v566) = v566 ^ HIDWORD(v566);
  v568 = (v566 ^ 0xE6901418) - ((2 * (v566 ^ 0xE6901418)) & 0x6F992844) - 0x1436DAABC8336BDELL;
  v569 = (v523 ^ 0xC953DE75) - ((2 * (v523 ^ 0xC953DE75)) & 0x5F5D4DA4) - 0x6C5B0960D051592ELL;
  v570 = *(v8 + ((v568 >> 24) ^ 0xEBC9255437));
  v571 = (v516 ^ 0xC87AB0F9) - ((2 * (v516 ^ 0xC87AB0F9)) & 0x1EBB7648CLL) - 0x518EA0920A244DBALL;
  v572 = *(v8 + (BYTE2(v571) ^ 0xDBLL));
  v573 = *(v8 + ((v571 >> 24) ^ 0xAE715F6DF5));
  v574 = *(v8 + (BYTE2(v569) ^ 0xAELL));
  v575 = *(v8 + (v523 ^ 0x75));
  v576 = *(v8 + (v538 ^ 0x60));
  v577 = (v538 ^ 0x2BFEB360) - ((2 * (v538 ^ 0x2BFEB360)) & 0xD0F38DFELL) + 0x1B545A206879C6FFLL;
  v578 = *(v8 + (BYTE1(v569) ^ 0xA6));
  v579 = *(v8 + (BYTE1(v571) ^ 0xB2));
  v580 = *(v8 + (BYTE2(v568) ^ 0xCCLL));
  v581 = *(v8 + (BYTE1(v568) ^ 0x94));
  v582 = *(v8 + ((v577 >> 24) ^ 0x1B545A2068));
  v583 = *(v8 + (v566 ^ 0x18));
  v584 = (v569 >> 24) ^ 0x93A4F69F2FLL;
  v585 = *(v8 + (v516 ^ 0xF9));
  v586 = *(v8 + (BYTE2(v577) ^ 0x79));
  LODWORD(v577) = 1082392577 - (v574 ^ 0xEB) + *(v34 + 4 * (v574 ^ 0x36));
  v587 = (v577 - ((2 * v577 - 947644228) & 0xC99F192A) - 929982221) ^ 0x921350B;
  v588 = 608570463 - (v573 ^ 0xEB) + *(v34 + 4 * (v573 ^ 0x36));
  v589 = (((v587 - ((2 * v587) & 0xEB848F18)) << 16) - 0x9C78A3DB8740000) ^ 0xF63875C2478C0000;
  v590 = (((v588 - ((2 * v588) & 0x1849B6660)) << 8) - 0x8198E3DB24CD000) ^ 0xF7E671C24DB33000;
  v591 = (v567 ^ 0x804088DA) - ((2 * (v567 ^ 0xFFFFFFFB)) & 0x19C) - 1543142354 + *(v34 + 4 * (v567 ^ 0x36));
  v592 = (v570 ^ 0x893B0CE9) - ((2 * (v570 ^ 0xE9)) & 0xFFFFFFFB) - 1693777827 + *(v34 + 4 * (v570 ^ 0x36));
  v593 = (((v590 - ((2 * v590) & 0x4BBAEE8B1C00) + 0x25DD77458E85) ^ (v589 - ((2 * v589) & 0x854776320000) + 0xC2A3BB19EBCFLL) ^ (v591 - ((2 * v591) & 0x13706DA86) + 0x7F9E9B836D43)) << 16) ^ 0x98E057DF08090000;
  v594 = (((v592 - ((2 * v592) & 0x1677AA4BELL)) << 8) + 0x6AD2FAB3BD525F00) ^ 0x6AD2FAB3BD525F00;
  v595 = (v593 - ((2 * v593) & 0x1AA77387FFF60000) - 0x72AC463C000457E1) ^ (v594 - ((2 * v594) & 0x4AB06E7751B36C00) + 0x6558373BA8D9B66ALL);
  LODWORD(v590) = (v578 ^ 0x8000E0E9) - ((2 * (v578 ^ 0xE9)) & 0xFFFFFFFB) + *(v34 + 4 * (v578 ^ 0x36)) + 1;
  v596 = (v590 - ((2 * v590 + 1217026232) & 0xC1B05C76) + 85809815) ^ 0x8D3697A5;
  v597 = (v572 ^ 0x2E03A8EA) - ((2 * (v572 ^ 0xEA)) & 0x1FC) - 163421090 + *(v34 + 4 * (v572 ^ 0x36));
  v598 = (((v596 - ((2 * v596) & 0x10BB7C76)) << 16) + 0x692C085DBE3B0000) ^ 0x692C085DBE3B0000;
  v599 = (((v597 - ((2 * v597) & 0x7ECFD216)) << 8) + 0x614B9B3F67E90B00) ^ 0x614B9B3F67E90B00;
  v600 = (v576 ^ 0x28600EF) - ((2 * (v576 ^ 0xEB)) & 0xFFFFFFF7) + 566234203 + *(v34 + 4 * (v576 ^ 0x36));
  v601 = (v599 - ((2 * v599) & 0x12C82B0CEE00) + 0x964158677D1) ^ (v598 - ((2 * v598) & 0xB9C5C1CC0000) + 0x5CE2E0E6F26CLL) ^ (v600 - ((2 * v600) & 0x8526A95ALL) + 0x50A7429354ADLL);
  v602 = (v580 ^ 0x101006B) + 591725259 - 2 * ((v580 ^ 0xEB) & 0x7F) + *(v34 + 4 * (v580 ^ 0x36)) + 2324;
  v603 = (((v602 - ((2 * v602) & 0x18837AFC0)) << 8) - 0x28A4593BE4282000) ^ 0xD75BA6C41BD7E000;
  v604 = (((v601 << 16) ^ 0x521B7F3D1100000) - ((2 * ((v601 << 16) ^ 0x521B7F3D1100000)) & 0x7554516D29220000) + 0x3AAA28B69491CBE4) ^ (v603 - ((2 * v603) & 0x51D4AAC14F0B000) - 0x3D715AA9F587A7DELL);
  LODWORD(v582) = (v582 ^ 0x441004D9) - ((2 * (v582 ^ 0xFFFFFFFB)) & 0x19A) + *(v34 + 4 * (v582 ^ 0x36));
  LODWORD(v603) = v582 + 1 - 2 * ((v582 + 3541037) & 0x146F00D5 ^ (v582 + 1) & 1) + 1956972800;
  v605 = v604 ^ HIDWORD(v604);
  v606 = (v581 ^ 0x18008EF) - ((2 * (v581 ^ 0xEB)) & 0xFFFFFFF7) + 583402587 + *(v34 + 4 * (v581 ^ 0x36));
  v607 = (STACK[0x920] + (((v603 ^ 0x7981B94A) - ((2 * (v603 ^ 0x7981B94A)) & 0x196B7B2)) << 16) - 0x748FF34A4200000) ^ 0xF8B700CB5BD90000;
  v608 = (((v606 - ((2 * v606) & 0x1DC9DFE02)) << 8) + 0x41C6D7EE4EFF0100) ^ 0x41C6D7EE4EFF0100;
  LODWORD(v575) = (v575 ^ 0x50240F9) - ((2 * (v575 ^ 0xFFFFFFFB)) & 0x1DA) + *(v34 + 4 * (v575 ^ 0x36)) + 1;
  v609 = (v575 - ((2 * v575 + 1049073816) & 0x4CCD4FA4) + 1168798750) ^ 0xCB881E4C;
  v610 = (v579 ^ 0x204052FB) - ((2 * (v579 ^ 0xEB)) & 0xFFFFFFDF) + 67484239 + *(v34 + 4 * (v579 ^ 0x36));
  v611 = (((v609 - ((2 * v609) & 0xBAF32192) + 0xF405D7990C9) ^ (v608 - ((2 * v608) & 0xAC04A68C6C00) + 0xD60253463678) ^ (v607 - ((2 * v607) & 0x917C5DC60000) + 0x48BE2EE3261BLL)) << 16) ^ 0x91FC20DC80AA0000;
  v612 = (((v610 - ((2 * v610) & 0x63F7FFAC)) << 8) + 0x50B88831FBFFD600) ^ 0x50B88831FBFFD600;
  v613 = (v611 - ((2 * v611) & 0xEB46138C96980000) + 0x75A309C64B4C7396) ^ (v612 - ((2 * v612) & 0x5250C908B9FBEC00) - 0x16D79B7BA302093ELL);
  LODWORD(v608) = v613 ^ HIDWORD(v613);
  LODWORD(v613) = (*(v8 + v584) ^ 0x130200EA) - ((2 * (*(v8 + v584) ^ 0xEA)) & 0x1FC) + *(v34 + 4 * (*(v8 + v584) ^ 0x36)) + 1;
  v614 = (v613 - ((2 * v613 + 579344570) & 0xE3FE3C04) - 2092750241) ^ 0x9C11A79C;
  v615 = (v585 ^ 0x819100BF) - ((2 * ~v585) & 0x156) - 1565193205 + *(v34 + 4 * (v585 ^ 0x36));
  v616 = (((v614 - ((2 * v614) & 0x16BEE024CLL)) << 16) + 0x1803B5F701260000) ^ 0x1803B5F701260000;
  v617 = (((v615 - ((2 * v615) & 0xC94E78E4)) << 8) + 0xEAC7C64A73C7200) ^ 0xEAC7C64A73C7200;
  v618 = (v586 ^ 0x8891224A) - ((2 * (v586 ^ 0x4A)) & 0xBC) - 1682642498 + *(v34 + 4 * (v586 ^ 0x36));
  v619 = (v583 ^ 0x485625AB) - ((2 * (v583 ^ 0xAB)) & 0xFFFFFF7F) - 605034721 + *(v34 + 4 * (v583 ^ 0x36));
  v620 = (((v617 - ((2 * v617) & 0x56C2D274800) + 0x2B61693A492) ^ (v616 - ((2 * v616) & 0x310C42E0000) + 0x1886217D642) ^ (v618 - ((2 * v618) & 0xB0C31F5ALL) + 0x8BBF58618FADLL)) << 16) ^ 0x88812CE5FD7D0000;
  v621 = (((v619 - ((2 * v619) & 0x197C7BC42)) << 8) + 0x2370F8CBE3DE2100) ^ 0x2370F8CBE3DE2100;
  v622 = (v620 - ((2 * v620) & 0x763230486B640000) + 0x3B19182435B2BA5ELL) ^ (v621 - ((2 * v621) & 0x402163D3FBAEAC00) - 0x5FEF4E160228A9AFLL);
  LOBYTE(v507) = v622 ^ BYTE4(v622);
  v623 = HIDWORD(v595) ^ v595 & 0xFFFFFF00;
  v624 = *(v8 + (((WORD2(v595) ^ v595 & 0xFF00) >> 8) ^ 0x3BLL));
  v625 = (v622 ^ HIDWORD(v622) ^ 0x9E021DF5) - ((2 * (v622 ^ HIDWORD(v622) ^ 0x9E021DF5)) & 0x1A0242F5ELL) + 0x40070BF9D01217AFLL;
  v626 = (v608 ^ 0x7974B4EBLL) - ((2 * (v608 ^ 0x7974B4EBLL)) & 0x132C0AC1ALL) - 0x1EE18AAD669FA9F3;
  v627 = *(v8 + ((v625 >> 24) ^ 0x40070BF9D0));
  v628 = (v605 ^ 0x714BE9) - 2 * ((v605 ^ 0x714BE9) & 0xF7E217F ^ v605 & 0x14) - 0x430BB98BF081DE95;
  v629 = *(v8 + ((v626 >> 24) ^ 0xE11E755299));
  v630 = *(v8 + (BYTE2(v628) ^ 0x7ELL));
  v631 = *(v8 + ((v628 >> 24) ^ 0xBCF446740FLL));
  v632 = *(v8 + (BYTE4(v595) ^ 0x42));
  v633 = *(v8 + (BYTE2(v625) ^ 0x12));
  v634 = *(v8 + (BYTE2(v626) ^ 0x60));
  v635 = *(v8 + (BYTE1(v626) ^ 0x56));
  v636 = *(v8 + (BYTE1(v628) ^ 0x21));
  v637 = *(v8 + ((v623 >> 24) ^ 8));
  v638 = *(v8 + (v605 ^ 0xE9));
  v639 = *(v8 + (BYTE1(v625) ^ 0x17));
  v640 = *(v8 + (v608 ^ 0xEBLL));
  v641 = *(v8 + (v507 ^ 0xF5));
  LODWORD(v595) = (v624 ^ 0x800C2CB) - ((2 * (v624 ^ 0xCB)) & 0xFFFFFFBF) + *(v34 + 4 * (v624 ^ 0x36)) + 1;
  v642 = (v595 - ((2 * v595 + 948606076) & 0x9C3A9788) - 362637822) ^ 0x23F3F25A;
  LODWORD(v574) = (v629 ^ 0xEB) - ((2 * (v629 ^ 0xEB)) & 0x166) - 1947518029;
  v643 = (v627 ^ 0x308051BF) - ((2 * ~v627) & 0x156) - 205145333 + *(v34 + 4 * (v627 ^ 0x36));
  v644 = (((v642 + (~(2 * v642) | 0xFFFE240E4979)) << 16) + 0x3453EDF8DB440000) ^ 0x3453EDF8DB430000;
  v645 = (((v643 - ((2 * v643) & 0x1432C73F8)) << 8) + 0x3AF6E0A19639FC00) ^ 0x3AF6E0A19639FC00;
  v646 = v645 - ((2 * v645) & 0x709676967600);
  v647 = *(v8 + (BYTE2(v623) ^ 0xF2));
  LODWORD(v623) = ((((2 * v574) ^ 0x17D67766) - ((2 * ((2 * v574) ^ 0x17D67766)) & 0xFFFFFF87) + 66) & 0xDA ^ 0x42) + (v574 ^ 0x388281DE);
  v648 = (v623 ^ 0x8C0C0B42) - ((2 * v623) & 0xE7E7E97A) + *(v34 + 4 * (v629 ^ 0x36)) + 1269021578;
  v649 = (v646 + 0x384B3B4B3B65) ^ (v644 - ((2 * v644) & 0x915A44920000) + 0x48AD22493000) ^ (v648 - ((2 * v648) & 0x11509DCE) + 0x483808A84EE7);
  v650 = (v631 ^ 0x1001EA) - ((2 * (v631 ^ 0xEA)) & 0x1FC) + 607521630 + *(v34 + 4 * (v631 ^ 0x36));
  v651 = (((v650 - ((2 * v650) & 0x1741C1ABCLL)) << 8) + 0x2A5A49BA0E0D5E00) ^ 0x2A5A49BA0E0D5E00;
  v652 = (((v649 << 16) ^ 0x38DE11AA45820000) - ((2 * ((v649 << 16) ^ 0x38DE11AA45820000)) & 0xC024163054B40000) - 0x1FEDF4E7D5A54C25) ^ (v651 - ((2 * v651) & 0x70DA5EFAD5A19200) - 0x792D082952F36FDLL);
  LODWORD(v652) = v652 ^ HIDWORD(v652);
  LODWORD(v632) = (v632 ^ 0x640404EA) - ((2 * (v632 ^ 0xEA)) & 0x1FC) + *(v34 + 4 * (v632 ^ 0x36)) + 1;
  v653 = (v632 - ((2 * v632 - 2138828614) & 0xBDE4B58C) - 1623956701) ^ 0x331CE358;
  v654 = (v633 ^ 0xD02880E2) - ((2 * (v633 ^ 0xFFFFFFE3)) & 0x1EC) + 1411222614 + *(v34 + 4 * (v633 ^ 0x36));
  v655 = (((v653 - ((2 * v653) & 0x1E2AFC21CLL)) << 16) + 0x610AF157E10E0000) ^ 0x610AF157E10E0000;
  v656 = (((v654 - ((2 * v654) & 0x16E742DC)) << 8) + 0x1D08320B73A16E00) ^ 0x1D08320B73A16E00;
  v657 = (v634 ^ 0x92A020E9) - ((2 * (v634 ^ 0xE9)) & 0xFFFFFFFB) - 1851397027 + *(v34 + 4 * (v634 ^ 0x36));
  v658 = (v630 ^ 0xD41004E7) - ((2 * (v630 ^ 0xE3)) & 0xFFFFFFE7) + 1345718355 + *(v34 + 4 * (v630 ^ 0x36));
  v659 = (((v656 - ((2 * v656) & 0x632A4BA73400) + 0x319525D39A64) ^ (v655 - ((2 * v655) & 0x4BC47F380000) + 0xA5E23F9C559ALL) ^ (v657 - ((2 * v657) & 0x19745A788) + 0x5398CBA2D3C4)) << 16) ^ 0xC7EFD1ED1C3A0000;
  v660 = (((v658 - ((2 * v658) & 0x1642EA028)) << 8) - 0x58BA9E4DE8AFEC00) ^ 0xA74561B217501400;
  v661 = (v659 - ((2 * v659) & 0xCA16BC05ACAC0000) + 0x650B5E02D6566C22) ^ (v660 - ((2 * v660) & 0x576F7A3A52C76400) + 0x6BB7BD1D2963B242);
  LODWORD(v661) = v661 ^ HIDWORD(v661);
  LODWORD(v637) = (v637 ^ 0x2D800A8B) - ((2 * (v637 ^ 0x8B)) & 0xFFFFFF3F) + *(v34 + 4 * (v637 ^ 0x36));
  v662 = (v637 + 1 - 2 * ((v637 + 1992688127) & 0x4338AC9F ^ (v637 + 1) & 1) + 972992156) ^ 0xAED61500;
  v663 = (v639 ^ 0xAC1029A3) - ((2 * (v639 ^ 0xFFFFFFE3)) & 0x16E) + 2016797463 + *(v34 + 4 * (v639 ^ 0x36));
  v664 = (((v662 - ((2 * v662) & 0x15A9056DELL)) << 16) + 0x4D1BAD482B6F0000) ^ 0x4D1BAD482B6F0000;
  v665 = (((v663 - ((2 * v663) & 0x227D0898)) << 8) - 0x7EBDDFEEC17BB400) ^ 0x814220113E844C00;
  v666 = (v635 ^ 0x380220DF) - ((2 * ~v635) & 0x196) - 331092949 + *(v34 + 4 * (v635 ^ 0x36));
  v667 = (v636 ^ 0x8293C2F9) - ((2 * (v636 ^ 0xFFFFFFFB)) & 0x1DA) - 1582151091 + *(v34 + 4 * (v636 ^ 0x36));
  v668 = (((v665 - ((2 * v665) & 0xECAD6BC7D800) + 0xF656B5E3ECBBLL) ^ (v664 - ((2 * v664) & 0xD1A767E20000) + 0x68D3B3F1AF80) ^ (v666 - ((2 * v666) & 0x1AFBB3E52) + 0xA362D7DD9F29)) << 16) ^ 0x3DE7D1CFDC120000;
  v669 = (((v667 - ((2 * v667) & 0x102F059BALL)) << 8) - 0x6FAD3E7E87D32300) ^ 0x9052C181782CDD00;
  v670 = (v668 - ((2 * v668) & 0x7F33F0944F5E0000) - 0x406607B5D8505A3CLL) ^ (v669 - ((2 * v669) & 0x75087FEA50424600) - 0x57BC00AD7DEDC99);
  LODWORD(v670) = v670 ^ HIDWORD(v670);
  v671 = ((v647 ^ 0x8203012B) - 2 * ((v647 ^ 0x2B) & 0x3F) + *(v34 + 4 * (v647 ^ 0x36)) - 66565291 + ((-1149637950 - 2 * ((v647 ^ 0x8203012B) - 2 * ((v647 ^ 0x2B) & 0x3F) + *(v34 + 4 * (v647 ^ 0x36)) + 1)) | 0x4C757E95)) ^ 0xB42BF92B;
  v672 = (v641 ^ 0x60C508EE) - ((2 * (v641 ^ 0xFFFFFFEF)) & 0x1F4) - 1014954918 + *(v34 + 4 * (v641 ^ 0x36));
  v673 = (STACK[0x8F0] + ((v671 - ((2 * v671) & 0xAF5C2030)) << 16) + 0x18EA57AE10460000) ^ 0x18EA57AE10180000;
  v674 = (((v672 - ((2 * v672) & 0x83AE707ALL)) << 8) - 0x1E17EDBE28C7C300) ^ 0xE1E81241D7383D00;
  v675 = (v640 ^ 0x804908C1) - ((2 * (v640 ^ 0xFFFFFFC3)) & 0x1AA) - 1543699403 + *(v34 + 4 * (v640 ^ 0x36));
  v676 = (v638 ^ 0x14A283A5) - ((2 * (v638 ^ 0xFFFFFFEF)) & 0x162) + 262375697 + *(v34 + 4 * (v638 ^ 0x36));
  v677 = (((v674 - ((2 * v674) & 0xDA3E7FE1C400) + 0x6D1F3FF0E227) ^ (v673 - ((2 * v673) & 0x40D0B5A40000) + 0xA0685AD2A244) ^ (v675 - ((2 * v675) & 0x1DE345C80) + 0x1E57EF1A2E40)) << 16) ^ 0xD3208A386E230000;
  v678 = (((v676 - ((2 * v676) & 0x12383D286)) << 8) - 0x82BC66E3E16BD00) ^ 0xF7D43991C1E94300;
  v679 = (v677 - ((2 * v677) & 0x276D6B600C820000) + 0x13B6B5B006415EC7) ^ (v678 - ((2 * v678) & 0x3CE9940C49339200) + 0x5E74CA062499C9C5);
  v680 = (v652 ^ 0x7AD4CD30) - ((2 * (v652 ^ 0x7AD4CD30)) & 0x1190218AALL) + 0xCDA3A7A8C810C55;
  v681 = *(v8 + ((v680 >> 24) ^ 0xCDA3A7A8CLL));
  LOBYTE(v674) = v679 ^ BYTE4(v679);
  v682 = (v670 ^ 0x53E0B2BALL) - ((2 * (v670 ^ 0x53E0B2BALL)) & 0x78605B12) + 0xF462E2F3C302D89;
  v683 = (v679 ^ HIDWORD(v679) ^ 0x9293EC89) - ((2 * (v679 ^ HIDWORD(v679) ^ 0x9293EC89)) & 0x121D5714ALL) - 0x70A0D35D6F15475BLL;
  v684 = *(v8 + (BYTE1(v683) ^ 0xB8));
  v685 = *(v8 + (BYTE2(v680) ^ 0x81));
  v686 = *(v8 + ((v682 >> 24) ^ 0xF462E2F3CLL));
  v687 = (v661 ^ 0x90054073) - ((2 * (v661 ^ 0x90054073)) & 0x600BD56C) - 0x39C29BD6CFFA154ALL;
  v688 = *(v8 + (BYTE1(v687) ^ 0xEALL));
  v689 = *(v8 + (v661 ^ 0x73));
  v690 = *(v8 + (v674 ^ 0x89));
  v691 = *(v8 + (BYTE1(v682) ^ 0x2DLL));
  v692 = *(v8 + (BYTE2(v682) ^ 0x30));
  v693 = *(v8 + ((v683 >> 24) ^ 0x8F5F2CA290));
  v694 = *(v8 + ((v687 >> 24) ^ 0xC63D642930));
  v695 = *(v8 + (BYTE2(v683) ^ 0xEALL));
  v696 = *(v8 + (BYTE1(v680) ^ 0xCLL));
  v697 = *(v8 + (v670 ^ 0xBALL));
  v698 = *(v8 + (v652 ^ 0x30));
  v699 = *(v8 + (BYTE2(v687) ^ 5));
  LODWORD(v684) = (v684 ^ 0x18005E9) - ((2 * (v684 ^ 0xEB)) & 0xFFFFFFFB) + *(v34 + 4 * (v684 ^ 0x36)) + 1;
  v700 = (v684 - ((2 * v684 + 93064888) & 0x395175C8) + 1064223296) ^ 0xF146037A;
  v701 = (v686 | 0x3004D600) - ((2 * v686) & 0x28) - 197053068 + *(v34 + 4 * (v686 ^ 0x36));
  STACK[0x920] = -3670016;
  v702 = (((v700 - ((2 * v700) & 0x8BECCC0)) << 16) + 0x6A61045F66600000) ^ 0x6A61045F66600000;
  v703 = (((v701 - ((2 * v701) & 0x1C1B3026CLL)) << 8) + 0x53E56EE0D9813600) ^ 0x53E56EE0D9813600;
  v704 = (v688 ^ 0xEB ^ LODWORD(STACK[0x588])) - ((2 * (v688 ^ 0xEB)) & 0xFFFFFF7F) + 606472735 + *(v34 + 4 * (v688 ^ 0x36));
  v705 = (v681 ^ 0x5840036B) - 2 * ((v681 ^ 0x6B) & 0x7F) - 872019745 + *(v34 + 4 * (v681 ^ 0x36));
  v706 = (((v703 - ((2 * v703) & 0x1D3AE387F600) + 0x8E9D71C3FB23) ^ (v704 - ((2 * v704) & 0xA07D2C74) + 0xC9F3503E963ALL) ^ (v702 - ((2 * v702) & 0xBE8066C80000) + 0x5F4033647439)) << 16) ^ 0x182E129919200000;
  v707 = (((v705 - ((2 * v705) & 0xA41CDE2)) << 8) + 0x5471E60520E6F100) ^ 0x5471E60520E6F100;
  v708 = (v706 - ((2 * v706) & 0xCA7C8C79AF5C0000) - 0x1AC1B9C328513D13) ^ (v707 - ((2 * v707) & 0xF20E664728D0A00) + 0x79073323946857FLL);
  LODWORD(v708) = v708 ^ HIDWORD(v708);
  LODWORD(v689) = (v689 ^ 0x1245DE5) - ((2 * (v689 ^ 0xE1)) & 0xFFFFFFE3) + *(v34 + 4 * (v689 ^ 0x36)) + 1;
  v709 = (v689 - ((2 * v689 + 1178820256) & 0x9142A986) - 339540973) ^ 0x254FED5D;
  v710 = (v685 ^ 0x9003A3F7) - ((2 * ~v685) & 0x1C6) - 1807587005 + *(v34 + 4 * (v685 ^ 0x36));
  v711 = (STACK[0x8E0] + ((v709 - ((2 * v709) & 0x1B3263B04)) << 16) + 0x14B5D9931D8E0000) ^ 0x14B5D9931D820000;
  v712 = (((v710 - ((2 * v710) & 0x576C7D76)) << 8) - 0x10EE52D449C14500) ^ 0xEF11AD2BB63EBB00;
  v713 = (v690 ^ 0x4202C2F) - ((2 * (v690 ^ 0xFFFFFFEF)) & 0x76) + 539352987 + *(v34 + 4 * (v690 ^ 0x36));
  v714 = (v712 - ((2 * v712) & 0x90819C9F0200) + 0xC840CE4F81B0) ^ (v713 - ((2 * v713) & 0x8DEEF74ALL) + 0xC5E146F77BA5) ^ (v711 - ((2 * v711) & 0xDCE21B400000) + 0xEE710DA0A2FCLL);
  v715 = (v692 ^ 0xEB ^ LODWORD(STACK[0x580])) - ((2 * (v692 ^ 0xEB)) & 0xFFFFFFF3) - 1682572455 + *(v34 + 4 * (v692 ^ 0x36));
  v716 = (((v715 - ((2 * v715) & 0x19EA2C584)) << 8) + 0x5E731FCF5162C200) ^ 0x5E731FCF5162C200;
  v717 = (((v714 << 16) ^ 0xE3D0851858E90000) - ((2 * ((v714 << 16) ^ 0xE3D0851858E90000)) & 0xE4AD8C18F2520000) + 0x7256C60C7929327ELL) ^ (v716 - ((2 * v716) & 0x2A44D0AEFBDFC600) + 0x552268577DEFE31DLL);
  LODWORD(v717) = v717 ^ HIDWORD(v717);
  LODWORD(v693) = (v693 ^ 0xC10C08CB) - ((2 * (v693 ^ 0xCB)) & 0xFFFFFFBF) + *(v34 + 4 * (v693 ^ 0x36)) + 1;
  v718 = (v693 - ((2 * v693 - 965474180) & 0xA3331C58) - 1261202838) ^ 0xBC7737B2;
  v719 = (v691 ^ 0x8C6988C3) - ((2 * (v691 ^ 0xFFFFFFC3)) & 0x1AE) - 1747155913 + *(v34 + 4 * (v691 ^ 0x36));
  v720 = (((v718 - ((2 * v718) & 0x2BB97D40)) << 16) - 0x4098EA2341600000) ^ 0xBF6715DCBEA00000;
  v721 = (((v719 - ((2 * v719) & 0x1FCBD36FELL)) << 8) - 0x28EC3901A1648100) ^ 0xD713C6FE5E9B7F00;
  v722 = (v694 ^ 0x101097F) + 591725259 - ((2 * (v694 ^ 0xEB)) & 0xD6) + *(v34 + 4 * (v694 ^ 0x36));
  v723 = (v696 ^ 0x1E6C8469) - ((2 * (v696 ^ 0x69)) & 0xFA) + 98142173 + *(v34 + 4 * (v696 ^ 0x36));
  v724 = (((v721 + 0xDABA7B32717CLL + (~(2 * v721) | 0x4A8B099B1DFFLL)) ^ (v722 - ((2 * v722) & 0x58095EA) + 0x30AD02C04AF5) ^ (v720 - ((2 * v720) & 0x32E5978E0000) + 0x9972CBC74DF0)) << 16) ^ 0x7365B235767E0000;
  v725 = (((v723 - ((2 * v723) & 0x1B1F49202)) << 8) + 0x7D9EDAD8FA490100) ^ 0x7D9EDAD8FA490100;
  v726 = (v724 - ((2 * v724) & 0x7F6EA009D6B00000) - 0x4048AFFB14A7EC7FLL) ^ (v725 - ((2 * v725) & 0x618564A2D93B6200) - 0xF3D4DAE93624E77);
  v727 = v726 ^ HIDWORD(v726);
  LODWORD(v698) = 352793345 - (v698 ^ 0xEB) + *(v34 + 4 * (v698 ^ 0x36));
  LODWORD(v724) = *(v34 + 4 * (v695 ^ 0x36));
  LODWORD(v695) = (v695 ^ 0xEB) - ((2 * (v695 ^ 0xEB)) & 0x55555555) - 1283447894;
  v728 = (v698 - ((2 * v698 + 511554236) & 0xA7379A8C) - 488986972) ^ 0x3E7574D8;
  LODWORD(v695) = (~(((2 * v695) ^ 0x67004754) - ((2 * ((2 * v695) ^ 0x67004754)) & 0xB4) + 219) & 0xDA) + (v695 ^ 0xE999C7);
  v729 = (v695 ^ 0x3A902030) - ((2 * v695) & 0x8ADFBF9E) + v724 - 1658870116;
  v730 = (((v728 - ((2 * v728) & 0x1CEE6C210)) << 16) + 0x6305E77361080000) ^ 0x6305E77361080000;
  v731 = (((v729 - ((2 * v729) & 0x54D87166)) << 8) + 0x6328152A6C38B300) ^ 0x6328152A6C38B300;
  v732 = (v697 ^ 0xA048046B) - 2 * ((v697 ^ 0x6B) & 0x7F) - 2080503841 + *(v34 + 4 * (v697 ^ 0x36));
  v733 = (v699 ^ 0x2021284B) - ((2 * (v699 ^ 0x4B)) & 0xBE) + 69526463 + *(v34 + 4 * (v699 ^ 0x36));
  v734 = (((v731 + 0xD948CF8071AFLL + (~(2 * v731) | 0x4D6E60FF1DFFLL)) ^ (v732 - ((2 * v732) & 0x17E6D864ELL) + 0x242EBF36C327) ^ (v730 - ((2 * v730) & 0x3B86B380000) + 0x1DC359C104ALL)) << 16) ^ 0xFCBA452AA2C30000;
  v735 = (((v733 - ((2 * v733) & 0x1602C2486)) << 8) - 0x160E464FE9EDBD00) ^ 0xE9F1B9B016124300;
  v736 = (v734 - ((2 * v734) & 0x77716D49961C0000) + 0x3BB8B6A4CB0E0FE5) ^ (v735 - ((2 * v735) & 0x5AAD510A750B4200) - 0x52A9577AC57A5EFELL);
  LOBYTE(v732) = v736 ^ BYTE4(v736);
  v737 = (v736 ^ HIDWORD(v736) ^ 0xE175781ALL) - ((2 * (v736 ^ HIDWORD(v736) ^ 0xE175781ALL)) & 0x11799FA08) + 0x233410D28BCCFD04;
  v738 = (v708 ^ 0x57A57310) - ((2 * (v708 ^ 0x57A57310)) & 0x10B2A72CELL) - 0x2FDDAEBE7A6AC699;
  v739 = *(STACK[0x730] + (BYTE2(v738) ^ 0x95));
  v740 = *(STACK[0x730] + (BYTE2(v737) ^ 0xCCLL));
  v741 = (v717 ^ 0x1E122D6CLL) - ((2 * (v717 ^ 0x1E122D6CLL)) & 0x6EFA6770) + 0x6A10ACC9377D33B8;
  v742 = *(STACK[0x730] + (BYTE2(v741) ^ 0x7DLL));
  v743 = (v727 ^ 0x57266E42) - 2 * ((v727 ^ 0x57266E42) & 0x6A1912CF ^ v727 & 5) - 0x613C934795E6ED36;
  v744 = *(STACK[0x730] + (BYTE2(v743) ^ 0x19));
  v745 = *(STACK[0x730] + ((v743 >> 24) ^ 0x9EC36CB86ALL));
  v746 = *(STACK[0x730] + (BYTE1(v741) ^ 0x33));
  v747 = *(STACK[0x730] + (BYTE1(v738) ^ 0x39));
  v748 = *(STACK[0x730] + (BYTE1(v737) ^ 0xFDLL));
  v749 = *(STACK[0x730] + ((v738 >> 24) ^ 0xD022514185));
  v750 = *(STACK[0x730] + ((v741 >> 24) ^ 0x6A10ACC937));
  v751 = *(STACK[0x730] + (v727 ^ 0x42));
  v752 = *(STACK[0x730] + (v708 ^ 0x10));
  v753 = *(STACK[0x730] + (BYTE1(v743) ^ 0x12));
  v754 = *(STACK[0x730] + ((v737 >> 24) ^ 0x233410D28BLL));
  v755 = *(STACK[0x730] + (v732 ^ 0x1ALL));
  v756 = *(STACK[0x730] + (v717 ^ 0x6CLL));
  LODWORD(v717) = (v742 ^ 0xDF8A58E3) - ((2 * (v742 ^ 0xE3)) & 0xFFFFFFEF) + *(v34 + 4 * (v742 ^ 0x36)) + 1;
  v757 = (v717 - ((2 * v717 + 158820524) & 0x79BAE54E) + 26814205) ^ 0x5133CB39u;
  v758 = (v739 ^ 0x129188A) - ((2 * (v739 ^ 0xAAAAAAAA)) & 0x13C) + 589100030 + *(v34 + 4 * (v739 ^ 0x36));
  v759 = (STACK[0x8F8] + ((v757 - ((2 * v757) & 0xDBBCF498)) << 16) + 0x21B76DDE7A7E0000) ^ 0x21B76DDE7A4C0000;
  v760 = (((v758 - ((2 * v758) & 0x247BCE8E)) << 8) - 0x1731FEEDC218B900) ^ 0xE8CE01123DE74700;
  v761 = (v745 ^ 0x4802B5A1) - ((2 * (v745 ^ 0xFFFFFFE3)) & 0x16A) - 599566571 + *(v34 + 4 * (v745 ^ 0x36));
  v762 = (v740 ^ 0x408007A) - ((2 * (v740 ^ 0xFFFFFFFB)) & 0xDC) + 540937166 + *(v34 + 4 * (v740 ^ 0x36));
  v763 = (((v760 - ((2 * v760) & 0x5C57A3ED4C00) + 0xAE2BD1F6A6F1) ^ (v761 - ((2 * v761) & 0x105969CE2) + 0x691D82CB4E71) ^ (v759 - ((2 * v759) & 0xCD4AFF7A0000) + 0xE6A57FBDEAFALL)) << 16) ^ 0x21932C80027A0000;
  v764 = (((v762 - ((2 * v762) & 0x1EC919ADELL)) << 8) - 0x1D5BCE09B7329100) ^ 0xE2A431F648CD6F00;
  v765 = (v763 - ((2 * v763) & 0x939FA53424100000) + 0x49CFD29A12082DA6) ^ (v764 - ((2 * v764) & 0x45B2CB8015911200) + 0x22D965C00AC88963);
  LODWORD(v765) = v765 ^ HIDWORD(v765);
  LODWORD(v763) = (v744 ^ 0x240400EF) - ((2 * (v744 ^ 0xEB)) & 0xFFFFFFF7) + *(v34 + 4 * (v744 ^ 0x36)) + 1;
  v766 = (v763 - ((2 * v763 + 8657076) & 0x255D4F38) - 1829719050) ^ 0x7F401E02u;
  v767 = 608570463 - (v748 ^ 0xEB) + *(v34 + 4 * (v748 ^ 0x36));
  v768 = (((v766 - ((2 * v766) & 0x1684B7504)) << 16) - 0x68204BDA457E0000) ^ 0x97DFB425BA820000;
  v769 = (((v767 - ((2 * v767) & 0x12F245400)) << 8) - 0x7C1414686DD60000) ^ 0x83EBEB97922A0000;
  v770 = (v746 ^ 0x84005CE3) - ((2 * (v746 ^ 0xE3)) & 0xFFFFFFEF) - 1606045609 + *(v34 + 4 * (v746 ^ 0x36));
  v771 = (((v769 - ((2 * v769) & 0x39BEEE2BA79400) + 0x19CDF7715D3CA42) ^ (v770 - ((2 * v770) & 0x161F98574) + 0x1AD561EB0FCC2BALL) ^ (v768 + 0x41288A9493DB91 + (~(2 * v768) | 0x7DAEEAD6D9FFFFLL))) << 8) ^ 0x70A1E331BCD36800;
  v772 = v771 - ((2 * v771) & 0xCC8AF158636F1800) + 0x664578AC31B78C02;
  v773 = (v747 ^ 0x400340CE) - ((2 * (v747 ^ 0xFFFFFFCF)) & 0x1B4) - 465384390 + *(v34 + 4 * (v747 ^ 0x36));
  v774 = v773 - ((2 * v773) & 0x87C436BELL) + 0x73C7D31F43E21B5FLL;
  v775 = ((2 * v772) & 0xBB6BFFCEFB31F804 ^ 0x880B2B4E12315138) + (v772 ^ 0x3BF06A48F6E65743);
  v776 = v775 - 0x5DB5FFE77D98FCDFLL + (v774 ^ ((v774 ^ 0x8C382CE0BC1DE4A0) - ((2 * (v774 ^ 0x8C382CE0BC1DE4A0) + 2) & 0x2370C888E3C85098) - 0x6E479BBB8E1BD7B3) ^ 0x31F2469506DA930 ^ (v775 + (v774 ^ 0xEA7DB94F37634F3CLL ^ v772) - ((2 * (v775 + (v774 ^ 0xEA7DB94F37634F3CLL ^ v772)) + 0x4494003104CE0644) & 0xC2C12664C4D73446) - 0x7C556CB51B2D62BBLL));
  v777 = (((v776 - ((2 * v776) & 0x9623BC6F6EDA2CLL)) << 8) - 0x34EE21C84892EA00) ^ 0xCB11DE37B76D1600;
  LODWORD(v777) = (v777 - ((2 * v777) & 0x6217E000) - 1324617662) ^ ((v777 - ((2 * v777) & 0xCE6922176217E000) - 0x18CB6EF44EF40FBELL) >> 32);
  LODWORD(v749) = (v749 ^ 0xC080C187) - ((2 * (v749 ^ 0xFFFFFF8F)) & 0x126) + *(v34 + 4 * (v749 ^ 0x36)) + 1;
  v778 = (v749 - ((2 * v749 - 947218972) & 0x897C8260) + 679709730) ^ 0x2950F8AE;
  v779 = (v751 ^ 0x28046FB) - ((2 * (v751 ^ 0xEB)) & 0xFFFFFFDF) + 566609487 + *(v34 + 4 * (v751 ^ 0x36));
  v780 = (STACK[0x910] + ((v778 - ((2 * v778) & 0xA3ECEDC6)) << 16) + 0x643C51F676F20000) ^ 0x643C51F676E30000;
  v781 = (((v779 - ((2 * v779) & 0x54300C34)) << 8) + 0x7B26CD2A18061A00) ^ 0x7B26CD2A18061A00;
  v782 = (v754 ^ 0xDC0010CB) - ((2 * (v754 ^ 0xCB)) & 0xFFFFFFBF) + 1212546111 + *(v34 + 4 * (v754 ^ 0x36));
  v783 = 608570463 - (v750 ^ 0xEB) + *(v34 + 4 * (v750 ^ 0x36));
  v784 = (((v781 - ((2 * v781) & 0x6EC8DCA7FC00) + 0xB7646E53FEACLL) ^ (v782 - ((2 * v782) & 0x104FBF1DCLL) + 0x9D3F827DF8EELL) ^ (v780 - ((2 * v780) & 0x439EC5080000) + 0x21CF628436EALL)) << 16) ^ 0xB948EAA30A80000;
  v785 = (((v783 - ((2 * v783) & 0x1F41B32D4)) << 8) + 0x47B9DDFA0D996A00) ^ 0x47B9DDFA0D996A00;
  v786 = (v784 - ((2 * v784) & 0x3FBC6947140E0000) + 0x1FDE34A38A07DBC6) ^ (v785 - ((2 * v785) & 0x52EB1F301B9D3800) + 0x69758F980DCE9C9BLL);
  LODWORD(v786) = v786 ^ HIDWORD(v786);
  LODWORD(v753) = (v753 ^ 0x4A4082FA) - ((2 * (v753 ^ 0xEA)) & 0xDDDDDDDD) + *(v34 + 4 * (v753 ^ 0x36)) + 1;
  v787 = (v753 - ((2 * v753 - 1274342246) & 0x91C5CDCC) + 585658675) ^ 0xA50C5F78;
  v788 = (v755 ^ 0xA20C281B) - 2 * ((v755 ^ 0xFB) & 0xF) - 2110135441 + *(v34 + 4 * (v755 ^ 0x36));
  v789 = (((v787 - ((2 * v787) & 0x99C083B2)) << 16) - 0x6E96B31FBE270000) ^ 0x91694CE041D90000;
  v790 = (((v788 - ((2 * v788) & 0x1895BE65ALL)) << 8) - 0x52B873B520CD300) ^ 0xFAD478C4ADF32D00;
  v791 = (v756 ^ 0x48001EF) - ((2 * (v756 ^ 0xEB)) & 0xFFFFFFF7) + 533072731 + *(v34 + 4 * (v756 ^ 0x36));
  v792 = (v752 ^ 0x9800286B) - 2 * ((v752 ^ 0x6B) & 0x7F) - 1941576737 + *(v34 + 4 * (v752 ^ 0x36));
  v793 = (((v790 - ((2 * v790) & 0xDA9DB3672E00) + 0x6D4ED9B3975ALL) ^ (v791 - ((2 * v791) & 0xB3681BC6) + 0x983859B40DE3) ^ (v789 - ((2 * v789) & 0xAF836A9E0000) + 0x57C1B54FC8F4)) << 16) ^ 0xA2B73548524D0000;
  v794 = (((v792 + (~(2 * v792) | 0xFFFFFF4A99E925)) << 8) - 0x55DB8EA54CF49200) ^ 0xAA24715AB30B6D00;
  v795 = (v793 - ((2 * v793) & 0x4D6EA5E4B27A0000) + 0x26B752F2593DB753) ^ (v794 - ((2 * v794) & 0x5175771DE00) - 0x488B1D74544710E5);
  LODWORD(v795) = v795 ^ HIDWORD(v795);
  v796 = (v765 ^ 0x3EC47447) - 2 * ((v765 ^ 0x3EC47447) & 0xEE388EDELL ^ v765 & 8) - 0x77EDECDE11C7712ALL;
  v797 = (v777 ^ 0xD15E2B90) - ((2 * (v777 ^ 0xD15E2B90)) & 0x63D3BE4C) + 0x66A65F3031E9DF26;
  v798 = *(STACK[0x730] + (v795 ^ 0xAALL));
  v799 = *(STACK[0x730] + (BYTE2(v797) ^ 0xE9));
  v800 = (v795 ^ 0x63E3D8AALL) - ((2 * (v795 ^ 0x63E3D8AALL)) & 0x107932CF6) - 0x761C6F57C366985;
  v801 = (v786 ^ 0x5EE141C7) - 2 * ((v786 ^ 0x5EE141C7) & 0xE0871258 ^ v786 & 0x18) + 0x43A5759BE0871240;
  v802 = *(STACK[0x730] + (BYTE2(v796) ^ 0x38));
  v803 = *(STACK[0x730] + (BYTE1(v801) ^ 0x12));
  v804 = *(STACK[0x730] + ((v800 >> 24) ^ 0xF89E390A83));
  v805 = *(STACK[0x730] + (BYTE1(v797) ^ 0xDFLL));
  v806 = *(STACK[0x730] + (v786 ^ 0xC7));
  v807 = *(STACK[0x730] + (BYTE1(v796) ^ 0x8ELL));
  v808 = *(STACK[0x730] + ((v797 >> 24) ^ 0x66A65F3031));
  v809 = *(STACK[0x730] + (BYTE2(v801) ^ 0x87));
  v810 = *(STACK[0x730] + (BYTE1(v800) ^ 0x96));
  v811 = *(STACK[0x730] + (v765 ^ 0x47));
  v812 = *(STACK[0x730] + ((v796 >> 24) ^ 0x88121321EELL));
  v813 = *(STACK[0x730] + ((v801 >> 24) ^ 0x43A5759BE0));
  v814 = *(STACK[0x730] + (v777 ^ 0x90));
  LODWORD(v777) = 1409294849 - (v798 ^ 0xEB) + *(v34 + 4 * (v798 ^ 0x36));
  v815 = *(STACK[0x730] + (BYTE2(v800) ^ 0xC9));
  v816 = (v777 - ((2 * v777 + 546034876) & 0x5D917896) + 2131666601) ^ 0x432605D5u;
  v817 = (v799 ^ 0x80A802FC) - ((2 * ~v799) & 0x1D0) - 1549923768 + *(v34 + 4 * (v799 ^ 0x36));
  v818 = (STACK[0x8D8] + ((v816 - ((2 * v816) & 0x1999ACDE8)) << 16) + 0x70D1CCCD672A0000) ^ 0x70D1CCCD66F40000;
  v819 = (((v817 - ((2 * v817) & 0x14F8A5B20)) << 8) + 0x4BC2AA7C52D9000) ^ 0x4BC2AA7C52D9000;
  v820 = (v802 ^ 0xA91082E2) - ((2 * (v802 ^ 0xFFFFFFE3)) & 0x1EC) + 2067106390 + *(v34 + 4 * (v802 ^ 0x36));
  v821 = (v803 ^ 0x9020A6A1) - ((2 * (v803 ^ 0xFFFFFFE3)) & 0x16A) - 1809488363 + *(v34 + 4 * (v803 ^ 0x36));
  v822 = (((v819 - ((2 * v819) & 0xC25ECF350000) + 0xE12F679A801FLL) ^ (v820 - ((2 * v820) & 0x1FCBFA416) + 0xE0FE5FD20BLL) ^ (v818 - ((2 * v818) & 0xDD2C1A5C0000) + 0xEE960D2EF8F8)) << 16) ^ 0xF5994EBAAEC0000;
  v823 = (((v821 - ((2 * v821) & 0xF3546BDELL)) << 8) + 0x54FAED79AA35EF00) ^ 0x54FAED79AA35EF00;
  v824 = (v822 - ((2 * v822) & 0xB2442CD59D680000) - 0x26DDE995314BE0CFLL) ^ (v823 - ((2 * v823) & 0x37E7BF55C2218E00) - 0x640C20551EEF3879);
  LODWORD(v824) = v824 ^ HIDWORD(v824);
  LODWORD(v822) = -(v804 ^ 0xEB) - 738103295 + *(v34 + 4 * (v804 ^ 0x36));
  v825 = (v822 - ((2 * v822 + 8992956) & 0x135CE7C2) - 638382017) ^ 0x6440CA7Fu;
  LODWORD(v804) = v805 ^ 0xEB;
  LODWORD(v820) = v805 ^ 0x802210F8;
  v826 = (2 * ((v805 & 0xDDDDDDDDDDDDDDDDLL ^ 0xC9) - ((2 * (v805 & 0xDDDDDDDDDDDDDDDDLL ^ 0xC9)) & 0x120)) + 0x34DD905228DBC724) ^ 0x34DD905228DBC724;
  v827 = (v805 ^ 0x3C7E79B76F7FFB15) + ((2 * (v805 ^ 0xEB)) & 0x1FC) - 0x3C7E79B76F7FFB20 + ((v826 - ((2 * v826) & 0x5723C87C1CED8500) - 0x546E1BC1F1893D7FLL) ^ 0x546E1BC1F1893D7ELL);
  v828 = v820 - ((2 * v804) & 0x1D8) - 1541145524 + *(v34 + 4 * ((v827 + 2692312662 - ((2 * v827) & 0x40F2DCAC)) ^ 0xA0796E56));
  v829 = (STACK[0x920] + ((v825 - ((2 * v825) & 0xE4795914)) << 16) + 0x3F48723CACC20000) ^ 0x3F48723CAC8A0000;
  v830 = (((v828 - ((2 * v828) & 0x104F5CFB8)) << 8) - 0x738057D85182400) ^ 0xF8C7FA827AE7DC00;
  v831 = (v807 ^ 0xA60600EA) - ((2 * (v807 ^ 0xEA)) & 0x1FC) + 2118126686 + *(v34 + 4 * (v807 ^ 0x36));
  v832 = (v830 - ((2 * v830) & 0x5C55E71ED200) + 0x2E2AF38F6932) ^ (v831 - ((2 * v831) & 0x18C9477FCLL) + 0x8FA3C64A3BFELL) ^ (v829 - ((2 * v829) & 0xD08C452C0000) + 0x684622962800);
  v833 = (v806 ^ 0x900198B) - ((2 * (v806 ^ 0x8B)) & 0xFFFFFF3F) + 457569023 + *(v34 + 4 * (v806 ^ 0x36));
  v834 = (((v833 - ((2 * v833) & 0x1112102EALL)) << 8) - 0x303521776F7E8B00) ^ 0xCFCADE8890817500;
  v835 = (((v832 << 16) ^ 0xC9CF17537ACC0000) - ((2 * ((v832 << 16) ^ 0xC9CF17537ACC0000)) & 0xCAC3C6BCD6260000) - 0x1A9E1CA194ECB13FLL) ^ (v834 - ((2 * v834) & 0x398156D5B2EA5A00) + 0x1CC0AB6AD9752D18);
  v836 = v835 ^ HIDWORD(v835);
  LODWORD(v834) = (v812 ^ 0xA620807B) - ((2 * (v812 ^ 0xFFFFFFFB)) & 0xDE) + *(v34 + 4 * (v812 ^ 0x36)) + 1;
  v837 = (v834 - ((2 * v834 + 2085296028) & 0x5479B030) + 677536742) ^ 0x47D26186u;
  v838 = (v809 ^ 0xE482C0ED) - ((2 * (v809 ^ 0xE9)) & 0xFFFFFFF3) + 1069763673 + *(v34 + 4 * (v809 ^ 0x36));
  v839 = (((v837 - ((2 * v837) & 0x2941C800)) << 16) - 0x7BD9EB5F1C000000) ^ 0x842614A0E4000000;
  v840 = (((v838 - ((2 * v838) & 0x1CF0666F0)) << 8) - 0x4F3C27187CCC8800) ^ 0xB0C3D8E783337800;
  v841 = (v810 ^ 0x838869) - ((2 * (v810 ^ 0x69)) & 0xFA) + 599950301 + *(v34 + 4 * (v810 ^ 0x36));
  v842 = (v808 ^ 0x130CE7) - ((2 * (v808 ^ 0xE3)) & 0xFFFFFFE7) + 607322195 + *(v34 + 4 * (v808 ^ 0x36));
  v843 = (((v840 - ((2 * v840) & 0xF3C2AB2B3400) + 0x79E155959AE2) ^ (v841 - ((2 * v841) & 0x1AF8BE152) + 0x70DCD7C5F0A9) ^ (v839 - ((2 * v839) & 0x7F7F322E0000) + 0xBFBF99172D86)) << 16) ^ 0xB6821B4747CD0000;
  v844 = (((v842 - ((2 * v842) & 0x1E964F1B2)) << 8) - 0x1C37B70B4D872700) ^ 0xE3C848F4B278D900;
  v845 = (v843 - ((2 * v843) & 0x2B7D78B5E53E0000) + 0x15BEBC5AF29FE78DLL) ^ (v844 - ((2 * v844) & 0x42DC35A4D163C800) + 0x216E1AD268B1E4DCLL);
  v846 = v845 ^ HIDWORD(v845);
  LODWORD(v811) = (v811 ^ 0xB082D9) - ((2 * (v811 ^ 0xFFFFFFFB)) & 0x19A) + *(v34 + 4 * (v811 ^ 0x36)) + 1;
  v847 = (v811 - ((2 * v811 + 1194005592) & 0xB8ADCFF6) - 1281497) ^ 0x31B85E65;
  v848 = (v813 ^ 0xA50183E1) - ((2 * (v813 ^ 0xFFFFFFE3)) & 0x1EA) + 2135198037 + *(v34 + 4 * (v813 ^ 0x36));
  v849 = (STACK[0x940] + ((v847 - ((2 * v847) & 0x193E04D60)) << 16) + 0x6098C9F026C60000) ^ 0x6098C9F026B00000;
  v850 = (((v848 - ((2 * v848) & 0x13517531CLL)) << 8) + 0x521BA59A8BA98E00) ^ 0x521BA59A8BA98E00;
  v851 = (v815 ^ 0x5941A16B) - 2 * ((v815 ^ 0x6B) & 0x7F) - 888902945 + *(v34 + 4 * (v815 ^ 0x36));
  v852 = (v814 ^ 0x12400769) - ((2 * (v814 ^ 0x69)) & 0xFA) + 302384349 + *(v34 + 4 * (v814 ^ 0x36));
  v853 = (((v850 - ((2 * v850) & 0x20B6B1EC0800) + 0x905B58F6049FLL) ^ (v851 - ((2 * v851) & 0x174579CD0) + 0x8229BA2BCE68) ^ (v849 - ((2 * v849) & 0x4F469EBC0000) + 0xA7A34F5E653DLL)) << 16) ^ 0xB5D1AD83AFCA0000;
  v854 = (((v852 - ((2 * v852) & 0x1B2BDF82)) << 8) - 0x6C77BEF26A103F00) ^ 0x9388410D95EFC100;
  v855 = (v853 - ((2 * v853) & 0x8C3651C5B8380000) - 0x39E4D71D23E3B7DFLL) ^ (v854 - ((2 * v854) & 0x4707589C19390C00) - 0x5C7C53B1F36379BCLL);
  LODWORD(v854) = (((HIDWORD(v855) ^ 0x65758716) - 508486025) ^ 0x4FE7EEE7) + ((2 * ((HIDWORD(v855) ^ 0x65758716) - 508486025)) & 0x9FCFDDCE) - 1340600038 + ((((2 * HIDWORD(v855)) ^ 0xCAEB0E2C) - ((2 * ((2 * HIDWORD(v855)) ^ 0xCAEB0E2C)) & 0x59C89168) - 1394325323) & 0xC3623CEE ^ 0x7F9FF75B);
  LODWORD(v854) = v854 - ((2 * v854) & 0x1705FB26) - 1954349677;
  v856 = (v836 ^ 0xA96F02A8) - 2 * ((v836 ^ 0xA96F02A8) & 0x3171367B ^ v836 & 0x11) - 0xA0E0775CE8EC996;
  LODWORD(v841) = *(STACK[0x730] + ((v856 >> 24) ^ 0xF5F1F88A31));
  v857 = (v855 ^ 0x9225ADF6 ^ v854) - ((2 * (v855 ^ 0x9225ADF6 ^ v854)) & 0x110AF0818) + 0x4BC39DF8857840CLL;
  LODWORD(v804) = *(STACK[0x730] + ((v857 >> 24) ^ 0x4BC39DF88));
  v858 = (v846 ^ 0xF5F41C9) - 2 * ((v846 ^ 0xF5F41C9) & 0x87A777FFLL ^ v846 & 0x26) - 0x746CAE778588827;
  v859 = (v824 ^ 0xE3492A47) - ((2 * (v824 ^ 0xE3492A47)) & 0xA3713CE8) + 0x2570988151B89E74;
  LODWORD(v851) = *(STACK[0x730] + (v846 ^ 0xC9));
  LODWORD(v801) = *(STACK[0x730] + (BYTE1(v859) ^ 0x9ELL));
  LODWORD(v828) = *(STACK[0x730] + (BYTE1(v858) ^ 0x77));
  LODWORD(v806) = *(STACK[0x730] + (BYTE2(v857) ^ 0x57));
  LODWORD(v855) = *(STACK[0x730] + (v824 ^ 0x47));
  LODWORD(v831) = *(STACK[0x730] + (BYTE2(v856) ^ 0x71));
  LODWORD(v812) = *(STACK[0x730] + (BYTE2(v858) ^ 0xA7));
  LODWORD(v820) = *(STACK[0x730] + (v836 ^ 0xA8));
  LODWORD(v839) = *(STACK[0x730] + (BYTE2(v859) ^ 0xB8));
  LODWORD(v846) = *(STACK[0x730] + ((v859 >> 24) ^ 0x2570988151));
  LODWORD(v854) = *(STACK[0x730] + (v854 ^ 0x93));
  LODWORD(v836) = (((v841 - ((2 * v841) & 0x28)) << 24) + 335544320) ^ 0x14000000;
  LODWORD(v841) = *(STACK[0x730] + ((v858 >> 24) ^ 0xF8B9351887));
  LODWORD(v824) = (v836 + 1179945035 - ((2 * v836) & 0x8C000000)) ^ 0x4654884B | (v804 + 972190731 - ((2 * v804) & 0x16)) ^ 0x39F2740B;
  LODWORD(v857) = *(STACK[0x730] + (BYTE1(v857) ^ 0x84));
  LODWORD(v836) = (((v801 + (~(2 * v801) | 0xFE63)) << 16) - 154206208) ^ LODWORD(STACK[0x578]);
  LODWORD(v824) = (v824 - 170864186 - ((2 * v824) & 0xEBA1A38C)) ^ 0xF5D0D1C6 | (v836 - 120777729 - ((2 * v836) & 0x19A0000)) ^ 0xF8CD13FF;
  LODWORD(v856) = *(STACK[0x730] + (BYTE1(v856) ^ 0x36));
  LODWORD(v836) = (((v828 - ((2 * v828) & 0x160)) << 8) + 1112846336) ^ 0x4254B000;
  LODWORD(v824) = (v824 + 873956203 - ((2 * v824) & 0x682F06D6)) ^ 0x3417836B | (v836 + 496713100 - ((2 * v836) & 0x3B367A00)) ^ 0x1D9B3D8C;
  LODWORD(v828) = (((v820 - ((2 * v820) & 0xCA)) << 24) + 1694498816) ^ 0x65000000;
  LODWORD(v831) = (((v831 - ((2 * v831) & 0xA)) << 8) + 1272448256) ^ 0x4BD80500;
  LODWORD(v812) = (((v812 - ((2 * v812) & 0x1C)) << 8) + 188747264) ^ 0xB400E00;
  LODWORD(v851) = (((v851 - ((2 * v851) & 0x2A)) << 24) - 1795162112) ^ 0x95000000;
  LODWORD(v806) = (((v806 - ((2 * v806) & 0x1D0)) << 16) - 806879232) ^ 0xCFE80000;
  LODWORD(v851) = (v806 - 603821101 - ((2 * v806) & 0x38040000)) ^ 0xDC026BD3 | (v851 + 1236891921 - ((2 * v851) & 0x92000000)) ^ 0x49B97911;
  LODWORD(v851) = (v851 - 101750497 - ((2 * v851) & 0xF3DED23E)) ^ 0xF9EF691F | (v831 + 1656595274 - ((2 * v831) & 0x457B4600)) ^ 0x62BDA34A;
  LODWORD(v855) = (v851 + 747123194 - ((2 * v851) & 0x591063F4)) ^ 0x2C8831FA | (v855 + 1155495106 - ((2 * v855) & 0x184)) ^ 0x44DF74C2;
  LODWORD(v839) = (((v839 - ((2 * v839) & 0x166)) << 16) - 1330446336) ^ 0xB0B30000;
  LODWORD(v841) = (((v841 - ((2 * v841) & 0xD2)) << 24) - 385875968) ^ 0xE9000000;
  LODWORD(v839) = (v839 + 1481473816 - ((2 * v839) & 0x309A0000)) ^ 0x584D7F18 | (v828 - 104831425 - ((2 * v828) & 0xF2000000)) ^ 0xF9C0663F;
  LODWORD(v846) = (v841 + 1323078925 - ((2 * v841) & 0x9C000000)) ^ 0x4EDC950D | (v846 - 1027718563 - ((2 * v846) & 0xBA)) ^ 0xC2BE425D;
  LODWORD(v806) = v846 - 2127716585 - ((2 * v846) & 0x25B3E2E);
  LODWORD(v846) = (v839 - 947871486 - ((2 * v839) & 0x8F014204)) ^ 0xC780A102 | (v812 + 1567310328 - ((2 * v812) & 0x3AD68200)) ^ 0x5D6B41F8;
  LODWORD(v857) = (((v857 - ((2 * v857) & 0x160)) << 16) - 1028653056) ^ 0xC2B00000;
  LODWORD(v820) = v806 ^ 0x812D9F17 | (v857 + 1939413224 - ((2 * v857) & 0x67320000)) ^ 0x739918E8;
  LODWORD(v831) = ((v856 - ((2 * v856) & 0x146)) << 8) - 156523776;
  LOBYTE(v828) = (((8 * (LOBYTE(STACK[0x998]) + 115 - ((2 * (LOBYTE(STACK[0x998]) + 115)) & 0x2C)) - 80) ^ 0x30) - 16 * ((LOBYTE(STACK[0x998]) + 115) & 1) + 41) & 0x38;
  v860 = STACK[0x998] - 0x51133B5774CD998DLL - ((2 * (STACK[0x998] - 0x51133B5774CD998DLL)) & 0x9123F96C0B5F32AALL) - 0x376E0349FA5066ABLL;
  v861 = ((((v860 << 56) ^ 0x5500000000000000) - (((v860 << 56) ^ 0x5500000000000000) >> 61 << 62) - 0x1F654CE34B3B55C7) & 0xF800000000000000 | (v860 >> 8)) ^ 0xE0C891FCB605AF99;
  v862 = (v861 - 0x7AAA804BE81EEA49 - ((2 * v861) & 0xAAFF682FC22B6ELL)) ^ 0x85557FB417E115B7;
  v863 = v862 - ((2 * v862 + 0x65616341D67C2B0ELL) & 0x77E0B22565F59F96);
  v864 = v863 - 0x515EF54C61C71AAELL;
  *(&v125 + 1) = (v863 - 1640438446) ^ 0xE0u;
  *&v125 = (v863 - 0x515EF54C61C71AAELL) ^ 0x6FB76F672E84A200;
  v865 = v125 >> 8;
  *(&v125 + 1) = (v863 - 0x515EF54C61C71AAELL) ^ 0x1A32E26077740EDBLL;
  *&v125 = 0x515EF54C61C71AADLL - v863;
  v866 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xA291E4717580E778) - 0x2EB70DC7453F8C44;
  v867 = (v864 ^ 0xFA32E26077740EDBLL) + (v865 ^ 0xFFFBAFDFEF7BF77FLL) + ((2 * v865) & 0xFFF75FBFDEF7EEFELL) + 0x4502010840881;
  v868 = v867 - ((2 * v867) & 0x29567B2CF64D0DA6) - 0x6B54C26984D9792DLL;
  *(&v125 + 1) = v868 ^ 0xA;
  *&v125 = v868 ^ 0xE5D8A2A1E0DF0900;
  v869 = v868 ^ v866;
  v870 = (v869 ^ 0x349050995A1F7AB6) + ((v125 >> 8) ^ 0x5B88EFF71FADD7F5) + ((2 * (v125 >> 8)) & 0xB711DFEE3F5BAFEALL) - 0x5B88EFF71FADD7F5;
  v871 = v870 - ((2 * v870) & 0x17CFAD9B0261675ELL) + 0xBE7D6CD8130B3AFLL;
  *(&v125 + 1) = v869 ^ 0x149050995A1F7AB6;
  *&v125 = v869 ^ 0x2000000000000000;
  v872 = v871 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0xC54BC0A1FA2AEDA4) - 0x1D5A1FAF02EA892ELL);
  *(&v125 + 1) = v872 ^ 0x1798264594982108;
  *&v125 = v872 ^ 0x8000000000000000;
  v873 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0x3214E2AF4BE1758CLL) - 0x66F58EA85A0F453ALL;
  *(&v125 + 1) = v871 ^ 0xDA;
  *&v125 = v871 ^ 0x753DC615698D5700;
  v874 = (v872 ^ 0x9798264594982108) + ((v125 >> 8) ^ 0x5C79B9E3BFDBFFFALL) + ((2 * (v125 >> 8)) & 0xB8F373C77FB7FFF4) - 0x5C79B9E3BFDBFFFALL;
  v875 = v874 - ((2 * v874) & 0x3461DA69190D9E0ELL) - 0x65CF12CB737930F9;
  *(&v125 + 1) = v875 ^ 0xA1;
  *&v125 = v875 ^ 0x512F3C31859CBA00;
  v876 = v125 >> 8;
  v877 = v875 ^ v873;
  *(&v125 + 1) = v877 ^ 0x8254D66206C0067;
  *&v125 = v877 ^ 0xC000000000000000;
  v878 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xEEDC01B84B988F6CLL) - 0x891FF23DA33B84ALL;
  v879 = (v877 ^ 0xC8254D66206C0067) + (v876 ^ 0xF3ADFE3F0FF5BFBFLL) + ((2 * v876) & 0xE75BFC7E1FEB7F7ELL) + 0xC5201C0F00A4041;
  v880 = v879 - ((2 * v879) & 0x863FCE97C6E249ALL) - 0x7BCE018B41C8EDB3;
  *(&v125 + 1) = v880 ^ 0x84;
  *&v125 = v880 ^ 0x492D6003D83D500;
  v881 = (v880 ^ v878 ^ 0xF3FCD6DC184F9232) + ((v125 >> 8) ^ 0x797F777E4FFDDEE8) + ((2 * (v125 >> 8)) & 0xF2FEEEFC9FFBBDD0) - 0x797F777E4FFDDEE8;
  v882 = v881 - ((2 * v881) & 0x9E79316FC50AE518) - 0x30C367481D7A8D74;
  *(&v125 + 1) = v880 ^ v878 ^ 0x13FCD6DC184F9232;
  *&v125 = v880 ^ ~v878;
  v883 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xE65DB129465D54CLL) - 0x78CD1276B5CD155ALL;
  *(&v125 + 1) = v882 ^ 0xFFFFFFF7;
  *&v125 = v882 ^ 0x4A5E5D071FA36300;
  v884 = v882 ^ v883;
  v885 = (v884 ^ 0xCD6CB08E55918951) + ((v125 >> 8) ^ 0xEDDF7FF6EDBF7FEALL) + ((2 * (v125 >> 8)) & 0xDBBEFFEDDB7EFFD4) + 0x1220800912408016;
  v886 = v885 - ((2 * v885) & 0xBE1E6134352542E2) - 0x20F0CF65E56D5E8FLL;
  *(&v125 + 1) = v884 ^ 0xD6CB08E55918951;
  *&v125 = v884 ^ 0xC000000000000000;
  v887 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xC5916323FE308102) - 0x1D374E6E00E7BF7FLL;
  *(&v125 + 1) = v886 ^ 2;
  *&v125 = v886 ^ 0x48FA5C2AE1A4BB00;
  v888 = (v887 ^ 0xAA32EDBB1EBCFB83 ^ v886) + ((v125 >> 8) ^ 0xEF6B7CDF75F5BDFCLL) + ((2 * (v125 >> 8)) & 0xDED6F9BEEBEB7BF8) + 0x109483208A0A4204;
  v889 = ((v888 - ((2 * v888) & 0xCC826FA59B7B516CLL) - 0x19BEC82D3242574ALL) ^ 0x1E581DA726455A28) >> (v828 ^ 0x28u);
  v890 = v889 + 0x3B4752B2AED3C853 - ((2 * v889) & 0x768EA5655DA790A6);
  v891 = STACK[0x998] - 0x51133B5774CD9985 - ((2 * (STACK[0x998] - 0x51133B5774CD9985)) & 0x6664FE1F46208486) + 0x33327F0FA3104243;
  v892 = ((((v891 << 56) ^ 0x4300000000000000) - ((2 * ((v891 << 56) ^ 0x4300000000000000)) & 0x4444444444444444) - 0x5DEE923252680859) & 0xF800000000000000 | (v891 >> 8)) ^ 0xA033327F0FA31042;
  v893 = (v892 - 0x70108A9BBEF137F0 - ((2 * v892) & 0x11DEEAC8821D9020)) ^ 0x8FEF7564410EC810;
  v894 = v893 - ((2 * v893 - 0x1A9E9CBE2983D4F2) & 0xDD6CC7E50D9A34BALL) + 0x61671593720B2FE4;
  v895 = STACK[0x8B0];
  *(&v125 + 1) = v894 ^ 0x76;
  *&v125 = v894 ^ 0xBAF155871AB37700;
  v896 = (v894 ^ 0x2F74D8804343DB4DLL) + ((v125 >> 8) ^ 0x35F8FD7BB95F3FF7) + ((2 * (v125 >> 8)) & 0x6BF1FAF772BE7FEELL) - 0x35F8FD7BB95F3FF7;
  *(&v125 + 1) = v894 ^ 0xF74D8804343DB4DLL;
  *&v125 = v894 ^ 0x2000000000000000;
  v897 = v896 - ((2 * v896) & 0x356C6A84E69DABECLL) + 0x1AB63542734ED5F6;
  v898 = v897 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0xB8EA3D2A6073CDFCLL) + 0x5C751E953039E6FELL);
  *(&v125 + 1) = v897 ^ 0x2F;
  *&v125 = v897 ^ 0x6BC5AA75E8B75A00;
  v899 = (v898 ^ 0x37B0B4E0D88EBCD1) + ((v125 >> 8) ^ 0x3FFF1EF7ED5FE5D9) + ((2 * (v125 >> 8)) & 0x7FFE3DEFDABFCBB2) - 0x3FFF1EF7ED5FE5D9;
  v900 = v899 - ((2 * v899) & 0xFDC659403FB898FCLL) - 0x11CD35FE023B382;
  *(&v125 + 1) = v898 ^ 0x17B0B4E0D88EBCD1;
  *&v125 = v898 ^ 0x2000000000000000;
  v901 = v900 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0xA4D56AE1D863D638) + 0x526AB570EC31EB1CLL);
  *(&v125 + 1) = v900 ^ 0xB;
  *&v125 = v900 ^ 0x80393C78F761A800;
  v902 = (v901 ^ 0xD25389081B504317) + ((v125 >> 8) ^ 0x7DBF9B55F57B1DFELL) + ((2 * (v125 >> 8)) & 0xFB7F36ABEAF63BFCLL) - 0x7DBF9B55F57B1DFELL;
  *(&v125 + 1) = v901 ^ 0x125389081B504317;
  *&v125 = v901 ^ 0xC000000000000000;
  v903 = v902 - ((2 * v902) & 0x1A33743DF81D28B4) + 0xD19BA1EFC0E945ALL;
  v904 = v903 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0x629ABDC9AE253A1ELL) - 0x4EB2A11B28ED62F1);
  *(&v125 + 1) = v903 ^ 0xFC;
  *&v125 = v903 ^ 0xC6066B1BF514E100;
  v905 = (v904 ^ 0x774B35FF22067CF3) + ((v125 >> 8) ^ 0x7FFDFDE5ED6BDE3FLL) + ((2 * (v125 >> 8)) & 0xFFFBFBCBDAD7BC7ELL) - 0x7FFDFDE5ED6BDE3FLL;
  v906 = v905 - ((2 * v905) & 0x65E76927B3388B62) - 0x4D0C4B6C2663BA4FLL;
  *(&v125 + 1) = v904 ^ 0x174B35FF22067CF3;
  *&v125 = v904 ^ 0x6000000000000000;
  v907 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xA8CC42365A62B6A0) - 0x2B99DEE4D2CEA4B0;
  *(&v125 + 1) = v906 ^ 0x78;
  *&v125 = v906 ^ 0x32509CE75A288200;
  v908 = (v906 ^ v907 ^ 0xE636BDFC7719D928) + ((v125 >> 8) ^ 0x262CFDDFA5FFF75ELL) + ((2 * (v125 >> 8)) & 0x4C59FBBF4BFFEEBCLL) - 0x262CFDDFA5FFF75ELL;
  *(&v125 + 1) = v906 ^ v907 ^ 0x636BDFC7719D928;
  *&v125 = v906 ^ ~v907;
  v909 = v908 - ((2 * v908) & 0x4BD8238480D48032) - 0x5A13EE3DBF95BFE7;
  v910 = v909 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0x73FB68C425046F70) + 0x39FDB462128237B8);
  *(&v125 + 1) = (v908 - ((2 * v908) & 0x80D48032) + 1080705049) ^ 0x62;
  *&v125 = v909 ^ 0x208ED472BD4C5100;
  v911 = (v910 ^ 0x19736010AFCE66DALL) + ((v125 >> 8) ^ 0x7BDFF95F69EFDAFFLL) + ((2 * (v125 >> 8)) & 0xF7BFF2BED3DFB5FELL) - 0x7BDFF95F69EFDAFFLL;
  v912 = v911 - ((2 * v911) & 0x144C7A75B380710) - 0x7F5D9C2C5263FC78;
  *(&v125 + 1) = v910 ^ 0x19736010AFCE66DALL;
  *&v125 = v910;
  v913 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xA62B559D0E52916CLL) - 0x2CEA553178D6B74ALL;
  *(&v125 + 1) = v912 ^ 0xFFFFFFFB;
  *&v125 = v912 ^ 0x17570F6356AA1900;
  v914 = (v913 ^ 0xC442A5ADD183514DLL ^ v912) + ((v125 >> 8) ^ 0x7FBF6F3FAFFBFE9DLL) + ((2 * (v125 >> 8)) & 0xFF7EDE7F5FF7FD3ALL) - 0x7FBF6F3FAFFBFE9DLL;
  v915 = v914 - ((2 * v914) & 0xEA58BDADE89AC56ALL) - 0xAD3A1290BB29D4BLL;
  v916 = v915 ^ (0x4A72862316B4658ALL - (v915 ^ 0xD3574A31FB5902BLL) - ((0xF03254EBD7F1E53CLL - 2 * (v915 ^ 0xD3574A31FB5902BLL)) & 0xA4B2B75A5576E5D8)) ^ ((v915 ^ 0xAD3A1290BB29D4ALL) - ((2 * (v915 ^ 0xAD3A1290BB29D4ALL) + 2) & 0x6844E078739D9EEELL) + 0x3422703C39CECF78) ^ 0x93577547E738DF2ELL;
  v917 = (v916 - ((2 * v916 + 0x703254EBD7F1E53CLL) & 0x538FB21449AD0450) - 0x5E1EFC7FEF308B3ALL) ^ 0xA9C7D90A24D68228;
  v918 = v917 >> (v828 ^ 0x28u);
  LOBYTE(v828) = v828 ^ 0x17;
  v919 = (2 * ((v917 << v828) - ((2 * (v917 << v828)) & 0x4E5E7277D9CD7800)) - 0x31A18D882632870ALL) ^ 0xCE5E7277D9CD78F6;
  v920 = ((v919 - 0x2AE65F32E8EE3F3ALL - ((2 * v919) & 0xAA33419A2E23818CLL)) ^ 0xD519A0CD1711C0C6) + (v890 ^ 0x3B4752B2AED3C853);
  v921 = v920 - ((2 * v920) & 0xCC5DFB0CFBA42A3CLL) - 0x19D10279822DEAE2;
  v922 = STACK[0x998] - 0x51133B5774CD997DLL - ((2 * (STACK[0x998] - 0x51133B5774CD997DLL)) & 0xD011AF8EDF4964EALL) + 0x6808D7C76FA4B275;
  v923 = ((((v922 << 56) ^ 0x7500000000000000) - ((2 * ((v922 << 56) ^ 0x7500000000000000)) & 0x9000000000000000) + 0x48684A7967A41666) & 0xF800000000000000 | (v922 >> 8)) ^ 0x486808D7C76FA4B2;
  v924 = (v923 - 0x5090EB924F4A9C55 - ((2 * v923) & 0x50DE28DB616AC756)) ^ 0xAF6F146DB0B563ABLL;
  v925 = v924 - ((2 * v924 - 0x1A9E9CBE2983D4F2) & 0xBF96F140E4E81696) + 0x527C2A415DB220D2;
  *(&v125 + 1) = v925 ^ 0x60;
  *&v125 = v925 ^ 0x8B8C4ED5EE0A6600;
  v926 = (v925 ^ 0x1E09C3D2B7FACA5BLL) + ((v125 >> 8) ^ 0xEFF4F9DB93BF36FALL) + ((2 * (v125 >> 8)) & 0xDFE9F3B7277E6DF4) + 0x100B06246C40C906;
  v927 = v926 - ((2 * v926) & 0x78EBB761763C344CLL);
  *(&v125 + 1) = v925 ^ 0x1E09C3D2B7FACA5BLL;
  *&v125 = v925;
  v928 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0xF9D8EF23ED86F3CCLL) + 0x7CEC7791F6C379E6;
  *(&v125 + 1) = (1155655129 - v927);
  *&v125 = (v927 + 0x3C75DBB0BB1E1A26) ^ 0x4D06448720E79500;
  v929 = (v927 + 0x3C75DBB0BB1E1A26) ^ v928;
  v930 = (v929 ^ 0x31EA3316D624EC19) + ((v125 >> 8) ^ 0x1FEBDFBFFFFFFFA1) + ((2 * (v125 >> 8)) & 0x3FD7BF7FFFFFFF42) - 0x1FEBDFBFFFFFFFA1;
  v931 = v930 - ((2 * v930) & 0xA03E1B7A445C46B6) - 0x2FE0F242DDD1DCA5;
  *(&v125 + 1) = v929 ^ 0x11EA3316D624EC19;
  *&v125 = v929 ^ 0x2000000000000000;
  v932 = v931 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0x75D91B9CA3CDC6EALL) - 0x45137231AE191C8BLL);
  *(&v125 + 1) = v931 ^ 0x2E;
  *&v125 = v931 ^ 0xAEC51D65CA93C700;
  v933 = (v932 ^ 0x142990AB9B75245BLL) + ((v125 >> 8) ^ 0xDDFA6F4ADE1E7F3FLL) + ((2 * (v125 >> 8)) & 0xBBF4DE95BC3CFE7ELL) + 0x220590B521E180C1;
  v934 = v933 - ((2 * v933) & 0x47D8CE26C8D045FELL) - 0x5C1398EC9B97DD01;
  *(&v125 + 1) = v932 ^ 0x142990AB9B75245BLL;
  *&v125 = v932;
  v935 = v934 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0x2D85A64E8F123F7ELL) + 0x16C2D32747891FBFLL);
  *(&v125 + 1) = v934 ^ 0x59;
  *&v125 = v934 ^ 0x68F3B6166D725700;
  v936 = (v935 ^ 0x7E3165312AFB48E6) + ((v125 >> 8) ^ 0x3EFC7D9BDDB7DFBFLL) + ((2 * (v125 >> 8)) & 0x7DF8FB37BB6FBF7ELL) - 0x3EFC7D9BDDB7DFBFLL;
  v937 = v936 - ((2 * v936) & 0xF33E82F5F6C390CCLL) + 0x799F417AFB61C866;
  *(&v125 + 1) = v935 ^ 0x1E3165312AFB48E6;
  *&v125 = v935 ^ 0x6000000000000000;
  v938 = v937 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0x5AD1E0AB4C08F1A2) - 0x52970FAA59FB872FLL);
  *(&v125 + 1) = v937 ^ 0xAF;
  *&v125 = v937 ^ 0xF93C690E78D50F00;
  v939 = (v938 ^ 0x5454995BDED1777ELL) + ((v125 >> 8) ^ 0xEFE4BEDEBA19BAEFLL) + ((2 * (v125 >> 8)) & 0xDFC97DBD743375DELL) + 0x101B412145E64511;
  v940 = v939 - ((2 * v939) & 0x2CD66A57818AE480) - 0x6994CAD43F3A8DC0;
  *(&v125 + 1) = v938 ^ 0x1454995BDED1777ELL;
  *&v125 = v938 ^ 0x4000000000000000;
  v941 = v940 ^ ((v125 >> 61) - ((2 * (v125 >> 61)) & 0xF1BEBB3116DAC494) + 0x78DF5D988B6D624ALL);
  *(&v125 + 1) = v940 ^ 0x3B;
  *&v125 = v940 ^ 0x1309F09B3DE36300;
  v942 = (v941 ^ 0x6BD6AD03B68E0171) + ((v125 >> 8) ^ 0xA7F7FEFF7FFBADD3) + ((2 * (v125 >> 8)) & 0x4FEFFDFEFFF75BA6) + 0x580801008004522DLL;
  v943 = v942 - ((2 * v942) & 0x549BCC4C5FEF274) - 0x7D5B219D9D0086C6;
  *(&v125 + 1) = v941 ^ 0xBD6AD03B68E0171;
  *&v125 = v941 ^ 0x6000000000000000;
  v944 = (v125 >> 61) - ((2 * (v125 >> 61)) & 0x8663B30A0A1CF698) + 0x4331D985050E7B4CLL;
  *(&v125 + 1) = v943 ^ 0x49;
  *&v125 = v943 ^ 0x1551B2D299C96300;
  v945 = (v944 ^ 0xD6606B579CC71805 ^ v943) + ((v125 >> 8) ^ 0x31F7BFFFEAFB6FB6) + ((2 * (v125 >> 8)) & 0x63EF7FFFD5F6DF6CLL) - 0x31F7BFFFEAFB6FB6;
  v946 = ((v945 - ((2 * v945) & 0xF089A51B450E7440) - 0x7BB2D725D78C5E0) ^ 0x805DF8F8497FC8BELL) << v828;
  LODWORD(STACK[0x740]) = v824 - ((2 * v824) & 0x31BA46E8) - 1730337932;
  LODWORD(STACK[0x820]) = v855 - ((2 * v855) & 0xA44F6CF4) + 1378334330;
  v947 = v918 - 0x132EC1CA8D4DB533 - ((2 * v918) & 0xD9A27C6AE564959ALL);
  v948 = (2 * (v946 - ((2 * v946) & 0x19B2B8FEB8DA9400)) - 0x664D470147256B76) ^ 0x99B2B8FEB8DA948ALL;
  v949 = (v947 ^ 0xECD13E3572B24ACDLL) + ((v948 - 0x3963981B6564A362 - 2 * (v948 & 0x469C67E49A9B5CBELL)) ^ 0xC69C67E49A9B5C9ELL);
  LODWORD(v846) = (v846 - 1936769972 - ((2 * v846) & 0x191E7898)) ^ 0x8C8F3C4C | (v854 + 1686460738 - ((2 * v854) & 0x84)) ^ 0x64855942;
  LODWORD(v824) = (v820 - 201237288 - ((2 * v820) & 0xE802B9B0)) ^ 0xF4015CD8 | ((v831 ^ 0xF6ABA300) - 1700888438 - ((2 * (v831 ^ 0xF6ABA300)) & 0x353D0000)) ^ 0x9A9E808A;
  v950 = v949 - ((2 * v949) & 0xA035C245F71AEE52) + 0x501AE122FB8D7729;
  v951 = HIDWORD(v950);
  v952 = HIWORD(v950);
  LODWORD(STACK[0x8E8]) = 2 * (HIWORD(v950) & 0x3F);
  v953 = v950 >> 24;
  v954 = v950 >> 8;
  STACK[0x940] = v950 >> 16;
  LODWORD(v854) = 2 * (v950 >> 16);
  v955 = v950 >> 40;
  v956 = HIBYTE(v950);
  v957 = *(v895 + 8 * (LODWORD(STACK[0x930]) ^ (113 * LODWORD(STACK[0x900]))));
  LODWORD(STACK[0x750]) = v846 - ((2 * v846) & 0x54B68280) + 710623552;
  STACK[0x710] = v890;
  STACK[0x708] = v921 >> 8;
  STACK[0x700] = v947;
  STACK[0x6F8] = v921 >> 24;
  STACK[0x6F0] = HIDWORD(v921);
  STACK[0x6E8] = HIBYTE(v921);
  STACK[0x6E0] = v953;
  STACK[0x6D8] = v954;
  STACK[0x6D0] = v955;
  STACK[0x6C8] = HIWORD(v921);
  STACK[0x6C0] = v956;
  STACK[0x920] = v921 >> 40;
  STACK[0x910] = v921 >> 16;
  STACK[0x8F8] = v951;
  STACK[0x8F0] = v952;
  LODWORD(STACK[0x930]) = v824 - ((2 * v824) & 0xC524D5DC) - 493720850;
  LODWORD(STACK[0x900]) = v854 & 0xFFFFFFFC;
  LODWORD(STACK[0x8E0]) = (2 * v951) & 0xFFFFFFDA;
  LODWORD(STACK[0x8D8]) = (2 * (v921 >> 16)) & 0xFFFFFFE8;
  return v957();
}

uint64_t sub_1000357E0(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8)
{
  LODWORD(STACK[0x758]) = a8;
  LODWORD(STACK[0x8D0]) = v8 + 6969;
  STACK[0x728] = a7 ^ LODWORD(STACK[0x860]);
  STACK[0x720] = a1 ^ LODWORD(STACK[0x850]);
  return (*(STACK[0x8B0] + 8 * v8))(22);
}

uint64_t sub_10003588C@<X0>(char a1@<W0>, unsigned __int8 a2@<W3>, unsigned __int8 a3@<W7>, unsigned __int8 a4@<W8>)
{
  v14 = STACK[0x8C8];
  v15 = *(STACK[0x8C8] + (v4 ^ 0x60));
  v16 = STACK[0x8D0];
  v17 = LODWORD(STACK[0x8D0]) - 3917;
  LODWORD(STACK[0x6B8]) = v17;
  v18 = v15 + (v17 ^ 0xD9) - ((2 * v15 + 18) & 0x9C);
  LODWORD(STACK[0x8D0]) = v16;
  v19 = *(v14 + (v8 ^ (v16 + 93)));
  v20 = v19 - ((2 * v19 + 18) & a1) - 108;
  v21 = *(v14 + (a4 ^ 0xD1)) - ((2 * *(v14 + (a4 ^ 0xD1)) + 18) & 0xE7);
  v22 = *(v14 + (a2 ^ 0x48));
  v23 = (2 * v22 + 18) & 0xF8;
  v22 += 5;
  v24 = v22 - v23;
  v25 = *(v14 + (v6 ^ 5));
  v26 = ((16 * (v22 - v23)) ^ 0x40) - ((32 * v22) & 0x40);
  LODWORD(STACK[0x830]) = v25 + ((44 - 2 * v25) | 0xFFFFFFD3);
  v27 = (16 * v25 - 32 * (v25 & 1) - 15) ^ 0x91;
  v28 = 37 - v27 - ((-2 * v27) & 0x40);
  v29 = *(v14 + (v10 ^ 7));
  LOBYTE(v17) = *(v14 + (v11 ^ 0x33)) - ((2 * *(v14 + (v11 ^ 0x33)) + 18) & 0x44);
  v30 = v29 - ((2 * v29 + 18) & 0x6A) - 66;
  v31 = *(v14 + (v5 ^ 0x21));
  v32 = v31 + 25 - ((2 * v31 + 18) & 0x1C) - 2;
  LOBYTE(v29) = ((16 * v32) ^ 0x60) - 32 * ((v31 + 25) & 1);
  v33 = *(v14 + (a3 ^ 0xDCLL)) - ((2 * *(v14 + (a3 ^ 0xDCLL)) + 2) & 4);
  v34 = *(v14 + (v7 ^ 0x7BLL)) - ((2 * *(v14 + (v7 ^ 0x7BLL)) + 18) & 0xA4) - 37;
  v35 = *(v14 + (v12 ^ 0x66));
  v36 = *(v14 + (v13 ^ 0xAALL)) - ((2 * *(v14 + (v13 ^ 0xAALL)) + 18) & 0xF3) - 126;
  v37 = *(v14 + (STACK[0x720] ^ 0x87));
  v38 = v37 + 89 - ((2 * v37 + 18) & 0xFFFFFF94) - 6;
  LODWORD(STACK[0x720]) = ((16 * v38) ^ 0x20) - 32 * ((v37 + 89) & 1);
  LOBYTE(v37) = *(v14 + (v9 ^ 0xBELL));
  v39 = *(v14 + (STACK[0x728] ^ 0x77));
  v40 = STACK[0x740];
  v41 = (LODWORD(STACK[0x740]) ^ v18 ^ (((16 * v18) ^ 0x60) + 70) & 0x60 ^ 0x7A);
  v42 = *(&off_10044E3E0 + v16 - 8641) - 1489540427;
  LODWORD(v41) = v42[v41] ^ (v42[v41] >> 6) ^ (v42[v41] >> 4);
  v43 = v42[(v20 ^ HIBYTE(LODWORD(STACK[0x740])) ^ (((16 * v20) ^ 0xB0) - ((2 * ((16 * v20) ^ 0xB0)) & 0x40) + 103) & 0x60 ^ 0xAE)];
  v44 = v43 ^ (v43 >> 4) ^ ((v43 >> 6) | 0xFFFFFFDC);
  v45 = v42[((v37 - ((2 * v37 + 18) & 0xC0) + 105) ^ HIWORD(LODWORD(STACK[0x740])) ^ (16 * v37 - 36) & 0x60 ^ 0xA0)];
  LODWORD(STACK[0x728]) = v45 ^ (v45 >> 4) ^ ((v45 >> 6) | 0x2C);
  v46 = v42[((v21 + 124) ^ BYTE1(v40) ^ (51 - ((16 * (v21 + 124)) ^ 0x30)) & 0x60 ^ 0x72)];
  v47 = v46 ^ (v46 >> 4) ^ ((v46 >> 6) | 0xFFFFFFAC);
  LOBYTE(v46) = (v26 + 36) & 0x60;
  v48 = STACK[0x820];
  v49 = v42[(v24 ^ HIBYTE(LODWORD(STACK[0x820])) ^ v46 ^ 0xAB)];
  LODWORD(STACK[0x718]) = v49 ^ 0x4B ^ (v49 >> 4) ^ (((v49 ^ 0x4B) >> 6) | 0xFFFFFF80);
  v50 = v42[((LODWORD(STACK[0x830]) - 96) ^ BYTE2(v48) ^ v28 & 0x60) ^ 0xE7];
  v51 = v50 ^ 0xFFFFFFB0 ^ (v50 >> 4) ^ (((v50 ^ 0xB0) >> 6) | 0xFFFFFF90);
  LOBYTE(v50) = v48 ^ v30 ^ ((32 * ((v30 >> 1) & 3)) | 4) ^ 0xCB;
  v52 = v42[((v17 + 43) ^ BYTE1(v48) ^ (((16 * (v17 + 43)) ^ 0x22) + 126) & 0x60 ^ 0xB7)];
  v53 = v42[v50] ^ (v42[v50] >> 4) ^ ((v42[v50] >> 6) | 0x58);
  v54 = v42[(v32 ^ HIBYTE(LODWORD(STACK[0x750])) ^ (v29 + 95) & 0x64) ^ 1];
  v55 = v54 ^ (v54 >> 6) ^ (v54 >> 4);
  v56 = v42[((v33 - 117) ^ HIWORD(LODWORD(STACK[0x750])) ^ (16 * (v33 - 117)) & 0x60) ^ 0x18];
  v57 = v56 ^ (v56 >> 6) ^ (v56 >> 4);
  LOBYTE(v56) = v35 + ((12 - 2 * v35) | 0xEF) - 110;
  v58 = v42[(v34 ^ BYTE1(LODWORD(STACK[0x750])) ^ (((16 * v34) ^ 0x20) - ((2 * ((16 * v34) ^ 0x20)) & 0x40) + 45) & 0x64 ^ 0x50)];
  v59 = v58 ^ (v58 >> 4) ^ ((v58 >> 6) | 0x10);
  v60 = v42[(LODWORD(STACK[0x750]) ^ v56 ^ ((32 * (v56 & 1) - 16 * v56 + 45) | 0x9F) ^ 0xDB)];
  v61 = v60 ^ (v60 >> 6) ^ (v60 >> 4);
  v62 = v42[(v36 ^ HIBYTE(LODWORD(STACK[0x930])) ^ (((16 * v36) ^ 0x90) - ((2 * ((16 * v36) ^ 0x90)) & 0x20) + 23) & 0x60 ^ 0x21)];
  v63 = v62 ^ (v62 >> 4) ^ ((v62 >> 6) | 0xFFFFFFD0);
  v64 = v39 + ((-20 - 2 * v39) | 0xB) - 124;
  v65 = v42[(v38 ^ HIWORD(LODWORD(STACK[0x930])) ^ (LODWORD(STACK[0x720]) + 20) & 0x60) ^ 0xF0];
  LODWORD(v42) = v42[(v64 ^ BYTE1(LODWORD(STACK[0x930])) ^ (((16 * v64) ^ 0x2B) - 1) & 0x60 ^ 0x25)];
  v66 = v65 ^ (v65 >> 4) ^ ((v65 >> 6) | 0x30);
  STACK[0x8E8] = v41 ^ 0xFFFFFFFB;
  LODWORD(STACK[0x750]) = v47 ^ 0xFFFFFFEA;
  LODWORD(STACK[0x8C8]) = ((2 * v66) & 0x3A ^ 0x28) + (v66 ^ 0xFFFFFFCB);
  v67 = ((2 * v51) & 0x1FC ^ 0xFFFFFF88) + (v51 ^ 0x3A);
  v68 = ((2 * v59) & 0x7C ^ 0x6C) + (v59 ^ 0x48);
  v69 = (LODWORD(STACK[0x728]) ^ 0xFFFFFFAE) + ((2 * LODWORD(STACK[0x728])) & 0x1C8);
  v70 = (8 * (LODWORD(STACK[0x758]) ^ 1)) | (32 * (LODWORD(STACK[0x758]) ^ 1));
  STACK[0x8E0] = v53 ^ 0xFFFFFF98;
  v71 = *(STACK[0x8B0] + 8 * (v70 ^ LODWORD(STACK[0x8D0])));
  LODWORD(STACK[0x6B0]) = v63;
  v72 = v63 ^ 0xFFFFFFCB;
  v73 = STACK[0x718];
  STACK[0x910] = v72;
  STACK[0x920] = v44 ^ 0xFFFFFFFB;
  STACK[0x8F8] = v73 ^ 0x40u;
  LODWORD(STACK[0x720]) = v61;
  STACK[0x940] = v61 ^ 0x6Au;
  LODWORD(STACK[0x830]) = v67 + 64;
  STACK[0x8F0] = v42 ^ (v42 >> 6) ^ (v42 >> 4) ^ 0xFFFFFFBB;
  STACK[0x8D8] = v55 ^ 0x75u;
  LODWORD(STACK[0x758]) = v68 + 124;
  STACK[0x930] = v52 ^ (v52 >> 6) ^ (v52 >> 4) ^ 0x76;
  STACK[0x900] = v57 ^ 0xFu;
  LODWORD(STACK[0x820]) = v69 + 96;
  return v71();
}

uint64_t sub_1000360AC@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x740]) = a2;
  v12 = v5 + v7;
  v13 = a1 + v9;
  v14 = v10 + a5;
  v15 = LODWORD(STACK[0x828]) == 97;
  v16 = STACK[0x6B8];
  LODWORD(STACK[0x5F8]) = STACK[0x708] ^ 0xFFFFFFD4;
  LODWORD(STACK[0x604]) = STACK[0x710] ^ 0x4E;
  LODWORD(STACK[0x5FC]) = v12 + 63;
  LODWORD(STACK[0x608]) = v8 + a3 - 48;
  LODWORD(STACK[0x6F8]) = STACK[0x6F0] ^ v6;
  LODWORD(STACK[0x6F0]) = STACK[0x6E8] ^ 0xFFFFFFC0;
  v17 = STACK[0x700] ^ 0x5E;
  LODWORD(STACK[0x600]) = v13 + 88;
  v18 = v14 - 34;
  LODWORD(STACK[0x708]) = STACK[0x6E0] ^ 0x77;
  LODWORD(STACK[0x6D8]) = STACK[0x6D8] ^ 0xFFFFFF9E;
  LODWORD(STACK[0x6E0]) = a4 + v11 - 68;
  v19 = STACK[0x6D0] ^ 0x1C;
  LODWORD(STACK[0x6C8]) = STACK[0x6C8] ^ 0xFFFFFFBE;
  v20 = STACK[0x6C0] ^ 0xD;
  v21 = *(STACK[0x8B0] + 8 * ((((v15 ^ (v16 - 1)) & 1) * ((6 * (v16 ^ 0x1240)) ^ 0x7CE)) ^ v16));
  LODWORD(STACK[0x700]) = v18;
  LODWORD(STACK[0x6E8]) = v20;
  LODWORD(STACK[0x6D0]) = v19;
  LODWORD(STACK[0x710]) = v17;
  return v21();
}

uint64_t sub_1000361E4(int a1, int a2, int a3, double a4, int8x16_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, int a10)
{
  LODWORD(STACK[0x6C0]) = v20;
  LODWORD(STACK[0x8D0]) = v19 - 164;
  STACK[0x728] = (v19 + 2402);
  v22 = ((((a10 ^ 0x3A) - (((a10 ^ 0x3Au) << (v19 - 13)) & 0xCA) + 52345) << 48) - 0x14000000000000) ^ 0xCC65000000000000;
  v23 = ((((a3 ^ 0xFFFFFFE6) - ((2 * (a3 ^ 0xFFFFFFE6)) & 0xF0) + 173) << 56) - 0x3500000000000000) ^ 0x7800000000000000;
  v24 = (v22 - 0x5E09EE32105C3C6 - ((2 * v22) & 0x743E000000000000)) ^ 0xFA1F611CDEFA3C3ALL | (v23 - 0x15E2BB4C593F588FLL - ((2 * v23) & 0xD400000000000000)) ^ 0xEA1D44B3A6C0A771;
  v25 = ((((v13 - 100) - ((2 * (v13 - 100)) & 0xCCu) + 2355824) << 40) - 0xA0000000000) ^ 0x23F2660000000000;
  v26 = (v24 + 0x2158CBED6F69DDC2 - ((2 * v24) & 0x42B197DADED3BB84)) ^ 0x2158CBED6F69DDC2 | (v25 - 0x4A954234A64781CDLL - ((2 * v25) & 0x6AD57A0000000000)) ^ 0xB56ABDCB59B87E33;
  v27 = ((((v15 ^ 0x4A) - ((2 * v15) & 0x16Au) + 2101567928) << 32) - 0x300000000) ^ 0x7D4361B500000000;
  v28 = (v26 + 0x6820567205788B1BLL - ((2 * v26) & 0xD040ACE40AF11636)) ^ 0x6820567205788B1BLL | (v27 + 0xB411B0C4C9EE353 - ((2 * v27) & 0x1682361800000000)) ^ 0xB411B0C4C9EE353;
  v29 = ((((a1 ^ 0x2Cu) - ((2 * (a1 ^ 0x2Cu)) & 0x19CLL)) << 24) + 0x56917A07CE000000) ^ 0x56917A07CE000000;
  v30 = (v28 - 0x39722F10A4CAB642 - ((2 * v28) & 0x8D1BA1DEB66A937CLL)) ^ 0xC68DD0EF5B3549BELL | (v29 + 0x7A5257D5ACF6F3CBLL - ((2 * v29) & 0x74A4AFAB58000000)) ^ 0x7A5257D5ACF6F3CBLL;
  v31 = ((((a2 + 2) - ((2 * (a2 + 2)) & 0x1F4)) << 16) - 0x39453EF9E9060000) ^ 0xC6BAC10616FA0000;
  v32 = (v30 + 0xD36A1595257B9B4 - ((2 * v30) & 0x1A6D42B2A4AF7368)) ^ 0xD36A1595257B9B4 | (v31 - 0x4B2093D74EF8B330 - ((2 * v31) & 0x69BED851620E0000)) ^ 0xB4DF6C28B1074CD0;
  v33 = v32 - ((2 * v32) & 0x86F509BF777FE620) - 0x3C857B2044400CF0;
  v34 = ((((v17 ^ 0xE6u) - ((2 * (v17 ^ 0xE6u)) & 0xFFFFFFFFFFFFFF8FLL)) << 8) + 0x435F40E9D93BC700) ^ 0x435F40E9D93BC700;
  v35 = v34 - ((2 * v34) & 0x3D1979735BBE3800) + 0x5E8CBCB9ADDF1C35;
  v36 = ((((v14 ^ 0xE6) - ((2 * (v14 ^ 0xFFFFFFE6)) & 0x140) + 3518) << 48) - 0x1E000000000000) ^ 0xDA0000000000000;
  v37 = ((((v18 ^ 0xFFFFFFE6) - ((2 * (v18 ^ 0xFFFFFFE6)) & 0x8C) + 239) << 56) - 0x2900000000000000) ^ 0xC600000000000000;
  v38 = (v36 - 0x16313DFAB9779295 - ((2 * v36) & 0x539C000000000000)) ^ 0xE9CEC20546886D6BLL | (v37 + 0x1C4814C77E974800 - ((2 * v37) & 0x3800000000000000)) ^ 0x1C4814C77E974800;
  v39 = ((((v12 + 66) - ((2 * (v12 + 66)) & 0x14u) + 12481086) << 40) - 0x340000000000) ^ 0xBE720A0000000000;
  v40 = (v39 + 0x276CE89F321B1A5 - ((2 * v39) & 0x4ED9C0000000000)) ^ 0x276CE89F321B1A5 | (v38 + 0x1AEDDDF8AAA4AB38 - ((2 * v38) & 0x35DBBBF155495670)) ^ 0x1AEDDDF8AAA4AB38;
  v41 = ((((LOBYTE(STACK[0x720]) ^ 0xE6) - ((2 * (LODWORD(STACK[0x720]) ^ 0xFFFFFFE6)) & 0xEE) - 1597462089) << 32) - 0x4000000000) ^ 0xA0C8A97700000000;
  v42 = (v40 - 0x1C6A88FD0FDAA92ELL - ((2 * v40) & 0xC72AEE05E04AADA4)) ^ 0xE3957702F02556D2 | (v41 - 0x7F8E79EC0CE23884 - ((2 * v41) & 0xE30C2600000000)) ^ 0x80718613F31DC77CLL;
  v43 = ((((v10 + 3) - ((2 * (v10 + 3)) & 0xALL)) << 24) - 0x54555CA3FB000000) ^ 0xABAAA35C05000000;
  v44 = (v42 + 0x25EB167EA83A1F41 - ((2 * v42) & 0x4BD62CFD50743E82)) ^ 0x25EB167EA83A1F41 | (v43 - 0x5A4C3F3CA04A9DE2 - ((2 * v43) & 0x4B678186BE000000)) ^ 0xA5B3C0C35FB5621ELL;
  v45 = ((((LODWORD(STACK[0x6B0]) ^ 0x36u) - ((2 * LODWORD(STACK[0x6B0])) & 0x110)) << 16) - 0x7918BC96BF780000) ^ 0x86E7436940880000;
  v46 = (v44 - 0x14B243944ECB159 - ((2 * v44) & 0xFD69B78D76269D4ELL)) ^ 0xFEB4DBC6BB134EA7 | (v45 - 0x5FC0633E378BF379 - ((2 * v45) & 0x407F398390E80000)) ^ 0xA03F9CC1C8740C87;
  v47 = ((((LOBYTE(STACK[0x8C8]) - 29) - ((2 * (LODWORD(STACK[0x8C8]) - 29)) & 0xE4)) << 8) - 0x728048CBE08A8E00) ^ 0x8D7FB7341F757200;
  v48.i64[0] = ((v11 ^ 0xE6u) - ((2 * (v11 ^ 0xE6u)) & 0x1F0) + 0x15B6AF8830D3B5F8) ^ (v47 - ((2 * v47) & 0xFA4471532490000) + 0x47D2238A992480D7) ^ 0x50A32DAE18712D0 ^ (v46 - ((2 * v46) & 0xAEDD7DB090E04FFELL) + 0x576EBED8487027FFLL);
  v48.i64[1] = ((v21 ^ 0xBEu) - ((2 * (v21 ^ 0xBEu)) & 0xE0) - 0x29F3047FFF880A90) ^ v35 ^ 0x4BFAC3E616171A55 ^ v33;
  v49 = STACK[0x6A8];
  LODWORD(v46) = *(STACK[0x6A8] + 4 * STACK[0x518]);
  LODWORD(v33) = LODWORD(STACK[0x50C]) + *(STACK[0x6A8] + 4 * STACK[0x510]);
  v50 = v33 - ((2 * v33 + 126290552) & 0xE46FF7C8) + 1979416864;
  LODWORD(STACK[0x888]) = v50;
  LODWORD(STACK[0x828]) = LODWORD(STACK[0x4F0]) + v46 - ((2 * (LODWORD(STACK[0x4F0]) + v46) + 1012714684) & 0xEFE1AF54);
  LODWORD(STACK[0x810]) = ((v50 << 24) ^ 0x7A000000) - ((2 * ((v50 << 24) ^ 0x7A000000)) & 0xC6000000);
  LODWORD(v46) = LODWORD(STACK[0x4D8]) + *(v49 + 4 * STACK[0x4E0]);
  v51 = v46 - 2 * ((v46 + 37619800) & 0x69542BF ^ v46 & 1) + 416500502;
  LODWORD(STACK[0x808]) = (LODWORD(STACK[0x3CC]) ^ (v51 << 16)) - ((2 * (LODWORD(STACK[0x3CC]) ^ (v51 << 16))) & 0x792A0000);
  LODWORD(v46) = LODWORD(STACK[0x4C8]) + *(v49 + 4 * STACK[0x4D0]);
  v52 = v46 - ((2 * v46 + 1213658300) & 0xB567F612) + 2128573799;
  LODWORD(STACK[0x800]) = ((v52 << 8) ^ 0x5D429700) - ((2 * ((v52 << 8) ^ 0x5D429700)) & 0xCCB20000);
  LODWORD(v46) = LODWORD(STACK[0x4B8]) + *(v49 + 4 * STACK[0x4C0]);
  LODWORD(STACK[0x818]) = v46 - 616127143 + ~(2 * ((v46 + 1681918554) & 0x77069AFF ^ v46 & 1));
  LODWORD(v46) = LODWORD(STACK[0x4A8]) + *(v49 + 4 * STACK[0x4B0]);
  v53 = v46 - ((2 * v46 + 1602876596) & 0x505623E4) - 1745875892;
  LODWORD(v46) = LODWORD(STACK[0x498]) + *(v49 + 4 * STACK[0x4A0]);
  v54 = v46 - ((2 * v46 + 56293562) & 0x6B6EC1E8) + 2003098961;
  LODWORD(v46) = *(v49 + 4 * STACK[0x490]) - LODWORD(STACK[0x520]);
  LODWORD(v33) = LODWORD(STACK[0x480]) + *(v49 + 4 * STACK[0x488]);
  LODWORD(v33) = v33 - ((2 * v33 + 84154300) & 0x599C4B1C) + 793784684;
  HIDWORD(v55) = v33 ^ 0x10;
  LODWORD(v55) = v33 ^ 0xC1209C00;
  v56 = v46 - ((2 * v46 + 112375416) & 0x86A2B14) + 2005823686;
  v57 = (v55 >> 8) - ((2 * (v55 >> 8)) & 0xA08BD6C0);
  LODWORD(v46) = LODWORD(STACK[0x470]) + *(v49 + 4 * STACK[0x478]);
  v58 = v46 - 2 * ((v46 + 67236784) & 0x11B5E45B ^ v46 & 2) - 1246242807;
  LODWORD(v46) = LODWORD(STACK[0x460]) + *(v49 + 4 * STACK[0x468]);
  v59 = v46 - ((2 * v46 - 997453406) & 0xFD910822) + 1628343522;
  LODWORD(v46) = LODWORD(STACK[0x450]) + *(v49 + 4 * STACK[0x458]);
  v60 = v46 - ((2 * v46 + 2009730468) & 0x4925FA9A);
  LODWORD(v46) = LODWORD(STACK[0x440]) + *(v49 + 4 * STACK[0x448]);
  LODWORD(v46) = v46 - ((2 * v46 - 932768580) & 0xEB1668D2) + 1505672903;
  HIDWORD(v55) = v46 ^ 0x8DF7;
  LODWORD(v55) = v46 ^ 0x18650000;
  v61 = (v55 >> 16) - ((2 * (v55 >> 16)) & 0xA402DE80);
  LODWORD(v46) = LODWORD(STACK[0x430]) + *(v49 + 4 * STACK[0x438]);
  v62 = v46 - ((2 * v46 + 142210972) & 0x2CFFC2CA) + 2059197747;
  LODWORD(v46) = LODWORD(STACK[0x420]) + *(v49 + 4 * STACK[0x428]);
  v63 = v46 - ((2 * v46 - 2092820298) & 0xCE74BD14);
  LODWORD(v46) = LODWORD(STACK[0x410]) + *(v49 + 4 * STACK[0x418]);
  v64 = (LODWORD(STACK[0x838]) ^ LODWORD(STACK[0x400]) ^ 0x76) - 2 * ((LODWORD(STACK[0x838]) ^ LODWORD(STACK[0x400]) ^ 0x76) & a8 ^ (LODWORD(STACK[0x838]) ^ LODWORD(STACK[0x400])) & 1);
  v65 = v46 - ((2 * v46 + 394921514) & 0x760047C4) + 1187325687;
  v66 = STACK[0x3F0];
  if ((STACK[0x3F8] & ~LODWORD(STACK[0x8A8])) != 0)
  {
    v66 = STACK[0x3E8];
  }

  v67 = (LODWORD(STACK[0x8A8]) ^ 0x38) + v66 - 114 - ((2 * ((LODWORD(STACK[0x8A8]) ^ 0x38) + v66 - 114)) & 0xFFFFFF90);
  v68 = (LODWORD(STACK[0x840]) ^ LODWORD(STACK[0x3E0]) ^ 0x49) - 2 * ((LODWORD(STACK[0x840]) ^ LODWORD(STACK[0x3E0]) ^ 0x49) & 0x4D ^ (LODWORD(STACK[0x840]) ^ LODWORD(STACK[0x3E0])) & 4);
  v69 = (LODWORD(STACK[0x850]) ^ LODWORD(STACK[0x3D8]) ^ 0xFFFFFF90) - 2 * ((LODWORD(STACK[0x850]) ^ LODWORD(STACK[0x3D8]) ^ 0xFFFFFF90) & 0x18 ^ (LODWORD(STACK[0x850]) ^ LODWORD(STACK[0x3D8])) & 8);
  v70 = (LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x848]) ^ v16) - ((2 * (LODWORD(STACK[0x3D4]) ^ LODWORD(STACK[0x848]) ^ v16)) & 0x7C);
  v71 = (LODWORD(STACK[0x890]) ^ LODWORD(STACK[0x3D0]) ^ 0xFFFFFF84) + ~(2 * ((LODWORD(STACK[0x890]) ^ LODWORD(STACK[0x3D0]) ^ 0xFFFFFF84) & 6 ^ (LODWORD(STACK[0x890]) ^ LODWORD(STACK[0x3D0])) & 2));
  v72 = STACK[0x8B0];
  LODWORD(STACK[0x7C0]) = (v63 + 685468389) ^ HIBYTE(v62) ^ (v65 >> 8) ^ (((v62 << 8) ^ 0x9158FB00) - ((2 * ((v62 << 8) ^ 0x9158FB00)) & 0xC0CF5200) - 530077284) ^ (v61 + 1375825728) ^ (((v65 << 24) ^ 0x7C000000) - ((2 * ((v65 << 24) ^ 0x7C000000)) & 0x8000000) - 2077647386) ^ 0xEF87E929;
  LODWORD(STACK[0x818]) ^= (v53 >> 8) ^ HIWORD(v54) ^ HIBYTE(v56) ^ (((v53 << 24) ^ 0x6C000000) - ((2 * ((v53 << 24) ^ 0x6C000000)) & 0xC6000000) - 479310542) ^ (((v54 << 16) ^ 0xD96A0000) - ((2 * ((v54 << 16) ^ 0xD96A0000)) & 0x47180000) - 1551103800) ^ (((v56 << 8) ^ 0xDBAC1400) - ((2 * ((v56 << 8) ^ 0xDBAC1400)) & 0xEAE3F400) + 1970403961) ^ 0xDE9FA497;
  v73 = vandq_s8(v48, xmmword_100424CE0);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(v48, vaddq_s64(v73, v73)), xmmword_100424CE0), xmmword_100424CE0);
  v75 = vandq_s8(v74, a5);
  *&STACK[0x610] = vaddq_s8(vsubq_s8(v74, vaddq_s8(v75, v75)), a5);
  v76 = LODWORD(STACK[0x828]) - 1776337400;
  v77 = LODWORD(STACK[0x810]) + 1661208262;
  v78 = LODWORD(STACK[0x808]) - 1131021817;
  v79 = LODWORD(STACK[0x800]) + 1717108881;
  LODWORD(STACK[0x868]) ^= LODWORD(STACK[0x5B4]) ^ 0x6C;
  LODWORD(STACK[0x838]) = v64 + 118;
  LODWORD(STACK[0x858]) ^= LODWORD(STACK[0x5C8]) ^ 0x1D;
  LODWORD(STACK[0x880]) ^= LODWORD(STACK[0x5C4]) ^ 0xFFFFFF93;
  LODWORD(STACK[0x8C0]) ^= LODWORD(STACK[0x5B0]) ^ 0xFFFFFFC1;
  LODWORD(STACK[0x898]) ^= LODWORD(STACK[0x5BC]) ^ 0xFFFFFF8C;
  LODWORD(STACK[0x8B8]) ^= LODWORD(STACK[0x5C0]) ^ 0xFFFFFF90;
  LODWORD(STACK[0x8A8]) = LODWORD(STACK[0x408]) ^ (v67 - 56);
  LODWORD(STACK[0x840]) = v68 + 73;
  LODWORD(STACK[0x878]) ^= LODWORD(STACK[0x5CC]) ^ 0x26;
  LODWORD(STACK[0x850]) = v69 - 112;
  LODWORD(STACK[0x860]) ^= LODWORD(STACK[0x5A8]) ^ 0x5D;
  LODWORD(STACK[0x848]) = v70 - 66;
  LODWORD(STACK[0x8A0]) ^= LODWORD(STACK[0x5AC]) ^ 0xFFFFFFE9;
  LODWORD(STACK[0x890]) = v71 - 123;
  LODWORD(STACK[0x870]) ^= LODWORD(STACK[0x5B8]) ^ 0xFFFFFFFD;
  LODWORD(STACK[0x778]) = HIBYTE(v59) ^ HIWORD(v58) ^ (v60 - 1602747361) ^ (v57 - 800724128) ^ (((v58 << 16) ^ 0x5DC70000) - ((2 * ((v58 << 16) ^ 0x5DC70000)) & 0x8D6C0000) + 1186358834) ^ (((v59 << 8) ^ 0x263D8F00) - ((2 * ((v59 << 8) ^ 0x263D8F00)) & 0xEEB24200) - 145153734) ^ 0x5945C051;
  LODWORD(STACK[0x790]) = v76 ^ (LODWORD(STACK[0x888]) >> 8) ^ HIWORD(v51) ^ HIBYTE(v52) ^ v77 ^ v78 ^ v79 ^ 0xF3C04AD3;
  v80 = *(v72 + 8 * SLODWORD(STACK[0x8D0]));
  LODWORD(STACK[0x8D0]) = 39;
  LODWORD(STACK[0x888]) = 104;
  LODWORD(STACK[0x760]) = STACK[0x8C8];
  LODWORD(STACK[0x768]) = STACK[0x8F8];
  LODWORD(STACK[0x770]) = STACK[0x930];
  LODWORD(STACK[0x780]) = STACK[0x750];
  LODWORD(STACK[0x788]) = STACK[0x8E0];
  LODWORD(STACK[0x798]) = STACK[0x820];
  LODWORD(STACK[0x7A0]) = STACK[0x900];
  LODWORD(STACK[0x7A8]) = STACK[0x940];
  LODWORD(STACK[0x7B0]) = STACK[0x8D8];
  LODWORD(STACK[0x7B8]) = STACK[0x8F0];
  LODWORD(STACK[0x7D8]) = STACK[0x920];
  LODWORD(STACK[0x7E0]) = STACK[0x8E8];
  LODWORD(STACK[0x7F8]) = STACK[0x758];
  LODWORD(STACK[0x800]) = STACK[0x830];
  LODWORD(STACK[0x808]) = STACK[0x910];
  LODWORD(STACK[0x810]) = STACK[0x740];
  return v80();
}

uint64_t sub_1000373C4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  LODWORD(STACK[0x758]) = 0;
  LODWORD(STACK[0x8D0]) = v7 + 6969;
  STACK[0x728] = a7 ^ LODWORD(STACK[0x698]);
  STACK[0x720] = a1 ^ LODWORD(STACK[0x688]);
  return (*(STACK[0x8B0] + 8 * v7))(22);
}

uint64_t sub_100037470@<X0>(unsigned __int8 a1@<W7>, int a2@<W8>)
{
  v3 = a2 & 0x95E6EDF;
  STACK[0x758] = v3 ^ 0xA48u;
  return (*(v2 + 8 * ((6272 * (a1 == (v3 ^ 0xCA ^ ((v3 + 51) | 0x20)))) ^ v3)))();
}

uint64_t sub_1000374C8()
{
  LODWORD(STACK[0x758]) = 0;
  LODWORD(STACK[0x8D0]) = (v0 + 740486365) & 0xD3DD2E5B;
  STACK[0x728] = LODWORD(STACK[0x860]) ^ v1 ^ 0x16 ^ v2;
  STACK[0x720] = LODWORD(STACK[0x850]) ^ v1 ^ v4 ^ 0x18u;
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1000376B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(STACK[0x8B0] + 8 * (LODWORD(STACK[0x8D0]) - 3857));
  LODWORD(STACK[0x608]) = STACK[0x820];
  LODWORD(STACK[0x720]) = STACK[0x750];
  v6 = STACK[0x8C8];
  LODWORD(STACK[0x700]) = STACK[0x8C8];
  LODWORD(STACK[0x690]) = STACK[0x858];
  v7 = STACK[0x8E8];
  LODWORD(STACK[0x604]) = STACK[0x8E8];
  LODWORD(STACK[0x698]) = STACK[0x860];
  LODWORD(STACK[0x728]) = v7;
  v8 = STACK[0x8E0];
  LODWORD(STACK[0x6F0]) = STACK[0x8E0];
  LODWORD(STACK[0x6C0]) = v6;
  LODWORD(STACK[0x6A0]) = STACK[0x840];
  LODWORD(STACK[0x688]) = STACK[0x850];
  LODWORD(STACK[0x680]) = STACK[0x838];
  v9 = STACK[0x758];
  LODWORD(STACK[0x6E0]) = STACK[0x758];
  v10 = STACK[0x8F0];
  LODWORD(STACK[0x520]) = STACK[0x8F0];
  LODWORD(STACK[0x6E8]) = v10;
  LODWORD(STACK[0x678]) = STACK[0x848];
  LODWORD(STACK[0x518]) = v9;
  LODWORD(STACK[0x600]) = a5;
  LODWORD(STACK[0x6A8]) = v8;
  LODWORD(STACK[0x6D8]) = STACK[0x900];
  LODWORD(STACK[0x510]) = a5;
  LODWORD(STACK[0x670]) = STACK[0x868];
  LODWORD(STACK[0x660]) = STACK[0x880];
  LODWORD(STACK[0x668]) = STACK[0x878];
  LODWORD(STACK[0x658]) = STACK[0x870];
  LODWORD(STACK[0x6D0]) = STACK[0x910];
  LODWORD(STACK[0x5F8]) = STACK[0x920];
  LODWORD(STACK[0x5FC]) = STACK[0x830];
  LODWORD(STACK[0x6C8]) = STACK[0x930];
  LODWORD(STACK[0x6B8]) = STACK[0x940];
  LODWORD(STACK[0x718]) = STACK[0x8F8];
  return v5();
}

uint64_t sub_10003780C@<X0>(char a1@<W1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, unsigned int a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, int a60, char a61, int a62, char a63)
{
  v83 = STACK[0x930] ^ a65;
  v84 = STACK[0x8F8] ^ a73;
  v85 = STACK[0x8E8] ^ a72;
  v86 = ((STACK[0x920] ^ a60) >> 6) | (4 * (STACK[0x920] ^ a60));
  HIDWORD(v87) = v86 ^ 2;
  LODWORD(v87) = (((2 * v86) & 0xEC) - v86 + ((a2 - 1906456737) & 0xF7FBFBEF ^ 0xAAAAAAAA)) << 24;
  v88 = a55 < 0x8435BC5F;
  v89 = ((v76 + 66) ^ (a61 - 58)) - ((2 * ((v76 + 66) ^ (a61 - 58))) & 0xB2) - 39;
  v90 = STACK[0x8E0] ^ LODWORD(STACK[0x200]);
  v91 = ((LODWORD(STACK[0x8C8]) - 29) ^ (a70 - 29)) - ((2 * ((LODWORD(STACK[0x8C8]) - 29) ^ (a70 - 29))) & 0xA4);
  v92 = STACK[0x998];
  *(v92 - 0x51133B5774CD9982) = a68 ^ LODWORD(STACK[0x720]) ^ 0x6A;
  *(v92 - 0x51133B5774CD998DLL) = v85;
  *(v92 - 0x51133B5774CD9989) = v84;
  *(v92 - 0x51133B5774CD9986) = v90;
  *(v92 - 0x51133B5774CD998CLL) = ((v87 >> 26) + (~(2 * (v87 >> 26)) | 0x67) - 51) ^ 0x6E;
  *(v92 - 0x51133B5774CD9984) = a66 ^ v78 ^ 0xF;
  *(v92 - 0x51133B5774CD9987) = v83;
  *(v92 - 0x51133B5774CD998ALL) = a75 ^ v79 ^ 0xEA;
  *(v92 - 0x51133B5774CD9985) = a71 ^ v81 ^ 0x75;
  *(v92 - 0x51133B5774CD9988) = (((a1 + 2) ^ (a63 - 62)) - ((2 * ((a1 + 2) ^ (a63 - 62))) & 0x72) - 71) ^ 0xB9;
  *(v92 - 0x51133B5774CD998BLL) = (((v77 - 100) ^ (a74 - 68)) - ((2 * ((v77 - 100) ^ (a74 - 68))) & 0x4E) + 39) ^ v80;
  *(v92 - 0x51133B5774CD9980) = a69 ^ LODWORD(STACK[0x6B0]) ^ 0xCB;
  *(v92 - 0x51133B5774CD997FLL) = (v91 - 46) ^ 0xD2;
  *(v92 - 0x51133B5774CD9981) = (((v75 + 3) ^ (a59 - 69)) - ((2 * ((v75 + 3) ^ (a59 - 69))) & 0x22) - 111) ^ 0x91;
  *(v92 - 0x51133B5774CD997ELL) = STACK[0x8F0] ^ a67;
  *(v92 - 0x51133B5774CD9983) = v89 ^ 0xD9;
  STACK[0x990] += 16;
  v93 = LODWORD(STACK[0x5D0]) + 289702167;
  v94 = v88 ^ (v93 < 0x8435BC5F);
  STACK[0x998] = v92 + 16;
  v95 = v93 < a55;
  if (!v94)
  {
    v88 = v95;
  }

  return (*(v82 + 8 * ((a2 + 3052) | (28 * v88))))();
}

uint64_t sub_100039548()
{
  v4 = *(v3 + 8 * v2);
  LODWORD(STACK[0x328]) = v0;
  LODWORD(STACK[0x320]) = v1;
  return v4();
}

uint64_t sub_1000396A4(uint64_t a1, double a2, int8x16_t a3, double a4, double a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = veorq_s8(v30, a3);
  v41 = vandq_s8(v40, v27);
  v42 = vaddq_s64(vsubq_s64(v40, vaddq_s64(v41, v41)), v27).i64[1];
  v43 = veorq_s8(a8, a3);
  v44 = vandq_s8(v43, v28);
  v45 = vaddq_s64(vsubq_s64(v43, vaddq_s64(v44, v44)), v28);
  v42 ^= 0xFE35077A26DF255CLL;
  v46 = (v45.i64[1] ^ v20) + v23 - 2 * ((v45.i64[1] ^ v20) & a13 ^ v45.i8[8] & 8);
  v47 = veorq_s8(v45, v28);
  v48 = vextq_s8(v47, v47, 8uLL);
  v49 = vandq_s8(v48, v29);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(v48, vaddq_s64(v49, v49)), v29), v29);
  v51 = vandq_s8(v50, a6);
  v52 = (v42 + v19 - ((2 * v42) & a1)) ^ v19;
  v53 = veorq_s8(veorq_s8(a8, v32), vaddq_s8(vsubq_s8(v50, vaddq_s8(v51, v51)), a6));
  v54 = vextq_s8(v53, v53, 4uLL);
  v55 = veorq_s8(v54, v31);
  v56 = vandq_s8(v54, v31);
  v57 = vaddq_s8(vaddq_s8(v55, v38), vaddq_s8(v56, v56));
  v58 = vextq_s8(v57, v57, 0xCuLL);
  v59 = vandq_s8(v58, v33);
  v58.i64[0] = vaddq_s8(vsubq_s8(v58, vaddq_s8(v59, v59)), v33).u64[0];
  v60 = ((v58.i64[0] ^ 0x7B77B7B7F9251CA1) + a11 - ((2 * (v58.i64[0] ^ 0x7B77B7B7F9251CA1)) & 0x6E00AC5CC0368626)) ^ a11;
  v61 = ((v30.i64[0] ^ 0x614672D0193D5254) - ((2 * (v30.i64[0] ^ 0x614672D0193D5254)) & 0x2974F6DEA7B61710) + 0x14BA7B6F53DB0B88) ^ 0x688A2D6CCBD9C19DLL ^ (v42 - ((2 * v42) & 0xF860AC073005942ALL) + 0x7C3056039802CA15);
  v62 = vmull_p64(v52, v46 ^ v23);
  v63 = vandq_s8(v62, a9);
  v64 = vaddq_s8(vsubq_s8(v62, vaddq_s8(v63, v63)), a9);
  __asm { AESE            V6.16B, V27.16B }

  v70 = vmull_p64((v60 + a14 - ((2 * v60) & 0xAA5E134C3D24E63CLL)) ^ a14, (v61 + v18 - ((2 * v61) & 0x5A9AD31715084F90)) ^ v18);
  v71 = vandq_s8(v70, v35);
  v72 = ((v64.i64[1] ^ 0xCCE6F15D275224F4) + v22 - ((2 * (v64.i64[1] ^ 0xCCE6F15D275224F4)) & 0xC39D93510DC4F2D8)) ^ v22;
  v73 = vmull_p64((v72 + a16 - ((2 * v72) & 0x4F2AF5489AB5C502)) ^ a16, v21);
  v74 = vandq_s8(v73, v36);
  __asm { AESD            V6.16B, V27.16B }

  v76 = veorq_s8(veorq_s8(veorq_s8(veorq_s8(v64, _Q6), vaddq_s8(vsubq_s8(v73, vaddq_s8(v74, v74)), v36)), *&STACK[0x950]), vaddq_s8(vsubq_s8(v70, vaddq_s8(v71, v71)), v35));
  v77 = vandq_s8(v76, v39);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(v76, vaddq_s64(v77, v77)), v39), v39);
  v79 = vextq_s8(v78, v78, 8uLL);
  v80 = vandq_s8(v79, v25);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(v79, vaddq_s64(v80, v80)), v25), v25);
  v82 = vandq_s8(v81, v26);
  _Q5 = veorq_s8(veorq_s8(v64, v34), vaddq_s8(vsubq_s8(v81, vaddq_s8(v82, v82)), v26));
  __asm
  {
    AESIMC          V5.16B, V5.16B
    AESIMC          V5.16B, V5.16B
    AESIMC          V5.16B, V5.16B
    AESIMC          V5.16B, V5.16B
  }

  return (*(v24 + 8 * ((24363 * (v16 & 1)) ^ v17)))();
}

uint64_t sub_100039AC4()
{
  v2 = *(v1 + 8 * (((LODWORD(STACK[0x73C]) != (v0 - 25)) * (v0 ^ 0x2978)) ^ v0));
  LODWORD(STACK[0x73C]) = 84;
  LODWORD(STACK[0x748]) = 59;
  return v2();
}

uint64_t sub_100039B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(v6 + 8 * ((56 * (LODWORD(STACK[0x264]) == (v5 - 96))) ^ (v5 - 5667)));
  LODWORD(STACK[0x810]) = 112;
  LODWORD(STACK[0x808]) = 26;
  LODWORD(STACK[0x800]) = 170;
  LODWORD(STACK[0x7F8]) = 91;
  LODWORD(STACK[0x7E0]) = 34;
  LODWORD(STACK[0x7D8]) = 217;
  LODWORD(STACK[0x818]) = 91963264;
  LODWORD(STACK[0x7B8]) = 55;
  LODWORD(STACK[0x7B0]) = 17;
  LODWORD(STACK[0x7A8]) = 92;
  LODWORD(STACK[0x7A0]) = 253;
  LODWORD(STACK[0x798]) = 66;
  LODWORD(STACK[0x7C0]) = -1272642759;
  LODWORD(STACK[0x788]) = 58;
  LODWORD(STACK[0x73C]) = 84;
  LODWORD(STACK[0x790]) = -1307246036;
  LODWORD(STACK[0x264]) = 13;
  LODWORD(STACK[0x780]) = 218;
  LODWORD(STACK[0x748]) = 59;
  LODWORD(STACK[0x778]) = -1257147645;
  LODWORD(STACK[0x770]) = 187;
  LODWORD(STACK[0x768]) = 99;
  LODWORD(STACK[0x760]) = 73;
  return v7(a1, a2, a3, a4, a5, LODWORD(STACK[0x340]), LODWORD(STACK[0x6B0]), LODWORD(STACK[0x350]), 0);
}

uint64_t sub_100039C38@<X0>(int a1@<W8>)
{
  v3 = STACK[0x998];
  *(v3 - 0x51133B5774CD998BLL) = ((2 * BYTE13(v2)) ^ 0x82) + ((a1 + 116) ^ BYTE13(v2)) - 127;
  *(v3 - 0x51133B5774CD998CLL) = BYTE14(v2) ^ 0x34;
  *(v3 - 0x51133B5774CD998DLL) = HIBYTE(v2) ^ 0x2E;
  *(v3 - 0x51133B5774CD9989) = BYTE11(v2) ^ 0x45;
  *(v3 - 0x51133B5774CD998ALL) = ((BYTE12(v2) ^ 0x58) + (~(2 * (BYTE12(v2) ^ 0x58)) | 0x6B) - 53) ^ 0xCA;
  *(v3 - 0x51133B5774CD9988) = ((BYTE10(v2) ^ 0xAA) - 2 * ((BYTE10(v2) ^ 0xAA) & 0x2B ^ BYTE10(v2) & 1) - 86) ^ 0xAA;
  *(v3 - 0x51133B5774CD9986) = (BYTE8(v2) ^ 0x4E) + ((2 * BYTE8(v2)) ^ 0x62) - 127;
  *(v3 - 0x51133B5774CD9987) = ((BYTE9(v2) ^ 0xED) - 2 * ((BYTE9(v2) ^ 0xED) & 0x56 ^ BYTE9(v2) & 2) - 44) ^ 0xD4;
  *(v3 - 0x51133B5774CD9985) = BYTE7(v2) ^ 0xA0;
  *(v3 - 0x51133B5774CD9984) = ((BYTE6(v2) ^ 0x7C) - 2 * ((BYTE6(v2) ^ 0x7C) & 0x1B ^ BYTE6(v2) & 1) + 26) ^ 0x1A;
  *(v3 - 0x51133B5774CD9983) = ((BYTE5(v2) ^ 0x2F) - ((2 * (BYTE5(v2) ^ 0x2F)) & 0xB8) + 92) ^ 0x5C;
  *(v3 - 0x51133B5774CD9980) = ((BYTE2(v2) ^ 0x22) - ((2 * BYTE2(v2)) & 0x2A) - 107) ^ 0x95;
  *(v3 - 0x51133B5774CD9982) = (BYTE4(v2) ^ 0xCF) + ((2 * BYTE4(v2)) & 0xFC ^ 0x60) + 2;
  *(v3 - 0x51133B5774CD997ELL) = v2 ^ 0x27;
  *(v3 - 0x51133B5774CD997FLL) = ((BYTE1(v2) ^ 0x39) - ((2 * (BYTE1(v2) ^ 0x39)) & 0x68) + 52) ^ 0x34;
  *(v3 - 0x51133B5774CD9981) = (BYTE3(v2) - ((2 * BYTE3(v2)) & 0x62) + 49) ^ 0xB1;
  v4 = *(v1 + 8 * a1);
  LODWORD(STACK[0x73C]) = 84;
  LODWORD(STACK[0x264]) = 13;
  LODWORD(STACK[0x748]) = 59;
  LODWORD(STACK[0x760]) = STACK[0x400];
  LODWORD(STACK[0x768]) = STACK[0x3F8];
  LODWORD(STACK[0x770]) = STACK[0x3F0];
  LODWORD(STACK[0x778]) = STACK[0x3E8];
  LODWORD(STACK[0x780]) = STACK[0x3E0];
  LODWORD(STACK[0x790]) = STACK[0x3D8];
  LODWORD(STACK[0x788]) = STACK[0x3D4];
  LODWORD(STACK[0x7C0]) = STACK[0x3D0];
  LODWORD(STACK[0x798]) = STACK[0x358];
  LODWORD(STACK[0x7A0]) = STACK[0x30C];
  LODWORD(STACK[0x7A8]) = STACK[0x308];
  LODWORD(STACK[0x7B0]) = STACK[0x304];
  LODWORD(STACK[0x7B8]) = STACK[0x300];
  LODWORD(STACK[0x818]) = STACK[0x2FC];
  LODWORD(STACK[0x7D8]) = STACK[0x2F8];
  LODWORD(STACK[0x7E0]) = STACK[0x2F0];
  LODWORD(STACK[0x7F8]) = STACK[0x2EC];
  LODWORD(STACK[0x800]) = STACK[0x2E8];
  LODWORD(STACK[0x808]) = STACK[0x2E4];
  LODWORD(STACK[0x810]) = STACK[0x2E0];
  return v4();
}

uint64_t sub_100039FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v13 = 2 * (v10 - 0x686929048CA517E6);
  v14 = v10 - 0x686929048CA517E6 - (v13 & 0x11C3ED8DADC3A6AALL) + 0x8E1F6C6D6E1D37DLL;
  v15 = v10 - 0x71653C16C2E90AE6 - (v13 & 0xEE07D9DB93781B28) + 148;
  v16 = (((v14 << ((v8 - 37) & 0xFE ^ 0xADu)) ^ 0x28) - ((16 * v14) & 0x20) + 55) & 0x38;
  v17 = v16 ^ 0x30;
  *(&v18 + 1) = v15 & 0xF8 ^ 0x90;
  *&v18 = v15 ^ 0xF703ECEDC9BC0D00;
  v19 = ((2 * (v18 >> 8)) & 0xD0DFBFFE7DF787DCLL) + ((v18 >> 8) ^ 0x6D6FDFFF3EFBC3EELL);
  v20 = v19 - ((2 * v19 + 0xA81A3435884A332) & 0xE5E963CB486E929ELL) - 0x7CA7C78AF866518;
  *(&v18 + 1) = v20 ^ 0x64;
  *&v18 = v20 ^ 0xA6B3879038492400;
  v21 = (v20 ^ 0x33360A9761B9885FLL) + ((v18 >> 8) ^ 0xFFD7ECDFDAEFFDFELL) + ((2 * (v18 >> 8)) & 0xFFAFD9BFB5DFFBFCLL) + 0xCDA9EC0A934F2B5 + (~(2 * ((v20 ^ 0x33360A9761B9885FLL) + ((v18 >> 8) ^ 0xFFD7ECDFDAEFFDFELL) + ((2 * (v18 >> 8)) & 0xFFAFD9BFB5DFFBFCLL) + 0x28132025100202)) | 0xE69AE8BEF7B61E9BLL);
  *(&v18 + 1) = v20 ^ 0x13360A9761B9885FLL;
  *&v18 = v20 ^ 0x2000000000000000;
  v22 = v21 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0xF9BDAA226319760ALL) + 0x7CDED511318CBB05);
  *(&v18 + 1) = v21 ^ 0x6B;
  *&v18 = v21 ^ 0x7DC114971FDD7F00;
  v23 = (v22 ^ 0x11FC1862E51C46ELL) + ((v18 >> 8) ^ 0x9D4EFDF717FFFD6FLL) + ((2 * (v18 >> 8)) & 0x3A9DFBEE2FFFFADELL) + 0x62B10208E8000291;
  v24 = v23 - ((2 * v23) & 0x440CF6043110569ALL) - 0x5DF984FDE777D4B3;
  *(&v18 + 1) = v22 ^ 0x11FC1862E51C46ELL;
  *&v18 = v22;
  v25 = v24 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x33641EB8C35E9A76) - 0x664DF0A39E50B2C5);
  *(&v18 + 1) = v24 ^ 0x38;
  *&v18 = v24 ^ 0xDCDC6BDAF035CF00;
  v26 = (v25 ^ 0x456E6486919A8203) + ((v18 >> 8) ^ 0xAD5FAFDFFFB7FEFFLL) + ((2 * (v18 >> 8)) & 0x5ABF5FBFFF6FFDFELL) + 0x52A0502000480101;
  *(&v18 + 1) = v25 ^ 0x56E6486919A8203;
  *&v18 = v25 ^ 0x4000000000000000;
  v27 = v26 - ((2 * v26) & 0xFA62F919EC3AFEB6) - 0x2CE837309E280A5;
  v28 = v27 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x1E0BAF8C11082B0ELL) - 0x70FA2839F77BEA79);
  v29 = (((v28 ^ 0xB92B7A4FF7831F7ALL) + ((v27 >> 8) ^ 0x362EAD89FF070ALL)) ^ 0x59F33AE7BFF7F3FFLL) + ((2 * ((v28 ^ 0xB92B7A4FF7831F7ALL) + ((v27 >> 8) ^ 0x362EAD89FF070ALL))) & 0xB3E675CF7FEFE7FELL) + ((((v27 << 56) ^ 0xFD00000000000000) - 0xC6D06CCF78243C0 - ((2 * ((v27 << 56) ^ 0xFD00000000000000)) & 0xE7FFFFFFFFFFFFFFLL)) ^ 0xF392F933087DBC40) - 0x59F33AE7BFF7F3FFLL;
  v30 = v29 - ((2 * v29) & 0x58688E173405B0C8) + 0x2C34470B9A02D864;
  *(&v18 + 1) = v28 ^ 0x192B7A4FF7831F7ALL;
  *&v18 = v28 ^ 0xBFFFFFFFFFFFFFFFLL;
  v31 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0x93B4703047A24918) + 0x49DA381823D1248CLL;
  *(&v18 + 1) = v30 ^ 0xAD;
  *&v18 = v30 ^ 0xAC976F7F19B61F00;
  v32 = (v30 ^ v31 ^ 0xE54D57673A673B21) + ((v18 >> 8) ^ 0xFF26BDBEF8F56CFELL) + ((2 * (v18 >> 8)) & 0xFE4D7B7DF1EAD9FCLL) + 0xD94241070A9302;
  v33 = v32 - ((2 * v32) & 0x7034323F5D1B381ELL) + 0x381A191FAE8D9C0FLL;
  *(&v18 + 1) = v30 ^ v31 ^ 0x54D57673A673B21;
  *&v18 = v30 ^ ~v31;
  v34 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0xA7630B3C8E24CDD2) - 0x2C4E7A61B8ED9917;
  *(&v18 + 1) = v33 ^ 0x74;
  *&v18 = v33 ^ 0xBD78DCAF53AB8D00;
  v35 = v33 ^ v34;
  v36 = (v35 ^ 0x6EC9593114B9EB9DLL) + ((v18 >> 8) ^ 0xDAEB87F5B769FBF7) + ((2 * (v18 >> 8)) & 0xB5D70FEB6ED3F7EELL) + 0x2514780A48960409;
  v37 = v36 - ((2 * v36) & 0x19AB83F284B490B2) - 0x732A3E06BDA5B7A7;
  *(&v18 + 1) = v35 ^ 0xEC9593114B9EB9DLL;
  *&v18 = v35 ^ 0x6000000000000000;
  v38 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0xD2EF30891CE420D4) - 0x168867BB718DEF96;
  *(&v18 + 1) = v37 ^ 0x2A;
  *&v18 = v37 ^ 0x1B20AD49B96C5200;
  v39 = (v38 ^ 0xF257350D371E4240 ^ v37) + ((v18 >> 8) ^ 0x6EFB477DD730F6F2) + ((2 * (v18 >> 8)) & 0xDDF68EFBAE61EDE4) - 0x6EFB477DD730F6F2;
  v40 = ((v39 - ((2 * v39) & 0x4DEACD0195AE8A6CLL) - 0x590A997F3528BACALL) ^ 0x5EEC4CF5212FB7A8uLL) >> (v16 ^ 0x30u);
  v41 = v40 + 0x26F5D22358BCD4FELL - ((2 * v40) & 0x4DEBA446B179A9FCLL);
  *(&v18 + 1) = (((v10 - 1050325214 - ((2 * (v10 + 1935337506)) & 0x9C14CFC2) + 273) & 0xFFFFFFF8) - 48) ^ 0xE0;
  *&v18 = (((v10 - 0x72791B8F3E9AB0DELL - ((2 * (v10 - 0x686929048CA517DELL)) & 0xEBE01AEA9C14CFC2) + 273) & 0xFFFFFFFFFFFFFFF8) - 48) ^ 0xF5F00D754E0A6700;
  v42 = ((2 * (v18 >> 8)) & 0xF1FFFDCFEFAFFFF8) + ((v18 >> 8) ^ 0x7FFFFEE7F7D7FFFCLL);
  v43 = v42 - ((2 * v42 - 0x1A9E9A8E1933D4EALL) & 0xAD14946336FE14AALL) - 0x36C50315711AE020;
  *(&v18 + 1) = v43 ^ 0x7E;
  *&v18 = v43 ^ 0x82CD7C4407016700;
  v44 = (v43 ^ 0x1748F1435EF1CB45) + ((v18 >> 8) ^ 0xFBBE2FEDCDFEBB47) + ((2 * (v18 >> 8)) & 0xF77C5FDB9BFD768ELL) + 0x441D012320144B9;
  v45 = v44 - ((2 * v44) & 0xA4144507B6BEFE6) - 0x7ADF5DD7C24A080DLL;
  *(&v18 + 1) = v43 ^ 0x1748F1435EF1CB45;
  *&v18 = v43;
  v46 = v45 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0xF7A4582C030F05BALL) + 0x7BD22C16018782DDLL);
  *(&v18 + 1) = v46 ^ 0xF811109A7CBFAF7;
  *&v18 = v46 ^ 0x8000000000000000;
  v47 = ((((v45 >> 8) ^ 0xF4533D1FA64C78) + (v46 ^ 0x8F811109A7CBFAF7)) ^ 0xBBB17DBE3BFE5DB1) + ((2 * (((v45 >> 8) ^ 0xF4533D1FA64C78) + (v46 ^ 0x8F811109A7CBFAF7))) & 0x7762FB7C77FCBB62) + ((((v45 << 56) ^ 0x2A00000000000000) + 0x3444C40BCC6807DLL - ((2 * ((v45 << 56) ^ 0x2A00000000000000)) & 0x600000000000000)) ^ 0x3444C40BCC6807DLL) + 0x444E8241C401A24FLL;
  v48 = v47 - ((2 * v47) & 0x3078D7296841F2A2) + 0x183C6B94B420F951;
  v49 = v48 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x8DCCE76F3663E8B4) + 0x46E673B79B31F45ALL);
  *(&v18 + 1) = v48 ^ 0x24;
  *&v18 = v48 ^ 0x66E67B4C5C9D1D00;
  v50 = (v49 ^ 0x200008FBC7ACE97ELL) + ((v18 >> 8) ^ 0x3EFFADDE35B7EE76) + ((2 * (v18 >> 8)) & 0x7DFF5BBC6B6FDCECLL) - 0x3EFFADDE35B7EE76;
  *(&v18 + 1) = v49 ^ 0x8FBC7ACE97ELL;
  *&v18 = v49 ^ 0x2000000000000000;
  v51 = v50 - ((2 * v50) & 0xF3E3596C9842C0DELL) + 0x79F1ACB64C21606FLL;
  v52 = v51 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x4DD2FA178FCEB1C8) - 0x591682F43818A71CLL);
  *(&v18 + 1) = v51 ^ 0xC9;
  *&v18 = v51 ^ 0xB2EE7DB3453B1500;
  v53 = (v52 ^ 0x140700B882DC4D2DLL) + ((v18 >> 8) ^ 0x5EBF52B7967BEEFFLL) + ((2 * (v18 >> 8)) & 0xBD7EA56F2CF7DDFELL) - 0x5EBF52B7967BEEFFLL;
  v54 = v53 - ((2 * v53) & 0x6B1D412A4D7D98DCLL) + 0x358EA09526BECC6ELL;
  *(&v18 + 1) = v52 ^ 0x140700B882DC4D2DLL;
  *&v18 = v52;
  v55 = v54 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x107515573E6731B4) + 0x83A8AAB9F3398DALL);
  *(&v18 + 1) = v54 ^ 0xA7;
  *&v18 = v54 ^ 0xB52D88E1A50A0B00;
  v56 = (v55 ^ 0xBD17024A3A39937DLL) + ((v18 >> 8) ^ 0xBF4DABA5EFBF4DBFLL) + ((2 * (v18 >> 8)) & 0x7E9B574BDF7E9B7ELL) + 0x40B2545A1040B241;
  v57 = v56 - ((2 * v56) & 0x7F0D0A31BE821174) + 0x3F868518DF4108BALL;
  *(&v18 + 1) = v55 ^ 0x1D17024A3A39937DLL;
  *&v18 = v55 ^ 0xBFFFFFFFFFFFFFFFLL;
  v58 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0xD68ACC444C75BA60) + 0x6B456622263ADD30;
  *(&v18 + 1) = v57 ^ 0xFFFFFFC1;
  *&v18 = v57 ^ 0xBAE440A822671900;
  v59 = v57 ^ v58;
  v60 = (v59 ^ 0xD1A1268A045DC4F1) + ((v18 >> 8) ^ 0xFDB9B7F5B9DA6FF8) + ((2 * (v18 >> 8)) & 0xFB736FEB73B4DFF0) + 0x246480A46259008;
  v61 = v60 - ((2 * v60) & 0x35AD8D6708795F98) - 0x6529394C7BC35034;
  *(&v18 + 1) = v59 ^ 0x11A1268A045DC4F1;
  *&v18 = v59 ^ 0xC000000000000000;
  v62 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0xFF108A15E6D715E6) + 0x7F88450AF36B8AF3;
  *(&v18 + 1) = v61 ^ 0xFFFFFFBF;
  *&v18 = v61 ^ 0xD23AA037F0AB500;
  v63 = (v62 ^ 0x72ABEF098C613F4CLL ^ v61) + ((v18 >> 8) ^ 0xEFBE6F9AF3DD7EF7) + ((2 * (v18 >> 8)) & 0xDF7CDF35E7BAFDEELL) + 0x104190650C228109;
  v16 ^= 0xEu;
  v64 = (v63 - ((2 * v63) & 0x9245D169B35FC792) + 0x4922E8B4D9AFE3C9) ^ 0xB13BC2C132571157;
  v65 = (v64 >> v17) + 0x38251641516D583DLL - ((2 * (v64 >> v17)) & 0x704A2C82A2DAB07ALL);
  v66 = (4 * ((v64 << v16) - ((2 * (v64 << v16)) & 0x38C6F7CA3C4D2B00)) + 0x718DEF94789A560CLL) ^ 0x718DEF94789A560CLL;
  v67 = ((v66 + 0xB69E3559E526851 - ((2 * v66) & 0x16D3C6AB3CA4D0A0)) ^ 0xB69E3559E526851) + (v41 ^ 0x26F5D22358BCD4FELL);
  *(&v18 + 1) = (((v10 + 1250820906 - ((2 * (v10 + 1935337514)) & 0xAE66369E) + 103) & 0xFFFFFFF8) - 24) ^ 0x48;
  *&v18 = (((v10 + 0x73E77D104A8E032ALL - ((2 * (v10 - 0x686929048CA517D6)) & 0xB8A14C29AE66369ELL) + 103) & 0xFFFFFFFFFFFFFFF8) - 24) ^ 0xDC50A614D7331B00;
  v68 = ((2 * (v18 >> 8)) & 0x40EFEFEF4BFCF5E4) + ((v18 >> 8) ^ 0x2577F7F7A5FE7AF2);
  v69 = v68 - ((2 * v68 + 0x1A7173528A7F352ALL) & 0x5F154E32169D1AECLL) - 0x33C9F3DAF71D7F5;
  *(&v18 + 1) = v69 ^ 0x5D;
  *&v18 = v69 ^ 0xFBCD916C9730E000;
  v70 = v67 - ((2 * v67) & 0x2D008619121121FCLL) + 0x1680430C890890FELL;
  v71 = (v69 ^ 0x6E481C6BCEC04C66) + ((v18 >> 8) ^ 0xD755EBB3BBB77655) + ((2 * (v18 >> 8)) & 0xAEABD767776EECAALL) + 0x28AA144C444889ABLL;
  v72 = v71 - ((2 * v71) & 0xE2EBCDD95D422BCALL) - 0xE8A1913515EEA1BLL;
  *(&v18 + 1) = v69 ^ 0xE481C6BCEC04C66;
  *&v18 = v69 ^ 0x6000000000000000;
  v73 = v72 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x7F7B56CC686B8AF4) - 0x40425499CBCA3A86);
  *(&v18 + 1) = v72 ^ 0x3C;
  *&v18 = v72 ^ 0x800679DB35589A00;
  v74 = (v73 ^ 0x3FBBD2BD016D5F46) + ((v18 >> 8) ^ 0x7BEEFEF4BD73DFFBLL) + ((2 * (v18 >> 8)) & 0xF7DDFDE97AE7BFF6) - 0x7BEEFEF4BD73DFFBLL;
  v75 = v74 - ((2 * v74) & 0xD60C02BD4B4044F6) + 0x6B06015EA5A0227BLL;
  *(&v18 + 1) = v73 ^ 0x1FBBD2BD016D5F46;
  *&v18 = v73 ^ 0x2000000000000000;
  v76 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0xEF996DDF732178EALL) - 0x8334910466F438BLL;
  *(&v18 + 1) = v75 ^ 0xE;
  *&v18 = v75 ^ 0x15DC11864D1DC600;
  v77 = (v75 ^ v76 ^ 0xE210A769F48D7A7BLL) + ((v18 >> 8) ^ 0xBC37EBCEFEDCA79DLL) + ((2 * (v18 >> 8)) & 0x786FD79DFDB94F3ALL) + 0x43C8143101235863;
  v78 = v77 - ((2 * v77) & 0x5A44ED39ACFF3266) + 0x2D22769CD67F9933;
  *(&v18 + 1) = v75 ^ v76 ^ 0x210A769F48D7A7BLL;
  *&v18 = v75 ^ ~v76;
  v79 = v78 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x86BE013C211034DCLL) - 0x3CA0FF61EF77E592);
  *(&v18 + 1) = v78 ^ 0x95;
  *&v18 = v78 ^ 0xE63DA799DF65EC00;
  v80 = (v79 ^ 0x2562A707CFEDF6FBLL) + ((v18 >> 8) ^ 0x7BFDFEFFDFDBAFBBLL) + ((2 * (v18 >> 8)) & 0xF7FBFDFFBFB75F76) - 0x7BFDFEFFDFDBAFBBLL;
  v81 = v80 - ((2 * v80) & 0x8D0D070AC8DABAA2) - 0x39797C7A9B92A2AFLL;
  *(&v18 + 1) = v79 ^ 0x562A707CFEDF6FBLL;
  *&v18 = v79 ^ 0x2000000000000000;
  v82 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0x99C7CEBF27F770FALL) - 0x331C18A06C044783;
  *(&v18 + 1) = v81 ^ 0x98;
  *&v18 = v81 ^ 0x4625ABF1E7D99A00;
  v83 = v81 ^ v82;
  v84 = (v83 ^ 0x8AC64CAE742222E5) + ((v18 >> 8) ^ 0x65EF7BFD77F5AEFELL) + ((2 * (v18 >> 8)) & 0xCBDEF7FAEFEB5DFCLL) - 0x65EF7BFD77F5AEFELL;
  v85 = v84 - ((2 * v84) & 0x874C0470BC61180) + 0x43A602385E308C0;
  *(&v18 + 1) = v83 ^ 0xAC64CAE742222E5;
  *&v18 = v83 ^ 0x8000000000000000;
  v86 = v85 ^ ((v18 >> 61) - ((2 * (v18 >> 61)) & 0x785C52F141DF23CCLL) + 0x3C2E2978A0EF91E6);
  *(&v18 + 1) = v85 ^ 0xBBBBBBBB;
  *&v18 = v85 ^ 0x8158A59378C51900;
  v87 = (v86 ^ 0xBD768CEBD82A885DLL) + ((v18 >> 8) ^ 0x7FF3FDEF3E77EBF3) + ((2 * (v18 >> 8)) & 0xFFE7FBDE7CEFD7E6) - 0x7FF3FDEF3E77EBF3;
  v88 = v87 - ((2 * v87) & 0xCB437144AEBCAE4ALL) - 0x1A5E475DA8A1A8DBLL;
  *(&v18 + 1) = v86 ^ 0x1D768CEBD82A885DLL;
  *&v18 = v86 ^ 0xBFFFFFFFFFFFFFFFLL;
  v89 = (v18 >> 61) - ((2 * (v18 >> 61)) & 0x51B4FFFCF382ED86) + 0x28DA7FFE79C176C3;
  *(&v18 + 1) = v88 ^ 0x56;
  *&v18 = v88 ^ 0x7254D412AC684D00;
  v90 = HIWORD(v70) ^ 0xFFFFFFBC;
  v91 = (v89 ^ 0xDA8EABECD5A93B95 ^ v88) + ((v18 >> 8) ^ 0xF6BFFFBDD3EEDCDBLL) + ((2 * (v18 >> 8)) & 0xED7FFF7BA7DDB9B6) + 0x94000422C112325;
  v92 = ((v91 - ((2 * v91) & 0x118EB86CD81F1256) - 0x7738A3C993F076D5) ^ 0xB0DE764387F77BB5) << v16;
  v93 = (4 * (v92 - ((2 * v92) & 0xAF1BDB3E0748C00)) - 0x6A1C84983F16E744) ^ 0x95E37B67C0E918BCLL;
  v94 = ((v93 + 0x5B1C5B4DE7B00FA9 - ((2 * v93) & 0xB638B69BCF601F50)) ^ 0x5B1C5B4DE7B00FA9) + (v65 ^ 0x38251641516D583DLL);
  v95 = v94 - ((2 * v94) & 0x1227156C03737F48) - 0x76EC7549FE46405CLL;
  v96 = (v70 >> 8) ^ 0xFFFFFF97;
  LODWORD(STACK[0x858]) = v41 ^ 0xFFFFFFDF;
  v97 = (v70 >> 24) ^ 0xFFFFFFB1;
  LODWORD(STACK[0x880]) = v65 ^ 8;
  LODWORD(STACK[0x878]) = HIBYTE(v70) ^ 0xFFFFFFC2;
  LODWORD(STACK[0x868]) = HIDWORD(v70) ^ 0xFFFFFFF5;
  LODWORD(STACK[0x838]) = (v70 >> 16) ^ 0x7E;
  LODWORD(STACK[0x848]) = (v95 >> 16) ^ 7;
  LODWORD(STACK[0x850]) = HIWORD(v95) ^ 0xFFFFFF83;
  LODWORD(STACK[0x870]) = (v95 >> 40) ^ 0xFFFFFFE5;
  LODWORD(STACK[0x860]) = HIBYTE(v95) ^ 0x67;
  LODWORD(STACK[0x840]) = (v70 >> 40) ^ 0xA;
  v98 = *(v12 + 8 * ((117 * (v9 ^ 1)) ^ (v8 + 9415)));
  LODWORD(STACK[0x340]) = a6;
  LODWORD(STACK[0x338]) = v11;
  LODWORD(STACK[0x350]) = a8;
  LODWORD(STACK[0x2D4]) = v96;
  LODWORD(STACK[0x2D0]) = v97;
  LODWORD(STACK[0x2CC]) = v90;
  LODWORD(STACK[0x2C8]) = (v95 >> 8) ^ 0x40;
  LODWORD(STACK[0x2C4]) = HIDWORD(v95) ^ 0x32;
  LODWORD(STACK[0x2C0]) = (v95 >> 24) ^ 0xFFFFFF85;
  return v98();
}

uint64_t sub_10003B844@<X0>(unsigned __int8 *a1@<X8>)
{
  v6 = (*(v4 - 0x686929048CA517E1) ^ 0xFFFFFFFE) + 4 * (*(v4 - 0x686929048CA517E1) >> 1);
  v7 = (*(v4 - 0x686929048CA517D8) ^ 0x7F) + 2 * *(v4 - 0x686929048CA517D8);
  v8 = *(v4 - 0x686929048CA517E2) - ((2 * *(v4 - 0x686929048CA517E2)) & 0xFFD8);
  v9 = *(v4 - 0x686929048CA517DFLL) - ((*(v4 - 0x686929048CA517DFLL) << (v1 + 45)) & 0x4C);
  v10 = *(v4 - 0x686929048CA517E5) - ((2 * *(v4 - 0x686929048CA517E5)) & 0xFF83);
  v11 = *(v4 - 0x686929048CA517E0) - ((2 * *(v4 - 0x686929048CA517E0)) & 0x20);
  v12 = *a1 - ((2 * *a1) & 0x3A);
  v13 = *(v4 - 0x686929048CA517E3) + (~(2 * *(v4 - 0x686929048CA517E3)) | 0xFFFFFFBF);
  v14 = *(v4 - 0x686929048CA517DBLL) + (~(2 * *(v4 - 0x686929048CA517DBLL)) | 0xFFFFFFE7);
  v15 = *(v4 - 0x686929048CA517D7) - ((2 * *(v4 - 0x686929048CA517D7)) & 0xFFBA);
  v16 = *(v4 - 0x686929048CA517DDLL) - ((2 * *(v4 - 0x686929048CA517DDLL)) & 0xFFD2);
  v17 = (*(v4 - 0x686929048CA517DALL) ^ 0x4F) + ((2 * *(v4 - 0x686929048CA517DALL)) & 0xFF9F);
  v18 = *(v4 - 0x686929048CA517D9) - ((2 * *(v4 - 0x686929048CA517D9)) & 0xFFFB);
  v19 = (*(v4 - 0x686929048CA517DCLL) ^ 0x3E) + ((2 * *(v4 - 0x686929048CA517DCLL)) & 0x7C);
  LODWORD(STACK[0x820]) = (*(v4 - 0x686929048CA517E4) ^ v3) + ((2 * *(v4 - 0x686929048CA517E4)) & 0xFFEA) + 79;
  LODWORD(STACK[0x718]) = v8 + 108;
  STACK[0x8E0] = (v9 + 38);
  STACK[0x920] = (v10 - 63);
  STACK[0x930] = (v11 - 112);
  STACK[0x8E8] = (v12 + 29);
  LODWORD(STACK[0x720]) = v13 - 95;
  LODWORD(STACK[0x830]) = v6 + 64;
  LODWORD(STACK[0x6B8]) = v14 - 115;
  STACK[0x8F0] = (v15 + 93);
  STACK[0x900] = (v16 - 23);
  LODWORD(STACK[0x740]) = v17 - 10;
  LODWORD(STACK[0x8C8]) = v7 - 98;
  STACK[0x910] = (v18 - 3);
  LODWORD(STACK[0x758]) = v19 - 4;
  v20 = *(v5 + 8 * (v1 + 2484));
  STACK[0x2D8] = v4 - 16;
  LODWORD(STACK[0x400]) = STACK[0x760];
  LODWORD(STACK[0x3F8]) = STACK[0x768];
  LODWORD(STACK[0x3F0]) = STACK[0x770];
  LODWORD(STACK[0x3E8]) = STACK[0x778];
  LODWORD(STACK[0x3E0]) = STACK[0x780];
  LODWORD(STACK[0x3D8]) = STACK[0x790];
  LODWORD(STACK[0x3D4]) = STACK[0x788];
  LODWORD(STACK[0x3D0]) = STACK[0x7C0];
  LODWORD(STACK[0x8D0]) = v2;
  LODWORD(STACK[0x358]) = STACK[0x798];
  LODWORD(STACK[0x30C]) = STACK[0x7A0];
  LODWORD(STACK[0x308]) = STACK[0x7A8];
  LODWORD(STACK[0x304]) = STACK[0x7B0];
  LODWORD(STACK[0x300]) = STACK[0x7B8];
  LODWORD(STACK[0x2FC]) = STACK[0x818];
  LODWORD(STACK[0x2F8]) = STACK[0x7D8];
  LODWORD(STACK[0x2F0]) = STACK[0x7E0];
  LODWORD(STACK[0x2EC]) = STACK[0x7F8];
  LODWORD(STACK[0x2E8]) = STACK[0x800];
  LODWORD(STACK[0x2E4]) = STACK[0x808];
  LODWORD(STACK[0x2E0]) = STACK[0x810];
  return v20();
}

uint64_t sub_10003BB84@<X0>(int a1@<W8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v5 = (a1 - 4290) | 0x708;
  LODWORD(STACK[0x818]) = v5;
  v6 = STACK[0x248];
  v7 = LODWORD(STACK[0x260]) - 19 * LODWORD(STACK[0x248]);
  v8 = v7 + v5 + 101;
  LODWORD(STACK[0x260]) = v8;
  v9 = LODWORD(STACK[0x24C]) + 47 * v8;
  LODWORD(STACK[0x808]) = v9;
  v10 = LODWORD(STACK[0x2AC]) - 33 * v9;
  v11 = LODWORD(STACK[0x250]) - 113 * v10;
  LODWORD(STACK[0x7F8]) = v11;
  v12 = v10;
  LODWORD(STACK[0x7B0]) = v10;
  v13 = LODWORD(STACK[0x2A4]) - 89 * (v11 - 37290);
  LODWORD(STACK[0x810]) = v13;
  v14 = LODWORD(STACK[0x254]) - 915187 - v13;
  LODWORD(STACK[0x800]) = v14;
  v15 = LODWORD(STACK[0x258]) + 99 * (v14 - 4272);
  LODWORD(STACK[0x820]) = v15;
  v16 = LODWORD(STACK[0x320]) + 111 * (v15 + 9900);
  LODWORD(STACK[0x8C8]) = v16;
  v17 = LODWORD(STACK[0x328]) - 67 * v16;
  LODWORD(STACK[0x830]) = v17;
  v18 = LODWORD(STACK[0x25C]) - 21 * v17;
  LODWORD(STACK[0x8E8]) = v18;
  v19 = LODWORD(STACK[0x330]) + 29 * v18;
  LODWORD(STACK[0x8E0]) = v19;
  v20 = LODWORD(STACK[0x350]) - (v19 + 550199223) + 8 * (v19 + 550199223);
  LODWORD(STACK[0x900]) = v20;
  v21 = LODWORD(STACK[0x348]) - 109 * (v20 + 12180);
  LODWORD(STACK[0x910]) = v21;
  v22 = LODWORD(STACK[0x2B0]) + 87 * (v21 - 13734);
  LODWORD(STACK[0x920]) = v22;
  v23 = LODWORD(STACK[0x2A8]) - 105 * (v22 - 606912);
  LODWORD(STACK[0x930]) = v23;
  v24 = (LODWORD(STACK[0x5C8]) ^ 0x1D) - 67 * (v23 + 739935) - 715159;
  v25 = v24 - ((2 * v24) & 0x3A) + 29;
  LODWORD(STACK[0x5C8]) = v25;
  v26 = (LODWORD(STACK[0x5B0]) ^ 0xFFFFFFC1) + ((2 * (v25 ^ 0x1D)) & 0x38) + ((-31 * (v25 ^ 0x1D)) ^ 0x1C) - 28;
  v27 = v26 - ((2 * v26) & 0xFFFFFF83) - 63;
  LODWORD(STACK[0x5B0]) = v27;
  v28 = LODWORD(STACK[0x310]) + ((58 * (v27 ^ 0xFFFFFFC1)) & 0x36) + ((29 * (v27 ^ 0xFFFFFFC1)) ^ 0xFFFFFF9B) + 101;
  v29 = LODWORD(STACK[0x31C]) ^ 0xFFFFFFA0;
  LODWORD(STACK[0x310]) = v28;
  v30 = v29 - 57 * v28 + 36 - ((2 * (v29 - 57 * v28 + 36)) & 0x40) - 96;
  LODWORD(STACK[0x31C]) = v30;
  v31 = (LODWORD(STACK[0x5B4]) ^ 0x6C) + ((46 * (v30 ^ 0xFFFFFFA0)) & 0x76) + ((-105 * (v30 ^ 0xFFFFFFA0)) ^ 0xFFFFFFBB) + 69;
  v32 = v31 + (~(2 * v31) | 0x27) + 109;
  LODWORD(STACK[0x5B4]) = v32;
  v33 = LODWORD(STACK[0x318]) + ((110 * (v32 ^ 0x6C)) & 0xFFFFFFBF) + ((-73 * (v32 ^ 0x6C)) ^ 0xFFFFFFDF);
  LODWORD(STACK[0x8F0]) = v33;
  v34 = (LODWORD(STACK[0x5C0]) ^ 0xFFFFFF90) + 41 * v33 + 1371;
  v35 = v34 - ((2 * v34) & 0x20) - 112;
  v36 = LODWORD(STACK[0x5CC]) ^ 0x26;
  LODWORD(STACK[0x5C0]) = v35;
  v37 = v36 + 98 * (v35 ^ 0xFFFFFF90) + ((-79 * (v35 ^ 0xFFFFFF90)) ^ 0x7F) - 127;
  v38 = v37 - ((2 * v37) & 0x4C) + 38;
  LODWORD(STACK[0x5CC]) = v38;
  v39 = (LODWORD(STACK[0x5C4]) ^ 0xFFFFFF93) + ((2 * (v38 ^ 0x26)) & 0xFFFFFFDF) + ((-127 * (v38 ^ 0x26)) ^ 0x6F) - 111;
  v40 = v39 - ((2 * v39) & 0x26) - 109;
  LODWORD(STACK[0x5C4]) = v40;
  v41 = (LODWORD(STACK[0x5AC]) ^ 0xFFFFFFE9) + ((46 * (v40 ^ 0xFFFFFF93)) & 0xFFFFFFF7) + ((23 * (v40 ^ 0xFFFFFF93)) ^ 0xFFFFFFFB) + 5;
  v42 = v41 - ((2 * v41) & 0xFFFFFFD2) - 23;
  LODWORD(STACK[0x5AC]) = v42;
  v43 = LODWORD(STACK[0x2B8]) + ((-54 * (v42 ^ 0xFFFFFFE9)) & 0xFFFFFFB8) + ((-27 * (v42 ^ 0xFFFFFFE9)) ^ 0x5C) - 92;
  v44 = LODWORD(STACK[0x5BC]) ^ 0xFFFFFF8C;
  LODWORD(STACK[0x2B8]) = v43;
  v45 = v44 - 53 * v43 + 2 - ((2 * (v44 - 53 * v43 + 2)) & 0x18) - 116;
  LODWORD(STACK[0x5BC]) = v45;
  v46 = LODWORD(STACK[0x2BC]) + ((-98 * (v45 ^ 0xFFFFFF8C)) & 0xFFFFFFFB) + ((-49 * (v45 ^ 0xFFFFFF8C)) ^ 0x7D) - 125;
  v47 = LODWORD(STACK[0x5B8]) ^ 0xFFFFFFFD;
  LODWORD(STACK[0x2BC]) = v46;
  v48 = v47 - 103 * v46 - 61 - ((2 * (v47 - 103 * v46 - 61)) & 0xFFFFFFFB) - 3;
  LODWORD(STACK[0x5B8]) = v48;
  v49 = LODWORD(STACK[0x314]) + ((50 * (v48 ^ 0xFD)) & 0x78) + ((-103 * (v48 ^ 0xFFFFFFFD)) ^ 0x3C);
  LODWORD(STACK[0x7E0]) = v49;
  v50 = (LODWORD(STACK[0x5A8]) ^ 0x5D) + 29 * v49 - 1813;
  v51 = veorq_s8(v4, *&STACK[0x5E0]);
  v52 = (v7 - 28) ^ 0xFFFFFFE8 ^ ((v51.u8[14] ^ 0xFFFFFFF8) - 2 * ((v51.u8[14] ^ 0xFFFFFFF8) & 0x6A ^ v51.i8[14] & 2) - 24);
  LODWORD(STACK[0x7D8]) = v52 - ((2 * v52) & 0xFFFFFF83);
  v53 = v50 - ((2 * v50) & 0xFFFFFFBA) + 93;
  LODWORD(STACK[0x5A8]) = v53;
  v54 = v6 + ((26 * (v53 ^ 0x5D)) & 0x78) + ((-51 * (v53 ^ 0x5D)) ^ 0x3C);
  v55 = (v54 + 99) ^ ((v51.u8[15] ^ 0xFFFFFFA5) - 2 * ((v51.u8[15] ^ 0xFFFFFFA5) & 0x2A ^ v51.i8[15] & 2) - 88);
  LODWORD(STACK[0x7C0]) = (v55 ^ 0xFFFFFFA8) - 2 * ((v55 ^ 0xFFFFFFA8) & 0x1F ^ v55 & 2);
  v56 = ((v51.u8[12] ^ 0x3A) - ((2 * (v51.u8[12] ^ 0x3A)) & 0x5A) + 45) ^ (v12 + 345) ^ 0x2D;
  LODWORD(STACK[0x7B8]) = v56 - ((2 * v56) & 0x40);
  v57 = STACK[0x7F8];
  v58 = ((v51.u8[11] ^ 0xF) - ((2 * (v51.u8[11] ^ 0xF)) & 0x54) + 42) ^ (LODWORD(STACK[0x7F8]) - 47699) ^ 0x2A;
  LODWORD(STACK[0x7A8]) = v58 + (~(2 * v58) | 0x27);
  v59 = (LODWORD(STACK[0x808]) + 120) ^ ((v51.u8[13] ^ 0x1C) - ((2 * (v51.u8[13] ^ 0x1C)) & 0xFFFFFF9A) - 51);
  v60 = (v59 ^ 0xFFFFFF98) + ((2 * v59) & 0xFFFFFFAA ^ 0xFFFFFF8A);
  v61 = STACK[0x800];
  v62 = (LODWORD(STACK[0x800]) - 4104) ^ ((v51.u8[9] ^ 0x16) + ~(2 * ((v51.u8[9] ^ 0x16) & 0x2F ^ v51.i8[9] & 1)) + 47);
  v63 = (v62 ^ 0x2E) - ((2 * v62) & 0x20);
  v64 = STACK[0x810];
  v65 = (LODWORD(STACK[0x810]) + 919477) ^ ((v51.u8[10] ^ 0x28) - ((2 * (v51.u8[10] ^ 0x28)) & 0x16) - 117);
  v66 = ((2 * v65) & 0x7C ^ 0x14) + (v65 ^ 0x35);
  v67 = STACK[0x820];
  v68 = (LODWORD(STACK[0x820]) + 9952) ^ ((v51.u8[8] ^ 0x6E) - ((2 * (v51.u8[8] ^ 0x6E)) & 0x30) - 104);
  v69 = STACK[0x830];
  v70 = (LODWORD(STACK[0x830]) - 903569) ^ ((v51.u8[6] ^ 0x3A) - 2 * ((v51.u8[6] ^ 0x3A) & 0x17 ^ v51.i8[6] & 1) - 106);
  v71 = (v70 ^ 0xFFFFFF96) - ((2 * v70) & 0xFFFFFFD2);
  v72 = STACK[0x8C8];
  v73 = ((v51.u8[7] ^ 0xFFFFFFC1) + (~(2 * (v51.u8[7] ^ 0xFFFFFFC1)) | 0x63) - 49) ^ (LODWORD(STACK[0x8C8]) + 13645) ^ 0xFFFFFFCE;
  v74 = v73 - ((2 * v73) & 0x26);
  v75 = ((v51.u8[4] ^ 0xFFFFFFE1) - ((2 * (v51.u8[4] ^ 0xFFFFFFE1)) & 0x54) + 42) ^ (LODWORD(STACK[0x8E0]) + 550200903) ^ 0x2A;
  v76 = v75 - ((2 * v75) & 0x18);
  v77 = STACK[0x8E8];
  v78 = (LODWORD(STACK[0x8E8]) + 18972323) ^ ((v51.u8[5] ^ 0x5D) - 2 * ((v51.u8[5] ^ 0x5D) & 0x3F) + 63);
  v79 = STACK[0x900];
  v80 = (LODWORD(STACK[0x900]) + 12254) ^ ((v51.u8[3] ^ 0xFFFFFF99) - ((2 * (v51.u8[3] ^ 0xFFFFFF99)) & 0x2C) - 106);
  v81 = ((2 * v80) & 0xFFFFFF8A ^ 8) + (v80 ^ 0xFFFFFFD3);
  v82 = (LODWORD(STACK[0x910]) - 20702) ^ ((v51.u8[2] ^ 0x1F) - ((2 * (v51.u8[2] ^ 0x1F)) & 0x7C) - 66);
  v83 = STACK[0x920];
  v84 = (LODWORD(STACK[0x920]) - 614023) ^ ((v51.u8[1] ^ 0x6B) - ((2 * (v51.u8[1] ^ 0x6B)) & 0x5A) + 45);
  v85 = STACK[0x930];
  v86 = (LODWORD(STACK[0x930]) + 750716) ^ ((v51.u8[0] ^ 0x73) - ((2 * (v51.u8[0] ^ 0x73)) & 0x4A) + 37);
  LODWORD(STACK[0x24C]) = LODWORD(STACK[0x808]) + 127;
  LODWORD(STACK[0x2AC]) = LODWORD(STACK[0x7B0]) + 392;
  LODWORD(STACK[0x250]) = v57 - 47689;
  LODWORD(STACK[0x2A4]) = v64 + 919489;
  LODWORD(STACK[0x254]) = v61 - 4290;
  LODWORD(STACK[0x258]) = v67 + 9976;
  LODWORD(STACK[0x320]) = v72 + 13452;
  LODWORD(STACK[0x328]) = v69 - 903463;
  LODWORD(STACK[0x25C]) = v77 + 18972389;
  LODWORD(STACK[0x350]) = v79 + 12272;
  LODWORD(STACK[0x2B0]) = v83 - 613896;
  LODWORD(STACK[0x2A8]) = v85 + 750751;
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x8F0]) + 33;
  LODWORD(STACK[0x314]) = LODWORD(STACK[0x7E0]) - 60;
  v87 = (LODWORD(STACK[0x7D8]) - 63);
  LODWORD(STACK[0x248]) = v54 - 60;
  v88 = (LODWORD(STACK[0x7C0]) + 29);
  v89 = LODWORD(STACK[0x7B8]) - 96;
  v90 = LODWORD(STACK[0x7A8]) + 109;
  v91 = (v63 - 112);
  v92 = (v68 ^ 0xFFFFFF98) + (~(2 * v68) | 0xFFFFFFB3) + 39;
  v93 = v71 - 23;
  v94 = (v78 ^ 1) + (~(2 * v78) & 0x7C) - 4;
  v95 = (v82 ^ 0xFFFFFFBE) + ((2 * ((v82 ^ 0xFFFFFFBE | 0x7D) ^ v82)) ^ 0x79) - 2;
  v96 = (v84 ^ 0xFFFFFF92) + ((2 * (v84 & 0x3F)) ^ 0x5A) + 94;
  v97 = (v86 ^ 0x25) - 2 * ((v86 ^ 0x25) & 0x5F ^ v86 & 2u) + 93;
  v98 = *(STACK[0x8B0] + 8 * a1);
  LODWORD(STACK[0x748]) = 60;
  LODWORD(STACK[0x720]) = v89;
  LODWORD(STACK[0x27C]) = v89;
  LODWORD(STACK[0x280]) = v97;
  STACK[0x8F0] = v97;
  LODWORD(STACK[0x294]) = v94;
  LODWORD(STACK[0x758]) = v94;
  LODWORD(STACK[0x2A0]) = v92;
  STACK[0x8E0] = v92;
  STACK[0x8E8] = v88;
  LODWORD(STACK[0x338]) = v88;
  STACK[0x930] = v91;
  LODWORD(STACK[0x26C]) = v91;
  LODWORD(STACK[0x298]) = v81;
  LODWORD(STACK[0x740]) = v81;
  LODWORD(STACK[0x340]) = v74 - 109;
  LODWORD(STACK[0x270]) = v95;
  STACK[0x910] = v95;
  LODWORD(STACK[0x268]) = v93;
  STACK[0x900] = v93;
  LODWORD(STACK[0x284]) = v76 - 116;
  LODWORD(STACK[0x6B8]) = v76 - 116;
  LODWORD(STACK[0x28C]) = v66 ^ 0xFFFFFF80;
  LODWORD(STACK[0x830]) = v66 ^ 0xFFFFFF80;
  LODWORD(STACK[0x290]) = v90;
  LODWORD(STACK[0x718]) = v90;
  LODWORD(STACK[0x820]) = v60 - 17;
  LODWORD(STACK[0x244]) = v60 - 17;
  LODWORD(STACK[0x8C8]) = v96;
  LODWORD(STACK[0x29C]) = v96;
  LODWORD(STACK[0x288]) = v87;
  STACK[0x920] = v87;
  return v98(0, a3, a4, a2);
}

uint64_t sub_10003C640()
{
  v4 = *(v3 + 8 * ((114 * (v1 == (v0 - 96 + v0 - 38 + 81))) ^ v0));
  STACK[0x2D8] = v2;
  return v4();
}

uint64_t sub_10003C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, unsigned int a62, unsigned int a63)
{
  LODWORD(STACK[0x6B0]) = a7;
  v66 = a63 < a62;
  v67 = LODWORD(STACK[0x5D0]) - 582168144 + ((v64 - 576924333) & 0x22630EFF);
  v68 = v66 ^ (v67 < ((v64 - 576924333) ^ 0xDD9CFA6F) + 1346245067);
  v69 = v67 < a63;
  if (!v68)
  {
    v66 = v69;
  }

  STACK[0x990] += 16;
  STACK[0x998] += 16;
  return (*(v65 + 8 * (((8 * !v66) | (32 * !v66)) ^ v64)))(a1, a2, a3, a4, a5, a6, a64 + 0x6AE02EAAD2731780);
}

uint64_t sub_10003C748@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, unsigned int a4@<W8>, int8x16_t a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, int8x16_t a8@<Q3>)
{
  v14 = vdupq_n_s64(0x258B503E354880D7uLL);
  v14.i64[0] = (v8 - (((v8 << ((a4 - 41) ^ 0x79)) + 0x421C797C4AA9C1ELL) & 0x86357ED1BCF24EELL) + 0x6E428FC2703CE086) ^ 0x431ABF68DE79277;
  v15 = vandq_s8(v14, xmmword_100424C20);
  v16 = veorq_s8(vaddq_s64(vsubq_s64(v14, vaddq_s64(v15, v15)), xmmword_100424C20), xmmword_100424C20);
  v17 = vandq_s8(v16, xmmword_100424C30);
  v18 = vmlaq_s8(xmmword_100424C60, veorq_s8(a8, veorq_s8(vaddq_s8(vsubq_s8(v16, vaddq_s8(v17, v17)), xmmword_100424C30), xmmword_100424C40)), xmmword_100424C50);
  v19 = vextq_s8(v18, v18, 8uLL);
  v20 = vextq_s8(vmlaq_s8(xmmword_100424C80, v19, xmmword_100424C70), a5, 8uLL);
  v21 = vandq_s8(v20, xmmword_100424C90);
  v22 = vextq_s8(a5, vmlaq_s8(xmmword_100424CB0, v19, xmmword_100424CA0), 8uLL);
  v23 = *(v13 + 8 * a4);
  LODWORD(STACK[0x828]) = 36;
  LODWORD(STACK[0x8D0]) = 39;
  LODWORD(STACK[0x73C]) = 85;
  v24 = vandq_s8(v22, xmmword_100424CC0);
  LODWORD(STACK[0x264]) = 14;
  LODWORD(STACK[0x400]) = STACK[0x760];
  LODWORD(STACK[0x690]) = STACK[0x858];
  LODWORD(STACK[0x698]) = STACK[0x860];
  LODWORD(STACK[0x3F8]) = STACK[0x768];
  LODWORD(STACK[0x3F0]) = STACK[0x770];
  LODWORD(STACK[0x3E8]) = STACK[0x778];
  LODWORD(STACK[0x6A0]) = STACK[0x840];
  LODWORD(STACK[0x3E0]) = STACK[0x780];
  LODWORD(STACK[0x3D8]) = STACK[0x790];
  LODWORD(STACK[0x3D4]) = STACK[0x788];
  LODWORD(STACK[0x3D0]) = STACK[0x7C0];
  LODWORD(STACK[0x358]) = STACK[0x798];
  LODWORD(STACK[0x30C]) = STACK[0x7A0];
  LODWORD(STACK[0x308]) = STACK[0x7A8];
  LODWORD(STACK[0x304]) = STACK[0x7B0];
  LODWORD(STACK[0x300]) = STACK[0x7B8];
  LODWORD(STACK[0x2FC]) = STACK[0x818];
  LODWORD(STACK[0x2F8]) = STACK[0x7D8];
  LODWORD(STACK[0x2F0]) = STACK[0x7E0];
  LODWORD(STACK[0x5D0]) = v11;
  LODWORD(STACK[0x2EC]) = STACK[0x7F8];
  LODWORD(STACK[0x2E8]) = STACK[0x800];
  LODWORD(STACK[0x2E4]) = STACK[0x808];
  LODWORD(STACK[0x2E0]) = STACK[0x810];
  v25 = veorq_s8(veorq_s8(vaddq_s8(vsubq_s8(v20, vaddq_s8(v21, v21)), xmmword_100424C90), vaddq_s8(vsubq_s8(v22, vaddq_s8(v24, v24)), xmmword_100424CC0)), xmmword_100424CD0);
  v26 = *&STACK[0x5E0];
  LODWORD(STACK[0x688]) = STACK[0x850];
  LODWORD(STACK[0x680]) = STACK[0x838];
  LODWORD(STACK[0x8C0]) = v10;
  LODWORD(STACK[0x8B8]) = a3;
  LODWORD(STACK[0x8A8]) = v12;
  LODWORD(STACK[0x678]) = STACK[0x848];
  LODWORD(STACK[0x670]) = STACK[0x868];
  LODWORD(STACK[0x660]) = STACK[0x880];
  LODWORD(STACK[0x668]) = STACK[0x878];
  LODWORD(STACK[0x890]) = a1;
  LODWORD(STACK[0x8A0]) = v9;
  LODWORD(STACK[0x658]) = STACK[0x870];
  LODWORD(STACK[0x898]) = a2;
  return v23(v25, a6, a7, v26);
}

uint64_t sub_10003C9E4@<X0>(unsigned __int8 *a1@<X8>)
{
  v4 = *(v2 - 0x686929048CA517E0);
  v5 = *a1;
  v6 = (*(v2 - 0x686929048CA517DCLL) ^ 0x7E) + 4 * (*(v2 - 0x686929048CA517DCLL) >> 1);
  v7 = *(v2 - 0x686929048CA517E5) - ((2 * *(v2 - 0x686929048CA517E5)) & 0xFF83);
  v8 = *(v2 - 0x686929048CA517DFLL);
  STACK[0x8E8] = ((v1 - 2490) ^ 0xFFFFFFD3) + v5 - ((2 * v5) & 0x3A);
  v9 = *(v2 - 0x686929048CA517E3) - ((2 * *(v2 - 0x686929048CA517E3)) & 0x40);
  v10 = v8 - ((2 * v8) & 0x4C);
  LODWORD(STACK[0x830]) = ((2 * *(v2 - 0x686929048CA517E1)) & 0x7C) + (*(v2 - 0x686929048CA517E1) ^ 0x3E);
  v11 = (*(v2 - 0x686929048CA517E4) ^ 0x4E) + ((2 * *(v2 - 0x686929048CA517E4)) & 0xFF9C);
  v12 = *(v2 - 0x686929048CA517DDLL) - ((2 * *(v2 - 0x686929048CA517DDLL)) & 0xFFD2);
  v13 = *(v2 - 0x686929048CA517DBLL) - ((2 * *(v2 - 0x686929048CA517DBLL)) & 0x18);
  v14 = *(v2 - 0x686929048CA517E2) - ((2 * *(v2 - 0x686929048CA517E2)) & 0xFFD8);
  v15 = (*(v2 - 0x686929048CA517DALL) ^ 0xFFFFFFDF) + ((2 * *(v2 - 0x686929048CA517DALL)) & 0xFFBF);
  v16 = *(v2 - 0x686929048CA517D7) - ((2 * *(v2 - 0x686929048CA517D7)) & 0xFFBA);
  v17 = *(v2 - 0x686929048CA517D9) - ((2 * *(v2 - 0x686929048CA517D9)) & 0xFFFB);
  v18 = (*(v2 - 0x686929048CA517D8) ^ 0xFFFFFFDF) + ((2 * *(v2 - 0x686929048CA517D8)) & 0xFFBF);
  STACK[0x920] = (v7 - 63);
  STACK[0x930] = v4 + (~(2 * v4) | 0xFFFFFFDF) - 111;
  LODWORD(STACK[0x720]) = v9 - 96;
  STACK[0x8E0] = (v10 + 38);
  LODWORD(STACK[0x820]) = v11 - 10;
  STACK[0x900] = (v12 - 23);
  LODWORD(STACK[0x6B8]) = v13 - 116;
  LODWORD(STACK[0x718]) = v14 + 108;
  LODWORD(STACK[0x740]) = v15 + 102;
  LODWORD(STACK[0x758]) = v6 - 68;
  STACK[0x8F0] = (v16 + 93);
  STACK[0x910] = (v17 - 3);
  LODWORD(STACK[0x8C8]) = v18 + 62;
  v19 = *(v3 + 8 * v1);
  LODWORD(STACK[0x400]) = STACK[0x760];
  LODWORD(STACK[0x3F8]) = STACK[0x768];
  LODWORD(STACK[0x3F0]) = STACK[0x770];
  LODWORD(STACK[0x3E8]) = STACK[0x778];
  LODWORD(STACK[0x3E0]) = STACK[0x780];
  LODWORD(STACK[0x3D8]) = STACK[0x790];
  LODWORD(STACK[0x3D4]) = STACK[0x788];
  LODWORD(STACK[0x3D0]) = STACK[0x7C0];
  LODWORD(STACK[0x358]) = STACK[0x798];
  LODWORD(STACK[0x30C]) = STACK[0x7A0];
  LODWORD(STACK[0x308]) = STACK[0x7A8];
  LODWORD(STACK[0x304]) = STACK[0x7B0];
  LODWORD(STACK[0x300]) = STACK[0x7B8];
  LODWORD(STACK[0x2FC]) = STACK[0x818];
  LODWORD(STACK[0x2F8]) = STACK[0x7D8];
  LODWORD(STACK[0x2F0]) = STACK[0x7E0];
  LODWORD(STACK[0x2EC]) = STACK[0x7F8];
  LODWORD(STACK[0x2E8]) = STACK[0x800];
  LODWORD(STACK[0x2E4]) = STACK[0x808];
  LODWORD(STACK[0x2E0]) = STACK[0x810];
  LODWORD(STACK[0x8D0]) = 40;
  return v19();
}

uint64_t sub_10003CD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x888]) = v10;
  v12 = v8 ^ 1;
  if (v10 != (((a8 + 28) & 0x7F) - 3))
  {
    v12 = 1;
  }

  return (*(v11 + 8 * ((22 * v12) ^ a8)))(a1, a2, a3, v9, (a8 + 14966));
}

uint64_t sub_10003CDF0(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x950]) = v3 + 15751;
  v6 = *(&off_10044E3E0 + v3 - 1818) - 1341163563;
  v7 = *(a2 - 0x27C3370D067AB98ELL) ^ 0xD6 ^ v6[*(a2 - 0x27C3370D067AB98ELL) ^ 0x87];
  v8 = (((v3 + 1208) | 0x2212) + ((v7 - ((2 * v7) & 0xA2)) << 24) - 788541086) ^ 0xD1000000;
  v9 = *(&off_10044E3E0 + (v3 ^ 0x671)) - 654174154;
  v10 = *(&off_10044E3E0 + v3 - 1574) - 746660887;
  v11 = v10[*(a2 - 0x27C3370D067AB98CLL) ^ 0x1ELL] ^ 0xDD;
  v12 = (((v11 - ((2 * v11) & 0xFFFFFFE3)) << 8) - 179113728) ^ 0xF552F100;
  v13 = (v12 - ((2 * v12) & 0x62AE4600) + 1901536178) ^ 0x715723B2 | (v8 - ((2 * v8) & 0xA8000000) + 1410332117) ^ 0x540FF5D5;
  v14 = (-16777216 * (*(a2 - 0x27C3370D067AB992) ^ 0xA9 ^ v6[*(a2 - 0x27C3370D067AB992) ^ 0x32]) + 2130706432) ^ 0x7F000000;
  v15 = *(&off_10044E3E0 + (v3 ^ 0x664)) - 1005822791;
  v16 = v15[*(a2 - 0x27C3370D067AB98DLL) ^ 0x4CLL] ^ 0x4F;
  v17 = (((v16 - ((2 * v16) & 0xA8)) << 16) - 497811456) ^ 0xE2540000;
  v18 = (v17 - ((2 * v17) & 0x15EE0000) - 889724594) ^ 0xCAF7E14E | (v13 - ((2 * v13) & 0xC0228908) + 1611744388) ^ 0x60114484;
  v19 = v10[*(a2 - 0x27C3370D067AB998) ^ 7] ^ 0xBB;
  v20 = (((v19 + 4011798 - ((2 * v19) & 0xFFFFFFBF)) << 8) + 444672) ^ 0x3D3DDF00;
  v21 = v9[*(a2 - 0x27C3370D067AB997) ^ 0x4ELL] ^ 0xAD;
  v22 = (v20 - ((2 * v20) & 0x346FAE00) + 439867190) ^ 0x1A37D736 | (v21 - ((2 * v21) & 0x1CA) + 1325449701) ^ 0x4F00C1E5;
  v23 = v15[*(a2 - 0x27C3370D067AB999) ^ 0xB3] ^ 0x32;
  v24 = (((v23 - ((2 * v23) & 0xFA)) << 16) + 2138898432) ^ 0x7F7D0000;
  v25 = (v22 - ((2 * v22) & 0x35C28CD6) - 1696512405) ^ 0x9AE1466B | (v24 - ((2 * v24) & 0x36D60000) - 1687435178) ^ 0x9B6BC856;
  v26 = v25 - ((2 * v25) & 0xE080B1C);
  v27 = v10[*(a2 - 0x27C3370D067AB990) ^ 0xEDLL] ^ 0x26;
  v28 = (((v27 - ((2 * v27) & 0x16E)) << 8) - 805390592) ^ 0xCFFEB700;
  v29 = (v28 - ((2 * v28) & 0x4FFA2E00) - 402843862) ^ 0xE7FD172A | (v14 - ((2 * v14) & 0x8A000000) + 1157800710) ^ 0x4502A306;
  v30 = v9[*(a2 - 0x27C3370D067AB98FLL) ^ 0x23] ^ 0x32;
  v31 = (v29 - ((2 * v29) & 0xDA94B2CC) + 1833589094) ^ 0x6D4A5966 | (v30 - 2 * (v30 & 0xF) - 1001796337) ^ 0xC449CD0F;
  v32 = v31 - ((2 * v31) & 0x419A82F4) + 550322554;
  v33 = v15[*(a2 - 0x27C3370D067AB991) ^ 0xEDLL] ^ 0x9D;
  v34 = (((v33 - ((2 * v33) & 0x18)) << 16) + 1611399168) ^ 0x600C0000;
  v35 = v32 ^ 0x20CD417A;
  v36 = (v34 - ((2 * v34) & 0x7E620000) - 13519674) ^ 0xFF31B4C6;
  v37 = (v35 | v36) - ((2 * (v35 | v36)) & 0x82A8DE14) + 1096052490;
  v38 = *(a2 - 0x27C3370D067AB99ALL) ^ v6[*(a2 - 0x27C3370D067AB99ALL) ^ 0x62];
  v39 = (((v38 ^ 0x1A) - ((2 * v38) & 0x42)) << 24) + 553648128;
  v40 = (v26 - 2029779570) ^ 0x8704058E | ((v39 ^ 0x21000000) - ((2 * v39) & 0x9C000000) + 1309775555) ^ 0x4E1196C3;
  v41 = v40 - 279011102 + (~(2 * v40) | 0x2142BE3B);
  v42 = v9[*(a2 - 0x27C3370D067AB98BLL) ^ 0xBFLL] ^ 0xC2;
  v43 = (v42 - ((2 * v42) & 0x6E) + 1936939831) ^ 0x73735B37 | (v18 - ((2 * v18) & 0xE6CF2F08) + 1936168836) ^ 0x73679784;
  v44 = v43 - ((2 * v43) & 0xE39B878C);
  v45 = v15[*(a2 - 0x27C3370D067AB995) ^ 0xEELL] ^ 0xA0;
  v46 = (((v45 - ((2 * v45) & 0x5A)) << 16) + 204275712) ^ 0xC2D0000;
  v47 = v9[*(a2 - 0x27C3370D067AB993) ^ 0x49];
  v48 = (v46 - ((2 * v46) & 0x6F940000) + 936029879) ^ 0x37CAAEB7 | ((v47 ^ 0x32) - ((2 * v47) & 0x98) - 2079248820) ^ 0x84112E4C;
  v49 = v10[*(a2 - 0x27C3370D067AB994) ^ 0xAALL] ^ 0xFA;
  v50 = (((v49 - ((2 * v49) & 0x56)) << 8) - 18076928) ^ 0xFEEC2B00;
  v51 = (v48 - ((2 * v48) & 0xF3A3516) - 946005365) ^ 0xC79D1A8B | (v50 - ((2 * v50) & 0xF935400) - 2016826831) ^ 0x87C9AA31;
  v52 = *(a2 - 0x27C3370D067AB996) ^ 0x52 ^ v6[*(a2 - 0x27C3370D067AB996) ^ 0x94];
  v53 = (((v52 - ((2 * v52) & 0xF0)) << 24) + 2013265920) ^ 0x78000000;
  v54 = a2 + 102 - ((2 * (a2 + 102)) & 0x16);
  v55 = (v51 - ((2 * v51) & 0xE0E625F2) - 260893959) ^ 0xF07312F9 | (v53 + (v53 >> 30 << 31) - 1057983988) ^ 0xC0F0720C;
  v56 = v55 - 302875890 - ((2 * v55) & 0xDBE4F9B2);
  LOBYTE(v53) = ((8 * v54 + 88) ^ 0x58) + (~(2 * ((8 * v54 + 88) ^ 0x58)) | 0xEF);
  v57 = (((((a2 - 0x27C3370D067AB99ALL - ((2 * (a2 - 0x27C3370D067AB99ALL)) & 0xAB2D40504C3C94C6) - 0x2A695FD7D9E1B59DLL) << 56) ^ 0x6300000000000000) - ((2 * (((a2 - 0x27C3370D067AB99ALL - ((2 * (a2 - 0x27C3370D067AB99ALL)) & 0xAB2D40504C3C94C6) - 0x2A695FD7D9E1B59DLL) << 56) ^ 0x6300000000000000)) & 0x2C00000000000000) + 0x162AEFD55F2DB9D1) & 0xF800000000000000 | ((a2 - 0x27C3370D067AB99ALL - ((2 * (a2 - 0x27C3370D067AB99ALL)) & 0xAB2D40504C3C94C6) - 0x2A695FD7D9E1B59DLL) >> 8)) ^ 0x10D596A028261E4ALL;
  v58 = (v57 - ((2 * v57) & 0xAF09563714C0B2) - 0x7CA87B54E4759FA7) ^ 0x835784AB1B8A6059;
  v59 = v58 - ((2 * v58 + 0x25616341D67C2B0ELL) & 0x3C9DCAB565032772) - 0x6F006904624056C0;
  *(&v60 + 1) = v59 ^ 0x92;
  *&v60 = v59 ^ 0x4A09D32F2EFFFE00;
  v61 = (v59 ^ 0xDF8C5E28770F52A9) + ((v60 >> 8) ^ 0x7BFAFBB509C3FFB7) + ((2 * (v60 >> 8)) & 0xF7F5F76A1387FF6ELL) - 0x7BFAFBB509C3FFB7;
  *(&v60 + 1) = v59 ^ 0x1F8C5E28770F52A9;
  *&v60 = v59 ^ 0xC000000000000000;
  v62 = v61 - ((2 * v61) & 0xDE50E2B845364FAALL) + 0x6F28715C229B27D5;
  v63 = v62 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x85D08699C51B8BC0) + 0x42E8434CE28DC5E0);
  *(&v60 + 1) = v62 ^ 0xC;
  *&v60 = v62 ^ 0x1E5BEE6BB962A800;
  v64 = (v63 ^ 0x5CB3AD275BEF6DECLL) + ((v60 >> 8) ^ 0xBD7B7FF6F7EBE7CBLL) + ((2 * (v60 >> 8)) & 0x7AF6FFEDEFD7CF96) + 0x4284800908141835;
  v65 = v64 - ((2 * v64) & 0xE456EF0BE91E3EACLL) + 0x722B7785F48F1F56;
  *(&v60 + 1) = v63 ^ 0x1CB3AD275BEF6DECLL;
  *&v60 = v63 ^ 0x4000000000000000;
  v66 = (v60 >> 61) - ((2 * (v60 >> 61)) & 0x1B6EEDDDAA0E4B24) + 0xDB776EED5072592;
  *(&v60 + 1) = v65 ^ 0x23;
  *&v60 = v65 ^ 0xCF1675D1C32FB00;
  v67 = v60 >> 8;
  v68 = v65 ^ v66;
  *(&v60 + 1) = v68 ^ 0x14611B3C935DEB1;
  *&v60 = v68;
  v69 = (v68 ^ 0x14611B3C935DEB1) + (v67 ^ 0xFCF5EFFDFDFBFDFFLL) + ((2 * v67) & 0xF9EBDFFBFBF7FBFELL) + 0x30A100202040201;
  v70 = v69 - ((2 * v69) & 0x9ED8EE63E67F00ACLL) - 0x309388CE0CC07FAALL;
  v71 = v70 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0xBF689B15B3AF468ALL) - 0x204BB27526285CBBLL);
  *(&v60 + 1) = v70 ^ 0xF0;
  *&v60 = v70 ^ 0x473A634FA25F500;
  v72 = (v71 ^ 0xDBC7EBBE23F256B5) + ((v60 >> 8) ^ 0x2DCF7DFF5BCBDFEALL) + ((2 * (v60 >> 8)) & 0x5B9EFBFEB797BFD4) - 0x2DCF7DFF5BCBDFEALL;
  *(&v60 + 1) = v71 ^ 0x1BC7EBBE23F256B5;
  *&v60 = v71 ^ 0xC000000000000000;
  v73 = v72 - ((2 * v72) & 0xE355F6F0F87192B6) + 0x71AAFB787C38C95BLL;
  v74 = v73 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x947B285ECC7D29ECLL) + 0x4A3D942F663E94F6);
  *(&v60 + 1) = v73 ^ 0x92;
  *&v60 = v73 ^ 0xF109D30CFF8C0E00;
  v75 = (v74 ^ 0xBB34472399B29A64) + ((v60 >> 8) ^ 0xEBFD7FFF3AF7EE2BLL) + ((2 * (v60 >> 8)) & 0xD7FAFFFE75EFDC56) + 0x14028000C50811D5;
  v76 = v75 - ((2 * v75) & 0xCC1BC48330F6A84CLL) + 0x660DE241987B5426;
  *(&v60 + 1) = v74 ^ 0x1B34472399B29A64;
  *&v60 = v74 ^ 0xBFFFFFFFFFFFFFFFLL;
  v77 = v76 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0xCCF95701DEB5B0A6) + 0x667CAB80EF5AD853);
  *(&v60 + 1) = v76 ^ 0x5D;
  *&v60 = v76 ^ 0xE36F27F1655D4500;
  v78 = (v77 ^ 0x85138C718A079D0ELL) + ((v60 >> 8) ^ 0xD9473CDF3F77FFF7) + ((2 * (v60 >> 8)) & 0xB28E79BE7EEFFFEELL) + 0x26B8C320C0880009;
  v79 = v78 - ((2 * v78) & 0xFD5C2AD2ACE88FB8) + 0x7EAE1569567447DCLL;
  *(&v60 + 1) = v77 ^ 0x5138C718A079D0ELL;
  *&v60 = v77 ^ 0x8000000000000000;
  v80 = (v60 >> 61) - ((2 * (v60 >> 61)) & 0xFA0F489A37D056A4) + 0x7D07A44D1BE82B52;
  *(&v60 + 1) = v79 ^ 0xAF;
  *&v60 = v79 ^ 0xE95B79D9AD425D00;
  v81 = (v80 ^ 0x945CDD94B6AA76FDLL ^ v79) + ((v60 >> 8) ^ 0x73EDF81E7E3757DFLL) + ((2 * (v60 >> 8)) & 0xE7DBF03CFC6EAFBELL) - 0x73EDF81E7E3757DFLL;
  LOBYTE(v67) = (v53 + 41) & 0x38;
  LOBYTE(v79) = v67 ^ 0x28;
  v82 = ((v81 - ((2 * v81) & 0x9F2DBDB20B9E6156) - 0x30692126FA30CF55) ^ 0x378FF4ACEE37C235) >> (v67 ^ 0x28u);
  v83 = a2 - 0x27C3370D067AB992 - ((2 * (a2 - 0x27C3370D067AB992)) & 0x9AB1F0DA530C300ALL) + 0x4D58F86D29861805;
  v84 = ((((v83 << 56) ^ 0x500000000000000) - ((2 * ((v83 << 56) ^ 0x500000000000000)) & 0x4E00000000000000) + 0x27505E7F17E59BECLL) & 0xF800000000000000 | (v83 >> 8)) ^ 0x204D58F86D298618;
  v85 = (v84 - ((2 * v84) & 0xA1C6A8585F375A76) - 0x2C1CABD3D06452C5) ^ 0xD3E3542C2F9BAD3BLL;
  v86 = v85 - ((2 * v85 + 0x65616341D67C2B0ELL) & 0x53D967E0171A708ELL);
  *(&v60 + 1) = (v86 - 154448434) ^ 0x6Cu;
  *&v60 = (v86 - 0x63629A6F0934B232) ^ 0x7DAB858597F35500;
  v87 = ((v86 - 0x63629A6F0934B232) ^ 0xE82E0882CE03F957) + ((v60 >> 8) ^ 0x7FF7F6F77F7D5F9DLL) + ((2 * (v60 >> 8)) & 0xFFEFEDEEFEFABF3ALL) - 0x7FF7F6F77F7D5F9DLL;
  *(&v60 + 1) = (v86 - 0x63629A6F0934B232) ^ 0x82E0882CE03F957;
  *&v60 = 0x63629A6F0934B231 - v86;
  v88 = v87 - ((2 * v87) & 0x1567094F8F4D2F40) + 0xAB384A7C7A697A0;
  v89 = (v60 >> 61) + 0x47A5E885A2B8DF91 + (~(2 * (v60 >> 61)) | 0x70B42EF4BA8E40DFLL);
  *(&v60 + 1) = (v87 - ((2 * v87) & 0x8F4D2F40) - 945383520) ^ 0x79;
  *&v60 = v88 ^ 0x7BC01B905C5F1800;
  v90 = v88 ^ v89;
  v91 = (v90 ^ 0x3C65F315FEE7C7E9) + ((v60 >> 8) ^ 0x37FF77FBDC9DFB6CLL) + ((2 * (v60 >> 8)) & 0x6FFEEFF7B93BF6D8) - 0x37FF77FBDC9DFB6CLL;
  v92 = v91 - ((2 * v91) & 0x8CD67B457DCB57D4) - 0x3994C25D411A5416;
  *(&v60 + 1) = v90 ^ 0x1C65F315FEE7C7E9;
  *&v60 = v90 ^ 0x2000000000000000;
  v93 = v92 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x2D759B2159E129FELL) + 0x16BACD90ACF094FFLL);
  *(&v60 + 1) = v92 ^ 0xFFFFFF9F;
  *&v60 = v92 ^ 0xB8B12D7A56584F00;
  v94 = (v93 ^ 0xAE0BE0EAFAA8DB60) + ((v60 >> 8) ^ 0x50ED9BD7FDA7FDBBLL) + ((2 * (v60 >> 8)) & 0xA1DB37AFFB4FFB76) - 0x50ED9BD7FDA7FDBBLL;
  v95 = ((2 * v94) & 0xE8E7FFCB1FFE7FF6) + (v94 ^ 0x7473FFE58FFF3FFBLL);
  v96 = v95 - 0x7473FFE58FFF3FFBLL;
  v97 = ((((v95 - 0x7473FFE58FFF3FFBLL) ^ 0xCB1FD105091A75A6) - ((2 * ((v95 - 0x7473FFE58FFF3FFBLL) ^ 0xCB1FD105091A75A6)) & 0x78E4657BF0447A8ALL) - 0x438DCD4207DDC2BBLL) ^ 0x438DCD4207DDC2BALL) + v95;
  v98 = ((v97 - ((2 * v97 + 0x17180034E001800CLL) & 0x1E137976AC98A548) - 0x656A432A39B2ED56) ^ 0xF0F64344A9B3AD58) + v96;
  *(&v60 + 1) = v93 ^ 0xE0BE0EAFAA8DB60;
  *&v60 = v93 ^ 0xBFFFFFFFFFFFFFFFLL;
  v99 = v98 - 0x3273395932447D00 - ((2 * v98) & 0x9B198D4D9B7706DCLL) + 110;
  v100 = v99 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0xFC2DD606CD9521A4) + 0x7E16EB0366CA90D2);
  *(&v60 + 1) = v99 ^ 0x6E;
  *&v60 = v99 ^ 0xCD8CC6A6CDBB8300;
  v101 = (v100 ^ 0xB39A2DA5AB7113BCLL) + ((v60 >> 8) ^ 0xFD7F9FFF7FFFEF7BLL) + ((2 * (v60 >> 8)) & 0xFAFF3FFEFFFFDEF6) + 0x280600080001085;
  v102 = v101 - ((2 * v101) & 0x965ECD7F0B73B946) + 0x4B2F66BF85B9DCA3;
  *(&v60 + 1) = v100 ^ 0x139A2DA5AB7113BCLL;
  *&v60 = v100 ^ 0xBFFFFFFFFFFFFFFFLL;
  v103 = v102 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x3557819230B55E3CLL) - 0x65543F36E7A550E2);
  *(&v60 + 1) = v102 ^ 0x6A;
  *&v60 = v102 ^ 0xCB8C4ECB060D1B00;
  v104 = (v103 ^ 0x51278E021E57B474) + ((v60 >> 8) ^ 0x72F2AADBCDEDA7ECLL) + ((2 * (v60 >> 8)) & 0xE5E555B79BDB4FD8) - 0x72F2AADBCDEDA7ECLL;
  v105 = v104 - ((2 * v104) & 0xB7BFCB6C7A987D9ALL) + 0x5BDFE5B63D4C3ECDLL;
  *(&v60 + 1) = v103 ^ 0x11278E021E57B474;
  *&v60 = v103 ^ 0x4000000000000000;
  v106 = v105 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0xC24E78BE0551DE6CLL) - 0x1ED8C3A0FD5710CALL);
  v107 = ((((v105 << 56) ^ 0xB600000000000000) - ((2 * ((v105 << 56) ^ 0xB600000000000000)) & 0xB400000000000000) + 0x5A1EA4AFD3090E41) ^ 0x5A1EA4AFD3090E41) + (v106 ^ 0x3F9A1C59C2C2C080);
  v108 = ((v105 >> 8) ^ 0xDEBD2006C06A2FLL) + (v107 ^ 0x797FDEB77DE65EFFLL) + ((2 * v107) & 0xF2FFBD6EFBCCBDFELL) - 0x797FDEB77DE65EFFLL;
  v109 = v108 - ((2 * v108) & 0x18376F79920EA094) + 0xC1BB7BCC907504ALL;
  *(&v60 + 1) = v106 ^ 0x1F9A1C59C2C2C080;
  *&v60 = v106 ^ 0x2000000000000000;
  v110 = (v60 >> 61) - ((2 * (v60 >> 61)) & 0xD3DAD169CFB0EE46) - 0x1612974B182788DDLL;
  *(&v60 + 1) = v109 ^ 0x39;
  *&v60 = v109 ^ 0x9BEEDB0C32314A00;
  v111 = (v110 ^ 0x7203B3B8D5E93D1ALL ^ v109) + ((v60 >> 8) ^ 0x61FBB169FB7B5EFFLL) + ((2 * (v60 >> 8)) & 0xC3F762D3F6F6BDFELL) - 0x61FBB169FB7B5EFFLL;
  v112 = (v111 - ((2 * v111) & 0x148CDEC55EEAC282) - 0x75B9909D508A9EBFLL) ^ 0x725F4517448D93DFLL;
  LOBYTE(v67) = v67 ^ 0x16;
  v113 = (4 * ((v112 << v67) - ((2 * (v112 << v67)) & 0x20C4748972415900)) - 0x3E7716ED1B7D4D54) ^ 0xC188E912E482B2ACLL;
  v114 = (v112 >> v79) - ((2 * (v112 >> v79)) & 0x47616B84CD2B3DBELL);
  v115 = a2 - 0x27C3370D067AB98ALL - ((2 * (a2 - 0x27C3370D067AB98ALL)) & 0xA09678C8154F2DB8) - 0x2FB4C39BF5586924;
  v116 = v82 - ((2 * v82) & 0x32CA7456756BBECALL) + 0x19653A2B3AB5DF65;
  v117 = ((v113 - ((2 * v113) & 0x2FAD0F2ED7CD3E08) + 0x17D687976BE69F06) ^ 0x17D687976BE69F06) + (v116 ^ 0x19653A2B3AB5DF65);
  v118 = ((((v115 << 56) ^ 0xDC00000000000000) - ((2 * ((v115 << 56) ^ 0xDC00000000000000)) & 0x6000000000000000) - 0x4FDA8FF1BC63359ELL) & 0xF800000000000000 | (v115 >> 8)) ^ 0xB0D04B3C640AA796;
  v119 = (v118 - ((2 * v118) & 0xB1985DA524022E86) + 0x5CCC2ED292011743) ^ 0x5CCC2ED292011743;
  v120 = v119 - ((2 * v119 + 0x25616341D67C2B0ELL) & 0x313FBCE57D2FDF48) + 0xB509013A9D6052BLL;
  *(&v60 + 1) = (v119 - ((2 * v119 - 696505586) & 0x7D2FDF48) - 1445591765) ^ 0xFFFFFF8F;
  *&v60 = v120 ^ 0xCCD8E80722E98200;
  v121 = v117 - ((2 * v117) & 0x3DF6D05DD7EF011ELL) - 0x610497D114087F71;
  v122 = (v120 ^ 0x595D65007B192EB4) + ((v60 >> 8) ^ 0xDFA7DC5FEEBFBEDDLL) + ((2 * (v60 >> 8)) & 0xBF4FB8BFDD7F7DBALL) + 0x205823A011404123;
  v123 = v122 - ((2 * v122) & 0xD83BB147EE49240ELL) - 0x13E2275C08DB6DF9;
  *(&v60 + 1) = v120 ^ 0x195D65007B192EB4;
  *&v60 = v120 ^ 0x4000000000000000;
  v124 = v123 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x41FD2F06D3810BFELL) - 0x5F01687C963F7A01);
  *(&v60 + 1) = v123 ^ 0xDE;
  *&v60 = v123 ^ 0x9D6E47946CDD1D00;
  v125 = (v124 ^ 0x3D90D017051D9821) + ((v60 >> 8) ^ 0xD6D7B8753EDE2ABBLL) + ((2 * (v60 >> 8)) & 0xADAF70EA7DBC5576) + 0x2928478AC121D545;
  v126 = v125 - ((2 * v125) & 0x4D42993C57136E98) - 0x595EB361D47648B4;
  *(&v60 + 1) = v124 ^ 0x1D90D017051D9821;
  *&v60 = v124 ^ 0x2000000000000000;
  v127 = v126 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0xADB3A2EC8E7E7856) - 0x29262E89B8C0C3D5);
  *(&v60 + 1) = v126 ^ 0x39;
  *&v60 = v126 ^ 0xD87B5C46C3345300;
  v128 = (v127 ^ 0xEA28D30840B6F12) + ((v60 >> 8) ^ 0xF3D547FF75F3E7EELL) + ((2 * (v60 >> 8)) & 0xE7AA8FFEEBE7CFDCLL) + 0xC2AB8008A0C1812;
  v129 = v128 - ((2 * v128) & 0x12F277DC2EEA1626) - 0x7686C411E88AF4EDLL;
  *(&v60 + 1) = v127 ^ 0xEA28D30840B6F12;
  *&v60 = v127;
  v130 = v129 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x5498B70585CB7A34) + 0x2A4C5B82C2E5BD1ALL);
  *(&v60 + 1) = v129 ^ 0xB5;
  *&v60 = v129 ^ 0x4266EAEB1E6F7E00;
  v131 = (v130 ^ 0x682AB169DC8AC3AFLL) + ((v60 >> 8) ^ 0xAFF23FBFFF5EFF9DLL) + ((2 * (v60 >> 8)) & 0x5FE47F7FFEBDFF3ALL) + 0x500DC04000A10063;
  v132 = v131 - ((2 * v131) & 0x264E6F2A952C1B8ALL) + 0x132737954A960DC5;
  *(&v60 + 1) = v130 ^ 0x82AB169DC8AC3AFLL;
  *&v60 = v130 ^ 0x6000000000000000;
  v133 = v132 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0x732A0BB6EDA80EE4) - 0x466AFA24892BF88ELL);
  *(&v60 + 1) = v132 ^ 0xC;
  *&v60 = v132 ^ 0x93841FE1C922CA00;
  v134 = (v133 ^ 0x2A111A3ABFF6CD7ELL) + ((v60 >> 8) ^ 0x75F87EFF7F4F7BDFLL) + ((2 * (v60 >> 8)) & 0xEBF0FDFEFE9EF7BELL) - 0x75F87EFF7F4F7BDFLL;
  v135 = v134 - ((2 * v134) & 0xA7984AAE0C117EA0) + 0x53CC25570608BF50;
  *(&v60 + 1) = v133 ^ 0xA111A3ABFF6CD7ELL;
  *&v60 = v133 ^ 0x2000000000000000;
  v136 = v135 ^ ((v60 >> 61) - ((2 * (v60 >> 61)) & 0xC39FAB70AE8C8B4ELL) - 0x1E302A47A8B9BA59);
  *(&v60 + 1) = v135 ^ 0x2B;
  *&v60 = v135 ^ 0xD6AEE0E7FB2EAE00;
  v137 = (v136 ^ 0x3761355FAC68EB8CLL) + ((v60 >> 8) ^ 0x7CECFBEFC5D7D7FFLL) + ((2 * (v60 >> 8)) & 0xF9D9F7DF8BAFAFFELL) - 0x7CECFBEFC5D7D7FFLL;
  v138 = v137 - ((2 * v137) & 0xBD7832EB3F0357DCLL) - 0x2143E68A607E5412;
  *(&v60 + 1) = v136 ^ 0x1761355FAC68EB8CLL;
  *&v60 = v136 ^ 0x2000000000000000;
  v139 = ((v138 >> 8) ^ 0x494975C564B7B1) + (((v60 >> 61) - ((2 * (v60 >> 61)) & 0x514896D0E03BC230) + 0x28A44B68701DE118) ^ 0xE1ED3EAD14AA5085 ^ v138);
  v140 = (v139 ^ 0xF91BADEFEEFF7F46) + ((2 * v139) & 0xF2375BDFDDFEFE8CLL) + 0x6E45210110080BALL + ((((v138 << 56) ^ 0x9D00000000000000) - ((2 * ((v138 << 56) ^ 0x9D00000000000000)) & 0xB400000000000000) + 0x5A61A2EF0B56D546) ^ 0x5A61A2EF0B56D546);
  v141 = ((v140 - ((2 * v140) & 0x7F74705275705BA4) + 0x3FBA38293AB82DD2) ^ 0x7A3125CD140DF4CLL) << v67;
  v142 = (4 * (v141 - ((2 * v141) & 0x39C471B621269C80)) + 0x7388E36C424D394CLL) ^ 0x7388E36C424D394CLL;
  LOBYTE(v104) = v114 - 33;
  v143 = ((v114 - 0x5C4F4A3D996A6121) ^ 0xA3B0B5C266959EDFLL) + ((v142 - ((2 * v142) & 0x24463504EC8F8B88) + 0x12231A827647C5C7) ^ 0x12231A827647C5C7);
  v144 = v143 - ((2 * v143) & 0xA4DE263B038B3AE2) + 0x526F131D81C59D71;
  LODWORD(v116) = v116 ^ v6[v116 ^ 0xD2];
  LODWORD(v114) = (((v116 ^ 0x32) - ((2 * v116) & 0x18)) << 24) - 1660944384;
  LODWORD(v138) = v15[BYTE1(v121) ^ 0xC4];
  LODWORD(v138) = ((((v138 ^ 0x2A) - ((2 * v138) & 0x12A)) << 16) + 915734528) ^ 0x36950000;
  LODWORD(v114) = (v138 - ((2 * v138) & 0x27FE0000) + 335499129) ^ 0x13FF4F79 | (((v114 - 285212672) ^ 0x8C000000) - ((2 * (v114 - 285212672)) & 0x20000000) - 1872254230) ^ 0x9067AAEA;
  LODWORD(v138) = v10[BYTE2(v121) ^ 0x25] ^ 0x10;
  LODWORD(v138) = (((v138 - ((2 * v138) & 0x22222222)) << 8) + 1794576640) ^ 0x6AF71100;
  LODWORD(v114) = (v114 - ((2 * v114) & 0xE404EDBC) - 234719522) ^ 0xF20276DE | (v138 - ((2 * v138) & 0x4A311800) + 622365927) ^ 0x25188CE7;
  LODWORD(v138) = v9[BYTE3(v121) ^ 0x44] ^ 0xAE;
  LODWORD(v114) = (v114 - ((2 * v114) & 0x16A42284) + 189927746) ^ 0xB521142 | (v138 - ((2 * v138) & 0x11111111) + 2093133192) ^ 0x7CC2AD88;
  LODWORD(v67) = v6[BYTE4(v121) ^ 0x6ALL];
  LODWORD(STACK[0x8F0]) = v114 - ((2 * v114) & 0x74DCF32E) - 1167165033;
  LODWORD(v114) = ((((BYTE4(v121) ^ 0x33 ^ v67) - 2 * ((BYTE4(v121) ^ 0x33 ^ v67) & 3)) << 24) - 2097152000) ^ 0x83000000;
  LODWORD(v67) = v15[BYTE5(v121) ^ 0x3ELL];
  LODWORD(v138) = ((((v67 ^ 0x40) - 2 * (v67 & 1)) << 16) - 452919296) ^ 0xE5010000;
  LODWORD(v114) = (v138 - ((2 * v138) & 0x687E0000) - 197181735) ^ 0xF43F3ED9 | (v114 - ((2 * v114) & 0x1E000000) + 266243245) ^ 0xFDE8CAD;
  LODWORD(v138) = v10[BYTE6(v121) ^ 0x8CLL] ^ 0x19;
  LODWORD(v138) = (((v138 - ((2 * v138) & 0xD2)) << 8) - 983209728) ^ 0xC5656900;
  LODWORD(v114) = (v114 - ((2 * v114) & 0x550452C) - 2102910314) ^ 0x82A82296 | (v138 - ((2 * v138) & 0x63815800) - 239031199) ^ 0xF1C0AC61;
  LODWORD(v121) = v9[HIBYTE(v121) ^ 0x2B] ^ 0x78;
  LODWORD(v121) = (v114 + 2067459937 + (~(2 * v114) | 0x98A213D) + 1) ^ 0x7B3AEF61 | (v121 - ((2 * v121) & 0x1AE) - 1730955049) ^ 0x98D3B8D7;
  LODWORD(STACK[0x8E8]) = v121 - ((2 * v121) & 0x718268B2) + 952185945;
  LODWORD(v121) = v104 ^ 0xC5 ^ v6[v104 ^ 0x55];
  LODWORD(v121) = (((v121 - ((2 * v121) & 0xB2)) << 24) + 1493172224) ^ 0x59000000;
  LODWORD(v104) = v15[BYTE1(v144) ^ 0xDFLL] ^ 0x2C;
  LODWORD(v104) = (((v104 - ((2 * v104) & 0x2E)) << 16) + 303497216) ^ 0x12170000;
  LODWORD(v121) = (v104 - ((2 * v104) & 0x14140000) + 1242213922) ^ 0x4A0AAE22 | (v121 - ((2 * v121) & 0x70000000) - 1197915641) ^ 0xB8994207;
  LODWORD(v104) = v10[BYTE2(v144) ^ 0xC2] ^ 6;
  LODWORD(v104) = (((v104 - ((2 * v104) & 0xD4)) << 8) + 2076994048) ^ 0x7BCC6A00;
  LODWORD(v121) = (v121 - ((2 * v121) & 0xD7426128) + 1805725844) ^ 0x6BA13094 | (v104 - ((2 * v104) & 0x5C6F9800) - 1372074927) ^ 0xAE37CC51;
  LODWORD(v104) = v9[BYTE3(v144) ^ 0x95] ^ 0xF3;
  LODWORD(v121) = (v121 - ((2 * v121) & 0x1BD859C4) - 1913901854) ^ 0x8DEC2CE2 | (v104 - ((2 * v104) & 0xBC) + 745772126) ^ 0x2C73945E;
  LODWORD(STACK[0x8C0]) = v121 - ((2 * v121) & 0x5A0BCCB0) - 1392122280;
  STACK[0x920] = v6;
  LODWORD(v121) = BYTE4(v144) ^ 0xA0 ^ v6[BYTE4(v144) ^ 0x23];
  LODWORD(v121) = (((v121 - ((2 * v121) & 0xFFFFFFDF)) << 24) - 285212672) ^ 0xEF000000;
  STACK[0x8F8] = v15;
  LODWORD(v116) = v15[BYTE5(v144) ^ 0x74] ^ 0xF1;
  LODWORD(v116) = ((v116 - ((2 * v116) & 0xC8)) << 16) - 1805385728;
  LODWORD(v121) = ((v116 ^ 0x94640000) - ((2 * v116) & 0x51300000) - 392674192) ^ 0xE8984470 | (v121 - ((2 * v121) & 0x3C000000) + 506449412) ^ 0x1E2FCE04;
  STACK[0x900] = v10;
  LODWORD(v116) = v10[BYTE6(v144) ^ 0x1CLL] ^ 0x65;
  LODWORD(v116) = (((v116 - ((2 * v116) & 0xFFFFFFC3)) << 8) - 2061442816) ^ 0x8520E100;
  LODWORD(v121) = (v121 - ((2 * v121) & 0xE902CB56) - 192846421) ^ 0xF48165AB | (v116 - ((2 * v116) & 0x3359E400) + 430764691) ^ 0x19ACF293;
  STACK[0x910] = v9;
  LODWORD(v144) = v9[HIBYTE(v144) ^ 0x17] ^ 0xC2;
  LODWORD(v121) = (v121 - ((2 * v121) & 0xE488E088) + 1917087812) ^ 0x72447044 | (v144 - ((2 * v144) & 0x9A) + 1668777549) ^ 0x6377864D;
  LODWORD(STACK[0x8D8]) = v121 - ((2 * v121) & 0x23C2ABB0) + 299980248;
  LODWORD(STACK[0x8B8]) = v37 ^ 0x3D61C5BE;
  LODWORD(STACK[0x8C8]) = (v56 + 459) ^ 0x91031BB5;
  LODWORD(STACK[0x708]) = v2 ^ v4;
  LODWORD(STACK[0x8E0]) = v41 + 1;
  LODWORD(STACK[0x8D0]) = v44 + 1909310406;
  v145 = *(v5 + 8 * SLODWORD(STACK[0x950]));
  LODWORD(STACK[0x700]) = 1233818680;
  v146 = STACK[0x960];
  STACK[0x6F8] = STACK[0x960];
  STACK[0x6F0] = v146 - 0x4998816651743FFELL;
  v147 = STACK[0x968];
  STACK[0x6E8] = STACK[0x968];
  STACK[0x6E0] = v147 - 0x610FC8725D1E70CCLL;
  LODWORD(STACK[0x888]) = 1622879388;
  LODWORD(STACK[0x898]) = 1752044644;
  LODWORD(STACK[0x890]) = -1455151523;
  LODWORD(STACK[0x8A0]) = -1451808866;
  return v145();
}

uint64_t sub_10003F57C()
{
  LODWORD(STACK[0x710]) = 0;
  LODWORD(STACK[0x7D8]) = v1;
  v2 = (v1 + 2122174223) & 0xBF9B4E57;
  v3 = v0 ^ 0x3906AB29;
  STACK[0x8A8] = v3;
  STACK[0x718] = (v1 - 11614) | 0x694u;
  v4 = (v0 ^ 0xAAD8FB7746E96450) + 0x5527048880103087 + ((v3 << (((v1 - 94) | 0x94) ^ 0xD5u)) & 0xFFDF9EF2);
  v5 = STACK[0x6F8] + v4;
  STACK[0x950] = v4;
  LODWORD(STACK[0x750]) = v2;
  v6 = v0;
  v7 = v5 - 0x4998816651743FFELL - ((2 * (v5 - 0x4998816651743FFELL)) & 0xD3BCBCD535F155E2) + 0x69DE5E6A9AF8AAF1;
  LOBYTE(v2) = (8 * (v5 + 2 + (v2 ^ 0x4E)) - ((16 * (v5 + 2 + (v2 ^ 0x4E)) + 16) & 0x20) + 24) & 0x38;
  v8 = ((((v7 << 56) ^ 0xF100000000000000) - ((2 * ((v7 << 56) ^ 0xF100000000000000)) & 0xE00000000000000) + 0x76EB2D99A8A5836) & 0xF800000000000000 | (v7 >> 8)) ^ 0x69DE5E6A9AF8AALL;
  v9 = (v8 - 0x5B188E7F2D4B004CLL - ((2 * v8) & 0x41CEE301A569FF68)) ^ 0xA4E77180D2B4FFB4;
  v10 = v9 - ((2 * v9 - 0x1A9E9CBE2983D4F2) & 0xB5D2D0495B0CAFB2) + 0x4D9A19C598C46D60;
  *(&v12 + 1) = v10 ^ 0xF2;
  *&v12 = v10 ^ 0x8EAE5E5131F83A00;
  v11 = v12 >> 8;
  *(&v12 + 1) = v10 ^ 0x1B2BD356680896C9;
  *&v12 = v10;
  v13 = (v10 ^ 0x1B2BD356680896C9) + (v11 ^ 0x4FE9FDFF7BFF76ABLL) + ((2 * v11) & 0x9FD3FBFEF7FEED56) - 0x4FE9FDFF7BFF76ABLL;
  v14 = v13 - ((2 * v13) & 0xDB793A5288A6B196) + 0x6DBC9D29445358CBLL;
  v15 = v14 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x16CC8BDCC53E567ALL) - 0x7499BA119D60D4C3);
  *(&v12 + 1) = v14 ^ 0x12;
  *&v12 = v14 ^ 0x1CCF021EDFAAD700;
  v16 = (v15 ^ 0x97A947F0BD35FC2FLL) + ((v12 >> 8) ^ 0x7BE39772C6F7DFBELL) + ((2 * (v12 >> 8)) & 0xF7C72EE58DEFBF7CLL) - 0x7BE39772C6F7DFBELL;
  *(&v12 + 1) = v15 ^ 0x17A947F0BD35FC2FLL;
  *&v12 = v15 ^ 0x8000000000000000;
  v17 = v16 - ((2 * v16) & 0xBA2280A4A0CB9038) - 0x22EEBFADAF9A37E4;
  v18 = v17 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x198F9A078E93E58ALL) + 0xCC7CD03C749F2C5);
  *(&v12 + 1) = v17 ^ 0x69;
  *&v12 = v17 ^ 0xA3CB508AB8D82C00;
  v19 = (v18 ^ 0xAF0C9D897F91DEACLL) + ((v12 >> 8) ^ 0x5E7DFDC273ECFDEFLL) + ((2 * (v12 >> 8)) & 0xBCFBFB84E7D9FBDELL) - 0x5E7DFDC273ECFDEFLL;
  v20 = v19 - ((2 * v19) & 0x87A1AC5DE1B77866) + 0x43D0D62EF0DBBC33;
  *(&v12 + 1) = v18 ^ 0xF0C9D897F91DEACLL;
  *&v12 = v18 ^ 0xBFFFFFFFFFFFFFFFLL;
  v21 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0xA12EEE07D2D396F2) - 0x2F6888FC16963487;
  *(&v12 + 1) = v20 ^ 0x95;
  *&v12 = v20 ^ 0x88CF072BF9C1C900;
  v22 = v20 ^ v21;
  v23 = (v22 ^ 0x5858702810A802ECLL) + ((v12 >> 8) ^ 0x8FBFFA9FF9AEF8EALL) + ((2 * (v12 >> 8)) & 0x1F7FF53FF35DF1D4) + 0x7040056006510716;
  *(&v12 + 1) = v22 ^ 0x1858702810A802ECLL;
  *&v12 = v22 ^ 0x4000000000000000;
  v24 = v23 - ((2 * v23) & 0x5D1CC638D3E644FELL) + 0x2E8E631C69F3227FLL;
  v25 = v24 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xCBAF1853F0C0B4DELL) + 0x65D78C29F8605A6FLL);
  *(&v12 + 1) = v24 ^ 0xB6;
  *&v12 = v24 ^ 0xAE2D4B68EA47E500;
  v26 = (v25 ^ 0xCBFAC7411227BFD9) + ((v12 >> 8) ^ 0xD3EBFEFFB6EFDEFELL) + ((2 * (v12 >> 8)) & 0xA7D7FDFF6DDFBDFCLL);
  v27 = (2 * v26 + 0x5828020092204204) & 0x4465E6B2EE789454;
  v26 += 0x4E46F459C04C6B2CLL;
  v28 = v26 - v27;
  *(&v12 + 1) = v25 ^ 0xBFAC7411227BFD9;
  *&v12 = v25 ^ 0xC000000000000000;
  v29 = v28 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x13EFE2B0B6DB30C6) - 0x76080EA7A492679DLL);
  v30 = (((v28 & 0x46 ^ 0xFFFFFFFFFFFFFFF9) - ((2 * v26) & 4) + 0x54FB78A9550CDALL) ^ 0xFFAB048756AAF32ALL) - (v28 ^ 0x58AFC91675E5A4E8);
  *(&v12 + 1) = v28 ^ 0x51;
  *&v12 = (v30 ^ 0x9FEFFB7E37E667B3) + 0x60100481C819984DLL + ((2 * v30) & 0x3FDFF6FC6FCCCF66);
  v31 = (v29 ^ 0x2EA7C7B1D177C332) + ((v12 >> 8) ^ 0x7BFEEFB3BFF68E7DLL) + ((2 * (v12 >> 8)) & 0xF7FDDF677FED1CFALL) - 0x7BFEEFB3BFF68E7DLL;
  *(&v12 + 1) = v29 ^ 0xEA7C7B1D177C332;
  *&v12 = v29 ^ 0x2000000000000000;
  v32 = v31 - ((2 * v31) & 0x8AD852AE41AFAE20) - 0x3A93D6A8DF2828F0;
  v33 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x2341BC5F6499C50ALL) - 0x6E5F21D04DB31D7BLL;
  *(&v12 + 1) = v32 ^ 0x63;
  *&v12 = v32 ^ 0x529945E7DBE1CD00;
  v34 = (v33 ^ 0xC3399BC869AD2FE6 ^ v32) + ((v12 >> 8) ^ 0xFF7DF66BEFBEBBFFLL) + ((2 * (v12 >> 8)) & 0xFEFBECD7DF7D77FELL) + 0x82099410414401;
  v35 = ((v34 - ((2 * v34) & 0xB2C4D1886C2A12BELL) + 0x596268C43615095FLL) ^ 0xA17B42B1DDEDFBC1) >> (v2 ^ 0x30);
  v36 = v35 - 0x7BA473C854F7D490 - ((2 * v35) & 0x8B7186F561056E0);
  v37 = v5 - 0x4998816651743FF6 - ((2 * (v5 - 0x4998816651743FF6)) & 0x5A57532C4BC83E7ALL) + 0x2D2BA99625E41F3DLL;
  v38 = ((((v37 << 56) ^ 0x3D00000000000000) - ((2 * ((v37 << 56) ^ 0x3D00000000000000)) & 0x8FFFFFFFFFFFFFFFLL) + 0x47DAFA25AC5A8695) & 0xF800000000000000 | (v37 >> 8)) ^ 0x402D2BA99625E41FLL;
  v39 = (v38 + 0x164FBC28551931AALL - ((2 * v38) & 0x209F7850AA326354)) ^ 0x164FBC28551931AALL;
  v40 = v39 - ((2 * v39 + 0x65616341D67C2B0ELL) & 0x65EBB5ABE88167D8);
  *(&v12 + 1) = (v40 - 545339021) ^ 0xFFFFFFC7;
  *&v12 = (v40 - 0x5A5973892081368DLL) ^ 0x66B2ECA0683EDE00;
  v41 = ((v40 - 0x5A5973892081368DLL) ^ 0xF33761A731CE72FCLL) + ((v12 >> 8) ^ 0xEFB4F7FEFBDA8FD5) + ((2 * (v12 >> 8)) & 0xDF69EFFDF7B51FAALL) + 0x104B08010425702BLL;
  v42 = v41 - ((2 * v41) & 0xB3FE0A78AB2B73D8) - 0x2600FAC3AA6A4614;
  *(&v12 + 1) = (v40 - 0x5A5973892081368DLL) ^ 0x133761A731CE72FCLL;
  *&v12 = 0x5A5973892081368CLL - v40;
  v43 = v42 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x2BA43638C65A56FCLL) - 0x6A2DE4E39CD2D482);
  *(&v12 + 1) = v42 ^ 0x35;
  *&v12 = v42 ^ 0xA88C9A0BCE6C3600;
  v44 = (v43 ^ 0x3D5E8117AD411D4BLL) + ((v12 >> 8) ^ 0xB7EFDEEBDAEBDDFELL) + ((2 * (v12 >> 8)) & 0x6FDFBDD7B5D7BBFCLL) + 0x4810211425142202;
  v45 = v44 - ((2 * v44) & 0x55876048338EF0BCLL) - 0x553C4FDBE63887A2;
  *(&v12 + 1) = v43 ^ 0x1D5E8117AD411D4BLL;
  *&v12 = v43 ^ 0x2000000000000000;
  v46 = ((v12 >> 61) - 0xFA0C957FB45A7C2 - ((2 * (v12 >> 61)) & 0xE0BE6D500974B07CLL)) ^ 0xF05F36A804BA583ELL;
  v47 = 2 * (((v45 ^ 0xD419A0FCF17A9C2BLL) & v46) - ((2 * ((v45 ^ 0xD419A0FCF17A9C2BLL) & v46)) & 0x3D263DD4C7ACC152)) + 0x3D263DD4C7ACC152;
  v48 = (((v45 ^ 0xD419A0FCF17A9C2BLL) + v46) ^ 0xFFFF43FFFFBEFDFFLL) + ((2 * ((v45 ^ 0xD419A0FCF17A9C2BLL) + v46)) & 0xFFFE87FFFF7DFBFELL) + 0xBC0000410202 + (((v47 ^ 0x3D263DD4C7ACC152) - 2 * ((v47 ^ 0x3D263DD4C7ACC152) & 0xB059EBA02B133EALL ^ v47 & 0x20) - 0x74FA6145FD4ECC36) ^ 0x74FA6145FD4ECC35);
  v49 = ((2 * v48) & 0xFF7BBF79EFDFFEFALL) + (v48 ^ 0xFFBDDFBCF7EFFF7DLL);
  *(&v12 + 1) = v45 ^ 0x2B;
  *&v12 = v45 ^ 0xD419A0FCF17A9C00;
  v50 = ((2 * (v12 >> 8)) & 0xDF7FF7D76FFFBFAELL) + ((v12 >> 8) ^ 0xEFBFFBEBB7FFDFD7) + v49;
  v51 = v50 - ((2 * v50 + 0x210448AEA0204158) & 0xC7AEF8E763943698) + 0x7459A0CB01DA3BF8;
  *&v12 = __ROR8__(v49 + 0x42204308100083, 61);
  v52 = v51 ^ (v12 - ((2 * v12) & 0xFFC2E1CA39ACAA62) + 0x7FE170E51CD65531);
  *(&v12 + 1) = v51 ^ 0xEA;
  *&v12 = v51 ^ 0xA8C8AD76B8D06E00;
  v53 = (v52 ^ 0xD729DD93A4063BDBLL) + ((v12 >> 8) ^ 0x6D90F577DFFCEDFDLL) + ((2 * (v12 >> 8)) & 0xDB21EAEFBFF9DBFALL) - 0x6D90F577DFFCEDFDLL;
  v54 = v53 - ((2 * v53) & 0x255368806C368F04) - 0x6D564BBFC9E4B87ELL;
  *(&v12 + 1) = v52 ^ 0x1729DD93A4063BDBLL;
  *&v12 = v52 ^ 0xC000000000000000;
  v55 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x96C39FED90B1B504) + 0x4B61CFF6C858DA82;
  *(&v12 + 1) = v54 ^ 0x4B;
  *&v12 = v54 ^ 0x120A9C34B5AF8000;
  v56 = v54 ^ v55;
  v57 = (v56 ^ 0x596B53C27DF75AC9) + ((v12 >> 8) ^ 0x46FDDECF05E7ABFFLL) + ((2 * (v12 >> 8)) & 0x8DFBBD9E0BCF57FELL) - 0x46FDDECF05E7ABFFLL;
  v58 = v57 - ((2 * v57) & 0x3DC3E27F93628D4CLL) + 0x1EE1F13FC9B146A6;
  *(&v12 + 1) = v56 ^ 0x196B53C27DF75AC9;
  *&v12 = v56 ^ 0x4000000000000000;
  v59 = v58 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x7F15A17F2C53CB7CLL) + 0x3F8AD0BF9629E5BELL);
  *(&v12 + 1) = v58 ^ 0xDDDDDDDD;
  *&v12 = v58 ^ 0x9B83348F34975700;
  v60 = (v59 ^ 0xA409E430A2BEB263) + ((v12 >> 8) ^ 0xE9BE8E7FF7F59EEELL) + ((2 * (v12 >> 8)) & 0xD37D1CFFEFEB3DDCLL) + 0x16417180080A6112;
  v61 = v60 - ((2 * v60) & 0xBDF4EBD6B28F464) + 0x5EFA75EB5947A32;
  *(&v12 + 1) = v59 ^ 0x409E430A2BEB263;
  *&v12 = v59 ^ 0xBFFFFFFFFFFFFFFFLL;
  v62 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0xCAE4614BB5833F50) - 0x1A8DCF5A253E6058;
  *(&v12 + 1) = v61 ^ 0x41;
  *&v12 = v61 ^ 0x921ACBEE4EA26000;
  v63 = (v62 ^ 0x7768FB4B9463FFE9 ^ v61) + ((v12 >> 8) ^ 0x432C7ED5FFD5E78FLL) + ((2 * (v12 >> 8)) & 0x8658FDABFFABCF1ELL) - 0x432C7ED5FFD5E78FLL;
  v64 = (v63 - ((2 * v63) & 0x23CC5E5644B8266) - 0x7EE19D0D4DDA3ECDLL) ^ 0x7907488759DD33ADLL;
  v65 = (v64 >> (v2 ^ 0x30)) + 0x4EC9CB54360853EDLL - ((2 * (v64 >> (v2 ^ 0x30))) & 0x9D9396A86C10A7DALL);
  LOBYTE(v3) = v2 ^ 0xD;
  v66 = (8 * ((v64 << (v2 ^ 0xD)) - ((2 * (v64 << (v2 ^ 0xD))) & 0xC28C08C408D5480)) - 0x4F5CFDCEFDCAAD40) ^ 0xB0A30231023552C0;
  v67 = ((v66 - 0x597E6C621D6ADE87 - ((2 * v66) & 0x4D03273BC52A42F0)) ^ 0xA681939DE2952179) + (v36 ^ 0x845B8C37AB082B70);
  v68 = v67 - ((2 * v67) & 0x6A402622F6AA679ALL) + 0x352013117B5533CDLL;
  v69 = v5 + 0x4E8842D9A49C7112 - ((2 * (v5 - 0x4998816651743FEELL)) & 0x3041887FEC21624CLL) + 38;
  *(&v12 + 1) = v69 & 0xF8 ^ 0x20;
  *&v12 = v69 ^ 0x9820C43FF610B100;
  v70 = ((2 * (v12 >> 8)) & 0xD0B0FE7ECFDE3FF6) + ((v12 >> 8) ^ 0xE9587F3F67EF1FFBLL);
  v71 = v70 - ((2 * v70 + 0x12B064C3069DEB18) & 0x2A5644C5C7AEA2FCLL) + 0x1E8354C46726470ALL;
  *(&v12 + 1) = v71 ^ 0x55555555;
  *&v12 = v71 ^ 0xC16C14177FA93C00;
  v72 = (v71 ^ 0x54E999102659906ELL) + ((v12 >> 8) ^ 0xDBEDBE797FFAEFFLL) + ((2 * (v12 >> 8)) & 0x1B7DB7CF2FFF5DFELL) - 0xDBEDBE797FFAEFFLL;
  v73 = v72 - ((2 * v72) & 0x80F79DAB50BBCB26) + 0x407BCED5A85DE593;
  *(&v12 + 1) = v71 ^ 0x14E999102659906ELL;
  *&v12 = v71 ^ 0x4000000000000000;
  v74 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x9DDDA29D8BEF3E92) - 0x31112EB13A0860B7;
  *(&v12 + 1) = v73 ^ 0x4A;
  *&v12 = v73 ^ 0x310851E233A46A00;
  v75 = (v73 ^ v74 ^ 0xFFE680ACF653F503) + ((v12 >> 8) ^ 0xB63FEAFFBFDFDFDELL) + ((2 * (v12 >> 8)) & 0x6C7FD5FF7FBFBFBCLL) + 0x49C0150040202022;
  *(&v12 + 1) = v73 ^ v74 ^ 0x1FE680ACF653F503;
  *&v12 = v73 ^ ~v74;
  v76 = v75 - ((2 * v75) & 0xFB7E257BF00689F4) - 0x240ED4207FCBB06;
  v77 = v76 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x984F64B6104D17B0) + 0x4C27B25B08268BD8);
  *(&v12 + 1) = v76 ^ 0xFFFFFF8F;
  *&v12 = v76 ^ 0x8365026510BEA000;
  v78 = (v77 ^ 0xCF42B03E18982B57) + ((v12 >> 8) ^ 0xFF6FD7FEFD49F7FDLL) + ((2 * (v12 >> 8)) & 0xFEDFAFFDFA93EFFALL) + 0x90280102B60803;
  v79 = v78 - ((2 * v78) & 0x5DA9415E7C91B20ELL) - 0x512B5F50C1B726F9;
  *(&v12 + 1) = v77 ^ 0xF42B03E18982B57;
  *&v12 = v77 ^ 0xC000000000000000;
  v80 = v79 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x6C0C53ADB2DB52A8) + 0x360629D6D96DA954);
  *(&v12 + 1) = v79 ^ 0xA1;
  *&v12 = v79 ^ 0x65CB71AA3752AC00;
  v81 = (v80 ^ 0x53CD587CEE3F05F5) + ((v12 >> 8) ^ 0xBF7F97E7FF6DF77ALL) + ((2 * (v12 >> 8)) & 0x7EFF2FCFFEDBEEF4) + 0x4080681800920886;
  *(&v12 + 1) = v80 ^ 0x13CD587CEE3F05F5;
  *&v12 = v80 ^ 0x4000000000000000;
  v82 = v81 - ((2 * v81) & 0x6B7AC754584F3728) + 0x35BD63AA2C279B94;
  v83 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x800D5CFA7CDD51F4) + 0x4006AE7D3E6EA8FALL;
  *(&v12 + 1) = v82 ^ 0x5D;
  *&v12 = v82 ^ 0xB51E4BDEAF935C00;
  v84 = (v82 ^ v83 ^ 0xF518E5A391FDF4A7) + ((v12 >> 8) ^ 0x2FDE5FFF6D7B3FB7) + ((2 * (v12 >> 8)) & 0x5FBCBFFEDAF67F6ELL) - 0x2FDE5FFF6D7B3FB7;
  v85 = v84 - ((2 * v84) & 0xAF45672A42BEDC2ALL) - 0x285D4C6ADEA091EBLL;
  *(&v12 + 1) = v82 ^ v83 ^ 0x1518E5A391FDF4A7;
  *&v12 = v82 ^ ~v83;
  v86 = v85 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xCF874EEA4B3111A0) + 0x67C3A775259888D0);
  *(&v12 + 1) = v85 ^ 0x6E;
  *&v12 = v85 ^ 0x52C07625DC797F00;
  v87 = (v86 ^ 0x3503D150F9E1F7BELL) + ((v12 >> 8) ^ 0xDDFE7BEBEA7FFDFFLL) + ((2 * (v12 >> 8)) & 0xBBFCF7D7D4FFFBFELL) + 0x2201841415800201;
  *(&v12 + 1) = v86 ^ 0x1503D150F9E1F7BELL;
  *&v12 = v86 ^ 0x2000000000000000;
  v88 = v87 - ((2 * v87) & 0xB415181CF60FDC56) + 0x5A0A8C0E7B07EE2BLL;
  v89 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0xB91A765B752C1DB4) + 0x5C8D3B2DBA960EDALL;
  *(&v12 + 1) = v88 ^ 0x58;
  *&v12 = v88 ^ 0xCDFFE0BE8031F400;
  v90 = (v89 ^ 0x9172DB933AA7FA82 ^ v88) + ((v12 >> 8) ^ 0xEDFBDFE7E2B59FE7) + ((2 * (v12 >> 8)) & 0xDBF7BFCFC56B3FCELL) + 0x120420181D4A6019;
  v91 = ((v90 - ((2 * v90) & 0xBB6B38852732D898) + 0x5DB59C4293996C4CLL) ^ 0x45ACB63778619ED2) << v3;
  v92 = (8 * (v91 - ((2 * v91) & 0x50CC4F3C2E6F600)) + 0x143313CF0B9BD848) ^ 0x143313CF0B9BD848;
  v93 = (v65 ^ 0x4EC9CB54360853EDLL) + ((v92 + 0x74CDE7EA318DAF15 - ((2 * v92) & 0xE99BCFD4631B5E20)) ^ 0x74CDE7EA318DAF15);
  v94 = v93 - ((2 * v93) & 0x5D96931644430ALL) + 0x2ECB498B222185;
  v95 = STACK[0x920];
  LODWORD(v36) = *(STACK[0x920] + (v36 ^ 0xBFLL)) ^ v36 ^ 0xF;
  LODWORD(v36) = (((v36 - ((2 * v36) & 0x38)) << 24) + 469762048) ^ 0x1C000000;
  v96 = STACK[0x8F8];
  LODWORD(v42) = *(STACK[0x8F8] + (BYTE1(v68) ^ 0xF5)) ^ 0x23;
  LODWORD(v42) = (((v42 - ((2 * v42) & 0x6A)) << 16) + 1530200064) ^ 0x5B350000;
  LODWORD(v36) = (v36 + 145515420 - ((2 * v36) & 0x10000000)) ^ 0x8AC639C | (v42 - 1060745205 - ((2 * v42) & 0x18C0000)) ^ 0xC0C6500B;
  v97 = STACK[0x900];
  LODWORD(v42) = *(STACK[0x900] + (BYTE2(v68) ^ 0x6BLL)) ^ 0xCF;
  LODWORD(v42) = (((v42 - ((2 * v42) & 0x1A0)) << 8) + 1373294592) ^ 0x51DAD000;
  LODWORD(v36) = (v36 + 171659174 - ((2 * v36) & 0x14769F4C)) ^ 0xA3B4FA6 | (v42 - 1555247164 - ((2 * v42) & 0x46999E00)) ^ 0xA34CCFC4;
  v98 = STACK[0x910];
  LODWORD(v42) = *(STACK[0x910] + (BYTE3(v68) ^ 0xFELL)) ^ 0x82;
  LODWORD(v36) = (v36 + 843013605 - ((2 * v36) & 0x647EBBCA)) ^ 0x323F5DE5 | (v42 - 832130126 - ((2 * v42) & 0x164)) ^ 0xCE66B3B2;
  LODWORD(STACK[0x940]) = v36 - 1451808866 - ((2 * v36) & 0x52EE4F3C);
  LODWORD(v36) = *(v95 + (BYTE4(v68) ^ 0xF5)) ^ BYTE4(v68) ^ 0xA5;
  LODWORD(v36) = (((v36 - ((2 * v36) & 0xF8)) << 24) - 0x4000000) ^ 0xFC000000;
  LODWORD(v42) = *(v96 + (BYTE5(v68) ^ 0x7BLL)) ^ 0x28;
  LODWORD(v42) = (((v42 - ((2 * v42) & 0xE8)) << 16) + 980680704) ^ 0x3A740000;
  LODWORD(v36) = (v36 + 1364585366 - ((2 * v36) & 0xA2000000)) ^ 0x5155EB96 | (v42 + 1689122001 - ((2 * v42) & 0x495A0000)) ^ 0x64ADF4D1;
  LODWORD(v42) = (((*(v97 + (BYTE6(v68) ^ 0x19)) ^ 0x90) + 4011798 + (~(2 * (*(v97 + (BYTE6(v68) ^ 0x19)) ^ 0x90)) | 0xFFFFD5)) << 8) ^ 0x3D371500;
  LODWORD(v36) = (v36 + 534015575 - ((2 * v36) & 0x3FA8DCAE)) ^ 0x1FD46E57 | (v42 - 987771792 - ((2 * v42) & 0x3F9800)) ^ 0xC51FCC70;
  LODWORD(v68) = *(v98 + (HIBYTE(v68) ^ 0x2A)) ^ 0x21;
  LODWORD(v36) = (v36 + 929793238 - ((2 * v36) & 0x6ED709AC)) ^ 0x376B84D6 | (v68 + 76330611 - ((2 * v68) & 0xE6)) ^ 0x48CB673;
  LODWORD(STACK[0x930]) = v36 - 1455151523 - ((2 * v36) & 0x52884CBA);
  LODWORD(v36) = *(v95 + (v65 ^ 0xA3)) ^ v65 ^ 0xB;
  LODWORD(v36) = ((v36 - ((2 * v36) & 0x10)) << 24) + 0x8000000;
  LODWORD(v68) = *(v96 + (BYTE1(v94) ^ 0x6CLL)) ^ 0xF5;
  LODWORD(v68) = (((v68 - ((2 * v68) & 0xD2)) << 16) + 1432944640) ^ 0x55690000;
  LODWORD(v36) = ((v36 ^ 0x8000000) + 898121214 - ((2 * v36) & 0x6A000000)) ^ 0x35883DFE | (v68 - 1838958338 - ((2 * v68) & 0x24C60000)) ^ 0x9263B8FE;
  LODWORD(v68) = *(v97 + (BYTE2(v94) ^ 0xA0)) ^ 0xA0;
  LODWORD(v68) = (((v68 - ((2 * v68) & 0xC0)) << 8) + 597843968) ^ 0x23A26000;
  LODWORD(v36) = (v36 + 658347482 - ((2 * v36) & 0x4E7B2BB4)) ^ 0x273D95DA | (v68 + 1702136195 - ((2 * v68) & 0x4AE91200)) ^ 0x65748983;
  LODWORD(v68) = *(v98 + (BYTE3(v94) ^ 0x33)) ^ 0xEB;
  LODWORD(v36) = (v36 + 1221354517 - ((2 * v36) & 0x9198C82A)) ^ 0x48CC6415 | (v68 + 1001492805 - ((2 * v68) & 0x8A)) ^ 0x3BB19145;
  v99 = v36 + 1622879388 - ((2 * v36) & 0xC1765938);
  LODWORD(v68) = *(v96 + (BYTE5(v94) ^ 0x16)) ^ 0x96;
  LODWORD(v68) = (((v68 - ((2 * v68) & 0x13A)) << 16) - 1768095744) ^ 0x969D0000;
  LODWORD(v36) = *(v95 + (BYTE4(v94) ^ 0xD8)) ^ BYTE4(v94) ^ 0xA4;
  LODWORD(v36) = (((v36 - ((2 * v36) & 0x3A)) << 24) + 486539264) ^ 0x1D000000;
  LODWORD(v36) = (v36 - 1164049872 + (~(2 * v36) | 0x8BFFFFFF) + 1) ^ 0xBA9E0230 | (v68 - 1531735643 - ((2 * v68) & 0x49660000)) ^ 0xA4B391A5;
  LODWORD(v68) = *(v97 + (BYTE6(v94) ^ 0x2DLL)) ^ 0x7A;
  LODWORD(v68) = (((v68 + 4708206 - ((2 * v68) & 0x148)) << 8) + 13824) ^ 0x47D7A400;
  LODWORD(v36) = (v36 - 906350912 - ((2 * v36) & 0x93F45D80)) ^ 0xC9FA2EC0 | (v68 - 256893660 - ((2 * v68) & 0x61603A00)) ^ 0xF0B01D24;
  LODWORD(v94) = *(v98 + (HIBYTE(v94) ^ 0x5D));
  v100 = (((v6 & 0xFFFFFFF8 ^ 0x3906AB2F) + 1767411856 - ((2 * (v6 & 0xFFFFFFF8 ^ 0x3906AB2F)) & 0xD2B12120)) ^ 0xAEB0CEEB3FA2677ALL) + 0x514F3114A9050816 + ((2 * (((v6 & 0xFFFFFFF8 ^ 0x3906AB2F) + 1767411856 - ((2 * (v6 & 0xFFFFFFF8 ^ 0x3906AB2F)) & 0xD2B12120)) ^ 0x69589090)) & 0xADF5EFD4);
  STACK[0x840] = v100;
  LODWORD(v94) = (v36 - 71331642 - ((2 * v36) & 0xF77F218C)) ^ 0xFBBF90C6 | ((v94 ^ 0x5E) + 143813463 - ((2 * (v94 ^ 0x5E)) & 0xAE)) ^ 0x8926B57;
  LODWORD(STACK[0x7C0]) = v94 + 1752044644 + (~(2 * v94) | 0x2F23D737);
  LODWORD(v94) = v6 & 0xFFFFFFF3 ^ 0x3906AB2D;
  LODWORD(STACK[0x868]) = v94;
  v101 = STACK[0x6F0];
  v102 = *(((v94 + 1872630013 - ((2 * v94) & 0xDF3C21FA)) ^ 0xBF3D7FFE1960EE8ALL) + STACK[0x6F0] + ((2 * ((v94 + 1872630013 - ((2 * v94) & 0xDF3C21FA)) ^ 0x6F9E10FD)) & 0xEDFDFCEELL) + 0x40C2800189010189);
  v103 = v95;
  v104 = *(STACK[0x6F0] + v4);
  LODWORD(v102) = v102 ^ 0x67 ^ *(v95 + (v102 ^ 0x7E));
  LODWORD(v102) = (((v102 - ((2 * v102) & 0xC0)) << 24) - 0x20000000) ^ 0xE0000000;
  v105 = (((v6 & 0xFFFFFFF0 ^ 0x3906AB2F) + 1505855993 - ((2 * (v6 & 0xFFFFFFF0 ^ 0x3906AB2F)) & 0xB38313F2)) ^ 0xFFBDEFFFC69A55E4) + 0x42100060A423E3 + ((2 * (((v6 & 0xFFFFFFF0 ^ 0x3906AB2F) + 1505855993 - ((2 * (v6 & 0xFFFFFFF0 ^ 0x3906AB2F)) & 0xB38313F2)) ^ 0x59C189F9)) & 0x13EB7B83ALL);
  STACK[0x860] = v105;
  LODWORD(v3) = v104 ^ 0x6B ^ *(v95 + (v104 ^ 0x6F));
  LODWORD(v3) = (((v3 - ((2 * v3) & 0x1C)) << 24) + 234881024) ^ 0xE000000;
  LODWORD(v42) = *(v98 + (*(v101 + v105) ^ 0x1ALL));
  v106 = (((v6 & 0xFFFFFFF1 ^ 0x3906AB2F) + 2030232147 - ((2 * (v6 & 0xFFFFFFF1 ^ 0x3906AB2F)) & 0xF205C4A6)) ^ 0x177E93EC8E7979ACLL) - 0x177E93ECF77B9BFFLL + ((2 * (((v6 & 0xFFFFFFF1 ^ 0x3906AB2F) + 2030232147 - ((2 * (v6 & 0xFFFFFFF1 ^ 0x3906AB2F)) & 0xF205C4A6)) ^ 0x7902E253)) & 0x1EEF737FELL);
  STACK[0x880] = v106;
  LODWORD(v102) = (v102 - 1281314363 - ((2 * v102) & 0x66000000)) ^ 0xB3A0B1C5 | ((v42 ^ 0x42) + 1497178474 + (~(2 * (v42 ^ 0x42)) | 0xFFFFFF2B) + 1) ^ 0x593D216A;
  LODWORD(v104) = v102 - 1491666413 - ((2 * v102) & 0x4E2DF426);
  v107 = v97;
  LODWORD(v85) = *(v97 + (*(v101 + v106) ^ 0x3DLL)) ^ 0x51;
  LODWORD(v85) = (((v85 - ((2 * v85) & 0xB4)) << 8) + 1658542592) ^ 0x62DB5A00;
  v108 = (((v6 & 0xFFFFFFFC ^ 0x3906AB2B) + 286912970 - ((2 * (v6 & 0xFFFFFFFC ^ 0x3906AB2B)) & 0x2233E394)) ^ 0xF3EBD7FB5EA44E31) + 0xC142804B0424005 + ((2 * (((v6 & 0xFFFFFFFC ^ 0x3906AB2B) + 286912970 - ((2 * (v6 & 0xFFFFFFFC ^ 0x3906AB2B)) & 0x2233E394)) ^ 0x1119F1CA)) & 0x9F7B7FF6);
  STACK[0x878] = v108;
  LODWORD(v104) = (v85 + 736359513 - ((2 * v85) & 0x57C7E800)) ^ 0x2BE3F459 | v104 ^ 0xA716FA13;
  LODWORD(v85) = v6 & 0xFFFFFFFD ^ 0x3906AB2B;
  LODWORD(STACK[0x850]) = v85;
  LODWORD(STACK[0x858]) = 2 * v85;
  v109 = ((v85 - 66401764 - ((2 * v85) & 0xF8159438)) ^ 0xBEFEE6BD571D35EBLL) + v101 + ((2 * ((v85 - 66401764 - ((2 * v85) & 0xF8159438)) ^ 0xFC0ACA1C)) & 0x1562FFFEELL);
  LODWORD(v85) = *(v98 + (*(v101 + v108) ^ 0x25));
  LODWORD(v3) = ((v85 ^ 0x61) + 59088782 - ((2 * v85) & 0x11C)) ^ 0x3859F8E | (v3 + 1604554958 - ((2 * v3) & 0xBFFFFFFF)) ^ 0x5FA390CE;
  LODWORD(v109) = *(v97 + (*(v109 + 0x4101194254E80009) ^ 7)) ^ 0xBB;
  LODWORD(v109) = (((v109 - ((2 * v109) & 0x12E)) << 8) + 1191483136) ^ 0x47049700;
  LODWORD(v3) = (v109 + 2108217648 - ((2 * v109) & 0x7B51B200)) ^ 0x7DA8D930 | (v3 - 779079805 - ((2 * v3) & 0xA3205F06)) ^ 0xD1902F83;
  LODWORD(v3) = v3 - 1530574308 - (LODWORD(STACK[0x700]) & (2 * v3));
  v110 = (((v6 & 0xFFFFFFFA ^ 0x3906AB2D) + 1505420939 - ((2 * (v6 & 0xFFFFFFFA ^ 0x3906AB2D)) & 0xB375CD16)) ^ 0x45FE6F6F8755C974) - 0x45FE6F6FDEEF2FFFLL + ((2 * (((v6 & 0xFFFFFFFA ^ 0x3906AB2D) + 1505420939 - ((2 * (v6 & 0xFFFFFFFA ^ 0x3906AB2D)) & 0xB375CD16)) ^ 0x59BAE68B)) & 0x1BDDE5FFELL);
  STACK[0x870] = v110;
  LODWORD(v94) = v6 & 0xFFFFFFF5 ^ 0x3906AB2B;
  LODWORD(STACK[0x828]) = v94;
  LODWORD(STACK[0x830]) = 2 * v94;
  LODWORD(v85) = *(v96 + (*(v101 + v110) ^ 0x7ALL)) ^ 0xFF;
  LODWORD(STACK[0x7F8]) = -1441792;
  LODWORD(v85) = (((v85 - ((2 * v85) & 0x168)) << 16) - 155975680) ^ 0xF6B40000;
  LODWORD(v109) = *(v98 + (*(v101 + v100) ^ 0x32)) ^ 0x24;
  LODWORD(v109) = (v85 - 1705139305 - ((2 * v85) & 0x34BA0000)) ^ 0x9A5DA397 | (v109 + 215074375 - ((2 * v109) & 0x8E)) ^ 0xCD1C647;
  v111 = (((v6 & 0xFFFFFFF7 ^ 0x3906AB29) + 1794630987 - ((2 * (v6 & 0xFFFFFFF7 ^ 0x3906AB29)) & 0xD5EFCA96)) ^ 0x35EFFA9F8D0AD28CLL) - 0x35EFFA9FE7FD37C7 + ((2 * (((v6 & 0xFFFFFFF7 ^ 0x3906AB29) + 1794630987 - ((2 * (v6 & 0xFFFFFFF7 ^ 0x3906AB29)) & 0xD5EFCA96)) ^ 0x6AF7E54B)) & 0x1CFFA6F8ELL);
  STACK[0x848] = v111;
  LODWORD(v85) = *(v97 + (*(((v94 - 471471337 - ((2 * v94) & 0xC7CBD62E)) ^ 0xFF9FBCFD9DB714ECLL) + v101 + ((2 * ((v94 - 471471337 - ((2 * v94) & 0xC7CBD62E)) ^ 0xE3E5EB17)) & 0xFCA5FFF6) + 0x60430281AD0005) ^ 0xF9)) ^ 0x69;
  LODWORD(v97) = v6 & 0xFFFFFFF2 ^ 0x3906AB2D;
  LODWORD(STACK[0x838]) = v97;
  v112 = *(v101 + v111) ^ *(v103 + (*(v101 + v111) ^ 0xAELL));
  v113 = (((v112 ^ 0x95) - ((2 * v112) & 4)) << 24) + 0x2000000;
  LODWORD(v85) = ((v113 ^ 0x2000000) - 189609788 - ((2 * v113) & 0xE8000000)) ^ 0xF4B2C8C4 | ((v85 << 8) + 1490800030 - ((v85 << 9) & 0x19A00)) ^ 0x58DBCD9E;
  LODWORD(v110) = *(v96 + (*(((v97 - 1434335675 + ((2 * (v97 & 0x2A81C642 ^ (v6 | 0x7FFFFFFD))) ^ 0xF) + 1) ^ 0x3AFDCD6F1D5B1D70) + v101 + ((2 * ((v97 - 1434335675 + ((2 * (v97 & 0x2A81C642 ^ (v6 | 0x7FFFFFFD))) ^ 0xF) + 1) ^ 0xAA81C645)) & 0x16FB5B66ALL) - 0x3AFDCD6FB7DADB35) ^ 0x75)) ^ 0x26;
  LODWORD(v110) = (((v110 - ((2 * v110) & 0x48)) << 16) - 366739456) ^ 0xEA240000;
  v114 = (((v6 & 0xFFFFFFF6 ^ 0x3906AB29) + 1721323142 + (~(2 * (v6 & 0xFFFFFFF6 ^ 0x3906AB29)) | 0x32CD62F3) + 1) ^ 0xD775EFFDD9C2B379) + 0x288A100240A40201 + ((2 * (((v6 & 0xFFFFFFF6 ^ 0x3906AB29) + 1721323142 + (~(2 * (v6 & 0xFFFFFFF6 ^ 0x3906AB29)) | 0x32CD62F3) + 1) ^ 0x66994E86)) & 0x17EB7FBFELL);
  STACK[0x800] = v114;
  LODWORD(v104) = (v110 - 1712259600 - ((2 * v110) & 0x33E00000)) ^ 0x99F0FDF0 | (v104 - 1933827714 - ((2 * v104) & 0x197842FC)) ^ 0x8CBC217E;
  LODWORD(v111) = v104 + 1909310406 - ((2 * v104) & 0xE39B878C);
  LODWORD(v104) = v6 & 0xFFFFFFFB ^ 0x3906AB2D;
  LODWORD(STACK[0x808]) = v104;
  LODWORD(v65) = v104 - 1583345120 - ((2 * v104) & 0x43402440);
  LODWORD(v104) = *(v96 + (*(v101 + v114) ^ 0xBFLL)) ^ 0xD6;
  LODWORD(v104) = (((v104 - ((2 * v104) & 0x1AC)) << 16) + 1758855168) ^ 0x68D60000;
  v115 = (v65 ^ 0x6BEDFBF8DFCF77DALL) + v101 + ((2 * (v65 ^ 0xA1A01220)) & 0xFCDECBF4);
  LODWORD(v65) = (v104 - 1704063343 - ((2 * v104) & 0x34DC0000)) ^ 0x9A6E0E91 | (v85 + 919083241 - ((2 * v85) & 0x6D9031D2)) ^ 0x36C818E9;
  v116 = *(v115 - 0x6BEDFBF87E6F65FALL);
  LODWORD(v85) = *(v103 + (v116 ^ 0x17));
  v117 = (((v6 & 0xFFFFFFF9 ^ 0x3906AB2F) + 1684013178 - ((2 * (v6 & 0xFFFFFFF9 ^ 0x3906AB2F)) & 0xC8C000F4)) ^ 0xDEECFABFD18FFFA5) + 0x211305404A100021 + ((2 * (((v6 & 0xFFFFFFF9 ^ 0x3906AB2F) + 1684013178 - ((2 * (v6 & 0xFFFFFFF9 ^ 0x3906AB2F)) & 0xC8C000F4)) ^ 0x6460007A)) & 0x16BDFFFBELL);
  STACK[0x810] = v117;
  LODWORD(v36) = ((((v116 ^ 0x43 ^ v85) - ((2 * (v116 ^ 0x43 ^ v85)) & 0x24)) << 24) - 1845493760) ^ 0x92000000;
  LODWORD(v36) = (v36 + 40561072 - ((2 * v36) & 0x4000000)) ^ 0x26AE9B0 | (v109 - 1162247484 - ((2 * v109) & 0x75730588)) ^ 0xBAB982C4;
  LODWORD(v116) = *(v107 + (*(v101 + v117) ^ 0x18)) ^ 0x9F;
  LODWORD(v116) = (((v116 - ((2 * v116) & 0xA)) << 8) - 2096495360) ^ 0x830A0500;
  LODWORD(STACK[0x7E0]) = v6;
  LODWORD(v36) = (v36 + 1710091285 - ((2 * v36) & 0xCBDBD82A)) ^ 0x65EDEC15 | (v116 - 1206129359 - ((2 * v116) & 0x7037DA00)) ^ 0xB81BED31;
  v118 = (((v6 & 0xFFFFFFFE ^ 0x3906AB29) - 369534907 - ((2 * (v6 & 0xFFFFFFFE ^ 0x3906AB29)) & 0xD3F2B08A)) ^ 0xF7EFF2FD1604E397) + 0x8100D020002442ELL + ((2 * (((v6 & 0xFFFFFFFE ^ 0x3906AB29) - 369534907 - ((2 * (v6 & 0xFFFFFFFE ^ 0x3906AB29)) & 0xD3F2B08A)) ^ 0xE9F95845)) & 0x1FFFB77A4);
  STACK[0x818] = v118;
  v119 = *(v101 + v118);
  LODWORD(v94) = v6 & 0xFFFFFFF4 ^ 0x3906AB2B;
  LODWORD(STACK[0x820]) = v94;
  LODWORD(v107) = ((((*(v96 + (v119 ^ 0xDE)) ^ 0x16) - ((2 * (*(v96 + (v119 ^ 0xDE)) ^ 0x16)) & 0x14E)) << 16) - 341377024) ^ 0xEBA70000;
  v120 = ((v94 + 1069086688 - ((2 * v94) & 0x7F71EFC0u)) ^ 0xFDFFE17FC213189ELL) + v101 + ((2 * ((v94 + 1069086688 - ((2 * v94) & 0x7F71EFC0)) ^ 0x3FB8F7E0u)) & 0x1FB57DEFCLL);
  LODWORD(v107) = (v107 - 2080891387 - ((2 * v107) & 0x7F00000)) ^ 0x83F81E05 | v3 ^ 0xA4C54A1C;
  LODWORD(v101) = v107 - 279011102 - ((2 * v107) & 0xDEBD41C4);
  LODWORD(v107) = *(v98 + (*(v120 + 0x2001E8002541082) ^ 0xF5)) ^ 0xF0;
  LODWORD(v107) = (v65 + 1590810601 - ((2 * v65) & 0xBDA3AFD2)) ^ 0x5ED1D7E9 | (v107 - 78159683 - ((2 * v107) & 0x17A)) ^ 0xFB5760BD;
  LODWORD(v94) = v36 - ((2 * v36) & 0x9727970C) - 879506554;
  LODWORD(STACK[0x730]) = v94;
  LODWORD(v120) = LODWORD(STACK[0x930]) ^ v94;
  v121 = *(&off_10044E3E0 + v1 - 11772) - 378704387;
  LODWORD(v36) = *&v121[4 * (v120 ^ 0x85)];
  DWORD1(v12) = v36 ^ 0x14;
  LODWORD(v12) = v36 ^ 0x52158500;
  LODWORD(v36) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x8B9A6F9E);
  LODWORD(v94) = v107 - ((2 * v107) & 0x3D7F6B2) + 32242521;
  v122 = *(&off_10044E3E0 + v1 - 11817);
  LODWORD(STACK[0x748]) = v99;
  LODWORD(STACK[0x728]) = v94;
  LODWORD(v114) = v99 ^ v94 ^ 0x3574FCE6;
  v123 = v122 - 2063754362;
  LODWORD(v122) = *(v122 - 2063754362 + 4 * (BYTE2(v114) ^ 0xC9u));
  LODWORD(v65) = v122 - ((2 * v122 + 284282540) & 0x137249C2);
  v124 = *(&off_10044E3E0 + (v1 ^ 0x2F1E)) - 1228388087;
  LODWORD(v122) = *&v124[4 * (((v99 ^ v94) >> 24) ^ 0x48)];
  DWORD1(v12) = v122 ^ 0x3C2;
  LODWORD(v12) = v122 ^ 0xE45D8000;
  LODWORD(v122) = *(v123 + 4 * (((v120 ^ 0xF3200D68) >> 16) ^ 0xECu));
  LODWORD(v3) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x6AA4782A);
  v125 = *(&off_10044E3E0 + (v1 ^ 0x2FC0)) - 1117603047;
  LODWORD(v109) = *&v125[4 * (BYTE1(v114) ^ 0xAA)];
  LODWORD(v94) = LODWORD(STACK[0x7C0]) + 1;
  LODWORD(STACK[0x740]) = v111;
  LODWORD(STACK[0x720]) = v94;
  LODWORD(v85) = v94 ^ v111;
  LODWORD(v98) = v94 ^ v111 ^ 0xF655549F;
  LODWORD(v94) = *&v125[4 * (BYTE1(v98) ^ 0xA1)];
  LODWORD(v114) = *&v121[4 * (v114 ^ 0x8A)];
  DWORD1(v12) = v114 ^ 0x14;
  LODWORD(v12) = v114 ^ 0x52158500;
  LODWORD(v114) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x432BB20E);
  LODWORD(v111) = *&v121[4 * (v98 ^ 0x87)];
  DWORD1(v12) = v111 ^ 0x14;
  LODWORD(v12) = v111 ^ 0x52158500;
  LODWORD(v111) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xCC28F3B2);
  LODWORD(STACK[0x73C]) = v101;
  v126 = LODWORD(STACK[0x940]) ^ v101;
  v127 = BYTE1(v126) ^ 0xC5;
  LODWORD(v103) = *&v121[4 * (v126 ^ 0x50)];
  DWORD1(v12) = v103 ^ 0x14;
  LODWORD(v12) = v103 ^ 0x52158500;
  LODWORD(v103) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x7EEF6DE8);
  LODWORD(v117) = *&v125[4 * (((v120 ^ 0xD68) >> 8) ^ 0xF)];
  v128 = v117 - ((2 * v117 + 1900208702) & 0xF52ADFBA);
  LODWORD(v120) = *&v124[4 * (BYTE3(v120) ^ 0x3D)];
  DWORD1(v12) = v120 ^ 0x3C2;
  LODWORD(v12) = v120 ^ 0xE45D8000;
  LODWORD(v117) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x56ED6732);
  LODWORD(v120) = *(v123 + 4 * (BYTE2(v98) ^ 0xAu));
  LODWORD(v98) = v120 - ((2 * v120 - 1326330196) & 0xE3097526);
  LODWORD(v120) = *&v124[4 * (BYTE3(v85) ^ 0xE3)];
  DWORD1(v12) = v120 ^ 0x3C2;
  LODWORD(v12) = v120 ^ 0xE45D8000;
  LODWORD(v120) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xC04874D2);
  LODWORD(v85) = *(v123 + 4 * (((v126 ^ 0x6F24C50E) >> 16) ^ 0x94u));
  v129 = *&v124[4 * (HIBYTE(v126) ^ 0xCE)];
  DWORD1(v12) = v129 ^ 0x3C2;
  LODWORD(v12) = v129 ^ 0xE45D8000;
  v130 = *&v125[4 * (v127 ^ 0xA7)];
  LODWORD(v120) = (v103 + 1064810228) ^ (v65 + 1647447095) ^ (v128 - 1288249092) ^ (v120 - 534496663);
  LODWORD(v103) = (v109 - ((2 * v109 + 21160510) & 0xE68EFBA) + 1070983420) ^ (v98 - 906124823) ^ ((v12 >> 14) - ((2 * (v12 >> 14)) & 0x1B11828C) - 1920417466) ^ (v36 + 1171077071);
  LODWORD(v109) = (v114 - 1584015097) ^ (v94 - ((2 * v94 + 1900208702) & 0xDEDC131C) + 672103085) ^ (v85 - ((2 * v85 - 1326330196) & 0xCA2516DC) + 1032549060) ^ (v117 - 1418284135);
  LODWORD(v65) = (v3 - 1252901867) ^ (v111 + 1712617945) ^ (v122 - ((2 * v122 + 15847084) & 0xD10C2B0) - 553563986) ^ (v130 - ((2 * v130 + 826466878) & 0x2173CE0C) + 1230723109);
  LODWORD(v94) = *&v124[4 * (BYTE3(v103) ^ 0xA7)];
  DWORD1(v12) = v94 ^ 0x3C2;
  LODWORD(v12) = v94 ^ 0xE45D8000;
  LODWORD(v36) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x45A3C590);
  LOWORD(v117) = (v3 + 15381) ^ (v111 + 31193) ^ (v122 - ((2 * v122 - 12628) & 0xC2B0) + 18606) ^ (v130 - ((2 * v130 - 7618) & 0xCE0C) + 22565) ^ 0x632D;
  LODWORD(v94) = *(v123 + 4 * (((v65 ^ 0xA097632D) >> 16) ^ 0x10u));
  LODWORD(v122) = *&v121[4 * (v109 ^ 0xBD)];
  DWORD1(v12) = v122 ^ 0x14;
  LODWORD(v12) = v122 ^ 0x52158500;
  LODWORD(v85) = *&v124[4 * (BYTE3(v109) ^ 0x93)];
  LODWORD(v3) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x5D4616C4);
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v122) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x65A7D206);
  LODWORD(v65) = *&v124[4 * (BYTE3(v65) ^ 0xB9)];
  DWORD1(v12) = v65 ^ 0x3C2;
  LODWORD(v12) = v65 ^ 0xE45D8000;
  LODWORD(v65) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x233E8C82);
  BYTE2(v85) = BYTE2(v109) ^ 0xA;
  LODWORD(v109) = *&v125[4 * (((v109 ^ 0x3842) >> 8) ^ 9)];
  LODWORD(v103) = v103 ^ 0x8B6073F7;
  LOWORD(v98) = v120 ^ 0x7CC9;
  LODWORD(v114) = *(v123 + 4 * (((v120 ^ 0x1E927CC9) >> 16) ^ 0xA3u));
  v131 = *&v125[4 * (BYTE1(v103) ^ 0xBB)];
  v132 = v114 - ((2 * v114 - 1326330196) & 0xFC4837E6);
  LODWORD(v114) = v131 - ((2 * v131 + 1900208702) & 0x73A80AAA);
  LODWORD(v111) = *&v121[4 * (v117 ^ 0x59)];
  DWORD1(v12) = v111 ^ 0x14;
  LODWORD(v12) = v111 ^ 0x52158500;
  LODWORD(v111) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x4A372B1E);
  LODWORD(v120) = *&v124[4 * BYTE3(v120)];
  DWORD1(v12) = v120 ^ 0x3C2;
  LODWORD(v12) = v120 ^ 0xE45D8000;
  LODWORD(v120) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x25727AAC);
  v133 = *(v123 + 4 * (BYTE2(v103) ^ 0x48u));
  v134 = *&v125[4 * (BYTE1(v98) ^ 0x9B)];
  LODWORD(v117) = *&v125[4 * (BYTE1(v117) ^ 0xEB)];
  LODWORD(v98) = *&v121[4 * (v98 ^ 0xEB)];
  DWORD1(v12) = v98 ^ 0x14;
  LODWORD(v12) = v98 ^ 0x52158500;
  LODWORD(v98) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x3EE8AC8C);
  LODWORD(v103) = *&v121[4 * (v103 ^ 0xF2)];
  DWORD1(v12) = v103 ^ 0x14;
  LODWORD(v12) = v103 ^ 0x52158500;
  LODWORD(v3) = (v3 - 1365046430) ^ (v132 + 1453130569) ^ (v36 + 584180424) ^ (v117 - ((2 * v117 + 1900208702) & 0x92991BF0) + 32374551);
  LODWORD(v36) = *(v123 + 4 * (BYTE2(v85) ^ 0x21u));
  LODWORD(v117) = (v111 + 622564751) ^ (v122 - 1294735101) ^ (v133 - ((2 * v133 + 821153452) & 0x72631FEA) + 296384331) ^ (v134 - ((2 * v134 + 1900208702) & 0xC1173C5C) - 1725100211);
  LODWORD(v122) = (v109 - ((2 * v109 + 1900208702) & 0xB5D1DC2E) + 327835446) ^ (v94 - ((2 * v94 + 821153452) & 0x62EAB546) - 1980874247) ^ (v120 + 314129750) ^ ((v12 >> 5) - ((2 * (v12 >> 5)) & 0x83CDEA98) + 1105655116);
  LODWORD(v114) = (v114 - 227182988) ^ (v65 - 1851832767) ^ (v36 - ((2 * v36 + 821153452) & 0x638EDF96) + 171988769) ^ (v98 - 1619765690);
  LOBYTE(v85) = v117 ^ 0x1B;
  LODWORD(v94) = *&v125[4 * (((v117 ^ 0x51B) >> 8) ^ 1)];
  LODWORD(v109) = v114 ^ 0x4CF7B8F9;
  LODWORD(v36) = *&v125[4 * (((v114 ^ 0xB8F9) >> 8) ^ 0x13)];
  LODWORD(v65) = *&v124[4 * (BYTE3(v3) ^ 0x6A)];
  DWORD1(v12) = v65 ^ 0x3C2;
  LODWORD(v12) = v65 ^ 0xE45D8000;
  LODWORD(v65) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x26FC8774);
  LODWORD(v120) = *(v123 + 4 * (((v117 ^ 0xB6ED051B) >> 16) ^ 0x80u));
  LODWORD(v117) = *&v124[4 * (BYTE3(v117) ^ 0xBF)];
  DWORD1(v12) = v117 ^ 0x3C2;
  LODWORD(v12) = v117 ^ 0xE45D8000;
  LODWORD(v117) = v12 >> 14;
  LODWORD(v111) = *&v125[4 * (((v122 ^ 0x5FCE) >> 8) ^ 0xB)];
  v135 = *&v121[4 * (v85 ^ 0x62)];
  LODWORD(v85) = v111 - 1900021778 - ((2 * v111 + 1900208702) & 0xAC590D9E);
  DWORD1(v12) = v135 ^ 0x14;
  LODWORD(v12) = v135 ^ 0x52158500;
  LODWORD(v103) = *&v121[4 * (v122 ^ 0xE4)];
  LODWORD(v111) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x9F3E3F92);
  DWORD1(v12) = v103 ^ 0x14;
  LODWORD(v12) = v103 ^ 0x52158500;
  LODWORD(v103) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x7A802828);
  LODWORD(v114) = *&v124[4 * (BYTE3(v114) ^ 0x12)];
  DWORD1(v12) = v114 ^ 0x3C2;
  LODWORD(v12) = v114 ^ 0xE45D8000;
  LODWORD(v114) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xC8180AF0);
  v136 = *(v123 + 4 * (BYTE2(v109) ^ 0x3Du));
  LODWORD(v3) = v3 ^ 0x798490BB;
  v137 = *(v123 + 4 * (BYTE2(v3) ^ 0x66u));
  LODWORD(v98) = *(v123 + 4 * (((v122 ^ 0x6BE15FCE) >> 16) ^ 0xEBu));
  v138 = *&v121[4 * (v3 ^ 0x3F)];
  DWORD1(v12) = v138 ^ 0x14;
  LODWORD(v12) = v138 ^ 0x52158500;
  v139 = (v12 >> 5) + 683474983 + (~(2 * (v12 >> 5)) | 0xAE85FFB3);
  LODWORD(v109) = *&v121[4 * (v109 ^ 0x6A)];
  DWORD1(v12) = v109 ^ 0x14;
  LODWORD(v12) = v109 ^ 0x52158500;
  LODWORD(v109) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x34AC6246);
  LODWORD(v122) = *&v124[4 * (BYTE3(v122) ^ 0x93)];
  DWORD1(v12) = v122 ^ 0x3C2;
  LODWORD(v12) = v122 ^ 0xE45D8000;
  LODWORD(v3) = *&v125[4 * (BYTE1(v3) ^ 0xE)];
  LODWORD(v103) = (v103 - 1119874028) ^ (v120 - ((2 * v120 + 284282540) & 0x146FA5CA) - 491734469) ^ (v114 - 468974216) ^ (v3 + 611709030 + ((-1900208704 - 2 * v3) | 0x28570173));
  LODWORD(v114) = (v117 - ((2 * v117) & 0xC7CEA75E) + 1676104623) ^ (v85 + 917504) ^ (v137 - ((2 * v137 + 821153452) & 0x3490EB9C) + 1925274916) ^ (v109 - 1705627357);
  LODWORD(v36) = (v65 + 327041978) ^ (v36 - ((2 * v36 + 1900208702) & 0x82778998) - 102943253) ^ (v111 + 1335828425) ^ (v98 - ((2 * v98 + 15847084) & 0x7C63B92) + 1549534495);
  LODWORD(v85) = (v136 - ((2 * v136 + 821153452) & 0x4C577F96) - 22763743) ^ (v94 - ((2 * v94 + 21160510) & 0x6227614) - 1145918423) ^ v139 ^ ((v12 >> 14) - ((2 * (v12 >> 14)) & 0xF511A88E) - 91696057);
  LOWORD(v109) = v36 ^ 0x4C05;
  LODWORD(v94) = *(v123 + 4 * (((v36 ^ 0x54604C05) >> 16) ^ 0xD7u));
  LOBYTE(v120) = v85 ^ 0xB5;
  LODWORD(v122) = *&v125[4 * (((v85 ^ 0x2FB5) >> 8) ^ 0xC5)];
  LODWORD(v36) = *&v124[4 * (BYTE3(v36) ^ 0xD5)];
  LODWORD(v65) = v122 - ((2 * v122 + 826466878) & 0x3C7B0162);
  DWORD1(v12) = v36 ^ 0x3C2;
  LODWORD(v12) = v36 ^ 0xE45D8000;
  LODWORD(v36) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xC2616E1C);
  LODWORD(v122) = *(v123 + 4 * (((v85 ^ 0x8E772FB5) >> 16) ^ 0xF4u));
  LODWORD(v3) = v122 - ((2 * v122 + 15847084) & 0x8D9779A);
  LODWORD(v122) = *&v124[4 * (BYTE3(v103) ^ 0xA6)];
  DWORD1(v12) = v122 ^ 0x3C2;
  LODWORD(v12) = v122 ^ 0xE45D8000;
  LODWORD(v122) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x1661E32E);
  LODWORD(v85) = *&v124[4 * (BYTE3(v85) ^ 0xB3)];
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v103) = v103 ^ 0xB3E78D80;
  LODWORD(v111) = *&v125[4 * (BYTE1(v103) ^ 0xCA)];
  LODWORD(v117) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x4BD11808);
  v140 = *&v124[4 * (BYTE3(v114) ^ 0xEE)];
  LODWORD(v85) = v111 - ((2 * v111 + 21160510) & 0x112799C);
  DWORD1(v12) = v140 ^ 0x3C2;
  LODWORD(v12) = v140 ^ 0xE45D8000;
  v141 = v114 ^ 0xD5A71113;
  LODWORD(v114) = *&v125[4 * (((v114 ^ 0x1113) >> 8) ^ 0x4B)];
  LODWORD(v98) = *&v121[4 * (v109 ^ 0x66)];
  v142 = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x580EEEA6);
  DWORD1(v12) = v98 ^ 0x14;
  LODWORD(v12) = v98 ^ 0x52158500;
  LODWORD(v111) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xD8D41012);
  LODWORD(v98) = *(v123 + 4 * (BYTE2(v141) ^ 0xE3u));
  v143 = *(v123 + 4 * (BYTE2(v103) ^ 0x13u));
  LODWORD(v109) = *&v125[4 * (BYTE1(v109) ^ 0x34)];
  LODWORD(v97) = v109 - ((2 * v109 + 1900208702) & 0xDE9F2DB8);
  LODWORD(v109) = *&v121[4 * (v103 ^ 0x44)];
  DWORD1(v12) = v109 ^ 0x14;
  LODWORD(v12) = v109 ^ 0x52158500;
  LODWORD(v109) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xDB29FA46);
  LODWORD(v120) = *&v121[4 * (v120 ^ 0x7A)];
  DWORD1(v12) = v120 ^ 0x14;
  LODWORD(v12) = v120 ^ 0x52158500;
  LODWORD(v120) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x21823592);
  LODWORD(v103) = *&v121[4 * (v141 ^ 0xBA)];
  DWORD1(v12) = v103 ^ 0x14;
  LODWORD(v12) = v103 ^ 0x52158500;
  v144 = (v65 + 1457451472) ^ (v94 - ((2 * v94 - 1326330196) & 0xF06C74B6) - 793828943) ^ (v142 + 738686803) ^ (v109 - 309002973);
  LODWORD(v36) = (v3 + 1558553379) ^ (v85 + 959098349) ^ (v36 - 516901106) ^ ((v12 >> 5) - ((2 * (v12 >> 5)) & 0xD7F54648) - 335895772);
  LODWORD(v109) = (v114 - ((2 * v114 + 1900208702) & 0x63ADEF3C) + 1786276029) ^ (v117 + 635997188) ^ (v143 - ((2 * v143 - 1326330196) & 0xC054520C) - 1197272996) ^ (v111 - 328595447);
  BYTE1(v3) = (((v114 - ((2 * v114 - 7618) & 0xEF3C) + 26813) ^ (v117 - 29692) ^ (v143 - ((2 * v143 - 12628) & 0x520C) + 4188) ^ (v111 + 2057)) >> 8) ^ 0xF7;
  LODWORD(v65) = *&v121[4 * (((v114 - ((2 * v114 + 62) & 0x3C) - 67) ^ (v117 + 4) ^ (v143 - ((2 * v143 - 84) & 0xC) + 92) ^ (v111 + 9)) ^ 0xDE)];
  LODWORD(v94) = (v98 - ((2 * v98 - 1326330196) & 0x9FC4DDD6) + 677074497) ^ (v97 + 670107643) ^ (v122 + 187756951) ^ (v120 + 281090761);
  DWORD1(v12) = v65 ^ 0x14;
  LODWORD(v12) = v65 ^ 0x52158500;
  LODWORD(v122) = v12 >> 5;
  LODWORD(v117) = v36 ^ 0x9A5ED45C;
  LODWORD(v65) = *&v121[4 * (v36 ^ 0x4D)];
  DWORD1(v12) = v65 ^ 0x14;
  LODWORD(v12) = v65 ^ 0x52158500;
  LODWORD(v120) = v12 >> 5;
  LODWORD(v36) = *&v124[4 * (BYTE3(v36) ^ 0xAC)];
  LODWORD(v65) = v122 - ((2 * v122) & 0x919E2000);
  DWORD1(v12) = v36 ^ 0x3C2;
  LODWORD(v12) = v36 ^ 0xE45D8000;
  LODWORD(v36) = v120 - ((2 * v120) & 0x8A5B30D4);
  LODWORD(v122) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xDBE11652);
  LODWORD(v120) = *(v123 + 4 * (((v94 ^ 0x646DA88E) >> 16) ^ 0x8Du));
  LODWORD(v85) = *&v124[4 * (HIBYTE(v144) ^ 0xCC)];
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v103) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x61AC05E2);
  v145 = v144 ^ 0xF4934978;
  LODWORD(v98) = *&v125[4 * (((v144 ^ 0x4978) >> 8) ^ 0xC)];
  v146 = *&v125[4 * BYTE1(v117)] - ((2 * *&v125[4 * BYTE1(v117)] + 1900208702) & 0x830266F4);
  LODWORD(v85) = v98 - ((2 * v98 + 1900208702) & 0x75E7E6C2);
  LODWORD(v114) = *&v121[4 * (v145 ^ 0xFC)];
  DWORD1(v12) = v114 ^ 0x14;
  LODWORD(v12) = v114 ^ 0x52158500;
  LODWORD(v114) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x5D2B4EF8);
  LODWORD(v98) = *(v123 + 4 * (((v109 ^ 0x54CAF703) >> 16) ^ 0x15u));
  v147 = *&v125[4 * (((v94 ^ 0xA88E) >> 8) ^ 0xC8)];
  v148 = *&v124[4 * (BYTE3(v109) ^ 0x39)];
  LODWORD(v109) = v147 - ((2 * v147 + 1900208702) & 0x6EE25A76);
  DWORD1(v12) = v148 ^ 0x3C2;
  LODWORD(v12) = v148 ^ 0xE45D8000;
  v149 = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x7402FC0E);
  LODWORD(v117) = *(v123 + 4 * (BYTE2(v117) ^ 0xECu));
  v150 = *(v123 + 4 * (BYTE2(v145) ^ 0x62u));
  LODWORD(v3) = *&v125[4 * (BYTE1(v3) ^ 0xAF)];
  LODWORD(v111) = *&v121[4 * (v94 ^ 0x69)];
  DWORD1(v12) = v111 ^ 0x14;
  LODWORD(v12) = v111 ^ 0x52158500;
  LODWORD(v117) = (v117 - ((2 * v117 + 821153452) & 0x31492FCE) + 1897758525) ^ (v3 - ((2 * v3 + 1900208702) & 0x5656D5EA) - 473113580) ^ (v103 + 819331825) ^ ((v12 >> 5) - ((2 * (v12 >> 5)) & 0x8AD9FEC6) - 982712477);
  LODWORD(v94) = *&v124[4 * (BYTE3(v94) ^ 0x85)];
  DWORD1(v12) = v94 ^ 0x3C2;
  LODWORD(v12) = v94 ^ 0xE45D8000;
  LODWORD(v94) = (v146 - 98392935) ^ (v150 - ((2 * v150 + 15847084) & 0x2D41C0A) - 639437477) ^ ((v12 >> 14) - ((2 * (v12 >> 14)) & 0x1781BAE8) + 197188980) ^ (v65 + 1221529600);
  LODWORD(v85) = (v120 - ((2 * v120 - 1326330196) & 0xB66CB1F6) - 1280360367) ^ (v85 + 1939170432) ^ (v149 - 1174307321) ^ (v36 - 986867606);
  v151 = (v114 + 781559676) ^ (v122 + 1844480809) ^ (v98 - ((2 * v98 + 821153452) & 0x54B4FE06) + 47408729) ^ (v109 + 1880268378);
  LODWORD(v36) = *(v123 + 4 * (((v151 ^ 0x1882F8FE) >> 16) ^ 0xAu));
  LODWORD(v122) = *&v125[4 * ((((v114 - 22660) ^ (v122 - 29911) ^ (v98 - ((2 * v98 - 12628) & 0xFE06) + 26201) ^ (v109 - 24998) ^ 0xF8FE) >> 8) ^ 0xAA)];
  LODWORD(v120) = v122 - ((2 * v122 + 1900208702) & 0xDF3F0682);
  LODWORD(v111) = v85 ^ 0x690D89DF;
  LODWORD(v122) = *&v125[4 * (((v85 ^ 0x89DF) >> 8) ^ 0xF6)];
  BYTE2(v114) = BYTE2(v117) ^ 0x6E;
  LODWORD(v109) = *&v125[4 * (((v117 ^ 0x8F9B) >> 8) ^ 0xFE)];
  LODWORD(v3) = v122 - ((2 * v122 + 289595966) & 0x16535FA4);
  LODWORD(v122) = v109 - ((2 * v109 + 1900208702) & 0x705E9126);
  LODWORD(v65) = *&v121[4 * (v151 ^ 0xD1)];
  DWORD1(v12) = v65 ^ 0x14;
  LODWORD(v12) = v65 ^ 0x52158500;
  LODWORD(v65) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xCF5403EA);
  LODWORD(v109) = *&v124[4 * (BYTE3(v85) ^ 0x7A)];
  DWORD1(v12) = v109 ^ 0x3C2;
  LODWORD(v12) = v109 ^ 0xE45D8000;
  LODWORD(v109) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x4ADC471A);
  BYTE2(v85) = BYTE2(v94) ^ 0x8D;
  LODWORD(v103) = *&v121[4 * (v94 ^ 0x3A)];
  DWORD1(v12) = v103 ^ 0x14;
  LODWORD(v12) = v103 ^ 0x52158500;
  LODWORD(v103) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x6898DEDE);
  LODWORD(v98) = *&v121[4 * (v117 ^ 0xD5)];
  DWORD1(v12) = v98 ^ 0x14;
  LODWORD(v12) = v98 ^ 0x52158500;
  LODWORD(v98) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x3F9CB300);
  LODWORD(v117) = *&v124[4 * (BYTE3(v117) ^ 0xF4)];
  DWORD1(v12) = v117 ^ 0x3C2;
  LODWORD(v12) = v117 ^ 0xE45D8000;
  LODWORD(v117) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xF972954);
  v152 = *&v124[4 * (HIBYTE(v151) ^ 0x3D)];
  DWORD1(v12) = v152 ^ 0x3C2;
  LODWORD(v12) = v152 ^ 0xE45D8000;
  v153 = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x985EA660);
  v154 = *&v125[4 * (((v94 ^ 0xD725) >> 8) ^ 0x62)];
  v155 = *&v121[4 * (v111 ^ 0x4C)];
  DWORD1(v12) = v155 ^ 0x14;
  LODWORD(v12) = v155 ^ 0x52158500;
  v156 = (v12 >> 5) + 826466878 - ((2 * (v12 >> 5)) & 0x6285BCD8);
  LODWORD(v111) = *(v123 + 4 * (BYTE2(v111) ^ 0x8Fu));
  LODWORD(v114) = *(v123 + 4 * (BYTE2(v114) ^ 0xD9u));
  LODWORD(v94) = *&v124[4 * (BYTE3(v94) ^ 0xAD)];
  DWORD1(v12) = v94 ^ 0x3C2;
  LODWORD(v12) = v94 ^ 0xE45D8000;
  LODWORD(v120) = (v156 - 978) ^ (v120 + 675345504) ^ (v114 - 2 * ((v114 + 7923542) & 0x1069FB3 ^ v114 & 1) - 645953784) ^ ((v12 >> 14) - ((2 * (v12 >> 14)) & 0x39695F0) + 30100216);
  LODWORD(v94) = *(v123 + 4 * (BYTE2(v85) ^ 0xCAu));
  LODWORD(v114) = v94 - ((2 * v94 + 821153452) & 0x2482D5A2);
  LODWORD(v94) = (v3 + 1137385713) ^ (v36 - ((2 * v36 - 1326330196) & 0xD95CC11A) - 987281437) ^ (v103 - 1270059153) ^ (v117 + 130782378);
  LODWORD(v85) = (v153 - 869313744) ^ (v98 - 1613866624) ^ (v154 - ((2 * v154 + 1900208702) & 0x9C1E35D6) - 2035250166) ^ (v111 - ((2 * v111 - 1326330196) & 0xE6AB8FD6) + 1271836481);
  LODWORD(v36) = (v122 + 1892727218) ^ (v109 + 627975053) ^ (v114 + 1790595623);
  LODWORD(v122) = v65 - 408288779;
  LODWORD(v65) = *&v121[4 * (v94 ^ 0x5C)];
  LODWORD(v3) = v122 ^ v36;
  DWORD1(v12) = v65 ^ 0x14;
  LODWORD(v12) = v65 ^ 0x52158500;
  LODWORD(v122) = v12 >> 5;
  LODWORD(v117) = v85 ^ 0x26DF685E;
  LODWORD(v36) = *&v125[4 * ((((v153 + 21296) ^ (v98 + 22912) ^ (v154 - ((2 * v154 - 7618) & 0x35D6) - 29686) ^ (v111 - ((2 * v111 - 12628) & 0x8FD6) - 20671) ^ 0x685E) >> 8) ^ 0x76)];
  LODWORD(v65) = *&v124[4 * (BYTE3(v3) ^ 0x59)];
  DWORD1(v12) = v65 ^ 0x3C2;
  LODWORD(v12) = v65 ^ 0xE45D8000;
  LODWORD(v65) = v12 >> 14;
  LODWORD(v109) = *&v124[4 * (BYTE3(v120) ^ 0x39)];
  DWORD1(v12) = v109 ^ 0x3C2;
  LODWORD(v12) = v109 ^ 0xE45D8000;
  LODWORD(v111) = v65 - ((2 * v65) & 0xEF5842AC);
  LOWORD(v98) = v3 ^ 0xA5E7;
  LODWORD(v3) = *(v123 + 4 * ((v3 ^ 0x3914A5E7) >> 16));
  LODWORD(v65) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x7B16DA92);
  LODWORD(v109) = v3 - ((2 * v3 - 1326330196) & 0xE7CFBAD8);
  LODWORD(v3) = *&v121[4 * (v98 ^ 0xA7)];
  DWORD1(v12) = v3 ^ 0x14;
  LODWORD(v12) = v3 ^ 0x52158500;
  LODWORD(v3) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xAE1855B4);
  LODWORD(v103) = *&v125[4 * (((v94 ^ 0xA999) >> 8) ^ 0x83)];
  v157 = v103 - ((2 * v103 + 289595966) & 0x144858E4);
  LODWORD(v85) = *&v124[4 * (BYTE3(v85) ^ 0xA8)];
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v103) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x42ECEA10);
  LODWORD(v120) = v120 ^ 0x4CD28FB7;
  LODWORD(v85) = *(v123 + 4 * (BYTE2(v120) ^ 0x95u));
  v158 = *&v121[4 * (v117 ^ 0xC4)];
  DWORD1(v12) = v158 ^ 0x14;
  LODWORD(v12) = v158 ^ 0x52158500;
  v159 = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x8F623242);
  LODWORD(v114) = *(v123 + 4 * (((v94 ^ 0x44CEA999) >> 16) ^ 0xFCu));
  LODWORD(v98) = *&v125[4 * (BYTE1(v98) ^ 0x91)];
  v160 = *&v121[4 * (v120 ^ 0x9B)];
  DWORD1(v12) = v160 ^ 0x14;
  LODWORD(v12) = v160 ^ 0x52158500;
  v161 = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xF6FE00F6);
  LODWORD(v117) = *(v123 + 4 * (BYTE2(v117) ^ 0xB7u));
  LODWORD(v97) = v117 - ((2 * v117 - 1326330196) & 0xC32224C4);
  LODWORD(v94) = *&v124[4 * (BYTE3(v94) ^ 0xFE)];
  DWORD1(v12) = v94 ^ 0x3C2;
  LODWORD(v12) = v94 ^ 0xE45D8000;
  LODWORD(v117) = (v157 - 1027236463) ^ (v85 - ((2 * v85 + 821153452) & 0x7FA6ADA2) - 1739833817) ^ (v111 + 2007769430) ^ (v159 - 944695007);
  LODWORD(v120) = *&v125[4 * (BYTE1(v120) ^ 0x70)];
  LODWORD(v85) = (v161 - 75562885) ^ (v98 - ((2 * v98 + 289595966) & 0x17DB0E7C) - 997263267) ^ (v97 + 973732280) ^ ((v12 >> 14) - ((2 * (v12 >> 14)) & 0x7AA7FFD6) + 1028915179);
  LODWORD(v120) = (v109 + 1281410242) ^ (v103 + 561411336) ^ (v122 - ((2 * v122) & 0x80AAFBC6) - 1068139037) ^ (v120 - ((2 * v120 + 1900208702) & 0xEA8C2BA6) + 770148082);
  LODWORD(v122) = *&v124[4 * (BYTE3(v85) ^ 0xBB)];
  LODWORD(v103) = (v65 - 1114935991) ^ (v36 - ((2 * v36 + 826466878) & 0x3A3EA51A) + 1438696364) ^ (v3 + 1460415194) ^ (v114 - ((2 * v114 - 1326330196) & 0x9D3B3028) + 655785834);
  DWORD1(v12) = v122 ^ 0x3C2;
  LODWORD(v12) = v122 ^ 0xE45D8000;
  LODWORD(v94) = v12 >> 14;
  LODWORD(v36) = *&v124[4 * (BYTE3(v117) ^ 0xA8)];
  DWORD1(v12) = v36 ^ 0x3C2;
  LODWORD(v12) = v36 ^ 0xE45D8000;
  LODWORD(v36) = v12 >> 14;
  LODWORD(v122) = *&v121[4 * (v103 ^ 0xA8)];
  LODWORD(v65) = v94 - ((2 * v94) & 0xB7235990);
  DWORD1(v12) = v122 ^ 0x14;
  LODWORD(v12) = v122 ^ 0x52158500;
  LODWORD(v94) = v36 - ((2 * v36) & 0x5C0A7068);
  LODWORD(v36) = *&v125[4 * (((v103 ^ 0x8F73) >> 8) ^ 0x28)];
  LODWORD(v3) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xF6E8B8FE);
  LOWORD(v109) = v117 ^ 0xEF3B;
  LODWORD(v122) = *(v123 + 4 * (((v117 ^ 0xB08EF3B) >> 16) ^ 0x7Du));
  LODWORD(v117) = *(v123 + 4 * (((v103 ^ 0x9C278F73) >> 16) ^ 0x31u));
  LOWORD(v159) = v85 ^ 0x6B63;
  LODWORD(v85) = *(v123 + 4 * (((v85 ^ 0xB4926B63) >> 16) ^ 0x55u));
  LODWORD(v114) = v85 - ((2 * v85 + 821153452) & 0x4E2B77E0);
  LODWORD(v85) = *&v124[4 * (BYTE3(v120) ^ 0xDB)];
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v85) = *&v121[4 * (v159 ^ 0x6C)];
  LODWORD(v103) = *&v124[4 * (BYTE3(v103) ^ 0xF)];
  v162 = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x18B68212);
  DWORD1(v12) = v103 ^ 0x3C2;
  LODWORD(v12) = v103 ^ 0xE45D8000;
  LODWORD(v98) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x6434686E);
  LODWORD(v120) = v120 ^ 0xC7EDA6F9;
  LODWORD(v103) = *(v123 + 4 * (BYTE2(v120) ^ 0xB0u));
  v163 = *&v125[4 * (BYTE1(v159) ^ 0x95)];
  v164 = *&v125[4 * (BYTE1(v109) ^ 0xAD)];
  LODWORD(v97) = *&v125[4 * (BYTE1(v120) ^ 2)];
  LODWORD(v120) = *&v121[4 * (v120 ^ 0x31)];
  DWORD1(v12) = v120 ^ 0x14;
  LODWORD(v12) = v120 ^ 0x52158500;
  LODWORD(v120) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x1F88F26C);
  LODWORD(v109) = *&v121[4 * (v109 ^ 0xF1)];
  DWORD1(v12) = v109 ^ 0x14;
  LODWORD(v12) = v109 ^ 0x52158500;
  LODWORD(v103) = (v3 - 76260225) ^ (v65 + 1536273608) ^ (v103 - ((2 * v103 - 1326330196) & 0xD0D1425E) - 1058961275) ^ (v164 - ((2 * v164 + 1900208702) & 0x9700408C) - 2078174875);
  LODWORD(v109) = (v117 - ((2 * v117 + 284282540) & 0x1F57DB0E) + 1747244253) ^ (v94 + 772094004) ^ (v163 - ((2 * v163 + 826466878) & 0x354A14A8) + 1397128051) ^ (v120 + 264534326);
  LODWORD(v94) = (v98 + 840578103) ^ (v114 - 7429306) ^ (v97 - ((2 * v97 + 1900208702) & 0xA9403FB6) + 222400762) ^ ((v12 >> 5) - ((2 * (v12 >> 5)) & 0x368B56F0) - 1689932936);
  LODWORD(v85) = (v36 - ((2 * v36 + 826466878) & 0x2CEA088C) - 820611739) ^ (v85 >> 5) ^ (v122 - 2 * ((v122 + 1484318550) & 0x4FA1866B ^ v122 & 1) + 672820672) ^ (((v85 << 27) ^ 0xA0000000) + (v85 >> 3 << 31) + 1086444645) ^ (v162 - 1940176631);
  LODWORD(v36) = *&v121[4 * (((v98 + 55) ^ (v114 + 70) ^ (v97 - ((2 * v97 + 62) & 0xB6) - 6) ^ ((v12 >> 5) - ((2 * (v12 >> 5)) & 0xF0) + 120)) ^ 0x2A)];
  DWORD1(v12) = v36 ^ 0x14;
  LODWORD(v12) = v36 ^ 0x52158500;
  LODWORD(v65) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0xBBCD006C);
  LOWORD(v120) = v103 ^ 0xCAB5;
  LODWORD(v36) = *(v123 + 4 * (((v103 ^ 0x925ECAB5) >> 16) ^ 0x6Du));
  LODWORD(v3) = *&v124[4 * (BYTE3(v109) ^ 0xD4)];
  LODWORD(v122) = v36 - 2 * ((v36 + 410576726) & 0x20F25FC9 ^ v36 & 1);
  DWORD1(v12) = v3 ^ 0x3C2;
  LODWORD(v12) = v3 ^ 0xE45D8000;
  LODWORD(v36) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xEAD2892);
  v165 = v85 ^ 0x883B338A;
  LODWORD(v3) = *&v125[4 * (((v85 ^ 0x338A) >> 8) ^ 0xA6)];
  LODWORD(v85) = *&v124[4 * (BYTE3(v85) ^ 0xE2)];
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v117) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0x29161336);
  LODWORD(v85) = *&v125[4 * (((v94 ^ 0x8047) >> 8) ^ 0x46)];
  LODWORD(v111) = v85 - ((2 * v85 + 1900208702) & 0xEA36BB02);
  LODWORD(v85) = *&v124[4 * (BYTE3(v103) ^ 0xD3)];
  DWORD1(v12) = v85 ^ 0x3C2;
  LODWORD(v12) = v85 ^ 0xE45D8000;
  LODWORD(v103) = (v12 >> 14) - ((2 * (v12 >> 14)) & 0xB59904B6);
  LODWORD(v85) = *&v125[4 * (BYTE1(v120) ^ 8)];
  LODWORD(v114) = *(v123 + 4 * (((v94 ^ 0x789D8047) >> 16) ^ 0x85u));
  v166 = v109 ^ 0x703AB0CD;
  LODWORD(v109) = *&v121[4 * (v109 ^ 0x42)];
  DWORD1(v12) = v109 ^ 0x14;
  LODWORD(v12) = v109 ^ 0x52158500;
  LODWORD(v109) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x832FCEE8);
  LODWORD(v98) = *&v125[4 * (BYTE1(v166) ^ 0x7F)];
  v167 = v98 - ((2 * v98 + 1900208702) & 0xA141ED58);
  LODWORD(v98) = *&v121[4 * (v165 ^ 0xF7)];
  DWORD1(v12) = v98 ^ 0x14;
  LODWORD(v12) = v98 ^ 0x52158500;
  LODWORD(v98) = (v12 >> 5) - ((2 * (v12 >> 5)) & 0x31039596);
  v168 = *(v123 + 4 * (BYTE2(v166) ^ 0xFu));
  v169 = *(v123 + 4 * (BYTE2(v165) ^ 0x2Eu));
  LODWORD(v120) = *&v121[4 * (v120 ^ 0x1B)];
  DWORD1(v12) = v120 ^ 0x14;
  LODWORD(v12) = v120 ^ 0x52158500;
  LODWORD(v94) = *&v124[4 * (BYTE3(v94) ^ 0x80)];
  LODWORD(v65) = (v65 - 572096458) ^ (v103 - 624131493) ^ (v167 - 1992136757) ^ (v169 - ((2 * v169 + 821153452) & 0x5FEBDCCC) + 141481404) ^ 0xAF7624D7;
  LODWORD(v120) = (v111 - 1380135264) ^ (v168 - ((2 * v168 - 1326330196) & 0xF7BA4808) - 732558502) ^ (v117 + 344656283) ^ ((v12 >> 5) - ((2 * (v12 >> 5)) & 0xCB70519E) + 1706567887);
  DWORD1(v12) = v94 ^ 0x3C2;
  LODWORD(v12) = v94 ^ 0xE45D8000;
  LODWORD(v109) = (v122 - 110409954) ^ (v3 - ((2 * v3 + 1900208702) & 0x4F80024C) - 530484667) ^ (v109 - 1047009420) ^ ((v12 >> 14) - ((2 * (v12 >> 14)) & 0x1D0C78AA) + 243678293) ^ 0x6C1A9B4C;
  LODWORD(v114) = (v36 - 2024369079) ^ (v85 - ((2 * v85 + 289595966) & 0x1400DC42) - 1029578944) ^ (v114 - ((2 * v114 - 1326330196) & 0x82F3ABC2) + 435338551) ^ (v98 - 1736324405) ^ 0x19C5ED7D;
  LODWORD(v117) = STACK[0x7D8];
  v170 = *(&off_10044E3E0 + (LODWORD(STACK[0x7D8]) ^ 0x2F1F)) - 284227214;
  LODWORD(STACK[0x788]) = *&v170[4 * (v120 ^ 0x9F)];
  LODWORD(STACK[0x770]) = *&v170[4 * (v109 ^ 0x82)];
  LODWORD(v94) = *&v170[4 * (v114 ^ 0xDD)];
  LODWORD(STACK[0x7A8]) = *&v170[4 * (v65 ^ 0x2A)];
  v171 = *(&off_10044E3E0 + (v117 ^ 0x2E81)) - 1657210814;
  LODWORD(v98) = *&v171[4 * (((v120 ^ 0x7B8A7EF9) >> 16) ^ 0x37)];
  LODWORD(STACK[0x798]) = *&v171[4 * (BYTE2(v114) ^ 4)];
  LODWORD(v111) = *&v171[4 * (BYTE2(v109) ^ 0x92)];
  LODWORD(v171) = *&v171[4 * (BYTE2(v65) ^ 0x9B)];
  v172 = *(&off_10044E3E0 + v117 - 11489) - 1616633330;
  LODWORD(STACK[0x7B8]) = BYTE3(v109);
  v173 = *&v172[4 * (BYTE3(v109) ^ 0xDF)];
  LODWORD(STACK[0x7B0]) = BYTE3(v65);
  LODWORD(STACK[0x760]) = *&v172[4 * (BYTE3(v65) ^ 3)];
  LODWORD(STACK[0x780]) = BYTE3(v114);
  LODWORD(STACK[0x778]) = *&v172[4 * (BYTE3(v114) ^ 0x86)];
  LODWORD(STACK[0x7C0]) = (v120 ^ 0x7B8A7EF9) >> 24;
  LODWORD(STACK[0x7A0]) = *&v172[4 * (((v120 ^ 0x7B8A7EF9) >> 24) ^ 0x5E)];
  v174 = *(&off_10044E3E0 + v117 - 11589) - 1543440118;
  LODWORD(STACK[0x768]) = *&v174[4 * (BYTE1(v65) ^ 0x98)];
  LODWORD(v122) = *&v174[4 * (((v120 ^ 0x7EF9) >> 8) ^ 0xC2)];
  LODWORD(STACK[0x790]) = *&v174[4 * (BYTE1(v109) ^ 0x6B)];
  LODWORD(STACK[0x758]) = *&v174[4 * (BYTE1(v114) ^ 0xA7)];
  v175 = STACK[0x6E8] + STACK[0x950];
  v176 = (((((v175 - 0x610FC8725D1E70CCLL - ((2 * (v175 - 0x610FC8725D1E70CCLL)) & 0x1B56CA2D2CF9DC70) + 0xDAB6516967CEE38) << 56) ^ 0x3800000000000000) - ((2 * (((v175 - 0x610FC8725D1E70CCLL - ((2 * (v175 - 0x610FC8725D1E70CCLL)) & 0x1B56CA2D2CF9DC70) + 0xDAB6516967CEE38) << 56) ^ 0x3800000000000000)) & 0x2A00000000000000) + 0x15AD61AD3A800E76) & 0xF800000000000000 | ((v175 - 0x610FC8725D1E70CCLL - ((2 * (v175 - 0x610FC8725D1E70CCLL)) & 0x1B56CA2D2CF9DC70) + 0xDAB6516967CEE38) >> 8)) ^ 0x100DAB6516967CEELL;
  v177 = (v176 - 0x6F0B906F9D595EFCLL - ((2 * v176) & 0x21E8DF20C54D4208)) ^ 0x90F46F9062A6A104;
  v178 = v177 - ((2 * v177 + 0x5616341D67C2B0ELL) & 0x1158D2F990DD57C6) + 0x7B5D1B1DB3ACC16ALL;
  *(&v12 + 1) = v178 ^ 0xC8;
  *&v12 = v178 ^ 0x5CEB5F095410C600;
  v179 = (v178 ^ 0xC96ED20E0DE06AF3) + ((v12 >> 8) ^ 0x7FEFCFBFBF7BABF7) + ((2 * (v12 >> 8)) & 0xFFDF9F7F7EF757EELL) - 0x7FEFCFBFBF7BABF7;
  *(&v12 + 1) = v178 ^ 0x96ED20E0DE06AF3;
  *&v12 = v178 ^ 0xC000000000000000;
  v180 = v179 - ((2 * v179) & 0x81D4CB27A37E31E0) - 0x3F159A6C2E40E710;
  v181 = v180 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x8A4074FB8F5FA3DELL) - 0x3ADFC58238502E11);
  *(&v12 + 1) = v180 ^ 0x29;
  *&v12 = v180 ^ 0xB199FAA44A469700;
  v182 = (v181 ^ 0x74B9C0D98DE946C6) + ((v12 >> 8) ^ 0x5F5FF3F92FEEFB37) + ((2 * (v12 >> 8)) & 0xBEBFE7F25FDDF66ELL) - 0x5F5FF3F92FEEFB37;
  *(&v12 + 1) = v181 ^ 0x14B9C0D98DE946C6;
  *&v12 = v181 ^ 0x6000000000000000;
  v183 = v182 - ((2 * v182) & 0x488F1CEC26795860) + 0x24478E76133CAC30;
  v184 = v183 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x18E5949963757290) + 0xC72CA4CB1BAB948);
  *(&v12 + 1) = v183 ^ 0x45;
  *&v12 = v183 ^ 0x5A9D9EAEFB814800;
  v185 = (v184 ^ 0x56EF54E24A3BF10DLL) + ((v12 >> 8) ^ 0xDA9BECBF7EBFEEBBLL) + ((2 * (v12 >> 8)) & 0xB537D97EFD7FDD76) + 0x2564134081401145;
  *(&v12 + 1) = v184 ^ 0x16EF54E24A3BF10DLL;
  *&v12 = v184 ^ 0x4000000000000000;
  v186 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x4E5A865B143489CLL);
  v187 = v185 - ((2 * v185) & 0x7456543AB1E7E878) - 0x45D4D5E2A70C0BC4;
  *(&v12 + 1) = v187 ^ 0x9A;
  *&v12 = v187 ^ 0x7134FB1851E98100;
  v186 -= 0x7D8D2BCD275E5BB2;
  v188 = (v187 ^ v186 ^ 0xF3462F2A894825D4) + ((v12 >> 8) ^ 0x4FDF6F9FF6EFBFFBLL) + ((2 * (v12 >> 8)) & 0x9FBEDF3FEDDF7FF6) - 0x4FDF6F9FF6EFBFFBLL;
  *(&v12 + 1) = v187 ^ v186 ^ 0x13462F2A894825D4;
  *&v12 = v187 ^ ~v186;
  v189 = v188 - ((2 * v188) & 0x8485015D5A4A3A84) + 0x424280AEAD251D42;
  v190 = v189 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x86E823D6A6598F3ELL) - 0x3C8BEE14ACD33861);
  *(&v12 + 1) = (v188 - ((2 * v188) & 0x5A4A3A84) - 1390076606) ^ 0x8Bu;
  *&v12 = v189 ^ 0xC2E1A8DA2E91DA00;
  v191 = (v190 ^ 0x195B9317DBD1D14) + ((v12 >> 8) ^ 0xDFFDFFFFBEFBA629) + ((2 * (v12 >> 8)) & 0xBFFBFFFF7DF74C52);
  *(&v12 + 1) = v190 ^ 0x195B9317DBD1D14;
  *&v12 = v190;
  v192 = v191 + 0x20020000410459D7 - ((2 * (v191 + 0x20020000410459D7)) & 0xB4AAAA675AA5907CLL) - 0x25AAAACC52AD37C2;
  v193 = v192 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xBA0587DCA78C0E08) + 0x5D02C3EE53C60704);
  *(&v12 + 1) = v192 ^ 0x45;
  *&v12 = v192 ^ 0x5F3790835074D900;
  v194 = (v193 ^ 0x235536D03B2DE41) + ((v12 >> 8) ^ 0xFCB7F4F39FEE9FE9) + ((2 * (v12 >> 8)) & 0xF96FE9E73FDD3FD2) + 0x3480B0C60116017;
  *(&v12 + 1) = v193 ^ 0x235536D03B2DE41;
  *&v12 = v193;
  v195 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x74DD1252BA3D390ALL);
  v196 = v194 - ((2 * v194) & 0xDC3DD1CDDF5CB5A0) + 0x6E1EE8E6EFAE5AD0;
  *(&v12 + 1) = v196 ^ 0xA3;
  *&v12 = v196 ^ 0xF9EB845614984000;
  v197 = ((v195 - 0x459176D6A2E1637BLL) ^ 0x43850D7F4986DC26 ^ v196) + ((v12 >> 8) ^ 0xFDFDEBDE9F39FFDCLL) + ((2 * (v12 >> 8)) & 0xFBFBD7BD3E73FFB8) + 0x202142160C60024;
  v198 = v175 - 0x610FC8725D1E70C4 - ((2 * (v175 - 0x610FC8725D1E70C4)) & 0xBABD3734073A9BE6) - 0x22A16465FC62B20DLL;
  v199 = (((v198 << 56) ^ 0xF300000000000000) - ((2 * ((v198 << 56) ^ 0xF300000000000000)) & 0x6800000000000000) - 0x4B5F3A21AC2BB9D5) & 0xF800000000000000 | (v198 >> 8);
  v200 = ((v199 ^ 0xB0DD5E9B9A039D4DLL) + 0x74DFA0C2C12B74D6 - 2 * ((v199 ^ 0xB0DD5E9B9A039D4DLL) & 0x70DFA0C2C12B74F6 ^ (v198 >> 8) & 0x20)) ^ 0x74DFA0C2C12B74D6;
  v201 = v200 - ((2 * v200 + 0x65616341D67C2B0ELL) & 0x51D932C6E37351D2) + 0x1B9D4B045CF7BE70;
  *(&v12 + 1) = v201 ^ 0xC2;
  *&v12 = v201 ^ 0xFCABAF16EDC7C500;
  v202 = (v201 ^ 0x692E2211B43769F9) + ((v12 >> 8) ^ 0x7EF7F7AB2FBDE71ELL) + ((2 * (v12 >> 8)) & 0xFDEFEF565F7BCE3CLL) - 0x7EF7F7AB2FBDE71ELL;
  *(&v12 + 1) = v201 ^ 0x92E2211B43769F9;
  *&v12 = v201 ^ 0x6000000000000000;
  v203 = v202 - ((2 * v202) & 0x49FECD5C779E27FCLL) + 0x24FF66AE3BCF13FELL;
  v204 = v203 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xCAC2647513384D82) - 0x1A9ECDC57663D93FLL);
  *(&v12 + 1) = v203 ^ 0x27;
  *&v12 = v203 ^ 0x558CF999A0369C00;
  v205 = (v204 ^ 0xB0EDCBA329AABAE6) + ((v12 >> 8) ^ 0x7E9FC5DFBFD64F87) + ((2 * (v12 >> 8)) & 0xFD3F8BBF7FAC9F0ELL) - 0x7E9FC5DFBFD64F87;
  *(&v12 + 1) = v204 ^ 0x10EDCBA329AABAE6;
  *&v12 = v204 ^ 0xBFFFFFFFFFFFFFFFLL;
  v206 = v205 - ((2 * v205) & 0xFF51468CAA22AD52) - 0x575CB9AAEEA957;
  v207 = v206 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x7696C0CF7E92BCD2) - 0x44B49F9840B6A197);
  *(&v12 + 1) = v206 ^ 0xDC;
  *&v12 = v206 ^ 0x8172B39EBDACB200;
  v208 = (v207 ^ 0x3A39D3F902E5ECB5) + ((v12 >> 8) ^ 0xE19FFF0FAFF7DFFFLL) + ((2 * (v12 >> 8)) & 0xC33FFE1F5FEFBFFELL) + 0x1E6000F050082001;
  *(&v12 + 1) = v207 ^ 0x1A39D3F902E5ECB5;
  *&v12 = v207 ^ 0x2000000000000000;
  v209 = v208 - ((2 * v208) & 0x4528A9B87C4F64C6) + 0x229454DC3E27B263;
  v210 = v209 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x935274A60D46A9EALL) - 0x3656C5ACF95CAB0BLL);
  *(&v12 + 1) = v209 ^ 0xC5;
  *&v12 = v209 ^ 0xE98B85D9373DC700;
  v211 = (v210 ^ 0x2022BF8A319E9330) + ((v12 >> 8) ^ 0xFFF7BECDF698FDFFLL) + ((2 * (v12 >> 8)) & 0xFFEF7D9BED31FBFELL) + 0x8413209670201;
  v212 = v211 - ((2 * v211) & 0xBF0DB15A15FDCB4CLL) + 0x5F86D8AD0AFEE5A6;
  v213 = v212 ^ (((8 * v210) ^ 0x115FC518CF49980) - ((2 * ((8 * v210) ^ 0x115FC518CF49980)) & 0x45FA1697A213C070) - 0x5D02F4B42EF61FC3);
  *(&v12 + 1) = v213 ^ 0x52;
  *&v12 = v213 ^ 0x7DD8FB925843C200;
  v214 = (v12 >> 8) - ((2 * (v12 >> 8)) & 0x1706BBB10359B652) - 0x747CA2277E5324D7;
  *(&v12 + 1) = v214 ^ 0x5803B37B3DEF11;
  *&v12 = v214 ^ (v210 >> 5) ^ 0xBBBBBBBBBBBBBBBBLL;
  v215 = v12 >> 56;
  LOBYTE(v210) = (((8 * (v175 + 52 - ((2 * (v175 + 52)) & 0x54)) - 48) ^ 0x10) + 37) & 0x38;
  v216 = ((v197 - ((2 * v197) & 0xA7F54B9389E8C4BELL) + 0x53FAA5C9C4F4625FLL) ^ 0xABE38FBC2F0C90C1) >> (v210 ^ 0x20u);
  *(&v12 + 1) = v212 ^ 0x6F;
  *&v12 = v212 ^ 0xDF25F0D9894A2200;
  v217 = v215 - ((2 * v215) & 0xE19B23B523DC4D00) + 0x70CD91DA91EE2680;
  v218 = ((v12 >> 8) ^ 0x5CFFDDE9FB1FCF9FLL) + ((2 * (v12 >> 8)) & 0xB9FFBBD3F63F9F3ELL) - 0x5CFFDDE9FB1FCF9FLL + (v217 ^ 0xAB93FA2000DA1EB1);
  *(&v12 + 1) = v217 ^ 0xB93FA2000DA1EB1;
  *&v12 = v217 ^ 0xBFFFFFFFFFFFFFFFLL;
  v219 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0x502B24A9BBCDC490);
  v220 = v218 - ((2 * v218) & 0xB8B89635DDD1215ELL) + 0x5C5C4B1AEEE890AFLL;
  *(&v12 + 1) = v220 ^ 0xD4;
  *&v12 = v220 ^ 0xD93E8EAA13CE8100;
  v219 += 0x28159254DDE6E248;
  v221 = (v219 ^ v220 ^ 0xF12B1CFECE28639CLL) + ((v12 >> 8) ^ 0xFFFDDBADF565FEFELL) + ((2 * (v12 >> 8)) & 0xFFFBB75BEACBFDFCLL) + 0x224520A9A0102;
  *(&v12 + 1) = v219 ^ v220 ^ 0x112B1CFECE28639CLL;
  *&v12 = v219 ^ ~v220;
  v222 = (v12 >> 61) - ((2 * (v12 >> 61)) & 0xE9FE4BED8AA1BD10);
  v223 = v221 - ((2 * v221) & 0xE543404069EF24ALL) + 0x72A1A02034F7925;
  *(&v12 + 1) = v223 ^ 0x56;
  *&v12 = v223 ^ 0x90DF76B2F8796300;
  v224 = ((v222 - 0xB00DA093AAF2178) ^ 0x642053443D29BDDELL ^ v223) + ((v12 >> 8) ^ 0x6FF7FF7DA3BCDF19) + ((2 * (v12 >> 8)) & 0xDFEFFEFB4779BE32) - 0x6FF7FF7DA3BCDF19;
  v225 = (v224 - ((2 * v224) & 0x7BD0E18906866D02) + 0x3DE870C483433681) ^ 0xC5F15AB168BBC41FLL;
  v226 = (v225 >> (v210 ^ 0x20u)) + 0x656593DB92B5805FLL - ((2 * (v225 >> (v210 ^ 0x20u))) & 0xCACB27B7256B00BELL);
  LOBYTE(v223) = v210 ^ 0x1C;
  v227 = (16 * ((v225 << (v210 ^ 0x1Cu)) - ((2 * (v225 << (v210 ^ 0x1Cu))) & 0x2A4D9D2B6C90600)) - 0x6AD9316A49B7CF60) ^ 0x9526CE95B64830A0;
  v228 = ((v227 + 0x77408415C3984A62 - ((2 * v227) & 0xEE81082B873094C0)) ^ 0x77408415C3984A62) + ((v216 + 0x781D3017A9FC77BBLL - ((2 * v216) & 0xF03A602F53F8EF76)) ^ 0x781D3017A9FC77BBLL);
  v229 = v228 - ((2 * v228) & 0x8E96371975E60634);
  v230 = v175 - 0x610FC8725D1E70BCLL - ((2 * (v175 - 0x610FC8725D1E70BCLL)) & 0x9241BA4AF886F482) - 0x36DF22DA83BC85BFLL;
  v231 = ((((v230 << 56) ^ 0x4100000000000000) - ((2 * ((v230 << 56) ^ 0x4100000000000000)) & 0x600000000000000) + 0x3BC09475DB0C850) & 0xF800000000000000 | (v230 >> 8)) ^ 0xC920DD257C437ALL;
  v232 = (v231 + 0x3398D22ABD89BABCLL - ((2 * v231) & 0x6131A4557B137578)) ^ 0x3398D22ABD89BABCLL;
  v233 = v232 - ((2 * v232 - 0x1A9E9CBE2983D4F2) & 0x9CEE19BAFE08062ALL) + 0x4127BE7E6A42189CLL;
  v234 = ((((v233 << 56) ^ 0x3E00000000000000) + 0x5F7AEEFBE4C61259 - ((2 * ((v233 << 56) ^ 0x3E00000000000000)) & 0xBFFFFFFFFFFFFFFFLL)) ^ 0x5F7AEEFBE4C61259) + (v233 ^ 0xFB5B7AFBA8AC205);
  v235 = ((v233 >> 8) ^ 0x9A303AA8E37A6ELL) + (v234 ^ 0x3275F636FFE7FBE6) + ((2 * v234) & 0x64EBEC6DFFCFF7CCLL) - 0x3275F636FFE7FBE6;
  *(&v12 + 1) = v233 ^ 0xFB5B7AFBA8AC205;
  *&v12 = v233;
  v236 = v235 - ((2 * v235) & 0x2C6FF68CDCFA06AELL) - 0x69C804B99182FCA9;
  v237 = v236 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xDC8D0E875920306CLL) + 0x6E468743AC901836);
  *(&v12 + 1) = v236 ^ 0x8E;
  *&v12 = v236 ^ 0xE7446471F5848C00;
  v238 = (v237 ^ 0x8902E332591494B8) + ((v12 >> 8) ^ 0xEB4FB9C653FB9377) + ((2 * (v12 >> 8)) & 0xD69F738CA7F726EELL) + 0x14B04639AC046C89;
  *(&v12 + 1) = v237 ^ 0x902E332591494B8;
  *&v12 = v237 ^ 0x8000000000000000;
  v239 = v238 - ((2 * v238) & 0xCCD5DFD38AC92678) - 0x199510163A9B6CC4;
  v240 = v239 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x79F9D52BC5DB67E2) - 0x4303156A1D124C0FLL);
  *(&v12 + 1) = v239 ^ 0x49;
  *&v12 = v239 ^ 0x98B0FF312DD97700;
  v241 = (v240 ^ 0x244C15A4CF34C4B8) + ((v12 >> 8) ^ 0x3B2F5CFEB2BFB7DFLL) + ((2 * (v12 >> 8)) & 0x765EB9FD657F6FBELL) - 0x3B2F5CFEB2BFB7DFLL;
  *(&v12 + 1) = v240 ^ 0x44C15A4CF34C4B8;
  *&v12 = v240 ^ 0x2000000000000000;
  v242 = v241 - ((2 * v241) & 0xC2AAD71374772EC2) - 0x1EAA947645C4689FLL;
  v243 = v242 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0x3E8BEF3DA8DE7C0ALL) + 0x1F45F79ED46F3E05);
  *(&v12 + 1) = v242 ^ 0xFFFFFFC7;
  *&v12 = v242 ^ 0x2A4ABA8CB321E200;
  v244 = (v243 ^ 0x350F4D12674EDCC2) + ((v12 >> 8) ^ 0x73FDEDFFF613EBFALL) + ((2 * (v12 >> 8)) & 0xE7FBDBFFEC27D7F4) - 0x73FDEDFFF613EBFALL;
  *(&v12 + 1) = v243 ^ 0x150F4D12674EDCC2;
  *&v12 = v243 ^ 0x2000000000000000;
  v245 = v244 - ((2 * v244) & 0x8BCE51A5FE0FA63ALL) - 0x3A18D72D00F82CE3;
  v246 = v245 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xD91244A0E98840E0) + 0x6C89225074C42070);
  *(&v12 + 1) = v245 ^ 0xD4;
  *&v12 = v245 ^ 0x454400A67CB31400;
  v247 = (v246 ^ 0x29CD22F6087734A4) + ((v12 >> 8) ^ 0xE7F3DDEDFDF9FABBLL) + ((2 * (v12 >> 8)) & 0xCFE7BBDBFBF3F576) + 0x180C221202060545;
  *(&v12 + 1) = v246 ^ 0x9CD22F6087734A4;
  *&v12 = v246 ^ 0x2000000000000000;
  v248 = v247 - ((2 * v247) & 0xB31AA331453CDA66) + 0x598D5198A29E6D33;
  v249 = v248 ^ ((v12 >> 61) - ((2 * (v12 >> 61)) & 0xD0AF50BFE4209866) + 0x6857A85FF2104C33);
  *(&v12 + 1) = v248 ^ 0x48;
  *&v12 = v248 ^ 0xDCEF94285FB87C00;
  v250 = (v249 ^ 0xB4B83C77ADA8307BLL) + ((v12 >> 8) ^ 0xBBFF0377FFEFFFFDLL) + ((2 * (v12 >> 8)) & 0x77FE06EFFFDFFFFALL) + 0x4400FC8800100003;
  *(&v12 + 1) = v249 ^ 0x14B83C77ADA8307BLL;
  *&v12 = v249 ^ 0xBFFFFFFFFFFFFFFFLL;
  v251 = v12 >> 61;
  v252 = v250 - ((2 * v250) & 0x13EA938E2A034428) + 0x9F549C71501A214;
  *(&v12 + 1) = v252 ^ 0x67;
  *&v12 = v252 ^ 0x9E002577EE37B800;
  v253 = ((v251 - ((2 * v251) & 0xF1297A6FA921153ALL) - 0x76B42C82B6F7563) ^ 0xF69498403AA732FALL ^ v252) + ((v12 >> 8) ^ 0xFFE57FE796FEFF9FLL) + ((2 * (v12 >> 8)) & 0xFFCAFFCF2DFDFF3ELL) + 0x1A801869010061;
  v254 = ((v253 - ((2 * v253) & 0xB81E696113C120C0) + 0x5C0F34B089E09060) ^ 0x54161EC5621862FELL) << v223;
  v255 = (16 * (v254 - ((2 * v254) & 0xC859F43887FE7C0)) - 0x1BD305E3BC00C140) ^ 0xE42CFA1C43FF3EC0;
  v256 = ((v255 + 0xC5FF1BA8B260E19 - 2 * (v255 & 0xC5FF1BA8B260E30)) ^ 0xC5FF1BA8B260E19) + (v226 ^ 0x656593DB92B5805FLL);
  v257 = v256 - ((2 * v256) & 0xD7ADA2C1A3B2180);
  v258 = STACK[0x920];
  LODWORD(v226) = v226 ^ 0xB2 ^ *(STACK[0x920] + (v226 ^ 0x62));
  LODWORD(v226) = (((v226 - ((2 * v226) & 0x6C)) << 24) - 1241513984) ^ 0xB6000000;
  LODWORD(v256) = v226 - ((2 * v226) & 0xD2000000);
  v259 = v257 + 0x6BD6D160D1D90C0;
  v260 = STACK[0x8F8];
  LODWORD(v257) = *(STACK[0x8F8] + (((v257 - 28480) >> 8) ^ 0xD1)) ^ 0x11;
  LODWORD(v257) = (LODWORD(STACK[0x7F8]) + ((v257 - ((2 * v257) & 0x178)) << 16) - 405667840) ^ 0xE7BC0000;
  v261 = STACK[0x900];
  LODWORD(v223) = *(STACK[0x900] + (BYTE2(v259) ^ 0x65)) ^ 0xE;
  LODWORD(v223) = (((v223 + 506452 - ((2 * v223) & 0x7C)) << 8) - 5632) ^ 0x7BA3E00;
  v262 = STACK[0x910];
  LODWORD(v221) = *(STACK[0x910] + (BYTE3(v259) ^ 0xB8)) ^ 0x32;
  LODWORD(v118) = LODWORD(STACK[0x8B8]) ^ LODWORD(STACK[0x888]) ^ LODWORD(STACK[0x8C0]) ^ v173 ^ v122 ^ v94 ^ (v221 - ((2 * v221) & 0xFFFFFFBF) - 615115041) ^ (v256 + 1769924313) ^ (v257 - ((2 * v257) & 0xFBE0000) + 1205810437) ^ (v171 - ((2 * v171 - 785124020) & 0xA8E17E0C) + 1024113068) ^ (v223 - ((2 * v223) & 0x64424E00) + 841033580);
  LODWORD(STACK[0x8C0]) = v118;
  LODWORD(v223) = v118 ^ 0x3E74E04C;
  v263 = v229 - 0x38B4E473450CFCE6;
  LODWORD(v121) = *(v258 + ((v216 - 69 - ((2 * v216) & 0x76)) ^ 0x7BLL));
  LODWORD(v125) = *(v260 + (((v229 + 794) >> 8) ^ 0x96));
  LODWORD(STACK[0x8B8]) = *(v261 + (((v229 - 1158479078) >> 16) ^ 0xE5));
  v264 = v262;
  LODWORD(v229) = *(v262 + (((v229 - 1158479078) >> 24) ^ 0x2CLL));
  LODWORD(v100) = *(v258 + (BYTE4(v263) ^ 0x2DLL));
  LODWORD(v262) = *(v260 + (BYTE5(v263) ^ 0xC6));
  LODWORD(v118) = *(v261 + (BYTE6(v263) ^ 0xE1));
  v265 = v261;
  LODWORD(v261) = *(v264 + (HIBYTE(v263) ^ 0x6F));
  v266 = BYTE4(v259);
  v267 = *(v258 + (BYTE4(v259) ^ 0x2CLL));
  v268 = *(&off_10044E3E0 + (v117 ^ 0x2E6F)) - 951923102;
  LODWORD(v256) = *(v260 + (BYTE5(v259) ^ 0x1DLL));
  LODWORD(v265) = *(v265 + (BYTE6(v259) ^ 0xDLL));
  LODWORD(v263) = *(v264 + (HIBYTE(v259) ^ 9));
  v269 = STACK[0x6E0];
  *(v269 + STACK[0x800]) = v268[BYTE2(v223) ^ 0xF5] ^ ((BYTE2(v223) ^ 0x81) - 2 * (((BYTE2(v223) ^ 0x81) + 70) & 0x7D ^ (BYTE2(v223) ^ 0x81) & 1) + 66) ^ 0x5A;
  LODWORD(v259) = ((((BYTE4(v263) ^ 0x5D ^ v100) - ((2 * (BYTE4(v263) ^ 0x5D ^ v100)) & 0x4C)) << 24) + 637534208) ^ 0x26000000;
  LODWORD(v262) = ((((v262 ^ 0x96) - ((2 * v262) & 0xC0)) << 16) - 899678208) ^ 0xCA600000;
  LODWORD(v118) = ((((v118 ^ 0x47) - ((2 * (v118 ^ 0x47)) & 0x192)) << 8) - 115488512) ^ 0xF91DC900;
  LODWORD(v98) = LODWORD(STACK[0x8E8]) ^ LODWORD(STACK[0x8C8]) ^ LODWORD(STACK[0x890]) ^ LODWORD(STACK[0x770]) ^ LODWORD(STACK[0x760]) ^ LODWORD(STACK[0x758]) ^ ((v261 ^ 0x32) - ((2 * (v261 ^ 0x32)) & 0xDDDDDDDD) + 189644526) ^ (v259 - ((2 * v259) & 0xE6000000) - 208227427) ^ (v98 - ((2 * v98 + 20182348) & 0x3CF3F66) - 360605095) ^ (v262 - ((2 * v262) & 0x4C6A0000) - 432731061) ^ (v118 - ((2 * v118) & 0x3344BA00) - 1717412573);
  LODWORD(v264) = STACK[0x7E0];
  v270 = *(&off_10044E3E0 + (v117 ^ 0x2E83)) - 1398048914;
  *(((LODWORD(STACK[0x808]) + 1554113145 - 2 * (STACK[0x808] & 0x5CA1E27B ^ (v264 & 2))) ^ 0xF7F7ED7B83DA1B94) + v269 + ((2 * ((LODWORD(STACK[0x808]) + 1554113145 - 2 * (STACK[0x808] & 0x5CA1E27B ^ v264 & 2)) ^ 0x5CA1E279)) & 0x1BEF7F3DALL) + 0x808128420840613) = v270[BYTE3(v98) ^ 0x1FLL] ^ 0x66;
  LODWORD(v118) = ((((v266 ^ 0x71 ^ v267) - ((2 * (v266 ^ 0x71 ^ v267)) & 0xF4)) << 24) - 100663296) ^ 0xFA000000;
  LODWORD(v171) = ((((v256 ^ 0xA0) - ((2 * (v256 ^ 0xA0)) & 0x5C)) << 16) + 1043202048) ^ 0x3E2E0000;
  LODWORD(v118) = (v171 + 1801844383 - ((2 * v171) & 0x56CA0000)) ^ 0x6B65F69F | (v118 - 515916394 - ((2 * v118) & 0xC2000000)) ^ 0xE13FBD96;
  LODWORD(v171) = ((((v265 ^ 2) - ((2 * v265) & 0x1D0)) << 8) + 1782835200) ^ 0x6A43E800;
  LODWORD(v94) = LODWORD(STACK[0x8D0]) ^ LODWORD(STACK[0x898]) ^ LODWORD(STACK[0x8D8]) ^ LODWORD(STACK[0x788]) ^ LODWORD(STACK[0x768]) ^ LODWORD(STACK[0x778]) ^ ((v263 ^ 0xF0) - ((2 * (v263 ^ 0xF0)) & 0xD0) - 822632088) ^ (v171 - ((2 * v171) & 0x5A3CE800) - 1390513035) ^ (v111 - ((2 * v111 - 785124020) & 0x9D5A6E48) - 1220070966) ^ (v118 + 786286775 + (~(2 * v118) | 0xA2446E93));
  *(((LODWORD(STACK[0x868]) - 476324831 - 2 * (STACK[0x868] & 0x639BDC33 ^ (v264 & 0x12))) ^ 0xAFFFBF3C8EE456D4) + v269 + ((2 * ((LODWORD(STACK[0x868]) - 476324831 - 2 * (STACK[0x868] & 0x639BDC33 ^ v264 & 0x12)) ^ 0xE39BDC21)) & 0xDAFF15EA) + 0x500040C39280750BLL) = v270[BYTE3(v94) ^ 0x21] ^ 0x5B;
  v271 = *(&off_10044E3E0 + (v117 ^ 0x2E78)) - 600274463;
  *(((LODWORD(STACK[0x828]) + 1776198055 - (STACK[0x830] & 0xD3BD434E)) ^ 0x5EADDDE215375E70) + v269 + ((2 * ((LODWORD(STACK[0x828]) + 1776198055 - (STACK[0x830] & 0xD3BD434E)) ^ 0x69DEA1A7)) & 0xF9D3FFAELL) - 0x5EADDDE27CE9FFD7) = v271[BYTE1(v223) ^ 0xC8] ^ 0xB;
  v272 = *(&off_10044E3E0 + (v117 ^ 0x2E43)) - 507787730;
  *(v269 + STACK[0x860]) = v272[LODWORD(STACK[0x780]) ^ 0x15 ^ v94 ^ 0xE9] ^ 0xC5;
  *(v269 + STACK[0x810]) = v271[((v98 ^ 0xDE1C) >> 8) ^ 0xFDLL] ^ 0x66;
  LODWORD(v118) = (v216 - 69 - ((2 * v216) & 0x76)) ^ 0x3D ^ v121;
  LODWORD(v118) = (((v118 - ((2 * v118) & 0xFFFFFFE3)) << 24) + 1895825408) ^ 0x71000000;
  LODWORD(v120) = ((((v125 ^ 0x6F) - ((2 * (v125 ^ 0x6F)) & 0x8A)) << 16) - 700121088) ^ 0xD6450000;
  LODWORD(v216) = ((((LODWORD(STACK[0x8B8]) ^ 0x28) - ((2 * (LODWORD(STACK[0x8B8]) ^ 0x28)) & 0xE0)) << 8) + 1595043840) ^ 0x5F127000;
  v273 = LODWORD(STACK[0x8E0]) ^ LODWORD(STACK[0x8F0]) ^ LODWORD(STACK[0x8A0]) ^ LODWORD(STACK[0x790]) ^ LODWORD(STACK[0x7A8]) ^ LODWORD(STACK[0x7A0]) ^ ((v229 ^ 0x32) - ((2 * (v229 ^ 0x32)) & 0xEA) - 120915595) ^ (v118 - ((2 * v118) & 0x2E000000) + 387287170) ^ (LODWORD(STACK[0x798]) - ((2 * LODWORD(STACK[0x798]) + 20182348) & 0x5265422) - 349363017) ^ (v120 - ((2 * v120) & 0x70540000) + 2016059384) ^ (v216 - ((2 * v216) & 0x74E00E00) + 2054162251);
  *(((LODWORD(STACK[0x850]) + 279959947 - (STACK[0x858] & 0x215FB316)) ^ 0xEFBEECBDEF586275) + v269 + ((2 * ((LODWORD(STACK[0x850]) + 279959947 - (STACK[0x858] & 0x215FB316)) ^ 0x10AFD98Bu)) & 0x1FFEF77FCLL) + 0x1041134200084402) = v271[((v273 ^ 0xA2F0) >> 8) ^ 0x22] ^ 0x24;
  *(v269 + STACK[0x818]) = ((((v273 ^ 0x6B97A2F0) >> 16) ^ 0x86) - ((2 * (((v273 ^ 0x6B97A2F0) >> 16) ^ 0x86) - 116) & 0xD6) - 79) ^ 0xF2 ^ v268[((v273 ^ 0x6B97A2F0) >> 16) ^ 0xF2];
  *(v269 + STACK[0x840]) = v272[LODWORD(STACK[0x7B0]) ^ 0x71 ^ v98 ^ 0x1C] ^ 0x3E;
  *(((LODWORD(STACK[0x838]) + 1403729140 - ((2 * LODWORD(STACK[0x838])) & 0xA75669E8)) ^ 0xF6A7FFD7AC55891BLL) + v269 + ((2 * ((LODWORD(STACK[0x838]) + 1403729140 - ((2 * LODWORD(STACK[0x838])) & 0xA75669E8)) ^ 0x53AB34F4)) & 0x1FFFD7BDELL) + 0x958002800014211) = ((BYTE2(v94) ^ 0x1D) - ((2 * (BYTE2(v94) ^ 0x1D) + 12) & 0x55) + 112) ^ 0xA3 ^ v268[BYTE2(v94) ^ 0x69];
  LODWORD(v262) = STACK[0x820];
  *(((v262 - 328972343 + ((2 * (v262 & 0x6C6447C4 ^ (v264 | 0x7FFFFFFB))) ^ 0x1B) + 1) ^ 0x7BDF5BED8399A296) + v269 + ((2 * ((v262 - 328972343 + ((2 * (v262 & 0x6C6447C4 ^ (v264 | 0x7FFFFFFB))) ^ 0x1B) + 1) ^ 0xEC6447C9)) & 0xDFFBCABE) - 0x7BDF5BED6FFDE55FLL) = v272[LODWORD(STACK[0x7B8]) ^ 0x97 ^ v223] ^ 0x18;
  *(v269 + STACK[0x870]) = ((((v98 ^ 0xD625DE1C) >> 16) ^ 0x26) - ((2 * (((v98 ^ 0xD625DE1C) >> 16) ^ 0x26) + 12) & 0x14) - 48) ^ v268[((v98 ^ 0xD625DE1C) >> 16) ^ 0x52] ^ 4;
  *(v269 + STACK[0x880]) = v271[((v94 ^ 0x1AE9) >> 8) ^ 0xBELL] ^ 0xA4;
  *(v269 + STACK[0x950]) = v270[v273 >> 24] ^ 0xF;
  *(v269 + STACK[0x878]) = v272[LODWORD(STACK[0x7C0]) ^ 0x91 ^ v273 ^ 0xF0] ^ 0xDA;
  LOBYTE(v94) = v270[HIBYTE(LODWORD(STACK[0x8C0])) ^ 0x27];
  LODWORD(v270) = STACK[0x8A8] + 956738345 - ((2 * STACK[0x8A8] + 32) & 0x720D5652) + 16;
  *(v269 + STACK[0x848]) = v94 ^ 0x18;
  return (*(STACK[0x8B0] + 8 * ((27337 * ((v270 ^ 0x3906AB29) < LODWORD(STACK[0x708]))) ^ v117)))();
}