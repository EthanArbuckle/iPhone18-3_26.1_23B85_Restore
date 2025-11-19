void sub_1000017E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001810(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 eventMask] != 1)
  {
    if (qword_10002C0C8 != -1)
    {
      sub_10000F9E0();
    }

    v4 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
      v7 = 134349056;
      v8 = [v3 eventMask];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[RMUserInteractionMonitorAttentionAwareness] event: %{public}llu", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained sendUserInteractionUpdate];
  }
}

void sub_100001AE8(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

void sub_100001BE4(id a1)
{
  qword_10002C508 = objc_alloc_init(RMAudioListenerPoseEngine);

  _objc_release_x1();
}

uint64_t sub_10000200C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002024(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && *(v1 + 104) > *(a1 + 48))
  {
    if (qword_10002C0C8 != -1)
    {
      sub_100011E68();
    }

    v2 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Not stopping CMMediaSession because new session is using it", v3, 2u);
    }
  }

  else
  {
    sub_100011E7C(a1);
  }
}

void sub_1000020C0(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (*(a1 + 9) == 1)
    {
      v2 = *(a1 + 32);
      if (*(a1 + 8))
      {
        if (qword_10002C0C8 != -1)
        {
          sub_100011E68();
        }

        v3 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Keeping existing RMFacePoseCaptureSession", buf, 2u);
        }

        [a1 facePoseCaptureSessionDidConfigure:*(a1 + 64)];
      }

      else
      {
        if (qword_10002C0C8 != -1)
        {
          sub_100011E68();
        }

        v4 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting RMFacePoseCaptureSession", buf, 2u);
        }

        objc_initWeak(buf, a1);
        v5 = *(a1 + 64);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_100010F34;
        v15[3] = &unk_100024920;
        v15[4] = a1;
        objc_copyWeak(&v16, buf);
        [v5 startCaptureSessionWithHandler:v15];

        *(a1 + 8) = 1;
        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
      }

      ++*(a1 + 72);
      v6 = [a1 externalDisplayService];
      [v6 addObserver:a1];

      v7 = *(a1 + 32);
      if (v7)
      {
        *(v7 + 80) = 2;
      }

      v8 = +[BLSBacklight sharedBacklight];
      [v8 addObserver:a1];

      [RMAudioListenerPoseEngine externalDisplayDidConnect:]_0(a1);
      if (qword_10002C0C8 != -1)
      {
        sub_100011D74();
      }

      v9 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting timer to control camera pause state", buf, 2u);
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100011278;
      v14[3] = &unk_100024948;
      v14[4] = a1;
      v10 = sub_100011308(a1, v14, 0.1);
      sub_10000FA14(v2, v10);

      if (qword_10002C0C8 != -1)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      v11 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting timer to read device state", buf, 2u);
      }

      if (v2)
      {
        v2[8] = -1;
        v2[9] = -1;
      }

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000024EC;
      v13[3] = &unk_100024948;
      v13[4] = a1;
      v12 = sub_100011308(a1, v13, 2.0);
      sub_10000FA20(v2, v12);
    }
  }
}

void sub_10000246C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100002488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v4 = *(a1 + 48);
  sub_10001101C(WeakRetained, v2, &v4);
}

void sub_1000024EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v4 = 0;
LABEL_4:

LABEL_8:
    v8 = 0;
    goto LABEL_12;
  }

  v3 = *(v2 + 32);
  v4 = v3;
  if (!v3 || !*(v3 + 10))
  {
    goto LABEL_4;
  }

  v5 = *(a1 + 32);
  if (v5 && (v6 = *(v5 + 32)) != 0)
  {
    v7 = v6[10];

    if (v7 == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = 1;
LABEL_12:
  if (MKBGetDeviceLockState() - 1 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 32);

  sub_1000113B8(v10, v9);
}

void sub_1000025A4(uint64_t a1)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (v4 && *(v3 + 72) > *(a1 + 40))
  {
    if (qword_10002C0C8 != -1)
    {
      sub_100011E68();
    }

    v5 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Not stopping RMFacePoseCaptureSession because new session is using it", v6, 2u);
    }
  }

  else
  {
    sub_100011F08(v2);
  }
}

void sub_1000026E4(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

void sub_1000027DC(uint64_t a1)
{
  v2 = *(a1 + 40);

  dispatch_assert_queue_V2(v2);
}

void sub_10000280C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

id sub_100002828()
{

  return v0;
}

BOOL sub_10000284C()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

void sub_100002894(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint8_t buf)
{

  _os_log_impl(a1, v17, OS_LOG_TYPE_DEFAULT, a4, &buf, 2u);
}

void sub_1000028B4(uint64_t a1)
{
  v2 = *(a1 + 40);

  dispatch_assert_queue_V2(v2);
}

void sub_100002F24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) endpoint];
  v8 = sub_100015290(v7);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003024;
  block[3] = &unk_100024A08;
  v9 = *(a1 + 40);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_10000303C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v3 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100003110(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1000151B0(a2);
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v3 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1000031EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003204(uint64_t a1, id *a2)
{
  if (a2)
  {
    v3 = sub_100012944(a2);
    v6 = v3;
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = @"Unknown";
    }

    [*(*(*(a1 + 40) + 8) + 40) addObject:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [NSKeyedArchiver archivedDataWithRootObject:*(*(*(a1 + 40) + 8) + 40) requiringSecureCoding:1 error:0];
    (*(v5 + 16))(v5, @"RMSpiListClients");
  }
}

void sub_1000032C0(void *a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (v3)
  {
    v4 = sub_100012944(v3);
    v5 = [v4 isEqualToString:a1[4]];

    if (v5)
    {
      sub_1000151B0(v9);
      ++*(*(a1[6] + 8) + 24);
    }
  }

  else
  {
    v6 = a1[5];
    v7 = [NSNumber numberWithUnsignedInteger:*(*(a1[6] + 8) + 24)];
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
    (*(v6 + 16))(v6, @"RMSpiDisconnectClient", v8);
  }
}

void sub_100003424(id a1)
{
  qword_10002C0E0 = os_log_create("com.apple.RelativeMotion", "InternalService");

  _objc_release_x1();
}

void sub_1000037DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) receiverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000038A4;
  block[3] = &unk_100024AC8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void *sub_1000038A4(void *result)
{
  v1 = atomic_load((result[4] + 8));
  if (v1)
  {
    return (*(result[6] + 16))(result[6], result[5]);
  }

  return result;
}

void sub_100003A18(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

void sub_100003AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = (a1 + 32);
    if (sub_100012074(*(a1 + 32), v5))
    {
      if (qword_10002C0C8 != -1)
      {
        sub_1000122EC();
      }

      v9 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Suppressing duplicate activity: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      if (*v7)
      {
        objc_setProperty_atomic(*v7, v8, v5, 24);
      }

      v10 = [NSMutableDictionary alloc];
      v16[0] = kCMHeadphoneEventTypeKey;
      v16[1] = kCMHeadphoneEventPayloadData;
      v17[0] = kCMHeadphoneEventTypeActivity;
      v17[1] = v5;
      v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
      v12 = [v10 initWithDictionary:v11];

      if (v6)
      {
        [v12 setObject:v6 forKeyedSubscript:kCMHeadphoneEventPayloadError];
      }

      v13 = [NSKeyedArchiver archivedDataWithRootObject:v12 requiringSecureCoding:0 error:0];
      if (v13)
      {
        sub_100012214(a1 + 32, &v15, a1, v13);
      }

      else
      {
        if (qword_10002C0C8 != -1)
        {
          sub_1000122C4();
        }

        v14 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to serialize activity dictionary: %{public}@", buf, 0xCu);
        }
      }
    }
  }
}

void sub_100003D98(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

id sub_100003DDC(uint64_t a1, const char *a2)
{

  return objc_getProperty(v2, a2, 24, 1);
}

id *sub_100003F84(id *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v4 = result;
    [result[4] setLastDeviceStatus:a2];
    v5 = [v4[4] lastDeviceStatus];
    v6 = v4[4];
    if (v5)
    {

      return [v6 notifyDisconnectedToClient];
    }

    else
    {

      return [v6 notifyConnectedToClient];
    }
  }

  return result;
}

void sub_100004394(uint64_t a1)
{
  v2 = [*(a1 + 32) callbackBlock];
  v2[2](v2, *(a1 + 40));
}

void sub_100004764(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = [v6 domain];
  v9 = v8;
  if (v8 != CMErrorDomain)
  {

    goto LABEL_10;
  }

  v10 = [v7 code];

  if (v10 != 109)
  {
LABEL_10:
    if (v5)
    {
      if (qword_10002C0C8 != -1)
      {
        sub_100012384();
      }

      v15 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = v15;
        v18 = [v16 activeAudioRouteDeviceID];
        v20 = 138477827;
        v21 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[RMHeadphoneStatusProvider] Activity supported for device: %{private}@", &v20, 0xCu);
      }

      [*(a1 + 32) setActivitySupported:1];
      [*(a1 + 32) notifyConnectedToClient];
    }

    goto LABEL_16;
  }

  if (qword_10002C0C8 != -1)
  {
    sub_100012384();
  }

  v11 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = v11;
    v14 = [v12 activeAudioRouteDeviceID];
    v20 = 138477827;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[RMHeadphoneStatusProvider] Activity not supported for device: %{private}@", &v20, 0xCu);
  }

  [*(a1 + 32) notifyDisconnectedToClient];
LABEL_16:
  v19 = [*(a1 + 32) audioAccessoryManager];
  [v19 stopActivityUpdates];
}

void sub_100004A54(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

__CFString *sub_100004A98()
{
  v0 = __chkstk_darwin();
  *rgidp = 0;
  *pidp = 0;
  v1 = v0[1];
  *atoken.val = *v0;
  *&atoken.val[4] = v1;
  *asidp = 0;
  audit_token_to_au32(&atoken, 0, &rgidp[1], &asidp[1], pidp, rgidp, &pidp[1], asidp, 0);
  if (proc_pidpath(pidp[1], &atoken, 0x1000u) <= 0)
  {
    goto LABEL_11;
  }

  v2 = [NSString stringWithUTF8String:&atoken];
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [NSURL URLWithString:v2];
  if (v4 && (v5 = _CFBundleCopyBundleURLForExecutableURL()) != 0)
  {
    v6 = v5;
    v7 = CFBundleCreate(kCFAllocatorDefault, v5);
    if (v7)
    {
      v8 = v7;
      v9 = CFBundleGetIdentifier(v7);
      CFRelease(v8);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
LABEL_11:
    *rgidp = 0;
    *pidp = 0;
    v10 = v0[1];
    *atoken.val = *v0;
    *&atoken.val[4] = v10;
    *asidp = 0;
    audit_token_to_au32(&atoken, 0, &rgidp[1], &asidp[1], pidp, rgidp, &pidp[1], asidp, 0);
    if (proc_pidpath(pidp[1], &atoken, 0x1000u) < 1)
    {
      v9 = 0;
    }

    else
    {
      v9 = [NSString stringWithUTF8String:&atoken];
    }
  }

  return v9;
}

void sub_100004C88(id a1)
{
  qword_10002C0C0 = os_log_create("com.apple.RelativeMotion", "IPC");

  _objc_release_x1();
}

void sub_100004D10(id a1)
{
  qword_10002C518 = objc_opt_new();

  _objc_release_x1();
}

void sub_1000050AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000050D4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained;
    objc_sync_enter(v8);
    [v8 setLastDeviceStatus:a2];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [v8 managers];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [*(*(&v15 + 1) + 8 * v12) deviceMotionStatusHandler];
          v14 = v13;
          if (v13)
          {
            (*(v13 + 16))(v13, a2, v5);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v8);
  }
}

void sub_100005598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000055C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v9 managers];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) deviceMotionHandler];
          v15 = v14;
          if (v14)
          {
            (*(v14 + 16))(v14, v5, v6);
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v16 = sub_1000087A8();
    [v9 setDmSamplesPerSecond:{objc_msgSend(v9, "dmSamplesPerSecond") + 1}];
    [v9 lastDMSampleTime];
    if (v17 + 1.0 < v16)
    {
      [v9 setDmSampleRate:{objc_msgSend(v9, "dmSamplesPerSecond")}];
      [v9 setDmSamplesPerSecond:0];
      [v9 setLastDMSampleTime:v16];
    }

    [v9 lastDMPrintTime];
    if (v18 + 5.0 < v16)
    {
      [v9 setLastDMPrintTime:v16];
      if (qword_10002C0C8 != -1)
      {
        sub_100012A14();
      }

      v19 = qword_10002C0D0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 dmSampleRate];
        *buf = 134349056;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] current device motion samples per second: %{public}lu", buf, 0xCu);
      }
    }

    objc_sync_exit(v9);
  }
}

void sub_100005BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005C20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [v9 managers];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v21 + 1) + 8 * i) activityHandler];
          v15 = v14;
          if (v14)
          {
            (*(v14 + 16))(v14, v5, v6);
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v16 = sub_1000087A8();
    [v9 setActivitySamplesPerSecond:{objc_msgSend(v9, "activitySamplesPerSecond") + 1}];
    [v9 lastActivitySampleTime];
    if (v17 + 1.0 < v16)
    {
      [v9 setActivitySampleRate:{objc_msgSend(v9, "activitySamplesPerSecond")}];
      [v9 setActivitySamplesPerSecond:0];
      [v9 setLastActivitySampleTime:v16];
    }

    [v9 lastActivityPrintTime];
    if (v18 + 5.0 < v16)
    {
      [v9 setLastActivityPrintTime:v16];
      if (qword_10002C0C8 != -1)
      {
        sub_100012A14();
      }

      v19 = qword_10002C0D0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 activitySampleRate];
        *buf = 134349056;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[RMAudioAccessoryManager] current activity samples per second: %{public}lu", buf, 0xCu);
      }
    }

    objc_sync_exit(v9);
  }
}

void sub_1000071D4(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

void sub_100007218(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:0 error:0];
    if (v4)
    {
      sub_100012BF4(a1, &v6, v4);
    }

    else
    {
      if (qword_10002C0C8 != -1)
      {
        sub_100012CA4();
      }

      v5 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to serialize CMDeviceMotion object: %{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_10000737C(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

id sub_100007640()
{
  if (qword_10002C0B8 != -1)
  {
    sub_100012FF8();
  }

  v1 = qword_10002C0C0;

  return v1;
}

void sub_100007B84(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    if (qword_10002C0B8 != -1)
    {
      sub_100012FF8();
    }

    v8 = qword_10002C0C0;
    if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "New connection request received", &v29, 2u);
    }

    v9 = [RMConnectionEndpoint alloc];
    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    v12 = [v11 queue];
    v13 = sub_100015064(&v9->super.isa, v3, v12);

    if ([*v10 isEndpointConnectionAllowed:v13])
    {
      if (qword_10002C0B8 != -1)
      {
        sub_100013130();
      }

      v21 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
        v23 = sub_1000153DC(v13);
        v24 = sub_100012944(v13);
        v25 = sub_100012990(v13);
        v29 = 134284035;
        name = v23;
        v31 = 2114;
        v32 = v24;
        v33 = 1025;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Accepted connection %{private}p from %{public}@ (%{private}d)", &v29, 0x1Cu);
      }

      sub_10001540C(v13, *v10);
      v26 = [*v10 messageHandlerConstructor];
      v27 = (v26)[2](v26, v13);

      v28 = sub_100014DC4(v13);

      if (!v28)
      {
        sub_100013238();
      }

      sub_1000131C4(v13, v27, v10);
    }

    else
    {
      if (qword_10002C0B8 != -1)
      {
        sub_100013130();
      }

      v14 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = sub_1000153DC(v13);
        v17 = sub_100012944(v13);
        v18 = sub_100012990(v13);
        v29 = 134284035;
        name = v16;
        v31 = 2114;
        v32 = v17;
        v33 = 1025;
        v34 = v18;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Denied connection %{private}p from %{public}@ (%{private}d)", &v29, 0x1Cu);
      }
    }
  }

  else
  {
    v5 = type;
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(v3, _xpc_error_key_description);
      if (qword_10002C0B8 != -1)
      {
        sub_100012FF8();
      }

      v20 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_FAULT))
      {
        v29 = 136315138;
        name = string;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_FAULT, "Got error: %s", &v29, 0xCu);
      }
    }

    else
    {
      if (qword_10002C0B8 != -1)
      {
        sub_100012FF8();
      }

      v6 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_FAULT))
      {
        v7 = v6;
        v29 = 136315138;
        name = xpc_type_get_name(v5);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Unexpected event type %s", &v29, 0xCu);
      }
    }
  }
}

void sub_100008030(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  v3 = [NSArray arrayWithArray:v2];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        if (v9)
        {
          v10 = *(v9 + 16);
        }

        else
        {
          v10 = 0;
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40), v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = v11;
    }

    while (v11);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void sub_1000085D8(id a1)
{
  qword_10002C0C0 = os_log_create("com.apple.RelativeMotion", "IPC");

  _objc_release_x1();
}

void sub_100008648(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void sub_100008674(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

void sub_100008694(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

BOOL sub_1000086B4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

BOOL sub_1000086CC(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

double sub_1000086E4(unint64_t a1)
{
  v2 = *&qword_10002C530;
  if (*&qword_10002C530 == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&qword_10002C530 = v2;
  }

  return v2 * a1;
}

double sub_1000087A8()
{
  v0 = mach_continuous_time();

  return sub_1000086E4(v0);
}

void sub_100008AA0(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = [*(a1 + 32) receiverQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008B90;
  block[3] = &unk_100024E00;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v6 = v4;
  v7 = v2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;
  dispatch_async(v3, block);
}

void sub_100008B90(uint64_t a1)
{
  if ([*(a1 + 32) isRunning])
  {
    v2 = *(a1 + 40);
    v3 = [NSData dataWithBytes:a1 + 48 length:64];
    (*(v2 + 16))(v2, v3);
  }
}

void sub_100008FE8(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2]();
}

void sub_1000090AC(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

void sub_100009128(id a1)
{
  v1 = MGCopyAnswer();
  byte_10002C538 = v1 == kCFBooleanTrue;

  CFRelease(v1);
}

void sub_1000091C4(id a1)
{
  qword_10002C548 = objc_opt_new();

  _objc_release_x1();
}

id sub_10000942C()
{
  if (qword_10002C0C8 != -1)
  {
    sub_1000148F8();
  }

  v1 = qword_10002C0D0;

  return v1;
}

void sub_100009470(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  qword_10002C558 = [v1 initWithObjects:{v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];

  _objc_release_x1();
}

void sub_100009560(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [RBSProcessIdentifier identifierWithPid:sub_100012990(*(a1 + 32))];
  v5 = [RBSProcessPredicate predicateMatchingIdentifier:v4];
  v15 = v5;
  v6 = [NSArray arrayWithObjects:&v15 count:1];
  [v3 setPredicates:v6];

  v7 = +[RBSProcessStateDescriptor descriptor];
  [v3 setStateDescriptor:v7];

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009744;
  v8[3] = &unk_100024EA8;
  v12 = v13;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v3 setUpdateHandler:v8];

  _Block_object_dispose(v13, 8);
}

void sub_100009724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009744(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = [a4 state];
  v8 = [v7 taskState];

  if (v8 == 4)
  {
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      if (qword_10002C0C8 != -1)
      {
        sub_1000148F8();
      }

      v12 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%{public}@ is scheduled, resuming data stream", buf, 0xCu);
      }

      v13 = sub_100015290(*(a1 + 32));
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000099F4;
      v14[3] = &unk_100024D78;
      v11 = &v15;
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      dispatch_async(v13, v14);

      *(*(*(a1 + 56) + 8) + 24) = 1;
      goto LABEL_15;
    }
  }

  else if (v8 == 3 && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    if (qword_10002C0C8 != -1)
    {
      sub_1000148F8();
    }

    v9 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@ is suspended, pausing data stream", buf, 0xCu);
    }

    v10 = sub_100015290(*(a1 + 32));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000099EC;
    block[3] = &unk_100024948;
    v11 = &v18;
    v18 = *(a1 + 40);
    dispatch_async(v10, block);

    *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_15:
  }
}

void sub_100009A88(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

void sub_100009ACC(float a1)
{
  *(v5 - 160) = a1;
  *(v5 - 156) = 0;
  *(v5 - 152) = 2082;
  *(v4 + 10) = v3;
  *(v5 - 142) = 2082;
  *(v4 + 20) = v2;
  *(v5 - 132) = 2081;
  *(v4 + 30) = v1;
}

void sub_100009B60(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

void sub_100009B7C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void sub_100009B98(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

void sub_100009BB4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void sub_10000A134(uint64_t a1)
{
  [*(a1 + 32) setHandler:*(a1 + 40)];
  v2 = [*(a1 + 32) captureContext];
  v3 = [v2 count];

  if (!v3 && [*(a1 + 32) configureCaptureSession])
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [*(a1 + 32) captureQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A464;
      block[3] = &unk_100024948;
      block[4] = *(a1 + 32);
      dispatch_async(v6, block);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = [*(a1 + 32) captureContext];
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (([v12 supportsFaceKitMetadata] & 1) == 0)
          {
            [*(a1 + 32) startFaceKitForContext:v12];
            [v12 faceKit];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v9);
    }

    if (qword_10002C0C8 != -1)
    {
      sub_10001490C();
    }

    v13 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting capture session", buf, 2u);
    }

    if (([*(a1 + 32) isCameraPaused] & 1) == 0)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = [*(a1 + 32) captureContext];
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v21 + 1) + 8 * j) captureSession];
            [v19 startRunning];
          }

          v16 = [v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
        }

        while (v16);
      }
    }

    if (qword_10002C0C8 != -1)
    {
      sub_10001490C();
    }

    v20 = qword_10002C0D0;
    if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Started capture session", buf, 2u);
    }
  }
}

void sub_10000A464(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 facePoseCaptureSessionDidConfigure:*(a1 + 32)];
}

void sub_10000A598(uint64_t a1)
{
  if (qword_10002C0C8 != -1)
  {
    sub_100014934();
  }

  v1 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Stopping capture session", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v2 = [*(a1 + 32) captureContext];
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v45;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v44 + 1) + 8 * i) captureSession];
        [v7 stopRunning];
      }

      v4 = [v2 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) setHandler:0];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(a1 + 32) captureContext];
  v8 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (j = 0; j != v9; j = j + 1)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * j);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v13 = [v12 captureSession];
        v14 = [v13 inputs];

        v15 = [v14 countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          do
          {
            for (k = 0; k != v16; k = k + 1)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v36 + 1) + 8 * k);
              v20 = [v12 captureSession];
              [v20 removeInput:v19];
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:v50 count:16];
          }

          while (v16);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v21 = [v12 captureSession];
        v22 = [v21 outputs];

        v23 = [v22 countByEnumeratingWithState:&v32 objects:v49 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v33;
          do
          {
            for (m = 0; m != v24; m = m + 1)
            {
              if (*v33 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v32 + 1) + 8 * m);
              v28 = [v12 captureSession];
              [v28 removeOutput:v27];
            }

            v24 = [v22 countByEnumeratingWithState:&v32 objects:v49 count:16];
          }

          while (v24);
        }

        [v12 setCaptureSession:0];
        [v12 setCaptureDeviceInput:0];
        [v12 setVideoDataOutput:0];
        [v12 setMetadataOutput:0];
        [*(a1 + 32) stopFaceKitForContext:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v9);
  }

  v29 = [*(a1 + 32) captureContext];
  [v29 removeAllObjects];
}

void sub_10000AA14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 8) != v2)
  {
    *(v1 + 8) = v2;
    if (*(a1 + 40) == 1)
    {
      if (qword_10002C0C8 != -1)
      {
        sub_100014934();
      }

      v4 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Pausing capture session", buf, 2u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v5 = [*(a1 + 32) captureContext];
      v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v24;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(*(&v23 + 1) + 8 * i) captureSession];
            [v10 stopRunning];
          }

          v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v7);
      }
    }

    else
    {
      if (qword_10002C0C8 != -1)
      {
        sub_100014934();
      }

      v11 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Resuming capture session", buf, 2u);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = [*(a1 + 32) captureContext];
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v19 + 1) + 8 * j) captureSession];
            [v17 startRunning];
          }

          v14 = [v12 countByEnumeratingWithState:&v19 objects:v28 count:16];
        }

        while (v14);
      }

      if (qword_10002C0C8 != -1)
      {
        sub_10001490C();
      }

      v18 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Resumed capture session", buf, 2u);
      }
    }
  }
}

void sub_10000C444(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:"discoverySessionWithDeviceTypes:mediaType:position:" mediaType:a2 position:?];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v22 = v29 = 0u;
  v5 = [v22 devices];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v26 + 1) + 8 * v9);
      v11 = [*(a1 + 32) captureContext];
      v12 = [v11 count];
      v13 = [*(a1 + 32) maxNumberOfCameras];

      if (v12 >= v13)
      {
        break;
      }

      if (([v10 isContinuityCamera] & 1) == 0)
      {
        v14 = [v10 deviceType];
        v15 = v14;
        if (v14 != AVCaptureDeviceTypeExternal)
        {

LABEL_11:
          v18 = objc_opt_new();
          ++*(*(*(a1 + 40) + 8) + 24);
          [v18 setCameraID:?];
          [v18 setMediaType:v23];
          [v18 setCaptureDevice:v10];
          v19 = [v10 deviceType];
          if (v19 == AVCaptureDeviceTypeExternal)
          {
            [v18 setBuiltInCamera:0];
          }

          else
          {
            v20 = [v10 deviceType];
            [v18 setBuiltInCamera:v20 != AVCaptureDeviceTypeContinuityCamera];
          }

          CMTimeMake(&v25, 0, 1);
          v24 = v25;
          [v18 setDetectedFacesTimestamp:&v24];
          v21 = [*(a1 + 32) captureContext];
          [v21 addObject:v18];

          goto LABEL_15;
        }

        v16 = [v10 localizedName];
        v17 = [v16 containsString:@"Display"];

        if (v17)
        {
          goto LABEL_11;
        }
      }

LABEL_15:
      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_10000D0C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000D0D8(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

uint64_t sub_10000D124(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1();
}

id sub_10000D170(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:kCVAFaceTracking_TrackedFacesArray];
  [*(a1 + 32) setTrackedFaces:v3];

  v4 = [*(a1 + 32) trackedFaces];
  if (v4)
  {
    v5 = v4;
    v6 = [*(a1 + 32) trackedFaces];

    if (v6)
    {
      v7 = objc_opt_new();
      v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(a1 + 32) cameraID]);
      [v7 setObject:v8 forKeyedSubscript:@"rm_camera_id"];

      v9 = [*(a1 + 32) captureDevice];
      v10 = [v9 localizedName];
      [v7 setObject:v10 forKeyedSubscript:@"rm_camera_device_name"];

      v11 = [*(a1 + 32) captureDevice];
      v12 = [v11 modelID];
      [v7 setObject:v12 forKeyedSubscript:@"rm_camera_device_model_id"];

      v13 = [*(a1 + 32) captureDevice];
      v14 = [v13 uniqueID];
      [v7 setObject:v14 forKeyedSubscript:@"rm_camera_device_id"];

      v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) isBuiltInCamera]);
      [v7 setObject:v15 forKeyedSubscript:@"rm_built_in"];

      v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) numberOfDetectedFaces]);
      [v7 setObject:v16 forKeyedSubscript:@"rm_number_of_detected_faces"];

      v17 = [*(a1 + 32) trackedFaces];
      [v7 setObject:v17 forKeyedSubscript:@"rm_tracked_faces"];

      v18 = [*(a1 + 32) videoDataOutput];
      v19 = [NSNumber numberWithInt:v18 != 0];
      [v7 setObject:v19 forKeyedSubscript:@"rm_has_video_data_output"];

      v20 = [*(a1 + 32) metadataOutput];
      v21 = [NSNumber numberWithInt:v20 != 0];
      [v7 setObject:v21 forKeyedSubscript:@"rm_has_metadata_output"];

      v22 = [*(a1 + 40) captureQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D4C8;
      block[3] = &unk_100024FE0;
      block[4] = *(a1 + 40);
      v26 = v7;
      v27 = *(a1 + 48);
      v28 = *(a1 + 64);
      v23 = v7;
      dispatch_async(v22, block);
    }
  }

  [*(a1 + 32) setNumberOfDetectedFaces:-1];
  return [*(a1 + 32) setTrackedFaces:0];
}

void sub_10000D4C8(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    v4 = *(a1 + 40);
    v5 = v3[2];
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    v5(v3, v4, &v6);
  }
}

void sub_10000E734(id a1)
{
  qword_10002C0D0 = os_log_create("com.apple.RelativeMotion", "TempestDataProducer");

  _objc_release_x1();
}

id sub_10000E778()
{
  if (qword_10002C5B0 != -1)
  {
    sub_100014948();
  }

  v1 = qword_10002C5A8;

  return v1;
}

void sub_10000E7BC(id a1)
{
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v4 lastObject];
  v2 = [NSString stringWithFormat:@"%@/%s", v1, "com.apple.relatived"];
  v3 = qword_10002C5A8;
  qword_10002C5A8 = v2;
}

void sub_10000E854()
{
  if (qword_10002C0A8 != -1)
  {
    sub_10001495C();
  }

  v0 = qword_10002C0B0;
  if (os_log_type_enabled(qword_10002C0B0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "relatived exiting", v5, 2u);
  }

  dispatch_sync(qword_10002C570, &stru_100025068);
  dispatch_sync(qword_10002C580, &stru_100025088);
  dispatch_sync(qword_10002C590, &stru_1000250A8);
  dispatch_sync(qword_10002C5A0, &stru_1000250C8);
  v1 = qword_10002C570;
  qword_10002C570 = 0;

  v2 = qword_10002C580;
  qword_10002C580 = 0;

  v3 = qword_10002C590;
  qword_10002C590 = 0;

  v4 = qword_10002C5A0;
  qword_10002C5A0 = 0;
}

void sub_10000E958(id a1)
{
  [qword_10002C568 invalidate];
  v1 = qword_10002C568;
  qword_10002C568 = 0;
}

void sub_10000E998(id a1)
{
  [qword_10002C578 invalidate];
  v1 = qword_10002C578;
  qword_10002C578 = 0;
}

void sub_10000E9D8(id a1)
{
  [qword_10002C588 invalidate];
  v1 = qword_10002C588;
  qword_10002C588 = 0;
}

void sub_10000EA18(id a1)
{
  [qword_10002C598 invalidate];
  v1 = qword_10002C598;
  qword_10002C598 = 0;
}

uint64_t start()
{
  if (qword_10002C0A8 != -1)
  {
    sub_10001495C();
  }

  v0 = qword_10002C0B0;
  if (os_log_type_enabled(qword_10002C0B0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19.st_dev) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "relatived starting", &v19, 2u);
  }

  memset(&v19, 0, sizeof(v19));
  v1 = sub_10000E778();
  if (stat([v1 UTF8String], &v19))
  {
    if (*__error() == 2)
    {
      if (mkdir([v1 UTF8String], 0x1E4u))
      {
        if (qword_10002C0A8 != -1)
        {
          sub_100014970();
        }

        v2 = qword_10002C0B0;
        if (os_log_type_enabled(qword_10002C0B0, OS_LOG_TYPE_ERROR))
        {
          v3 = v2;
          v4 = __error();
          v5 = strerror(*v4);
          *buf = 138412546;
          *&buf[4] = v1;
          *&buf[12] = 2080;
          *&buf[14] = v5;
          v6 = "Error trying to create our cache directory (%@): %s";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v6, buf, 0x16u);
        }
      }
    }

    else
    {
      if (qword_10002C0A8 != -1)
      {
        sub_100014970();
      }

      v7 = qword_10002C0B0;
      if (os_log_type_enabled(qword_10002C0B0, OS_LOG_TYPE_ERROR))
      {
        v3 = v7;
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2080;
        *&buf[14] = v9;
        v6 = "Unexpected while checking for prsence of our cache directory (%@): %s";
        goto LABEL_16;
      }
    }
  }

  v10 = dispatch_queue_create("Tempest", 0);
  v11 = qword_10002C570;
  qword_10002C570 = v10;

  v12 = dispatch_queue_create("Public", 0);
  v13 = qword_10002C580;
  qword_10002C580 = v12;

  v14 = dispatch_queue_create("Control", 0);
  v15 = qword_10002C590;
  qword_10002C590 = v14;

  v16 = dispatch_queue_create("Status", 0);
  v17 = qword_10002C5A0;
  qword_10002C5A0 = v16;

  dispatch_async(qword_10002C570, &stru_1000250E8);
  dispatch_async(qword_10002C580, &stru_100025148);
  dispatch_async(qword_10002C590, &stru_100025188);
  dispatch_async(qword_10002C5A0, &stru_1000251E8);
  *buf = off_100025228;
  sigaction(2, buf, 0);
  sigaction(3, buf, 0);
  sigaction(15, buf, 0);
  CFRunLoopRun();
  sub_10000E854();

  return 0;
}

void sub_10000ED70(id a1)
{
  v1 = [RMConnectionListener alloc];
  v2 = [(RMConnectionListener *)v1 initWithQueue:qword_10002C570 entitlement:@"com.apple.developer.coremotion.head-pose" messageHandlerConstructor:&stru_100025128];
  v3 = qword_10002C568;
  qword_10002C568 = v2;

  [qword_10002C568 setDeprecatedEntitlement:@"com.apple.relatived.tempest"];
  v4 = qword_10002C568;

  [v4 startListeningForService:@"com.apple.relatived.tempest"];
}

RMConnectionStreamProducingDelegate *__cdecl sub_10000EDF0(id a1, RMConnectionEndpoint *a2)
{
  v2 = a2;
  v3 = [[RMDataStreamHandler alloc] initWithEndpoint:v2 isInternal:1];

  return v3;
}

void sub_10000EE4C(id a1)
{
  v1 = [RMConnectionListener alloc];
  v2 = [(RMConnectionListener *)v1 initWithQueue:qword_10002C580 entitlement:@"com.apple.locationd.activity" tccService:kTCCServiceMotion messageHandlerConstructor:&stru_100025168];
  v3 = qword_10002C578;
  qword_10002C578 = v2;

  v4 = qword_10002C578;

  [v4 startListeningForService:@"com.apple.relatived.public"];
}

RMConnectionStreamProducingDelegate *__cdecl sub_10000EEC8(id a1, RMConnectionEndpoint *a2)
{
  v2 = a2;
  v3 = [[RMDataStreamHandler alloc] initWithEndpoint:v2 isInternal:0];

  return v3;
}

void sub_10000EF24(id a1)
{
  v1 = [RMConnectionListener alloc];
  v2 = [(RMConnectionListener *)v1 initWithQueue:qword_10002C590 entitlement:@"com.apple.relatived.internal" messageHandlerConstructor:&stru_1000251C8];
  v3 = qword_10002C588;
  qword_10002C588 = v2;

  v4 = qword_10002C588;

  [v4 startListeningForService:@"com.apple.relatived.internal"];
}

RMConnectionDataDelegate *__cdecl sub_10000EF94(id a1, RMConnectionEndpoint *a2)
{
  v2 = a2;
  v3 = [RMInternalServiceHandler alloc];
  v4 = [(RMInternalServiceHandler *)v3 initWithEndpoint:v2 managedListener:qword_10002C578];

  return v4;
}

void sub_10000EFF4(id a1)
{
  v1 = [RMConnectionListener alloc];
  v2 = [(RMConnectionListener *)v1 initWithQueue:qword_10002C5A0 entitlement:0 messageHandlerConstructor:&stru_100025208];
  v3 = qword_10002C598;
  qword_10002C598 = v2;

  v4 = qword_10002C598;

  [v4 startListeningForService:@"com.apple.relatived.status"];
}

RMConnectionStreamProducingDelegate *__cdecl sub_10000F060(id a1, RMConnectionEndpoint *a2)
{
  v2 = a2;
  v3 = [[RMDataStreamHandler alloc] initWithEndpoint:v2 isInternal:0];

  return v3;
}

void sub_10000F0BC(unsigned int a1)
{
  if (a1 <= 0xF && ((1 << a1) & 0x800C) != 0)
  {
    Main = CFRunLoopGetMain();

    CFRunLoopStop(Main);
  }
}

void sub_10000F104(id a1)
{
  qword_10002C0B0 = os_log_create("com.apple.RelativeMotion", "Daemon");

  _objc_release_x1();
}

id sub_10000F148()
{
  if (qword_10002C0B8 != -1)
  {
    sub_10001542C();
  }

  v1 = qword_10002C0C0;

  return v1;
}

void sub_10000F18C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v8 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v5, "kRMConnectionMessageNameKey")];
    v9 = xpc_dictionary_get_value(v5, "kRMConnectionMessageDataKey");
    v10 = v9;
    if (v9)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v9);
      if (bytes_ptr)
      {
        bytes_ptr = [[NSData alloc] initWithBytes:bytes_ptr length:xpc_data_get_length(v10)];
      }
    }

    else
    {
      bytes_ptr = 0;
    }

    v12 = xpc_dictionary_get_value(v5, "kRMConnectionRequestSteamingKey");
    v13 = v12;
    if (!v8)
    {
      if (qword_10002C0B8 != -1)
      {
        sub_10001542C();
      }

      v14 = qword_10002C0C0;
      if (!os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      *buf = 136315138;
      v30 = "kRMConnectionMessageNameKey";
      v15 = "XPC message missing key %s";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 12;
      goto LABEL_14;
    }

    if (!v12)
    {
      if (v6)
      {
        v6[2](v6, v8, bytes_ptr);
LABEL_24:

        goto LABEL_25;
      }

      if ([v8 isEqualToString:@"kRMConnectionMessagePriorityBoost"])
      {
        if (qword_10002C0B8 != -1)
        {
          sub_10001542C();
        }

        v19 = qword_10002C0C0;
        if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_INFO))
        {
          *buf = 138477827;
          v30 = v8;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Creating reply to hold onto priority boost: %{private}@", buf, 0xCu);
        }

        reply = xpc_dictionary_create_reply(v5);
        v21 = *(a1 + 64);
        *(a1 + 64) = reply;
        goto LABEL_23;
      }

      if (objc_opt_respondsToSelector())
      {
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_100015050;
        v25[3] = &unk_100025260;
        v25[4] = a1;
        v26 = v5;
        [WeakRetained endpoint:a1 didReceiveMessage:v8 withData:bytes_ptr replyBlock:v25];
        v21 = v26;
LABEL_23:

        goto LABEL_24;
      }

      if (qword_10002C0B8 != -1)
      {
        sub_10001542C();
      }

      v22 = qword_10002C0C0;
      if (!os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_24;
      }

      *buf = 0;
      v15 = "Message received but the handler doesn't implement the selector 'endpoint:didReceiveMessage:withData:replyBlock:'";
      v16 = v22;
      v17 = OS_LOG_TYPE_FAULT;
      v18 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, v18);
      goto LABEL_24;
    }

    if ([WeakRetained conformsToProtocol:&OBJC_PROTOCOL___RMConnectionStreamProducingDelegate])
    {
      [WeakRetained endpoint:a1 didReceiveStreamingRequest:v8 withData:bytes_ptr];
      v28 = 0;
      sub_100014A88(a1, v13, &v28);
      v23 = v28;
      if (v23)
      {
        sub_100015560(v23, &v27, a1, v5);
        goto LABEL_24;
      }

      if (qword_10002C0B8 == -1)
      {
LABEL_33:
        v24 = qword_10002C0C0;
        if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Streaming session started, sending acknowledgement", buf, 2u);
        }

        sub_100014998(a1, v5, @"kRMConnectionMessageSuccess", 0);
        goto LABEL_24;
      }
    }

    else
    {
      sub_100015440();
    }

    sub_1000155F0();
    goto LABEL_33;
  }

LABEL_25:
}

void sub_10000F5B4(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_interrupted)
    {
      if (qword_10002C0B8 != -1)
      {
        sub_10001542C();
      }

      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEBUG))
      {
        sub_1000156A4(a1);
      }

      sub_100015158(*(a1 + 32));
    }

    else if (v3 == &_xpc_error_connection_invalid)
    {
      if (qword_10002C0B8 != -1)
      {
        sub_10001542C();
      }

      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEBUG))
      {
        sub_100015618(a1);
      }

      sub_1000151B0(*(a1 + 32));
    }
  }

  else if (type == &_xpc_type_dictionary)
  {
    sub_10000F18C(*(a1 + 32), v3, 0);
  }

  else
  {
    if (qword_10002C0B8 != -1)
    {
      sub_10001542C();
    }

    v5 = qword_10002C0C0;
    if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got unexpected xpc event", v6, 2u);
    }
  }
}

void sub_10000F730(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_interrupted)
    {
      if (qword_10002C0B8 != -1)
      {
        sub_10001542C();
      }

      v5 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEBUG))
      {
        sub_1000157D4(a1, v5);
      }
    }

    else
    {
      if (object != &_xpc_error_connection_invalid)
      {
        return;
      }

      if (qword_10002C0B8 != -1)
      {
        sub_10001542C();
      }

      v4 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEBUG))
      {
        sub_100015730(a1, v4);
      }
    }

    sub_10000F814(*(a1 + 32));
  }
}

void sub_10000F814(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v2 = (a1 + 32);
    if (!*(a1 + 32))
    {
      sub_100015878(v2);
      JUMPOUT(0x10000F858);
    }

    sub_100015998(v2, a1);
  }
}

void sub_10000F8E4(id a1)
{
  qword_10002C0C0 = os_log_create("com.apple.RelativeMotion", "IPC");

  _objc_release_x1();
}

id sub_10000F938@<X0>(void *a1@<X8>)
{

  return a1;
}

void sub_10000F974(uint64_t a1)
{
  v2 = *(a1 + 8);

  dispatch_assert_queue_V2(v2);
}

void sub_10000F98C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_10000F9F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void sub_10000FA04(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

void sub_10000FA14(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000027B8(a1, a2);
  }
}

void sub_10000FA20(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000027A8(a1, a2);
  }
}

void sub_10000FA2C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_10000FA3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000027B0(a1, a2);
  }
}

void sub_10000FA48(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

void sub_10000FA58(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_10000FA68(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_10000FBDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      ++v3[13];
    }
  }

  v4 = [*(a1 + 40) objectForKeyedSubscript:kCMMediaSessionClientMode];
  v5 = objc_opt_new();
  v7 = v5;
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v6, *(a1 + 56), 8);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 intValue];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v7[2] = v8;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 48);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 objectForKey:@"TempestClientModeOverride"];

  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = v12 ? *(v12 + 48) : 0;
    v14 = [v13 integerForKey:@"TempestClientModeOverride"];
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = v14;
      if (qword_10002C0C8 != -1)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      v16 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v17 = *(v7 + 4);
        }

        else
        {
          v17 = 0;
        }

        *buf = 67240448;
        v40 = v17;
        v41 = 1026;
        v42 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Overriding requested client mode %{public}d with %{public}d", buf, 0xEu);
      }

      if (v7)
      {
        v7[2] = v15;
      }
    }
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    v19 = *(v18 + 24);
  }

  else
  {
    v19 = 0;
  }

  [v19 setObject:v7 forKey:*(a1 + 48)];
  if (sub_10000FF14(*(a1 + 32)))
  {
    v20 = sub_10000FF4C(*(a1 + 32), *(a1 + 72));
    v21 = *(*(a1 + 64) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      sub_10001034C(*(a1 + 32));
      v23 = *(a1 + 32);
      if (!v23)
      {
        v25 = 0;
        goto LABEL_44;
      }

      v24 = *(v23 + 32);
      v25 = v24;
      if (!v24)
      {
        goto LABEL_44;
      }

      v26 = v24[2];
      if (!v26)
      {
        goto LABEL_44;
      }

      v27 = v26;
      v28 = *(a1 + 32);
      if (!v28 || (v29 = *(v28 + 32)) == 0)
      {
LABEL_43:

LABEL_44:
        goto LABEL_28;
      }

      v30 = v29[3];

      if (v30 == 2)
      {
        v31 = *(a1 + 32);
        v38 = v31;
        if (v31)
        {
          v32 = *(v31 + 32);
          v25 = v32;
          if (v32)
          {
            v33 = v32[2];
            goto LABEL_39;
          }
        }

        else
        {
          v25 = 0;
        }

        v33 = 0;
LABEL_39:
        v34 = *(a1 + 32);
        if (v34)
        {
          v35 = *(v34 + 32);
          v36 = v35;
          if (v35)
          {
            v37 = v35[3];
LABEL_42:
            v27 = v33;
            sub_10001044C(v38, v27, v37);

            goto LABEL_43;
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = 0;
        goto LABEL_42;
      }
    }
  }

LABEL_28:
}

BOOL sub_10000FF14(_BOOL8 result)
{
  if (result)
  {
    sub_1000027DC(result);
    return [*(v1 + 24) count] != 0;
  }

  return result;
}

id *sub_10000FF4C(dispatch_queue_t *a1, char a2)
{
  v2 = a1;
  if (a1)
  {
    dispatch_assert_queue_V2(a1[5]);
    v4 = v2[4];
    v5 = v4;
    if (v4)
    {
      v6 = v4[1];
    }

    else
    {
      v6 = 0;
    }

    if (!v6 || (a2 & 1) != 0)
    {
      sub_100010890(v2);
      sub_100002864();
      if (!v18)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      if (sub_10000284C())
      {
        *buf = 0;
        sub_100002800();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
      }

      v15 = objc_opt_new();
      v16 = [NSNumber numberWithInteger:sub_100010ACC(v2)];
      [v15 setObject:v16 forKeyedSubscript:kCMMediaSessionClientMode];

      v17 = [[CMMediaSession alloc] _initWithOptions:v15];
      sub_10000F9F4(v5, v17);

      [v2[6] BOOLForKey:@"TempestLogMsl"];
      sub_100002864();
      if (v19)
      {
        if (!v18)
        {
          dispatch_once(&qword_10002C0C8, &stru_1000249E0);
        }

        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
        {
          sub_100002894(&_mh_execute_header, v20, v21, "Logging MSL", v22, v23, v24, v25, v39, v40, v41, v42, v43, v44, v45, v46, 0);
        }

        v26 = sub_10000E778();
        v27 = [NSString stringWithFormat:@"%@/Tempest/MSL", v26];

        if (v5)
        {
          v28 = v5[1];
        }

        else
        {
          v28 = 0;
        }

        [v28 _enableLoggingForReplayWithFilenamePrefix:@"tempest" filePath:v27];
      }

      else
      {
        if (!v18)
        {
          dispatch_once(&qword_10002C0C8, &stru_1000249E0);
        }

        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
        {
          sub_100002894(&_mh_execute_header, v29, v30, "MSL logging disabled", v31, v32, v33, v34, v39, v40, v41, v42, v43, v44, v45, v46, 0);
        }
      }

      if (v5)
      {
        v35 = v5[1];
      }

      else
      {
        v35 = 0;
      }

      v36 = v2[5];
      v41 = _NSConcreteStackBlock;
      v42 = 3221225472;
      v43 = sub_100010B4C;
      v44 = &unk_1000248D0;
      v45 = v2;
      v46 = v5;
      v37 = v35;
      LOBYTE(v36) = [v37 _startPoseUpdatesToQueue:v36 andHandler:&v41];

      if (v36)
      {
        sub_1000020C0(v2);
        sub_100010D14(v2);
        [RMAudioAccessoryManager setTempestActive:1];
        v2 = 0;
      }

      else
      {
        sub_100002864();
        if (!v18)
        {
          dispatch_once(&qword_10002C0C8, &stru_1000249E0);
        }

        v38 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Failed to start CMMediaSession", buf, 2u);
        }

        v2 = [NSError errorWithDomain:@"kRMErrorDomain" code:3 userInfo:0];
      }
    }

    else
    {
      sub_100002864();
      if (!v18)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        sub_10000280C(&_mh_execute_header, v7, v8, "Keeping existing CMMediaSession", buf);
      }

      v2 = 0;
    }
  }

  return v2;
}

void sub_10001034C(uint64_t a1)
{
  if (a1)
  {
    sub_1000028B4(a1);
    v2 = sub_100010ACC(v1);
    if (qword_10002C0C8 != -1)
    {
      dispatch_once(&qword_10002C0C8, &stru_1000249E0);
    }

    if (sub_10000284C())
    {
      sub_100002800();
      _os_log_impl(v3, v4, v5, v6, v7, 8u);
    }

    v8 = *(v1 + 32);
    if (v8)
    {
      v9 = v8[1];
    }

    else
    {
      v9 = 0;
    }

    v10 = v8;
    [v9 _updateClientMode:v2];
  }
}

void sub_10001044C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    v6 = [v5 attitude];
    [v6 quaternion];
    v31[0] = v7;
    v8 = [v5 attitude];
    [v8 quaternion];
    v31[1] = v9;
    v10 = [v5 attitude];
    [v10 quaternion];
    v31[2] = v11;
    v12 = [v5 attitude];
    [v12 quaternion];
    v31[3] = v13;
    [v5 timestamp];
    v31[4] = v14;
    v31[5] = a3;
    [v5 consumedAuxTimestamp];
    v31[6] = v15;
    [v5 receivedAuxTimestamp];
    v31[7] = v16;
    [v5 machAbsTimestamp];
    v31[8] = v17;
    [v5 presentationTimestamp];
    v31[9] = v18;

    v19 = [NSData dataWithBytes:v31 length:80];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = *(a1 + 24);
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        v24 = 0;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(a1 + 24) objectForKey:{*(*(&v27 + 1) + 8 * v24), v27}];
          v26 = v25;
          if (v25)
          {
            v25 = *(v25 + 8);
          }

          (*(v25 + 16))(v25, v19);

          v24 = v24 + 1;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v22);
    }
  }
}

void sub_1000106E0(uint64_t a1)
{
  sub_1000027F4(a1);
  if (v2)
  {
    v3 = *(v2 + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 objectForKey:*(v1 + 40)];
  if (v4)
  {
    if (v4[2])
    {
      v5 = 96;
    }

    else
    {
      v5 = 88;
    }
  }

  else
  {
    v5 = 88;
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = *(v6 + 24);
  }

  else
  {
    v7 = 0;
  }

  [v7 removeObjectForKey:*(v1 + 40)];
  v8 = sub_10000FF14(*(v1 + 32));
  v9 = *(v1 + 32);
  if (v8)
  {

    sub_10001034C(v9);
  }

  else
  {
    if (v9)
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
    v12 = *(v1 + 32);
    if (v12 && (v13 = *(v12 + 32)) != 0)
    {
      v14 = v13[13];
    }

    else
    {
      v14 = 0;
    }

    sub_100002748();
    sub_10000287C();
    v24 = sub_100002024;
    v25 = &unk_100024880;
    v15 = v11;
    v16 = *(v1 + 32);
    v26 = v15;
    v27 = v16;
    v28 = v14;
    v17 = objc_retainBlock(v23);
    v18 = v17;
    if (v15 && (v19 = *&v15[v5], v19 > 0.0))
    {
      v20 = dispatch_time(0, (v19 * 1000000000.0));
      v21 = *(v1 + 32);
      if (v21)
      {
        v22 = *(v21 + 40);
      }

      else
      {
        v22 = 0;
      }

      dispatch_after(v20, v22, v18);
    }

    else
    {
      (*(v17 + 2))(v17);
    }
  }
}

void sub_100010890(uint64_t a1)
{
  if (a1)
  {
    sub_1000027DC(a1);
    v2 = *(v1 + 32);
    if (v2 && v2[1])
    {
      v4 = v2;
      sub_100010D8C(v1);
      sub_100010DFC(v1);
      [*(v4 + 8) _stop];
      [*(v4 + 8) _disableLoggingForReplay];
      sub_10000F9F4(v4, 0);
      v3 = v4;
      if (*(v4 + 24) == 4)
      {
        sub_100010C98(v1);
        v3 = v4;
      }

      sub_10000FA04(v3, 0);
      *(v4 + 24) = 2;
      [RMAudioAccessoryManager setTempestActive:0];
      v2 = v4;
    }
  }
}

uint64_t sub_10001098C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_1000028B4(a1);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(v2 + 24);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(v2 + 24) objectForKey:{*(*(&v14 + 1) + 8 * v8), v14}];
        if (v9)
        {
          v10 = v9[2];
        }

        else
        {
          v10 = 0;
        }

        if (v10 == a2)
        {
          v12 = 1;
          goto LABEL_16;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v11 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v6 = v11;
    }

    while (v11);
  }

  v12 = 0;
LABEL_16:

  return v12;
}

uint64_t sub_100010ACC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_1000027DC(a1);
  if (sub_10001098C(v1, 0))
  {
    return 0;
  }

  v2 = 4;
  if ((sub_10001098C(v1, 4) & 1) == 0)
  {
    v2 = 2;
    if ((sub_10001098C(v1, 2) & 1) == 0)
    {
      v2 = 3;
      if (!sub_10001098C(v1, 3))
      {
        return 1;
      }
    }
  }

  return v2;
}

void sub_100010B4C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3 == 114)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  v10 = v5;
  sub_10001044C(*(a1 + 32), v5, v6);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 24);
    if (v8 == v6)
    {
      goto LABEL_10;
    }

    if (a3 == 114)
    {
      goto LABEL_7;
    }

    if (v8 == 4)
    {
      sub_100010C98(*(a1 + 32));
    }
  }

  else if (a3 == 114)
  {
LABEL_7:
    sub_100010C18(*(a1 + 32));
  }

LABEL_10:
  sub_10000FA04(*(a1 + 40), v10);
  v9 = *(a1 + 40);
  if (v9)
  {
    *(v9 + 24) = v6;
  }
}

void sub_100010C18(uint64_t a1)
{
  if (a1)
  {
    sub_1000027DC(a1);
    v2 = *(v1 + 12);
    if (!v2)
    {
      sub_100002748();
      sub_10000287C();
      v4 = sub_1000118BC;
      v5 = &unk_100024948;
      v6 = v1;
      dispatch_async(&_dispatch_main_q, block);
      v2 = *(v1 + 12);
    }

    *(v1 + 12) = v2 + 1;
  }
}

void sub_100010C98(uint64_t a1)
{
  if (a1)
  {
    sub_1000027DC(a1);
    v2 = *(v1 + 12) - 1;
    *(v1 + 12) = v2;
    if (!v2)
    {
      sub_100002748();
      sub_10000287C();
      v4 = sub_1000119A8;
      v5 = &unk_100024948;
      v6 = v1;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

void sub_100010D14(uint64_t a1)
{
  if (a1)
  {
    sub_1000027DC(a1);
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 addObserver:v1 selector:"onActiveAudioRouteChanged:" name:@"RMAudioDeviceChangeCompletedNotification" object:0];
  }
}

void sub_100010D8C(uint64_t a1)
{
  if (a1)
  {
    sub_1000027DC(a1);
    v2 = +[NSNotificationCenter defaultCenter];
    [v2 removeObserver:v1 name:@"RMAudioDeviceChangeCompletedNotification" object:0];
  }
}

void sub_100010DFC(uint64_t a1)
{
  if (a1)
  {
    sub_1000027DC(a1);
    if (*(v1 + 9) == 1)
    {
      v2 = *(v1 + 32);
      v3 = v2;
      if (v2)
      {
        v4 = *(v2 + 4);
        if (v4)
        {
          dispatch_source_cancel(v4);
        }

        sub_10000FA14(v3, 0);
        v5 = v3[7];
        if (v5)
        {
          v6 = v5;
          dispatch_source_cancel(v5);
        }
      }

      else
      {
        sub_10000FA14(0, 0);
      }

      sub_10000FA20(v3, 0);
      v7 = +[BLSBacklight sharedBacklight];
      [v7 removeObserver:v1];

      v8 = [v1 externalDisplayService];
      [v8 removeObserver:v1];

      v9 = *(v1 + 72);
      dispatch_time(0, 2000000000);
      v10 = *(v1 + 40);
      sub_100002728();
      sub_1000027C0();
      v13[2] = sub_1000025A4;
      v13[3] = &unk_100024970;
      v13[4] = v1;
      v13[5] = v9;
      dispatch_after(v11, v12, v13);
      [*(v1 + 64) setCameraPaused:1];
    }
  }
}

void sub_100010F34(uint64_t a1, void *a2, __int128 *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[5];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002488;
  block[3] = &unk_1000248F8;
  v7 = v6;
  objc_copyWeak(&v11, (a1 + 40));
  v10 = v5;
  v12 = *a3;
  v13 = *(a3 + 2);
  v8 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
}

void sub_10001101C(uint64_t a1, void *a2, CMTime *a3)
{
  v5 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 40));
    if (v5 && *(a1 + 10) == 1)
    {
      v6 = [v5 objectForKeyedSubscript:@"rm_tracked_faces"];
      v7 = [v6 firstObject];
      v8 = [v7 objectForKeyedSubscript:@"raw_data"];

      v9 = [v8 objectForKeyedSubscript:@"pose"];
      v10 = [v5 objectForKeyedSubscript:@"rm_camera_id"];
      if (qword_10002C0C8 != -1)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      v11 = qword_10002C0D0;
      if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v16.value) = 138543618;
        *(&v16.value + 4) = v10;
        LOWORD(v16.flags) = 2114;
        *(&v16.flags + 2) = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[Cam %{public}@] Pose %{public}@", &v16, 0x16u);
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = v12[1];
    }

    else
    {
      v13 = 0;
    }

    v16 = *a3;
    v14 = v13;
    v15 = v12;
    [v14 _feedFaceKitData:v5 timestamp:CMTimeGetSeconds(&v16)];
  }
}

void sub_100011278(uint64_t a1)
{
  sub_1000027F4(a1);
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v7 = v3;
      v2 = v3[1];
    }

    else
    {
      v7 = 0;
      v2 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = v2;
  v5 = [v4 isRequestingCameraOn];
  v6 = *(v1 + 32);
  if (v6)
  {
    v6 = v6[8];
  }

  [v6 setCameraPaused:v5 ^ 1];
}

dispatch_source_t sub_100011308(dispatch_source_t a1, void *a2, double a3)
{
  v5 = a2;
  if (a1)
  {
    a1 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, a1[5].isa);
    if (a1)
    {
      v6 = dispatch_walltime(0, 0);
      dispatch_source_set_timer(a1, v6, (a3 * 1000000000.0), 0);
      dispatch_source_set_event_handler(a1, v5);
      dispatch_resume(a1);
    }
  }

  return a1;
}

void sub_1000113B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    sub_1000028B4(a1);
    v4 = *(v2 + 32);
    if (v4)
    {
      v4 = *(v4 + 72);
    }

    if (v4 != a2)
    {
      if (qword_10002C0C8 != -1)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      if (sub_10000284C())
      {
        v5 = *(v2 + 32);
        if (v5)
        {
          v6 = *(v5 + 72);
        }

        v7 = sub_100002828();
        sub_100002800();
        _os_log_impl(v8, v9, v10, v11, v12, 0xEu);
      }

      v13 = *(v2 + 32);
      if (v13)
      {
        *(v13 + 72) = a2;
      }

      v14 = *(v2 + 40);
      sub_100002728();
      sub_1000027C0();
      v16[2] = sub_10001184C;
      v16[3] = &unk_100024970;
      v16[4] = v2;
      v16[5] = a2;
      dispatch_async(v15, v16);
    }
  }
}

void sub_10001156C(uint64_t a1)
{
  v2 = [*(a1 + 32) numberOfCameras];
  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_1000249E0);
  }

  v3 = qword_10002C0D0;
  if (sub_10000284C())
  {
    v4 = *(a1 + 32);
    v5 = v3;
    LODWORD(v14) = 67240448;
    HIDWORD(v14) = [v4 numberOfCameras];
    LOWORD(v15) = 1026;
    *(&v15 + 2) = v2 != 0;
    sub_100002800();
    _os_log_impl(v6, v7, v8, v9, v10, 0xEu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = *(v11 + 32);
    v13 = v12;
    if (v12)
    {
      v12 = v12[1];
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  [v12 _updateTrackingScheme:{v2 != 0, v14, v15}];
}

void sub_1000116A8(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    sub_1000028B4(a1);
    v4 = *(v2 + 32);
    if (v4)
    {
      v4 = *(v4 + 64);
    }

    if (v4 != a2)
    {
      if (qword_10002C0C8 != -1)
      {
        dispatch_once(&qword_10002C0C8, &stru_1000249E0);
      }

      if (sub_10000284C())
      {
        v5 = *(v2 + 32);
        if (v5)
        {
          v6 = *(v5 + 64);
        }

        v7 = sub_100002828();
        sub_100002800();
        _os_log_impl(v8, v9, v10, v11, v12, 0xEu);
      }

      v13 = *(v2 + 32);
      if (v13)
      {
        *(v13 + 64) = a2;
      }

      v14 = *(v2 + 40);
      sub_100002728();
      sub_1000027C0();
      v16[2] = sub_1000117E4;
      v16[3] = &unk_100024998;
      v16[4] = v2;
      v17 = a2;
      dispatch_async(v15, v16);
    }
  }
}

void sub_1000117E4(uint64_t a1)
{
  sub_1000027F4(a1);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v3 = sub_100002888(v3);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = sub_100002870();
  }

  [v3 _feedDisplayCount:*(v1 + 40)];
}

void sub_10001184C(uint64_t a1)
{
  sub_1000027F4(a1);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      v3 = sub_100002888(v3);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v3 = sub_100002870();
  }

  [v3 _feedScreenUnlockedEvent:*(v1 + 40) == 1];
}

void sub_1000118BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 80);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = 0;
  }

  sub_100002768();
  v9 = 3221225472;
  v10 = sub_10001194C;
  v11 = &unk_100024948;
  v12 = *(v5 + 32);
  v7 = v6;
  [v7 startUserInteractionUpdatesToQueue:v4 withHandler:v8];
}

void sub_10001194C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      v2 = sub_100002888(v2);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v2 = sub_100002870();
  }

  [v2 _triggerUserInteractedWithDeviceEvent];
}

id sub_1000119A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(v1 + 80) stopUserInteractionUpdates];
  }

  else
  {
    return [0 stopUserInteractionUpdates];
  }
}

void sub_100011A28(uint64_t a1)
{
  sub_1000027F4(a1);
  if (v2)
  {
    v3 = *(v2 + 32);
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 1);
    }
  }

  else
  {
    v4 = 0;
  }

  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = *(v1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
      if (v8)
      {
        v8 = sub_100002888(v8);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v8 = sub_100002870();
    }

    [v8 _feedActiveAudioRouteChangedEvent];
  }
}

void sub_100011AE8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  if (v4)
  {
    v5 = *(v4 + 40);
  }

  sub_100002728();
  sub_1000027C0();
  v10 = v6;
  v11 = a1[4];
  v7 = v6;
  v8 = sub_1000027CC();
  dispatch_async(v8, v9);
}

void sub_100011B70(uint64_t a1)
{
  v2 = [*(a1 + 32) count] + 1;
  v3 = *(a1 + 40);

  sub_1000116A8(v3, v2);
}

void sub_100011C24(uint64_t a1)
{
  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_1000249E0);
  }

  v2 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 32);
      v5 = v4;
      if (v4)
      {
        LODWORD(v3) = *(v4 + 20);
      }

      else
      {
        LODWORD(v3) = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 40);
    v11[0] = 67240448;
    v11[1] = v3;
    v12 = 1026;
    v13 = v6;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "backlightState: %{public}d -> %{public}d", v11, 0xEu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = *(v8 + 32);
    if (v10)
    {
      v10[10] = v9;
    }
  }
}

void sub_100011D9C(void **a1, void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v3[11];
  }

  else
  {
    v4 = 0;
  }

  v5 = *a1;
  if (*a1)
  {
    v5 = v5[12];
  }

  v8 = 134349312;
  v9 = v4;
  v10 = 2050;
  v11 = v5;
  v6 = v3;
  v7 = a2;
  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "keepAliveDurationVideo: %{public}.3f sec, keepAliveDurationMusic: %{public}.3f sec", &v8, 0x16u);
}

void sub_100011E7C(uint64_t a1)
{
  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_1000249E0);
  }

  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    sub_10000280C(&_mh_execute_header, v2, v3, "Stopping CMMediaSession", v4);
  }

  sub_100010890(*(a1 + 40));
}

id sub_100011F08(uint64_t a1)
{
  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_1000249E0);
  }

  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    sub_10000280C(&_mh_execute_header, v2, v3, "Stopping RMFacePoseCaptureSession", v6);
  }

  if (*a1)
  {
    v4 = *(*a1 + 64);
  }

  else
  {
    v4 = 0;
  }

  result = [v4 stopCaptureSession];
  if (*a1)
  {
    *(*a1 + 8) = 0;
  }

  return result;
}

id *sub_100011FEC(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v8.receiver = a1;
    v8.super_class = RMHeadphoneActivityProvider;
    v5 = objc_msgSendSuper2(&v8, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      objc_setProperty_atomic(a1, v6, 0, 24);
    }
  }

  return a1;
}

uint64_t sub_100012074(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    v6 = [sub_100003DDC(v3 v4)];
    v7 = [v5 unknown];
    if (v6 == v7 && (v9 = [sub_100003DDC(v7 v8)], v10 = objc_msgSend(v5, "stationary"), v9 == v10) && (v12 = objc_msgSend(sub_100003DDC(v10, v11), "walking"), v13 = objc_msgSend(v5, "walking"), v12 == v13))
    {
      v16 = [sub_100003DDC(v13 v14)];
      a1 = v16 ^ [v5 running] ^ 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_100012214(uint64_t a1, id *a2, uint64_t a3, void *a4)
{
  if (*a1)
  {
    v6 = *(*a1 + 8);
  }

  else
  {
    v6 = 0;
  }

  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_100003D10;
  a2[3] = &unk_100024B40;
  a2[5] = *(a3 + 40);
  a2[4] = a4;
  dispatch_async(v6, a2);
}

void sub_100012300(id *a1)
{
  [a1[2] stopActivityUpdates];
  sub_10000FA04(a1, 0);

  objc_setProperty_atomic(a1, v2, 0, 24);
}

void sub_100012350()
{
  [0 stopActivityUpdates];

  sub_10000FA04(0, 0);
}

void sub_1000123C0(id *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  if (a1)
  {
    v2 = sub_1000153DC(a1);
    xpc_connection_get_audit_token();
  }
}

BOOL sub_100012420(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    error = 0;
    memset(&v33, 0, sizeof(v33));
    sub_1000123C0(a1, &v33);
    token = v33;
    v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    if (v4)
    {
      v5 = v4;
      v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
      v7 = error;
      if (error)
      {
        if (qword_10002C0B8 != -1)
        {
          dispatch_once(&qword_10002C0B8, &stru_100024C18);
        }

        v8 = qword_10002C0C0;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v32 = v7;
          v9 = objc_alloc_init(NSMutableString);
          v10 = [NSString stringWithFormat:@"%d", v33.val[0]];
          [v9 appendString:v10];

          for (i = 1; i != 8; ++i)
          {
            [v9 appendString:@"|"];
            v12 = [NSString stringWithFormat:@"%d", v33.val[i]];
            [v9 appendString:v12];
          }

          v13 = error;
          v14 = v9;
          Domain = CFErrorGetDomain(v13);
          Code = CFErrorGetCode(error);
          token.val[0] = 138412802;
          *&token.val[1] = v9;
          LOWORD(token.val[3]) = 2112;
          *(&token.val[3] + 2) = Domain;
          HIWORD(token.val[5]) = 2048;
          *&token.val[6] = Code;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#Warning SecTaskCopyValueForEntitlement failed for token '%@' with error '%@' (%ld)", &token, 0x20u);

          v7 = v32;
        }

        CFRelease(error);
      }

      if (v6)
      {
        v17 = CFGetTypeID(v6);
        v18 = v17 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
        CFRelease(v6);
        if (v7)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v18 = 0;
        if (v7)
        {
LABEL_26:
          if (qword_10002C0B8 != -1)
          {
            dispatch_once(&qword_10002C0B8, &stru_100024C18);
          }

          v25 = qword_10002C0C0;
          if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
          {
            v26 = v3;
            v27 = v25;
            v28 = [(__CFString *)v3 UTF8String];
            *rgidp = 0;
            *pidp = 0;
            *asidp = 0;
            token = v33;
            audit_token_to_au32(&token, 0, &rgidp[1], &asidp[1], pidp, rgidp, &pidp[1], asidp, 0);
            v29 = pidp[1];
            v30 = sub_100004A98();
            token.val[0] = 136315650;
            *&token.val[1] = v28;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = v29;
            HIWORD(token.val[4]) = 2112;
            *&token.val[5] = v30;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#Warning Issue retrieving entitlement, '%s', pid, %d, executable or bundle, '%@'", &token, 0x1Cu);
          }
        }
      }

      CFRelease(v5);
      goto LABEL_31;
    }

    if (qword_10002C0B8 != -1)
    {
      dispatch_once(&qword_10002C0B8, &stru_100024C18);
    }

    v19 = qword_10002C0C0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_alloc_init(NSMutableString);
      v21 = [NSString stringWithFormat:@"%d", v33.val[0]];
      [v20 appendString:v21];

      for (j = 1; j != 8; ++j)
      {
        [v20 appendString:@"|"];
        v23 = [NSString stringWithFormat:@"%d", v33.val[j]];
        [v20 appendString:v23];
      }

      v24 = [v20 UTF8String];
      token.val[0] = 136315138;
      *&token.val[1] = v24;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#Warning SecTaskCreateWithAuditToken failed for token '%s'", &token, 0xCu);
    }
  }

  v18 = 0;
LABEL_31:

  return v18;
}

BOOL sub_1000128E4(_BOOL8 a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_1000123C0(a1, &v5);
    a1 = TCCAccessCheckAuditToken() != 0;
  }

  return a1;
}

id *sub_100012944(id *a1)
{
  if (a1)
  {
    memset(v3, 0, sizeof(v3));
    sub_1000123C0(a1, v3);
    a1 = sub_100004A98();
    v1 = vars8;
  }

  return a1;
}

id *sub_100012990(id *result)
{
  if (result)
  {
    memset(&v1, 0, sizeof(v1));
    sub_1000123C0(result, &v1);
    *rgidp = 0;
    *pidp = 0;
    *asidp = 0;
    atoken = v1;
    audit_token_to_au32(&atoken, 0, &rgidp[1], &asidp[1], pidp, rgidp, &pidp[1], asidp, 0);
    return pidp[1];
  }

  return result;
}

id *sub_100012A50(id *a1, void *a2, char a3)
{
  v6 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = RMHeadphoneMotionProvider;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      *(v7 + 8) = a3;
      objc_storeStrong(v7 + 2, a2);
    }
  }

  return a1;
}

void sub_100012BF4(uint64_t a1, id *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  *a2 = _NSConcreteStackBlock;
  a2[1] = 3221225472;
  a2[2] = sub_100007324;
  a2[3] = &unk_100024B40;
  a2[5] = *(a1 + 40);
  a2[4] = a3;
  dispatch_async(v6, a2);
}

id *sub_100012CB8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = RMConnectionHandlerInternal;
    v8 = objc_msgSendSuper2(&v10, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a3);
      objc_storeStrong(a1 + 2, a2);
    }
  }

  return a1;
}

void sub_100012D54(uint64_t a1)
{
  if (a1)
  {
    sub_1000151B0(*(a1 + 16));
    v2 = *(a1 + 16);
    *(a1 + 16) = 0;

    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
  }
}

uint64_t sub_100012DB0()
{
  v1 = sub_100007640();
  if (sub_1000086B4(v1))
  {
    sub_10000861C();
    sub_100008694(&_mh_execute_header, v2, v3, "{msg%{public}.0s:TCC service cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_100007640();
  if (os_signpost_enabled(v8))
  {
    sub_10000861C();
    sub_100008648(&_mh_execute_header, v9, v10, v11, "TCC service cannot be nil", "{msg%{public}.0s:TCC service cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_100007640();
  if (sub_1000086CC(v14))
  {
    sub_10000861C();
    sub_100008674(&_mh_execute_header, v15, v16, "{msg%{public}.0s:TCC service cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_100012ED4(v21);
}

void sub_100012ED4()
{
  v1 = sub_100007640();
  if (sub_1000086B4(v1))
  {
    sub_10000861C();
    sub_100008694(&_mh_execute_header, v2, v3, "{msg%{public}.0s:Entitlement cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v21, v22, v23, v24, v25);
  }

  v8 = sub_100007640();
  if (os_signpost_enabled(v8))
  {
    sub_10000861C();
    sub_100008648(&_mh_execute_header, v9, v10, v11, "Entitlement cannot be nil", "{msg%{public}.0s:Entitlement cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v21, v22, v23, v24, v25);
  }

  v14 = sub_100007640();
  if (sub_1000086CC(v14))
  {
    sub_10000861C();
    sub_100008674(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Entitlement cannot be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  abort_report_np();
  sub_100012FF8();
}

uint64_t sub_10001300C()
{
  v1 = sub_100007640();
  if (sub_1000086B4(v1))
  {
    sub_10000861C();
    sub_100008694(&_mh_execute_header, v2, v3, "{msg%{public}.0s:TCC service exists and entitlement does not!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_100007640();
  if (os_signpost_enabled(v8))
  {
    sub_10000861C();
    sub_100008648(&_mh_execute_header, v9, v10, v11, "TCC service exists and entitlement does not!", "{msg%{public}.0s:TCC service exists and entitlement does not!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_100007640();
  if (sub_1000086CC(v14))
  {
    sub_10000861C();
    sub_100008674(&_mh_execute_header, v15, v16, "{msg%{public}.0s:TCC service exists and entitlement does not!, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_100013130(v21);
}

void sub_100013158(uint64_t a1)
{
  v2 = sub_100007640();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138477827;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Couldn't create XPC service for %{private}@", &v3, 0xCu);
  }

  abort();
}

void sub_1000131C4(void *a1, void *a2, id *a3)
{
  sub_100015254(a1);
  v6 = sub_100012CB8([RMConnectionHandlerInternal alloc], a1, a2);
  v7 = [*a3 connections];
  [v7 addObject:v6];
}

uint64_t sub_100013238()
{
  v1 = sub_100007640();
  if (sub_1000086B4(v1))
  {
    sub_10000861C();
    sub_100008694(&_mh_execute_header, v2, v3, "{msg%{public}.0s:The messageHandler didn't set the endpoint delegate at creation, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_100007640();
  if (os_signpost_enabled(v8))
  {
    sub_10000861C();
    sub_100008648(&_mh_execute_header, v9, v10, v11, "The messageHandler didn't set the endpoint delegate at creation", "{msg%{public}.0s:The messageHandler didn't set the endpoint delegate at creation, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_100007640();
  if (sub_1000086CC(v14))
  {
    sub_10000861C();
    sub_100008674(&_mh_execute_header, v15, v16, "{msg%{public}.0s:The messageHandler didn't set the endpoint delegate at creation, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_10001335C(v21);
}

void sub_10001335C(void *a1, id *a2)
{
  v2 = [a1 connections];
  v3 = [RMConnectionHandlerInternal alloc];
  v4 = sub_100014DC4(a2);
  v5 = sub_100012CB8(&v3->super.isa, a2, v4);
  [v2 removeObject:v5];
}

uint64_t sub_1000133F8()
{
  v1 = sub_100007640();
  if (sub_1000086B4(v1))
  {
    sub_10000861C();
    sub_100008694(&_mh_execute_header, v2, v3, "{msg%{public}.0s:Endpoint invalidated with no dataDelegate in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26, v27);
  }

  v8 = sub_100007640();
  if (os_signpost_enabled(v8))
  {
    sub_10000861C();
    sub_100008648(&_mh_execute_header, v9, v10, v11, "Endpoint invalidated with no dataDelegate in place", "{msg%{public}.0s:Endpoint invalidated with no dataDelegate in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v12, v13, v23, v24, v25, v26, v27);
  }

  v14 = sub_100007640();
  if (sub_1000086CC(v14))
  {
    sub_10000861C();
    sub_100008674(&_mh_execute_header, v15, v16, "{msg%{public}.0s:Endpoint invalidated with no dataDelegate in place, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v17, v18, v19, v20, v23, v24, v25, v26, v27);
  }

  v21 = abort_report_np();
  return sub_10001351C(v21);
}

void sub_100013E3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

id sub_100014790(uint64_t a1)
{
  v14[0] = @"client";
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  v14[1] = @"duration";
  v15[0] = v3;
  v4 = sub_1000087A8();
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 40);
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [NSNumber numberWithDouble:v4 - v6];
  v15[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  if (qword_10002C0C8 != -1)
  {
    dispatch_once(&qword_10002C0C8, &stru_100024F40);
  }

  v9 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138477827;
    v13 = v8;
    sub_100009BB4(&_mh_execute_header, v9, v10, "Sending analytics: \n%{private}@", &v12);
  }

  return v8;
}

void sub_100014998(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a4;
  if (a1)
  {
    v7 = a3;
    reply = xpc_dictionary_create_reply(a2);
    v9 = [v7 UTF8String];

    xpc_dictionary_set_string(reply, "kRMConnectionMessageNameKey", v9);
    if (v12)
    {
      v10 = v12;
      v11 = xpc_data_create([v12 bytes], objc_msgSend(v12, "length"));
      xpc_dictionary_set_value(reply, "kRMConnectionMessageDataKey", v11);
    }

    xpc_connection_send_message(*(a1 + 56), reply);
  }
}

BOOL sub_100014A88(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (xpc_get_type(v5) == &_xpc_type_endpoint)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 3);
    v10 = xpc_connection_create_from_endpoint(v6);
    if (v10)
    {
      objc_storeStrong(a1 + 4, v10);
      if ((sub_100014DF4(a1, WeakRetained) & 1) == 0)
      {
        v8 = a3 == 0;
        if (a3)
        {
          if (qword_10002C0B8 != -1)
          {
            dispatch_once(&qword_10002C0B8, &stru_100025308);
          }

          v14 = qword_10002C0C0;
          if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_ERROR))
          {
            v21 = 138412290;
            v22 = WeakRetained;
            sub_10000F98C(&_mh_execute_header, v14, v15, "Failed to start the streaming with handler %@", &v21);
          }

          *a3 = [NSError errorWithDomain:@"RMConnectionStreaming" code:-2 userInfo:0];
        }

        if (qword_10002C0B8 != -1)
        {
          dispatch_once(&qword_10002C0B8, &stru_100025308);
        }

        v16 = qword_10002C0C0;
        if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEFAULT))
        {
          v17 = a1[4];
          v18 = sub_10000F938(a1[7]);
          v19 = v16;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Cancelling the streaming server connection %{private}p.%{private}p", &v21, 0x16u);
        }

        xpc_connection_cancel(v10);
        v20 = a1[4];
        a1[4] = 0;

        goto LABEL_17;
      }
    }

    else
    {
      if (qword_10002C0B8 != -1)
      {
        dispatch_once(&qword_10002C0B8, &stru_100025308);
      }

      v11 = qword_10002C0C0;
      if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = v6;
        sub_10000F98C(&_mh_execute_header, v11, v12, "Failed to create connection from endpoint %@", &v21);
      }

      if (a3)
      {
        [NSError errorWithDomain:@"RMConnectionStreaming" code:-1 userInfo:0];
        *a3 = v8 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v8 = 1;
    goto LABEL_17;
  }

  if (qword_10002C0B8 != -1)
  {
    dispatch_once(&qword_10002C0B8, &stru_100025308);
  }

  v7 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "The client did not send streaming endpoint correctly", &v21, 2u);
  }

  v8 = 1;
LABEL_18:

  return v8;
}

id *sub_100014DC4(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

id sub_100014DF4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000F730;
  handler[3] = &unk_100024D50;
  handler[4] = a1;
  v4 = a2;
  xpc_connection_set_event_handler(v3, handler);
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  xpc_connection_set_target_queue(v6, v5);

  xpc_connection_resume(*(a1 + 32));
  v7 = xpc_string_create("kRMConnectionMessageDataStream");
  keys = "kRMConnectionMessageNameKey";
  v8 = v7;
  values = v8;
  xpc_dictionary_create(&keys, &values, 1uLL);
  sub_100002748();
  v20 = 3221225472;
  v21 = sub_10001529C;
  v22 = &unk_100025288;
  v23 = a1;
  v10 = v9;
  v24 = v10;
  v11 = [v4 endpoint:a1 shouldStartStreamingDataToReceiver:v19];

  if (qword_10002C0B8 != -1)
  {
    dispatch_once(&qword_10002C0B8, &stru_100025308);
  }

  v12 = qword_10002C0C0;
  if (os_log_type_enabled(qword_10002C0C0, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 56);
    v14 = *(a1 + 32);
    v15 = "NO";
    if (v11)
    {
      v15 = "YES";
    }

    *buf = 134284035;
    v27 = v13;
    v28 = 2049;
    v29 = v14;
    v30 = 2080;
    v31 = v15;
    v16 = v13;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "shouldStartStreamingDataToReceiver returned on streaming server connection %{private}p.%{private}p: %s", buf, 0x20u);
  }

  return v11;
}

id *sub_100015064(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = RMConnectionEndpoint;
    v8 = objc_msgSendSuper2(&v15, "init");
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 7, a2);
      objc_storeStrong(a1 + 1, a3);
      sub_100002748();
      v11 = 3221225472;
      v12 = sub_10000F5B4;
      v13 = &unk_100024D50;
      a1 = a1;
      v14 = a1;
      xpc_connection_set_event_handler(v6, handler);
      xpc_connection_set_target_queue(v6, v7);
    }
  }

  return a1;
}

void sub_100015158(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [WeakRetained endpointWasInterrupted:a1];
  }
}

void sub_1000151B0(uint64_t a1)
{
  if (a1)
  {
    sub_10000F974(a1);
    v2 = *(v1 + 64);
    *(v1 + 64) = 0;

    if (*(v1 + 32))
    {
      sub_10000F814(v1);
    }

    if (*(v1 + 40))
    {
      sub_100015348(v1);
    }

    if (*(v1 + 56))
    {
      xpc_connection_cancel(*(v1 + 56));
      v3 = *(v1 + 56);
      *(v1 + 56) = 0;
    }

    WeakRetained = objc_loadWeakRetained((v1 + 16));
    [WeakRetained endpointWasInvalidated:v1];
  }
}

void sub_100015254(uint64_t a1)
{
  if (a1)
  {
    sub_10000F974(a1);
    v2 = *(v1 + 56);

    xpc_connection_resume(v2);
  }
}

uint64_t sub_100015290(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_10001529C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 32);
  }

  if (v4)
  {
    v5 = *(a1 + 40);
    v9 = v3;
    v6 = v3;
    xpc_dictionary_set_data(v5, "kRMConnectionMessageDataStreamKey", [v9 bytes], objc_msgSend(v9, "length"));
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    xpc_connection_send_message(v8, *(a1 + 40));
    v3 = v9;
  }
}

void sub_100015348(uint64_t a1)
{
  if (a1)
  {
    sub_10000F974(a1);
    if (*(v1 + 40))
    {
      xpc_connection_suspend(*(v1 + 40));
      xpc_connection_set_event_handler(*(v1 + 40), &stru_1000252E8);
      xpc_connection_resume(*(v1 + 40));
      xpc_connection_cancel(*(v1 + 40));
      v2 = *(v1 + 40);
      *(v1 + 40) = 0;
    }

    if (*(v1 + 48))
    {
      xpc_connection_cancel(*(v1 + 48));
      v3 = *(v1 + 48);
      *(v1 + 48) = 0;
    }
  }
}

id *sub_1000153DC(id *a1)
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

id *sub_10001540C(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 2, a2);
  }

  return result;
}

id *sub_10001541C(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

void sub_100015560(void *a1, id *a2, uint64_t a3, void *a4)
{
  *a2 = a1;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:a2];
  v9 = *a2;

  sub_100014998(a3, a4, @"kRMConnectionMessageError", v8);
}

void sub_100015618(uint64_t a1)
{
  sub_10000F968(a1);
  if (v1)
  {
    v2 = *(v1 + 56);
  }

  sub_10000F95C();
  v4 = v3;
  sub_10000F928();
  _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_1000156A4(uint64_t a1)
{
  sub_10000F968(a1);
  if (v1)
  {
    v2 = *(v1 + 56);
  }

  sub_10000F95C();
  v4 = v3;
  sub_10000F928();
  _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
}

void sub_100015730(uint64_t a1, void *a2)
{
  v3 = sub_10000F968(a1);
  if (v4)
  {
    v4 = v4[7];
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  v7 = sub_10000F938(v4);
  v8 = a2;
  sub_10000F928();
  _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
}

void sub_1000157D4(uint64_t a1, void *a2)
{
  v3 = sub_10000F968(a1);
  if (v4)
  {
    v4 = v4[7];
  }

  v5 = *(v3 + 32);
  if (v5)
  {
    v6 = *(v5 + 32);
  }

  v7 = sub_10000F938(v4);
  v8 = a2;
  sub_10000F928();
  _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
}

void sub_100015998(xpc_connection_t *a1, uint64_t a2)
{
  xpc_connection_set_event_handler(*a1, &stru_1000252C8);
  xpc_connection_cancel(*a1);
  v4 = *a1;
  *a1 = 0;

  WeakRetained = objc_loadWeakRetained((a2 + 24));
  [WeakRetained endpointShouldStopStreamingData:a2];
}