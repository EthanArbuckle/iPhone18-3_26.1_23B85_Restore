_BYTE *sub_1007A0B80(uint64_t a1)
{
  v2 = *(a1 + 136);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007A51F0;
  v4[3] = &unk_1024704E8;
  v4[4] = a1;
  v5 = 1;
  [v2 iterateAllAnchorKeyPathsWithBlock:v4];
  sub_100774798(a1);
  sub_100774D9C(a1);
  sub_1007A1D84(a1, 0);
  return sub_100044F7C(a1);
}

void sub_1007A0C28(uint64_t a1, CLConnection **a2, uint64_t *a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  *a2 = 0;
  v8[2] = _NSConcreteStackBlock;
  v8[3] = 3221225472;
  v8[4] = sub_1007A0D04;
  v8[5] = &unk_10245D2A8;
  v8[6] = v4;
  v8[7] = v5;
  CLConnection::setDisconnectionHandler();
  v6 = *a3;
  v7 = a3[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000540D0(v4, v5, v8);
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1007A0CEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A0D10(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onDaemonStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onDaemonStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A6298(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A0EDC(uint64_t a1, _DWORD *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onWifiServiceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onWifiServiceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A62F8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A10A8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onBluetoothServiceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onBluetoothServiceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A6A64(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A1274(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLClientManager::onStatusBarNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onStatusBarNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1007A64A0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1007A1450(id a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = CLAuthorizationStatusChangedNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v2, 0, 0, 0);
}

id sub_1007A1490(uint64_t a1, uint64_t a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#liveActivity invoking update handler", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934504();
  }

  return [*(a1 + 32) handleLiveActivityUpdate:a2];
}

void sub_1007A1540(uint64_t a1)
{
  v2 = *(a1 + 392);
  v3 = *(a1 + 393);
  domain_answer = os_eligibility_get_domain_answer();
  if (!domain_answer)
  {
    *(a1 + 392) = 0;
  }

  v5 = os_eligibility_get_domain_answer();
  if (!v5)
  {
    *(a1 + 393) = 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 392);
    v8 = *(a1 + 393);
    *buf = 68291074;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = domain_answer;
    v15 = 1026;
    v16 = 0;
    v17 = 1026;
    v18 = v2;
    v19 = 1026;
    v20 = v7;
    v21 = 1026;
    v22 = v5;
    v23 = 1026;
    v24 = 0;
    v25 = 1026;
    v26 = v3;
    v27 = 1026;
    v28 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes  #pcHistorical os_eligibility updated, lrStatus:%{public}d, lrAnswer:%{public}d, oldLearnedRoutesEligibility:%{public}hhd, NewLearnedRoutesEligibility:%{public}hhd, vhStatus:%{public}d, vhAnswer:%{public}d, oldVisitHistoryEligibility:%{public}hhd, NewVisitHistoryEligibility:%{public}hhd}", buf, 0x42u);
  }
}

void sub_1007A16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLClientManager::onLocationIntelligenceOSEligibilityNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101933664();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLClientManager::onLocationIntelligenceOSEligibilityNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007AB63C;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1007A1908()
{
  v0 = sub_1000206B4();
  result = sub_1004FB0D0(v0, "LearnedRoutesTrackingStartTime");
  if ((result & 1) == 0)
  {
    v2 = sub_1000206B4();
    Current = CFAbsoluteTimeGetCurrent();
    return sub_100116D68(v2, "LearnedRoutesTrackingStartTime", &Current);
  }

  return result;
}

uint64_t sub_1007A1964(uint64_t a1)
{
  *a1 = off_102470970;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_1007AEA30(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

__n128 sub_1007A1A04(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1007A1A54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  [*(v4 + 136) doubleForKey:@"BackgroundLocationTimeStarted" atKeyPath:a2 defaultValue:0.0];
  v6 = v5;
  [*(v4 + 136) doubleForKey:@"BackgroundLocationTimeStopped" atKeyPath:a2 defaultValue:0.0];
  if (v6 <= v7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No BackgroundLocation found. No crash-grace CLInUseAssertion, clientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2114;
      v22 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Ongoing background location, taking temporary crash-grace DUE CLInUseAssertion, clientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v4 + 400);
    if (a2)
    {
      [a2 cppClientKey];
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
    }

    sub_10000EC00(&__p, "crash-grace-DUE");
    sub_10000E08C(&__p, v10, v15, 5, buf);
    v12 = *(v9 + 56);
    if (v12 >= *(v9 + 64))
    {
      v13 = sub_1007AB724(v9 + 48, buf);
    }

    else
    {
      sub_10001BB2C(*(v9 + 56), buf);
      v13 = v12 + 80;
      *(v9 + 56) = v12 + 80;
    }

    *(v9 + 56) = v13;
    sub_10014588C(buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }
  }
}

void sub_1007A1CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_10014588C(&a21);
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

void sub_1007A1D0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v4 = *(v2 + 48);
    ;
  }

  *(v2 + 56) = v4;
  [*(v1 + 336) invalidate];

  *(v1 + 336) = 0;
}

void sub_1007A1D84(uint64_t a1, int a2)
{
  v4 = [*(a1 + 120) locationRestricted];
  v5 = sub_100008074();
  v6 = v5;
  v7 = sub_1007A4EC0(v5, a2);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v8 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    v22 = v6 != 0;
    v23 = 1024;
    v24 = v7;
    v25 = 1024;
    v26 = a2;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Location services available %d; parental controls enabled %d (refresh %d)", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v15 = 67109632;
    v16 = v6 != 0;
    v17 = 1024;
    v18 = v7;
    v19 = 1024;
    v20 = a2;
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLClientManager::checkRestrictions(BOOL)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  [*(a1 + 120) setLocationRestricted:(v6 == 0) | v7];
  if ([*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#warning location is restricted; freezing client states", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019346BC();
      if (!a2)
      {
        return;
      }

      goto LABEL_20;
    }

LABEL_19:
    if (!a2)
    {
      return;
    }

    goto LABEL_20;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "location is not restricted", buf, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
    goto LABEL_19;
  }

  sub_1019345E0();
  if (!a2)
  {
    return;
  }

LABEL_20:
  if (v4 != [*(a1 + 120) locationRestricted])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v11 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Applying #restrictions change to all clients", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101934798();
    }

    v12 = *(a1 + 136);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1007A5178;
    v14[3] = &unk_10246FC30;
    v14[4] = a1;
    [v12 iterateAllAnchorKeyPathsWithBlock:v14];
  }
}

uint64_t sub_1007A2140(uint64_t a1)
{
  *a1 = off_1024702D8;
  *(a1 + 112) = &off_1024703C0;
  *(*(a1 + 1040) + 8) = 0;
  sub_1008DC7DC(*(a1 + 400));

  *(a1 + 1560) = 0;
  *(a1 + 1552) = 0;
  [*(a1 + 336) invalidate];

  *(a1 + 336) = 0;
  dispatch_source_cancel(*(a1 + 696));

  *(a1 + 696) = 0;
  *(a1 + 688) = 0;
  [*(a1 + 344) invalidate];

  *(a1 + 344) = 0;
  [*(a1 + 352) invalidate];

  *(a1 + 352) = 0;
  [*(a1 + 256) invalidate];

  *(a1 + 256) = 0;
  [*(a1 + 224) invalidate];

  *(a1 + 224) = 0;
  [*(a1 + 432) invalidate];

  *(a1 + 432) = 0;
  [*(a1 + 424) invalidate];

  *(a1 + 424) = 0;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v2 = *(a1 + 600);
  v3 = [v2 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v3)
  {
    v4 = *v64;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v64 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v63 + 1) + 8 * i);
        [objc_msgSend(*(a1 + 600) objectForKeyedSubscript:{v6), "invalidate"}];

        [*(a1 + 600) setObject:0 forKeyedSubscript:v6];
      }

      v3 = [v2 countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v3);
  }

  v7 = *(a1 + 616);
  if (v7 != (a1 + 624))
  {
    do
    {
      sub_100114ED0(v7 + 7, 0);
      v8 = v7[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v7[2];
          v10 = *v9 == v7;
          v7 = v9;
        }

        while (!v10);
      }

      v7 = v9;
    }

    while (v9 != (a1 + 624));
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v11 = *(a1 + 416);
  v12 = [v11 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v12)
  {
    v13 = *v60;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(v11);
        }

        dispatch_source_cancel(*(*(&v59 + 1) + 8 * j));
      }

      v12 = [v11 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v12);
  }

  *(a1 + 416) = 0;
  *(a1 + 440) = 0;
  [*(a1 + 368) invalidate];

  *(a1 + 368) = 0;
  *(a1 + 360) = 0;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v15 = *(a1 + 456);
  v16 = [v15 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v16)
  {
    v17 = *v56;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v56 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [objc_msgSend(*(a1 + 456) objectForKeyedSubscript:{*(*(&v55 + 1) + 8 * k)), "end"}];
      }

      v16 = [v15 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v16);
  }

  *(a1 + 456) = 0;
  [*(a1 + 296) invalidate];

  *(a1 + 296) = 0;
  if (*(a1 + 248))
  {
    sub_101934874(v19, v20, v21, v22, v23, v24, v25, v26, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, *(&v57 + 1), v58, *(&v58 + 1), v59, *(&v59 + 1), v60, *(&v60 + 1));
    abort_report_np();
    __break(1u);
  }

  v27 = *(a1 + 1088);
  if (v27)
  {
    notify_cancel(v27);
  }

  v28 = *(a1 + 1092);
  if (v28)
  {
    notify_cancel(v28);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.locationd/Restrictions", 0);
  v30 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(a1 + 1584);
  *(a1 + 1584) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  *(a1 + 1168) = 0;
  *(a1 + 1176) = 0;
  sub_1007AB9A0(a1 + 1056, *(a1 + 1056));
  [*(a1 + 1568) stopMonitoringCapabilityChangeForClient:CLISP_ME_TOKEN];

  *(a1 + 1568) = 0;
  *(a1 + 1576) = 0;

  *(a1 + 1120) = 0;
  *(a1 + 1112) = 0;

  *(a1 + 1104) = 0;
  *(a1 + 1096) = 0;

  *(a1 + 1504) = 0;
  *(a1 + 120) = 0;

  *(a1 + 608) = 0;
  *(a1 + 504) = 0;

  *(a1 + 520) = 0;
  *(a1 + 568) = 0;

  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  [*(a1 + 144) invalidate];

  *(a1 + 144) = 0;
  [*(a1 + 136) persist];

  *(a1 + 136) = 0;
  *(a1 + 1592) = 0;
  v37 = *(a1 + 1584);
  *(a1 + 1584) = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  sub_1003C94DC(a1 + 1512);
  sub_1003C94DC(a1 + 1352);
  sub_10001AF44(a1 + 1136, *(a1 + 1144));
  v67 = (a1 + 1056);
  sub_1007AB64C(&v67);
  v38 = *(a1 + 1048);
  if (v38)
  {
    sub_100008080(v38);
  }

  sub_1007AE9F4(a1 + 1000);
  if (*(a1 + 999) < 0)
  {
    operator delete(*(a1 + 976));
  }

  sub_1003C93BC(a1 + 936, *(a1 + 944));
  sub_1003C93BC(a1 + 912, *(a1 + 920));
  sub_10001AF44(a1 + 888, *(a1 + 896));
  sub_1003C93BC(a1 + 864, *(a1 + 872));
  sub_1003C93BC(a1 + 840, *(a1 + 848));
  sub_10001AF44(a1 + 800, *(a1 + 808));
  sub_10001AF44(a1 + 776, *(a1 + 784));
  sub_10001AF44(a1 + 752, *(a1 + 760));
  sub_10001AF44(a1 + 728, *(a1 + 736));
  sub_10001AF44(a1 + 704, *(a1 + 712));
  sub_1003C94DC(a1 + 640);
  sub_1007AE998(a1 + 616, *(a1 + 624));
  sub_1003C94DC(a1 + 528);
  sub_1003C94DC(a1 + 464);
  v39 = *(a1 + 408);
  if (v39)
  {
    sub_100008080(v39);
  }

  sub_1007A3EE0((a1 + 272), 0);
  v40 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v40)
  {
    sub_10068024C(a1 + 264, v40);
  }

  v41 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v41)
  {
    (*(*v41 + 8))(v41);
  }

  v42 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v42)
  {
    (*(*v42 + 8))(v42);
  }

  v43 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v43)
  {
    (*(*v43 + 8))(v43);
  }

  v44 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v44)
  {
    (*(*v44 + 8))(v44);
  }

  v45 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v45)
  {
    (*(*v45 + 8))(v45);
  }

  v46 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  v47 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  sub_1007A1964(a1);
  return a1;
}

void sub_1007A2AF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1007A2B34(uint64_t a1)
{
  sub_1007A2140(a1);

  operator delete();
}

void sub_1007A2B6C(uint64_t a1)
{
  sub_1007A2140(a1 - 112);

  operator delete();
}

const __CFString *sub_1007A2BA8(__CFString *filePath)
{
  if (!filePath)
  {
    return 0;
  }

  v2 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, filePath, kCFURLPOSIXPathStyle, 1u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFBundleCreate(kCFAllocatorDefault, v2);
  if (v4)
  {
    v5 = v4;
    v6 = sub_100056238();
    v7 = _kCFBundleDisplayNameKey;
    v8 = sub_100055A24(v6, v5, _kCFBundleDisplayNameKey, 0);
    if (!v8)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000238CC(v7, __p);
        v10 = v16 >= 0 ? __p : *__p;
        *buf = 136446210;
        v18 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#warning could not get localized string '%{public}s'!", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019349FC(v7);
      }

      v11 = sub_100056238();
      v8 = sub_100055A24(v11, v5, kCFBundleNameKey, 0);
      if (!v8)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v12 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          v13 = [(__CFString *)filePath UTF8String];
          *__p = 136446210;
          *&__p[4] = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "could not get UN localized bundle name from bundle at '%{public}s'; soup cannot be given to them.", __p, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101934B0C(filePath);
        }

        v8 = 0;
      }
    }

    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v3);
  return v8;
}

void sub_1007A2DFC(uint64_t a1)
{
  if (!*(a1 + 688))
  {
    *(a1 + 688) = [[CLOSTransaction alloc] initWithDescription:"CLClientManager.unsubscribeGrace"];
  }

  v2 = *(a1 + 696);
  if (v2)
  {
    v3 = dispatch_time(0, (*(a1 + 680) * 1000000000.0));
    v4 = (*(a1 + 680) * 0.5 * 1000000000.0);

    dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, v4);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, [*(a1 + 40) queue]);
    *(a1 + 696) = v5;
    v6 = dispatch_time(0, (*(a1 + 680) * 1000000000.0));
    dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, (*(a1 + 680) * 0.5 * 1000000000.0));
    v7 = *(a1 + 696);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1007A2F7C;
    handler[3] = &unk_102449A78;
    handler[4] = a1;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(a1 + 696));
  }
}

void sub_1007A2F7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  *(v1 + 688) = 0;
}

void sub_1007A2FA8()
{
  v0 = [[CLOSTransaction alloc] initWithDescription:"CLClientManager.privacyReset"];
  v1 = dispatch_time(0, 300000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007A3054;
  block[3] = &unk_102447418;
  block[4] = v0;
  dispatch_after(v1, &_dispatch_main_q, block);
}

id sub_1007A305C(uint64_t a1)
{
  v3 = *(a1 + 64);
  v1 = a1 + 64;
  v2 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v1;
  do
  {
    v5 = *(v2 + 32);
    if ((v5 & 0x80000000) == 0)
    {
      v4 = v2;
    }

    v2 = *(v2 + ((v5 >> 28) & 8));
  }

  while (v2);
  if (v4 != v1 && *(v4 + 32) <= 0 && *(v4 + 56))
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = *(v4 + 40);
    if (v9 != (v4 + 48))
    {
      do
      {
        if (*(v9 + 63) < 0)
        {
          sub_100007244(__p, v9[5], v9[6]);
        }

        else
        {
          *__p = *(v9 + 5);
          v23 = v9[7];
        }

        if (SHIBYTE(v23) < 0)
        {
          if (!__p[1])
          {
LABEL_39:
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }

            v15 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              *buf = 68289026;
              *v27 = 0;
              *&v27[4] = 2082;
              *&v27[6] = "";
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Found registered client for kNotificationReset with empty resetIdentifier}", buf, 0x12u);
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }
            }

            v16 = off_1025D47A8;
            if (os_signpost_enabled(off_1025D47A8))
            {
              *buf = 68289026;
              *v27 = 0;
              *&v27[4] = 2082;
              *&v27[6] = "";
              _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Found registered client for kNotificationReset with empty resetIdentifier", "{msg%{public}.0s:Found registered client for kNotificationReset with empty resetIdentifier}", buf, 0x12u);
            }

            goto LABEL_50;
          }

          v10 = __p[0];
        }

        else
        {
          if (!HIBYTE(v23))
          {
            goto LABEL_39;
          }

          v10 = __p;
        }

        if ([&off_102554438 containsObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v10)}])
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v11 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
          {
            if (v23 >= 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0];
            }

            *buf = 136315138;
            *v27 = v12;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Skip un-tracked resetIdentifier: %s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10192DC88(buf);
            v13 = v23 >= 0 ? __p : __p[0];
            v24 = 136315138;
            v25 = v13;
            v14 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "NSArray *CLClientManager::resetIdentifiersForRegisteredClients()", "%s\n", v14);
            if (v14 != buf)
            {
              free(v14);
            }
          }
        }

        else
        {
          if (v23 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          [v8 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v17)}];
        }

LABEL_50:
        if (SHIBYTE(v23) < 0)
        {
          operator delete(__p[0]);
        }

        v18 = v9[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v9[2];
            v20 = *v19 == v9;
            v9 = v19;
          }

          while (!v20);
        }

        v9 = v19;
      }

      while (v19 != (v4 + 48));
    }

    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v21 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *v27 = 0;
      *&v27[4] = 2082;
      *&v27[6] = "";
      v28 = 2114;
      v29 = v8;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:fetched reset-identifiers, ResetIdentifiers:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return [v8 allObjects];
  }

  else
  {
LABEL_8:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "No registered clients for kNotificationReset.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101934C18();
    }

    return 0;
  }
}

void sub_1007A353C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A3564(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_100033370(a1, a2);
  v11 = 0;
  v12 = 0;
  sub_10004F9C8(a3, &v12, &v11);
  if (([*(a1 + 136) hasValueForKey:v12 atKeyPath:v5] & 1) == 0)
  {
    v6 = v11;
    if (([*(a1 + 136) hasValueForKey:v11 atKeyPath:v5] & 1) == 0)
    {
      [*(a1 + 136) setDouble:v6 forKey:v5 atKeyPath:14406267.0];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v7 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v8 = off_10246FCA0[a3];
        *buf = 138412546;
        *&buf[4] = v5;
        v14 = 2080;
        v15 = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Service: client, %@, type, %s, marked as used", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101934CFC(v5, a3);
      }
    }
  }

  if (!_os_feature_enabled_impl() || a3 <= 0xA && ((1 << a3) & 0x430) != 0)
  {
    v9 = [objc_msgSend(v5 "legacyClientKey")];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "";
    }

    sub_10000EC00(buf, v10);
    sub_1000F5FF0(a1, buf);
    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1007A3734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007A3758(uint64_t a1)
{
  v1 = *(a1 + 136);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007A37CC;
  v3[3] = &unk_10246FC30;
  v3[4] = a1;
  return [v1 iterateAllAnchorKeyPathsWithBlock:v3];
}

uint64_t sub_1007A37CC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 32);
  do
  {
    v5 = qword_101C8D460[v3];
    result = _os_feature_enabled_impl();
    if (result)
    {
      if (v5 > 0xA || ((1 << v5) & 0x430) == 0)
      {
        break;
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    result = sub_10002FE04(v4, a2, v5, 0, 0, 1, Current);
    ++v3;
  }

  while (v3 != 11);
  return result;
}

id sub_1007A3888(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v9[0] = 68289282;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:clearing regions for client, client:%{public, location:escape_only}@}", v9, 0x1Cu);
    }

    for (i = 0; i != 4; ++i)
    {
      v7 = sub_100774B5C(i);
      Current = CFAbsoluteTimeGetCurrent();
      result = sub_10002FE04(a1, v3, v7, 0, 0, 0, Current);
    }
  }

  return result;
}

id sub_1007A39BC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2114;
      v10 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:clearing significant location change for client, Client:%{public, location:escape_only}@}", v6, 0x1Cu);
    }

    return [*(a1 + 136) removeValueForKey:@"SignificantTimeStarted" atKeyPath:v3];
  }

  return result;
}

void sub_1007A3ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = TMGetRTCResetCount();
  [*(v4 + 136) doubleForKey:@"AuthorizationRegisterTime" atKeyPath:a2 defaultValue:-1.0];
  v7 = v6;
  if ([*(v4 + 136) BOOLForKey:@"Authorization" atKeyPath:a2 defaultValue:0])
  {
    if (v7 == -1.0)
    {
      return;
    }
  }

  else
  {
    if ([*(v4 + 136) BOOLForKey:@"SupportedAuthorizationMask" atKeyPath:a2 defaultValue:0])
    {
      v8 = v7 == -1.0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return;
    }
  }

  TMGetKernelMonotonicClock();
  v10 = v9;
  if (v9 < v7)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v11 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    v20 = 68289794;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2114;
    *&v21[12] = a2;
    *&v21[20] = 2050;
    *&v21[22] = v10;
    *&v21[30] = 2050;
    v22 = v7;
    v12 = "{msg%{public}.0s:#warning #appclip entry has TMMonotonicClock registration time in the future??, Client:%{public, location:escape_only}@, now:%{public}f, timeGivenAuth:%{public}f}";
    v13 = v11;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 48;
LABEL_13:
    _os_log_impl(dword_100000000, v13, v14, v12, &v20, v15);
LABEL_27:
    [*(a1 + 32) addObject:{a2, v20, *v21, *&v21[16], *&v22, v23}];
    return;
  }

  if (v5)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v16 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v20 = 68289282;
      *v21 = 2082;
      *&v21[2] = "";
      *&v21[10] = 1026;
      *&v21[12] = v5;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#appclip detected RTC reset count > 1, rtcResetCount:%{public}u}", &v20, 0x18u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v17 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v20 = 68289282;
      *v21 = 2082;
      *&v21[2] = "";
      *&v21[10] = 1026;
      *&v21[12] = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#appclip detected RTC reset count > 1", "{msg%{public}.0s:#appclip detected RTC reset count > 1, rtcResetCount:%{public}u}", &v20, 0x18u);
    }

    goto LABEL_27;
  }

  if (v9 - v7 > *(a1 + 48))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v18 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_27;
    }

    v20 = 68290050;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2114;
    *&v21[12] = a2;
    *&v21[20] = 2050;
    *&v21[22] = v10;
    *&v21[30] = 2050;
    v22 = v7;
    LOWORD(v23) = 2050;
    *(&v23 + 2) = v10 - v7;
    v12 = "{msg%{public}.0s:#appclip client authorization has gone on long enough! PURGE!, Client:%{public, location:escape_only}@, now:%{public}f, timeGivenAuth:%{public}f, delta:%{public}f}";
    v13 = v18;
    v14 = OS_LOG_TYPE_DEBUG;
    v15 = 58;
    goto LABEL_13;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v19 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v20 = 68289794;
    *v21 = 2082;
    *&v21[2] = "";
    *&v21[10] = 2114;
    *&v21[12] = a2;
    *&v21[20] = 2050;
    *&v21[22] = v10;
    *&v21[30] = 2050;
    v22 = v7;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#appclip client is spared from the PURGE... for now, Client:%{public, location:escape_only}@, now:%{public}f, timeGivenAuth:%{public}f}", &v20, 0x30u);
  }
}

uint64_t sub_1007A3EE0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10023DF30(result);

    operator delete();
  }

  return result;
}

void sub_1007A3F38(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = [*(v6 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
  if (v7 == 4)
  {
    v8 = [*(v6 + 136) intForKey:@"ConsumptionPeriodBegin" atKeyPath:a2 defaultValue:0];
    if (v8)
    {
      v9 = (*(a1 + 40) - v8) / *(a1 + 48);
      if (v9 < 1.0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v10 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *v25 = 2082;
          *&v25[2] = "";
          *&v25[10] = 2114;
          *&v25[12] = a2;
          v26 = 2050;
          *v27 = v9;
          v11 = "{msg%{public}.0s:denying #reprompt for client with consumptionPeriodElapsed < 1.0, Client:%{public, location:escape_only}@, consumptionPeriodElapsed:%{public}f}";
          v12 = v10;
          v13 = 38;
LABEL_23:
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, v11, buf, v13);
          return;
        }

        return;
      }

      if (([*(v6 + 136) isKeyPathRegisteredSystemService:a2] & 1) != 0 || sub_10018E72C(v6, a2))
      {
        [*(v6 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent() + 31536000.0];
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v16 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2114;
        *&v25[12] = a2;
        v11 = "{msg%{public}.0s:denying #reprompt for System Service, Client:%{public, location:escape_only}@}";
      }

      else
      {
        if (a2)
        {
          [a2 cppClientKey];
        }

        else
        {
          *buf = 0;
          *v25 = 0;
          *&v25[8] = 0;
        }

        v17 = *(sub_100046778((v6 + 464), buf) + 12);
        if ((v25[15] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (v17)
        {
          v18 = [*(v6 + 136) intForKey:@"ConsumptionCoolingRate" atKeyPath:a2 defaultValue:0];
          v19 = [*(v6 + 136) intForKey:@"NextConsumptionThresholdScore" atKeyPath:a2 defaultValue:0x7FFFFFFFLL];
          if (*(a1 + 48) == 259200.0)
          {
            if (v18 > 2)
            {
              v18 = 0;
            }

            v20 = pow(dbl_101C8D548[v18], v9) * v17;
            if (v20 <= v19)
            {
              if (qword_1025D47A0 != -1)
              {
                sub_10192D4D0();
              }

              v21 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 68289794;
                *&buf[4] = 0;
                *v25 = 2082;
                *&v25[2] = "";
                *&v25[10] = 2114;
                *&v25[12] = a2;
                v26 = 1026;
                *v27 = v19;
                *&v27[4] = 1026;
                *&v27[6] = v20;
                v11 = "{msg%{public}.0s:denying #reprompt for client, threshold not reached, Client:%{public, location:escape_only}@, nextConsumptionThresholdScore:%{public}d, exponentiatedScore:%{public}d}";
                v12 = v21;
                v13 = 40;
                goto LABEL_23;
              }

              return;
            }
          }

          else
          {
            v20 = -1.0;
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v22 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
          {
            v23 = *(a1 + 48);
            *buf = 68290818;
            *&buf[4] = 0;
            *v25 = 2082;
            *&v25[2] = "";
            *&v25[10] = 2114;
            *&v25[12] = a2;
            v26 = 2050;
            *v27 = v23;
            *&v27[8] = 2050;
            v28 = v9;
            v29 = 1026;
            v30 = v17;
            v31 = 1026;
            v32 = v18;
            v33 = 2050;
            v34 = v20;
            v35 = 1026;
            v36 = v19;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Getting #reprompt info for client, clientKeyPath:%{public, location:escape_only}@, effectiveTrialRepromptInterval:%{public}f, consumptionPeriodsElapsed:%{public}f, runningScore:%{public}d, curCooling:%{public}d, exponentiatedScore:%{public}f, exponentiatedScoreThreshold:%{public}d}", buf, 0x4Cu);
          }

          [*(v6 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent()];
          [*(v6 + 136) setInt:(v17 + v17) forKey:@"NextNextConsumptionThresholdScore" atKeyPath:a2];
          [*(v6 + 136) persist];
          sub_1007A45D4(v6, a2);
          *a3 = 1;
          return;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v16 = off_1025D47A8;
        if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *v25 = 2082;
        *&v25[2] = "";
        *&v25[10] = 2114;
        *&v25[12] = a2;
        v11 = "{msg%{public}.0s:denying #reprompt for client with no consumption score, Client:%{public, location:escape_only}@}";
      }
    }

    else
    {
      [*(v6 + 136) setDouble:@"ConsumptionPeriodBegin" forKey:a2 atKeyPath:CFAbsoluteTimeGetCurrent()];
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v16 = off_1025D47A8;
      if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      *buf = 68289282;
      *&buf[4] = 0;
      *v25 = 2082;
      *&v25[2] = "";
      *&v25[10] = 2114;
      *&v25[12] = a2;
      v11 = "{msg%{public}.0s:denying #reprompt for client without consumptionPeriodBegin, Client:%{public, location:escape_only}@}";
    }

    v12 = v16;
    v13 = 28;
    goto LABEL_23;
  }

  v14 = v7;
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v15 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    *&buf[4] = 0;
    *v25 = 2082;
    *&v25[2] = "";
    *&v25[10] = 2114;
    *&v25[12] = a2;
    v26 = 1026;
    *v27 = v14;
    v11 = "{msg%{public}.0s:denying #reprompt for client without Always auth, Client:%{public, location:escape_only}@, Auth:%{public}d}";
    v12 = v15;
    v13 = 34;
    goto LABEL_23;
  }
}

void sub_1007A45B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A45D4(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1000184F4(a1, a2);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3052000000;
  v13[3] = sub_1000474E4;
  v13[4] = sub_10004844C;
  v13[5] = [[CLOSTransaction alloc] initWithDescription:"com.apple.locationd.reading-score-archive"];
  v6 = [NSMutableArray arrayWithCapacity:0];
  v7 = *(a1 + 504);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007A70C8;
  v12[3] = &unk_1024705A8;
  v12[4] = v6;
  sub_100779E1C(v7, v5, v12);
  if (v6 && [(NSMutableArray *)v6 count])
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#reprompt preparePromptFromConsumptionScore, Client:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }

    v10 = *(a1 + 520);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1007A712C;
    v11[3] = &unk_1024705D0;
    v11[4] = v5;
    v11[5] = v13;
    [v10 getStoredLocationsBetweenStartTime:v6 endTime:v11 apartFromEachOther:Current + -259200.0 lyingWithinTimeIntervals:Current withReply:300.0];
  }

  _Block_object_dispose(v13, 8);
  objc_autoreleasePoolPop(v4);
}

void sub_1007A4840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1007A4864(const void *a1, uint64_t a2)
{
  CFRetain(a1);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007AB9F0;
  v5[3] = &unk_1024707B8;
  v5[4] = a1;
  v5[5] = a2;
  return [qword_102659F80 doAsync:v5];
}

void sub_1007A48EC(uint64_t a1, CFTypeRef cf, double a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    CFRelease(v6);
  }

  *(a1 + 48) = cf;
  *(a1 + 64) = a3;
}

uint64_t sub_1007A493C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = sub_100033370(a1, a2);
  }

  else
  {
    v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
    result = [v6 isValidCKP];
    if (!result)
    {
      return result;
    }
  }

  v8 = [*(a1 + 136) BOOLForKey:@"BackgroundIndicatorEnabled" atKeyPath:v6 defaultValue:0];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v9 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289794;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2114;
    v14 = v6;
    v15 = 1026;
    v16 = v8;
    v17 = 2050;
    v18 = a3;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:update client background indicator enabled, Client:%{public, location:escape_only}@, old:%{public}d, new:%{public}lu}", v10, 0x2Cu);
  }

  [*(a1 + 136) setBool:a3 forKey:@"BackgroundIndicatorEnabled" atKeyPath:v6];
  [*(a1 + 136) persist];
  sub_1007A5B34(a1, v6);
  return 1;
}

id sub_1007A4AC0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  result = [v3 isValidCKP];
  if (result)
  {
    return (([*(a1 + 136) intForKey:@"Authorization" atKeyPath:v3 defaultValue:0] & 6) != 0);
  }

  return result;
}

id sub_1007A4B1C(uint64_t a1, void *a2)
{
  result = [a2 isValidCKP];
  if (result)
  {
    result = [objc_msgSend(a2 "bundlePath")];
    if (result)
    {
      result = sub_1000E64C8([a2 bundlePath]);
      if (result)
      {
        result = [(CLClientManagerAuthorizationContext *)sub_10004FEC8(a1 isAuthorizedForServiceTypeMask:a2, &xmmword_101CE6CD8), "isAuthorizedForServiceTypeMask:", 16];
        if ((result & 1) == 0)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v5 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#LearnedRoutes #pcHistorical deleting Allowed access - Routine(SignificantLocations) is Off", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101934E14();
          }

          v6 = *(a1 + 136);
          v7[0] = _NSConcreteStackBlock;
          v7[1] = 3221225472;
          v7[2] = sub_1007A9694;
          v7[3] = &unk_10246FC30;
          v7[4] = a1;
          return [v6 iterateAllAnchorKeyPathsWithBlock:v7];
        }
      }
    }
  }

  return result;
}

void sub_1007A4C58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if ([v6 isValidCKP])
  {
    v7 = *(a1 + 136);
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    v9 = [NSString stringWithUTF8String:v8];

    [v7 setString:v9 forKey:@"AuthorizationPurposeKey" atKeyPath:v6];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:setClientAuthorizationPurposeKey for an app we don't have an entry for, Client:%{public, location:escape_only}@}", &v12, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      v17 = a2;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "setClientAuthorizationPurposeKey for an app we don't have an entry for", "{msg%{public}.0s:setClientAuthorizationPurposeKey for an app we don't have an entry for, Client:%{public, location:escape_only}@}", &v12, 0x1Cu);
    }
  }
}

id sub_1007A4E58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  v4 = [*(a1 + 136) BOOLForKey:@"AuthorizationUpgradeAvailable" atKeyPath:v3 defaultValue:1];
  sub_100791ACC(a1, v3, 0, 1);
  return v4;
}

BOOL sub_1007A4EC0(uint64_t a1, int a2)
{
  strcpy(v14, "SBParentalControlsCapabilities");
  memset(&v12, 0, sizeof(v12));
  sub_10054B43C(v11, @"com.apple.springboard", 1, @"mobile");
  v10 = 0;
  if (a2)
  {
    sub_10054B380(v11);
  }

  if (sub_10001CB4C(v11, "SBParentalControlsEnabled", &v10) && v10 && (v3 = sub_1001C0EF0(v11, v14), v10 = 0, v3 >= 1))
  {
    for (i = 0; i < v3; ++i)
    {
      if (!sub_100175094(v11, v14, &v12))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v5 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "NameValuePair::get failed despite our bounds checking", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10192DC88(buf);
          v8 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLClientManager::areParentalControlsEnabled(BOOL)", "%s\n", v8);
          if (v8 != buf)
          {
            free(v8);
          }
        }
      }

      v6 = std::string::compare(&v12, "location");
      v7 = v6 == 0;
      v10 = v6 == 0;
      if (!v6)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10054B4D4(v11);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_1007A5140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_10054B4D4(&a13);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1007A5178(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_10000EC00(__p, "");
  sub_100018918(v3, a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007A51D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A51F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  sub_1007744DC(v4, a2, 0xAuLL);
  sub_1007744DC(v4, a2, 4uLL);
  v5 = [*(v4 + 416) objectForKeyedSubscript:a2];
  if (v5)
  {
    dispatch_source_cancel(v5);
    [*(v4 + 416) removeObjectForKey:a2];
  }

  sub_1000ED87C(v4, *(v4 + 504), (v4 + 464), a2);
  if (_os_feature_enabled_impl())
  {
    sub_1000ED87C(v4, *(v4 + 568), (v4 + 528), a2);
  }

  v6 = sub_1007744DC(v4, a2, 5uLL);
  if ((atomic_load_explicit(&qword_102659F60, memory_order_acquire) & 1) == 0)
  {
    v24 = v6;
    v25 = __cxa_guard_acquire(&qword_102659F60);
    v6 = v24;
    if (v25)
    {
      v26 = objc_opt_class() && objc_opt_class() && objc_opt_class() && objc_opt_class() && objc_opt_class() != 0;
      byte_102659F58 = v26;
      __cxa_guard_release(&qword_102659F60);
      v6 = v24;
    }
  }

  if ((v6 & byte_102659F58) == 1 && *(a1 + 40) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Resuming client, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (a2)
    {
      [a2 clientName];
    }

    else
    {
      v53 = 0;
      *__p = 0u;
      v52 = 0u;
      v49 = 0u;
      *v50 = 0u;
      v47 = 0u;
      *v48 = 0u;
      *v45 = 0u;
      *v46 = 0u;
      v44 = 0u;
      memset(buf, 0, sizeof(buf));
    }

    if ([a2 bundleId])
    {
      v8 = [a2 bundleId];
      v28 = 0;
      v9 = [RBSProcessHandle handleForPredicate:[RBSProcessPredicate predicateMatchingBundleIdentifier:v8] error:&v28];
      v10 = v9;
      *v38 = 0;
      *&v39 = v38;
      *(&v39 + 1) = 0x3052000000;
      v40 = sub_1000474E4;
      v41 = sub_10004844C;
      v42 = 0;
      if (!v9 || ([v9 pid] & 0x80000000) != 0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
        {
          v18 = [a2 bundleId];
          *v29 = 68289538;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2114;
          v34 = v18;
          v35 = 2114;
          v36 = v28;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#Warning Failed to get the process handle, bundleID:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", v29, 0x26u);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v19 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          v20 = [a2 bundleId];
          *v29 = 68289538;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          v33 = 2114;
          v34 = v20;
          v35 = 2114;
          v36 = v28;
          _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Warning Failed to get the process handle", "{msg%{public}.0s:#Warning Failed to get the process handle, bundleID:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", v29, 0x26u);
        }
      }

      else
      {
        v37 = [RBSDomainAttribute attributeWithDomain:@"com.apple.locationd" name:@"Location"];
        v11 = [[RBSAssertion alloc] initWithExplanation:@"locationd-resume-on-crash" target:+[RBSTarget targetWithPid:](RBSTarget attributes:{"targetWithPid:", objc_msgSend(v10, "pid")), +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v37, 1)}];
        *(v39 + 40) = v11;
        if (!v11)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v12 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v13 = [v8 UTF8String];
            *v29 = 68289538;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2082;
            v34 = v13;
            v35 = 2114;
            v36 = v28;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#warning Failed to resume: init failure, client:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", v29, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v14 = off_1025D47A8;
          if (os_signpost_enabled(off_1025D47A8))
          {
            v15 = [v8 UTF8String];
            *v29 = 68289538;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2082;
            v34 = v15;
            v35 = 2114;
            v36 = v28;
            _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#warning Failed to resume: init failure", "{msg%{public}.0s:#warning Failed to resume: init failure, client:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", v29, 0x26u);
          }
        }

        if ([*(v39 + 40) acquireWithError:&v28])
        {
          v16 = *(v4 + 40);
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_1007A5A60;
          v27[3] = &unk_10245AE50;
          v27[4] = v38;
          [v16 afterInterval:v27 async:10.0];
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v22 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v8 UTF8String];
            *v29 = 68289538;
            v30 = 0;
            v31 = 2082;
            v32 = "";
            v33 = 2082;
            v34 = v23;
            v35 = 2114;
            v36 = v28;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning Failed to resume: assertion not acquired, client:%{public, location:escape_only}s, error:%{public, location:escape_only}@}", v29, 0x26u);
          }
        }
      }

      _Block_object_dispose(v38, 8);
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v21 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 68289026;
        *&v38[4] = 0;
        LOWORD(v39) = 2082;
        *(&v39 + 2) = "";
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Non-app client is/was a background client?}", v38, 0x12u);
      }
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48[1]);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(v46[1]);
    }

    if (SHIBYTE(v46[0]) < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1007A5A60(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) invalidate];

  *(*(*(a1 + 32) + 8) + 40) = 0;
}

void sub_1007A5AAC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if ([*(v3 + 136) isKeyPathRegisteredSystemService:a2])
  {
    sub_10000EC00(__p, "");
    sub_100018918(v3, a2, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007A5B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A5B34(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000184F4(a1, a2);
  v4 = sub_10005C54C(a1, v3);
  v5 = *(a1 + 840);
  v6 = (a1 + 848);
  if (v5 != v6)
  {
    v7 = v4;
    do
    {
      if ([sub_1000344B0(v5[5] 0)])
      {
        sub_10005C6A4(v5[5], v7);
      }

      v8 = v5[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != v6);
  }
}

NSDictionary *sub_1007A5BE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  [(NSDate *)[(NSDictionary *)[+[NSFileManager attributesOfItemAtPath:0]error:"attributesOfItemAtPath:error:" fileModificationDate:&v8]] timeIntervalSinceReferenceDate];
  v4 = 0.0;
  if (v3 > 0.0)
  {
    v5 = v3;
    [*(v2 + 40) currentLatchedAbsoluteTimestamp];
    v4 = v6 - v5;
  }

  v9[0] = @"ClientKey";
  v10[0] = [*(a1 + 40) userlessClientKeyPath];
  v9[1] = @"KeepAsIs";
  v10[1] = [NSNumber numberWithBool:*(a1 + 76)];
  v9[2] = @"RepromptAge";
  v10[2] = [NSNumber numberWithDouble:v4];
  v9[3] = @"PriorCooling";
  v10[3] = [NSNumber numberWithInt:*(a1 + 56)];
  v9[4] = @"PriorThreshold";
  v10[4] = [NSNumber numberWithInt:*(a1 + 60)];
  v9[5] = @"NewCooling";
  v10[5] = [NSNumber numberWithUnsignedInt:*(a1 + 64)];
  v9[6] = @"NewThreshold";
  v10[6] = [NSNumber numberWithInt:*(a1 + 68)];
  v9[7] = @"CurrentUsage";
  v10[7] = [NSNumber numberWithUnsignedInt:*(a1 + 72)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:8];
}

id sub_1007A5D78(uint64_t a1, void *a2)
{
  result = [a2 subIdentityType];
  if (result == 122)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void sub_1007A5DBC(uint64_t a1, const char *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "";
    if (a2)
    {
      v4 = a2;
    }

    *buf = 136446210;
    v11 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "open preferences with url, %{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101934EF0();
  }

  v5 = [NSURL URLWithString:[NSString stringWithUTF8String:a2]];
  if (v5)
  {
    v6 = v5;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007A5FAC;
    block[3] = &unk_102447418;
    block[4] = v6;
    dispatch_async(global_queue, block);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v8 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v11 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Couldn't create Preferences URL, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101934FF0();
    }
  }
}

void sub_1007A5FAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (([+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "could not launch Preferences", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019350E0();
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1007A6070(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = [a3 UTF8String];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes #pcHistorical - os_eligibility_change notification received, notification:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  sub_1007A1540(a1);
}

void sub_1007A6160(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v5 = *a3;
      LODWORD(__p[0]) = 67240192;
      HIDWORD(__p[0]) = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unknown notification: %{public}d", __p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019351C4();
    }
  }

  else
  {
    sub_10000EC00(__p, "com.apple.locationd.darwin_notification");
    sub_100773AF4(a1, __p, 1);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007A6274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007A6298(uint64_t result, uint64_t a2, _DWORD *a3, char *a4)
{
  if (*a3 == 8)
  {
    v4 = result;
    v5 = *a4;
    *(result + 1080) = *a4;
    if ((v5 & 1) == 0)
    {
      for (i = *(result + 1056); i != *(v4 + 1064); i += 4)
      {
        Current = CFAbsoluteTimeGetCurrent();
        result = sub_10079B3EC(i, Current);
      }
    }
  }

  return result;
}

void sub_1007A62F8(uint64_t a1, uint64_t a2, _DWORD *a3, char *a4)
{
  if (*a3 == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a4;
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi power state, power:%{public}d}", &v11, 0x18u);
    }

    v8 = *a4;
    *(a1 + 1081) = (*a4 & 1) == 0;
    if (v8)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:wifi enabled}", &v11, 0x12u);
      }

      for (i = *(a1 + 1056); i != *(a1 + 1064); i += 4)
      {
        if (!*i)
        {
          sub_10079B1A8(i);
          return;
        }
      }
    }
  }
}

void sub_1007A64A0(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  sub_10001A3E8();
  if (sub_1000F4760())
  {
    v7 = *a3;
    if (*a3 == 2)
    {
      if (*a4 != 7)
      {
        sub_101935490();
      }

      v8 = 8;
    }

    else if (v7 == 1)
    {
      if (*a4 != 4)
      {
        sub_1019354BC();
      }

      v8 = 4;
    }

    else
    {
      if (v7)
      {
        goto LABEL_15;
      }

      if (*a4 != 3)
      {
        sub_1019354E8();
      }

      v8 = 2;
    }

    if (*(a4 + 4) == 1)
    {
      v9 = *(a1 + 448) | v8;
    }

    else
    {
      v9 = *(a1 + 448) & ~v8;
    }

    *(a1 + 448) = v9;
    v10 = *(a1 + 424);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1007A690C;
    v27[3] = &unk_102470558;
    v27[4] = (v9 >> 2) & 2 | v9;
    v27[5] = v8;
    [v10 updateVolatileData:v27 completion:0];
  }

LABEL_15:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (*a3 || *a4 != 3)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        v18 = *a3;
        v19 = *a4;
        v40 = 68289538;
        v41 = 2082;
        *v42 = "";
        *&v42[8] = 2050;
        *&v42[10] = v18;
        v43 = 2050;
        v44 = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sbim unsupported system system service notification for entity, notification:%{public, location:CLStatusBarIconManager_Type::Notification}lld, entityClass:%{public, location:CLStatusBarIconManager_Type::EntityClass}lld}", &v40, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v20 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        v21 = *a3;
        v22 = *a4;
        v40 = 68289538;
        v41 = 2082;
        *v42 = "";
        *&v42[8] = 2050;
        *&v42[10] = v21;
        v43 = 2050;
        v44 = v22;
        _os_signpost_emit_with_name_impl(dword_100000000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#sbim unsupported system system service notification for entity", "{msg%{public}.0s:#sbim unsupported system system service notification for entity, notification:%{public, location:CLStatusBarIconManager_Type::Notification}lld, entityClass:%{public, location:CLStatusBarIconManager_Type::EntityClass}lld}", &v40, 0x26u);
      }
    }

    else
    {
      v11 = *(a1 + 1086);
      v12 = *(a4 + 4);
      *(a1 + 1086) = v12;
      if (v11 != v12)
      {
        sub_1007AEAE8(&v40, a1 + 1512);
        memset(v25, 0, sizeof(v25));
        v26 = 1065353216;
        memset(v23, 0, sizeof(v23));
        v24 = 1065353216;
        v13 = *(a1 + 1528);
        v31 = 0;
        v32 = *&v42[6];
        v29 = 0;
        v30 = v13;
        *&v28 = v25;
        *(&v28 + 1) = 0;
        sub_1007ABC28(&v32, &v31, &v30, &v29, &v28, &buf);
        v14 = *(a1 + 1528);
        v31 = 0;
        v32 = v14;
        v29 = 0;
        v30 = *&v42[6];
        *&v28 = v23;
        *(&v28 + 1) = 0;
        sub_1007ABC28(&v32, &v31, &v30, &v29, &v28, &buf);
        sub_1007A695C(a1, v25);
        sub_1007A69E0(a1, v23);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v15 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          v16 = *(a1 + 1086);
          buf = 68289538;
          v34 = 2082;
          v35 = "";
          v36 = 1026;
          v37 = v11;
          v38 = 1026;
          v39 = v16;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#sbim system service switch state changed, from:%{public}hhd, to:%{public}hhd}", &buf, 0x1Eu);
        }

        sub_1003C94DC(v23);
        sub_1003C94DC(v25);
        sub_1003C94DC(&v40);
      }
    }
  }
}

void sub_1007A68E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_1003C94DC(&a9);
  sub_1003C94DC(&a15);
  sub_1003C94DC(v15 - 112);
  _Unwind_Resume(a1);
}

id sub_1007A690C(uint64_t a1, void *a2, void *a3)
{
  [a2 setActiveDisplayModes:*(a1 + 32)];
  v5 = *(a1 + 40) == 2;

  return [a3 setUserInitiated:v5];
}

NSDictionary *sub_1007A695C(uint64_t a1, uint64_t a2)
{
  result = +[NSDictionary dictionary];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = v5 + 2;
      if (*(v5 + 39) < 0)
      {
        v7 = *v7;
      }

      result = [*(a1 + 1552) client:+[NSString stringWithUTF8String:](NSString didChangeUsageData:{"stringWithUTF8String:", v7), v6}];
      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

id sub_1007A69E0(id result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = (v2 + 2);
      if (*(v2 + 39) < 0)
      {
        v4 = v2[2];
      }

      result = [*(v3 + 1552) client:+[NSString stringWithUTF8String:](NSString didChangeUsageData:{"stringWithUTF8String:", v4), sub_100792C78(v3, v2 + 2)}];
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_1007A6A64(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 113);
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:bluetooth power state, power:%{public}d}", &v11, 0x18u);
    }

    v8 = *(a4 + 113);
    *(a1 + 1082) = (v8 & 1) == 0;
    if (v8)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = 68289026;
        v12 = 0;
        v13 = 2082;
        v14 = "";
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:bluetooth enabled}", &v11, 0x12u);
      }

      for (i = *(a1 + 1056); i != *(a1 + 1064); i += 4)
      {
        if (*i == 1)
        {
          sub_10079B1A8(i);
          return;
        }
      }
    }
  }
}

id sub_1007A6C10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007A6CF4;
  v7[3] = &unk_10246FC80;
  v7[4] = v4;
  result = [v5 iterateIdentitiesRelatedToKeyPath:a2 withBlock:v7];
  if (*(a1 + 40) == 1)
  {
    result = [*(v4 + 136) isKeyPathRegisteredSystemService:a2];
    if (result)
    {
      result = [*(v4 + 136) intForKey:@"Authorization" atKeyPath:a2 defaultValue:0];
      if (result == 4)
      {
        return [*(v4 + 136) removeValueForKey:@"Authorization" atKeyPath:a2];
      }
    }
  }

  return result;
}

id sub_1007A6CF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_1007A3888(v3, a2);

  return sub_1007A39BC(v3, a2);
}

id sub_1007A6DA8(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  result = [*(v2 + 600) objectForKeyedSubscript:*(a1 + 40)];
  if (v3 == result)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 68289282;
      *&buf[4] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TemporaryAuth setTemporaryAuthorizationStatusInfoForClient releasing in use assertion, Client:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (*(a1 + 64) == 1)
    {
      v7 = [objc_msgSend(*(a1 + 40) "legacyClientKey")];
      if (v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = "";
      }

      sub_10000EC00(__p, v8);
      sub_100778DE4(v2, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      [*(v2 + 608) removeObjectForKey:*(a1 + 48)];
      sub_100778C94();
    }

    sub_10000EC00(buf, [*(a1 + 48) UTF8String]);
    sub_1007AEC28((v2 + 616), buf);
    if (SBYTE3(v18) < 0)
    {
      operator delete(*buf);
    }

    v10 = *(a1 + 40);
    v9 = (a1 + 40);
    [objc_msgSend(*(v2 + 600) objectForKeyedSubscript:{v10), "invalidate"}];
    v11 = (v2 + 600);

    return [*v11 setObject:0 forKeyedSubscript:*v9];
  }

  return result;
}

void sub_1007A6F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A6FA0(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state)
  {
    if (state == 2)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10028840C();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "coreanalytics activity run", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019355F0();
      }

      [*(a1 + 32) triggerAnalyticsCollect];
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "coreanalytics activity check-in", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101935514();
    }
  }
}

id sub_1007A70C8(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v4 = [[CLInterval alloc] initWithStart:a2 end:a3];

  return [v3 addObject:v4];
}

id sub_1007A712C(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 count];
  v7 = [a3 count];
  v25[0] = @"ClientKey";
  v26[0] = [*(a1 + 32) clientKey];
  v25[1] = @"LocationCount";
  v26[1] = [NSNumber numberWithInt:v7 + v6];
  v26[2] = a2;
  v25[2] = @"Locations";
  v25[3] = @"Launches";
  v26[3] = a3;
  v21 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:[NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4] requiringSecureCoding:1 error:&v21];
  if (!v8 || v21)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v10 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v10;
      v23 = 2114;
      v24 = v21;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not archive checkpoint data, Client:%{public, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v12 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v12;
      v23 = 2114;
      v24 = v21;
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not archive checkpoint data", "{msg%{public}.0s:Could not archive checkpoint data, Client:%{public, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v8 = 0;
  }

  sub_100565518(0, &__p);
  v13 = std::string::append(&__p, "locScoreInfoReport", 0x12uLL);
  v14 = *&v13->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v13->__r_.__value_.__l + 2);
  *buf = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (buf[23] >= 0)
  {
    v15 = buf;
  }

  else
  {
    v15 = *buf;
  }

  v16 = [NSString stringWithUTF8String:v15];
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (![(NSData *)v8 writeToFile:v16 options:805306369 error:&v21])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v17 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2114;
      *&buf[20] = v18;
      v23 = 2114;
      v24 = v21;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Could not serialize reprompt checkpoint data, Client:%{public, location:escape_only}@, Error:%{public, location:escape_only}@}", buf, 0x26u);
    }
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  *(*(*(a1 + 40) + 8) + 40) = 0;
  return result;
}

void sub_1007A74C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007A7500(void *a1)
{
  if ([a1 objectForKeyedSubscript:@"Type"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([a1 objectForKeyedSubscript:@"ServiceMaskOperator"])
      {
        if (![a1 objectForKeyedSubscript:@"ServiceMaskOperator"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v14 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"ServiceMaskOperator" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v15 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v16 = [@"ServiceMaskOperator" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v16;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            v12 = v15;
            goto LABEL_29;
          }

          return result;
        }
      }

      v2 = [objc_msgSend(a1 objectForKeyedSubscript:{@"Type", "intValue"}];
      if (v2 == 2)
      {
        if (![a1 objectForKeyedSubscript:@"PhenolicLocation"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v21 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"PhenolicLocation" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v22 = [@"PhenolicLocation" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v22;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            goto LABEL_28;
          }

          return result;
        }
      }

      else
      {
        v3 = v2;
        if (v2 != 1)
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v17 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289282;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2050;
            v30 = v3;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:value-type validation of Info.plist zone received un-recongnised zone type, ZoneType:%{public, location:CLClientInterestZoneType}lld}", &v25, 0x1Cu);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v18 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v25 = 68289282;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2050;
            v30 = v3;
            v8 = "value-type validation of Info.plist zone received un-recongnised zone type";
            v9 = "{msg%{public}.0s:value-type validation of Info.plist zone received un-recongnised zone type, ZoneType:%{public, location:CLClientInterestZoneType}lld}";
            v12 = v18;
            v13 = 28;
            goto LABEL_30;
          }

          return result;
        }

        if (![a1 objectForKeyedSubscript:@"Latitude"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"Latitude" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v20 = [@"Latitude" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v20;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            goto LABEL_28;
          }

          return result;
        }

        if (![a1 objectForKeyedSubscript:@"Longitude"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v23 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"Longitude" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v24 = [@"Longitude" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v24;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
            goto LABEL_28;
          }

          return result;
        }

        if (![a1 objectForKeyedSubscript:@"Radius"] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (qword_1025D47A0 != -1)
          {
            sub_10028840C();
          }

          v4 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
          {
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = [@"Radius" UTF8String];
            v31 = 2114;
            v32 = a1;
            _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
            if (qword_1025D47A0 != -1)
            {
              sub_10192D4D0();
            }
          }

          v5 = off_1025D47A8;
          result = os_signpost_enabled(off_1025D47A8);
          if (result)
          {
            v7 = [@"Radius" UTF8String];
            v25 = 68289538;
            v26 = 0;
            v27 = 2082;
            v28 = "";
            v29 = 2082;
            v30 = v7;
            v31 = 2114;
            v32 = a1;
            v8 = "invalid zone config";
            v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
LABEL_28:
            v12 = v5;
LABEL_29:
            v13 = 38;
LABEL_30:
            _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v25, v13);
            return 0;
          }

          return result;
        }
      }

      return 1;
    }
  }

  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
  {
    v25 = 68289538;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = [@"Type" UTF8String];
    v31 = 2114;
    v32 = a1;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}", &v25, 0x26u);
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }
  }

  v5 = off_1025D47A8;
  result = os_signpost_enabled(off_1025D47A8);
  if (result)
  {
    v11 = [@"Type" UTF8String];
    v25 = 68289538;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = v11;
    v31 = 2114;
    v32 = a1;
    v8 = "invalid zone config";
    v9 = "{msg%{public}.0s:invalid zone config, ForKey:%{public, location:escape_only}s, Zone:%{public, location:escape_only}@}";
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1007A7EA8(void *a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 2114;
    v26 = a1;
    v27 = 2114;
    v28 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:check #pla zones are identical, Zone1:%{public, location:escape_only}@, Zone2:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v17 = sub_1007A80C4;
  v18 = &unk_1024705F8;
  v19 = a1;
  v20 = a2;
  v5 = [a1 objectForKeyedSubscript:{@"Type", _NSConcreteStackBlock, 3221225472}];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = @"ServiceMaskOperator" != @"Type";
  }

  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = &off_10254EF48;
  }

  v8 = [v20 objectForKeyedSubscript:@"Type"];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = @"ServiceMaskOperator" != @"Type";
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = &off_10254EF48;
  }

  v11 = [v7 isEqual:v10];
  v12 = v17(&v16, @"Latitude");
  v13 = v17(&v16, @"Longitude");
  v14 = v17(&v16, @"Radius");
  return v11 & v12 & v13 & v14 & v17(&v16, @"ServiceMaskOperator");
}

id sub_1007A80C4(uint64_t a1, __CFString *a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = @"ServiceMaskOperator" != a2;
  }

  if (v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = &off_10254EF48;
  }

  v7 = [*(a1 + 40) objectForKeyedSubscript:a2];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = @"ServiceMaskOperator" != a2;
  }

  if (v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = &off_10254EF48;
  }

  return [v6 isEqual:v9];
}

id sub_1007A8160(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  [*(v5 + 136) migrateDictionaryAtKeyPath:a2 toKeyPath:a3 forceMigrationOnAuthCollision:1];
  sub_10000EC00(__p, "ClientRemoved");
  sub_100777AC4(v5, a2, 1, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return [*(v5 + 136) setInt:1 forKey:@"Provenance" atKeyPath:a3];
}

void sub_1007A81FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007A8220(uint64_t a1, uint64_t a2, int a3)
{
  sub_10001A3E8();
  v6 = sub_10001CF04();
  v7 = [*(a1 + 136) intForKey:@"LocationIntelligenceCapabilities" atKeyPath:a2 defaultValue:0];
  v8 = [*(a1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:a2 defaultValue:0];
  v9 = [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:a2 defaultValue:0];
  v10 = [*(a1 + 136) isKeyPathRegisteredSystemService:a2];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v11 = v10 | ((v7 & 2) >> 1);
  v12 = v10 | v7;
  v13 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 376);
    v15 = *(a1 + 377);
    v16 = *(a1 + 392);
    v17 = *(a1 + 393);
    *buf = 68292098;
    v29 = 0;
    v30 = 2082;
    v31 = "";
    v32 = 2114;
    v33 = a2;
    v34 = 1026;
    *v35 = a3;
    *&v35[4] = 1026;
    *&v35[6] = v6;
    v36 = 1026;
    v37 = v10;
    v38 = 1026;
    v39 = v8;
    v40 = 1026;
    v41 = v9;
    v42 = 1026;
    v43 = v14;
    v44 = 1026;
    v45 = v15;
    v46 = 1026;
    v47 = v16;
    v48 = 1026;
    v49 = v17;
    v50 = 1026;
    v51 = v12 & 1;
    v52 = 1026;
    v53 = v11;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Check locationIntelligence, Client:%{public, location:escape_only}@, type:%{public}d, isIphone:%{public}hhd, isSystemService:%{public}hhd, LearnedRoutesAccess:%{public}d, VisitHistoryAccess:%{public}d, fAtLeastOneLearnedRouteAvailable:%{public}hhd, fAtLeastThreeUniqueVisitsAvailable:%{public}hhd, LearnedRoutesOSEligibility:%{public}hhd, VisitHistoryOSEligibility:%{public}hhd, entitledForRoutes:%{public}hhd, entitledForVisitHistory:%{public}hhd}", buf, 0x5Eu);
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  if (a3 == 2)
  {
    if (v9 - 4 > 0xFFFFFFFD)
    {
      v22 = 1;
    }

    else
    {
      v22 = *(a1 + 377);
    }

    v23 = sub_1007A8604();
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v24 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = a2;
      v34 = 1026;
      *v35 = v23;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Check locationIntelligence #pcHistorical, Client:%{public, location:escape_only}@, isTimeCorrect:%{public}hhd}", buf, 0x22u);
    }

    if ((v11 & v22) == 1)
    {
      v25 = v23 & *(a1 + 393);
      return v25 & 1;
    }

LABEL_28:
    v25 = 0;
    return v25 & 1;
  }

  if (a3 != 1)
  {
    goto LABEL_28;
  }

  if ((v8 & 0xFFFFFFFE) == 2)
  {
    v18 = 1;
  }

  else
  {
    v18 = v10;
  }

  if (v18)
  {
    goto LABEL_18;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v19 = sub_1000206B4();
  if (sub_1000B9370(v19, "LearnedRoutesTrackingStartTime", &Current))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v20 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = a2;
      v34 = 2050;
      *v35 = Current;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes TrackingStartTime exists, Client:%{public, location:escape_only}@, savedStartTime:%{public}f}", buf, 0x26u);
    }
  }

  if (*(a1 + 376))
  {
LABEL_18:
    v21 = 0;
  }

  else
  {
    v21 = CFAbsoluteTimeGetCurrent() - Current <= 3888000.0;
  }

  v25 = 0;
  if ((v12 & 1) != 0 && !v21)
  {
    v25 = *(a1 + 392);
  }

  return v25 & 1;
}

uint64_t sub_1007A8604()
{
  if (TMIsAutomaticTimeEnabled())
  {
    return 1;
  }

  v1 = TMGetReferenceTime();
  if (qword_1025D47A0 != -1)
  {
    sub_10192D4D0();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68290050;
    *&v4[4] = 2082;
    *v4 = 0;
    *&v4[6] = "";
    v5 = 2050;
    v6 = 0;
    v7 = 2050;
    v8 = 0;
    v9 = 1026;
    v10 = 0;
    v11 = 1026;
    v12 = v1 != 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical ReferenceTime Alignment, referenceTime:%{public}f, uncertainty:%{public}f, reliability:%{public}d, isReferenceTimeReceived:%{public}hhd}", buf, 0x32u);
  }

  return 0;
}

void sub_1007A8814(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v22 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    [v5 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v24 = 0;
    *&v24[8] = 0;
  }

  v6 = sub_10005AD2C((a1 + 1000), buf);
  if ((v24[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v21;
  v7 = sub_10005AFCC(v6 + 5, &v21);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v24 = 2082;
      *&v24[2] = "";
      *&v24[10] = 2082;
      *&v24[12] = "18CLPushSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v20 = sub_100018FC8(a1, v22, &xmmword_101CE6CD8);
    if (v22)
    {
      [v22 cppClientKey];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    sub_100E24D0C(__p);
    sub_1000603E0(buf, &v18, __p, v21);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    sub_1007AEC84();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_1007A8D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

id sub_1007A8E24(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v4 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = a2;
    v8 = "{msg%{public}.0s:#VisitHistoryAccess NotRelevant - invalid ckp, Client:%{public, location:escape_only}@}";
    v9 = v7;
    goto LABEL_15;
  }

  if ((sub_1007A8220(a1, v4, 2) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v8 = "{msg%{public}.0s:#VisitHistoryAccess NotRelevant - locIntl NotSupported, Client:%{public, location:escape_only}@}";
    v9 = v10;
LABEL_15:
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x1Cu);
    return 0;
  }

  v5 = [*(a1 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:v4 defaultValue:0];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v18 = 1026;
    v19 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#VisitHistoryAccess, Client:%{public, location:escape_only}@, Value:%{public}d}", &v12, 0x22u);
  }

  return v5;
}

id sub_1007A906C(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 136) registeredKeyPathForClientIdentifier:a2];
  if (([v4 isValidCKP] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v7 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = a2;
    v8 = "{msg%{public}.0s:#LearnedRoutesAccess NotRelevant - invalid ckp, Client:%{public, location:escape_only}@}";
    v9 = v7;
    goto LABEL_15;
  }

  if ((sub_1007A8220(a1, v4, 1) & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (!os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v12 = 68289282;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v8 = "{msg%{public}.0s:#LearnedRoutesAccess NotRelevant - locIntl NotSupported, Client:%{public, location:escape_only}@}";
    v9 = v10;
LABEL_15:
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x1Cu);
    return 0;
  }

  v5 = [*(a1 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:v4 defaultValue:0];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 68289538;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = v4;
    v18 = 1026;
    v19 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutesAccess, Client:%{public, location:escape_only}@, Value:%{public}d}", &v12, 0x22u);
  }

  return v5;
}

void sub_1007A92D0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289538;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 1026;
    v11 = [a2 count];
    v12 = 2082;
    v13 = [objc_msgSend(a3 "description")];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes min-criteria fetchLearnedRoutes handler, count:%{public}d, error:%{public, location:escape_only}s}", v7, 0x22u);
  }

  if (a3)
  {
    *(v5 + 384) = 0;
  }

  else if ([a2 count])
  {
    *(v5 + 376) = 1;
  }
}

void sub_1007A9400(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289538;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    *v24 = [objc_msgSend(a3 "description")];
    *&v24[8] = 1026;
    v25 = [a2 count];
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical min-criteria visits reply-handler, Error:%{public, location:escape_only}s, visits:%{public}d}", &buf, 0x22u);
  }

  if (a3)
  {
    *(v5 + 384) = 0;
  }

  else
  {
    v7 = objc_alloc_init(NSMutableSet);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(a2);
          }

          [v7 addObject:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(objc_msgSend(*(*(&v15 + 1) + 8 * i), "placeInference"), "mapItem"), "muid"))}];
        }

        v9 = [a2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    *(v5 + 377) = [v7 count] > 2;
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 count];
      v14 = *(v5 + 377);
      buf = 68289538;
      v21 = 2082;
      v22 = "";
      v23 = 1026;
      *v24 = v13;
      *&v24[4] = 1026;
      *&v24[6] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical min-criteria visits reply-handler, uniqueVisits:%{public}d, fAtLeastThreeUniqueVisitsAvailable:%{public}hhd}", &buf, 0x1Eu);
    }
  }
}

void sub_1007A9694(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [*(v3 + 136) intForKey:@"LearnedRoutesAccess" atKeyPath:a2 defaultValue:0];
  if (v4 == 3)
  {
    [*(v3 + 136) setInt:1 forKey:@"LearnedRoutesAccess" atKeyPath:a2];
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#LearnedRoutes deleted Allowed access Routine(Off), Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  if ([*(v3 + 136) intForKey:@"VisitHistoryAccess" atKeyPath:a2 defaultValue:0] == 3)
  {
    [*(v3 + 136) setInt:1 forKey:@"VisitHistoryAccess" atKeyPath:a2];
    [*(v3 + 136) removeValueForKey:@"VisitHistoryAccessAllowedTime" atKeyPath:a2];
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289282;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#pcHistorical deleted Allowed access Routine(Off), Client:%{public, location:escape_only}@}", &__p, 0x1Cu);
    }
  }

  else if (v4 != 3)
  {
    return;
  }

  [*(v3 + 136) persist];
  sub_10000EC00(&__p, "");
  sub_100018918(v3, a2, &__p);
  if (SBYTE3(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_1007A98D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007A99BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1007A9AB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1007A9AE8(_BYTE *a1, void *a2)
{
  v9 = a2;
  if ((a1[108] & 1) == 0)
  {
    v4 = *(a1 + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 80);
    v6 = a1 + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != a1 + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*a1 + 112))(a1, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_101933650();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = a1 + 8;
        if (a1[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019357CC(a1, a2);
      }
    }
  }
}

uint64_t sub_1007A9C8C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_1007AEF2C(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_1007A9E18(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1025D85F0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_1019358E0();
    a1 = v3;
  }

  v1 = *(*a1 + 96);

  return v1();
}

uint64_t sub_1007A9E9C(char *a1, int a2, int *a3, const std::string *a4)
{
  v31 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 6);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 7) >= v13)
        {
          v17 = v14;
        }

        v14 = *&v14[8 * (*(v14 + 7) < v13)];
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 7))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 8);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 8) >= v13)
        {
          v19 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 8) < v13)];
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 8))
      {
        v29 = v19;
        v26 = *(v19 + 7);
        *buf = &v31;
        v27 = sub_100036120((v19 + 40), &v31);
        std::string::operator=((v27 + 5), a4);
        *__p = 0u;
        memset(v36, 0, sizeof(v36));
        v33 = 0u;
        *v34 = 0u;
        memset(buf, 0, sizeof(buf));
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        memset(v40, 0, 27);
        v41 = 0;
        v42 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1007AF190();
        }

        if (SHIBYTE(v40[2]) < 0)
        {
          operator delete(v40[0]);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(*(&v38 + 1));
        }

        if (SBYTE7(v38) < 0)
        {
          operator delete(v37);
        }

        if ((v36[15] & 0x80000000) != 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v34[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(*&buf[24]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = (a1 + 56);
        v29 = a1 + 64;
        v21 = byte_1025D85F8;
        v28 = v13;
        *buf = &v28;
        *(sub_1001830A0((a1 + 56), &v28) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_1001830A0((a1 + 56), &v28);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v28 = *a3;
        *buf = &v28;
        v24 = sub_1001830A0(v20, &v28);
        *buf = &v31;
        v25 = sub_100036120((v24 + 5), &v31);
        std::string::operator=((v25 + 5), a4);
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410((v30 + 40), buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101933650();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101935948(a1);
    return 0;
  }

  return result;
}

void sub_1007AA2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007AA31C(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_101933650();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_101935A68(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1007AA4B0(char *a1, int a2, int *a3)
{
  v23 = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 7) >= v11)
            {
              v12 = v9;
            }

            v9 = *&v9[8 * (*(v9 + 7) < v11)];
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_1001134E4((v15 + 40), &v23);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_101933664();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v33 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v25 = 2082;
                v26 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v33 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101933664();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                (*(*a1 + 160))(buf, a1, a3);
                if (v27 >= 0)
                {
                  v21 = buf;
                }

                else
                {
                  v21 = *buf;
                }

                v28 = 136446466;
                v29 = v20;
                v30 = 2082;
                v31 = v21;
                v22 = _os_log_send_and_compose_impl();
                if (v27 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLClientManager_Type::Notification, CLClientManager_Type::NotificationData, char, CLClientManager_Type::RegInfo>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLClientManager_Type::Notification, NotificationData_T = CLClientManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLClientManager_Type::RegInfo]", "%s\n", v22);
                if (v22 != __p)
                {
                  free(v22);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_1007AA854(uint64_t a1, int *a2, std::string *this)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  std::string::operator=(this, *(v8 + 64));
  std::string::operator=(this + 1, (v9 + 24));
  std::string::operator=(this + 2, (v9 + 48));
  std::string::operator=(this + 3, (v9 + 72));
  v10 = *(v9 + 98);
  LOWORD(this[4].__r_.__value_.__l.__data_) = *(v9 + 96);
  this[4].__r_.__value_.__s.__data_[2] = v10;
  std::string::operator=((this + 104), (v9 + 104));
  std::string::operator=((this + 128), (v9 + 128));
  std::string::operator=((this + 152), (v9 + 152));
  v11 = *(v9 + 176);
  this[7].__r_.__value_.__s.__data_[10] = *(v9 + 178);
  LOWORD(this[7].__r_.__value_.__r.__words[1]) = v11;
  this[7].__r_.__value_.__r.__words[2] = *(v9 + 184);
  return 1;
}

void sub_1007AA9E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AA9F8(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101933650();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v20 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101935C90(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_101933650();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v20 = v5;
      v21 = 2048;
      v22[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101935B7C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      do
      {
        v8 = v7[5];
        if (v8 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_101933664();
            }

            v9 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v10 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v10 = *(a1 + 8);
              }

              v11 = *(v7 + 8);
              v12 = *(v8 + 7);
              *buf = 136315650;
              v20 = v10;
              v21 = 1024;
              LODWORD(v22[0]) = v11;
              WORD2(v22[0]) = 1024;
              *(v22 + 6) = v12;
              _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_101933664();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLClientManager_Type::Notification, CLClientManager_Type::NotificationData, char, CLClientManager_Type::RegInfo>::listClients() [Notification_T = CLClientManager_Type::Notification, NotificationData_T = CLClientManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLClientManager_Type::RegInfo]", "%s\n", v16);
              if (v16 != buf)
              {
                free(v16);
              }
            }

            v13 = v8[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v8[2];
                v15 = *v14 == v8;
                v8 = v14;
              }

              while (!v15);
            }

            v8 = v14;
          }

          while (v14 != v7 + 6);
        }

        v17 = v7[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v7[2];
            v15 = *v18 == v7;
            v7 = v18;
          }

          while (!v15);
        }

        v7 = v18;
      }

      while (v18 != (a1 + 88));
    }
  }
}

void sub_1007AADBC(uint64_t a1)
{
  sub_1007AE6CC(a1);

  operator delete();
}

id sub_1007AAEB4(uint64_t a1)
{
  result = [*(a1 + 32) proxyForService:@"CLClientManager"];
  qword_102659F80 = result;
  return result;
}

uint64_t sub_1007AAEE4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  sub_1007AAF48(a1, a2);
  return a1;
}

void sub_1007AAF2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AAF48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:0];
    sub_10023DC84(a1);
  }

  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  LOBYTE(v4) = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v8;
  *(a2 + 16) = v7;
  *(a2 + 32) = v6;
  v9 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = v9;
  v10 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = v10;
  v11 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v11;
  *&v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  return a1;
}

_OWORD *sub_1007AB040(_OWORD *a1, void *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = [a2 intForKey:@"Authorization" defaultValue:0];
  v5 = [a2 intForKey:@"IncidentalUseMode" defaultValue:0];
  v6 = [a2 BOOLForKey:@"AuthorizationUpgradeAvailable" defaultValue:1];
  v7 = [a2 intForKey:@"CorrectiveCompensationEnabled" defaultValue:0];
  v8 = [a2 intForKey:@"VisitHistoryAccess" defaultValue:0];
  v9 = [a2 intForKey:@"LearnedRoutesAccess" defaultValue:0];
  [a2 intForKey:@"SupportedAuthorizationMask" defaultValue:0];
  sub_1007AB17C(v12, v4, v5, v6, v7, v8, v9);
  v10 = v12[1];
  *a1 = v12[0];
  a1[1] = v10;
  return a1;
}

uint64_t sub_1007AB17C(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = 0;
  v7 = 1;
  if (a2 != 4 && a2 != 2)
  {
    if (a2 == 1)
    {
      v8 = -1;
      if (a3 == 2)
      {
        v9 = -1;
      }

      else
      {
        v9 = 0;
      }

      if (a3 == 3)
      {
        v9 = 1;
      }

      *result = -1;
      *(result + 4) = v9;
      goto LABEL_19;
    }

    v7 = 0;
  }

  if (a3 == 2)
  {
    v10 = -1;
  }

  else
  {
    v10 = 0;
  }

  if (a3 == 3)
  {
    v10 = 1;
  }

  *result = v7;
  *(result + 4) = v10;
  v11 = a4 - 1;
  if (a2 == 4)
  {
    v11 = 1;
  }

  v8 = v11;
LABEL_19:
  v12 = a5 == 1;
  if (a5 == 2)
  {
    v12 = -1;
  }

  *(result + 8) = v8;
  *(result + 12) = v12;
  if (a6 == 2)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  if (a6 == 3)
  {
    v13 = 1;
  }

  if (a7 == 2)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if (a7 == 3)
  {
    v14 = 1;
  }

  *(result + 16) = v13;
  *(result + 20) = v14;
  *(result + 24) = 0;
  return result;
}

_DWORD *sub_1007AB22C(_DWORD *result, _DWORD *a2)
{
  if (*result != *a2)
  {
    *result += *a2;
  }

  v2 = result[1];
  v3 = a2[1];
  if (v2 != v3)
  {
    result[1] = v3 + v2;
  }

  v4 = result[2];
  v5 = a2[2];
  if (v4 != v5)
  {
    result[2] = v5 + v4;
  }

  v6 = result[3];
  v7 = a2[3];
  if (v6 != v7)
  {
    result[3] = v7 + v6;
  }

  v8 = result[4];
  v9 = a2[4];
  if (v8 != v9)
  {
    result[4] = v9 + v8;
  }

  v10 = result[5];
  v11 = a2[5];
  if (v10 != v11)
  {
    result[5] = v11 + v10;
  }

  v12 = result[6];
  v13 = a2[6];
  if (v12 != v13)
  {
    result[6] = v13 + v12;
  }

  v14 = result[7];
  v15 = a2[7];
  if (v14 != v15)
  {
    result[7] = v15 + v14;
  }

  return result;
}

uint64_t sub_1007AB32C(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_10028C64C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1007AB434(a1, v7);
  }

  v8 = (32 * v2);
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  *&v18 = 32 * v2 + 32;
  v10 = *(a1 + 8);
  v11 = (32 * v2 + *a1 - v10);
  sub_1007AB47C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1007AB5C0(&v16);
  return v15;
}

void sub_1007AB420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007AB5C0(va);
  _Unwind_Resume(a1);
}

void sub_1007AB434(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1007AB47C(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v5 = *v4;
      v6 = v4[1];
      v4 += 2;
      *a4 = v5;
      a4[1] = v6;
      a4 += 2;
    }

    while (v4 != a3);
    v11 = a4;
  }

  v9 = 1;
  sub_1007AB500(a1, a2, a3);
  return sub_1007AB544(v8);
}

void sub_1007AB500(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      sub_10079B1A8(v4);
      v4 += 4;
    }

    while (v4 != a3);
  }
}

uint64_t sub_1007AB544(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007AB57C(a1);
  }

  return a1;
}

void sub_1007AB57C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    sub_10079B1A8(v1);
  }
}

uint64_t sub_1007AB5C0(uint64_t a1)
{
  sub_1007AB5F8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007AB5F8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    *(a1 + 16) = v4 - 32;
    sub_10079B1A8((v4 - 32));
  }
}

void sub_1007AB64C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007AB9A0(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007AB6A0(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10014588C(v4 - 80);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007AB724(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1007AB854(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_10001BB2C((80 * v2), a2);
  v15 = 80 * v2 + 80;
  v7 = *(a1 + 8);
  v8 = (80 * v2 + *a1 - v7);
  sub_1007AB8AC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1007AB950(&v13);
  return v12;
}

void sub_1007AB840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1007AB950(va);
  _Unwind_Resume(a1);
}

void sub_1007AB854(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

_OWORD *sub_1007AB8AC(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10001BB2C(a4, v8);
      v8 += 5;
      a4 += 5;
      v7 -= 80;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_10014588C(v6);
      v6 += 5;
    }
  }

  return result;
}

void sub_1007AB92C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 80;
    do
    {
      v4 = sub_10014588C(v4) - 80;
      v2 += 80;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AB950(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_10014588C(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007AB9A0(uint64_t a1, void *a2)
{
  for (i = *(a1 + 8); i != a2; sub_10079B1A8(i))
  {
    i -= 4;
  }

  *(a1 + 8) = a2;
}

void sub_1007AB9F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 272);
  if (v4 && *(v4 + 48) == *(a1 + 32))
  {
    sub_1007807A8(a2, *(a1 + 40));
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40) & 3;
      v7 = *(a2 + 272);
      v8 = v7 != 0;
      v9 = *(a1 + 32);
      if (v7)
      {
        v7 = *(v7 + 48);
      }

      *buf = 68290050;
      v15 = 2082;
      v14 = 0;
      v16 = "";
      v17 = 1026;
      v18 = v6;
      v19 = 1026;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt #Thunk CFUserNotification, ResponseFlag:%{public}d, HasInflightAuthPromptRequest:%{public}hhd, ThunkCFUN:%{public, location:escape_only}@, InflightCFUN:%{public, location:escape_only}@}", buf, 0x32u);
    }

    if ((~*(a1 + 40) & 3) != 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v10 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "#AuthPrompt #Thunk InflightAuthPromptRequest has unexpected state", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101935D94();
      }
    }
  }

  v11 = sub_100107858();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007ABC18;
  block[3] = &unk_102449A78;
  block[4] = *(a1 + 32);
  CFRunLoopPerformBlock(v11, kCFRunLoopCommonModes, block);
}

uint64_t sub_1007ABC28@<X0>(uint64_t result@<X0>, const void ***a2@<X1>, void ***a3@<X2>, void ***a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *result;
  v9 = *a2;
  if (*result == *a2)
  {
LABEL_15:
    v17 = *a5;
    v9 = v8;
  }

  else
  {
    v12 = *a3;
    if (*a3 != *a4)
    {
      v14 = result;
      while ((sub_100019438(v8 + 2, v12 + 2) & 0x80) == 0)
      {
        result = sub_100019438(*a3 + 2, (*v14 + 16));
        v15 = a3;
        if ((result & 0x80) == 0)
        {
          result = *v14;
          v16 = v14;
          v15 = a3;
LABEL_8:
          *v16 = *result;
        }

        *v15 = **v15;
        v8 = *v14;
        v9 = *a2;
        if (*v14 == *a2)
        {
          goto LABEL_15;
        }

        v12 = *a3;
        if (*a3 == *a4)
        {
          goto LABEL_11;
        }
      }

      result = sub_1003C9040(*a5, (*v14 + 16));
      *(a5 + 1) = result;
      v16 = a5 + 1;
      v15 = v14;
      goto LABEL_8;
    }

LABEL_11:
    v17 = *a5;
    if (v8 != v9)
    {
      v19 = *a5;
      v18 = *a5;
      do
      {
        result = sub_1003C9040(v18, v8 + 2);
        v8 = *v8;
      }

      while (v8 != v9);
      *&v17 = v19;
      *(&v17 + 1) = *result;
    }
  }

  *a6 = v9;
  *(a6 + 8) = v17;
  return result;
}

uint64_t sub_1007ABD84(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_1003C9040(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

void sub_1007ABE00(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007ABE00(a1, *a2);
    sub_1007ABE00(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_1007ABE60(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    sub_100008080(v4);
  }

  operator delete(a2);
  return v3;
}

id sub_1007ABEA0(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_10006032C(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1007ABF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ABF6C(uint64_t a1)
{
  sub_1007ABFBC(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1007ABFBC(uint64_t a1)
{
  sub_1007ABFF8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1007ABFF8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1007AC040(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_1007AC0C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024707E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1007AC13C(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_100E24D0C(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1007AC1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AC208(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = sub_1000184F4(a1, a2);
  v22 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    [v5 cppClientKey];
  }

  else
  {
    *buf = 0;
    *v24 = 0;
    *&v24[8] = 0;
  }

  v6 = sub_10005AD2C((a1 + 1000), buf);
  if ((v24[15] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = &v21;
  v7 = sub_10005AFCC(v6 + 5, &v21);
  v8 = v7[4];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0 || (v10 = v7[3]) == 0)
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192DAA4();
    }

    v12 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *v24 = 2082;
      *&v24[2] = "";
      *&v24[10] = 2082;
      *&v24[12] = "24CLTranscriptSubscription" & 0x7FFFFFFFFFFFFFFFLL;
      v25 = 2114;
      v26 = v22;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Creating persistent subscription due to demand, type:%{public, location:escape_only}s, clientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    }

    v20 = sub_100018FC8(a1, v22, &xmmword_101CE6CD8);
    if (v22)
    {
      [v22 cppClientKey];
    }

    else
    {
      v18 = 0uLL;
      v19 = 0;
    }

    sub_1001D2AE8(__p);
    sub_1000603E0(buf, &v18, __p, v21);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    sub_1007AC818();
  }

  if (!v11)
  {
    *a3 = 0;
    a3[1] = 0;
    if (qword_1025D47A0 != -1)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v13 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v14 = off_1025D47A8;
      if (os_signpost_enabled(off_1025D47A8))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "dynamic_pointer_cast must never fail in this context", "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        *v24 = 2082;
        *&v24[2] = "";
        *&v24[10] = 2082;
        *&v24[12] = "assert";
        v25 = 2081;
        v26 = "result";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:dynamic_pointer_cast must never fail in this context, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np();
      __break(1u);
LABEL_33:
      sub_10192D4D0();
    }
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  *a3 = v11;
  a3[1] = v9;
  sub_100008080(v9);
}

void sub_1007AC75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100008080(v29);
  if (*(v28 + 8))
  {
    sub_100008080(*(v28 + 8));
  }

  _Unwind_Resume(a1);
}

void *sub_1007AC8BC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470838;
  sub_1007AC9B4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1007AC938(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007AC9B4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_100D9FBA8(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1007ACA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007ACAC0(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_100F3B404(__p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = [v4 hasValueForKey:+[NSString stringWithUTF8String:](NSString atKeyPath:{"stringWithUTF8String:", v5), v3}];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1007ACB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACB8C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACC00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACC18(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACCA4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACD30(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACDBC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACE48(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACED4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACF60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007ACFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ACFEC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD078(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD104(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD190(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD21C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD2A8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007AD334(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1007AD3D8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD464(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD4F0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD57C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD608(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4 = *a2;
  v5 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 16))(v2, &v4);
  if (v5)
  {
    sub_100008080(v5);
  }
}

void sub_1007AD67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AD694(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1007AD6F0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_1007AD6F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1007ABF6C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *sub_1007AD734(void *a1, uint64_t *a2)
{
  v3 = *(*a2 + 8);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v3;
    if (v3 >= *&v7)
    {
      v10 = v3 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v3;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v3)
      {
        if (sub_10004FCC4(v12[2], *a2))
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v7)
          {
            v13 %= *&v7;
          }
        }

        else
        {
          v13 &= *&v7 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_1007AD848(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1007AC040(&v6, v3);
  }

  return v2;
}

uint64_t sub_1007AD900(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102470888;
  sub_1000350D0((a1 + 24), a2);
  *(a1 + 208) = *(a2 + 184);
  return a1;
}

void sub_1007AD988(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007ADABC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024708F8;
  sub_1007ADBB4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1007ADB38(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024708F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007ADBB4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_100F3B200(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1007ADC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1007ADCC0(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
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
    sub_1007ADF38();
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

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1007ADF14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007ADFDC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007ADFF8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1007AE070(a1, i + 2);
  }

  return a1;
}

const void **sub_1007AE070(void *a1, const void **a2)
{
  v4 = sub_100007070(a1, a2);
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
    sub_1007AE2D0();
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

  if (!sub_100019DF4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1007AE2AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1003C9358(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AE374(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1003C9358(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AE390(uint64_t a1, void **a2)
{
  result = *sub_1000F2B3C(a1, &v3, a2);
  if (!result)
  {
    sub_1007AE428();
  }

  return result;
}

void sub_1007AE4C8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007AE4E4(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    sub_1007AE58C();
  }

  return v2;
}

uint64_t sub_1007AE62C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1007AE678(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1007AE678(uint64_t a1)
{
  sub_100114ED0((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1007AE6CC(uint64_t a1)
{
  *a1 = off_102470948;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_1007AE73C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_100039BE8(result);

    operator delete();
  }

  return result;
}

void sub_1007AE7A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007AE8A8(void *a1, void *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470AA0;
  v4 = a1 + 3;
  if (*a2)
  {
    v5 = *a2 + 112;
  }

  else
  {
    v5 = 0;
  }

  sub_100BA1094(v4, v5, *a3);
  return a1;
}

void sub_1007AE938(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007AE998(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007AE998(a1, *a2);
    sub_1007AE998(a1, a2[1]);
    sub_1007AE678((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_1007AE9F4(uint64_t a1)
{
  sub_1007AD6F0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1007AEA30(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1007AEA30(a1, *a2);
    sub_1007AEA30(a1, a2[1]);
    sub_1007554A8((a2 + 4));

    operator delete(a2);
  }
}

void sub_1007AEA8C(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1003C9518(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1007AEAE8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1003C9040(a1, i + 2);
  }

  return a1;
}

uint64_t sub_1007AEB60(uint64_t a1, void **a2)
{
  v2 = *sub_1000F2B3C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1007AEC28(uint64_t **a1, void **a2)
{
  v3 = sub_10045EF04(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  sub_1007AE678((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_1007AED28(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102470AF0;
  sub_1007AEE20((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_1007AEDA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102470AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007AEE20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*(a5 + 23) < 0)
  {
    sub_100007244(v11, *a5, *(a5 + 8));
  }

  else
  {
    *v11 = *a5;
    v12 = *(a5 + 16);
  }

  if (*(a5 + 47) < 0)
  {
    sub_100007244(__p, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    *__p = *(a5 + 24);
    v14 = *(a5 + 40);
  }

  v15 = *(a5 + 48);
  sub_100E23618(a1, v7, v8, v9, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return a1;
}

void sub_1007AEF00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007AEF2C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1007AEF8C(a1);
}

id sub_1007AEF8C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D8E5 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10193626C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101935E78();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D8E5 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936364();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_1007AF26C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    sub_100039BE8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1007AF2E4@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v3 - 68) = a2;
  *(v2 + 14) = result;
  return result;
}

void sub_1007AF2FC(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

BOOL sub_1007AF32C()
{
  v1 = off_1025D47A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

_BYTE *sub_1007AF34C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_10000EC00(va, a2);
}

NSArray *sub_1007AF364()
{
  sub_10000EC00(&v2, "com.apple.findmy.people");
  sub_10000EC00(&v4, "com.apple.findmy.devices");
  sub_10000EC00(v5, "com.apple.findmy.items");
  sub_1007ABD84(qword_102659E68, &v2, 3);
  for (i = 0; i != -72; i -= 24)
  {
    if (v5[i + 23] < 0)
    {
      operator delete(*&v5[i]);
    }
  }

  __cxa_atexit(sub_10076CBC4, qword_102659E68, dword_100000000);
  v2 = 10;
  qword_102659E98 = 0;
  unk_102659EA0 = 0;
  qword_102659E90 = 0;
  sub_1006DFE88(&qword_102659E90, &v2, v3, 1uLL);
  __cxa_atexit(sub_10076CBC8, &qword_102659E90, dword_100000000);
  v2 = @"LocationTimeStarted";
  v3[0] = @"SignificantTimeStarted";
  v3[1] = @"RangeTimeStarted";
  v4 = @"BeaconRegionTimeStarted";
  result = [NSArray arrayWithObjects:&v2 count:4];
  qword_102659EA8 = result;
  return result;
}

void sub_1007AF504(_Unwind_Exception *exception_object)
{
  v3 = (v1 + 71);
  v4 = -72;
  v5 = v3;
  while (1)
  {
    v6 = *v5;
    v5 -= 24;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1007AF568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_102470B40;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_101C8D980;
  *(a1 + 80) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 175) = 0;
  *(a1 + 184) = xmmword_101C8D990;
  sub_10065DB6C(a1 + 200, a3);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v4 = objc_alloc_init(MADownloadOptions);
  *(a1 + 232) = v4;
  [v4 setDiscretionary:0];
  [*(a1 + 232) setAllowsCellularAccess:1];
  [*(a1 + 232) setAllowsExpensiveAccess:1];
  [*(a1 + 232) setRequiresPowerPluggedIn:0];
  v9 = 0;
  sub_10001CAF4(&v7);
  v5 = sub_1004FBB50(v7, "MADownloadTimeout", &v9);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v5)
  {
    [*(a1 + 232) setTimeoutIntervalForResource:v9];
  }

  *(a1 + 240) = [objc_msgSend(*(a1 + 48) "vendor")];
  return a1;
}

void sub_1007AF6BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_10065DC04(v11 + 200);
  if (*(v11 + 103) < 0)
  {
    operator delete(*v13);
  }

  if (*(v11 + 31) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007AF714(uint64_t a1)
{
  *a1 = off_102470B40;

  *(a1 + 232) = 0;
  [*(a1 + 144) invalidate];

  *(a1 + 144) = 0;
  [*(a1 + 152) invalidate];

  *(a1 + 152) = 0;
  *(a1 + 240) = 0;
  sub_10065DC04(a1 + 200);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1007AF7C8(void *a1)
{
  if (!a1)
  {
LABEL_10:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [a1 state];
  if (v2 >= 7)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67240451;
      v6[1] = [a1 state];
      v7 = 2113;
      v8 = [a1 attributes];
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLMA,isAssetOnDisk,asset has unexpected state,%{public}d,attributes,%{private}@", v6, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101936470(a1);
    }

    goto LABEL_10;
  }

  v3 = 0x6Cu >> v2;
  return v3 & 1;
}

uint64_t sub_1007AF8E8(void *a1)
{
  if (!a1)
  {
LABEL_10:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  v2 = [a1 state];
  if (v2 >= 7)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67240451;
      v6[1] = [a1 state];
      v7 = 2113;
      v8 = [a1 attributes];
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "#CLMA,isAssetPreInstalled,asset has unexpected state,%{public}d,attributes,%{private}@", v6, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101936580(a1);
    }

    goto LABEL_10;
  }

  v3 = 0x60u >> v2;
  return v3 & 1;
}

void *sub_1007AFA08(void *result)
{
  if (result)
  {
    v1 = result;
    result = sub_1007AF7C8(result);
    if (result)
    {
      return (sub_1007AF8E8(v1) ^ 1);
    }
  }

  return result;
}

uint64_t sub_1007AFA44(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    result = [objc_msgSend(result "attributes")];
    if (result)
    {
      v4 = result;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        return [a3 isEqualToString:v4];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          result = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (result)
          {
            v5 = result;
            v6 = *v15;
            do
            {
              for (i = 0; i != v5; i = i + 1)
              {
                if (*v15 != v6)
                {
                  objc_enumerationMutation(v4);
                }

                v8 = *(*(&v14 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([a3 isEqualToString:v8])
                  {
                    return 1;
                  }
                }

                else
                {
                  if (qword_1025D4870 != -1)
                  {
                    sub_101936790();
                  }

                  v9 = qword_1025D4878;
                  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
                  {
                    v10 = objc_opt_class();
                    v11 = [NSStringFromClass(v10) UTF8String];
                    *buf = 136446210;
                    v21 = v11;
                    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#CLMA,hasAttribute,unexpected attribute type in array,%{public}s", buf, 0xCu);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_1019367B8(&v18, v8, &v19);
                  }
                }
              }

              v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
              result = 0;
            }

            while (v5);
          }
        }

        else
        {
          if (qword_1025D4870 != -1)
          {
            sub_10193645C();
          }

          v12 = qword_1025D4878;
          if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            *buf = 136446210;
            v21 = [NSStringFromClass(v13) UTF8String];
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#CLMA,hasAttribute,unexpected attribute type,%{public}s", buf, 0xCu);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101936690();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1007AFD4C(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = [a1 attributes];
  v2 = [v1 objectForKey:ASAttributeContentVersion];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  return [v2 intValue];
}

uint64_t sub_1007AFD94(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = [a1 attributes];
  v2 = [v1 objectForKey:ASAttributeCompatibilityVersion];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  return [v2 intValue];
}

void sub_1007AFDDC(__int128 *a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1007AFEA8;
  v3[3] = &unk_102470B90;
  if (*(a1 + 23) < 0)
  {
    sub_100007244(&__p, *a1, *(a1 + 1));
  }

  else
  {
    __p = *a1;
    v5 = *(a1 + 2);
  }

  [a2 enumerateKeysAndObjectsUsingBlock:v3];
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }
}

void sub_1007AFE8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007AFEA8(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      *buf = 136446467;
      *&buf[4] = v7;
      *&buf[12] = 2081;
      *&buf[14] = [a2 UTF8String];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "%{public}s%{private}s dict", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019368F4(a1, a2);
    }

    if (*(a1 + 55) >= 0)
    {
      v8 = *(a1 + 55);
    }

    else
    {
      v8 = *(a1 + 40);
    }

    v9 = buf;
    sub_100070148(buf, v8 + 3);
    if (buf[23] < 0)
    {
      v9 = *buf;
    }

    if (v8)
    {
      v12 = *(a1 + 32);
      v11 = (a1 + 32);
      v10 = v12;
      if (v11[23] >= 0)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      memmove(v9, v13, v8);
    }

    *&v9[v8] = 2105376;
    if ((buf[23] & 0x80000000) != 0)
    {
      sub_100007244(__p, *buf, *&buf[8]);
    }

    else
    {
      *__p = *buf;
      v19 = *&buf[16];
    }

    sub_1007AFDDC(__p, a3);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_10193645C();
    }

    v14 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v15 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v15 = *v15;
      }

      *buf = 136446723;
      *&buf[4] = v15;
      *&buf[12] = 2081;
      *&buf[14] = [a2 UTF8String];
      *&buf[22] = 2113;
      v27 = a3;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "%{public}s%{private}s = %{private}@", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v16 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v16 = *v16;
      }

      v20 = 136446723;
      v21 = v16;
      v22 = 2081;
      v23 = [a2 UTF8String];
      v24 = 2113;
      v25 = a3;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLMobileAsset::printDict(std::string, NSDictionary *)_block_invoke", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

void sub_1007B0218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007B0254(uint64_t a1)
{
  sub_10001CAF4(buf);
  sub_10001CB4C(*buf, "MACatalogDownloadOnStartup", (a1 + 176));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MACatalogDownloadInterval", (a1 + 184));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MAAgressiveCatalogDownloadInterval", (a1 + 192));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UTF8String];
    v4 = *(a1 + 176);
    v5 = *(a1 + 184);
    v6 = *(a1 + 192);
    *buf = 136381443;
    *&buf[4] = v3;
    *&buf[12] = 1026;
    *&buf[14] = v4;
    *&buf[18] = 2050;
    *&buf[20] = v5;
    *&buf[28] = 2050;
    *&buf[30] = v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,catalog update check settings,downloadOnStatup,%{public}d,interval,%{public}lld,agressiveInterval,%{public}lld", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v26 = [*(a1 + 56) UTF8String];
    v27 = *(a1 + 176);
    v28 = *(a1 + 184);
    v29 = *(a1 + 192);
    *v37 = 136381443;
    *&v37[4] = v26;
    *&v37[12] = 1026;
    *&v37[14] = v27;
    *&v37[18] = 2050;
    *&v37[20] = v28;
    *&v37[28] = 2050;
    *&v37[30] = v29;
    v30 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::init()", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MAFirstPurgeCheckDelay", (a1 + 32));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  sub_1004FBADC(*buf, "MAPurgeCheckInterval", (a1 + 40));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v7 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 56) UTF8String];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 136381187;
    *&buf[4] = v8;
    *&buf[12] = 2050;
    *&buf[14] = v9;
    *&buf[22] = 2050;
    *&buf[24] = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,asset purge check settings,delay,%{public}lld,interval,%{public}lld", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v31 = [*(a1 + 56) UTF8String];
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    *v37 = 136381187;
    *&v37[4] = v31;
    *&v37[12] = 2050;
    *&v37[14] = v32;
    *&v37[22] = 2050;
    *&v37[24] = v33;
    v34 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::init()", "%s\n", v34);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  sub_10000EC00(buf, "com.apple.locationd.MACatalogDownload.");
  v11 = [*(a1 + 56) UTF8String];
  v12 = strlen(v11);
  v13 = std::string::append(buf, v11, v12);
  v14 = v13->__r_.__value_.__r.__words[0];
  *v37 = v13->__r_.__value_.__l.__size_;
  *&v37[7] = *(&v13->__r_.__value_.__r.__words[1] + 7);
  v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v16 = *v37;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  *(a1 + 95) = *&v37[7];
  *(a1 + 103) = v15;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_1007B0904(a1);
  v17 = [objc_msgSend(*(a1 + 48) "silo")];
  *(a1 + 144) = v17;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1007B1380;
  v36[3] = &unk_102449A78;
  v36[4] = a1;
  [v17 setHandler:v36];
  (*(*a1 + 56))(a1, 1);
  if (*(a1 + 176) == 1)
  {
    sub_1007B1A1C(a1);
  }

  else
  {
    sub_1007B1640(a1);
  }

  sub_10000EC00(buf, "com.apple.locationd.AssetPurge.");
  v18 = [*(a1 + 56) UTF8String];
  v19 = strlen(v18);
  v20 = std::string::append(buf, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[0];
  *v37 = v20->__r_.__value_.__l.__size_;
  *&v37[7] = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v23 = *v37;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23;
  *(a1 + 23) = *&v37[7];
  *(a1 + 31) = v22;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_1007B1E84(a1);
  v24 = [objc_msgSend(*(a1 + 48) "silo")];
  *(a1 + 152) = v24;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1007B2178;
  v35[3] = &unk_102449A78;
  v35[4] = a1;
  [v24 setHandler:v35];
  return [*(a1 + 152) setNextFireDelay:600.0];
}

void sub_1007B08B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, std::__shared_weak_count *a28, int a29, __int16 a30, char a31, char a32)
{
  if (a28)
  {
    sub_100008080(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B0904(uint64_t a1)
{
  v2 = sub_1000206B4();
  (*(*v2 + 936))(v2);
  sub_10004FD18(v38);
  v3 = sub_1000206B4();
  v4 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v4 = *v4;
  }

  if (sub_100185B50(v3, [NSString stringWithUTF8String:v4], v38))
  {
    v5 = sub_100023B78(v38, @"kLastAttemptedCatalogDownloadKey", (a1 + 104));
    if ((v5 & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v6 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v42 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last attempted catalog download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v24 = [*(a1 + 56) UTF8String];
        v39 = 136380675;
        v40 = v24;
        v25 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }

    if (sub_100023B78(v38, @"kLastSuccessfulCatalogDownloadKey", (a1 + 112)))
    {
      v8 = v5 ^ 1;
    }

    else
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v11 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v12 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v42 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last successful catalog download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v26 = [*(a1 + 56) UTF8String];
        v39 = 136380675;
        v40 = v26;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      v8 = 1;
    }

    if ((sub_100023B78(v38, @"kLastAttemptedAssetDownloadKey", (a1 + 120)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v13 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v42 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last attempted asset download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v28 = [*(a1 + 56) UTF8String];
        v39 = 136380675;
        v40 = v28;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      v8 = 1;
    }

    if ((sub_100023B78(v38, @"kLastSuccessfulAssetDownloadKey", (a1 + 128)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v15 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v16 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v42 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last successful asset download", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v30 = [*(a1 + 56) UTF8String];
        v39 = 136380675;
        v40 = v30;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v8 = 1;
    }

    if ((sub_100023B78(v38, @"kLastDownloadNotTriggeredKey", (a1 + 160)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v17 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v18 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v42 = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last download not triggered AWD", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v32 = [*(a1 + 56) UTF8String];
        v39 = 136380675;
        v40 = v32;
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      v8 = 1;
    }

    if ((sub_100023B78(v38, @"kLastVersionReportingAwdKey", (a1 + 168)) & 1) == 0)
    {
      if (qword_1025D4870 != -1)
      {
        sub_101936790();
      }

      v19 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
      {
        v20 = [*(a1 + 56) UTF8String];
        *buf = 136380675;
        v42 = v20;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#CLMA,%{private}s,cache did not contain time of last version reporting AWD", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101936A1C(buf);
        v34 = [*(a1 + 56) UTF8String];
        v39 = 136380675;
        v40 = v34;
        v35 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v35);
        if (v35 != buf)
        {
          free(v35);
        }
      }

      v8 = 1;
    }

    sub_10000EC00(__p, "loaded");
    sub_1007B2524(a1, __p);
    if ((v37 & 0x80000000) == 0)
    {
      if (!v8)
      {
        return sub_100005DA4(v38);
      }

      goto LABEL_56;
    }

    operator delete(__p[0]);
    if (v8)
    {
LABEL_56:
      sub_1007B23B8(a1);
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v9 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 56) UTF8String];
      *buf = 136380675;
      v42 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,no download stats available", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936A1C(buf);
      v22 = [*(a1 + 56) UTF8String];
      v39 = 136380675;
      v40 = v22;
      v23 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::loadCachedDownloadStats()", "%s\n", v23);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    sub_1007B23B8(a1);
  }

  return sub_100005DA4(v38);
}

id sub_1007B1380(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v1 + 56) UTF8String];
    v14 = 136380675;
    v15 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,agressive download check timer fired", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936A60();
  }

  if (*(v1 + 136) == 1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v4 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(v1 + 56) UTF8String];
      v14 = 136380675;
      v15 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,agressive download already scheduled", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936D30();
    }

LABEL_22:
    v9 = *(v1 + 144);
    v10 = 1.79769313e308;
    return [v9 setNextFireDelay:v10];
  }

  v6 = *(v1 + 192);
  if (CFAbsoluteTimeGetCurrent() - *(v1 + 112) > v6)
  {
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v7 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(v1 + 56) UTF8String];
      v14 = 136380675;
      v15 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,time to switch to agressive downloads", &v14, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936C40();
    }

    sub_1007B1640(v1);
    goto LABEL_22;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101936790();
  }

  v11 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(v1 + 56) UTF8String];
    v14 = 136380675;
    v15 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,not time to switch to agressive downloads", &v14, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936B50();
  }

  v9 = *(v1 + 144);
  v10 = (*(v1 + 184) / 2);
  return [v9 setNextFireDelay:v10];
}

id sub_1007B1640(uint64_t a1)
{
  v2 = *(a1 + 184);
  v3 = v2 / 2;
  if (*(a1 + 104) == 0.0)
  {
    v6 = 0;
  }

  else
  {
    v4 = *(a1 + 104) + (3 * v2 / 4);
    Current = CFAbsoluteTimeGetCurrent();
    v6 = (v4 - Current) & ~((v4 - Current) >> 63);
  }

  v7 = *(a1 + 192);
  *(a1 + 136) = CFAbsoluteTimeGetCurrent() - *(a1 + 112) > v7;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_string(v8, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION, XPC_ACTIVITY_NETWORK_TRANSFER_DIRECTION_DOWNLOAD);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, (*(a1 + 136) & 1) == 0);
  xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, v6);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_GRACE_PERIOD, v3);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v9 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 56) UTF8String];
    v11 = *(a1 + 136);
    *buf = 136381443;
    v28 = v10;
    v29 = 1026;
    v30 = v11;
    v31 = 2050;
    v32 = v6;
    v33 = 2050;
    v34 = v3;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,registering catalog download activity,agressiveDownload,%{public}d,delay,%{public}lld,gracePeriod,%{public}lld", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v15 = [*(a1 + 56) UTF8String];
    v16 = *(a1 + 136);
    v19 = 136381443;
    v20 = v15;
    v21 = 1026;
    v22 = v16;
    v23 = 2050;
    v24 = v6;
    v25 = 2050;
    v26 = v3;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::registerCatalogDownloadActivity()", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v12 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v12 = *v12;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007B266C;
  handler[3] = &unk_102470BC0;
  handler[4] = a1;
  xpc_activity_register(v12, v8, handler);
  xpc_release(v8);
  v13 = (v6 + v3);
  if (*(a1 + 136))
  {
    v13 = 1.79769313e308;
  }

  return [*(a1 + 144) setNextFireDelay:v13];
}

void sub_1007B1A1C(uint64_t a1)
{
  if ((*(a1 + 177) & 1) == 0)
  {
    *(a1 + 177) = 1;
    v19 = 0;
    v20 = &v19;
    v21 = 0x14812000000;
    v22 = sub_1000474F4;
    v23 = sub_100048458;
    v24 = &unk_10238AE8B;
    v26 = 0xBFF0000000000000;
    *v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v30 = -1;
    v31 = -2;
    v32 = -1;
    v33 = -1;
    v34 = -1;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v39 = -1;
    v40 = -1;
    v38 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v46 = -1;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = -1;
    v52 = -1;
    v53 = 0;
    __p = 0;
    v55 = 0;
    v57 = -1;
    v58 = -1;
    v56 = 0;
    v59 = 0;
    v25 = 1;
    Current = CFAbsoluteTimeGetCurrent();
    v3 = v20;
    v20[7] = Current;
    if (*(v3 + 87) < 0)
    {
      *(v3 + 9) = 19;
      v4 = *(v3 + 8);
    }

    else
    {
      v4 = (v3 + 8);
      *(v3 + 87) = 19;
    }

    strcpy(v4, "com.apple.locationd");
    v5 = v20;
    *(v20 + 23) = *(a1 + 72);
    v6 = v5[7];
    if (v6 > 0.0)
    {
      v7 = *(a1 + 104);
      if (v7 > 0.0)
      {
        *(v5 + 29) = llround((v6 - v7) / 86400.0);
      }
    }

    if (v6 > 0.0)
    {
      v8 = *(a1 + 112);
      if (v8 > 0.0)
      {
        *(v5 + 30) = llround((v6 - v8) / 86400.0);
      }
    }

    *(v5 + 132) = *(a1 + 136);
    v9 = [*(a1 + 232) description];
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v10 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 56) UTF8String];
      v12 = [v9 UTF8String];
      *buf = 136380931;
      v65 = v11;
      v66 = 2081;
      v67 = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,starting catalog download with options,%{private}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101936A1C(buf);
      v15 = [*(a1 + 56) UTF8String];
      v16 = [v9 UTF8String];
      v60 = 136380931;
      v61 = v15;
      v62 = 2081;
      v63 = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::downloadCatalog()", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v13 = *(a1 + 64);
    v14 = *(a1 + 232);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1007B285C;
    v18[3] = &unk_102470C10;
    v18[4] = &v19;
    v18[5] = a1;
    [MAAsset startCatalogDownload:v13 options:v14 then:v18];
    *(a1 + 104) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
    _Block_object_dispose(&v19, 8);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(v36);
    }

    if (SBYTE7(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }
}

void sub_1007B1E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  sub_1007B65A0(v10 + 48);
  _Unwind_Resume(a1);
}

void sub_1007B1E84(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(a1 + 40));
  xpc_dictionary_set_string(v2, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(a1 + 32));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(a1 + 40) / 2);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 56) UTF8String];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 136381443;
    v22 = v4;
    v23 = 2050;
    v24 = v5;
    v25 = 2050;
    v26 = v6 / 2;
    v27 = 2050;
    v28 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,registering asset purge activity,delay,%{public}lld,gracePeriod,%{public}lld,interval,%{public}lld", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4870 != -1)
    {
      sub_101936790();
    }

    v8 = [*(a1 + 56) UTF8String];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = 136381443;
    v14 = v8;
    v15 = 2050;
    v16 = v9;
    v17 = 2050;
    v18 = v10 / 2;
    v19 = 2050;
    v20 = v10;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLMobileAsset::registerAssetPurgeActivity()", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v7 = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    v7 = *v7;
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007B50FC;
  handler[3] = &unk_102470BC0;
  handler[4] = a1;
  xpc_activity_register(v7, v2, handler);
  xpc_release(v2);
}

id sub_1007B2178(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_1025D4870 != -1)
  {
    sub_10193645C();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(v1 + 56) UTF8String];
    v5 = 136380675;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLMA,%{private}s,periodic AWD timer fired", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101936E20();
  }

  return sub_1007B225C(v1);
}

id sub_1007B225C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_10001CAF4(&v14);
  v16 = 0;
  v3 = sub_1004FB7DC(v14, "DownloadNotTriggeredPeriod", &v16);
  LODWORD(v4) = v16;
  v5 = v4;
  if (v15)
  {
    sub_100008080(v15);
  }

  v6 = vabdd_f64(Current, *(a1 + 112));
  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = 604800.0;
  }

  if (v6 > v7 && vabdd_f64(Current, *(a1 + 160)) > v7)
  {
    sub_1007B5C2C(a1);
    *(a1 + 160) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
  }

  sub_10001CAF4(&v14);
  v16 = 0;
  v8 = sub_1004FB7DC(v14, "VersionReportingPeriod", &v16);
  LODWORD(v9) = v16;
  v10 = v9;
  if (v15)
  {
    sub_100008080(v15);
  }

  v11 = vabdd_f64(Current, *(a1 + 168));
  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 604800.0;
  }

  if (v11 > v12)
  {
    sub_1007B6288(a1);
    *(a1 + 168) = CFAbsoluteTimeGetCurrent();
    sub_1007B23B8(a1);
  }

  return [*(a1 + 152) setNextFireDelay:86400.0];
}

void sub_1007B239C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007B23B8(char *a1)
{
  sub_10004FD18(v8);
  sub_100116DD4(v8, @"kLastAttemptedCatalogDownloadKey", a1 + 104);
  sub_100116DD4(v8, @"kLastSuccessfulCatalogDownloadKey", a1 + 112);
  sub_100116DD4(v8, @"kLastAttemptedAssetDownloadKey", a1 + 120);
  sub_100116DD4(v8, @"kLastSuccessfulAssetDownloadKey", a1 + 128);
  sub_100116DD4(v8, @"kLastDownloadNotTriggeredKey", a1 + 160);
  sub_100116DD4(v8, @"kLastVersionReportingAwdKey", a1 + 168);
  v2 = sub_1000206B4();
  v3 = a1 + 80;
  if (a1[103] < 0)
  {
    v3 = *v3;
  }

  sub_1004FD4EC(v2, [NSString stringWithUTF8String:v3], v8);
  v4 = sub_1000206B4();
  (*(*v4 + 944))(v4);
  sub_10000EC00(__p, "wrote");
  sub_1007B2524(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100005DA4(v8);
}