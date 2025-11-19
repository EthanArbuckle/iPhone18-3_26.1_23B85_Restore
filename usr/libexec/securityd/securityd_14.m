void sub_100245034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

void sub_1002450C0(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = sub_100243B3C(0);
  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100245180;
    v4[3] = &unk_100347260;
    v5 = v1;
    [v3 performTransaction:v4];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_100245190(id a1, SOSAccount *a2, __OpaqueSOSCircle *a3, __CFSet *a4, __CFSet *a5, __CFSet *a6, __CFSet *a7)
{
  v11 = a2;
  v12 = [(SOSAccount *)v11 peerInfo];
  if (!v12)
  {
    v17 = sub_100006274("circleOps");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Change block called with no peerInfo", buf, 2u);
    }

    goto LABEL_9;
  }

  v13 = v12;
  if ((SOSCircleHasPeer() & 1) == 0)
  {
    v17 = sub_100006274("circleOps");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Change block called while not in circle", buf, 2u);
    }

LABEL_9:

    goto LABEL_35;
  }

  Count = CFSetGetCount(a4);
  v15 = sub_100006274("updates");
  v16 = v15;
  if (Count)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Requesting Ensure Peer Registration.", buf, 2u);
    }

    v16 = dispatch_get_global_queue(-2, 0);
    SOSCloudKeychainRequestEnsurePeerRegistration();
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Not requesting Ensure Peer Registration, since it's not needed", buf, 2u);
  }

  if (CFSetContainsValue(a4, v13))
  {
    v18 = SOSCircleCopyPeers();
    CFSetRemoveValue(v18, v13);
    if (CFSetGetCount(v18))
    {
      sub_100245684(v18);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  if (CFSetGetCount(a4) || CFSetGetCount(a5) || CFSetGetCount(a6) || CFSetGetCount(a7))
  {
    if (CFSetGetCount(a5))
    {
      cf = 0;
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1002457A0;
      v27[3] = &unk_1003477F0;
      v27[4] = Mutable;
      CFSetApplyFunction(a5, sub_1002457A8, v27);
      v20 = v11;
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x2020000000;
      v30 = 1;
      [(SOSAccount *)v20 fullPeerInfo];
      PeerInfo = SOSFullPeerInfoGetPeerInfo();
      PermittedViews = SOSPeerInfoGetPermittedViews();
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10021403C;
      v32 = &unk_1003455C8;
      v35 = PeerInfo;
      v23 = v20;
      v33 = v23;
      v34 = v29;
      v36 = Mutable;
      p_cf = &cf;
      CFSetApplyFunction(PermittedViews, sub_1002134C4, buf);

      _Block_object_dispose(v29, 8);
      if (cf)
      {
        v24 = sub_100006274("SecError");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = Mutable;
          *&buf[12] = 2112;
          *&buf[14] = cf;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Had trouble removing: %@, error: %@", buf, 0x16u);
        }

        v25 = cf;
        if (cf)
        {
          cf = 0;
          CFRelease(v25);
        }
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v26 = sub_100006274("circleOps");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "peer counts changed, posting kSOSCCCircleChangedNotification", buf, 2u);
    }

    [(SOSAccount *)v11 setNotifyCircleChangeOnExit:1];
  }

LABEL_35:
}

void sub_10024565C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100245684(const __CFSet *a1)
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002457C0;
  v3[3] = &unk_1003477F0;
  v3[4] = Mutable;
  CFSetApplyFunction(a1, sub_1002457A8, v3);
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100245934;
  activity_block[3] = &unk_100346E68;
  activity_block[4] = Mutable;
  _os_activity_initiate(&_mh_execute_header, "CloudCircle RequestSyncWithPeersList", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1002457C0(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = *(a1 + 32);
      PeerID = cf;
LABEL_6:

      CFArrayAppendValue(v5, PeerID);
      return;
    }

    v7 = CFGetTypeID(cf);
    if (v7 == SOSPeerInfoGetTypeID())
    {
      CFGetTypeID(cf);
      SOSPeerInfoGetTypeID();
      v8 = *(a1 + 32);
      PeerID = SOSPeerInfoGetPeerID();
      v5 = v8;
      goto LABEL_6;
    }
  }

  v9 = sub_100006274("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = cf;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Bad element, skipping: %@", &v10, 0xCu);
  }
}

void sub_100245934(uint64_t a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCRequestSyncWithPeersList", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRequestSyncWithPeersList  enableTelemetry=YES ", buf, 0xCu);
  }

  v14 = sub_100185B00(kCFAllocatorDefault, v7, v8, v9, v10, v11, v12, v13, 0);
  sub_100085ABC(*(a1 + 32), @"[", @"]", &stru_100346E48);
  v15 = *(a1 + 32);
  v16 = dispatch_get_global_queue(-32768, 0);
  SOSCloudKeychainRequestSyncWithPeers();

  if (v14)
  {
    CFRelease(v14);
  }

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v18 = _OctagonSignpostLogSystem();
  v19 = v18;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 67240192;
    LODWORD(v22) = 1;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCRequestSyncWithPeersList", " SOSSignpostNameSOSCCRequestSyncWithPeersList=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestSyncWithPeersList}d ", buf, 8u);
  }

  v20 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v22 = v3;
    v23 = 2048;
    v24 = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = 1;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRequestSyncWithPeersList  SOSSignpostNameSOSCCRequestSyncWithPeersList=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestSyncWithPeersList}d ", buf, 0x1Cu);
  }
}

void sub_100245BC8(id a1, __CFString *a2)
{
  v3 = sub_100006274("syncwith");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request Sync With: %@", &v4, 0xCu);
  }
}

void sub_100245C74(id a1)
{
  if (!qword_10039E468)
  {
    v1 = MGCopyAnswer();
    v2 = @"Unknown model";
    if (v1)
    {
      v2 = v1;
    }

    qword_10039E468 = v2;
  }
}

void sub_100245CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100245D30;
  v3[3] = &unk_1003471A0;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_1002450C0(v3);
}

void sub_100245D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];

  if (v4)
  {
    v5 = sub_100243EA4(*(a1 + 32));
    v6 = [v3 account];
    v7 = [v6 trust];
    v8 = [v3 account];
    v9 = [v7 updateGestalt:v8 newGestalt:v5];

    if (v9)
    {
      v10 = sub_100006274("circleOps");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Changed our peer's gestalt information.  This is not a circle change.", v11, 2u);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void *sub_100245E3C()
{
  v0 = sub_100243B3C(1);
  if (!v0)
  {
    v1 = sub_100006274("secAccount");
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Failed request for account object", v3, 2u);
    }
  }

  return v0;
}

uint64_t sub_100245EC8()
{
  v0 = sub_100006274("SOSMonitorMode");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Checking OT View Handling to match", buf, 2u);
  }

  v1 = +[OTManager manager];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  if (v1)
  {
    v2 = dispatch_semaphore_create(0);
    v3 = objc_alloc_init(OTControlArguments);
    *buf = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100246218;
    v18 = &unk_1003471E8;
    v20 = &v21;
    v4 = v2;
    v19 = v4;
    [v1 fetchUserControllableViewsSyncStatus:v3 reply:buf];

    v5 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v4, v5))
    {
      v6 = sub_100006274("SOSMonitorMode");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Timed out waiting for OTM", v14, 2u);
      }

      *(v22 + 6) = -1;
    }

    v7 = *(v22 + 6);
  }

  else
  {
    v8 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Can't get OTManager to check view status", buf, 2u);
    }

    v7 = -1;
    *(v22 + 6) = -1;
  }

  _Block_object_dispose(&v21, 8);

  if (v7 == -1)
  {
    v9 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to get OT view status", buf, 2u);
    }

    v10 = 0;
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100246350;
    v12[3] = &unk_100346A50;
    v13 = v7;
    if ((sub_1002463E8(0, v12) & 1) == 0)
    {
      return 1;
    }

    v9 = sub_100006274("SOSMonitorMode");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Changed User Visible View status", buf, 2u);
    }

    v10 = 1;
  }

  return v10;
}

void sub_100246218(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = sub_100006274("SOSMonitorMode");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetching user-controllable-sync status errored: %@", &v9, 0xCu);
    }

    a2 = -1;
  }

  else
  {
    if (v7)
    {
      v8 = @"paused";
      if (a2)
      {
        v8 = @"enabled";
      }

      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetched OT user-controllable-sync status as : %@", &v9, 0xCu);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100246350(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = [v6 trust];
  v8 = [v5 account];

  v9 = [v7 matchOTUserViewSettings:v8 userViewsEnabled:*(a1 + 32) != 0 err:a3];
  return v9;
}

uint64_t sub_1002463E8(CFTypeRef *a1, void *a2)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v9 = sub_100246540;
  v10 = &unk_100347238;
  v12 = &v14;
  v3 = a2;
  v11 = v3;
  v13 = a1;
  v4 = v8;
  v18 = -1431655766;
  lock_state = aks_get_lock_state();
  if (sub_10001C4BC(lock_state, a1, @"aks_get_lock_state failed: %x", lock_state))
  {
    if ((v18 & 4) != 0)
    {
      v9(v4);

      v6 = *(v15 + 24);
      goto LABEL_5;
    }

    SOSCreateErrorWithFormat();
  }

  v6 = 0;
LABEL_5:

  _Block_object_dispose(&v14, 8);
  return v6 & 1;
}

void sub_100246528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100246540(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002465DC;
  v4[3] = &unk_100347210;
  v3 = *(a1 + 32);
  v2 = v3;
  v5 = v3;
  v6 = *(a1 + 48);
  sub_1002450C0(v4);
}

uint64_t sub_1002465DC(void *a1)
{
  v2 = a1[6];
  result = (*(a1[4] + 16))();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t sub_10024661C(uint64_t a1, int a2, CFTypeRef *a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  sub_100245EC8();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002466FC;
  v8[3] = &unk_100346A78;
  v9 = a2;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a3;
  sub_1002463E8(a3, v8);
  v6 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1002466E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002466FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  v5 = [v4 SOSMonitorModeSOSIsActive];

  if (!v5)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v6 = *(a1 + 56);
  if (v6 == 1 || v6 == 2)
  {
    v7 = [v3 account];
    v8 = [v7 trust];
    v9 = [v3 account];
    v10 = [v8 updateView:v9 name:*(a1 + 40) code:*(a1 + 56) err:*(a1 + 48)];
    goto LABEL_7;
  }

  if (v6 != 3)
  {
    v12 = sub_100006274("views");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 56);
      v15[0] = 67109120;
      v15[1] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Bad SOSViewActionCode - %d", v15, 8u);
    }

    goto LABEL_11;
  }

  v7 = [v3 account];
  v8 = [v7 trust];
  v9 = [v3 account];
  v10 = [v8 viewStatus:v9 name:*(a1 + 40) err:*(a1 + 48)];
LABEL_7:
  *(*(*(a1 + 32) + 8) + 24) = v10;

  v11 = 1;
LABEL_12:

  return v11;
}

uint64_t sub_1002468A8(uint64_t a1, uint64_t a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCViewSet", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCViewSet  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100246B20;
  v15[3] = &unk_100346AB8;
  v15[4] = a1;
  v15[5] = a2;
  v9 = sub_1002463E8(0, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v17) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCViewSet", " SOSSignpostNameSOSCCViewSet=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCViewSet}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCViewSet  SOSSignpostNameSOSCCViewSet=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCViewSet}d ", buf, 0x1Cu);
  }

  return v9;
}

id sub_100246B20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (SOSVisibleKeychainNotAllowed() && (v4 = *(a1 + 32)) != 0 && CFSetGetCount(v4) && (v5 = *(a1 + 32), SOSViewSetIntersectsV0()))
  {
    v6 = sub_100006274("views");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cannot enable visible keychain views due to profile restrictions", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100246C7C;
    v12[3] = &unk_100346A98;
    v8 = *(a1 + 32);
    v12[4] = *(a1 + 40);
    sub_100085CC8(v8, v12);
    v6 = [v3 account];
    v9 = [v6 trust];
    v10 = [v3 account];
    v7 = [v9 updateViewSets:v10 enabled:*(a1 + 32) disabled:*(a1 + 40)];
  }

  return v7;
}

void sub_100246C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100246CEC;
  v3[3] = &unk_100346A98;
  v3[4] = a2;
  sub_100085CC8(v2, v3);
}

void sub_100246CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006274("viewChange");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling updateViewSets to enable %@ and disable %@", &v6, 0x16u);
  }
}

void sub_100246DB4()
{
  v0 = _OctagonSignpostLogSystem();
  v1 = _OctagonSignpostCreate();

  v2 = _OctagonSignpostLogSystem();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "SyncTheLastDataToKVS", " enableTelemetry=YES ", &buf, 2u);
  }

  v4 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SyncTheLastDataToKVS  enableTelemetry=YES ", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v22 = 0x2020000000;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = sub_100006274("force-push");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "calling SOSCloudKeychainSynchronizeAndWait", v15, 2u);
  }

  v7 = dispatch_get_global_queue(-2, 0);
  v14 = v5;
  SOSCloudKeychainSynchronizeAndWait();

  v8 = dispatch_time(0, 60000000000);
  dispatch_semaphore_wait(v14, v8);

  v9 = *(*(&buf + 1) + 24);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v15 = 67240192;
    LODWORD(v16) = v9 == 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v1, "SyncTheLastDataToKVS", " SOSSignpostNameSyncTheLastDataToKVS=%{public,signpost.telemetry:number1,name=SOSSignpostNameSyncTheLastDataToKVS}d ", v15, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 134218496;
    v16 = v1;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 1026;
    v20 = v9 == 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SyncTheLastDataToKVS  SOSSignpostNameSyncTheLastDataToKVS=%{public,signpost.telemetry:number1,name=SOSSignpostNameSyncTheLastDataToKVS}d ", v15, 0x1Cu);
  }

  _Block_object_dispose(&buf, 8);
}

void sub_100247104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100247130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainSynchronizeAndWait: %@", &v9, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  else
  {
    v7 = sub_100006274("force-push");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "returned from call; in callback to SOSCloudKeychainSynchronizeAndWait: results: %@", &v9, 0xCu);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_100247260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100006274("updates");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v8 = a3;
    v9 = 2112;
    v10 = a1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Trying credentials and dsid (%@) for %@", buf, 0x16u);
  }

  return SOSDoWithCredentialsWhileUnlocked();
}

uint64_t sub_10024738C(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCTryUserCredentials", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCTryUserCredentials  enableTelemetry=YES ", buf, 0xCu);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100247770;
  v21[3] = &unk_100346B08;
  v21[4] = &v24;
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  sub_1002450C0(v21);
  if ((v25[3] & 1) == 0)
  {
    v9 = sub_100006274("updates");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SOSCCTryUserCredentials_Server: Trying again with EFRESH", buf, 2u);
    }

    if (sub_10024793C(a2) && sub_100247C94())
    {
      sleep(1u);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100248088;
      v18[3] = &unk_100346B08;
      v18[4] = &v24;
      v19 = *(a1 + 40);
      v20 = a2;
      sub_1002450C0(v18);
    }
  }

  sub_100247C94();
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(v25 + 24);
    *buf = 67240192;
    LODWORD(v29) = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCTryUserCredentials", " SOSSignpostNameSOSCCTryUserCredentials=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCTryUserCredentials}d ", buf, 8u);
  }

  v14 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v15 = *(v25 + 24);
    v29 = v5;
    v30 = 2048;
    v31 = Nanoseconds / 1000000000.0;
    v32 = 1026;
    v33 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCTryUserCredentials  SOSSignpostNameSOSCCTryUserCredentials=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCTryUserCredentials}d ", buf, 0x1Cu);
  }

  v16 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return v16;
}

void sub_100247738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100247770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 && CFStringCompare(v4, &stru_100348050, 0))
  {
    v5 = [v3 account];
    sub_10020E3A8(v5, *(a1 + 40));
  }

  v6 = [v3 account];
  v7 = [v6 accountKeyDerivationParameters];

  if (v7)
  {
    cf = 0;
    v8 = [v3 account];
    *(*(*(a1 + 32) + 8) + 24) = sub_100219108(v8, *(a1 + 48), *(a1 + 56), &cf);

    v9 = cf;
    if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0 && cf)
    {
      v10 = sub_100006274("updates");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = cf;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed with SOSAccountTryUserCredentials() with initial known parameters %@", buf, 0xCu);
      }

      v9 = cf;
    }

    if (v9)
    {
      cf = 0;
      CFRelease(v9);
    }
  }

  else
  {
    v11 = sub_100006274("updates");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SOSCCTryUserCredentials_Server: No known parameters", buf, 2u);
    }
  }
}

uint64_t sub_10024793C(uint64_t a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SyncKVSAndWait", " enableTelemetry=YES ", &buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SyncKVSAndWait  enableTelemetry=YES ", &buf, 0xCu);
  }

  v7 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = sub_100006274("fresh");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EFP calling SOSCloudKeychainSynchronizeAndWait", v22, 2u);
  }

  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100248208;
  activity_block[3] = &unk_1003472B0;
  p_buf = &buf;
  v21 = a1;
  v9 = v7;
  v19 = v9;
  _os_activity_initiate(&_mh_execute_header, "CloudCircle EFRESH", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = *(*(&buf + 1) + 24);
    *v22 = 67240192;
    LODWORD(v23) = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v3, "SyncKVSAndWait", " SOSSignpostNameSyncKVSAndWait=%{public,signpost.telemetry:number1,name=SOSSignpostNameSyncKVSAndWait}d ", v22, 8u);
  }

  v14 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 134218496;
    v15 = *(*(&buf + 1) + 24);
    v23 = v3;
    v24 = 2048;
    v25 = Nanoseconds / 1000000000.0;
    v26 = 1026;
    v27 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SyncKVSAndWait  SOSSignpostNameSyncKVSAndWait=%{public,signpost.telemetry:number1,name=SOSSignpostNameSyncKVSAndWait}d ", v22, 0x1Cu);
  }

  v16 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);

  return v16 & 1;
}

void sub_100247C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100247C94()
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v0 = _OctagonSignpostLogSystem();
  v1 = _OctagonSignpostCreate();

  v2 = _OctagonSignpostLogSystem();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "Flush", " enableTelemetry=YES ", buf, 2u);
  }

  v4 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = v1;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: Flush  enableTelemetry=YES ", buf, 0xCu);
  }

  v5 = dispatch_semaphore_create(0);
  v6 = sub_100006274("flush");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting", buf, 2u);
  }

  v7 = dispatch_get_global_queue(-2, 0);
  v8 = v5;
  SOSCloudKeychainFlush();

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = sub_100006274("flush");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v20 + 24))
    {
      v10 = "Success";
    }

    else
    {
      v10 = "Failure";
    }

    *buf = 136315138;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Returned %s", buf, 0xCu);
  }

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v12 = _OctagonSignpostLogSystem();
  v13 = v12;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v14 = *(v20 + 24);
    *buf = 67240192;
    LODWORD(v24) = v14;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v1, "Flush", " SOSSignpostNameFlush=%{public,signpost.telemetry:number1,name=SOSSignpostNameFlush}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v16 = *(v20 + 24);
    v24 = v1;
    v25 = 2048;
    v26 = Nanoseconds / 1000000000.0;
    v27 = 1026;
    v28 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: Flush  SOSSignpostNameFlush=%{public,signpost.telemetry:number1,name=SOSSignpostNameFlush}d ", buf, 0x1Cu);
  }

  v17 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  return v17 & 1;
}

void sub_100248050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100248088(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_100219108(v3, *(a1 + 40), *(a1 + 48), *(a1 + 56));

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      if (*v4)
      {
        v5 = sub_100006274("updates");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = **(a1 + 56);
          v7 = 138412290;
          v8 = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed with SOSAccountTryUserCredentials() %@", &v7, 0xCu);
        }
      }
    }
  }
}

intptr_t sub_100248188(void *a1, int a2, CFTypeRef cf)
{
  v4 = a1[6];
  *(*(a1[5] + 8) + 24) = cf == 0;
  if (v4)
  {
    v6 = *v4;
    if (*v4 != cf)
    {
      if (!cf || (CFRetain(cf), (v6 = *v4) != 0))
      {
        CFRelease(v6);
      }

      *v4 = cf;
    }
  }

  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

void sub_100248208(uint64_t a1)
{
  v2 = dispatch_get_global_queue(-2, 0);
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  v3 = v7;
  SOSCloudKeychainSynchronizeAndWait();

  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v4 = sub_100006274("fresh");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 48);
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v6 = "success";
    }

    else
    {
      v6 = "failure";
    }

    if (v5)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EFP complete: %s %@", buf, 0x16u);
  }
}

intptr_t sub_100248388(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_100006274("fresh");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EFP returned, callback error: %@", &v9, 0xCu);
  }

  v6 = *(a1 + 48);
  *(*(*(a1 + 40) + 8) + 24) = a3 == 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6 != a3)
    {
      if (!a3 || (CFRetain(a3), (v7 = *v6) != 0))
      {
        CFRelease(v7);
      }

      *v6 = a3;
    }
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_10024848C(uint64_t a1, uint64_t a2, os_signpost_id_t a3, uint64_t *a4)
{
  v7 = sub_100006274("updates");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v22 = a3;
    v23 = 2112;
    v24 = *&a1;
    v25 = 1024;
    v26 = getuid();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting credentials and dsid (%@) for %@.  UID is %d", buf, 0x1Cu);
  }

  v8 = _OctagonSignpostLogSystem();
  v9 = _OctagonSignpostCreate();

  v10 = _OctagonSignpostLogSystem();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AssertUserCredentialsAndOptionalDSID", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: AssertUserCredentialsAndOptionalDSID  enableTelemetry=YES ", buf, 0xCu);
  }

  v13 = SOSDoWithCredentialsWhileUnlocked();
  v14 = sub_100006274("updates");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a4)
    {
      v15 = *a4;
    }

    else
    {
      v15 = 0;
    }

    *buf = 138413058;
    v22 = a3;
    v23 = 2112;
    v24 = *&a1;
    v25 = 1024;
    v26 = v13;
    v27 = 2112;
    v28 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Complete credentials and dsid (%@) for %@: %d %@", buf, 0x26u);
  }

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 67240192;
    LODWORD(v22) = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v9, "AssertUserCredentialsAndOptionalDSID", " SOSSignpostNameAssertUserCredentialsAndOptionalDSID=%{public,signpost.telemetry:number1,name=SOSSignpostNameAssertUserCredentialsAndOptionalDSID}d ", buf, 8u);
  }

  v19 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v22 = v9;
    v23 = 2048;
    v24 = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: AssertUserCredentialsAndOptionalDSID  SOSSignpostNameAssertUserCredentialsAndOptionalDSID=%{public,signpost.telemetry:number1,name=SOSSignpostNameAssertUserCredentialsAndOptionalDSID}d ", buf, 0x1Cu);
  }

  return v13;
}

uint64_t sub_100248814(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100248A14;
  v10[3] = &unk_1003472D8;
  v10[4] = v18;
  v10[5] = &v14;
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = a2;
  sub_1002450C0(v10);
  if (v15[3])
  {
    v4 = 1;
  }

  else
  {
    if (sub_10024793C(0) && sub_100247C94())
    {
      sleep(1u);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100248B10;
      v7[3] = &unk_100346B08;
      v7[4] = &v14;
      v8 = *(a1 + 40);
      v9 = a2;
      sub_1002450C0(v7);
    }

    if (*(v15 + 24) == 1 && sub_100247C94())
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100248F24;
      v6[3] = &unk_100347300;
      v6[4] = &v14;
      sub_1002450C0(v6);
    }

    v4 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  return v4 & 1;
}

void sub_1002489F0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100248A14(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_10020E3A8(v3, *(a1 + 48));

  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = [v9 account];
    v5 = [v4 accountKeyDerivationParameters];
    if (v5)
    {
      v6 = v5;
      v7 = [v9 account];
      v8 = [v7 accountKeyIsTrusted];

      if (!v8)
      {
        goto LABEL_6;
      }

      v4 = [v9 account];
      *(*(*(a1 + 40) + 8) + 24) = sub_100219108(v4, *(a1 + 56), *(a1 + 64), *(a1 + 72));
    }
  }

LABEL_6:
}

void sub_100248B10(void *a1, void *a2)
{
  v3 = [a2 account];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v17 = v3;
  v7 = [v17 accountKeyIsTrusted];
  [v17 setAccountKeyIsTrusted:0];
  if (sub_100218E7C(v17, v5, v6))
  {
    v12 = 0;
    Mutable = 0;
LABEL_20:
    sub_100217F74(v17);
    sub_100228C18(v17, @"AccountName", v4, 0);
    goto LABEL_21;
  }

  if (CFDataGetLength(v5) >= 21)
  {
    v8 = sub_100006274("SecWarning");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Long password (>20 byte utf8) being used to derive account key – this may be a PET by mistake!!", buf, 2u);
    }
  }

  memset(buf, 170, 16);
  if (SecRandomCopyBytes(0, 0x10uLL, buf))
  {
    SOSCreateError();
    Mutable = 0;
  }

  else
  {
    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
    ccder_sizeof_raw_octet_string();
    ccder_sizeof_uint64();
    ccder_sizeof_uint64();
    ccder_sizeof();
    v10 = ccder_sizeof();
    CFDataSetLength(Mutable, v10);
    CFDataGetBytePtr(Mutable);
    CFDataGetMutableBytePtr(Mutable);
    CFDataGetLength(Mutable);
    Data = CSSMOID_PKCS5_HMAC_SHA1.Data;
    ccder_encode_body();
    ccder_encode_tl();
    ccder_encode_uint64();
    ccder_encode_uint64();
    ccder_encode_raw_octet_string();
    if (ccder_encode_constructed_tl())
    {
      if (Mutable)
      {
        sub_100214900(@"SOSUserKeyCreateGenerateParameters created new parameters:", Mutable);
      }
    }

    else if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  v12 = sub_100214DA0(v5, Mutable);
  if (v12)
  {
    [v17 setAccountKeyDerivationParameters:Mutable];
    sub_10021875C(v17, v5, v12, v7);
    cf = 0;
    if ((sub_100215B3C(v17, &cf) & 1) == 0)
    {
      v13 = sub_100006274("SecError");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = cf;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to publish new cloud parameters: %@", buf, 0xCu);
      }
    }

    v14 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v14);
    }

    goto LABEL_20;
  }

LABEL_21:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v15 = sub_100006274("circleop");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting account.key_interests_need_updating to true in SOSAccountAssertUserCredentials", buf, 2u);
  }

  [v17 setKey_interests_need_updating:1];
  v16 = [v17 accountKeyIsTrusted];

  *(*(a1[4] + 8) + 24) = v16;
}

void sub_100248F24(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_100217C70(v3);
}

uint64_t sub_100248F90(CFTypeRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCanAuthenticate", " enableTelemetry=YES ", &v15, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134217984;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCanAuthenticate  enableTelemetry=YES ", &v15, 0xCu);
  }

  v7 = sub_1002463E8(a1, &stru_100346B68);
  v8 = v7;
  if (a1)
  {
    if ((v7 & 1) == 0)
    {
      if (*a1)
      {
        if (CFErrorGetDomain(*a1) == kSOSErrorDomain && (CFErrorGetCode(*a1) - 1) <= 1)
        {
          v9 = *a1;
          if (*a1)
          {
            *a1 = 0;
            CFRelease(v9);
          }
        }
      }
    }
  }

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v15 = 67240192;
    LODWORD(v16) = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCanAuthenticate", " SOSSignpostNameSOSCCCanAuthenticate=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCanAuthenticate}d ", &v15, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218496;
    v16 = v3;
    v17 = 2048;
    v18 = Nanoseconds / 1000000000.0;
    v19 = 1026;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCanAuthenticate  SOSSignpostNameSOSCCCanAuthenticate=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCanAuthenticate}d ", &v15, 0x1Cu);
  }

  return v8;
}

BOOL sub_10024920C(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v3 = a2;
  v4 = [(SOSAccountTransaction *)v3 account];
  sub_100217E5C(v4);

  v5 = [(SOSAccountTransaction *)v3 account];

  v6 = sub_100217CE0(v5) != 0;
  return v6;
}

BOOL sub_10024928C(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v3 = [(SOSAccountTransaction *)a2 account];
  sub_100217D3C(v3);

  return 1;
}

uint64_t sub_1002492C4(CFTypeRef *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  if ((byte_10039E47C & 1) == 0 && sub_100245EC8())
  {
    byte_10039E47C = 1;
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002493C0;
  v4[3] = &unk_100346BB0;
  v4[4] = &v5;
  if (sub_1002463E8(a1, v4))
  {
    v2 = *(v6 + 6);
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1002493A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002493C0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = [v5 getCircleStatus:a3];

  return 1;
}

uint64_t sub_100249418(CFTypeRef *a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCRequestToJoinCircle", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRequestToJoinCircle  enableTelemetry=YES ", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002496F0;
  v13[3] = &unk_100346BB0;
  v13[4] = v14;
  v7 = sub_1002497A8(a1, v13);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240192;
    LODWORD(v17) = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCRequestToJoinCircle", " SOSSignpostNameSOSCCRequestToJoinCircle=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestToJoinCircle}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v3;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRequestToJoinCircle  SOSSignpostNameSOSCCRequestToJoinCircle=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestToJoinCircle}d ", buf, 0x1Cu);
  }

  _Block_object_dispose(v14, 8);
  return v7;
}

void sub_1002496B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1002496F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_100006274("circleOps");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Normal path circle join (SOSAccountJoinCircles)", v9, 2u);
  }

  v7 = sub_10020F3AC(v5, 0, a3);
  *(*(*(a1 + 32) + 8) + 24) = v7;
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_1002497A8(CFTypeRef *a1, void *a2)
{
  v48 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100249D0C;
  v31[3] = &unk_1003473F0;
  v33 = &v40;
  v34 = &v44;
  v3 = a2;
  v32 = v3;
  v35 = a1;
  v4 = sub_100089884(0, &v39, v31);
  if (v4)
  {
    goto LABEL_18;
  }

  v5 = v37[3];
  if (CFErrorGetCode(v5) != -536870174)
  {
    goto LABEL_18;
  }

  Domain = CFErrorGetDomain(v5);
  if (!Domain || !kCFErrorDomainMach)
  {
    if (Domain == kCFErrorDomainMach)
    {
      goto LABEL_6;
    }

LABEL_18:
    if (a1)
    {
      if (!*a1)
      {
        v10 = v37[3];
        if (v10)
        {
          v37[3] = 0;
          if (*a1)
          {
            CFRelease(*a1);
          }

          *a1 = v10;
        }
      }
    }

    v11 = v37[3];
    if (v11)
    {
      v37[3] = 0;
      CFRelease(v11);
    }

    v12 = v48;
    if (v48)
    {
      v48 = 0;
      CFRelease(v12);
    }

    if (!v4)
    {
      goto LABEL_44;
    }

    v13 = *(v45 + 24);
    goto LABEL_45;
  }

  if (!CFEqual(Domain, kCFErrorDomainMach))
  {
    goto LABEL_18;
  }

LABEL_6:
  if (*(v41 + 24) == 1)
  {
    if (a1)
    {
      if (!*a1)
      {
        v7 = v37[3];
        if (v7)
        {
          v37[3] = 0;
          if (*a1)
          {
            CFRelease(*a1);
          }

          *a1 = v7;
        }
      }
    }

    v8 = v37[3];
    if (v8)
    {
      v37[3] = 0;
      CFRelease(v8);
    }

    v9 = v48;
    if (!v48)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  *buf = -1431655766;
  lock_state = aks_get_lock_state();
  if (!sub_10001C4BC(lock_state, &v48, @"aks_get_lock_state failed: %x", lock_state) || (buf[0] & 1) != 0)
  {
    v15 = sub_100006274("while-unlocked-hack");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = v48;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not trying action, aks bag locked (%@)", buf, 0xCu);
    }

    if (a1)
    {
      if (!*a1)
      {
        v16 = v37[3];
        if (v16)
        {
          v37[3] = 0;
          if (*a1)
          {
            CFRelease(*a1);
          }

          *a1 = v16;
        }
      }
    }

    v17 = v37[3];
    if (v17)
    {
      v37[3] = 0;
      CFRelease(v17);
    }

    v9 = v48;
    if (!v48)
    {
      goto LABEL_44;
    }

LABEL_43:
    v48 = 0;
    CFRelease(v9);
LABEL_44:
    v13 = 0;
    goto LABEL_45;
  }

  v19 = v37[3];
  if (v19)
  {
    v37[3] = 0;
    CFRelease(v19);
  }

  v20 = sub_100006274("while-unlocked-hack");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Trying action while unlocked without assertion", buf, 2u);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100249E9C;
  v27[3] = &unk_100347418;
  v29 = &v44;
  v28 = v3;
  v30 = &v36;
  sub_1002450C0(v27);
  v21 = sub_100006274("while-unlocked-hack");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v45 + 24))
    {
      v22 = "succeeded";
    }

    else
    {
      v22 = "failed";
    }

    v23 = v37[3];
    *buf = 136315394;
    v50 = v22;
    v51 = 2112;
    v52 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Action %s (%@)", buf, 0x16u);
  }

  if (a1)
  {
    if (!*a1)
    {
      v24 = v37[3];
      if (v24)
      {
        v37[3] = 0;
        if (*a1)
        {
          CFRelease(*a1);
        }

        *a1 = v24;
      }
    }
  }

  v25 = v37[3];
  if (v25)
  {
    v37[3] = 0;
    CFRelease(v25);
  }

  v26 = v48;
  if (v48)
  {
    v48 = 0;
    CFRelease(v26);
  }

  v13 = *(v45 + 24);

LABEL_45:
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v13 & 1;
}

void sub_100249C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_100249D0C(uint64_t a1)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (!SOSCCThisDeviceIsInCircle())
  {
    v2 = sub_100243B3C(1);
    v3 = [v2 settings];

    if (v3)
    {
      v4 = [v2 ghostBustCheckDate];
      *(v19 + 24) = v4;
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else if ((v19[3] & 1) == 0)
    {
LABEL_7:

      goto LABEL_8;
    }

    v5 = +[SOSAccount ghostBustGetRampSettings];
    *(v15 + 6) = v5 + 16;
    goto LABEL_7;
  }

LABEL_8:
  sub_1002450C0(&stru_100347340);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100249EE4;
  v8[3] = &unk_1003473C8;
  v10 = &v18;
  v11 = &v14;
  v12 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = v6;
  v13 = v7;
  sub_1002450C0(v8);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void sub_100249E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100249E9C(void *a1)
{
  v2 = *(a1[6] + 8);
  result = (*(a1[4] + 16))();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_100249EE4(void *a1, void *a2)
{
  v5 = a2;
  v3 = [v5 account];
  if ([v3 isInCircle:0] && +[SOSAuthKitHelpers accountIsCDPCapable](SOSAuthKitHelpers, "accountIsCDPCapable") && !+[SOSAuthKitHelpers peerinfoHasMID:](SOSAuthKitHelpers, "peerinfoHasMID:", v3))
  {
    [SOSAuthKitHelpers updateMIDInPeerInfo:v3];
  }

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    [v3 ghostBustPeriodic:*(*(a1[6] + 8) + 24) complete:&stru_100347380];
    [v3 removeV0Peers:&stru_1003473A0];
  }

  *(*(a1[7] + 8) + 24) = 1;
  v4 = a1[9];
  *(*(a1[8] + 8) + 24) = (*(a1[4] + 16))();
}

void sub_100249FEC(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = sub_100006274("removeV0Peers");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 || !a2)
  {
    if (v6)
    {
      v10 = 138412290;
      v11 = v4;
      v7 = "Did not remove any v0 peers, error: %@";
      v8 = v5;
      v9 = 12;
      goto LABEL_7;
    }
  }

  else if (v6)
  {
    LOWORD(v10) = 0;
    v7 = "Removed v0 Peers";
    v8 = v5;
    v9 = 2;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v10, v9);
  }
}

void sub_10024A0E0(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = sub_100006274("ghostbust");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "GhostBusting: %{BOOL}d", v5, 8u);
  }
}

void sub_10024A18C(id a1, SOSAccountTransaction *a2)
{
  v2 = a2;
  if (SOSVisibleKeychainNotAllowed())
  {
    v3 = [(SOSAccountTransaction *)v2 account];
    if ([v3 isInCircle:0])
    {
      v4 = [(SOSAccountTransaction *)v2 account];
      [v4 peerInfo];
      HasUserVisibleViewsEnabled = SOSPeerInfoHasUserVisibleViewsEnabled();

      if (HasUserVisibleViewsEnabled)
      {
        v6 = sub_100006274("views");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cannot have visible keychain views due to profile restrictions", v10, 2u);
        }

        v7 = [(SOSAccountTransaction *)v2 account];
        v8 = [v7 trust];
        v9 = [(SOSAccountTransaction *)v2 account];
        [v8 updateViewSets:v9 enabled:0 disabled:SOSViewsGetV0ViewSet()];
      }
    }
  }
}

uint64_t sub_10024A2B4(CFTypeRef *a1)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10024A3B0;
  v5[3] = &unk_100346BD8;
  v5[4] = v10;
  v5[5] = &v6;
  v2 = sub_1002497A8(a1, v5);
  if (a1)
  {
    v3 = v7[3];
    if (v3)
    {
      *a1 = v3;
    }
  }

  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v2;
}

void sub_10024A38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024A3B0(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = *(*(a1 + 40) + 8);
  *(*(*(a1 + 32) + 8) + 24) = sub_100218428(v3) != 0;

  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_10024A414(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCRequestToJoinCircleAfterRestore", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRequestToJoinCircleAfterRestore  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024A6FC;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  v7 = sub_1002497A8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = *(v17 + 24);
    *buf = 67240192;
    LODWORD(v21) = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCRequestToJoinCircleAfterRestore", " SOSSignpostNameSOSCCRequestToJoinCircleAfterRestore=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestToJoinCircleAfterRestore}d ", buf, 8u);
  }

  v12 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v13 = *(v17 + 24);
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRequestToJoinCircleAfterRestore  SOSSignpostNameSOSCCRequestToJoinCircleAfterRestore=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestToJoinCircleAfterRestore}d ", buf, 0x1Cu);
  }

  _Block_object_dispose(&v16, 8);
  return v7;
}

void sub_10024A6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024A6FC(uint64_t a1, void *a2, id *a3)
{
  v5 = a2;
  v6 = [v5 account];
  sub_100210680(v6);

  if (a3 && *a3)
  {
    v7 = *a3;
    v8 = sub_100006274("SecError");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ensure peer registration error: %@", buf, 0xCu);
    }
  }

  *buf = 0;
  v9 = v5;
  v10 = sub_100006274("circleOps");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Joining after restore (SOSAccountJoinCirclesAfterRestore)", v37, 2u);
  }

  v11 = sub_10020F3AC(v9, 1, buf);
  *(*(*(a1 + 32) + 8) + 24) = v11;
  if (a3)
  {
    v12 = *buf;
    if (*buf)
    {
      CFRetain(*buf);
      *a3 = v12;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    if (qword_10039E118 != -1)
    {
      dispatch_once(&qword_10039E118, &stru_1003420D8);
    }

    if (byte_10039E110 == 1)
    {
      v13 = sub_100006274("join-after-restore");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "posting kSOSCCCircleOctagonKeysChangedNotification", v37, 2u);
      }

      notify_post(kSOSCCCircleOctagonKeysChangedNotification);
      v14 = [v9 account];
      v15 = [v14 trust];
      v16 = [v15 isInCircleOnly:0];

      if (*buf)
      {
        v17 = [objc_opt_class() logger];
        v18 = *buf;
        v38[0] = @"SOSEnabled";
        v19 = [OTSOSActualAdapter sosEnabled]_0();
        v20 = @"compat_disabled";
        if (v19)
        {
          v20 = @"compat_enabled";
        }

        v39[0] = v20;
        v39[1] = @"Restore";
        v38[1] = @"SOSJoinMethod";
        v38[2] = @"JoiningSOSResult";
        v21 = @"not_in_circle";
        if (v16)
        {
          v21 = @"in_circle";
        }

        v39[2] = v21;
        v38[3] = @"CircleContainsLegacy";
        v22 = [v9 account];
        v23 = [v22 trust];
        [v23 trustedCircle];
        v24 = [v9 account];
        [v24 accountKey];
        IsLegacy = SOSCircleIsLegacy();
        v26 = @"does_not_contain_legacy";
        if (IsLegacy)
        {
          v26 = @"contains_legacy";
        }

        v39[3] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:4];
        [v17 logResultForEvent:@"SOSDeferralEventJoinCircleAfterRestore" hardFailure:0 result:v18 withAttributes:v27];
      }

      else
      {
        if ([OTSOSActualAdapter sosEnabled]_0())
        {
          v28 = @"compat_enabled";
        }

        else
        {
          v28 = @"compat_disabled";
        }

        if (v16)
        {
          v29 = @"in_circle";
        }

        else
        {
          v29 = @"not_in_circle";
        }

        v30 = [v9 account];
        v31 = [v30 trust];
        [v31 trustedCircle];
        v32 = [v9 account];
        [v32 accountKey];
        v33 = SOSCircleIsLegacy();
        v34 = @"does_not_contain_legacy";
        if (v33)
        {
          v34 = @"contains_legacy";
        }

        v17 = [NSString stringWithFormat:@"%@-%@-%@-%@", v28, @"Restore", v29, v34];

        v22 = [objc_opt_class() logger];
        [v22 logSuccessForEventNamed:v17];
      }
    }
  }

  v35 = *(*(*(a1 + 32) + 8) + 24);

  return v35;
}

BOOL sub_10024ABC0(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v3 = [(SOSAccountTransaction *)a2 account];
  sub_10020E5C0(v3);

  return 1;
}

uint64_t sub_10024ABF8(CFTypeRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCResetToOffering", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCResetToOffering  enableTelemetry=YES ", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024AE6C;
  v13[3] = &unk_100346C18;
  v13[4] = a1;
  v7 = sub_1002497A8(a1, v13);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240192;
    LODWORD(v15) = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCResetToOffering", " SOSSignpostNameSOSCCResetToOffering=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCResetToOffering}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v15 = v3;
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCResetToOffering  SOSSignpostNameSOSCCResetToOffering=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCResetToOffering}d ", buf, 0x1Cu);
  }

  return v7;
}

id sub_10024AE6C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = *(a1 + 32);
  v8 = sub_100217CE0(v6);

  if (v8)
  {
    v9 = [v5 account];
    v10 = [v9 trust];
    [v10 trustedCircle];
    v11 = [v5 account];
    [v11 accountKey];
    IsLegacy = SOSCircleIsLegacy();

    cf = 0;
    v13 = [v5 account];
    v14 = [v13 trust];
    v8 = [v14 resetToOffering:v5 key:v8 err:&cf];

    if (a3)
    {
      v15 = cf;
      if (cf)
      {
        CFRetain(cf);
        *a3 = v15;
      }
    }

    if (v8)
    {
      if (qword_10039E118 != -1)
      {
        dispatch_once(&qword_10039E118, &stru_1003420D8);
      }

      if (byte_10039E110 == 1)
      {
        v16 = sub_100006274("reset-to-offering");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "posting kSOSCCCircleOctagonKeysChangedNotification", buf, 2u);
        }

        notify_post(kSOSCCCircleOctagonKeysChangedNotification);
        v17 = [v5 account];
        v18 = [v17 trust];
        v19 = [v18 isInCircleOnly:0];

        if (cf)
        {
          v20 = [objc_opt_class() logger];
          v21 = cf;
          v34[0] = @"SOSEnabled";
          v22 = [OTSOSActualAdapter sosEnabled]_0();
          v23 = @"compat_disabled";
          if (v22)
          {
            v23 = @"compat_enabled";
          }

          v35[0] = v23;
          v35[1] = @"ResetToOffering";
          v34[1] = @"SOSJoinMethod";
          v34[2] = @"JoiningSOSResult";
          v24 = @"in_circle";
          if (!v19)
          {
            v24 = @"not_in_circle";
          }

          v34[3] = @"CircleContainsLegacy";
          v25 = @"does_not_contain_legacy";
          if (IsLegacy)
          {
            v25 = @"contains_legacy";
          }

          v35[2] = v24;
          v35[3] = v25;
          v26 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:4];
          [v20 logResultForEvent:@"SOSDeferralEventResetToOffering" hardFailure:0 result:v21 withAttributes:v26];
        }

        else
        {
          v27 = [OTSOSActualAdapter sosEnabled]_0();
          v28 = @"compat_disabled";
          if (v27)
          {
            v28 = @"compat_enabled";
          }

          v29 = @"not_in_circle";
          if (v19)
          {
            v29 = @"in_circle";
          }

          v30 = @"does_not_contain_legacy";
          if (IsLegacy)
          {
            v30 = @"contains_legacy";
          }

          v20 = [NSString stringWithFormat:@"%@-%@-%@-%@", v28, @"ResetToOffering", v29, v30];
          v26 = [objc_opt_class() logger];
          [v26 logSuccessForEventNamed:v20];
        }
      }
    }
  }

  return v8;
}

uint64_t sub_10024B20C(CFTypeRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCResetToEmpty", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCResetToEmpty  enableTelemetry=YES ", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10024B480;
  v13[3] = &unk_100346C18;
  v13[4] = a1;
  v7 = sub_1002497A8(a1, v13);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67240192;
    LODWORD(v15) = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCResetToEmpty", " SOSSignpostNameSOSCCResetToEmpty=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCResetToEmpty}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v15 = v3;
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCResetToEmpty  SOSSignpostNameSOSCCResetToEmpty=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCResetToEmpty}d ", buf, 0x1Cu);
  }

  return v7;
}

id sub_10024B480(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = *(a1 + 32);
  v8 = sub_100218428(v6);

  if (v8)
  {
    v9 = [v5 account];
    v10 = [v9 trust];
    [v10 trustedCircle];
    v11 = [v5 account];
    [v11 accountKey];
    IsLegacy = SOSCircleIsLegacy();

    cf = 0;
    v13 = [v5 account];
    v14 = [v13 trust];
    v15 = [v5 account];
    v16 = [v5 account];
    v17 = [v16 circle_transport];
    v8 = [v14 resetAccountToEmpty:v15 transport:v17 err:&cf];

    v18 = cf;
    if (a3 && cf)
    {
      CFRetain(cf);
      *a3 = v18;
      v18 = cf;
    }

    if (v18)
    {
      v19 = [objc_opt_class() logger];
      v20 = cf;
      v30[0] = @"SOSEnabled";
      v21 = [OTSOSActualAdapter sosEnabled]_0();
      v22 = @"compat_disabled";
      if (v21)
      {
        v22 = @"compat_enabled";
      }

      v31[0] = v22;
      v31[1] = @"Reset";
      v23 = @"does_not_contain_legacy";
      v30[1] = @"SOSJoinMethod";
      v30[2] = @"CircleContainsLegacy";
      if (IsLegacy)
      {
        v23 = @"contains_legacy";
      }

      v31[2] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:3];
      [v19 logResultForEvent:@"SOSDeferralEventReset" hardFailure:0 result:v20 withAttributes:v24];
    }

    else
    {
      v25 = [OTSOSActualAdapter sosEnabled]_0();
      v26 = @"compat_disabled";
      if (v25)
      {
        v26 = @"compat_enabled";
      }

      if (IsLegacy)
      {
        v27 = @"contains_legacy";
      }

      else
      {
        v27 = @"does_not_contain_legacy";
      }

      v19 = [NSString stringWithFormat:@"%@-%@-%@", v26, @"Reset", v27];
      v24 = [objc_opt_class() logger];
      [v24 logSuccessForEventNamed:v19];
    }
  }

  return v8;
}

uint64_t sub_10024B760(CFTypeRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCRemoveThisDeviceFromCircle", " enableTelemetry=YES ", &v13, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRemoveThisDeviceFromCircle  enableTelemetry=YES ", &v13, 0xCu);
  }

  v7 = sub_1002497A8(a1, &stru_100346C38);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v13 = 67240192;
    LODWORD(v14) = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCRemoveThisDeviceFromCircle", " SOSSignpostNameSOSCCRemoveThisDeviceFromCircle=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRemoveThisDeviceFromCircle}d ", &v13, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v14 = v3;
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRemoveThisDeviceFromCircle  SOSSignpostNameSOSCCRemoveThisDeviceFromCircle=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRemoveThisDeviceFromCircle}d ", &v13, 0x1Cu);
  }

  return v7;
}

BOOL sub_10024B990(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v4 = a2;
  v5 = [(SOSAccountTransaction *)v4 account];
  v6 = [v5 trust];
  v7 = [(SOSAccountTransaction *)v4 account];

  LOBYTE(a3) = [v6 leaveCircle:v7 err:a3];
  return a3;
}

uint64_t sub_10024BA18(uint64_t a1, CFTypeRef *a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCRemovePeersFromCircle", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRemovePeersFromCircle  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024BC90;
  v15[3] = &unk_100346C18;
  v15[4] = a1;
  v9 = sub_1002497A8(a2, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v17) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCRemovePeersFromCircle", " SOSSignpostNameSOSCCRemovePeersFromCircle=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRemovePeersFromCircle}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRemovePeersFromCircle  SOSSignpostNameSOSCCRemovePeersFromCircle=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRemovePeersFromCircle}d ", buf, 0x1Cu);
  }

  return v9;
}

uint64_t sub_10024BC90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  v6 = sub_10020FBF8(v5, *(a1 + 32), a3);

  return v6;
}

void sub_10024BCE4()
{
  v0 = SOSCCCredentialQueue();
  dispatch_async(v0, &stru_100346C58);
}

void sub_10024BD2C(id a1)
{
  cf = 0;
  if (sub_1002497A8(&cf, &stru_100346C78))
  {
    v1 = cf == 0;
  }

  else
  {
    v1 = 0;
  }

  if (!v1)
  {
    v2 = sub_100006274("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = cf;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "circleOps: error delivering account-sign-in notification: %@", buf, 0xCu);
    }

    v3 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v3);
    }
  }
}

BOOL sub_10024BE0C(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v3 = a2;
  v4 = sub_100006274("circleOps");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Signed into account!", v7, 2u);
  }

  v5 = [(SOSAccountTransaction *)v3 account];

  [v5 setAccountIsChanging:0];
  return 1;
}

uint64_t sub_10024BEB0(CFTypeRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCLoggedOutOfAccount", " enableTelemetry=YES ", &v13, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCLoggedOutOfAccount  enableTelemetry=YES ", &v13, 0xCu);
  }

  v7 = sub_1002497A8(a1, &stru_100346C98);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v13 = 67240192;
    LODWORD(v14) = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCLoggedOutOfAccount", " SOSSignpostNameSOSCCLoggedOutOfAccount=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCLoggedOutOfAccount}d ", &v13, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218496;
    v14 = v3;
    v15 = 2048;
    v16 = Nanoseconds / 1000000000.0;
    v17 = 1026;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCLoggedOutOfAccount  SOSSignpostNameSOSCCLoggedOutOfAccount=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCLoggedOutOfAccount}d ", &v13, 0x1Cu);
  }

  return v7;
}

BOOL sub_10024C0E0(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v4 = a2;
  v5 = sub_100006274("circleOps");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Signed out of account!", v14, 2u);
  }

  v6 = [(SOSAccountTransaction *)v4 account];
  v7 = [v6 trust];
  v8 = [(SOSAccountTransaction *)v4 account];
  v9 = [v7 leaveCircle:v8 err:a3];

  [(SOSAccountTransaction *)v4 restart];
  v10 = [(SOSAccountTransaction *)v4 account];
  sub_100246DB4();

  v11 = [(SOSAccountTransaction *)v4 account];
  sub_10020E5C0(v11);

  v12 = [(SOSAccountTransaction *)v4 account];

  [v12 setAccountIsChanging:1];
  return v9;
}

uint64_t sub_10024C218(uint64_t a1, CFTypeRef *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10024C28C;
  v3[3] = &unk_100346C18;
  v3[4] = a1;
  return sub_1002497A8(a2, v3);
}

uint64_t sub_10024C28C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = dispatch_get_global_queue(-2, 0);
  v10 = dispatch_group_create();
  v11 = [v8 trust];
  v12 = sub_100006274("circle");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18) = 134217984;
    *(&v18 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempting to leave circle - best effort - in %llu seconds\n", &v18, 0xCu);
  }

  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 3221225472;
  v19 = sub_1002100D0;
  v20 = &unk_100345100;
  v21 = v11;
  v22 = v8;
  v23 = a3;
  v13 = v8;
  v14 = v11;
  dispatch_group_async(v10, v9, &v18);
  v15 = dispatch_time(0, 1000000000 * v7);
  dispatch_group_wait(v10, v15);
  [v14 setDepartureCode:2];

  [v5 restart];
  v16 = [v5 account];

  sub_100246DB4();
  return 0;
}

uint64_t sub_10024C480(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyApplicantPeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyApplicantPeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024C778;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002463E8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = v17[3] != 0;
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyApplicantPeerInfo", " SOSSignpostNameSOSCCCopyApplicantPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyApplicantPeerInfo}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v17[3];
    *buf = 134218496;
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyApplicantPeerInfo  SOSSignpostNameSOSCCCopyApplicantPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyApplicantPeerInfo}d ", buf, 0x1Cu);
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_10024C740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024C778(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_10021A908(v5, a3, &stru_100345820);

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024C7E8(CFTypeRef *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10024C8A4;
  v3[3] = &unk_100346BB0;
  v3[4] = &v4;
  sub_1002463E8(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10024C88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024C8A4(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 trust];
  v5 = sub_100218428(v3);

  if (!v5)
  {
    goto LABEL_6;
  }

  if (![v4 trustedCircle])
  {
    SOSErrorCreate();
LABEL_6:
    v14 = 0;
    goto LABEL_4;
  }

  [v4 trustedCircle];
  Generation = SOSCircleGetGeneration();
  v14 = sub_100185B00(kCFAllocatorDefault, v7, v8, v9, v10, v11, v12, v13, Generation);
LABEL_4:

  *(*(*(a1 + 32) + 8) + 24) = v14;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024C994(CFTypeRef *a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyValidPeerPeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyValidPeerPeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v7 = objc_autoreleasePoolPush();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10024CC9C;
  v16[3] = &unk_100346BB0;
  v16[4] = &v17;
  sub_1002463E8(a1, v16);
  objc_autoreleasePoolPop(v7);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v9 = _OctagonSignpostLogSystem();
  v10 = v9;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = v18[3] != 0;
    *buf = 67240192;
    LODWORD(v22) = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyValidPeerPeerInfo", " SOSSignpostNameSOSCCCopyValidPeerPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyValidPeerPeerInfo}d ", buf, 8u);
  }

  v12 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v18[3];
    *buf = 134218496;
    v22 = v3;
    v23 = 2048;
    v24 = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = v13 != 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyValidPeerPeerInfo  SOSSignpostNameSOSCCCopyValidPeerPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyValidPeerPeerInfo}d ", buf, 0x1Cu);
  }

  v14 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v14;
}

void sub_10024CC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024CC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  [v5 account];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10021AA7C;
  v12 = v11[3] = &unk_100345750;
  v7 = v12;
  v8 = sub_10021A908(v7, a3, v11);

  *(*(*(a1 + 32) + 8) + 24) = v8;
  objc_autoreleasePoolPop(v6);
  v9 = *(*(*(a1 + 32) + 8) + 24) != 0;

  return v9;
}

uint64_t sub_10024CD98(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCValidateUserPublic", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCValidateUserPublic  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024D080;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002463E8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = *(v17 + 24);
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCValidateUserPublic", " SOSSignpostNameSOSCCValidateUserPublic=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCValidateUserPublic}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v12 = *(v17 + 24);
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCValidateUserPublic  SOSSignpostNameSOSCCValidateUserPublic=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCValidateUserPublic}d ", buf, 0x1Cu);
  }

  v13 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_10024D048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024D080(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  if (sub_100218428(v3))
  {
    v4 = [v3 accountKeyIsTrusted];
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return *(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_10024D100(CFTypeRef *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10024D1BC;
  v3[3] = &unk_100346BB0;
  v3[4] = &v4;
  sub_1002463E8(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10024D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024D1BC(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 account];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021A878;
  v9 = v8[3] = &unk_100345750;
  v5 = v9;
  v6 = sub_10021A908(v5, a3, v8);

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024D290(CFTypeRef *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10024D34C;
  v3[3] = &unk_100346BB0;
  v3[4] = &v4;
  sub_1002463E8(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10024D334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024D34C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_10021A908(v5, a3, &stru_1003457E0);

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024D3BC(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyViewUnawarePeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyViewUnawarePeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024D6B4;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002463E8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = v17[3] != 0;
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyViewUnawarePeerInfo", " SOSSignpostNameSOSCCCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyViewUnawarePeerInfo}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v17[3];
    *buf = 134218496;
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyViewUnawarePeerInfo  SOSSignpostNameSOSCCCopyViewUnawarePeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyViewUnawarePeerInfo}d ", buf, 0x1Cu);
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_10024D67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024D6B4(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 account];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10021ADFC;
  v9 = v8[3] = &unk_100345750;
  v5 = v9;
  v6 = sub_10021A908(v5, a3, v8);

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024D788(CFTypeRef *a1)
{
  v2 = sub_10000869C(0);
  v3 = sub_100014CA8(v2);
  sub_100087E9C(v3 != 0, a1, @"No datasource");
  if (!v3)
  {
    return 0;
  }

  v4 = (*(v3 + 8))(v3, kSecAttrAccessibleWhenUnlocked, a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_100151158(*v4, a1);
  (v5[9])(v5, a1);
  return v6;
}

uint64_t sub_10024D82C(CFTypeRef *a1)
{
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = sub_10024DF8C;
  v52 = sub_10024DF9C;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = kCFBooleanFalse;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  if (sub_10024DFA4())
  {
    v2 = _OctagonSignpostLogSystem();
    v3 = _OctagonSignpostCreate();

    v4 = _OctagonSignpostLogSystem();
    v5 = v4;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCWaitForInitialSync", " enableTelemetry=YES ", buf, 2u);
    }

    v6 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCWaitForInitialSync  enableTelemetry=YES ", buf, 0xCu);
    }

    v7 = sub_100006274("initial sync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wait for initial sync start!", buf, 2u);
    }

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10024E060;
    v34[3] = &unk_100346CE8;
    v34[4] = v39;
    v34[5] = &v35;
    v34[6] = &v40;
    v34[7] = &v48;
    v34[8] = &v44;
    v34[9] = a1;
    v8 = sub_1002463E8(a1, v34);
    if (v8)
    {
      if (v49[5])
      {
        if (*(v36 + 24) == 1)
        {
          v9 = sub_100006274("piggy");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setting initial sync timeout to 5 minutes", buf, 2u);
          }

          v10 = v49[5];
          v11 = 300000000000;
        }

        else
        {
          *buf = 10;
          v12 = CFPreferencesCopyValue(@"InitialSync.WaitPeriod", @"com.apple.security", kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
          v13 = v12;
          if (v12)
          {
            v14 = CFGetTypeID(v12);
            if (v14 == CFNumberGetTypeID())
            {
              CFNumberGetValue(v13, kCFNumberSInt64Type, buf);
            }

            CFRelease(v13);
            v15 = *buf;
          }

          else
          {
            v15 = 10;
          }

          v16 = sub_100006274("piggy");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "setting initial sync timeout to %llu seconds", buf, 0xCu);
          }

          v10 = v49[5];
          v11 = 1000000000 * v15;
        }

        v17 = dispatch_time(0, v11);
        if (dispatch_semaphore_wait(v10, v17) && *(v36 + 24) == 1)
        {
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_10024E338;
          v33[3] = &unk_100346D10;
          v33[4] = &v44;
          v33[5] = &v48;
          sub_1002450C0(v33);
        }
      }

      v59 = SecCoreAnalyticsValue;
      v18 = v41[3];
      v19 = time(0);
      v20 = v19 - v18;
      v21 = 1;
      if (v19 - v18 >= 11)
      {
        v22 = v19 - v18;
        do
        {
          v20 = v22 / 0xA;
          v21 *= 10;
          v23 = v22 > 0x6D;
          v22 /= 0xAuLL;
        }

        while (v23);
      }

      v24 = [NSNumber numberWithLong:v21 * v20];
      v60 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      [SecCoreAnalytics sendEvent:@"com.apple.security.sos.synccompletion" event:v25];

      v26 = sub_100006274("initial sync");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 1;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Finished!: %d", buf, 8u);
      }
    }

    v27 = v45[3];
    if (v27)
    {
      v45[3] = 0;
      CFRelease(v27);
    }

    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v29 = _OctagonSignpostLogSystem();
    v30 = v29;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      *buf = 67240192;
      *&buf[4] = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCWaitForInitialSync", " SOSSignpostNameSOSCCWaitForInitialSync=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCWaitForInitialSync}d ", buf, 8u);
    }

    v31 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = v3;
      v55 = 2048;
      v56 = Nanoseconds / 1000000000.0;
      v57 = 1026;
      v58 = v8;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCWaitForInitialSync  SOSSignpostNameSOSCCWaitForInitialSync=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCWaitForInitialSync}d ", buf, 0x1Cu);
    }
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  return v8;
}

void sub_10024DF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024DF8C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10024DFA4()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10024E440;
  v2[3] = &unk_100347300;
  v2[4] = &v3;
  sub_1002450C0(v2);
  v0 = *(v4 + 24);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10024E048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024E060(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  *(*(a1[4] + 8) + 24) = sub_10020649C(v4, @"initialsynctimeout");

  v5 = *(*(a1[4] + 8) + 24);
  if (v5)
  {
    *(*(a1[5] + 8) + 24) = CFBooleanGetValue(v5) != 0;
  }

  v6 = [v3 account];
  v7 = sub_100220920(v6);

  if (!v7)
  {
    *(*(a1[6] + 8) + 24) = time(0);
    v8 = dispatch_semaphore_create(0);
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v3 account];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v24 = sub_10024E410;
    v25 = &unk_100346CC0;
    v26 = a1[7];
    v12 = v11;
    v13 = v23;
    if (sub_10020649C(v12, @"unsynced"))
    {
      v14 = CFUUIDCreate(kCFAllocatorDefault);
      v15 = CFUUIDCreateString(kCFAllocatorDefault, v14);
      if (v14)
      {
        CFRelease(v14);
      }

      v16 = sub_100006274("initial-sync");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "adding sync block [%@] to array!", buf, 0xCu);
      }

      v17 = objc_retainBlock(v13);
      v18 = [v12 waitForInitialSync_blocks];

      if (!v18)
      {
        v19 = +[NSMutableDictionary dictionary];
        [v12 setWaitForInitialSync_blocks:v19];
      }

      v20 = [v12 waitForInitialSync_blocks];
      v21 = objc_retainBlock(v17);
      [v20 setObject:v21 forKey:v15];
    }

    else
    {
      (v24)(v13, v12);
      v15 = 0;
    }

    *(*(a1[8] + 8) + 24) = v15;
  }

  return 1;
}

void sub_10024E338(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v9 = v3;
  v5 = [v9 waitForInitialSync_blocks];

  if (v5)
  {
    v6 = [v9 waitForInitialSync_blocks];
    [v6 removeObjectForKey:v4];

    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    if (!v8)
    {
      return;
    }

    *(v7 + 40) = 0;
  }

  else
  {

    v8 = v9;
  }
}

uint64_t sub_10024E410(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  if (v1)
  {
    dispatch_semaphore_signal(v1);
  }

  return 1;
}

void sub_10024E440(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = [v3 SOSMonitorModeSOSIsActive];
}

uint64_t sub_10024E49C(uint64_t a1, CFTypeRef *a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCAcceptApplicants", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCAcceptApplicants  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024E714;
  v15[3] = &unk_100346C18;
  v15[4] = a1;
  v9 = sub_1002497A8(a2, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v17) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCAcceptApplicants", " SOSSignpostNameSOSCCAcceptApplicants=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCAcceptApplicants}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCAcceptApplicants  SOSSignpostNameSOSCCAcceptApplicants=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCAcceptApplicants}d ", buf, 0x1Cu);
  }

  return v9;
}

BOOL sub_10024E714(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  v6 = *(a1 + 32);
  v7 = v5;
  v8 = sub_100217CE0(v7);
  if (v8)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100210210;
    v12[3] = &unk_100345128;
    v12[5] = v8;
    v12[6] = a3;
    v12[4] = &v13;
    sub_100210258(v7, v6, v12);
    v9 = v14[3];
    v10 = v9 == CFArrayGetCount(v6);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_10024E818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024E830(uint64_t a1, CFTypeRef *a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCAcceptApplicants", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCAcceptApplicants  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024EAA8;
  v15[3] = &unk_100346C18;
  v15[4] = a1;
  v9 = sub_1002497A8(a2, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v17) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCAcceptApplicants", " SOSSignpostNameSOSCCAcceptApplicants=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCAcceptApplicants}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCAcceptApplicants  SOSSignpostNameSOSCCAcceptApplicants=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCAcceptApplicants}d ", buf, 0x1Cu);
  }

  return v9;
}

uint64_t sub_10024EAA8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  v6 = *(a1 + 32);
  v7 = v5;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002105F4;
  v10[3] = &unk_100345150;
  v10[5] = v11;
  v10[6] = a3;
  v10[4] = &v12;
  sub_100210258(v7, v6, v10);
  v8 = *(v13 + 24);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);

  return v8;
}

void sub_10024EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024EBC8(CFTypeRef *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10024EC84;
  v3[3] = &unk_100346BB0;
  v3[4] = &v4;
  sub_1002463E8(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10024EC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024EC84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_10021A908(v5, a3, &stru_100345840);

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024ECF4(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyConcurringPeerPeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyConcurringPeerPeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024EFEC;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002463E8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = v17[3] != 0;
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyConcurringPeerPeerInfo", " SOSSignpostNameSOSCCCopyConcurringPeerPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyConcurringPeerPeerInfo}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v17[3];
    *buf = 134218496;
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyConcurringPeerPeerInfo  SOSSignpostNameSOSCCCopyConcurringPeerPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyConcurringPeerPeerInfo}d ", buf, 0x1Cu);
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_10024EFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024EFEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_10021A908(v5, a3, &stru_100345860);

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024F05C(CFTypeRef *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10024F118;
  v3[3] = &unk_100346BB0;
  v3[4] = &v4;
  sub_1002463E8(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10024F100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024F118(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  [v3 peerInfo];
  PeerID = SOSPeerInfoGetPeerID();

  if (PeerID)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateCopy(kCFAllocatorDefault, PeerID);
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024F198(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyMyPeerInfo", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyMyPeerInfo  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10024F490;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002463E8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = v17[3] != 0;
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyMyPeerInfo", " SOSSignpostNameSOSCCCopyMyPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyMyPeerInfo}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v17[3];
    *buf = 134218496;
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyMyPeerInfo  SOSSignpostNameSOSCCCopyMyPeerInfo=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyMyPeerInfo}d ", buf, 0x1Cu);
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_10024F458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024F490(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  [v3 peerInfo];
  *(*(*(a1 + 32) + 8) + 24) = SOSPeerInfoCreateCopy();

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_10024F510(uint64_t a1, CFTypeRef *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCSetNewPublicBackupKey", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCSetNewPublicBackupKey  enableTelemetry=YES ", buf, 0xCu);
  }

  v9 = sub_100006274("devRecovery");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SOSCCSetNewPublicBackupKey_Server acquiring account lock", buf, 2u);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10024F85C;
  v18[3] = &unk_100346D38;
  v18[5] = a1;
  v18[6] = a2;
  v18[4] = &v19;
  sub_1002497A8(a2, v18);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v13 = v20[3] != 0;
    *buf = 67240192;
    LODWORD(v24) = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCSetNewPublicBackupKey", " SOSSignpostNameSOSCCSetNewPublicBackupKey=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCSetNewPublicBackupKey}d ", buf, 8u);
  }

  v14 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v20[3];
    *buf = 134218496;
    v24 = v5;
    v25 = 2048;
    v26 = Nanoseconds / 1000000000.0;
    v27 = 1026;
    v28 = v15 != 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCSetNewPublicBackupKey  SOSSignpostNameSOSCCSetNewPublicBackupKey=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCSetNewPublicBackupKey}d ", buf, 0x1Cu);
  }

  v16 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v16;
}

void sub_10024F824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10024F85C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100006274("devRecovery");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SOSCCSetNewPublicBackupKey_Server acquired account lock", buf, 2u);
  }

  v5 = sub_100213C20(v3, *(a1 + 40), *(a1 + 48));
  v6 = sub_100006274("devRecovery");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SOSCCSetNewPublicBackupKey_Server, new public backup is set in account", v15, 2u);
    }

    [v3 restart];
    v8 = [v3 account];
    [v8 peerInfo];
    *(*(*(a1 + 32) + 8) + 24) = SOSPeerInfoCreateCopy();

    v6 = sub_100006274("devRecovery");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v9 = "SOSCCSetNewPublicBackupKey_Server, new public backup is set and pushed";
      v10 = &v14;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    }
  }

  else if (v7)
  {
    v13 = 0;
    v9 = "SOSCCSetNewPublicBackupKey_Server, could not set new public backup";
    v10 = &v13;
    goto LABEL_10;
  }

  v11 = *(*(*(a1 + 32) + 8) + 24) != 0;
  return v11;
}

uint64_t sub_10024FA1C(uint64_t a1, char a2, CFTypeRef *a3)
{
  v6 = _OctagonSignpostLogSystem();
  v7 = _OctagonSignpostCreate();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SOSCCRegisterSingleRecoverySecret", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRegisterSingleRecoverySecret  enableTelemetry=YES ", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10024FCA4;
  v17[3] = &unk_100346D58;
  v18 = a2;
  v17[4] = a1;
  v17[5] = a3;
  v11 = sub_1002497A8(a3, v17);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67240192;
    LODWORD(v20) = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v7, "SOSCCRegisterSingleRecoverySecret", " SOSSignpostNameSOSCCRegisterSingleRecoverySecret=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRegisterSingleRecoverySecret}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v20 = v7;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 1026;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRegisterSingleRecoverySecret  SOSSignpostNameSOSCCRegisterSingleRecoverySecret=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRegisterSingleRecoverySecret}d ", buf, 0x1Cu);
  }

  return v11;
}

uint64_t sub_10024FCA4(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = *(a1 + 48);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v3;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v8 = [v7 isInCircle:v5];
  if (v8)
  {
    if (v4)
    {
      v16 = sub_100212D08(v8, v9, v10, v11, v12, v13, v14, v15);
      v24 = sub_10001104C(kCFAllocatorDefault, v17, v18, v19, v20, v21, v22, v23, kSecValueData, v6);
      v25 = SecItemUpdate(v16, v24);
      if (v25 == -25300)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v16);
        *&context = _NSConcreteStackBlock;
        *(&context + 1) = 3221225472;
        v38 = sub_100213FD8;
        v39 = &unk_1003469D0;
        v40 = MutableCopy;
        CFDictionaryApplyFunction(v24, sub_100214020, &context);
        v25 = SecItemAdd(MutableCopy, 0);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }
      }

      v27 = sub_1000103CC(v25, v5, @"Error saving %@", v16);
      if (v16)
      {
        CFRelease(v16);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      *(v34 + 24) = v27;
      if (!v27)
      {
        v28 = sub_100006274("keybag");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *v5;
          LODWORD(context) = 138412290;
          *(&context + 4) = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "failed to set V0 keybag (%@)", &context, 0xCu);
        }
      }
    }

    else
    {
      *(v34 + 24) = 1;
      Direct = SOSBackupSliceKeyBagCreateDirect();
      *&context = _NSConcreteStackBlock;
      *(&context + 1) = 3221225472;
      v38 = sub_100213FE0;
      v39 = &unk_1003455A0;
      v41 = &v33;
      v40 = v7;
      v42 = Direct;
      v43 = v5;
      sub_100213590(v40, &context);

      if (Direct)
      {
        CFRelease(Direct);
      }
    }
  }

  v31 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);

  return v31 & 1;
}

void sub_10024FF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10024FFB0(CFTypeRef *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10025006C;
  v3[3] = &unk_100346BB0;
  v3[4] = &v4;
  sub_1002463E8(a1, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100250054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_10025006C(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = [v3 trust];
  v5 = [v4 departureCode];

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_1002500E0(int a1, CFTypeRef *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100250154;
  v3[3] = &unk_100346A50;
  v4 = a1;
  return sub_1002463E8(a2, v3);
}

uint64_t sub_100250154(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = *(a1 + 32);
  v5 = [v3 trust];
  [v5 setDepartureCode:v4];

  return 1;
}

uint64_t sub_1002501B0(CFTypeRef *a1)
{
  v2 = sub_100006274("updates");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Request for registering peers", &v14, 2u);
  }

  v3 = _OctagonSignpostLogSystem();
  v4 = _OctagonSignpostCreate();

  v5 = _OctagonSignpostLogSystem();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v14) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "SOSCCProcessEnsurePeerRegistration", " enableTelemetry=YES ", &v14, 2u);
  }

  v7 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCProcessEnsurePeerRegistration  enableTelemetry=YES ", &v14, 0xCu);
  }

  v8 = sub_1002497A8(a1, &stru_100346D78);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v10 = _OctagonSignpostLogSystem();
  v11 = v10;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v14 = 67240192;
    LODWORD(v15) = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "SOSCCProcessEnsurePeerRegistration", " SOSSignpostNameSOSCCProcessEnsurePeerRegistration=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCProcessEnsurePeerRegistration}d ", &v14, 8u);
  }

  v12 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134218496;
    v15 = v4;
    v16 = 2048;
    v17 = Nanoseconds / 1000000000.0;
    v18 = 1026;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCProcessEnsurePeerRegistration  SOSSignpostNameSOSCCProcessEnsurePeerRegistration=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCProcessEnsurePeerRegistration}d ", &v14, 0x1Cu);
  }

  return v8;
}

BOOL sub_10025042C(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v3 = a2;
  v4 = [(SOSAccountTransaction *)v3 account];
  v5 = [v4 SOSMonitorModeSOSIsActive];

  if (v5)
  {
    v6 = [(SOSAccountTransaction *)v3 account];
    sub_100210680(v6);
  }

  return 1;
}

uint64_t sub_100250494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_10024DFA4())
  {
    return 0;
  }

  if (qword_10039E488 != -1)
  {
    dispatch_once(&qword_10039E488, &stru_100346D98);
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  if (!a1)
  {
    a1 = v10[3];
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_10:
    a2 = v10[3];
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_6:
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100250634;
  block[3] = &unk_100346DE8;
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[4] = &v13;
  block[5] = &v9;
  dispatch_sync(qword_10039E480, block);
  v6 = v14[3];
  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return v6;
}

void sub_100250634(uint64_t a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCProcessSyncWithPeers", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCProcessSyncWithPeers  enableTelemetry=YES ", buf, 0xCu);
  }

  Count = CFSetGetCount(*(a1 + 48));
  if (CFSetGetCount(*(a1 + 56)) + Count > 6)
  {
    v10 = *(a1 + 56);
    if (v10 && CFSetGetCount(v10))
    {
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100250D68;
      v28[3] = &unk_100346DC0;
      v29 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      sub_100250DF0(v11, v12, v28);
    }

    v13 = *(a1 + 48);
    if (v13 && CFSetGetCount(v13))
    {
      v14 = *(a1 + 48);
      v15 = *(a1 + 64);
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100250FC4;
      v26[3] = &unk_100346DC0;
      v27 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
      sub_100250DF0(v14, v15, v26);
    }
  }

  else
  {
    v8 = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 64);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100250A30;
    v31 = &unk_100347438;
    v32 = *(a1 + 48);
    v33 = v8;
    sub_1002497A8(v9, buf);
  }

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = CFSetGetCount(*(*(*(a1 + 32) + 8) + 24));
    *buf = 67240192;
    *&buf[4] = v19 != 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCProcessSyncWithPeers", " SOSSignpostNameSOSCCProcessSyncWithPeers=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCProcessSyncWithPeers}d ", buf, 8u);
  }

  v20 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = CFSetGetCount(*(*(*(a1 + 32) + 8) + 24));
    *buf = 134218496;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = Nanoseconds / 1000000000.0;
    *&buf[22] = 1026;
    LODWORD(v31) = v21 != 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCProcessSyncWithPeers  SOSSignpostNameSOSCCProcessSyncWithPeers=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCProcessSyncWithPeers}d ", buf, 0x1Cu);
  }

  if (!CFSetGetCount(*(*(*(a1 + 32) + 8) + 24)))
  {
    v22 = *(*(a1 + 32) + 8);
    v23 = *(v22 + 24);
    if (v23)
    {
      *(v22 + 24) = 0;
      CFRelease(v23);
    }
  }

  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 24);
  if (v25)
  {
    *(v24 + 24) = 0;
    CFRelease(v25);
  }
}

uint64_t sub_100250A30(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = [v6 SOSMonitorModeSOSIsActive];

  if (v7)
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = v5;
    cf = 0;
    v11 = [v10 account];
    if (sub_100216084(v11, a3))
    {
      Mutable = sub_100216640(v10, v8, &cf);
      if (!Mutable)
      {
        v13 = sub_100006274("account-sync");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = cf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Peer Sync failed: %@", &buf, 0xCu);
        }

        Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
      }

      v14 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v14);
      }

      v15 = [v11 kvs_message_transport];
      v16 = [v15 SOSTransportMessageGetEngine];

      v17 = sub_10014EF2C(v16, v9, 0, a3);
      v18 = v17;
      if (v17)
      {
        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3221225472;
        v26 = sub_100216A10;
        v27 = &unk_1003477F0;
        v28 = Mutable;
        CFSetApplyFunction(v17, sub_100216628, &buf);
      }

      else
      {
        v19 = sub_100006274("account-sync");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = cf;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Engine Backup Sync failed: %@", &buf, 0xCu);
        }
      }

      v20 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v20);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
    }

    v21 = a1[6];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v26 = sub_10025110C;
    v27 = &unk_1003477F0;
    v28 = v21;
    CFSetApplyFunction(Mutable, sub_1002457A8, &buf);
    if (!Mutable)
    {
      v22 = 0;
      goto LABEL_22;
    }

    CFRelease(Mutable);
  }

  v22 = 1;
LABEL_22:

  return v22;
}

uint64_t sub_100250D68(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100250A30;
  v6[3] = &unk_100347438;
  v6[4] = v3;
  v6[5] = a2;
  v6[6] = v4;
  return sub_1002497A8(a3, v6);
}

void sub_100250DF0(const __CFSet *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10025104C;
  v9[3] = &unk_100347460;
  v11 = &v16;
  v12 = v20;
  v13 = &v21;
  v14 = 7;
  v6 = v5;
  v10 = v6;
  v15 = a2;
  CFSetApplyFunction(a1, sub_1002457A8, v9);
  if (CFSetGetCount(v17[3]))
  {
    v7 = (*(v6 + 2))(v6, v17[3], a2);
    *(v22 + 24) &= v7;
  }

  v8 = v17[3];
  if (v8)
  {
    v17[3] = 0;
    CFRelease(v8);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
}

void sub_100250F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100250FC4(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(*(*(a1 + 40) + 8) + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100250A30;
  v6[3] = &unk_100347438;
  v6[4] = a2;
  v6[5] = v3;
  v6[6] = v4;
  return sub_1002497A8(a3, v6);
}

void sub_10025104C(void *a1, const void *a2)
{
  CFSetAddValue(*(*(a1[5] + 8) + 24), a2);
  if (++*(*(a1[6] + 8) + 24) >= a1[8])
  {
    v3 = *(*(a1[5] + 8) + 24);
    v4 = a1[9];
    *(*(a1[7] + 8) + 24) &= (*(a1[4] + 16))();
    *(*(a1[6] + 8) + 24) = 0;
    v5 = *(*(a1[5] + 8) + 24);

    CFSetRemoveAllValues(v5);
  }
}

void sub_100251114(id a1)
{
  v1 = dispatch_queue_create("syncWithPeers", 0);
  v2 = qword_10039E480;
  qword_10039E480 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_100251154(CFErrorRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCProcessSyncWithAllPeers", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCProcessSyncWithAllPeers  enableTelemetry=YES ", buf, 0xCu);
  }

  cf = 0;
  if ((sub_1002497A8(&cf, &stru_100346E08) & 1) != 0 || !cf)
  {
    v9 = 1;
  }

  else
  {
    if (SecErrorGetOSStatus() == -25308)
    {
      v7 = sub_100006274("updates");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "SOSAccountSyncWithAllKVSPeers failed because device is locked; letting CloudKeychainProxy know", buf, 2u);
      }

      v8 = cf;
      if (!cf)
      {
        v9 = 2;
        goto LABEL_14;
      }

      cf = 0;
      CFRelease(v8);
      v9 = 2;
    }

    else
    {
      v15 = sub_100006274("SecError");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = cf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unexpected error: %@", buf, 0xCu);
      }

      v9 = 1;
    }

    v16 = cf;
    if (a1 && cf)
    {
      if (!*a1)
      {
        goto LABEL_33;
      }

      if (CFErrorGetCode(*a1) == -25330)
      {
        v17 = *a1;
        if (!*a1)
        {
          goto LABEL_33;
        }

        *a1 = 0;
        CFRelease(v17);
      }

LABEL_31:
      if (*a1)
      {
        goto LABEL_32;
      }

LABEL_33:
      *a1 = v16;
      goto LABEL_14;
    }

    if (cf)
    {
      if (!a1)
      {
LABEL_32:
        CFRelease(v16);
        goto LABEL_14;
      }

      goto LABEL_31;
    }
  }

LABEL_14:
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v20) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCProcessSyncWithAllPeers", " SOSSignpostNameSOSCCProcessSyncWithAllPeers=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCProcessSyncWithAllPeers}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v20 = v3;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 1026;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCProcessSyncWithAllPeers  SOSSignpostNameSOSCCProcessSyncWithAllPeers=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCProcessSyncWithAllPeers}d ", buf, 0x1Cu);
  }

  return v9;
}

BOOL sub_1002514CC(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v4 = a2;
  v5 = [(SOSAccountTransaction *)v4 account];
  v6 = [v5 SOSMonitorModeSOSIsActive];

  if (v6)
  {
    v7 = sub_100216AF0(v4, a3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100251538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_100185B00(kCFAllocatorDefault, a2, a3, a4, a5, a6, a7, a8, a1);
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100245934;
  activity_block[3] = &unk_100346E68;
  activity_block[4] = v8;
  _os_activity_initiate(&_mh_execute_header, "CloudCircle RequestSyncWithPeersList", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_1002515E8(uint64_t a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCRequestSyncWithBackupPeerList", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRequestSyncWithBackupPeerList  enableTelemetry=YES ", buf, 0xCu);
  }

  v14 = sub_100185B00(kCFAllocatorDefault, v7, v8, v9, v10, v11, v12, v13, 0);
  sub_100085ABC(*(a1 + 32), @"[", @"]", &stru_100346E88);
  v15 = *(a1 + 32);
  v16 = dispatch_get_global_queue(-32768, 0);
  SOSCloudKeychainRequestSyncWithPeers();

  if (v14)
  {
    CFRelease(v14);
  }

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v18 = _OctagonSignpostLogSystem();
  v19 = v18;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 67240192;
    LODWORD(v22) = 1;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCRequestSyncWithBackupPeerList", " SOSSignpostNameSOSCCRequestSyncWithBackupPeerList=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestSyncWithBackupPeerList}d ", buf, 8u);
  }

  v20 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v22 = v3;
    v23 = 2048;
    v24 = Nanoseconds / 1000000000.0;
    v25 = 1026;
    v26 = 1;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRequestSyncWithBackupPeerList  SOSSignpostNameSOSCCRequestSyncWithBackupPeerList=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRequestSyncWithBackupPeerList}d ", buf, 0x1Cu);
  }
}

void sub_10025187C(id a1, __CFString *a2)
{
  v3 = sub_100006274("syncwith");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Request backup sync With: %@", &v4, 0xCu);
  }
}

void sub_100251928(id a1)
{
  v1 = _OctagonSignpostLogSystem();
  v2 = _OctagonSignpostCreate();

  v3 = _OctagonSignpostLogSystem();
  v4 = v3;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "SOSCCEnsurePeerRegistration", " enableTelemetry=YES ", &v11, 2u);
  }

  v5 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCEnsurePeerRegistration  enableTelemetry=YES ", &v11, 0xCu);
  }

  v6 = dispatch_get_global_queue(-32768, 0);
  SOSCloudKeychainRequestEnsurePeerRegistration();

  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = 67240192;
    LODWORD(v12) = 1;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v2, "SOSCCEnsurePeerRegistration", " SOSSignpostNameSOSCCEnsurePeerRegistration=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCEnsurePeerRegistration}d ", &v11, 8u);
  }

  v10 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    v12 = v2;
    v13 = 2048;
    v14 = Nanoseconds / 1000000000.0;
    v15 = 1026;
    v16 = 1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCEnsurePeerRegistration  SOSSignpostNameSOSCCEnsurePeerRegistration=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCEnsurePeerRegistration}d ", &v11, 0x1Cu);
  }
}

uint64_t sub_100251B5C(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyApplication", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyApplication  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100251E54;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002497A8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = v17[3] != 0;
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyApplication", " SOSSignpostNameSOSCCCopyApplication=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyApplication}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v17[3];
    *buf = 134218496;
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyApplication  SOSSignpostNameSOSCCCopyApplication=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyApplication}d ", buf, 0x1Cu);
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_100251E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100251E54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_10020BB34(v5, a3);

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_100251EBC(CFTypeRef *a1)
{
  v2 = sub_1002497A8(a1, &stru_100346EC8);
  v3 = v2;
  if (a1)
  {
    if (v2)
    {
      v4 = *a1;
      if (*a1)
      {
        *a1 = 0;
        CFRelease(v4);
      }
    }
  }

  return v3;
}

BOOL sub_100251F08(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v4 = [(SOSAccountTransaction *)a2 account];
  sub_100210B48(v4, a3);

  return 1;
}

uint64_t sub_100251F48(uint64_t a1, CFTypeRef *a2)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCCopyCircleJoiningBlob", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyCircleJoiningBlob  enableTelemetry=YES ", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100252244;
  v17[3] = &unk_100346EF0;
  v17[4] = &v18;
  v17[5] = a1;
  sub_1002497A8(a2, v17);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v10 = _OctagonSignpostLogSystem();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = v19[3] != 0;
    *buf = 67240192;
    LODWORD(v23) = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCCopyCircleJoiningBlob", " SOSSignpostNameSOSCCCopyCircleJoiningBlob=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyCircleJoiningBlob}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v19[3];
    *buf = 134218496;
    v23 = v5;
    v24 = 2048;
    v25 = Nanoseconds / 1000000000.0;
    v26 = 1026;
    v27 = v14 != 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyCircleJoiningBlob  SOSSignpostNameSOSCCCopyCircleJoiningBlob=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyCircleJoiningBlob}d ", buf, 0x1Cu);
  }

  v15 = v19[3];
  _Block_object_dispose(&v18, 8);
  return v15;
}

void sub_10025220C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100252244(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = [a2 account];
  *(*(*(a1 + 32) + 8) + 24) = sub_100209358(v5, 0, 0, 0, 0, *(a1 + 40), a3);

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_1002522C0(int a1, CFTypeRef *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCCopyInitialSyncData", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyInitialSyncData  enableTelemetry=YES ", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002525C0;
  v17[3] = &unk_100346F18;
  v17[4] = &v19;
  v18 = a1;
  sub_1002497A8(a2, v17);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v10 = _OctagonSignpostLogSystem();
  v11 = v10;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = v20[3] != 0;
    *buf = 67240192;
    LODWORD(v24) = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCCopyInitialSyncData", " SOSSignpostNameSOSCCCopyInitialSyncData=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyInitialSyncData}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v20[3];
    *buf = 134218496;
    v24 = v5;
    v25 = 2048;
    v26 = Nanoseconds / 1000000000.0;
    v27 = 1026;
    v28 = v14 != 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyInitialSyncData  SOSSignpostNameSOSCCCopyInitialSyncData=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyInitialSyncData}d ", buf, 0x1Cu);
  }

  v15 = v20[3];
  _Block_object_dispose(&v19, 8);
  return v15;
}

void sub_100252588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1002525C0(uint64_t a1, void *a2)
{
  v3 = [a2 account];
  v4 = *(a1 + 40);
  v79 = v3;
  v5 = +[NSMutableArray array];
  v78 = a1;
  if ((v4 & 4) != 0)
  {
    v14 = +[NSMutableArray array];
    v15 = +[NSMutableSet set];
    sub_1002117E8(v14, v15, 1);
  }

  else
  {
    if ((v4 & 2) != 0)
    {
      v6 = v79;
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      v8 = [v6 trust];

      [v8 trustedCircle];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v103 = sub_100212370;
      v104 = &unk_100346068;
      v105 = Mutable;
      SOSCircleForEachActivePeer();

      v9 = sub_100006274("piggy");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = Mutable;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "identities: %@", &buf, 0xCu);
      }

      Count = CFArrayGetCount(Mutable);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          CFArrayGetValueAtIndex(Mutable, i);
          v13 = SOSPeerInfoCopyData();
          if (v13)
          {
            [v5 addObject:v13];
          }
        }
      }

      CFRelease(Mutable);
    }

    if (v4)
    {
      result[0] = 0;
      v14 = +[NSMutableArray array];
      v85 = +[NSMutableSet set];
      sub_1002117E8(v14, v85, 0);
      *v91 = kSecClass;
      *&v91[8] = kSecUseDataProtectionKeychain;
      *&buf = kSecClassInternetPassword;
      *(&buf + 1) = &__kCFBooleanTrue;
      *&v92 = kSecAttrAccessGroup;
      *(&v92 + 1) = kSecAttrDescription;
      v103 = @"com.apple.security.ckks";
      v104 = @"tlk";
      *&v93 = kSecAttrSynchronizable;
      *(&v93 + 1) = kSecMatchLimit;
      v105 = kCFBooleanTrue;
      v106 = kSecMatchLimitAll;
      v94 = __PAIR128__(kSecReturnData, kSecReturnAttributes);
      v107 = &__kCFBooleanTrue;
      v108 = &__kCFBooleanTrue;
      v16 = [NSDictionary dictionaryWithObjects:&buf forKeys:v91 count:8];
      if (!SecItemCopyMatching(v16, result))
      {
        sub_100211C28(v14, result[0], v85);
      }

      v17 = result[0];
      if (result[0])
      {
        result[0] = 0;
        CFRelease(v17);
      }

      *&v95 = kSecClass;
      *(&v95 + 1) = kSecUseDataProtectionKeychain;
      *v99 = kSecClassInternetPassword;
      *&v96 = kSecAttrAccessGroup;
      *(&v96 + 1) = kSecAttrDescription;
      *&v99[8] = &__kCFBooleanTrue;
      *&v99[16] = @"com.apple.security.ckks";
      *&v99[24] = @"tlk-piggy";
      *&v97 = kSecAttrSynchronizable;
      *(&v97 + 1) = kSecMatchLimit;
      *&v100 = kSecAttrSynchronizableAny;
      *(&v100 + 1) = kSecMatchLimitAll;
      v98 = __PAIR128__(kSecReturnData, kSecReturnAttributes);
      *&v101 = &__kCFBooleanTrue;
      *(&v101 + 1) = &__kCFBooleanTrue;
      v18 = [NSDictionary dictionaryWithObjects:v99 forKeys:&v95 count:8];

      if (!SecItemCopyMatching(v18, result))
      {
        sub_100211C28(v14, result[0], v85);
      }

      v19 = result[0];
      if (result[0])
      {
        result[0] = 0;
        CFRelease(v19);
      }

      v20 = sub_100006274("piggy");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v88 = 67109120;
        v89 = [v14 count];
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found %d TLKs", v88, 8u);
      }
    }

    else
    {
      v14 = 0;
    }
  }

  v21 = v5;
  v22 = v14;
  v76 = v21;
  v23 = +[NSMutableArray array];
  v77 = v22;
  v24 = [v22 mutableCopy];
  [v24 sortUsingComparator:&stru_100345208];
  v93 = 0u;
  v94 = 0u;
  *v91 = 0u;
  v92 = 0u;
  v25 = v24;
  v86 = [v25 countByEnumeratingWithState:v91 objects:&buf count:16];
  if (v86)
  {
    v83 = *v92;
    obj = v25;
    while (2)
    {
      for (j = 0; j != v86; j = j + 1)
      {
        if (*v92 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*&v91[8] + 8 * j);
        v28 = [v27 objectForKeyedSubscript:kSecValueData];
        v29 = [v27 objectForKeyedSubscript:kSecAttrServer];
        v30 = [v27 objectForKeyedSubscript:kSecAttrAccount];
        v31 = [[NSUUID alloc] initWithUUIDString:v30];

        memset(v99, 170, 16);
        [v31 getUUIDBytes:v99];
        v32 = [NSData dataWithBytes:v99 length:16];

        v33 = sub_1002120D4(v29);
        v34 = v29;
        v35 = v32;
        [v28 length];
        [v35 length];

        if (v33)
        {
          ccder_sizeof_uint64();
        }

        else
        {
          sub_10000E17C(v34);
        }

        ccder_sizeof();
        ccder_sizeof();
        v36 = ccder_sizeof();

        v37 = [NSMutableData dataWithLength:v36];
        v38 = [v37 mutableBytes];
        v39 = [v37 length];
        if (sub_1002120D4(v34))
        {
          v40 = v28;
          v41 = v35;
          ccder_encode_uint64();
        }

        else
        {
          v42 = v28;
          v43 = v35;
          sub_10000ECFC(v34, 0, v38, v39 + v38, v44);
        }

        sub_10021216C(v35);

        sub_10021216C(v28);
        if (!ccder_encode_constructed_tl())
        {

          v25 = obj;
          v81 = 0;
          goto LABEL_43;
        }

        v45 = sub_100006274("piggy");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *v99 = 138412546;
          *&v99[4] = v34;
          *&v99[12] = 2112;
          *&v99[14] = v30;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "preparing TLK in order: %@: %@", v99, 0x16u);
        }

        [v23 addObject:v37];
      }

      v25 = obj;
      v86 = [obj countByEnumeratingWithState:v91 objects:&buf count:16];
      if (v86)
      {
        continue;
      }

      break;
    }
  }

  v81 = v23;
LABEL_43:

  v46 = v76;
  v47 = +[NSMutableArray array];
  *v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v48 = v46;
  v49 = [v48 countByEnumeratingWithState:v91 objects:&buf count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v92;
    do
    {
      for (k = 0; k != v50; k = k + 1)
      {
        if (*v92 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*&v91[8] + 8 * k);
        [v53 length];
        v54 = [NSMutableData dataWithLength:ccder_sizeof_raw_octet_string()];
        [v54 mutableBytes];
        [v54 length];
        [v53 length];
        [v53 bytes];
        ccder_encode_raw_octet_string();
        [v47 addObject:v54];
      }

      v50 = [v48 countByEnumeratingWithState:v91 objects:&buf count:16];
    }

    while (v50);
  }

  v87 = +[NSMutableArray array];
  v84 = +[NSMutableArray array];
  memset(v99, 0, sizeof(v99));
  v100 = 0u;
  v101 = 0u;
  v82 = v81;
  v55 = [v82 countByEnumeratingWithState:v99 objects:&buf count:16];
  if (v55)
  {
    v56 = v55;
    v57 = 0;
    v58 = **&v99[16];
LABEL_52:
    v59 = 0;
    while (1)
    {
      if (**&v99[16] != v58)
      {
        objc_enumerationMutation(v82);
      }

      v60 = *(*&v99[8] + 8 * v59);
      if (500 - v57 < [v60 length])
      {
        break;
      }

      [v87 addObject:v60];
      v57 += [v60 length];
      if (v56 == ++v59)
      {
        v56 = [v82 countByEnumeratingWithState:v99 objects:&buf count:16];
        if (v56)
        {
          goto LABEL_52;
        }

        break;
      }
    }
  }

  v61 = sub_100006274("piggy");
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    v62 = [v87 count];
    *v91 = 67109120;
    *&v91[4] = v62;
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "sending %d tlks", v91, 8u);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v63 = v47;
  v64 = [v63 countByEnumeratingWithState:&v95 objects:v91 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = 0;
    v67 = *v96;
LABEL_62:
    v68 = 0;
    while (1)
    {
      if (*v96 != v67)
      {
        objc_enumerationMutation(v63);
      }

      v69 = *(*(&v95 + 1) + 8 * v68);
      if (120 - v66 < [v69 length])
      {
        break;
      }

      [v84 addObject:v69];
      v66 += [v69 length];
      if (v65 == ++v68)
      {
        v65 = [v63 countByEnumeratingWithState:&v95 objects:v91 count:16];
        if (v65)
        {
          goto LABEL_62;
        }

        break;
      }
    }
  }

  v70 = sub_100006274("piggy");
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    v71 = [v84 count];
    LODWORD(result[0]) = 67109120;
    HIDWORD(result[0]) = v71;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "sending %d identities", result, 8u);
  }

  ccder_sizeof();
  ccder_sizeof();
  v72 = [NSMutableData dataWithLength:ccder_sizeof()];
  [v72 mutableBytes];
  [v72 length];
  sub_100212204(v87);
  sub_100212204(v84);
  v73 = ccder_encode_constructed_tl();
  if (v73 == [v72 mutableBytes])
  {
    v74 = v72;
  }

  else
  {
    v74 = 0;
  }

  *(*(*(v78 + 32) + 8) + 24) = v74;
  return *(*(*(v78 + 32) + 8) + 24) != 0;
}

uint64_t sub_1002532E0(uint64_t a1, int a2, CFTypeRef *a3)
{
  v6 = _OctagonSignpostLogSystem();
  v7 = _OctagonSignpostCreate();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SOSCCJoinWithCircleJoiningBlob", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCJoinWithCircleJoiningBlob  enableTelemetry=YES ", buf, 0xCu);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100253568;
  v17[3] = &unk_100346F38;
  v17[4] = a1;
  v18 = a2;
  v11 = sub_1002497A8(a3, v17);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67240192;
    LODWORD(v20) = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v7, "SOSCCJoinWithCircleJoiningBlob", " SOSSignpostNameSOSCCJoinWithCircleJoiningBlob=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCJoinWithCircleJoiningBlob}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v20 = v7;
    v21 = 2048;
    v22 = Nanoseconds / 1000000000.0;
    v23 = 1026;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCJoinWithCircleJoiningBlob  SOSSignpostNameSOSCCJoinWithCircleJoiningBlob=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCJoinWithCircleJoiningBlob}d ", buf, 0x1Cu);
  }

  return v11;
}

id sub_100253568(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  cf = 0;
  v6 = [v5 account];
  v7 = sub_1002088AC(v6, *(a1 + 32), *(a1 + 40), &cf);

  if (a3)
  {
    v8 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a3 = v8;
    }
  }

  v9 = [v5 account];
  v10 = [v9 trust];
  v11 = [v10 isInCircleOnly:0];

  if (cf)
  {
    v12 = [objc_opt_class() logger];
    v13 = cf;
    v32[0] = @"SOSEnabled";
    v14 = [OTSOSActualAdapter sosEnabled]_0();
    v15 = @"compat_disabled";
    if (v14)
    {
      v15 = @"compat_enabled";
    }

    v33[0] = v15;
    v33[1] = @"Piggybacking";
    v32[1] = @"SOSJoinMethod";
    v32[2] = @"JoiningSOSResult";
    v16 = @"not_in_circle";
    if (v11)
    {
      v16 = @"in_circle";
    }

    v33[2] = v16;
    v32[3] = @"CircleContainsLegacy";
    v17 = [v5 account];
    v18 = [v17 trust];
    [v18 trustedCircle];
    v19 = [v5 account];
    [v19 accountKey];
    IsLegacy = SOSCircleIsLegacy();
    v21 = @"does_not_contain_legacy";
    if (IsLegacy)
    {
      v21 = @"contains_legacy";
    }

    v33[3] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
    [v12 logResultForEvent:@"SOSDeferralEventPiggybacking" hardFailure:0 result:v13 withAttributes:v22];
  }

  else
  {
    if ([OTSOSActualAdapter sosEnabled]_0())
    {
      v23 = @"compat_enabled";
    }

    else
    {
      v23 = @"compat_disabled";
    }

    if (v11)
    {
      v24 = @"in_circle";
    }

    else
    {
      v24 = @"not_in_circle";
    }

    v25 = [v5 account];
    v26 = [v25 trust];
    [v26 trustedCircle];
    v27 = [v5 account];
    [v27 accountKey];
    v28 = SOSCircleIsLegacy();
    v29 = @"does_not_contain_legacy";
    if (v28)
    {
      v29 = @"contains_legacy";
    }

    v12 = [NSString stringWithFormat:@"%@-%@-%@-%@", v23, @"Piggybacking", v24, v29];

    v17 = [objc_opt_class() logger];
    [v17 logSuccessForEventNamed:v12];
  }

  return v7;
}

uint64_t sub_100253894(uint64_t a1, CFTypeRef *a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100253958;
  v4[3] = &unk_100346EF0;
  v4[4] = &v5;
  v4[5] = a1;
  sub_1002463E8(a2, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100253940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100253958(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = _OctagonSignpostLogSystem();
  v7 = _OctagonSignpostCreate();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v30 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SOSCCPeersHaveViewsEnabled", " enableTelemetry=YES ", v30, 2u);
  }

  v10 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 134217984;
    *&v30[4] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCPeersHaveViewsEnabled  enableTelemetry=YES ", v30, 0xCu);
  }

  v11 = [v5 account];

  v12 = *(a1 + 40);
  v13 = v11;
  if ([v13 isInCircle:a3])
  {
    Count = CFArrayGetCount(v12);
    if (Count >> 61)
    {
      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, 0);
    }

    else
    {
      v17 = Count;
      v18 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v34.location = 0;
      v34.length = v17;
      CFArrayGetValues(v12, v34, v18);
      v19 = CFGetAllocator(v12);
      v20 = CFSetCreate(v19, v18, v17, &kCFTypeSetCallBacks);
      free(v18);
      MutableCopy = CFSetCreateMutableCopy(kCFAllocatorDefault, 0, v20);
      if (v20)
      {
        CFRelease(v20);
      }
    }

    *v30 = _NSConcreteStackBlock;
    *&v30[8] = 3221225472;
    *&v30[16] = sub_10021AFFC;
    v31 = &unk_100345728;
    v32 = v13;
    v33 = MutableCopy;
    sub_10023C5F0(v32, v30);
    v21 = CFSetGetCount(MutableCopy);
    v22 = &kCFBooleanTrue;
    if (v21)
    {
      v22 = &kCFBooleanFalse;
    }

    v16 = *v22;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }

  else
  {
    v16 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v16;
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v24 = _OctagonSignpostLogSystem();
  v25 = v24;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    v26 = *(*(*(a1 + 32) + 8) + 24) != 0;
    *v30 = 67240192;
    *&v30[4] = v26;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, v7, "SOSCCPeersHaveViewsEnabled", " SOSSignpostNameSOSCCPeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCPeersHaveViewsEnabled}d ", v30, 8u);
  }

  v27 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(*(*(a1 + 32) + 8) + 24);
    *v30 = 134218496;
    *&v30[4] = v7;
    *&v30[12] = 2048;
    *&v30[14] = Nanoseconds / 1000000000.0;
    *&v30[22] = 1026;
    LODWORD(v31) = v28 != 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCPeersHaveViewsEnabled  SOSSignpostNameSOSCCPeersHaveViewsEnabled=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCPeersHaveViewsEnabled}d ", v30, 0x1Cu);
  }

  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_100253D48(uint64_t a1, CFTypeRef *a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCRegisterRecoveryPublicKey", " enableTelemetry=YES ", &buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCRegisterRecoveryPublicKey  enableTelemetry=YES ", &buf, 0xCu);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100254244;
  v26[3] = &unk_100346C18;
  v26[4] = a1;
  if ((sub_1002463E8(a2, v26) & 1) == 0)
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "register-recovery-public-key: Failed to register recovery key", &buf, 2u);
    }

    goto LABEL_34;
  }

  v9 = sub_100245E3C();
  if (!v9)
  {
    v21 = sub_100006274("SecError");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "register-recovery-public-key: Failed to get account object", &buf, 2u);
    }

    if (a2)
    {
      v9 = 0;
      v16 = 0;
      *a2 = CFErrorCreate(kCFAllocatorDefault, kSOSErrorDomain, 1048, 0);
      goto LABEL_35;
    }

    v9 = 0;
LABEL_34:
    v16 = 0;
    goto LABEL_35;
  }

  v10 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = sub_10024DF8C;
  v36 = sub_10024DF9C;
  v37 = 0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1002544FC;
  v23[3] = &unk_100346F60;
  p_buf = &buf;
  v11 = v10;
  v24 = v11;
  [v9 triggerRingUpdateNow:v23];
  v12 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v11, v12))
  {
    v13 = sub_100006274("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "timed out waiting for ring update", v27, 2u);
    }
  }

  v14 = *(*(&buf + 1) + 40);
  if (a2)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = v15;
  if (v15)
  {
    Nanoseconds = _OctagonSignpostGetNanoseconds();
    v18 = _OctagonSignpostLogSystem();
    v19 = v18;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *v27 = 67240192;
      LODWORD(v28) = 1;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCRegisterRecoveryPublicKey", " SOSSignpostNameSOSCCRegisterRecoveryPublicKey=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRegisterRecoveryPublicKey}d ", v27, 8u);
    }

    v20 = _OctagonSignpostLogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 134218496;
      v28 = v5;
      v29 = 2048;
      v30 = Nanoseconds / 1000000000.0;
      v31 = 1026;
      v32 = 1;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCRegisterRecoveryPublicKey  SOSSignpostNameSOSCCRegisterRecoveryPublicKey=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCRegisterRecoveryPublicKey}d ", v27, 0x1Cu);
    }
  }

  else
  {
    *a2 = v14;
  }

  _Block_object_dispose(&buf, 8);
LABEL_35:

  return v16;
}

void sub_100254218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100254244(uint64_t a1, void *a2, const void **a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (v6 && CFDataGetLength(v6))
  {
    v7 = *(a1 + 32);
    v8 = v5;
    v9 = [v8 account];
    v10 = sub_10022BCFC(v9, v7, a3);

    v11 = sub_100006274("recovery");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "successfully registered recovery public key", &v30, 2u);
      }

      v13 = [v8 account];

      v14 = 1;
      [v13 setPublicKeyStatus:1 forKey:2];

      if (a3)
      {
        v15 = *a3;
        if (*a3)
        {
          *a3 = 0;
          CFRelease(v15);
        }
      }
    }

    else
    {
      if (v12)
      {
        v27 = *a3;
        v30 = 138412290;
        v31 = v27;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "could not register recovery public key: %@", &v30, 0xCu);
      }

      v28 = [v8 account];

      [v28 setPublicKeyStatus:0 forKey:2];
      v14 = 0;
    }

    goto LABEL_24;
  }

  v16 = v5;
  v17 = [v16 account];
  v14 = sub_10022BCFC(v17, 0, a3);

  v18 = sub_100006274("recovery");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (v19)
    {
      LOWORD(v30) = 0;
      v20 = "RK Cleared";
      v21 = v18;
      v22 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &v30, v22);
    }
  }

  else if (v19)
  {
    v23 = *a3;
    v30 = 138412290;
    v31 = v23;
    v20 = "Couldn't clear RK(%@)";
    v21 = v18;
    v22 = 12;
    goto LABEL_14;
  }

  v24 = [v16 account];

  [v24 setPublicKeyStatus:0 forKey:2];
  v25 = v14 ^ 1;
  if (!a3)
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    v26 = *a3;
    if (*a3)
    {
      *a3 = 0;
      CFRelease(v26);
    }

    v14 = 1;
  }

LABEL_24:

  return v14;
}

void sub_1002544FC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = sub_100006274("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "trigger ring update error: %@", &v6, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_1002545E0(CFTypeRef *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCCopyRecoveryPublicKey", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCCopyRecoveryPublicKey  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002548D8;
  v15[3] = &unk_100346BB0;
  v15[4] = &v16;
  sub_1002463E8(a1, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = v17[3] != 0;
    *buf = 67240192;
    LODWORD(v21) = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCCopyRecoveryPublicKey", " SOSSignpostNameSOSCCCopyRecoveryPublicKey=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyRecoveryPublicKey}d ", buf, 8u);
  }

  v11 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v17[3];
    *buf = 134218496;
    v21 = v3;
    v22 = 2048;
    v23 = Nanoseconds / 1000000000.0;
    v24 = 1026;
    v25 = v12 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCCopyRecoveryPublicKey  SOSSignpostNameSOSCCCopyRecoveryPublicKey=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCCopyRecoveryPublicKey}d ", buf, 0x1Cu);
  }

  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

void sub_1002548A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1002548D8(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v5 = [a2 account];
  v6 = sub_10022BC48(kCFAllocatorDefault, v5, a3);

  if (!v6)
  {
    v9 = sub_100006274("recovery");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Could not retrieve the recovery public key from the ring: %@", &v12, 0xCu);
    }

    goto LABEL_10;
  }

  v7 = CFGetTypeID(v6);
  if (v7 != CFDataGetTypeID())
  {
    CFRelease(v6);
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (a3)
  {
    v8 = *a3;
    if (*a3)
    {
      *a3 = 0;
      CFRelease(v8);
    }
  }

LABEL_11:
  *(*(*(a1 + 32) + 8) + 24) = v6;
  return *(*(*(a1 + 32) + 8) + 24) != 0;
}

uint64_t sub_100254A2C(uint64_t a1, CFTypeRef *a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCMessageFromPeerIsPending", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCMessageFromPeerIsPending  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100254CA4;
  v15[3] = &unk_100346C18;
  v15[4] = a1;
  v9 = sub_1002463E8(a2, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v17) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCMessageFromPeerIsPending", " SOSSignpostNameSOSCCMessageFromPeerIsPending=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCMessageFromPeerIsPending}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCMessageFromPeerIsPending  SOSSignpostNameSOSCCMessageFromPeerIsPending=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCMessageFromPeerIsPending}d ", buf, 0x1Cu);
  }

  return v9;
}

uint64_t sub_100254CA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = [v6 SOSMonitorModeSOSIsActive];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 account];
    if (sub_100216084(v9, a3))
    {
      v10 = [v9 kvs_message_transport];
      v11 = [v9 peerID];
      SOSPeerInfoGetPeerID();
      v12 = SOSMessageKeyCreateFromPeerToTransport();

      HasPendingKey = SOSCloudKeychainHasPendingKey();
      if (v12)
      {
        CFRelease(v12);
      }
    }

    else
    {
      HasPendingKey = 0;
    }
  }

  else
  {
    HasPendingKey = 0;
  }

  return HasPendingKey;
}

uint64_t sub_100254D98(uint64_t a1, CFTypeRef *a2)
{
  v4 = _OctagonSignpostLogSystem();
  v5 = _OctagonSignpostCreate();

  v6 = _OctagonSignpostLogSystem();
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SOSCCSendToPeerIsPending", " enableTelemetry=YES ", buf, 2u);
  }

  v8 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCSendToPeerIsPending  enableTelemetry=YES ", buf, 0xCu);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100255010;
  v15[3] = &unk_100346C18;
  v15[4] = a1;
  v9 = sub_1002463E8(a2, v15);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v11 = _OctagonSignpostLogSystem();
  v12 = v11;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 67240192;
    LODWORD(v17) = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v5, "SOSCCSendToPeerIsPending", " SOSSignpostNameSOSCCSendToPeerIsPending=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCSendToPeerIsPending}d ", buf, 8u);
  }

  v13 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v17 = v5;
    v18 = 2048;
    v19 = Nanoseconds / 1000000000.0;
    v20 = 1026;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCSendToPeerIsPending  SOSSignpostNameSOSCCSendToPeerIsPending=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCSendToPeerIsPending}d ", buf, 0x1Cu);
  }

  return v9;
}

uint64_t sub_100255010(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 account];
  v7 = [v6 SOSMonitorModeSOSIsActive];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v5 account];
    if (sub_100216084(v9, a3))
    {
      SOSPeerInfoGetPeerID();
    }
  }

  return 0;
}

uint64_t sub_10025509C(int a1, CFTypeRef *a2)
{
  v4 = [objc_opt_class() logger];
  v5 = [v4 startLogSystemMetricsForActivityNamed:@"SOSDeferralActivitySetCompatibilityMode"];

  v6 = _OctagonSignpostLogSystem();
  v7 = _OctagonSignpostCreate();

  v8 = _OctagonSignpostLogSystem();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SOSCCSetCompatibilityMode", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCSetCompatibilityMode  enableTelemetry=YES ", buf, 0xCu);
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1002553C0;
  v20[3] = &unk_100346F80;
  v21 = a1;
  v11 = sub_1002463E8(a2, v20);
  Nanoseconds = _OctagonSignpostGetNanoseconds();
  v13 = _OctagonSignpostLogSystem();
  v14 = v13;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 67240192;
    LODWORD(v23) = v11;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_END, v7, "SOSCCSetCompatibilityMode", " SOSSignpostNameSOSCCSetCompatibilityMode=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCSetCompatibilityMode}d ", buf, 8u);
  }

  v15 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    v23 = v7;
    v24 = 2048;
    v25 = Nanoseconds / 1000000000.0;
    v26 = 1026;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCSetCompatibilityMode  SOSSignpostNameSOSCCSetCompatibilityMode=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCSetCompatibilityMode}d ", buf, 0x1Cu);
  }

  if (a2)
  {
    if (*a2)
    {
      a2 = *a2;
    }

    else
    {
      a2 = 0;
    }
  }

  [v5 stopWithEvent:@"SOSDeferralActivitySetCompatibilityMode" result:a2];
  v16 = [objc_opt_class() logger];
  v17 = v16;
  if (a1)
  {
    v18 = @"SOSDeferralEventCompatibilityModeEnabled";
  }

  else
  {
    v18 = @"SOSDeferralEventCompatibilityModeDisabled";
  }

  [v16 logSuccessForEventNamed:v18];

  return v11;
}

BOOL sub_1002553C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (qword_10039E118 != -1)
  {
    dispatch_once(&qword_10039E118, &stru_1003420D8);
  }

  if (byte_10039E110 == 1)
  {
    v6 = *(a1 + 32);
    v7 = [v5 account];
    [v7 setSosCompatibilityMode:v6];

    if (*(a1 + 32) == 1)
    {
      dword_10039E478 = 2;
      v8 = sub_100006274("sos-compatibility-mode");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Alerting SOS of account sign in", buf, 2u);
      }

      v9 = [v5 account];
      [v9 setAccountIsChanging:0];

      v10 = sub_10000869C(0);
      v11 = sub_100014CA8(v10);
      v12 = [v5 account];
      [v12 setFactory:v11];

      v13 = [v5 account];
      [v13 SOSMonitorModeEnableSOS];

      v14 = [v5 account];
      [v14 ensureFactoryCircles];

      v15 = [v5 account];
      [v15 setKey_interests_need_updating:1];

      v16 = [v5 account];
      [v16 setConsolidateKeyInterest:0];

      [v5 restart];
    }

    else
    {
      v18 = sub_100006274("sos-compatibility-mode");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Alerting SOS of account sign out", buf, 2u);
      }

      v38 = 0;
      v19 = [v5 account];
      v20 = [v19 trust];
      v21 = [v5 account];
      v22 = [v20 leaveCircle:v21 err:&v38];

      if (!v22 || v38)
      {
        v23 = sub_100006274("SecError");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v38;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "sos-compatibility-mode: failed to leave circle, error: %@", buf, 0xCu);
        }
      }

      [v5 restart];
      v24 = [v5 account];
      sub_100246DB4();

      v25 = [v5 account];
      sub_10020E5C0(v25);

      v26 = [v5 account];
      [v26 setAccountIsChanging:1];

      v27 = [v5 account];
      [v27 SOSMonitorModeDisableSOS];

      notify_post(kSOSCCSOSIsNowOFF);
      dword_10039E478 = 1;
    }

    v41[0] = kSecClass;
    v41[1] = kSecUseDataProtectionKeychain;
    v42[0] = kSecClassGenericPassword;
    v42[1] = &__kCFBooleanTrue;
    v41[2] = kSecAttrSynchronizable;
    v41[3] = kSecAttrAccessGroup;
    v42[2] = &__kCFBooleanFalse;
    v42[3] = @"com.apple.security.sos";
    v41[4] = kSecAttrAccount;
    v41[5] = kSecAttrAccessible;
    v42[4] = @"sos-compatibility-mode";
    v42[5] = kSecAttrAccessibleAfterFirstUnlock;
    v41[6] = kSecAttrSysBound;
    v42[6] = &off_100365230;
    v28 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:7];
    if (*(a1 + 32))
    {
      v29 = @"enabled";
    }

    else
    {
      v29 = @"disabled";
    }

    v30 = v29;
    v31 = [(__CFString *)v30 dataUsingEncoding:134217984];
    v39 = kSecValueData;
    v40 = v31;
    v32 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

    v33 = [v28 mutableCopy];
    [v33 addEntriesFromDictionary:v32];
    v34 = SecItemAdd(v33, 0);
    if (v34 == -25299)
    {
      v34 = SecItemUpdate(v28, v32);
    }

    v17 = v34 == 0;
    if (v34)
    {
      Error = SecCopyLastError();
      v36 = Error;
      if (a3)
      {
        if (Error)
        {
          CFRetain(Error);
        }

        *a3 = v36;
      }

      if (v36)
      {
        CFRelease(v36);
      }
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

BOOL sub_100255904()
{
  v0 = [OTSOSActualAdapter sosEnabled]_0();
  v1 = sub_100006274("sos-compatibility-mode-cached");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = @"disabled";
    if (v0)
    {
      v2 = @"enabled";
    }

    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cached SOS Compatibility Mode is %@", &v4, 0xCu);
  }

  return v0;
}

uint64_t sub_1002559D0(CFTypeRef *a1)
{
  v2 = _OctagonSignpostLogSystem();
  v3 = _OctagonSignpostCreate();

  v4 = _OctagonSignpostLogSystem();
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SOSCCFetchCompatibilityMode", " enableTelemetry=YES ", buf, 2u);
  }

  v7 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BEGIN [%lld]: SOSCCFetchCompatibilityMode  enableTelemetry=YES ", buf, 0xCu);
  }

  if (qword_10039E118 != -1)
  {
    dispatch_once(&qword_10039E118, &stru_1003420D8);
  }

  if (byte_10039E110 == 1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v29) = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100255EA8;
    v21[3] = &unk_100346BB0;
    v21[4] = buf;
    sub_1002463E8(a1, v21);
    if (*(*&buf[8] + 24) == 1)
    {
      v8 = sub_100006274("sos-compatibility-mode");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Device is in circle, SOS Compatibility Mode is enabled", v22, 2u);
      }

      Nanoseconds = _OctagonSignpostGetNanoseconds();
      v10 = _OctagonSignpostLogSystem();
      v11 = v10;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *v22 = 67240192;
        LODWORD(v23) = 1;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCFetchCompatibilityMode", " SOSSignpostNameSOSCCFetchCompatibilityMode=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCFetchCompatibilityMode}d ", v22, 8u);
      }

      v12 = _OctagonSignpostLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 134218496;
        v23 = v3;
        v24 = 2048;
        v25 = Nanoseconds / 1000000000.0;
        v26 = 1026;
        v27 = 1;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCFetchCompatibilityMode  SOSSignpostNameSOSCCFetchCompatibilityMode=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCFetchCompatibilityMode}d ", v22, 0x1Cu);
      }

      _Block_object_dispose(buf, 8);
      return 1;
    }

    _Block_object_dispose(buf, 8);
  }

  v13 = [OTSOSActualAdapter sosEnabled]_0();
  v14 = sub_100006274("sos-compatibility-mode");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"disabled";
    if (v13)
    {
      v15 = @"enabled";
    }

    *buf = 138412290;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "SOS Compatibility Mode is %@", buf, 0xCu);
  }

  v16 = _OctagonSignpostGetNanoseconds();
  v17 = _OctagonSignpostLogSystem();
  v18 = v17;
  if (v6 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v17))
  {
    *buf = 67240192;
    *&buf[4] = v13;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, v3, "SOSCCFetchCompatibilityMode", " SOSSignpostNameSOSCCFetchCompatibilityMode=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCFetchCompatibilityMode}d ", buf, 8u);
  }

  v19 = _OctagonSignpostLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = v3;
    *&buf[12] = 2048;
    *&buf[14] = v16 / 1000000000.0;
    *&buf[22] = 1026;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: SOSCCFetchCompatibilityMode  SOSSignpostNameSOSCCFetchCompatibilityMode=%{public,signpost.telemetry:number1,name=SOSSignpostNameSOSCCFetchCompatibilityMode}d ", buf, 0x1Cu);
  }

  return v13;
}

void sub_100255E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100255EA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  v5 = [v4 getCircleStatus:0];

  if (!v5 && dword_10039E478 != 2)
  {
    dword_10039E478 = 2;
    v6 = [v3 account];
    [v6 setSosCompatibilityMode:1];

    v7 = [v3 account];
    [v7 setAccountIsChanging:0];

    v8 = sub_10000869C(0);
    v9 = sub_100014CA8(v8);
    v10 = [v3 account];
    [v10 setFactory:v9];

    v11 = [v3 account];
    [v11 SOSMonitorModeEnableSOS];

    v12 = [v3 account];
    [v12 ensureFactoryCircles];

    v13 = [v3 account];
    [v13 setKey_interests_need_updating:1];

    v14 = [v3 account];
    [v14 setConsolidateKeyInterest:0];

    [v3 restart];
    v15 = [objc_opt_class() logger];
    [v15 logSuccessForEventNamed:@"SOSDeferralEventCompatibilityModeEnabled"];

LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    goto LABEL_6;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_6:
  v16 = v5 == 0;
  v17 = [v3 account];
  [v17 setSosCompatibilityMode:v16];

  return 1;
}

void sub_100256058(void *a1)
{
  v3 = 0;
  sub_1002497A8(&v3, &stru_100346FA0);
  if (v3)
  {
    v2 = sub_100006274("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SOSCCPushResetCircle_Server: error writing reset circle to kvs: %@", buf, 0xCu);
    }

    if (a1)
    {
      *a1 = v3;
    }
  }
}

BOOL sub_100256130(id a1, SOSAccountTransaction *a2, __CFError **a3)
{
  v3 = [(SOSAccountTransaction *)a2 account];
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 trust];

  [v5 trustedCircle];
  SOSCircleGetName();

  v6 = SOSCircleKeyCreateWithName();
  if (v6)
  {
    v7 = SOSCircleCreate();
    if (v7)
    {
      v10 = SOSCircleCopyEncodedData();
      CFRelease(v7);
      [v4 setObject:v10 forKeyedSubscript:v6];

      v11 = dispatch_semaphore_create(0);
      v12 = dispatch_time(0, 30000000000);
      v13 = dispatch_get_global_queue(-2, 0);
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v18 = sub_100210A84;
      v19 = &unk_1003465E8;
      v20 = v11;
      v14 = v11;
      v15 = objc_retainBlock(&buf);
      SOSCloudKeychainPutObjectsInCloud();
      dispatch_semaphore_wait(v14, v12);
    }

    else
    {
      v8 = sub_100006274("SecError");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SOSAccountWriteEmptyCircleToKVS failed to create circle key: %@", &buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = sub_100006274("SecError");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "SOSAccountWriteEmptyCircleToKVS failed to create circle key: %@", &buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10025642C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  v5 = [v4 SOSMonitorModeSOSIsActive];

  if (v5)
  {
    v6 = [v3 account];
    v7 = *(a1 + 32);
    v8 = v6;
    v9 = sub_100006274("otrtimer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "timer fired!", v18, 2u);
    }

    cf = 0;
    v10 = [v8 factory];
    v11 = [v8 trust];
    [v11 trustedCircle];
    Name = SOSCircleGetName();
    if (v10)
    {
      v13 = v10[1](v10, Name, 0);
      if (v13)
      {
        v10 = *v13;
        (*(v13 + 72))(v13, 0);
      }

      else
      {
        v10 = 0;
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100212568;
    v18[3] = &unk_100345298;
    v20 = v10;
    v14 = v8;
    v19 = v14;
    sub_10014811C(v10, v7, &cf, v18);
    if (cf)
    {
      v15 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v23 = v7;
        v24 = 2112;
        v25 = cf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "error grabbing engine for peer id: %@, error:%@", buf, 0x16u);
      }

      v16 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v16);
      }
    }
  }

  return 1;
}

uint64_t sub_100256678(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  v5 = [v4 SOSMonitorModeSOSIsActive];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = v3;
    v9 = v6;
    v10 = v7;
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_1002091D8;
    v28 = sub_1002091E8;
    v29 = [v8 account];
    cf = 0;
    v11 = [v8 account];
    v12 = [v11 factory];
    v13 = [v25[5] trust];
    [v13 trustedCircle];
    Name = SOSCircleGetName();
    if (v12)
    {
      v15 = v12[1](v12, Name, 0);
      if (v15)
      {
        v12 = *v15;
        (*(v15 + 72))(v15, 0);
      }

      else
      {
        v12 = 0;
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100212AB0;
    v20[3] = &unk_1003452C0;
    v16 = v10;
    v21 = v16;
    v22 = &v24;
    sub_10014811C(v12, v9, &cf, v20);
    if (cf)
    {
      v17 = sub_100006274("otrtimer");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v9;
        v32 = 2112;
        v33 = cf;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "error grabbing engine for peer id: %@, error:%@", buf, 0x16u);
      }

      v18 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v18);
      }
    }

    _Block_object_dispose(&v24, 8);
  }

  return 1;
}

void sub_1002568FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100256920(uint64_t a1, void *a2, const void **a3)
{
  if (a3)
  {
    v4 = *a3;
  }

  else
  {
    v4 = 0;
  }

  cf = v4;
  v5 = [a2 account];
  v6 = [v5 trust];
  v7 = [v6 fullPeerInfo];

  if (v7)
  {
    v8 = SOSFullPeerInfoCopyOctagonSigningKey();
    if (!v8 || cf)
    {
      v12 = sub_100006274("SecError");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = cf;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SOSCCPerformWithAllOctagonKeys signing key error: %@", buf, 0xCu);
      }
    }

    else
    {
      v9 = SOSFullPeerInfoCopyOctagonEncryptionKey();
      if (v9)
      {
        (*(*(a1 + 32) + 16))();
        CFRelease(v8);
        CFRelease(v9);
        return 1;
      }

      v13 = sub_100006274("SecError");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SOSCCPerformWithAllOctagonKeys encryption key error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = sub_100006274("SecError");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "device does not have a peer", buf, 2u);
    }

    SOSCreateError();
    v8 = 0;
  }

  (*(*(a1 + 32) + 16))();
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return 1;
}

void sub_100256BAC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a1;
  PrivateAttributeDictionary = SecKeyGeneratePrivateAttributeDictionary();
  v7 = [PrivateAttributeDictionary mutableCopy];

  [v7 setObject:v5 forKeyedSubscript:kSecAttrLabel];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecUseDataProtectionKeychain];
  [v7 setObject:kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];
  [v7 setObject:kSOSInternalAccessGroup forKeyedSubscript:kSecAttrAccessGroup];
  result = 0;
  v8 = SecItemAdd(v7, &result);
  if (v8)
  {
    if (v8 == -25299)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      v10 = [v7 objectForKeyedSubscript:kSecClass];
      [v9 setObject:v10 forKeyedSubscript:kSecClass];

      v11 = [v7 objectForKeyedSubscript:kSecAttrKeyTypeEC];
      [v9 setObject:v11 forKeyedSubscript:kSecAttrKeyType];

      v12 = [v7 objectForKeyedSubscript:kSecAttrKeyClassPrivate];
      [v9 setObject:v12 forKeyedSubscript:kSecAttrKeyClass];

      v13 = [v7 objectForKeyedSubscript:kSecAttrAccessGroup];
      [v9 setObject:v13 forKeyedSubscript:kSecAttrAccessGroup];

      v14 = [v7 objectForKeyedSubscript:kSecAttrLabel];
      [v9 setObject:v14 forKeyedSubscript:kSecAttrLabel];

      v15 = [v7 objectForKeyedSubscript:kSecAttrApplicationLabel];
      [v9 setObject:v15 forKeyedSubscript:kSecAttrApplicationLabel];

      v16 = [v7 objectForKeyedSubscript:kSecUseDataProtectionKeychain];
      [v9 setObject:v16 forKeyedSubscript:kSecUseDataProtectionKeychain];

      v17 = [v7 mutableCopy];
      [v17 setObject:0 forKeyedSubscript:kSecClass];
      v18 = SecItemUpdate(v9, v17);
      if (v18)
      {
        v19 = v18;
        v20 = [NSString stringWithFormat:@"SecItemUpdate: %d", v18];
        v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v19 description:v20];
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v22 = v8;
      v9 = [NSString stringWithFormat:@"SecItemAdd: %d", v8];
      v21 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v22 description:v9];
    }

    if (a4 && v21)
    {
      v23 = v21;
      *a4 = v21;
    }
  }

  else
  {
    v21 = 0;
  }
}

void sub_100256F40(uint64_t a1, void *a2)
{
  v3 = @"sync";
  v4 = a2;
  v5 = SecKeyCopyPublicKeyHash();
  v17[0] = kSecClass;
  v17[1] = kSecAttrSynchronizable;
  v18[0] = kSecClassKey;
  v18[1] = kSecAttrSynchronizableAny;
  v17[2] = kSecAttrApplicationLabel;
  v17[3] = kSecAttrAccessGroup;
  v18[2] = v5;
  v18[3] = @"sync";
  v6 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  v15 = kSecAttrAccessGroup;
  v16 = v4;
  v7 = SecItemUpdate(v6, [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1]);
  v8 = sub_100006274("octagon");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = @"sync";
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Ensuring key agrp ('%@' from '%@') status: %d", &v9, 0x1Cu);
  }
}

uint64_t sub_1002570F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0;
  v4 = [v3 account];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v9 = *(a1 + 32);
  v13 = *(a1 + 48);
  v10[2] = sub_1002571EC;
  v10[3] = &unk_100346FF0;
  v11 = v3;
  v14 = *(a1 + 64);
  v5 = v9;
  v12 = v9;
  v15 = *(a1 + 72);
  v6 = v3;
  v7 = sub_10021A5E8(v4, @"Updating Octagon Keys in SOS", &v16, v10);

  return v7;
}

uint64_t sub_1002571EC(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) account];
  v5 = sub_10025751C(v4, *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72));

  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon: failed to save Octagon keys to the keychain: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (!a2)
  {
    v11 = sub_100006274("octagon");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No peer info to update?", buf, 2u);
    }

    v12 = kSOSErrorDomain;
    v20 = NSLocalizedDescriptionKey;
    v21 = @"Device has no full peer info";
    v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [NSError errorWithDomain:v12 code:1032 userInfo:v13];

    (*(*(a1 + 40) + 16))();
    goto LABEL_5;
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  SOSPeerInfoSetOctagonKeysInDescription();
  v15 = *(a1 + 80);
  if (v15)
  {
    CFRetain(*(a1 + 80));
  }

  v16 = [*(a1 + 32) account];
  [v16 setOctagonSigningFullKeyRef:v15];

  v17 = *(a1 + 88);
  if (v17)
  {
    CFRetain(*(a1 + 88));
  }

  v18 = [*(a1 + 32) account];
  [v18 setOctagonEncryptionFullKeyRef:v17];

  v19 = sub_100006274("octagon");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Success! Updated Octagon keys in SOS!", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = 1;
LABEL_6:

  return v7;
}

id sub_10025751C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = [v11 trust];
  [v12 trustedCircle];
  v13 = SOSCircleGetName();

  v14 = [v11 gestalt];
  v15 = sub_100257740(v14, v13, @"Octagon Peer Signing ");

  v16 = [v11 gestalt];

  v17 = sub_100257740(v16, v13, @"Octagon Peer Encryption ");

  v24 = 0;
  sub_100256BAC(v15, v10, a4, &v24);

  v18 = v24;
  if (v18)
  {
    v19 = v18;
    v20 = sub_100006274("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      v21 = "octagon: could not save signing key: %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    }
  }

  else
  {
    v23 = 0;
    sub_100256BAC(v17, v9, a5, &v23);
    v19 = v23;
    if (!v19)
    {
      goto LABEL_9;
    }

    v20 = sub_100006274("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v19;
      v21 = "octagon: could not save encryption key: %@";
      goto LABEL_7;
    }
  }

LABEL_9:

  return v19;
}

id sub_100257740(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [NSString stringWithFormat:@"ID for %@-%@", SOSPeerGestaltGetName(), v5];

  v7 = [v4 stringByAppendingString:v6];

  return v7;
}

uint64_t sub_1002577E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 account];
  v5 = sub_10025751C(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));

  if (v5)
  {
    v6 = sub_100006274("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "octagon-preload-keys: failed to save Octagon keys to the keychain: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
LABEL_5:
    v7 = 0;
    goto LABEL_14;
  }

  v8 = [v3 account];

  if (!v8)
  {
    v15 = sub_100006274("octagon-preload-keys");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No SOSAccount to update?", buf, 2u);
    }

    v16 = kSOSErrorDomain;
    v19 = NSLocalizedDescriptionKey;
    v20 = @"Device has no SOSAccount";
    v17 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18 = [NSError errorWithDomain:v16 code:1048 userInfo:v17];

    (*(*(a1 + 32) + 16))();
    goto LABEL_5;
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    CFRetain(*(a1 + 72));
  }

  v10 = [v3 account];
  [v10 setOctagonSigningFullKeyRef:v9];

  v11 = *(a1 + 80);
  if (v11)
  {
    CFRetain(*(a1 + 80));
  }

  v12 = [v3 account];
  [v12 setOctagonEncryptionFullKeyRef:v11];

  v13 = sub_100006274("octagon-preload-keys");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Success! Octagon Keys Preloaded!", buf, 2u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = 1;
LABEL_14:

  return v7;
}

uint64_t sub_100257AA0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 account];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100257B4C;
  v7[3] = &unk_100347038;
  v8 = *(a1 + 32);
  sub_10021A3A8(v5, @"CKKS4All update", a3, v7);

  return 1;
}

uint64_t sub_100257B5C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = [a2 account];
  v6 = [v5 trust];
  v7 = [v6 copyPeerSetMatching:&stru_100347078];

  if (a3)
  {
    v8 = *a3;
  }

  (*(*(a1 + 32) + 16))();
  if (v7)
  {
    CFRelease(v7);
  }

  return 1;
}

uint64_t sub_100257F8C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100258024;
  block[3] = &unk_1003474E0;
  block[4] = &qword_10039E4C0;
  if (qword_10039E4B8 != -1)
  {
    dispatch_once(&qword_10039E4B8, block);
  }

  return qword_10039E4C0;
}

uint64_t sub_100258024(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

__CFString *sub_100258058(uint64_t a1)
{
  v2 = sub_100017B30();

  return sub_100258094(a1, v2);
}

__CFString *sub_100258094(uint64_t a1, const __CFDictionary *a2)
{
  sub_10025844C(a1);
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFSetGetTypeID()))
  {
    v5 = 0;
  }

  v7 = sub_10025871C(v5);
  sub_10025844C(a1);
  v8 = CFDictionaryGetValue(*(a1 + 16), @"Applicants");
  v9 = sub_10025871C(v8);
  sub_10025844C(a1);
  v10 = CFDictionaryGetValue(*(a1 + 16), @"Rejections");
  v11 = sub_10025871C(v10);
  v19 = sub_10025882C(v11, v12, v13, v14, v15, v16, v17, v18, @"MEMBER", v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2000000000;
  v35 = 0;
  Mutable = CFStringCreateMutable(0, 0);
  v21 = *(a1 + 32);
  context[0] = _NSConcreteStackBlock;
  context[1] = 0x40000000;
  context[2] = sub_100258648;
  context[3] = &unk_100347550;
  context[4] = v34;
  context[5] = Mutable;
  CFDictionaryApplyFunction(v21, sub_100258700, context);
  _Block_object_dispose(v34, 8);
  CFDictionaryGetValue(*(a1 + 24), @"Generation");
  v22 = SOSGenerationCountCopyDescription();
  v23 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v24 = sub_1002585C4(*(a1 + 24));
  CFStringAppendFormat(v23, a2, @"<SOSRing: '%@'", v24);
  CFDictionaryGetValue(*(a1 + 24), @"Generation");
  SOSGenerationCountWithDescription();
  v25 = CFDictionaryGetValue(*(a1 + 16), @"LastModifier");
  if (v25)
  {
    v26 = v25;
    if (CFStringGetLength(v25) > 8)
    {
      v36.location = 0;
      v36.length = 8;
      Copy = CFStringCreateWithSubstring(kCFAllocatorDefault, v26, v36);
    }

    else
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, v26);
    }

    v28 = Copy;
    CFStringAppendFormat(v23, a2, @"Mod: %@, ", Copy);
    if (v28)
    {
      CFRelease(v28);
    }
  }

  else
  {
    CFStringAppendFormat(v23, a2, @"Mod: %@, ", 0);
  }

  v29 = CFDictionaryGetValue(v19, @"MEMBER");
  CFStringAppendFormat(v23, a2, @"P: [%@], ", v29);
  v30 = CFDictionaryGetValue(v19, @"APPLICANTS");
  CFStringAppendFormat(v23, a2, @"A: [%@], ", v30);
  v31 = CFDictionaryGetValue(v19, @"REJECTS");
  CFStringAppendFormat(v23, a2, @"R: [%@], ", v31);
  CFStringAppendFormat(v23, a2, @"S: [%@]>", Mutable);
  if (v22)
  {
    CFRelease(v22);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v23;
}

BOOL sub_10025844C(void *a1)
{
  if (!a1)
  {
    v2 = sub_100006274("SecError");
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v3 = "no ring passed in";
    v4 = &v9;
    goto LABEL_18;
  }

  if (!a1[2])
  {
    v2 = sub_100006274("SecError");
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v8 = 0;
    v3 = "ring has no unSignedInformation";
    v4 = &v8;
    goto LABEL_18;
  }

  if (!a1[3])
  {
    v2 = sub_100006274("SecError");
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v3 = "ring has no signedInformation";
    v4 = &v7;
    goto LABEL_18;
  }

  if (!a1[4])
  {
    v2 = sub_100006274("SecError");
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v6 = 0;
    v3 = "ring has no signatures";
    v4 = &v6;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, v4, 2u);
    return 0;
  }

  if (a1[5])
  {
    return 1;
  }

  v2 = sub_100006274("SecError");
  result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v5 = 0;
    v3 = "ring has no data";
    v4 = &v5;
    goto LABEL_18;
  }

  return result;
}

const void *sub_1002585C4(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"RingName");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFStringGetTypeID())
  {
    return 0;
  }

  return v2;
}

void sub_100258648(uint64_t a1, CFStringRef theString)
{
  v2 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString) > 8)
    {
      v5.location = 0;
      v5.length = 8;
      Copy = CFStringCreateWithSubstring(kCFAllocatorDefault, v2, v5);
    }

    else
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, v2);
    }

    v2 = Copy;
  }

  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    CFStringAppendCString(*(a1 + 40), ", ", 0x8000100u);
  }

  CFStringAppend(*(a1 + 40), v2);
  if (v2)
  {
    CFRelease(v2);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

CFMutableStringRef sub_10025871C(const __CFSet *a1)
{
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  v3 = Mutable;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = 0;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10025891C;
    v5[3] = &unk_100347578;
    v5[4] = v6;
    v5[5] = Mutable;
    context[0] = _NSConcreteStackBlock;
    context[1] = 0x40000000;
    context[2] = sub_1002589E4;
    context[3] = &unk_1003475A0;
    context[4] = v5;
    CFSetApplyFunction(a1, sub_1002589F4, context);
  }

  _Block_object_dispose(v6, 8);
  return v3;
}

CFDictionaryRef sub_10025882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = &a10;
  v10 = 0;
  if (a9)
  {
    do
    {
      v10 += 2;
      v11 = v21;
      v21 += 2;
    }

    while (v11[1]);
  }

  v12 = v10 >> 1;
  v22 = &a9;
  Mutable = CFDictionaryCreateMutable(0, v10 >> 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v14 = Mutable;
  if (v10)
  {
    do
    {
      v15 = v22;
      v16 = *v22;
      v22 += 2;
      v17 = v15[1];
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = kCFNull;
      }

      CFDictionarySetValue(v14, v16, v18);
      --v12;
    }

    while (v12);
  }

  Copy = CFDictionaryCreateCopy(0, v14);
  CFRelease(v14);
  return Copy;
}

void sub_10025891C(uint64_t a1, CFStringRef theString)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    CFStringAppendCString(*(a1 + 40), ", ", 0x8000100u);
  }

  if (theString)
  {
    if (CFStringGetLength(theString) > 8)
    {
      v6.location = 0;
      v6.length = 8;
      Copy = CFStringCreateWithSubstring(kCFAllocatorDefault, theString, v6);
    }

    else
    {
      Copy = CFStringCreateCopy(kCFAllocatorDefault, theString);
    }

    v5 = Copy;
    CFStringAppend(*(a1 + 40), Copy);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    CFStringAppend(*(a1 + 40), 0);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t sub_100258A0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = CFGetTypeID(a1);
  if (v4 != sub_100257F8C())
  {
    return 0;
  }

  v5 = CFGetTypeID(a2);
  if (v5 != sub_100257F8C())
  {
    return 0;
  }

  v6 = CFGetTypeID(v3);
  if (v6 == sub_100257F8C())
  {
    sub_10025844C(v3);
  }

  else
  {
    v3 = 0;
  }

  v7 = CFGetTypeID(a2);
  if (v7 != sub_100257F8C())
  {
    return 0;
  }

  sub_10025844C(a2);
  result = 0;
  if (!a2 || !v3)
  {
    return result;
  }

  v9 = v3[2];
  v10 = a2[2];
  if (v9 && v10)
  {
    result = CFEqual(v9, v10);
    if (!result)
    {
      return result;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  v11 = v3[3];
  v12 = a2[3];
  if (v11 && v12)
  {
    result = CFEqual(v11, v12);
    if (!result)
    {
      return result;
    }
  }

  else if (v11 != v12)
  {
    return 0;
  }

  v13 = v3[5];
  v14 = a2[5];
  if (v13 && v14)
  {
    result = CFEqual(v13, v14);
    if (!result)
    {
      return result;
    }

    goto LABEL_26;
  }

  if (v13 != v14)
  {
    return 0;
  }

LABEL_26:
  v15 = v3[4];
  v16 = a2[4];
  if (v15 && v16)
  {
    return CFEqual(v15, v16) != 0;
  }

  else
  {
    return v15 == v16;
  }
}

void sub_100258B54(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    a1[5] = 0;
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[4] = 0;

    CFRelease(v5);
  }
}

uint64_t sub_100258BCC(void *a1)
{
  v2 = 64429;
  valuePtr = 64429;
  if (sub_10025844C(a1))
  {
    v3 = a1[3];
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"RingType");
      if (Value)
      {
        v5 = Value;
        v6 = CFGetTypeID(Value);
        if (v6 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr);
          return valuePtr;
        }

        else
        {
          return 64429;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_100258C54(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"Generation");
  v4 = CFDictionaryGetValue(*(a2 + 24), @"Generation");

  return _SOSGenerationIsOlder(Value, v4);
}

BOOL sub_100258CB4(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"Applicants");
  return CFSetContainsValue(Value, a2) != 0;
}

BOOL sub_100258D04(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"Rejections");
  return CFSetContainsValue(Value, a2) != 0;
}

void sub_100258D54(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"Rejections");

  CFSetRemoveValue(Value, a2);
}

const void *sub_100258DA0(uint64_t a1)
{
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"BackupViews");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != CFSetGetTypeID())
  {
    return 0;
  }

  return v3;
}

BOOL sub_100258DF8(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  if (a2)
  {
    CFDictionarySetValue(*(a1 + 24), @"BackupViews", a2);
  }

  return a2 != 0;
}

BOOL sub_100258E40(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  if (a2)
  {
    CFDictionarySetValue(*(a1 + 24), @"PeerIDs", a2);
  }

  return a2 != 0;
}

BOOL sub_100258E88(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFSetGetTypeID()))
  {
    v5 = 0;
  }

  return CFSetContainsValue(v5, a2) != 0;
}

CFMutableSetRef sub_100258F04(uint64_t a1)
{
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (!Value || (v3 = Value, v4 = CFGetTypeID(Value), v4 != CFSetGetTypeID()))
  {
    v3 = 0;
  }

  return CFSetCreateMutableCopy(0, 0, v3);
}

void sub_100258F74(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    PeerID = cf;
    v4 = CFGetTypeID(cf);
    if (v4 != SOSPeerInfoGetTypeID() || (PeerID = SOSPeerInfoGetPeerID()) != 0)
    {
      v5 = CFGetTypeID(PeerID);
      if (v5 == CFStringGetTypeID())
      {
        v6 = *(a1 + 32);

        sub_10025900C(v6, PeerID);
      }
    }
  }
}

void sub_10025900C(uint64_t a1, const void *a2)
{
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (!Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFSetGetTypeID()))
  {
    v5 = 0;
  }

  CFSetAddValue(v5, a2);
}

void sub_100259084(uint64_t a1, uint64_t a2)
{
  sub_10025844C(a1);
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFSetGetTypeID())
    {
      context[0] = _NSConcreteStackBlock;
      context[1] = 0x40000000;
      context[2] = sub_100259154;
      context[3] = &unk_100347528;
      context[4] = a2;
      CFSetApplyFunction(v5, sub_1002589F4, context);
    }
  }
}

uint64_t sub_100259164(const void *a1, int a2)
{
  sub_100257F8C();
  Instance = _CFRuntimeCreateInstance();
  v5 = SOSGenerationCreate();
  if (!a1)
  {
    SOSCreateError();
    if (v5)
    {
LABEL_26:
      CFRelease(v5);
    }

LABEL_27:
    v20 = 0;
    result = 0;
    v19 = Instance;
    if (!Instance)
    {
      return result;
    }

    goto LABEL_28;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(Instance + 16) = Mutable;
  if (!Mutable)
  {
    goto LABEL_17;
  }

  v7 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(Instance + 24) = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(Instance + 32) = v8;
  if (!v8 || (v9 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (*(Instance + 40) = v9) == 0) || (CFDictionarySetValue(*(Instance + 24), @"RingName", a1), valuePtr = a2, sub_10025844C(Instance), (v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr)) == 0))
  {
LABEL_17:
    SOSCreateError();
    v22 = *(Instance + 16);
    if (v22)
    {
      *(Instance + 16) = 0;
      CFRelease(v22);
    }

    v23 = *(Instance + 24);
    if (v23)
    {
      *(Instance + 24) = 0;
      CFRelease(v23);
    }

    v24 = *(Instance + 32);
    if (v24)
    {
      *(Instance + 32) = 0;
      CFRelease(v24);
    }

    v25 = *(Instance + 40);
    if (v25)
    {
      *(Instance + 40) = 0;
      CFRelease(v25);
    }

    if (v5)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v11 = v10;
  CFDictionarySetValue(*(Instance + 24), @"RingType", v10);
  CFRelease(v11);
  v30 = 1;
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v30);
  if (!v12)
  {
    v26 = sub_100006274("ring");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Could not create version number", buf, 2u);
    }

    goto LABEL_17;
  }

  v13 = v12;
  CFDictionarySetValue(*(Instance + 24), @"RingVersion", v12);
  CFRelease(v13);
  v14 = CFUUIDCreate(0);
  if (!v14)
  {
    v27 = sub_100006274("ring");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Could not create ring identifier", v31, 2u);
    }

    goto LABEL_17;
  }

  v15 = v14;
  v16 = CFUUIDCreateString(0, v14);
  CFDictionarySetValue(*(Instance + 24), @"Identifier", v16);
  CFRelease(v15);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  sub_10025844C(Instance);
  if (!v17)
  {
    goto LABEL_17;
  }

  CFDictionarySetValue(*(Instance + 16), @"Applicants", v17);
  CFRelease(v17);
  v18 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  sub_10025844C(Instance);
  if (!v18)
  {
    goto LABEL_17;
  }

  CFDictionarySetValue(*(Instance + 16), @"Rejections", v18);
  CFRelease(v18);
  if (!v5)
  {
    goto LABEL_17;
  }

  CFDictionarySetValue(*(Instance + 24), @"Generation", v5);
  v19 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
  if (!sub_100258E40(Instance, v19))
  {
    goto LABEL_17;
  }

  CFRelease(v5);
  v20 = Instance;
  result = Instance;
  if (!v19)
  {
    return result;
  }

LABEL_28:
  CFRelease(v19);
  return v20;
}

BOOL sub_1002595AC(uint64_t a1)
{
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (!Value || (v3 = Value, v4 = CFGetTypeID(Value), v4 != CFSetGetTypeID()))
  {
    v3 = 0;
  }

  return CFSetGetCount(v3) == 0;
}

void sub_100259610(uint64_t a1)
{
  sub_10025844C(a1);
  Value = CFDictionaryGetValue(*(a1 + 16), @"Applicants");
  CFSetRemoveAllValues(Value);
  sub_10025844C(a1);
  v3 = CFDictionaryGetValue(*(a1 + 16), @"Rejections");
  CFSetRemoveAllValues(v3);
  sub_10025844C(a1);
  v4 = CFDictionaryGetValue(*(a1 + 24), @"PeerIDs");
  if (!v4 || (v5 = v4, v6 = CFGetTypeID(v4), v6 != CFSetGetTypeID()))
  {
    v5 = 0;
  }

  CFSetRemoveAllValues(v5);
  CFDictionaryRemoveAllValues(*(a1 + 32));
  v7 = SOSGenerationCreate();
  if (v7)
  {
    v8 = v7;
    CFDictionarySetValue(*(a1 + 24), @"Generation", v7);

    CFRelease(v8);
  }
}

BOOL sub_1002596F8(uint64_t a1)
{
  v2 = SOSCopyIDOfKey();
  v3 = v2;
  if (a1 && v2)
  {
    Value = CFDictionaryGetValue(*(a1 + 32), v2);
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      v6 = v5 == CFDataGetTypeID();
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_8;
  }

  v6 = 0;
  result = 0;
  if (v3)
  {
LABEL_8:
    CFRelease(v3);
    return v6;
  }

  return result;
}

BOOL sub_100259778(uint64_t a1, __SecKey *a2, CFTypeRef *a3)
{
  v6 = SOSCopyIDOfKey();
  v7 = v6;
  if (a1 && v6)
  {
    Value = CFDictionaryGetValue(*(a1 + 32), v6);
    if (Value && (v9 = Value, v10 = CFGetTypeID(Value), v10 == CFDataGetTypeID()))
    {
      CFRelease(v7);
      v11 = ccsha256_di();
      v7 = sub_10025987C(v11, a1, a3);
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v7);
      v14 = CFDataGetBytePtr(v9);
      v15 = CFDataGetLength(v9);
      v16 = SecKeyRawVerify(a2, 0, BytePtr, Length, v14, v15) == 0;
      if (!v7)
      {
        return v16;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    if (!v6)
    {
      return v16;
    }
  }

  CFRelease(v7);
  return v16;
}

CFDataRef sub_10025987C(CFIndex *a1, uint64_t a2, CFTypeRef *a3)
{
  v6 = *a1;
  __chkstk_darwin();
  v10 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    memset(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v7);
  }

  result = sub_10000E384(*(a2 + 24), a3, v7, v8, v9);
  if (result)
  {
    v12 = result;
    result = malloc_type_malloc(result, 0x351911FCuLL);
    if (result)
    {
      v13 = result;
      if (sub_10000E614(*(a2 + 24), a3, 0, v13, v12 + v13))
      {
        ccdigest();
        free(v13);
        return CFDataCreate(0, v10, *a1);
      }

      else
      {
        free(v13);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002599A4(uint64_t a1, __SecKey *a2, CFTypeRef *a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    CFDictionaryGetValue(*(a1 + 24), @"Generation");
    v8 = SOSGenerationIncrementAndCreate();
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(*(a1 + 24), @"Generation", v8);
      CFRelease(v9);
    }

    v10 = sub_100006274("Development");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SOSRingEnsureRingConsistency requires ring membership and generation count consistency check", v12, 2u);
    }

    CFDictionaryRemoveAllValues(*(a1 + 32));
    sub_100259A8C(a1, a2, a3);
  }

  return v4;
}

void sub_100259A8C(uint64_t a1, __SecKey *a2, CFTypeRef *a3)
{
  v6 = ccsha256_di();
  v7 = sub_10025987C(v6, a1, a3);
  v8 = sub_100259B60(a2, v7);
  PublicFromPrivate = SecKeyCreatePublicFromPrivate();
  v10 = SOSCopyIDOfKey();
  if (v10)
  {
    CFDictionarySetValue(*(a1 + 32), v10, v8);
  }

  if (PublicFromPrivate)
  {
    CFRelease(PublicFromPrivate);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  CFRelease(v8);
  if (v7)
  {

    CFRelease(v7);
  }
}

CFDataRef sub_100259B60(__SecKey *a1, const __CFData *a2)
{
  sigLen = SecKeyGetSize() + 16;
  __chkstk_darwin();
  v6 = &sigLen - v5;
  if (v4)
  {
    memset(&sigLen - v5, 170, v4);
  }

  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  if (SecKeyRawSign(a1, 0, BytePtr, Length, v6, &sigLen))
  {
    return 0;
  }

  else
  {
    return CFDataCreate(0, v6, sigLen);
  }
}

void sub_10025A020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10025A100(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10025A1A0;
  v3[3] = &unk_100347610;
  v4 = *(a1 + 40);
  [v2 SOSMonitorModeSOSIsActiveWithCallback:v3];
}

void sub_10025A238(uint64_t a1)
{
  v1 = [*(a1 + 32) account];
  [v1 SOSMonitorModeEnableSOS];
}

void sub_10025A304(uint64_t a1)
{
  v1 = [*(a1 + 32) account];
  [v1 SOSMonitorModeDisableSOS];
}

void sub_10025B4BC(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_10039E4D8;
  qword_10039E4D8 = v2;

  v4 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.securityd.sos"];
  v5 = qword_10039E4D0;
  qword_10039E4D0 = v4;

  [qword_10039E4D0 setDelegate:qword_10039E4D8];
  [qword_10039E4D0 resume];

  objc_autoreleasePoolPop(v1);
}

void sub_10025B65C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10025B674(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (!cf || (v5 = cf, v6 = CFGetTypeID(cf), v6 != CFStringGetTypeID()))
  {
    v5 = 0;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    TypeID = CFDataGetTypeID();
    if (v5)
    {
      if (v7 == TypeID)
      {
        v9 = *(a1 + 32);
        v24 = [v9 circleName];
        v10 = v9;
        v11 = [v10 SOSTransportMessageGetAccount];
        sub_10020E324(v11);
        v12 = [v11 peerID];
        v13 = SOSMessageKeyCreateFromTransportToPeer();

        v22 = sub_10025882C(v14, v15, v16, v17, v18, v19, v20, v21, v13, a3);
        v23 = dispatch_get_global_queue(-2, 0);
        SOSCloudKeychainPutObjectsInCloud();

        if (v22)
        {
          CFRelease(v22);
        }

        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }
}

void sub_10025B810(id a1, __CFDictionary *a2, __CFError *a3)
{
  if (a3)
  {
    v4 = sub_100006274("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error putting: %@", &v5, 0xCu);
    }
  }
}

void sub_10025B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10025B9C4(void *a1, CFTypeRef cf)
{
  if (!cf || (v3 = cf, v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    v3 = 0;
  }

  cfa = 0;
  v5 = a1[4];
  v6 = [v5 circleName];
  *(*(a1[5] + 8) + 24) &= [v5 SOSTransportMessageSendMessageIfNeeded:v5 circleName:v6 pID:v3 err:&cfa];

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v7 = a1[6];
    if (v7)
    {
      v8 = cfa;
      if (*v7 || !cfa)
      {
        goto LABEL_10;
      }

      *a1[6] = CFRetain(cfa);
    }
  }

  v8 = cfa;
LABEL_10:
  if (v8)
  {
    cfa = 0;
    CFRelease(v8);
  }
}

void sub_10025BC10(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (!cf || (v6 = CFGetTypeID(cf), v7 = cf, v6 != CFStringGetTypeID()))
  {
    v7 = 0;
  }

  if (a3 && (v8 = CFGetTypeID(a3), v8 == CFDataGetTypeID()))
  {
    cfa = 0;
    if (v7 && [*(a1 + 32) SOSTransportMessageHandlePeerMessage:*(a1 + 32) id:v7 cm:a3 err:&cfa])
    {
      CFArrayAppendValue(*(a1 + 40), cf);
      goto LABEL_13;
    }
  }

  else
  {
    cfa = 0;
  }

  v9 = sub_100006274("transport");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = cfa;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ KVSTransport handle message failed: %@", buf, 0x16u);
  }

LABEL_13:
  v10 = cfa;
  if (cfa)
  {
    cfa = 0;
    CFRelease(v10);
  }
}

void sub_10025BE5C(uint64_t a1, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = CFStringGetTypeID();
    if (a3)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFArrayGetTypeID())
        {
          context[0] = _NSConcreteStackBlock;
          context[1] = 3221225472;
          context[2] = sub_10025BF64;
          context[3] = &unk_100347768;
          v13 = cf;
          v10 = *(a1 + 32);
          v9 = v10;
          v12 = v10;
          v14.length = CFArrayGetCount(a3);
          v14.location = 0;
          CFArrayApplyFunction(a3, v14, sub_10025BAA4, context);
        }
      }
    }
  }
}

void sub_10025BF64(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        context[0] = _NSConcreteStackBlock;
        context[1] = 3221225472;
        context[2] = sub_10025C04C;
        context[3] = &unk_100347768;
        v8 = *(a1 + 48);
        v9 = cf;
        v7 = *(a1 + 32);
        v10.length = CFArrayGetCount(v5);
        v10.location = 0;
        CFArrayApplyFunction(v5, v10, sub_10025BAA4, context);
      }
    }
  }
}

void sub_10025C04C(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFStringGetTypeID())
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = SOSMessageKeyCreateWithCircleNameAndPeerNames();
      sub_10025C100(*(a1 + 32), v6);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = SOSMessageKeyCreateWithCircleNameAndPeerNames();
      sub_10025C100(*(a1 + 32), v9);
      if (v9)
      {

        CFRelease(v9);
      }
    }
  }
}

void sub_10025C100(void *a1, const void *a2)
{
  v3 = a1;
  if (![v3 pending_changes])
  {
    [v3 setPending_changes:{CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)}];
  }

  CFDictionarySetValue([v3 pending_changes], a2, kCFNull);
}

void sub_10025C378(uint64_t a1)
{
  SOSPeerInfoGetPeerID();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = SOSMessageKeyCreateFromPeerToTransport();
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(a1 + 48), v4);

    CFRelease(v5);
  }
}

uint64_t sub_10025D7CC(uint64_t a1)
{
  [*(a1 + 32) fullPeerInfo];
  SOSFullPeerInfoGetPeerInfo();

  return SOSCircleUpdatePeerInfo();
}

uint64_t sub_10025DBEC(uint64_t a1)
{
  v2 = sub_100006274("circleChange");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Calling SOSCircleUpdatePeerInfo for gestalt change", v4, 2u);
  }

  [*(a1 + 32) peerInfo];
  return SOSCircleUpdatePeerInfo();
}

void *acm_mem_alloc_data(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0x7F43DDCBuLL);
  if (result)
  {
    qword_10039DB08 += size;
  }

  return result;
}

void acm_mem_free_data(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10002D408(a1, a2);
    free(v3);
    v4 = qword_10039DB08 - v2;
    if (qword_10039DB08 < v2)
    {
      v4 = 0;
    }

    qword_10039DB08 = v4;
  }
}

void *acm_mem_alloc_typed(size_t size, malloc_type_id_t type_id)
{
  result = malloc_type_calloc(1uLL, size, type_id);
  if (result)
  {
    qword_10039DB10 += size;
  }

  return result;
}

void acm_mem_free(void *a1, rsize_t a2)
{
  if (a1)
  {
    sub_10002D408(a1, a2);
    free(v3);
    v4 = qword_10039DB10 - v2;
    if (qword_10039DB10 < v2)
    {
      v4 = 0;
    }

    qword_10039DB10 = v4;
  }
}

uint64_t ACMContextRemovePassphraseCredentialsByPurposeAndScope(_OWORD *a1, int a2, int a3)
{
  if (byte_10039B471 <= 0xAu && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DABC();
    sub_10002DA98();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
  }

  if (a1 || a3 == 2)
  {
    if (sub_10002DCFC())
    {
      sub_10002DAF0();
    }

    else
    {
      v12 = acm_mem_alloc_data(0x18uLL);
      sub_10002DAC8();
      acm_mem_alloc_info(v13, v14, v15, v16, 500, v17);
      if (v12)
      {
        if (a1)
        {
          *v12 = *a1;
        }

        else
        {
          *v12 = 0;
          v12[1] = 0;
        }

        *(v12 + 4) = a2;
        *(v12 + 5) = a3;
        sub_10002DAE0();
        v3 = sub_10002DEB0(v18, v19, v20, v21, v22, 0, 0);
        sub_10002DAC8();
        acm_mem_free_info(v23, v24, v25, v26, 521, v27);
        acm_mem_free_data(v12, 0x18uLL);
      }

      else
      {
        sub_10002DAFC();
      }
    }
  }

  else
  {
    sub_10002DAB0();
  }

  sub_10002DB08();
  if (v28 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    sub_10002DB2C();
    sub_10002DAD4();
    sub_10002DA88();
    sub_10002DA98();
    _os_log_impl(v29, v30, v31, v32, v33, 0x20u);
  }

  return v3;
}

_BYTE *LibCall_BuildCommand(char a1, char a2, char a3, const void *a4, size_t a5, void *a6)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_BuildCommand");
  }

  v12 = 0;
  if (a5)
  {
    v13 = a4 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && a6)
  {
    if (a5 >= 0xFFFFFFFFFFFFFFF8)
    {
      v12 = 0;
    }

    else
    {
      v12 = acm_mem_alloc_data(a5 + 8);
      acm_mem_alloc_info("<data>", v12, a5 + 8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 22, "LibCall_BuildCommand");
      if (v12)
      {
        *a6 = a5 + 8;
        *v12 = 1396920900;
        v12[4] = a1;
        v12[5] = a2;
        v12[6] = a3;
        v12[7] = 2;
        if (a5)
        {
          memcpy(v12 + 8, a4, a5);
        }
      }
    }
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: returning.\n", "ACM", "LibCall_BuildCommand");
  }

  return v12;
}

Boolean CFCalendarDecomposeAbsoluteTime(CFCalendarRef calendar, CFAbsoluteTime at, const char *componentDesc, ...)
{
  va_start(va, componentDesc);
  v3 = va_arg(va, const char *);
  return _CFCalendarDecomposeAbsoluteTime(calendar, at, v3);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  MethodDescription = _protocol_getMethodDescription(p, aSel, isRequiredMethod, isInstanceMethod);
  types = MethodDescription.types;
  name = MethodDescription.name;
  result.types = types;
  result.name = name;
  return result;
}