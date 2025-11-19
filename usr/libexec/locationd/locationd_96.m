void sub_1006EDCB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006EDE54(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006EE2C0;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658FC8 != -1)
  {
    dispatch_once(&qword_102658FC8, block);
  }

  return qword_102637200;
}

uint64_t sub_1006EE150(uint64_t a1, char *a2)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v4 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349312;
    Current = CFAbsoluteTimeGetCurrent();
    v8 = 1026;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,RouteListener,navstate,%{public}d", &v6, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019132AC(a2);
  }

  return sub_1010804B8(a1 + 2664, a2);
}

void sub_1006EE284(id a1)
{
  if (objc_opt_class())
  {
    sub_10001A3E8();
    if ((sub_10003A088() & 0x10) != 0)
    {
      byte_102658FB8 = 1;
    }
  }
}

void sub_1006EE330(uint64_t a1, void *a2)
{
  v3 = sub_1006A597C(a1, "accessory", a2);
  *v3 = off_10246BCE8;
  *(v3 + 116) = 0xFFFF;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v9 = _Q0;
  *(v3 + 152) = _Q0;
  *(v3 + 168) = _Q0;
  *(v3 + 184) = _Q0;
  *(v3 + 200) = 0;
  *(v3 + 204) = 0xBFF0000000000000;
  *(v3 + 220) = 0;
  *(v3 + 212) = 0;
  *(v3 + 228) = 0;
  *(v3 + 232) = 0xBFF0000000000000;
  *(v3 + 240) = 0x7FFFFFFF;
  *(v3 + 252) = 0;
  *(v3 + 268) = 0;
  *(v3 + 244) = 0;
  *(v3 + 260) = 0;
  sub_100021ED8(v3 + 272);
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 1000) = 85;
  *(a1 + 1008) = v9;
  *(a1 + 1024) = v9;
  *(a1 + 1040) = 0xBFF0000000000000;
  sub_1005DBBE4(a1 + 1048, *(a1 + 32), sub_1006EF944, a1);
}

void sub_1006EF604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19)
{
  v24 = *(v19 + 6408);
  *(v19 + 6408) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_10001AF44(v19 + 6344, *a12);
  sub_10063A344(a13);
  sub_10063A344(v20);
  sub_10063A344(a15);
  sub_1006F7A7C(v19 + 2664);
  sub_1006F7C8C(v19 + 2056);
  if (*(v19 + 2047) < 0)
  {
    operator delete(*v22);
  }

  sub_1004906DC(a19);
  sub_100D8D8D0(v19 + 1712);
  sub_1006DF878(v19 + 1400);
  sub_1006F7EA8((v19 + 1392), 0);
  v25 = *(v19 + 1352);
  *(v19 + 1352) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(v19 + 1344);
  *(v19 + 1344) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v19 + 1336);
  *(v19 + 1336) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(v19 + 1328);
  *(v19 + 1328) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(v19 + 1320);
  *(v19 + 1320) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (*(v19 + 1319) < 0)
  {
    operator delete(*a18);
  }

  sub_1005DBD10(v19 + 1048);
  if (*(v19 + 991) < 0)
  {
    operator delete(*(v19 + 968));
  }

  if (*(v19 + 967) < 0)
  {
    operator delete(*(v19 + 944));
  }

  if (*(v19 + 943) < 0)
  {
    operator delete(*v21);
  }

  v30 = *(v19 + 800);
  if (v30)
  {
    sub_100008080(v30);
  }

  sub_1006A5E8C(v19);
  _Unwind_Resume(a1);
}

void sub_1006EF944(uint64_t a1, int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onEphemerisUpdated", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onEphemerisUpdated, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a2 == 2)
  {
    sub_1006F5CD0(a3);
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006EFB0C(uint64_t a1, __int128 *a2, int a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v23 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryConnected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289538;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "activity";
      v29 = 2050;
      v30 = a1;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryConnected, event:%{public, location:escape_only}s, this:%{public}p}", &buf, 0x26u);
    }
  }

  else
  {
    v23 = 0;
  }

  sub_10063A160(__dst, a2);
  sub_1006F16A4(a1, __dst, a3);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v23 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006EFD70(uint64_t a1, __int128 *a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v21 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryDisconnected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289538;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "activity";
      v27 = 2050;
      v28 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryDisconnected, event:%{public, location:escape_only}s, this:%{public}p}", &buf, 0x26u);
    }
  }

  else
  {
    v21 = 0;
  }

  sub_10063A160(__dst, a2);
  sub_1006F2248(a1, __dst);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(__dst[0]);
  }

  if (v21 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006EFFC4(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryNmeaReceived", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryNmeaReceived, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v5 = 0;
  }

  sub_1006F27F8(a1);
  if (v5 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0188(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryReferenceTime", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryReferenceTime, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 1369) = 1;
  [*(*(a1 + 1328) + 16) register:*(*(a1 + 1328) + 8) forNotification:0 registrationInfo:0];
  *(a1 + 2049) = 0;
  sub_1006F5304(a1);
  if (v5 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F035C(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryReferenceLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryReferenceLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 1368) = 1;
  [*(*(a1 + 1320) + 16) register:*(*(a1 + 1320) + 8) forNotification:4 registrationInfo:0];
  *(a1 + 2050) = 0;
  sub_1006F5478(a1);
  if (v5 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0530(uint64_t a1, const __CFURL *a2, double *a3, double *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryEphemerisURL", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      v19 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryEphemerisURL, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F558C(a1, a2, a3, a4);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1006F0714(id *a1)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v2 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,screen,onLocationUnavailableTimer,accessory unavailable notification sent", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191346C();
  }

  v4 = 9;
  (*(*a1 + 18))(a1, &v4, 1, 0xFFFFFFFFLL);
  return [a1[124] setNextFireDelay:1.79769313e308];
}

void sub_1006F07F8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onTimeNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onTimeNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  if (!*a2 && (*(a4 + 2049) & 1) == 0)
  {
    sub_1006F5304(a4);
  }

  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F09C8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F66A8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0C6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_1006F0CA4(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_1006F79CC(&v1, 7uLL);
}

void sub_1006F0CD8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onBatteryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onBatteryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F6804(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0EA4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F6B0C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1006F1070(uint64_t a1)
{
  *a1 = off_10246BCE8;
  if (*(a1 + 1344))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v2 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLAccessory,unregistered for app client notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLAccessoryLocationProvider::~CLAccessoryLocationProvider()", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:4];
    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:9];
    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:3];
    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:1];
  }

  v3 = *(a1 + 1352);
  if (v3)
  {
    [*(v3 + 16) unregister:*(v3 + 8) forNotification:7];
  }

  v4 = *(a1 + 1384);
  if (v4)
  {
  }

  v5 = *(a1 + 6408);
  if (v5)
  {
    [*(v5 + 16) unregister:*(v5 + 8) forNotification:2];
    v6 = *(a1 + 6408);
    *(a1 + 6408) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  sub_10001AF44(a1 + 6344, *(a1 + 6352));
  sub_10063A344(a1 + 6144);
  sub_10063A344(a1 + 5960);
  sub_10063A344(a1 + 5776);
  v7 = *(a1 + 5744);
  if (v7)
  {
    *(a1 + 5752) = v7;
    operator delete(v7);
  }

  sub_10063A344(a1 + 5512);
  sub_1006F7AC0(a1 + 2704);
  sub_100D8D8D0(a1 + 2504);
  sub_1006F7E28(a1 + 2448);
  if (*(a1 + 2087) < 0)
  {
    operator delete(*(a1 + 2064));
  }

  if (*(a1 + 2047) < 0)
  {
    operator delete(*(a1 + 2024));
  }

  sub_1004906DC(a1 + 1944);
  sub_100D8D8D0(a1 + 1712);
  sub_1003C93BC(a1 + 1640, *(a1 + 1648));
  sub_1003C93BC(a1 + 1408, *(a1 + 1416));
  sub_1006F7EA8((a1 + 1392), 0);
  v8 = *(a1 + 1352);
  *(a1 + 1352) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1344);
  *(a1 + 1344) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 1336);
  *(a1 + 1336) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 1328);
  *(a1 + 1328) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 1320);
  *(a1 + 1320) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
  }

  sub_1005DBD10(a1 + 1048);
  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  v13 = *(a1 + 800);
  if (v13)
  {
    sub_100008080(v13);
  }

  sub_1006A5E8C(a1);
  return a1;
}

void sub_1006F14A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1006F14B0(uint64_t a1)
{
  sub_1006F1070(a1);

  operator delete();
}

void sub_1006F14E8(_BYTE *a1, int a2, double a3)
{
  sub_100711B1C((a1 + 2056), a2);
  if (a2)
  {
    sub_10107C280((a1 + 2664), 0, a3);
    v7 = 9;
    (*(*a1 + 144))(a1, &v7, 1, 0xFFFFFFFFLL);
  }

  else if (a1[1370] == 1)
  {
    v6 = a1[2057];

    sub_10107C280((a1 + 2664), v6, a3);
  }
}

void sub_1006F15B8(uint64_t a1)
{
  sub_1006A5ED0(a1);
  sub_1005DD8B0(a1 + 1048);
  [*(a1 + 992) invalidate];

  *(a1 + 992) = 0;
  v2 = *(a1 + 1320);
  *(a1 + 1320) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1336);
  *(a1 + 1336) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1328);
  *(a1 + 1328) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 1360) = 0;
  qword_102658FB0 = 0;
}

void sub_1006F16A4(uint64_t a1, uint64_t a2, int a3)
{
  sub_10000EC00(__p, "CLAccessory,onAccessoryConnected");
  sub_10063861C(a2, __p);
  if ((v27 & 0x80000000) == 0)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  operator delete(__p[0]);
  if (a3)
  {
LABEL_3:
    sub_1006F0CA4(a1 + 2656);
    *(a1 + 2651) = 0;
    *(a1 + 6320) = 0;
  }

LABEL_4:
  if (*(a2 + 168) == 1)
  {
    if (sub_1006F1BBC(a1 + 5776, a2))
    {
      sub_10107FD88(a1 + 2664, a2);
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,accessory on deny list", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019140C4();
    }

    return;
  }

  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    if (*(a2 + 8) != 5)
    {
      goto LABEL_24;
    }

    v8 = *a2;
  }

  else
  {
    v8 = a2;
    if (v7 != 5)
    {
      goto LABEL_24;
    }
  }

  v9 = *v8;
  v10 = *(v8 + 4);
  if (v9 == 1819308097 && v10 == 101)
  {
    v15 = a2 + 48;
    v16 = *(a2 + 71);
    if (v16 < 0)
    {
      if (*(a2 + 56) != 17)
      {
        goto LABEL_24;
      }

      v15 = *v15;
    }

    else if (v16 != 17)
    {
      goto LABEL_24;
    }

    v17 = *v15;
    v18 = *(v15 + 8);
    v19 = *(v15 + 16);
    v21 = v17 == 0x2079616C50726143 && v18 == 0x6F74616C756D6953 && v19 == 114;
    if (v21 && *(a2 + 169) == 1 && (*(a2 + 170) & 1) != 0)
    {
      *(a1 + 2652) = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_59;
    }
  }

LABEL_24:
  *(a1 + 2652) = 0;
  if (*(a2 + 169))
  {
    if ((a3 & 1) == 0)
    {
LABEL_26:
      if (*(a1 + 1370) == 1 && sub_1006F1C98(a2, (a1 + 6144)))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v12 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,alreadyConnected", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101913E18();
        }

        return;
      }
    }

LABEL_59:
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v22 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,newAccessory connected", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913EFC();
    }

    std::string::operator=((a1 + 6144), a2);
    std::string::operator=((a1 + 6168), (a2 + 24));
    std::string::operator=((a1 + 6192), (a2 + 48));
    std::string::operator=((a1 + 6216), (a2 + 72));
    std::string::operator=((a1 + 6240), (a2 + 96));
    std::string::operator=((a1 + 6264), (a2 + 120));
    std::string::operator=((a1 + 6288), (a2 + 144));
    v23 = *(a2 + 170);
    *(a1 + 6312) = *(a2 + 168);
    *(a1 + 6314) = v23;
    sub_10107BBDC(a1 + 2664, (a1 + 6144), *(a1 + 2057));
    v24 = sub_1000081AC();
    sub_1006F1F18(a1, 0, v24);
    *(a1 + 1370) = 1;
    if (a3)
    {
      *buf = 0;
      if (sub_10000608C(a1, buf, 1))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v25 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLAccessory,location already requested before device connection, starting location", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101913FE0();
        }

        sub_1001C678C(a1);
      }
    }

    sub_1006F2158(a1);
    return;
  }

  if (*(a2 + 170) == 1 && sub_1006F1BBC(a1 + 5960, a2))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v13 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,noLocation accessory", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913D34();
    }

    v14 = *(a1 + 2656);
    *(a1 + 2656) = v14 | 0x20;
    sub_10108011C(a1 + 2664, a2, v14 | 0x20);
  }
}

void sub_1006F1BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F1BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000081AC();
  if (sub_1006F1C98(a1, a2))
  {
    v6 = *(a1 + 176);
    v5 = (a1 + 176);
    v7 = v6;
    if (v6 >= 0.0 && vabdd_f64(v4, v7) <= 28800.0)
    {
      return 0;
    }
  }

  else
  {
    std::string::operator=(a1, a2);
    std::string::operator=((a1 + 24), (a2 + 24));
    std::string::operator=((a1 + 48), (a2 + 48));
    std::string::operator=((a1 + 72), (a2 + 72));
    std::string::operator=((a1 + 96), (a2 + 96));
    std::string::operator=((a1 + 120), (a2 + 120));
    std::string::operator=((a1 + 144), (a2 + 144));
    v9 = *(a2 + 170);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = v9;
    v5 = (a1 + 176);
  }

  *v5 = v4;
  return 1;
}

BOOL sub_1006F1C98(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 3 : v7[3];
  v13 = v11 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = *(v7 + 71);
  if (v14 >= 0)
  {
    v15 = *(v7 + 71);
  }

  else
  {
    v15 = v7[7];
  }

  v16 = *(v6 + 71);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = v6[7];
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? v7 + 6 : v7[6];
  v19 = v17 >= 0 ? v6 + 6 : v6[6];
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

  v20 = *(v7 + 95);
  if (v20 >= 0)
  {
    v21 = *(v7 + 95);
  }

  else
  {
    v21 = v7[10];
  }

  v22 = *(v6 + 95);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = v6[10];
  }

  if (v21 != v22)
  {
    return 0;
  }

  v24 = v20 >= 0 ? v7 + 9 : v7[9];
  v25 = v23 >= 0 ? v6 + 9 : v6[9];
  if (memcmp(v24, v25, v21))
  {
    return 0;
  }

  v26 = *(v7 + 119);
  if (v26 >= 0)
  {
    v27 = *(v7 + 119);
  }

  else
  {
    v27 = v7[13];
  }

  v28 = *(v6 + 119);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = v6[13];
  }

  if (v27 != v28)
  {
    return 0;
  }

  v30 = v26 >= 0 ? v7 + 12 : v7[12];
  v31 = v29 >= 0 ? v6 + 12 : v6[12];
  if (memcmp(v30, v31, v27))
  {
    return 0;
  }

  v32 = *(v7 + 143);
  if (v32 >= 0)
  {
    v33 = *(v7 + 143);
  }

  else
  {
    v33 = v7[16];
  }

  v34 = *(v6 + 143);
  v35 = v34;
  if ((v34 & 0x80u) != 0)
  {
    v34 = v6[16];
  }

  if (v33 != v34)
  {
    return 0;
  }

  v36 = v32 >= 0 ? v7 + 15 : v7[15];
  v37 = v35 >= 0 ? v6 + 15 : v6[15];
  if (memcmp(v36, v37, v33))
  {
    return 0;
  }

  result = sub_1006E0DE8(v7 + 18, v6 + 18);
  if (result)
  {
    if (*(v7 + 168) == *(v6 + 168) && *(v7 + 170) == *(v6 + 170))
    {
      return *(v7 + 169) == *(v6 + 169);
    }

    return 0;
  }

  return result;
}

void sub_1006F1F18(uint64_t a1, char *a2, double a3)
{
  v4 = *(a1 + 1384);
  if (v4)
  {
    if ((a2 & 1) != 0 || ![v4 currentSession])
    {
      sub_10107F34C(a1 + 2664, 0, a3);
      sub_10107F388(a1 + 2664, 0, a3);
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v12 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134349312;
        Current = CFAbsoluteTimeGetCurrent();
        v15 = 1026;
        v16 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateCarSessionStatus,disable,force,%{public}d", &v13, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019142DC(a2);
      }
    }

    else
    {
      sub_10107F34C(a1 + 2664, 1, a3);
      if ([objc_msgSend(*(a1 + 1384) "currentSession")])
      {
        sub_10107F388(a1 + 2664, [objc_msgSend(objc_msgSend(*(a1 + 1384) "currentSession")] == 3, a3);
        v7 = [objc_msgSend(objc_msgSend(*(a1 + 1384) "currentSession")];
        *(a1 + 2651) = v7 == 3;
        if (v7 == 3)
        {
          *(a1 + 2656) |= 0x40uLL;
        }
      }

      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v8 = (a1 + 1384);
      v9 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v10 = CFAbsoluteTimeGetCurrent();
        v11 = [objc_msgSend(objc_msgSend(*v8 "currentSession")];
        v13 = 134349312;
        Current = v10;
        v15 = 1026;
        v16 = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateCarSessionStatus,enable,transportType,%{public}d", &v13, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019141A8(v8);
      }
    }
  }
}

void sub_1006F2158(uint64_t a1)
{
  v2 = sub_100CE3AE4();
  *(a1 + 1380) = v2;
  [qword_102658FB0 sendGPRMCDataStatusValues:v2];
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 1380);
    v5[0] = 67174657;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLAccessory,sendGPRMCDataStatusValues,fIsShifting,%{private}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019143E4((a1 + 1380));
  }
}

void sub_1006F2248(uint64_t a1, void *a2)
{
  sub_10000EC00(__p, "CLAccessory,onAccessoryDisconnected");
  sub_10063861C(a2, __p);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 1370) == 1 && sub_1006F1C98(a2, (a1 + 6144)))
  {
    *(a1 + 1370) = 0;
    *(a1 + 2651) = 0;
    *buf = 9;
    (*(*a1 + 144))(a1, buf, 1, 0xFFFFFFFFLL);
    sub_1006F0CA4(a1 + 2656);
    *(a1 + 6320) = 0;
    sub_1005DD8B0(a1 + 1048);
    [*(a1 + 992) setNextFireDelay:1.79769313e308];
    v4 = sub_1000081AC();
    sub_1006F1F18(a1, 1, v4);
    sub_10107C280(a1 + 2664, 0, v4);
    sub_1010804E8(a1 + 2664, (a1 + 6344), v4);
    sub_100256EE8(a1 + 2664, v4);
    sub_10107F308((a1 + 2664), *(a1 + 6336), v4, *(a1 + 6328));
    sub_10107C2BC(a1 + 2664, v4);
    *(a1 + 6368) = 0xBFF0000000000000;
    sub_10001AF44(a1 + 6344, *(a1 + 6352));
    *(a1 + 6344) = a1 + 6352;
    *(a1 + 6352) = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    memset(buf, 0, sizeof(buf));
    *(&v58 + 9) = 257;
    sub_100639FE0(a1 + 6144, buf);
    if (SBYTE7(v58) < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(*(&v55 + 1));
    }

    if (SBYTE7(v55) < 0)
    {
      operator delete(v54);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(*(&v52 + 1));
    }

    if (SBYTE7(v52) < 0)
    {
      operator delete(*&buf[48]);
    }

    if (buf[47] < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_100712994(a1 + 2544, 1, -1.0, 0.0, 0.0);
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v5 = (a1 + 4096);
    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (a1 + 6144);
      v8 = a1 + 6144;
      if (*(a1 + 6167) < 0)
      {
        v8 = *v7;
      }

      v9 = (a1 + 6192);
      if (*(a1 + 6215) < 0)
      {
        v9 = *v9;
      }

      v10 = (a1 + 6168);
      if (*(a1 + 6191) < 0)
      {
        v10 = *v10;
      }

      v11 = (a1 + 6216);
      if (*(a1 + 6239) < 0)
      {
        v11 = *v11;
      }

      v12 = (a1 + 6240);
      if (*(a1 + 6263) < 0)
      {
        v12 = *v12;
      }

      v13 = (a1 + 6264);
      v30 = v12;
      if (*(a1 + 6287) < 0)
      {
        v13 = *v13;
      }

      v14 = *(a1 + 6314);
      v15 = *(a1 + 1370);
      v16 = sub_1006F1C98(a2, v7);
      *buf = 136382723;
      *&buf[4] = v8;
      *&buf[12] = 2081;
      *&buf[14] = v9;
      *&buf[22] = 2081;
      *&buf[24] = v10;
      *&buf[32] = 2081;
      *&buf[34] = v11;
      *&buf[42] = 2081;
      *&buf[44] = v30;
      *&buf[52] = 2081;
      *&buf[54] = v13;
      *&buf[62] = 1025;
      LODWORD(v52) = v14;
      WORD2(v52) = 1026;
      *(&v52 + 6) = v15;
      v5 = (a1 + 4096);
      WORD5(v52) = 1026;
      HIDWORD(v52) = v16;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryDisconnected,not doing anything,manufacturer,%{private}s,model,%{private}s,name,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,supportsCarPlay,%{private}d,accessoryConnected,%{public}d,isSame,%{public}d", buf, 0x50u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v17 = (a1 + 6144);
      v18 = a1 + 6144;
      if (v5[2071] < 0)
      {
        v18 = *v17;
      }

      v19 = (a1 + 6192);
      if (v5[2119] < 0)
      {
        v19 = *v19;
      }

      v20 = (a1 + 6168);
      v21 = v5;
      if (v5[2095] < 0)
      {
        v20 = *v20;
      }

      v22 = (a1 + 6216);
      if (v21[2143] < 0)
      {
        v22 = *v22;
      }

      v23 = (a1 + 6240);
      if (v21[2167] < 0)
      {
        v23 = *v23;
      }

      v24 = (a1 + 6264);
      v25 = a2;
      if (v21[2191] < 0)
      {
        v24 = *v24;
      }

      v26 = v21[2218];
      v27 = *(a1 + 1370);
      v28 = sub_1006F1C98(v25, v17);
      v33 = 136382723;
      v34 = v18;
      v35 = 2081;
      v36 = v19;
      v37 = 2081;
      v38 = v20;
      v39 = 2081;
      v40 = v22;
      v41 = 2081;
      v42 = v23;
      v43 = 2081;
      v44 = v24;
      v45 = 1025;
      v46 = v26;
      v47 = 1026;
      v48 = v27;
      v49 = 1026;
      v50 = v28;
      v29 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryDisconnected(const CLAccessoryUtils::CLAccessoryInfo)", "%s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }
}

void sub_1006F27D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F27F8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_1000081AC();
  sub_1006F1F18(v4, 0, v5);
  v6 = sub_1000137E0();
  sub_1000238CC(v2, &__p);
  v229 = 0;
  __src = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[1];
  }

  v9 = sub_100635988(&__src, &v229, p_p, v8);
  if (!v9)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v11 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v281[0].__r_.__value_.__l.__data_) = 136380675;
      *(v281[0].__r_.__value_.__r.__words + 4) = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "CLAccessory,#Warning no NMEA sentence found in %{private}s", v281, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(v281);
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136380675;
      *(__dst[0].__r_.__value_.__r.__words + 4) = v13;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v14);
      goto LABEL_64;
    }

    goto LABEL_133;
  }

  if (v9 < 0)
  {
    sub_100061080();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&v281[0].__r_.__value_.__s + 23) = v9;
  memmove(v281, __src, v9);
  v281[0].__r_.__value_.__s.__data_[v10] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v281[0];
  v15 = *(v4 + 943);
  if (v15 >= 0)
  {
    v16 = *(v4 + 943);
  }

  else
  {
    v16 = *(v4 + 928);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v16 == size)
  {
    v18 = v15 >= 0 ? (v4 + 920) : *(v4 + 920);
    v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v18, v19, v16))
    {
      goto LABEL_133;
    }
  }

  std::string::operator=((v4 + 920), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[1];
  }

  if (!sub_1006358E8(v20, v21))
  {
    bzero(__str, 5uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &__p;
    }

    else
    {
      v22 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[1];
    }

    v24 = sub_1006358B0(v22, v23);
    snprintf(__str, 5uLL, "%X%X", v24 >> 4, v24 & 0xF);
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v25 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v26 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v26 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v281[0].__r_.__value_.__l.__data_) = 136380931;
      *(v281[0].__r_.__value_.__r.__words + 4) = v26;
      WORD2(v281[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&v281[0].__r_.__value_.__r.__words[1] + 6) = __str;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "CLAccessory,#Warning bad checksum for NMEA sentence '%{private}s' - expected %{public}s", v281, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(v281);
      v27 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136380931;
      *(__dst[0].__r_.__value_.__r.__words + 4) = v27;
      WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = __str;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v14);
      goto LABEL_64;
    }

    goto LABEL_133;
  }

  if (*(v4 + 2020) == 1 && *(v4 + 2016) >= 1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst[0] = __p;
    }

    std::string::append(__dst, "\n", 1uLL);
    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = __dst;
    }

    else
    {
      v28 = __dst[0].__r_.__value_.__r.__words[0];
    }

    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = __dst[0].__r_.__value_.__l.__size_;
    }

    v30 = write(*(v4 + 2016), v28, v29);
    v31 = v30 & ~(v30 >> 63);
    v32 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v32 = __dst[0].__r_.__value_.__l.__size_;
      if (v31 >= __dst[0].__r_.__value_.__l.__size_)
      {
LABEL_90:
        operator delete(__dst[0].__r_.__value_.__l.__data_);
        goto LABEL_91;
      }

      v33 = __dst[0].__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v31 >= SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_91;
      }

      v33 = __dst;
    }

    v34 = write(*(v4 + 2016), v33 + v31, v32 - v31) + v31;
    if (v34 < 0)
    {
      goto LABEL_82;
    }

    v35 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v35 = __dst[0].__r_.__value_.__l.__size_;
    }

    if (v34 < v35)
    {
LABEL_82:
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v36 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
      {
        v37 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
        v38 = __dst[0].__r_.__value_.__r.__words[0];
        v39 = __error();
        v40 = __dst;
        v41 = *v39;
        if (v37 < 0)
        {
          v40 = v38;
        }

        LODWORD(v281[0].__r_.__value_.__l.__data_) = 136380931;
        *(v281[0].__r_.__value_.__r.__words + 4) = v40;
        WORD2(v281[0].__r_.__value_.__r.__words[1]) = 1026;
        *(&v281[0].__r_.__value_.__r.__words[1] + 6) = v41;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "CLAccessory,Wrote partial,%{private}s,errno,%{public}d", v281, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019133EC(v281);
        v169 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
        v170 = __dst[0].__r_.__value_.__r.__words[0];
        v171 = __error();
        v172 = __dst;
        v173 = *v171;
        if (v169 < 0)
        {
          v172 = v170;
        }

        *__str = 136380931;
        *&__str[4] = v172;
        *&__str[12] = 1026;
        *&__str[14] = v173;
        v174 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v174);
        if (v174 != v281)
        {
          free(v174);
        }
      }
    }

    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_90;
    }
  }

LABEL_91:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = LODWORD(__p.__r_.__value_.__r.__words[1]);
  }

  v44 = sub_100635F58(__dst, v42, v43);
  v45 = v44;
  if (*(v4 + 2021) == 1)
  {
    if (v44 <= 3)
    {
      if (!v44 || v44 == 3)
      {
        sub_100C2D510(&__p);
        goto LABEL_133;
      }

      goto LABEL_128;
    }

    goto LABEL_103;
  }

  if (v44 > 3)
  {
LABEL_103:
    switch(v44)
    {
      case 4:
        *(v4 + 2656) |= 1uLL;
        sub_100C2D518(&__p, HIDWORD(__dst[1].__r_.__value_.__r.__words[2]));
        v51 = sub_100A2A9E4(v4 + 1000, __dst, SHIDWORD(__dst[1].__r_.__value_.__r.__words[1]));
        if (SHIDWORD(__dst[1].__r_.__value_.__r.__words[2]) >= 1)
        {
          v52 = [objc_msgSend(*(v4 + 32) vendor];
          memcpy(v281, __dst, 0x350uLL);
          [v52 setVehicleSpeedAssistance:v281 vehicleSpeed:v6];
        }

        if (vabdd_f64(*&__dst[0].__r_.__value_.__l.__data_, *(v4 + 2000)) > 0.5)
        {
          v53 = HIDWORD(__dst[1].__r_.__value_.__r.__words[2]) - 1;
          if ((HIDWORD(__dst[1].__r_.__value_.__r.__words[2]) - 1) <= 0x31)
          {
            sub_100021AFC(v281);
            v281[35].__r_.__value_.__l.__size_ = __dst[18].__r_.__value_.__r.__words[v53 + 2];
            *(&v281[35] + 16) = __dst[0];
            *__str = 20;
            (*(*v4 + 152))(v4, __str, v281, 0, 0xFFFFFFFFLL, 0);
            *(v4 + 2000) = __dst[0].__r_.__value_.__r.__words[0];
            sub_100311054(v281);
          }
        }

        sub_10107FA28(v4 + 2664, __dst);
        goto LABEL_129;
      case 5:
        sub_10107F3C4(v4 + 2664, &__p);
        sub_100C2D518(&__p, LODWORD(__dst[0].__r_.__value_.__r.__words[1]));
        if (SLODWORD(__dst[0].__r_.__value_.__r.__words[1]) >= 1)
        {
          v54 = [objc_msgSend(*(v4 + 32) "vendor")];
          memcpy(v281, __dst, 0x658uLL);
          [v54 setVehicleGyroAssistance:v281 vehicleGyro:v6];
        }

        goto LABEL_129;
      case 7:
        sub_10107F3C4(v4 + 2664, &__p);
        sub_100C2D518(&__p, 1);
        sub_1006F5200(v4, *&__dst[0].__r_.__value_.__l.__data_, *&__dst[0].__r_.__value_.__l.__size_);
        *(v4 + 1992) = __dst[0].__r_.__value_.__r.__words[0];
        goto LABEL_129;
    }

LABEL_128:
    sub_10107F3C4(v4 + 2664, &__p);
    sub_100C2D510(&__p);
LABEL_129:
    *(v4 + 2888) = *(v4 + 2656);
    if (sub_1000081AC() - *(v4 + 6368) > 30.0)
    {
      sub_10000EC00(v222, "");
      sub_10000DA44(v4, v222, 0);
      if (v223 < 0)
      {
        operator delete(v222[0]);
      }

      *(v4 + 6368) = sub_1000081AC();
    }

    goto LABEL_133;
  }

  v46 = (v4 + 6314);
  v47 = (v4 + 792);
  if (!v44)
  {
    *(v4 + 2656) |= 2uLL;
    if (sub_1006E0DE8((v4 + 944), &__p))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v55 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
      {
        v56 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v56 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v281[0].__r_.__value_.__l.__data_) = 136380675;
        *(v281[0].__r_.__value_.__r.__words + 4) = v56;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_ERROR, "CLAccessory,Repeated GPGGA string, %{private}s", v281, 0xCu);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_144;
      }

      sub_1019133EC(v281);
      v50 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v50 = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_307;
    }

    sub_10107F5E0(v4 + 2664, __dst);
    std::string::operator=((v4 + 944), &__p);
    sub_100C2D510(&__p);
    if (*(v4 + 1376) == 1)
    {
      v57 = 0;
      *(v4 + 1372) = 0;
      goto LABEL_154;
    }

    *v225 = 0xFFFF;
    *&v225[4] = 0uLL;
    *&v225[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v225[36] = _Q0;
    *&v225[52] = _Q0;
    *&v225[68] = _Q0;
    *&v225[84] = 0;
    v226 = 0uLL;
    *&v225[88] = 0xBFF0000000000000;
    *(&v227 + 4) = 0xBFF0000000000000;
    LODWORD(v227) = 0;
    HIDWORD(v227) = 0x7FFFFFFF;
    memset(v228, 0, 25);
    sub_100021ED8(v271);
    *(v4 + 6320) = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = &__p;
    }

    else
    {
      v71 = __p.__r_.__value_.__r.__words[0];
    }

    if (sub_100E2E708(v71, v225, v271, (v4 + 6320)))
    {
      if (sub_100298E74((v4 + 1400), (v4 + 120), (v4 + 128), 3, -1))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v72 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v281[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEFAULT, "CLAccessory,GPGGA discarded al", v281, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(v281);
          *__str = 0;
          v216 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v216);
          if (v216 != v281)
          {
            free(v216);
          }
        }

        v57 = 1;
        goto LABEL_294;
      }

      if (*(v4 + 6320) == 6)
      {
        *(v4 + 2656) |= 8uLL;
      }

      v138 = *(v4 + 1372);
      *(v4 + 1372) = v138 + 1;
      if (*v46 == 1 && *(v4 + 6400) != 1)
      {
        v57 = 0;
        if (v138 < 5 || (v138 + 1) % 0xAu)
        {
          goto LABEL_294;
        }

        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v164 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v165 = *(v4 + 1372);
          LODWORD(v281[0].__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v281[0].__r_.__value_.__r.__words[0]) = v165;
          _os_log_impl(dword_100000000, v164, OS_LOG_TYPE_DEBUG, "CLAccessory,GPGGA only accessory data ignored,numGGAWithoutRMC,%{public}d", v281, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(v281);
          v220 = *(v4 + 1372);
          *__str = 67240192;
          *&__str[4] = v220;
          v221 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v221);
          if (v221 != v281)
          {
            free(v221);
          }
        }
      }

      else if (v138 >= 5)
      {
        v139 = *(v4 + 2528);
        LODWORD(v226) = 3;
        *v228 = v139;
        *&v225[88] = 0x4024000000000000;
        sub_100021AFC(__str);
        v258 = v226;
        v259 = v227;
        v260[0] = *v228;
        *(v260 + 12) = *&v228[12];
        *&__str[32] = *&v225[32];
        v255 = *&v225[48];
        v256 = *&v225[64];
        v257 = *&v225[80];
        *__str = *v225;
        *&__str[16] = *&v225[16];
        memcpy(v261, v271, sizeof(v261));
        v140 = v272;
        v141 = v273;
        if (v273)
        {
          atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v262 = v140;
        v142 = v263;
        v263 = v141;
        if (v142)
        {
          sub_100008080(v142);
        }

        v268 = v278;
        v269[0] = v279[0];
        *(v269 + 9) = *(v279 + 9);
        v264 = v274;
        v265 = v275;
        v266 = v276;
        v267 = v277;
        if (qword_1025D48C0 != -1)
        {
          sub_1019144D0();
        }

        v143 = qword_1025D48C8;
        if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
        {
          v144 = *(v4 + 2656);
          v145 = *v46;
          LODWORD(v281[0].__r_.__value_.__l.__data_) = 136317699;
          *(v281[0].__r_.__value_.__r.__words + 4) = "CL-Accessory";
          WORD2(v281[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&v281[0].__r_.__value_.__r.__words[1] + 6) = 1;
          WORD1(v281[0].__r_.__value_.__r.__words[2]) = 2053;
          *(&v281[0].__r_.__value_.__r.__words[2] + 4) = *&v225[4];
          WORD2(v281[1].__r_.__value_.__r.__words[0]) = 2053;
          *(v281[1].__r_.__value_.__r.__words + 6) = *&v225[12];
          HIWORD(v281[1].__r_.__value_.__r.__words[1]) = 2048;
          v281[1].__r_.__value_.__r.__words[2] = *&v225[20];
          LOWORD(v281[2].__r_.__value_.__l.__data_) = 2050;
          *(v281[2].__r_.__value_.__r.__words + 2) = *&v225[44];
          WORD1(v281[2].__r_.__value_.__r.__words[1]) = 2050;
          *(&v281[2].__r_.__value_.__r.__words[1] + 4) = *&v225[60];
          WORD2(v281[2].__r_.__value_.__r.__words[2]) = 2050;
          *(&v281[2].__r_.__value_.__r.__words[2] + 6) = *&v271[24];
          HIWORD(v281[3].__r_.__value_.__r.__words[0]) = 1026;
          LODWORD(v281[3].__r_.__value_.__r.__words[1]) = *v228;
          WORD2(v281[3].__r_.__value_.__r.__words[1]) = 1026;
          *(&v281[3].__r_.__value_.__r.__words[1] + 6) = v144;
          WORD1(v281[3].__r_.__value_.__r.__words[2]) = 1026;
          HIDWORD(v281[3].__r_.__value_.__r.__words[2]) = v145;
          _os_log_impl(dword_100000000, v143, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%{public}.2f,Course,%{public}.2f,timestampGps,%{public}.2lf,GgaOnly,integrity,%{public}d,accessoryTypeBitSet,%{public}d,supportsCarPlay,%{public}d", v281, 0x60u);
        }

        if (sub_10000A100(123, 2))
        {
          sub_1019144F8(v281);
          v217 = *(v4 + 2656);
          v218 = *v46;
          v232 = 136317699;
          v233 = "CL-Accessory";
          v234 = 1024;
          v235 = 1;
          v236 = 2053;
          v237 = *&v225[4];
          v238 = 2053;
          v239 = *&v225[12];
          v240 = 2048;
          v241 = *&v225[20];
          v242 = 2050;
          v243 = *&v225[44];
          v244 = 2050;
          v245 = *&v225[60];
          v246 = 2050;
          v247 = *&v271[24];
          v248 = 1026;
          v249 = *v228;
          v250 = 1026;
          v251 = v217;
          v252 = 1026;
          v253 = v218;
          v219 = _os_log_send_and_compose_impl();
          sub_100152C7C("LOCATION", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v219);
          if (v219 != v281)
          {
            free(v219);
          }
        }

        LODWORD(v281[0].__r_.__value_.__l.__data_) = 0;
        (*(*v4 + 152))(v4, v281, __str, 0, 0xFFFFFFFFLL, 0);
        [*(v4 + 992) setNextFireDelay:5.0];
        sub_10107C534(v4 + 2664, __str, *(v4 + 6320) == 6);
        sub_100021ED8(v281);
        memcpy((v4 + 272), v281, 0x201uLL);
        v146 = *&v281[21].__r_.__value_.__r.__words[2];
        *&v281[21].__r_.__value_.__r.__words[2] = 0u;
        v147 = *(v4 + 800);
        *v47 = v146;
        if (v147)
        {
          sub_100008080(v147);
          data = v281[22].__r_.__value_.__l.__data_;
          v149 = *&v281[25].__r_.__value_.__r.__words[2];
          *(v4 + 872) = *&v281[25].__r_.__value_.__l.__data_;
          *(v4 + 888) = v149;
          *(v4 + 897) = *(&v281[26].__r_.__value_.__l.__data_ + 1);
          v150 = *&v281[23].__r_.__value_.__l.__data_;
          *(v4 + 808) = *&v281[22].__r_.__value_.__r.__words[1];
          *(v4 + 824) = v150;
          v151 = *&v281[24].__r_.__value_.__r.__words[1];
          *(v4 + 840) = *&v281[23].__r_.__value_.__r.__words[2];
          *(v4 + 856) = v151;
          if (data)
          {
            sub_100008080(data);
          }
        }

        else
        {
          v166 = *&v281[25].__r_.__value_.__r.__words[2];
          *(v4 + 872) = *&v281[25].__r_.__value_.__l.__data_;
          *(v4 + 888) = v166;
          *(v4 + 897) = *(&v281[26].__r_.__value_.__l.__data_ + 1);
          v167 = *&v281[23].__r_.__value_.__l.__data_;
          *(v4 + 808) = *&v281[22].__r_.__value_.__r.__words[1];
          *(v4 + 824) = v167;
          v168 = *&v281[24].__r_.__value_.__r.__words[1];
          *(v4 + 840) = *&v281[23].__r_.__value_.__r.__words[2];
          *(v4 + 856) = v168;
        }

        sub_100311054(__str);
        v57 = 20;
LABEL_294:
        if (v273)
        {
          sub_100008080(v273);
        }

        if (v57)
        {
          if (v57 != 20)
          {
            goto LABEL_133;
          }

          goto LABEL_129;
        }

        goto LABEL_154;
      }
    }

    v57 = 0;
    goto LABEL_294;
  }

  if (v44 != 3)
  {
    goto LABEL_128;
  }

  *(v4 + 2656) |= 4uLL;
  if (sub_1006E0DE8((v4 + 968), &__p))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v48 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
    {
      v49 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v49 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v281[0].__r_.__value_.__l.__data_) = 136380675;
      *(v281[0].__r_.__value_.__r.__words + 4) = v49;
      _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_ERROR, "CLAccessory,Repeated GPRMC string, %{private}s", v281, 0xCu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_144;
    }

    sub_1019133EC(v281);
    v50 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v50 = __p.__r_.__value_.__r.__words[0];
    }

LABEL_307:
    *__str = 136380675;
    *&__str[4] = v50;
    v175 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v175);
    if (v175 != v281)
    {
      free(v175);
    }

LABEL_144:
    sub_10107FC14(v4 + 2664, v45);
    goto LABEL_133;
  }

  if (*(v4 + 2649) == 1 && *v46 == 1 && (*(v4 + 2651) & 1) == 0)
  {
    v58 = *(v4 + 6324);
  }

  else
  {
    v58 = 0;
  }

  v59 = (*(v4 + 2650) | v58) & 1;
  if (*(v4 + 2512) != v59)
  {
    *(v4 + 2480) = 0;
    *(v4 + 2488) = 1;
  }

  *(v4 + 2512) = v59;
  std::string::operator=((v4 + 968), &__p);
  sub_100C2D510(&__p);
  v57 = 1;
  *(v4 + 1376) = 1;
LABEL_154:
  v232 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v60 = &__p;
  }

  else
  {
    v60 = __p.__r_.__value_.__r.__words[0];
  }

  if (!sub_100E2D808(v60, v4 + 116, v4 + 272, &v232, v4 + 2056))
  {
    if (v57)
    {
      ++*(v4 + 3720);
      if (qword_1025D4620 != -1)
      {
        sub_10191453C();
      }

      v62 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v63 = *(v4 + 2656);
        LODWORD(v281[0].__r_.__value_.__l.__data_) = 67240192;
        HIDWORD(v281[0].__r_.__value_.__r.__words[0]) = v63;
        _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, Fix, 0, ll, N/A,accessoryType,%{public}d", v281, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101914564(v281);
        v64 = *(v4 + 2656);
        *__str = 67240192;
        *&__str[4] = v64;
        v65 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v65);
        if (v65 != v281)
        {
          free(v65);
        }
      }
    }

    goto LABEL_129;
  }

  if (!sub_100298E74((v4 + 1400), (v4 + 120), (v4 + 128), 3, -1))
  {
    if (v57)
    {
      sub_10107F834(v4 + 2664, __dst);
    }

    v73 = sub_100CE39BC(*(v4 + 120), *(v4 + 128));
    if (*(v4 + 1380) != v73)
    {
      [qword_102658FB0 sendGPRMCDataStatusValues:v73];
      *(v4 + 1380) = v73;
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v74 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v75 = *(v4 + 1380);
        LODWORD(v281[0].__r_.__value_.__l.__data_) = 67174913;
        HIDWORD(v281[0].__r_.__value_.__r.__words[0]) = v73;
        LOWORD(v281[0].__r_.__value_.__r.__words[1]) = 1025;
        *(&v281[0].__r_.__value_.__r.__words[1] + 2) = v75;
        _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEBUG, "CLAccessory,onAccessoryNmeaReceived,sendGPRMCDataStatusValues,isShifting,%{private}d,fIsShifting,%{private}d", v281, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019133EC(v281);
        v205 = *(v4 + 1380);
        *__str = 67174913;
        *&__str[4] = v73;
        *&__str[8] = 1025;
        *&__str[10] = v205;
        v206 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v206);
        if (v206 != v281)
        {
          free(v206);
        }
      }
    }

    if ((v73 & 1) == 0 && *(v4 + 248) == 2)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v76 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v281[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEBUG, "isShiftingSupported,0,discarding", v281, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        goto LABEL_164;
      }

      goto LABEL_133;
    }

    if (qword_1025D48C0 != -1)
    {
      sub_1019144D0();
    }

    v77 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v78 = *(v4 + 120);
      v79 = *(v4 + 128);
      v80 = *(v4 + 136);
      v81 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v81 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v281[0].__r_.__value_.__l.__data_) = 136316419;
      *(v281[0].__r_.__value_.__r.__words + 4) = "NMEA";
      WORD2(v281[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&v281[0].__r_.__value_.__r.__words[1] + 6) = 0;
      WORD1(v281[0].__r_.__value_.__r.__words[2]) = 2053;
      *(&v281[0].__r_.__value_.__r.__words[2] + 4) = v78;
      WORD2(v281[1].__r_.__value_.__r.__words[0]) = 2053;
      *(v281[1].__r_.__value_.__r.__words + 6) = v79;
      HIWORD(v281[1].__r_.__value_.__r.__words[1]) = 2048;
      v281[1].__r_.__value_.__r.__words[2] = v80;
      LOWORD(v281[2].__r_.__value_.__l.__data_) = 2080;
      *(v281[2].__r_.__value_.__r.__words + 2) = v81;
      _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Sentence,%s,", v281, 0x3Au);
    }

    if (sub_10000A100(123, 2))
    {
      sub_1019144F8(v281);
      v176 = *(v4 + 120);
      v177 = *(v4 + 128);
      v178 = *(v4 + 136);
      v179 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v179 = __p.__r_.__value_.__r.__words[0];
      }

      *__str = 136316419;
      *&__str[4] = "NMEA";
      *&__str[12] = 1024;
      *&__str[14] = 0;
      *&__str[18] = 2053;
      *&__str[20] = v176;
      *&__str[28] = 2053;
      *&__str[30] = v177;
      *&__str[38] = 2048;
      *&__str[40] = v178;
      LOWORD(v255) = 2080;
      *(&v255 + 2) = v179;
      v180 = _os_log_send_and_compose_impl();
      sub_100152C7C("LOCATION", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v180);
      if (v180 != v281)
      {
        free(v180);
      }
    }

    if (*(v4 + 1368) == 1)
    {
      [*(*(v4 + 1320) + 16) unregister:*(*(v4 + 1320) + 8) forNotification:4];
      *(v4 + 1368) = 0;
    }

    if (*(v4 + 1369) == 1)
    {
      [*(*(v4 + 1328) + 16) unregister:*(*(v4 + 1328) + 8) forNotification:0];
      *(v4 + 1369) = 0;
    }

    sub_100021AFC(__str);
    *(v4 + 212) = 3;
    *(v4 + 244) = *(v4 + 2528);
    *(v4 + 204) = 0x4024000000000000;
    v270 = HIDWORD(__dst[3].__r_.__value_.__r.__words[2]);
    *(v4 + 904) = 1;
    if (*v46)
    {
      v82 = *(v4 + 2651) ? 3 : 2;
      *(v4 + 904) = v82;
      if (*(v4 + 176) >= 0.0)
      {
        v83 = *(v4 + 6384);
        if (*(v4 + 184) > v83)
        {
          v84 = *(v4 + 160);
          if (v84 >= 0.0 && v84 <= *(v4 + 6392))
          {
            if (*(v4 + 6320) != 6)
            {
              if (!sub_100635F4C(__dst, 0x200u) || HIDWORD(__dst[3].__r_.__value_.__r.__words[2]) != 69)
              {
                goto LABEL_224;
              }

              v83 = *(v4 + 6384);
            }

            *(v4 + 184) = v83;
          }
        }
      }
    }

LABEL_224:
    if (*(v4 + 2648) == 1)
    {
      v85 = *(v4 + 176);
      v86 = *(v4 + 184);
      sub_1007129B4(v4 + 2544, (v4 + 176), (v4 + 184), *(v4 + 192), *(v4 + 120), *(v4 + 128), *(v4 + 160));
      if (v85 != *(v4 + 176) || v86 != *(v4 + 184))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v87 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
        {
          v89 = *(v4 + 184);
          v88 = *(v4 + 192);
          v90 = *(v4 + 176);
          v91 = *(v4 + 120);
          v92 = *(v4 + 128);
          v93 = *(v4 + 160);
          LODWORD(v281[0].__r_.__value_.__l.__data_) = 134350849;
          *(v281[0].__r_.__value_.__r.__words + 4) = v88;
          WORD2(v281[0].__r_.__value_.__r.__words[1]) = 2050;
          *(&v281[0].__r_.__value_.__r.__words[1] + 6) = v85;
          HIWORD(v281[0].__r_.__value_.__r.__words[2]) = 2050;
          v281[1].__r_.__value_.__r.__words[0] = v90;
          LOWORD(v281[1].__r_.__value_.__r.__words[1]) = 2050;
          *(&v281[1].__r_.__value_.__r.__words[1] + 2) = v86;
          WORD1(v281[1].__r_.__value_.__r.__words[2]) = 2050;
          *(&v281[1].__r_.__value_.__r.__words[2] + 4) = v89;
          WORD2(v281[2].__r_.__value_.__r.__words[0]) = 2053;
          *(v281[2].__r_.__value_.__r.__words + 6) = v91;
          HIWORD(v281[2].__r_.__value_.__r.__words[1]) = 2053;
          v281[2].__r_.__value_.__r.__words[2] = v92;
          LOWORD(v281[3].__r_.__value_.__l.__data_) = 2050;
          *(v281[3].__r_.__value_.__r.__words + 2) = v93;
          _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_INFO, "CLAccessory,courseScreener,%{public}.2lf,prevCourse,%{public}.2lf,newCourse,%{public}.2lf,prevCourseUnc,%{public}.2lf,newCourseUnc,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf", v281, 0x52u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(v281);
          v210 = *(v4 + 184);
          v209 = *(v4 + 192);
          v211 = *(v4 + 176);
          v212 = *(v4 + 120);
          v213 = *(v4 + 128);
          v214 = *(v4 + 160);
          *v271 = 134350849;
          *&v271[4] = v209;
          *&v271[12] = 2050;
          *&v271[14] = v85;
          *&v271[22] = 2050;
          *&v271[24] = v211;
          *&v271[32] = 2050;
          *&v271[34] = v86;
          *&v271[42] = 2050;
          *&v271[44] = v210;
          *&v271[52] = 2053;
          *&v271[54] = v212;
          *&v271[62] = 2053;
          *&v271[64] = v213;
          *&v271[72] = 2050;
          *&v271[74] = v214;
          v215 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v215);
          if (v215 != v281)
          {
            free(v215);
          }
        }
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    *v225 = Current;
    if (Current - *(v4 + 1992) > 5.0)
    {
      sub_100A2AF0C(v4 + 1000, v225, *(v4 + 176), *(v4 + 160));
      sub_1006F5200(v4, Current, v95);
    }

    if (*(v4 + 1392))
    {
      sub_10001A3E8();
      v96 = sub_10001CF04();
      if (v96)
      {
        v281[3].__r_.__value_.__l.__size_ = 0;
        memset(v281, 0, 48);
        LODWORD(v281[3].__r_.__value_.__r.__words[2]) = 1;
        memset(&v281[5].__r_.__value_.__r.__words[1], 0, 17);
        v281[6].__r_.__value_.__r.__words[2] = 0xBFF0000000000000;
        v281[7].__r_.__value_.__s.__data_[0] = 0;
        v281[7].__r_.__value_.__r.__words[2] = 0xBFF0000000000000;
        v281[8].__r_.__value_.__s.__data_[0] = 0;
        __asm { FMOV            V1.2D, #-1.0 }

        *&v281[8].__r_.__value_.__r.__words[1] = _Q1;
        v281[9].__r_.__value_.__s.__data_[0] = 0;
        memset(&v281[9].__r_.__value_.__r.__words[1], 0, 56);
        LODWORD(v281[11].__r_.__value_.__r.__words[2]) = 1065353216;
        *&v281[12].__r_.__value_.__l.__data_ = 0x100000005uLL;
        *&v281[2].__r_.__value_.__r.__words[1] = *(v4 + 120);
        v98 = *(v4 + 136);
        v281[3].__r_.__value_.__r.__words[0] = *(v4 + 144);
        v281[2].__r_.__value_.__s.__data_[0] = 1;
        *&v281[4].__r_.__value_.__r.__words[2] = v98 * 1.73241161;
        *&v281[5].__r_.__value_.__l.__data_ = v98 * 1.73241161;
        *&_Q1 = *(v4 + 152);
        v99 = *(v4 + 160);
        *&v281[4].__r_.__value_.__l.__data_ = v98;
        v281[4].__r_.__value_.__l.__size_ = _Q1;
        v281[6].__r_.__value_.__l.__size_ = v99;
        v281[7].__r_.__value_.__l.__size_ = *(v4 + 176);
        v281[0].__r_.__value_.__r.__words[2] = *(v4 + 296);
        memset(v271, 0, 136);
        CLMotionActivity::getInit(v271, v96);
        v100 = *(v4 + 1392);
        v224 = 0;
        sub_1002A3400(v100, v281, v271, &v224);
        if (v281[9].__r_.__value_.__s.__data_[0] == 1)
        {
          *(v4 + 272) = *&v281[9].__r_.__value_.__r.__words[1];
          *(v4 + 288) = v281[10].__r_.__value_.__l.__data_;
        }

        sub_100134860(&v281[10].__r_.__value_.__l.__size_);
      }
    }

    if (*(v4 + 248) == 2)
    {
      *(v4 + 2656) |= 0x10uLL;
      ++*(v4 + 2916);
    }

    v102 = *(v4 + 120);
    v101 = *(v4 + 128);
    v103 = sub_100DC68A4(v4 + 1712, v4 + 116);
    if (!((*(v4 + 248) != 2) | v103 & 1))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v104 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        v105 = *(v4 + 296);
        LODWORD(v281[0].__r_.__value_.__l.__data_) = 134349056;
        *(v281[0].__r_.__value_.__r.__words + 4) = v105;
        _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_INFO, "CLAccessory,%{public}.1lf,CLAccessory,handleShiftedAccessoryData failed, shifted data sent to client", v281, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019133EC(v281);
        v207 = *(v4 + 296);
        *v271 = 134349056;
        *&v271[4] = v207;
        v208 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v208);
        if (v208 != v281)
        {
          free(v208);
        }
      }
    }

    if (*(v4 + 2652) == 1)
    {
      *(v4 + 784) = 1;
    }

    v106 = *(v4 + 228);
    v258 = *(v4 + 212);
    v259 = v106;
    v260[0] = *(v4 + 244);
    *(v260 + 12) = *(v4 + 256);
    v107 = *(v4 + 164);
    *&__str[32] = *(v4 + 148);
    v255 = v107;
    v108 = *(v4 + 196);
    v256 = *(v4 + 180);
    v257 = v108;
    v109 = *(v4 + 132);
    *__str = *(v4 + 116);
    *&__str[16] = v109;
    memcpy(v261, (v4 + 272), sizeof(v261));
    v110 = *(v4 + 792);
    v111 = *(v4 + 800);
    if (v111)
    {
      atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v262 = v110;
    v112 = v263;
    v263 = v111;
    if (v112)
    {
      sub_100008080(v112);
    }

    v113 = (v4 + 808);
    v114 = *(v4 + 888);
    v268 = *(v4 + 872);
    v269[0] = v114;
    *(v269 + 9) = *(v4 + 897);
    v115 = *(v4 + 824);
    v264 = *(v4 + 808);
    v265 = v115;
    v116 = *(v4 + 856);
    v266 = *(v4 + 840);
    v267 = v116;
    if (qword_1025D48C0 != -1)
    {
      sub_1019144D0();
    }

    v117 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v118 = *(v4 + 120);
      v119 = *(v4 + 128);
      v120 = *(v4 + 136);
      v121 = *(v4 + 160);
      v122 = *(v4 + 176);
      v123 = *(v4 + 272);
      v124 = *(v4 + 280);
      v126 = *(v4 + 288);
      v125 = *(v4 + 296);
      v127 = *(v4 + 2656);
      v128 = *(v4 + 1992);
      v129 = *(v4 + 244);
      v130 = *(v4 + 248);
      v131 = *(v4 + 784);
      LODWORD(v281[0].__r_.__value_.__l.__data_) = 136319747;
      *(v281[0].__r_.__value_.__r.__words + 4) = "CL-Accessory";
      WORD2(v281[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&v281[0].__r_.__value_.__r.__words[1] + 6) = 1;
      WORD1(v281[0].__r_.__value_.__r.__words[2]) = 2053;
      *(&v281[0].__r_.__value_.__r.__words[2] + 4) = v118;
      WORD2(v281[1].__r_.__value_.__r.__words[0]) = 2053;
      *(v281[1].__r_.__value_.__r.__words + 6) = v119;
      HIWORD(v281[1].__r_.__value_.__r.__words[1]) = 2048;
      v281[1].__r_.__value_.__r.__words[2] = v120;
      LOWORD(v281[2].__r_.__value_.__l.__data_) = 2050;
      *(v281[2].__r_.__value_.__r.__words + 2) = v121;
      WORD1(v281[2].__r_.__value_.__r.__words[1]) = 2050;
      *(&v281[2].__r_.__value_.__r.__words[1] + 4) = v122;
      WORD2(v281[2].__r_.__value_.__r.__words[2]) = 2050;
      *(&v281[2].__r_.__value_.__r.__words[2] + 6) = v125;
      HIWORD(v281[3].__r_.__value_.__r.__words[0]) = 1026;
      LODWORD(v281[3].__r_.__value_.__r.__words[1]) = v129;
      WORD2(v281[3].__r_.__value_.__r.__words[1]) = 2050;
      *(&v281[3].__r_.__value_.__r.__words[1] + 6) = v123;
      HIWORD(v281[3].__r_.__value_.__r.__words[2]) = 2050;
      v281[4].__r_.__value_.__r.__words[0] = v124;
      LOWORD(v281[4].__r_.__value_.__r.__words[1]) = 2050;
      *(&v281[4].__r_.__value_.__r.__words[1] + 2) = v126;
      WORD1(v281[4].__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v281[4].__r_.__value_.__r.__words[2]) = v103;
      LOWORD(v281[5].__r_.__value_.__l.__data_) = 2053;
      *(v281[5].__r_.__value_.__r.__words + 2) = v102;
      WORD1(v281[5].__r_.__value_.__r.__words[1]) = 2053;
      *(&v281[5].__r_.__value_.__r.__words[1] + 4) = v101;
      WORD2(v281[5].__r_.__value_.__r.__words[2]) = 1026;
      *(&v281[5].__r_.__value_.__r.__words[2] + 6) = v127;
      *&v281[6].__r_.__value_.__s.__data_[2] = 2050;
      *(v281[6].__r_.__value_.__r.__words + 4) = v128;
      WORD2(v281[6].__r_.__value_.__r.__words[1]) = 1026;
      *(&v281[6].__r_.__value_.__r.__words[1] + 6) = v130;
      WORD1(v281[6].__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v281[6].__r_.__value_.__r.__words[2]) = v131;
      _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%{public}.2f,Course,%{public}.2f,timestampGps,%{public}.2lf,integrity,%{public}d,odometer,%{public}.2f,deltaDist,%{public}.2f,deltaDistUnc,%{public}.2f,modified,%{public}d,origLL,%{sensitive}.7lf,%{sensitive}.7lf,accessoryType,%{public}d,lastHdtTime,%{public}.1lf,refFrame,%{public}d,isSimulatedOrSpoofed,%{public}d", v281, 0xA8u);
    }

    if (sub_10000A100(123, 2))
    {
      sub_1019144F8(v281);
      v181 = *(v4 + 120);
      v182 = *(v4 + 128);
      v183 = *(v4 + 136);
      v184 = *(v4 + 160);
      v185 = *(v4 + 176);
      v186 = *(v4 + 272);
      v187 = *(v4 + 280);
      v189 = *(v4 + 288);
      v188 = *(v4 + 296);
      v190 = *(v4 + 2656);
      v191 = *(v4 + 1992);
      v192 = *(v4 + 244);
      v193 = *(v4 + 248);
      v194 = *(v4 + 784);
      *v271 = 136319747;
      *&v271[4] = "CL-Accessory";
      *&v271[12] = 1024;
      *&v271[14] = 1;
      *&v271[18] = 2053;
      *&v271[20] = v181;
      *&v271[28] = 2053;
      *&v271[30] = v182;
      *&v271[38] = 2048;
      *&v271[40] = v183;
      *&v271[48] = 2050;
      *&v271[50] = v184;
      *&v271[58] = 2050;
      *&v271[60] = v185;
      *&v271[68] = 2050;
      *&v271[70] = v188;
      *&v271[78] = 1026;
      *&v271[80] = v192;
      *&v271[84] = 2050;
      *&v271[86] = v186;
      *&v271[94] = 2050;
      *&v271[96] = v187;
      *&v271[104] = 2050;
      *&v271[106] = v189;
      *&v271[114] = 1026;
      *&v271[116] = v103;
      *&v271[120] = 2053;
      *&v271[122] = v102;
      *&v271[130] = 2053;
      *&v271[132] = v101;
      *&v271[140] = 1026;
      *&v271[142] = v190;
      *&v271[146] = 2050;
      *&v271[148] = v191;
      *&v271[156] = 1026;
      *&v271[158] = v193;
      *&v271[162] = 1026;
      *&v271[164] = v194;
      v195 = _os_log_send_and_compose_impl();
      sub_100152C7C("LOCATION", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v195);
      if (v195 != v281)
      {
        free(v195);
      }
    }

    LODWORD(v281[0].__r_.__value_.__l.__data_) = 0;
    (*(*v4 + 152))(v4, v281, __str, 0, 0xFFFFFFFFLL, 0);
    [*(v4 + 992) setNextFireDelay:5.0];
    sub_10107C534(v4 + 2664, __str, *(v4 + 6320) == 6);
    sub_100021ED8(v281);
    memcpy((v4 + 272), v281, 0x201uLL);
    v132 = *&v281[21].__r_.__value_.__r.__words[2];
    *&v281[21].__r_.__value_.__r.__words[2] = 0u;
    v133 = *(v4 + 800);
    *v47 = v132;
    if (v133)
    {
      sub_100008080(v133);
      v134 = v281[22].__r_.__value_.__l.__data_;
      v135 = *&v281[25].__r_.__value_.__r.__words[2];
      *(v4 + 872) = *&v281[25].__r_.__value_.__l.__data_;
      *(v4 + 888) = v135;
      *(v4 + 897) = *(&v281[26].__r_.__value_.__l.__data_ + 1);
      v136 = *&v281[23].__r_.__value_.__l.__data_;
      *v113 = *&v281[22].__r_.__value_.__r.__words[1];
      *(v4 + 824) = v136;
      v137 = *&v281[24].__r_.__value_.__r.__words[1];
      *(v4 + 840) = *&v281[23].__r_.__value_.__r.__words[2];
      *(v4 + 856) = v137;
      if (v134)
      {
        sub_100008080(v134);
      }
    }

    else
    {
      v152 = *&v281[25].__r_.__value_.__r.__words[2];
      *(v4 + 872) = *&v281[25].__r_.__value_.__l.__data_;
      *(v4 + 888) = v152;
      *(v4 + 897) = *(&v281[26].__r_.__value_.__l.__data_ + 1);
      v153 = *&v281[23].__r_.__value_.__l.__data_;
      *v113 = *&v281[22].__r_.__value_.__r.__words[1];
      *(v4 + 824) = v153;
      v154 = *&v281[24].__r_.__value_.__r.__words[1];
      *(v4 + 840) = *&v281[23].__r_.__value_.__r.__words[2];
      *(v4 + 856) = v154;
    }

    if (qword_1025D4620 != -1)
    {
      sub_10191453C();
    }

    v155 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v156 = *(v4 + 120);
      v157 = *(v4 + 128);
      v158 = *(v4 + 136);
      v159 = *(v4 + 160);
      v160 = *(v4 + 176);
      v161 = *(v4 + 2656);
      v162 = *(v4 + 248);
      v163 = *(v4 + 192);
      LODWORD(v281[0].__r_.__value_.__l.__data_) = 134547457;
      *(v281[0].__r_.__value_.__r.__words + 4) = v156;
      WORD2(v281[0].__r_.__value_.__r.__words[1]) = 2053;
      *(&v281[0].__r_.__value_.__r.__words[1] + 6) = v157;
      HIWORD(v281[0].__r_.__value_.__r.__words[2]) = 2050;
      v281[1].__r_.__value_.__r.__words[0] = v158;
      LOWORD(v281[1].__r_.__value_.__r.__words[1]) = 2049;
      *(&v281[1].__r_.__value_.__r.__words[1] + 2) = v159;
      WORD1(v281[1].__r_.__value_.__r.__words[2]) = 2049;
      *(&v281[1].__r_.__value_.__r.__words[2] + 4) = v160;
      WORD2(v281[2].__r_.__value_.__r.__words[0]) = 1026;
      *(v281[2].__r_.__value_.__r.__words + 6) = v161;
      WORD1(v281[2].__r_.__value_.__r.__words[1]) = 1026;
      HIDWORD(v281[2].__r_.__value_.__r.__words[1]) = v162;
      LOWORD(v281[2].__r_.__value_.__r.__words[2]) = 2050;
      *(&v281[2].__r_.__value_.__r.__words[2] + 2) = v163;
      _os_log_impl(dword_100000000, v155, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f,accessoryType,%{public}d,refFrame,%{public}d,timestamp,%{public}.2lf", v281, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914564(v281);
      v196 = *(v4 + 120);
      v197 = *(v4 + 128);
      v198 = *(v4 + 136);
      v199 = *(v4 + 160);
      v200 = *(v4 + 176);
      v201 = *(v4 + 2656);
      v202 = *(v4 + 248);
      v203 = *(v4 + 192);
      *v271 = 134547457;
      *&v271[4] = v196;
      *&v271[12] = 2053;
      *&v271[14] = v197;
      *&v271[22] = 2050;
      *&v271[24] = v198;
      *&v271[32] = 2049;
      *&v271[34] = v199;
      *&v271[42] = 2049;
      *&v271[44] = v200;
      *&v271[52] = 1026;
      *&v271[54] = v201;
      *&v271[58] = 1026;
      *&v271[60] = v202;
      *&v271[64] = 2050;
      *&v271[66] = v203;
      v204 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v204);
      if (v204 != v281)
      {
        free(v204);
      }
    }

    sub_100311054(__str);
    goto LABEL_129;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v61 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v281[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "CLAccessory,GPRMC discarded al", v281, 2u);
  }

  if (sub_10000A100(121, 2))
  {
LABEL_164:
    sub_1019133EC(v281);
    *__str = 0;
    v14 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v14);
LABEL_64:
    if (v14 != v281)
    {
      free(v14);
    }
  }

LABEL_133:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1006F50C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (STACK[0x990])
  {
    sub_100008080(STACK[0x990]);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006F5200(double *a1, double a2, double a3)
{
  if (vabdd_f64(a2, a1[251]) > 0.5)
  {
    sub_100021AFC(v7);
    v10 = a3;
    v11 = a2;
    v6 = 21;
    (*(*a1 + 152))(a1, &v6, v7, 0, 0xFFFFFFFFLL, 0);
    a1[251] = a2;

    if (v14)
    {
      sub_100008080(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v9)
    {
      sub_100008080(v9);
    }

    if (v8)
    {
      sub_100008080(v8);
    }
  }
}

void sub_1006F52F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1006F5304(uint64_t a1)
{
  v5 = 0.0;
  if ([*(a1 + 1360) syncgetReferenceTime:&v5])
  {
    v2 = [qword_102658FB0 sendReferenceTime:v5];
    *(a1 + 2049) = v2;
    if (v2)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v3 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v7 = v5;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "sent reference time %.3f to accessory", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101914684(&v5);
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning no reference time available, not sending reference time", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019145A8();
    }
  }
}

void sub_1006F5478(uint64_t a1)
{
  if (sub_10003845C() == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "vendor")];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1006F626C;
    v4[3] = &unk_10246BE20;
    v4[4] = a1;
    [v2 fetchLocationWithReply:v4];
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning location services is disabled, not sending reference location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191477C();
    }
  }
}

void sub_1006F558C(uint64_t a1, CFURLRef anURL, double *a3, double *a4)
{
  v7 = CFURLGetString(anURL);
  sub_1000238CC(v7, v34);
  sub_1006F5BAC(v34, &v44);
  v8 = *(a1 + 1319);
  if (v8 >= 0)
  {
    v9 = (a1 + 1296);
  }

  else
  {
    v9 = *(a1 + 1296);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 1319);
  }

  else
  {
    v10 = *(a1 + 1304);
  }

  v11 = std::string::insert(&v44, 0, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v33 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v13 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v14 = v34;
    if (v35 < 0)
    {
      v14 = v34[0];
    }

    v15 = __p;
    if (v33 < 0)
    {
      v15 = __p[0];
    }

    v16 = *a3;
    v17 = *a4;
    LODWORD(v44.__r_.__value_.__l.__data_) = 136381443;
    *(v44.__r_.__value_.__r.__words + 4) = v14;
    WORD2(v44.__r_.__value_.__r.__words[1]) = 2081;
    *(&v44.__r_.__value_.__r.__words[1] + 6) = v15;
    HIWORD(v44.__r_.__value_.__r.__words[2]) = 2050;
    v45 = v16;
    v46 = 2050;
    v47 = v17;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLAccessory,ephemeris download requested at %{private}s to %{private}s (refresh %{public}.3fs expire %{public}.3fs)", &v44, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019133EC(&v44);
    v23 = v34;
    if (v35 < 0)
    {
      v23 = v34[0];
    }

    v24 = __p;
    if (v33 < 0)
    {
      v24 = __p[0];
    }

    v25 = *a3;
    v26 = *a4;
    v36 = 136381443;
    v37 = v23;
    v38 = 2081;
    v39 = *&v24;
    v40 = 2050;
    v41 = v25;
    v42 = 2050;
    v43 = v26;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryEphemerisURL(const CFURLRef, const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v27);
    if (v27 != &v44)
    {
      free(v27);
    }
  }

  sub_1005DD8B0(a1 + 1048);
  if (v35 >= 0)
  {
    v18 = v34;
  }

  else
  {
    v18 = v34[0];
  }

  if (v33 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v44.__r_.__value_.__r.__words[0] = 0x404E000000000000;
  if ((sub_1005DCFEC(a1 + 1048, v18, v19, &v44) & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v20 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v44.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "CLAccessory,could not set up ephemeris updater", &v44, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019133EC(&v44);
      LOWORD(v36) = 0;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryEphemerisURL(const CFURLRef, const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v30);
      if (v30 != &v44)
      {
        free(v30);
      }
    }
  }

  sub_100254C0C(a1 + 1048, a4, a3);
  v31 = 0.0;
  if (*a4 >= 1.79769313e308)
  {
    v44.__r_.__value_.__r.__words[0] = CFAbsoluteTimeGetCurrent();
    sub_1005DD610(a1 + 1048, &v44);
  }

  else if (sub_100256298(a1 + 1048, &v31) && CFAbsoluteTimeGetCurrent() - v31 < *a4)
  {
    sub_1006F5CD0(a1);
    goto LABEL_42;
  }

  sub_1005DDEF8(a1 + 1048, &v31);
  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v21 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v22 = v34;
    if (v35 < 0)
    {
      v22 = v34[0];
    }

    LODWORD(v44.__r_.__value_.__l.__data_) = 136380931;
    *(v44.__r_.__value_.__r.__words + 4) = v22;
    WORD2(v44.__r_.__value_.__r.__words[1]) = 2050;
    *(&v44.__r_.__value_.__r.__words[1] + 6) = v31;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLAccessory,waiting for %{private}s download at %{public}.3f", &v44, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019133EC(&v44);
    v28 = v34;
    if (v35 < 0)
    {
      v28 = v34[0];
    }

    v36 = 136380931;
    v37 = v28;
    v38 = 2050;
    v39 = v31;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryEphemerisURL(const CFURLRef, const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v29);
    if (v29 != &v44)
    {
      free(v29);
    }
  }

LABEL_42:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (v35 < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_1006F5B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006F5BAC@<X0>(char *result@<X0>, std::string *a2@<X8>)
{
  if (result[23] < 0)
  {
    result = sub_100007244(a2, *result, *(result + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *result;
    a2->__r_.__value_.__r.__words[2] = *(result + 2);
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v5 = 0;
    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    while (2)
    {
      v7 = (v6 + size);
      v8 = &v5[v6];
LABEL_11:
      v9 = 0;
      while (*v8 != asc_101E2AE3F[v9])
      {
        if (++v9 == 31)
        {
          if (++v8 != v7)
          {
            goto LABEL_11;
          }

          return result;
        }
      }

      if (v8 != v7)
      {
        v10 = &v8[-v6];
        if (&v8[-v6] != -1)
        {
          result = std::string::replace(a2, &v8[-v6], 1uLL, 1uLL, 95);
          v5 = v10 + 1;
          size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v6 = (size & 0x80u) == 0 ? a2 : a2->__r_.__value_.__r.__words[0];
          if ((size & 0x80u) != 0)
          {
            size = a2->__r_.__value_.__l.__size_;
          }

          if (size > v5)
          {
            continue;
          }
        }
      }

      break;
    }
  }

  return result;
}

void sub_1006F5CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F5CD0(uint64_t a1)
{
  v28 = 0;
  if (sub_100256298(a1 + 1048, &v28))
  {
    sub_1005DDE24(a1 + 1048, __p);
    if (v38 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    v3 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v2, 0x8000100u, kCFAllocatorNull);
    if (v38 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v3, kCFURLPOSIXPathStyle, 0);
    v5 = [NSInputStream inputStreamWithURL:v4];
    v6 = v5;
    if (v5)
    {
      [(NSInputStream *)v5 open];
      v7 = +[NSMutableData data];
      if ([(NSInputStream *)v6 hasBytesAvailable])
      {
        do
        {
          v8 = [(NSInputStream *)v6 read:__p maxLength:1024];
          if (v8 >= 1)
          {
            [v7 appendBytes:__p length:v8];
          }

          v9 = [(NSInputStream *)v6 hasBytesAvailable];
          if (v8 >= 0)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        while ((v10 & 1) != 0);
      }

      [(NSInputStream *)v6 close];
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v13 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(v3, __p);
        v14 = v38 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "could not create input stream for ephemeris file, %{public}s", buf, 0xCu);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101914978();
      }

      v7 = 0;
    }

    CFRelease(v3);
    CFRelease(v4);
    if ([v7 length])
    {
      v15 = [qword_102658FB0 sendEphemeris:v7];
      *(a1 + 2048) = v15;
      if (v15)
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v16 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          sub_1005DDD50(a1 + 1048, __p);
          v17 = v38;
          v18 = __p[0];
          v19 = [v7 length];
          v20 = __p;
          if (v17 < 0)
          {
            v20 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v20;
          v30 = 2048;
          v31 = v19;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "sent ephemeris data %s (%lu bytes) to accessory", buf, 0x16u);
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(__p);
          sub_1005DDD50(a1 + 1048, buf);
          v21 = v32;
          v22 = *buf;
          v23 = [v7 length];
          v24 = buf;
          if (v21 < 0)
          {
            v24 = v22;
          }

          v33 = 136315394;
          v34 = v24;
          v35 = 2048;
          v36 = v23;
          v25 = _os_log_send_and_compose_impl();
          if (v32 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::sendReferenceEphemeris()", "%s\n", v25);
          if (v25 != __p)
          {
            free(v25);
          }
        }
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v26 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        sub_1005DDE24(a1 + 1048, __p);
        v27 = v38 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "could not create data from file %{public}s", buf, 0xCu);
        if (v38 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101914AA0();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v11 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1005DDD50(a1 + 1048, __p);
      v12 = v38 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning ephemeris %s not available", buf, 0xCu);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914858();
    }
  }
}

void sub_1006F6230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F626C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  (*(a3 + 16))(v9, a3);
  if (a2 && v12 >= 0.0)
  {
    v5 = [qword_102658FB0 sendReferenceTime:v13 locationLatitude:v10 longitude:v11 accuracy:v12];
    *(v4 + 2050) = v5;
    if (v5)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v6 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134546177;
        v21 = v10;
        v22 = 2053;
        v23 = v11;
        v24 = 2048;
        v25 = v12;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "sent reference pos <%{sensitive}.8f,%{sensitive}.8f> accuracy %.2f to accessory", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v14 = 134546177;
        v15 = v10;
        v16 = 2053;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        v7 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::sendReferenceLocation()_block_invoke", "%s\n", v7);
        if (v7 != buf)
        {
          free(v7);
        }
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v8 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning no reference location available, not sending reference location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914CD8();
    }
  }
}

id *sub_1006F64F0(id *result, uint64_t a2)
{
  if (*(a2 + 96) == 3 && *(a2 + 516) == 1)
  {
    v3 = result;
    if (qword_1025D48C0 != -1)
    {
      sub_101914EA0();
    }

    v4 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a2 + 4);
      v6 = *(a2 + 12);
      v7 = *(a2 + 20);
      v8 = *(a2 + 44);
      v9 = *(a2 + 60);
      v10 = *(a2 + 184);
      v11 = *(a2 + 128);
      v12 = 136317187;
      v13 = "CL-AccessoryPropagated";
      v14 = 1024;
      v15 = 1;
      v16 = 2053;
      v17 = v5;
      v18 = 2053;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%.2f,Course,%.2f,timestampGps,%.2lf,GgaOnly,integrity,%d", &v12, 0x54u);
    }

    if (sub_10000A100(123, 2))
    {
      sub_101914EB4(a2);
    }

    v12 = 0;
    (*(*v3 + 19))(v3, &v12, a2, 0, 0xFFFFFFFFLL, 0);
    return [v3[124] setNextFireDelay:5.0];
  }

  return result;
}

void sub_1006F66A8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4 && *(a4 + 188) != 1)
  {
    sub_1006F6794(a1 + 2056);
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,NmeaScreener reset", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915024();
    }
  }
}

__n128 sub_1006F6794(uint64_t a1)
{
  *(a1 + 72) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 88) = result;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = result;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = result;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 360) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 1;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0xBFF0000000000000;
  *(a1 + 472) = 50;
  return result;
}

void sub_1006F6804(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 7)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a4 + 9);
      v9 = *(a4 + 12);
      v15 = 134349568;
      v16 = Current;
      v17 = 1026;
      v18 = v8;
      v19 = 1026;
      v20 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,ReceivedBatteryNotification,connected,%{public}d,type,%{public}d", &v15, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915280(a4);
    }

    v10 = *(a4 + 9);
    v11 = *(a1 + 6328);
    if (v10 != 1 || v11 >= 0.0)
    {
      if (v11 <= 0.0 || *(a1 + 6324) != 1)
      {
        goto LABEL_16;
      }

      if (*(a1 + 6336) == *(a4 + 12))
      {
        if (v10)
        {
          goto LABEL_16;
        }

        v14 = sub_1000081AC();
        sub_10107F308((a1 + 2664), *(a1 + 6336), v14, *(a1 + 6328));
        v12 = -1.0;
LABEL_11:
        *(a1 + 6328) = v12;
LABEL_16:
        *(a1 + 6324) = *(a4 + 9);
        *(a1 + 6336) = *(a4 + 12);
        return;
      }

      v13 = sub_1000081AC();
      sub_10107F308((a1 + 2664), *(a1 + 6336), v13, *(a1 + 6328));
    }

    v12 = sub_1000081AC();
    goto LABEL_11;
  }
}

uint64_t *sub_1006F69A8(uint64_t a1, __int32 a2, int a3)
{
  if (a3 == 1)
  {
    if (a2)
    {
      [*(a1 + 992) nextFireDelay];
      if (v6 > 0.02)
      {
        v7 = (a1 + 992);
        [*(a1 + 992) nextFireDelay];
        if (v8 <= 5.0)
        {
          if (qword_1025D45E0 != -1)
          {
            sub_1019131A0();
          }

          v9 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
          {
            [*v7 nextFireDelay];
            v12[0] = 67240448;
            v12[1] = 1;
            v13 = 2050;
            v14 = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,screen,nmea log rejected, notify location is unavailable from accessory,sending unavailable notification,locTypeUsedForScreening,%{public}d,nextFireDelay,%{public}.2lf", v12, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191539C((a1 + 992));
          }

          [*v7 setNextFireDelay:0.02];
        }
      }
    }
  }

  return sub_101080578(a1 + 2664, a2, a3);
}

void sub_1006F6B0C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v7 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
  {
    v8 = *a3;
    v9 = *(a1 + 6384);
    v10 = *(a1 + 6392);
    *buf = 67240704;
    *&buf[4] = v8;
    *&buf[8] = 2050;
    *&buf[10] = v9;
    *&buf[18] = 2050;
    *&buf[20] = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLAccessory,MA-OTA,notification,%{public}d,courseUnc,%{public}.1lf,speedThreshold,%{public}.1lf", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019154B0(a3);
  }

  if (*a3 == 2)
  {
    sub_10004FD18(v44);
    if (sub_100185ADC(a4, "GnssKnownACSettings", v44))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v11 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLAccessory,MA-OTA,GnssKnownAC config available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019133EC(buf);
        LOWORD(v45) = 0;
        v41 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onMobileAssetNotification(int, const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v41);
        if (v41 != buf)
        {
          free(v41);
        }
      }

      sub_10170C3FC(a1 + 1400, v44);
    }

    if (sub_100185ADC(a4, "AccessoryConfig", v44))
    {
      v12 = qword_102658FB0;
      sub_1004F9A2C(v43);
      [v12 readMobileAssetConfiguration:v43];
      sub_100005DA4(v43);
      *(a1 + 2649) = [qword_102658FB0 getEnableAggressiveLocationScreening];
      *(a1 + 2232) = [qword_102658FB0 getLocationDiffThresholdForAggressiveScreening];
      *(a1 + 2492) = [qword_102658FB0 getMinContinuousFailureCountForBlockingAccessory];
      *(a1 + 2496) = [qword_102658FB0 getMinContinuousSuccessCountForUnblockingAccessory];
      [qword_102658FB0 getMaxGPSUncertaintyForAggressiveBlockingAccessory];
      *(a1 + 2240) = v13;
      *(a1 + 2648) = [qword_102658FB0 getEnableCourseScreening];
      *(a1 + 6400) = [qword_102658FB0 getAllowGPGGAOnlyAccessory];
      [qword_102658FB0 getCourseUncertaintyForCarPlayDRModeAtLowSpeedsInDeg];
      *(a1 + 6384) = v14;
      [qword_102658FB0 getSpeedThresholdForCarPlayDRModeCourseUncSettingInMPS];
      *(a1 + 6392) = v15;
      sub_10001CAF4(buf);
      v16 = *(a1 + 2648);
      LOBYTE(v45) = 0;
      v17 = sub_10001CB4C(*buf, "EnableAccessoryCourseScreening", &v45);
      v18 = v45;
      if (!v17)
      {
        v18 = v16;
      }

      *(a1 + 2648) = v18;
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v19 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 6384);
        v21 = *(a1 + 6392);
        v22 = *(a1 + 2648);
        v23 = *(a1 + 6400);
        v42 = *(a1 + 2649);
        v24 = [qword_102658FB0 getLocationDiffThresholdForAggressiveScreening];
        v25 = [qword_102658FB0 getMinContinuousFailureCountForBlockingAccessory];
        v26 = [qword_102658FB0 getMinContinuousSuccessCountForUnblockingAccessory];
        [qword_102658FB0 getMaxGPSUncertaintyForAggressiveBlockingAccessory];
        *buf = 134351104;
        *&buf[4] = v20;
        *&buf[12] = 2050;
        *&buf[14] = v21;
        *&buf[22] = 1026;
        *&buf[24] = v22;
        v64 = 1026;
        v65 = v23;
        v66 = 1026;
        v67 = v42;
        v68 = 1026;
        v69 = v24;
        v70 = 1026;
        v71 = v25;
        v72 = 1026;
        v73 = v26;
        v74 = 2050;
        v75 = v27;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLAccessory,MA-OTA,Provider set courseUncertaintyAtLowSpeeds,courseUnc,%{public}.1lf,speedThreshold,%{public}.1lf,enableCourseScreening,%{public}d,allowGPGGAOnlyAccessory,%{public}d,enableAggressiveLocationScreening,%{public}d,aggressiveScreeningThreshold,%{public}d,minContFailCount,%{public}d,minContSuccessCount,%{public}d,maxGPSUncertaintyForBlockingAccessory,%{public}.1lf", buf, 0x44u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_38;
      }

      sub_1019133EC(buf);
      v28 = *(a1 + 6384);
      v29 = *(a1 + 6392);
      v30 = *(a1 + 2648);
      v31 = *(a1 + 6400);
      v32 = *(a1 + 2649);
      v33 = [qword_102658FB0 getLocationDiffThresholdForAggressiveScreening];
      v34 = [qword_102658FB0 getMinContinuousFailureCountForBlockingAccessory];
      v35 = [qword_102658FB0 getMinContinuousSuccessCountForUnblockingAccessory];
      [qword_102658FB0 getMaxGPSUncertaintyForAggressiveBlockingAccessory];
      v45 = 134351104;
      v46 = v28;
      v47 = 2050;
      v48 = v29;
      v49 = 1026;
      v50 = v30;
      v51 = 1026;
      v52 = v31;
      v53 = 1026;
      v54 = v32;
      v55 = 1026;
      v56 = v33;
      v57 = 1026;
      v58 = v34;
      v59 = 1026;
      v60 = v35;
      v61 = 2050;
      v62 = v36;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onMobileAssetNotification(int, const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v37);
      if (v37 == buf)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v40 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "CLAccessory,MA-OTA,accessoryLocation config not available", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_38;
      }

      sub_1019133EC(buf);
      LOWORD(v45) = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onMobileAssetNotification(int, const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v37);
      if (v37 == buf)
      {
        goto LABEL_38;
      }
    }

    free(v37);
LABEL_38:
    sub_100005DA4(v44);
    return;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v38 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
  {
    v39 = *a3;
    *buf = 67240192;
    *&buf[4] = v39;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "CLAccessory,MA-OTA,invalid notification,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019155D8(a3);
  }
}

void sub_1006F71F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

void sub_1006F7308(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1006F7404(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_1006F7434(uint64_t a1)
{
  v2 = [+[CLServiceVendor sharedInstance](CLServiceVendor proxyForService:"proxyForService:", @"CLAccessoryLocationProvider"];

  return [v2 syncgetDoSync:a1];
}

double sub_1006F74B0(uint64_t a1)
{
  sub_10018D404(a1);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xBFF0000000000000;
  result = 0.0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0;
  *(v1 + 392) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 213) = 0u;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 232) = 0u;
  *(v1 + 316) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 364) = 0u;
  *(v1 + 384) = v1 + 392;
  *(v1 + 416) = 0u;
  *(v1 + 408) = v1 + 416;
  *(v1 + 440) = 0u;
  *(v1 + 432) = v1 + 440;
  *(v1 + 456) = v1 + 464;
  *(v1 + 496) = 0;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0;
  *(v1 + 584) = 0u;
  *(v1 + 532) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 576) = v1 + 584;
  *(v1 + 608) = 0u;
  *(v1 + 600) = v1 + 608;
  *(v1 + 632) = 0u;
  *(v1 + 624) = v1 + 632;
  *(v1 + 648) = 0u;
  *(v1 + 664) = 0;
  *(v1 + 688) = 0;
  *(v1 + 672) = 0u;
  *(v1 + 704) = 0u;
  *(v1 + 696) = v1 + 704;
  *(v1 + 728) = 0u;
  *(v1 + 720) = v1 + 728;
  *(v1 + 744) = v1 + 752;
  *(v1 + 784) = 0;
  *(v1 + 752) = 0u;
  *(v1 + 768) = 0u;
  *(v1 + 808) = 0;
  *(v1 + 792) = 0u;
  *(v1 + 824) = 0u;
  *(v1 + 816) = v1 + 824;
  *(v1 + 848) = 0u;
  *(v1 + 840) = v1 + 848;
  *(v1 + 872) = 0u;
  *(v1 + 864) = v1 + 872;
  *(v1 + 904) = 0;
  *(v1 + 888) = 0u;
  *(v1 + 952) = 0u;
  *(v1 + 936) = 0;
  *(v1 + 928) = 0;
  *(v1 + 912) = 0u;
  *(v1 + 944) = v1 + 952;
  *(v1 + 968) = v1 + 976;
  *(v1 + 1008) = 0;
  *(v1 + 976) = 0u;
  *(v1 + 992) = 0u;
  *(v1 + 1072) = 0u;
  *(v1 + 1032) = 0u;
  *(v1 + 1048) = 0u;
  *(v1 + 1016) = 0u;
  *(v1 + 1064) = v1 + 1072;
  *(v1 + 1104) = 0;
  *(v1 + 1088) = 0u;
  *(v1 + 1200) = 0u;
  *(v1 + 1140) = 0u;
  *(v1 + 1112) = 0u;
  *(v1 + 1128) = 0u;
  *(v1 + 1160) = 0u;
  *(v1 + 1176) = 0u;
  *(v1 + 1192) = v1 + 1200;
  *(v1 + 1232) = 0;
  *(v1 + 1216) = 0u;
  *(v1 + 1328) = 0u;
  *(v1 + 1268) = 0u;
  *(v1 + 1240) = 0u;
  *(v1 + 1256) = 0u;
  *(v1 + 1288) = 0u;
  *(v1 + 1304) = 0u;
  *(v1 + 1320) = v1 + 1328;
  *(v1 + 1360) = 0;
  *(v1 + 1344) = 0u;
  *(v1 + 1456) = 0u;
  *(v1 + 1396) = 0u;
  *(v1 + 1368) = 0u;
  *(v1 + 1384) = 0u;
  *(v1 + 1440) = 0;
  *(v1 + 1432) = 0;
  *(v1 + 1416) = 0u;
  *(v1 + 1448) = v1 + 1456;
  *(v1 + 1480) = 0u;
  *(v1 + 1472) = v1 + 1480;
  *(v1 + 1504) = 0u;
  *(v1 + 1496) = v1 + 1504;
  *(v1 + 1520) = 0;
  *(v1 + 1528) = 0;
  *(v1 + 1544) = 0u;
  *(v1 + 1536) = v1 + 1544;
  *(v1 + 1560) = 0;
  *(v1 + 1568) = 0;
  *(v1 + 1584) = 0u;
  *(v1 + 1576) = v1 + 1584;
  *(v1 + 1608) = 0u;
  *(v1 + 1600) = v1 + 1608;
  *(v1 + 1632) = 0u;
  *(v1 + 1624) = v1 + 1632;
  *(v1 + 1680) = 0u;
  *(v1 + 1664) = 0;
  *(v1 + 1648) = 0u;
  *(v1 + 1672) = v1 + 1680;
  *(v1 + 1756) = 0u;
  *(v1 + 1744) = 0u;
  *(v1 + 1728) = 0u;
  *(v1 + 1712) = 0u;
  *(v1 + 1696) = 0u;
  *(v1 + 3001) = 0u;
  *(v1 + 2992) = 0u;
  *(v1 + 2976) = 0u;
  *(v1 + 2960) = 0u;
  *(v1 + 2944) = 0u;
  *(v1 + 2928) = 0u;
  *(v1 + 2912) = 0u;
  *(v1 + 2896) = 0u;
  *(v1 + 2880) = 0u;
  *(v1 + 2864) = 0u;
  *(v1 + 2848) = 0u;
  *(v1 + 1984) = 0u;
  *(v1 + 1968) = 0u;
  *(v1 + 1952) = 0u;
  *(v1 + 1936) = 0u;
  *(v1 + 1920) = 0u;
  *(v1 + 1904) = 0u;
  *(v1 + 1888) = 0u;
  *(v1 + 1872) = 0u;
  *(v1 + 1856) = 0u;
  *(v1 + 1840) = 0u;
  *(v1 + 1824) = 0u;
  *(v1 + 1808) = 0u;
  *(v1 + 1792) = 0u;
  *(v1 + 1776) = 0u;
  *(v1 + 3017) = 257;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v1 + 3024) = _Q1;
  *(v1 + 3040) = _Q1;
  *(v1 + 3056) = _Q1;
  *(v1 + 3072) = 0xBFF0000000000000;
  *(v1 + 3104) = 0;
  *(v1 + 3096) = 0;
  *(v1 + 3080) = 0u;
  return result;
}

Class sub_1006F77FC(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_102658FD8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1006F7928;
    v3[4] = &unk_102449A78;
    v3[5] = v3;
    v4 = off_10246BEB8;
    v5 = 0;
    qword_102658FD8 = _sl_dlopen();
  }

  if (!qword_102658FD8)
  {
    sub_10191573C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1019156D4();
  }

  qword_102658FD0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1006F7928()
{
  result = _sl_dlopen();
  qword_102658FD8 = result;
  return result;
}

void sub_1006F79CC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_1006F7A7C(uint64_t a1)
{
  v2 = *(a1 + 3080);
  if (v2)
  {
    *(a1 + 3088) = v2;
    operator delete(v2);
  }

  sub_10063A344(a1 + 2848);
  sub_1006F7AC0(a1 + 40);
  return a1;
}

uint64_t sub_1006F7AC0(uint64_t a1)
{
  sub_10001AF44(a1 + 1632, *(a1 + 1640));
  sub_1003C93BC(a1 + 1584, *(a1 + 1592));
  sub_1003C93BC(a1 + 1560, *(a1 + 1568));
  sub_1003C93BC(a1 + 1536, *(a1 + 1544));
  sub_1003C93BC(a1 + 1496, *(a1 + 1504));
  sub_10001AF44(a1 + 1456, *(a1 + 1464));
  sub_1003C93BC(a1 + 1432, *(a1 + 1440));
  sub_1003C93BC(a1 + 1408, *(a1 + 1416));
  sub_1003C93BC(a1 + 1280, *(a1 + 1288));
  sub_1003C93BC(a1 + 1152, *(a1 + 1160));
  sub_1003C93BC(a1 + 1024, *(a1 + 1032));
  sub_1003C93BC(a1 + 928, *(a1 + 936));
  sub_1003C93BC(a1 + 904, *(a1 + 912));
  sub_1003C93BC(a1 + 824, *(a1 + 832));
  sub_1003C93BC(a1 + 800, *(a1 + 808));
  sub_1003C93BC(a1 + 776, *(a1 + 784));
  sub_1003C93BC(a1 + 704, *(a1 + 712));
  sub_1003C93BC(a1 + 680, *(a1 + 688));
  sub_1003C93BC(a1 + 656, *(a1 + 664));
  sub_1003C93BC(a1 + 584, *(a1 + 592));
  sub_1003C93BC(a1 + 560, *(a1 + 568));
  sub_1003C93BC(a1 + 536, *(a1 + 544));
  sub_1003C93BC(a1 + 416, *(a1 + 424));
  sub_1003C93BC(a1 + 392, *(a1 + 400));
  sub_1003C93BC(a1 + 368, *(a1 + 376));
  sub_1003C93BC(a1 + 344, *(a1 + 352));
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1006F7C8C(uint64_t a1)
{
  sub_100D8D8D0(a1 + 448);
  sub_1006F7E28(a1 + 392);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006F7DA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246BF40;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006F7DDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006F7E28(uint64_t a1)
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

uint64_t sub_1006F7EA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10093118C();

    operator delete();
  }

  return result;
}

uint64_t sub_1006F7F68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006F7FB4()
{
  sub_10000EC00(&xmmword_102658F88, "CLAccessoryLocationProvider");

  return __cxa_atexit(&std::string::~string, &xmmword_102658F88, dword_100000000);
}

uint64_t sub_1006F8014(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  *a1 = *(a4 + 8);
  if (!*a2)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      *buf = 134349056;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,road is nullptr", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915BD4();
    }

    return 0;
  }

  if (!*(a1 + 144))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v10 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *a1;
      *buf = 134349056;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,Flowline data not available", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915AE8();
    }

    return 0;
  }

  if (*(a4 + 264) == 1 && *(a4 + 265) != 1)
  {
    if (!sub_100020608(*(a4 + 56), *(a4 + 64)) || sub_10002807C(*(a4 + 56), *(a4 + 64)))
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101915810();
      }

      v14 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v15 = *a1;
        *buf = 134349056;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,raw coordinate is not valid", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101915910();
      }

      return 0;
    }

    if (!sub_100020608(*(a4 + 288), *(a4 + 296)) || sub_10002807C(*(a4 + 288), *(a4 + 296)))
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101915810();
      }

      v16 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134349056;
        *&buf[4] = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,snapped coordinate is not valid", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101915824();
      }

      return 0;
    }

    v134 = 0;
    v135 = 0;
    v136 = 0;
    v18 = sub_1006F9388(a1, a2, a3, a4, &v134);
    if (v18)
    {
      *a1 = *(a4 + 8);
      if (qword_1025D46B0 != -1)
      {
        sub_1019157A4();
      }

      v20 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v21 = *a1;
        v22 = *(a4 + 288);
        v23 = *(a4 + 296);
        *buf = 134349825;
        *&buf[4] = v21;
        *&buf[12] = 2053;
        *&buf[14] = v22;
        v144 = 2053;
        v145 = v23;
        LOWORD(v146) = 2050;
        *(&v146 + 2) = (v135 - v134) >> 4;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,attempting lane estimation,LL,%{sensitive}.7lf,%{sensitive}.7lf,numFlowlines,%{public}lu", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019157CC(buf);
        v115 = *a1;
        v116 = *(a4 + 288);
        v117 = *(a4 + 296);
        *__y = 134349825;
        *&__y[4] = v115;
        *&__y[12] = 2053;
        *&__y[14] = v116;
        v139 = 2053;
        v140 = v117;
        v141 = 2050;
        v142 = (v135 - v134) >> 4;
        v118 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLaneEstimator::estimateLane(const CLMapRoadPtr &, const BOOL, const CLMapCrumb &)", "%s\n", v118);
        if (v118 != buf)
        {
          free(v118);
        }
      }

      v24 = v134;
      v25 = v135;
      if (v134 != v135)
      {
        v127 = 0;
        v128 = 0;
        v26 = *(a4 + 56);
        v27 = *(a4 + 64);
        v126 = -1.0;
        v28 = 1.0;
        v125 = -1.0;
        v29 = -1.0;
        while (1)
        {
          v30 = *v24;
          if (*v24)
          {
            break;
          }

LABEL_120:
          v24 += 16;
          if (v24 == v25)
          {
            if (v127)
            {
              if (v128)
              {
                atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *(a1 + 24) = *(v127 + 4);
              v113 = *v127;
              *(a1 + 32) = 0x3FF0000000000000;
              *(a1 + 40) = v113;
              *(a1 + 48) = v124;
              *(a1 + 56) = v123;
              *(a1 + 64) = v126;
              *(a1 + 72) = v29;
              *(a1 + 80) = v125;
              if (v128)
              {
                sub_100008080(v128);
              }

              v114 = *a1;
              std::string::__init(&v131, "estimatedLane", 0xDuLL);
              sub_1006F9C98(a1 + 8, v114);
              if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v131.__r_.__value_.__l.__data_);
              }
            }

            if (v128)
            {
              sub_100008080(v128);
            }

            goto LABEL_173;
          }
        }

        v31 = v30[17];
        v32 = v30[18] - v31;
        v130 = v29;
        if ((v32 >> 4) > 1)
        {
          v33 = *v31;
          v34 = v31[1];
          *buf = 0;
          *&buf[8] = 0;
          *__y = 0;
          sub_1001063B0((a1 + 152), buf, &buf[8], __y, v26, v27, 0.0, v33, v34, 0.0);
          v35 = 0;
          v36 = ((v32 >> 4) & 0x7FFFFFFF) - 1;
          v37 = 0.0;
          v38 = -1.0;
          v39 = 0.0;
          while (1)
          {
            v40 = v30[17] + v35;
            v41 = *(v40 + 16);
            v42 = *(v40 + 24);
            *__y = 0;
            *&__y[8] = 0;
            v137 = 0;
            sub_1001063B0((a1 + 152), __y, &__y[8], &v137, v26, v27, 0.0, v41, v42, 0.0);
            v43 = (*buf - *__y) * (*buf - *__y) + (*&buf[8] - *&__y[8]) * (*&buf[8] - *&__y[8]);
            v44 = 0.0 - *buf;
            if (v43 >= 0.001)
            {
              v46 = ((0.0 - *&buf[8]) * (*&__y[8] - *&buf[8]) + v44 * (*__y - *buf)) / v43;
              if (v46 < 0.0)
              {
                v48 = v44 * v44 + (0.0 - *&buf[8]) * (0.0 - *&buf[8]);
                v46 = 0.0;
                goto LABEL_59;
              }

              if (v46 > v28)
              {
                v48 = (0.0 - *__y) * (0.0 - *__y) + (0.0 - *&__y[8]) * (0.0 - *&__y[8]);
                v46 = 1.0;
                goto LABEL_59;
              }

              v45 = (0.0 - (*buf + (*__y - *buf) * v46)) * (0.0 - (*buf + (*__y - *buf) * v46));
              v47 = 0.0 - (*&buf[8] + (*&__y[8] - *&buf[8]) * v46);
            }

            else
            {
              v45 = v44 * v44;
              v46 = 0.0;
              v47 = 0.0 - *&buf[8];
            }

            v48 = v45 + v47 * v47;
LABEL_59:
            v49 = sqrt(v43);
            v50 = sqrt(v48);
            v51 = v38 < 0.0;
            if (v50 < v38)
            {
              v51 = 1;
            }

            v52 = v37 + v49 * v46;
            if (v51)
            {
              v38 = v50;
              v39 = v52;
            }

            v37 = v37 + v49;
            *buf = *__y;
            *&buf[8] = *&__y[8];
            v35 += 16;
            if (!--v36)
            {
              if (v37 >= 0.001)
              {
                v54 = v39 / v37;
              }

              else
              {
                v54 = 0.0;
              }

              goto LABEL_75;
            }
          }
        }

        if (qword_1025D46B0 != -1)
        {
          sub_1019157A4();
        }

        v53 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
        }

        v38 = -1.0;
        if (sub_10000A100(121, 2))
        {
          sub_1019157CC(buf);
          *__y = 0;
          v104 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = CLClientLocationCoordinate]", "%s\n", v104);
          if (v104 != buf)
          {
            free(v104);
          }
        }

        v54 = -1.0;
LABEL_75:
        v56 = *v24;
        v55 = *(v24 + 1);
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v129 = v54;
        if (v56)
        {
          v57 = v56[17];
          v58 = (v56[18] - v57) >> 4;
          if (v58 <= 0)
          {
            if (qword_1025D46B0 != -1)
            {
              sub_1019157A4();
            }

            v70 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
            }

            v59 = 0.0;
            if (!sub_10000A100(121, 2))
            {
              goto LABEL_104;
            }
          }

          else
          {
            v59 = 0.0;
            if (v58 == 1)
            {
              goto LABEL_104;
            }

            v61 = v56[20];
            v60 = v56[21];
            v62 = v60 - v61;
            if (v62 == v58 - 1)
            {
              if (v54 < 0.000001)
              {
                v59 = *v57;
                v63 = v57[1];
                v64 = v57[2];
                v65 = v57[3];
                *buf = 0;
                v137 = 0;
                *__y = 0;
                sub_1001063B0((a1 + 152), buf, __y, &v137, v59, v63, 0.0, v64, v65, 0.0);
LABEL_83:
                v66 = atan2(*__y, *buf);
                if (v66 < 0.0)
                {
                  v66 = v66 + 6.28318531;
                }

                v67 = v66 * 57.2957795;
                if (!v55)
                {
LABEL_106:
                  if (v130 < 0.0 || v38 < v130)
                  {
                    v72 = *(v24 + 1);
                    v127 = *v24;
                    if (v72)
                    {
                      atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v128)
                    {
                      sub_100008080(v128);
                    }

                    v123 = v63;
                    v124 = v59;
                    v128 = v72;
                    v130 = v38;
                    v125 = v129;
                    v126 = v67;
                  }

                  v73 = *v24;
                  v74 = *(v24 + 1);
                  if (v74)
                  {
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                    *buf = 0;
                    *&buf[8] = 0;
                    *&buf[16] = -1;
                    v145 = 0xBFF0000000000000;
                    *&v146 = -1;
                    v148 = 0xBFF0000000000000;
                    v149 = 0.0;
                    v150 = 0.0;
                    atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (!v73)
                    {
LABEL_116:
                      if (v74)
                      {
                        sub_100008080(v74);
                        sub_100008080(v74);
                      }

                      v76 = *a1;
                      v133 = 13;
                      strcpy(__p, "candidateLane");
                      sub_1006F9C98(buf, v76);
                      v28 = 1.0;
                      v29 = v130;
                      if (*&buf[8])
                      {
                        sub_100008080(*&buf[8]);
                      }

                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    *buf = 0;
                    *&buf[8] = 0;
                    *&buf[16] = -1;
                    v145 = 0xBFF0000000000000;
                    *&v146 = -1;
                    v148 = 0xBFF0000000000000;
                    v149 = 0.0;
                    v150 = 0.0;
                    if (!v73)
                    {
                      goto LABEL_116;
                    }
                  }

                  *&buf[16] = *(v73 + 4);
                  v75 = *v73;
                  v145 = 0x3FF0000000000000;
                  *&v146 = v75;
                  *(&v146 + 1) = v59;
                  v147 = v63;
                  v148 = *&v67;
                  v149 = v38;
                  v150 = v129;
                  goto LABEL_116;
                }

LABEL_105:
                sub_100008080(v55);
                goto LABEL_106;
              }

              if (v54 >= 0.999999)
              {
                v82 = &v57[2 * v62];
                v59 = *v82;
                v63 = v82[1];
                v83 = sub_1002926F4((a1 + 152), *(v82 - 2), *(v82 - 1), *v82, v63);
                goto LABEL_137;
              }

              if (v61 != v60)
              {
                v77 = 0.0;
                v78 = 2;
                v79 = 3;
                while (1)
                {
                  v80 = *v61 / *(v56 + 16);
                  if (vabdd_f64(v54, v77 + v80) < 0.000001)
                  {
                    break;
                  }

                  if (v77 + v80 > v54)
                  {
                    v93 = &v57[v79];
                    v94 = *(v93 - 2);
                    v119 = *(v93 - 1);
                    __xb = *(v93 - 3);
                    v95 = sub_1002AADB4(v94, *v93);
                    v96 = (v129 - v77) / v80;
                    sub_10002DB04(v94 + v95 * v96);
                    v63 = v97;
                    v98 = (v56[17] + v79 * 8);
                    v99 = *(v98 - 3);
                    v100 = *(v98 - 2);
                    v101 = *(v98 - 1);
                    v102 = *v98;
                    *buf = 0;
                    v137 = 0;
                    *__y = 0;
                    sub_1001063B0((a1 + 152), buf, __y, &v137, v99, v100, 0.0, v101, v102, 0.0);
                    v59 = __xb + (v119 - __xb) * v96;
                    goto LABEL_83;
                  }

                  ++v61;
                  v79 += 2;
                  ++v78;
                  v77 = v77 + v80;
                  if (v61 == v60)
                  {
                    goto LABEL_130;
                  }
                }

                if (v78 < v58)
                {
                  v84 = &v57[v79];
                  v59 = *(v84 - 1);
                  v63 = *v84;
                  v85 = *(v84 - 3);
                  v86 = *(v84 - 2);
                  *buf = 0;
                  v137 = 0;
                  *__y = 0;
                  sub_1001063B0((a1 + 152), buf, __y, &v137, v85, v86, 0.0, v59, v63, 0.0);
                  v87 = *__y;
                  __xa = *buf;
                  v88 = v56[17] + v79 * 8;
                  v89 = *(v88 + 8);
                  v90 = *(v88 + 16);
                  *buf = 0;
                  v137 = 0;
                  *__y = 0;
                  sub_1001063B0((a1 + 152), buf, __y, &v137, v59, v63, 0.0, v89, v90, 0.0);
                  v91 = atan2(v87, __xa);
                  if (v91 < 0.0)
                  {
                    v91 = v91 + 6.28318531;
                  }

                  __x = v91 * 57.2957795;
                  v92 = atan2(*__y, *buf);
                  if (v92 < 0.0)
                  {
                    v92 = v92 + 6.28318531;
                  }

                  sub_1004E60D8(__x, v92 * 57.2957795);
LABEL_137:
                  v67 = v83;
                  if (!v55)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_105;
                }

                if (qword_1025D46B0 != -1)
                {
                  sub_1019157A4();
                }

                v103 = qword_1025D46B8;
                if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
                }

                v59 = 0.0;
                if (sub_10000A100(121, 0))
                {
                  goto LABEL_92;
                }

                goto LABEL_104;
              }

LABEL_130:
              if (qword_1025D46B0 != -1)
              {
                sub_1019157A4();
              }

              v81 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_104;
              }
            }

            else
            {
              if (qword_1025D46B0 != -1)
              {
                sub_1019157A4();
              }

              v71 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_104;
              }
            }
          }

          sub_1019157CC(buf);
          *__y = 0;
          v69 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v69);
LABEL_155:
          if (v69 != buf)
          {
            free(v69);
          }

          goto LABEL_104;
        }

        if (qword_1025D46B0 != -1)
        {
          sub_1019157A4();
        }

        v68 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
        }

        v59 = 0.0;
        if (sub_10000A100(121, 0))
        {
LABEL_92:
          sub_1019157CC(buf);
          *__y = 0;
          v69 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v69);
          goto LABEL_155;
        }

LABEL_104:
        v63 = 0.0;
        v67 = 0.0;
        if (!v55)
        {
          goto LABEL_106;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (qword_1025D46B0 != -1)
      {
        sub_1019157A4();
      }

      v105 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v106 = *a1;
        v107 = *(a4 + 288);
        v108 = *(a4 + 296);
        *buf = 134349569;
        *&buf[4] = v106;
        *&buf[12] = 2053;
        *&buf[14] = v107;
        v144 = 2053;
        v145 = v108;
        _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,could not find flowline data,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019157CC(buf);
        v109 = *a1;
        v110 = *(a4 + 288);
        v111 = *(a4 + 296);
        *__y = 134349569;
        *&__y[4] = v109;
        *&__y[12] = 2053;
        *&__y[14] = v110;
        v139 = 2053;
        v140 = v111;
        v112 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLaneEstimator::estimateLane(const CLMapRoadPtr &, const BOOL, const CLMapCrumb &)", "%s\n", v112);
        if (v112 != buf)
        {
          free(v112);
        }
      }
    }

LABEL_173:
    *buf = &v134;
    sub_1004CA974(buf);
    return v18;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101915810();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a1;
    *buf = 134349056;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,Solution is not matched", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019159FC();
  }

  return 0;
}

void sub_1006F92F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  a37 = &a34;
  sub_1004CA974(&a37);
  _Unwind_Resume(a1);
}

uint64_t sub_1006F9388(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v5 = *(a4 + 8);
  v6 = *a2;
  if (*a2)
  {
    if (*(a1 + 144))
    {
      v12 = *(v6 + 96);
      v13 = 0.02;
      if (a3)
      {
        v13 = -0.02;
      }

      v14 = v13 + *(a4 + 272);
      v15 = 1.0;
      if (v14 <= 1.0)
      {
        v15 = v14;
      }

      if (v14 >= 0.0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = a2[1];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = (*(v6 + 144) - *(v6 + 136)) >> 4;
      if (v18 <= 0)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101915810();
        }

        v28 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
        }

        v19 = 0.0;
        if (!sub_10000A100(121, 2))
        {
          goto LABEL_41;
        }
      }

      else
      {
        v19 = 0.0;
        if (v18 == 1)
        {
          goto LABEL_41;
        }

        sub_10029244C(v6);
        v20 = (*(v6 + 168) - *(v6 + 160)) >> 3;
        if (v20 == v18 - 1)
        {
          sub_10029244C(v6);
          if (v16 < 0.000001)
          {
            v21 = *(v6 + 136);
            v19 = *v21;
            v22 = v21[1];
            v23 = v21[2];
            v24 = v21[3];
            v70 = 0;
            *&buf[0] = 0;
            __y = 0.0;
            sub_1001063B0((a1 + 152), buf, &__y, &v70, v19, v22, 0.0, v23, v24, 0.0);
            goto LABEL_42;
          }

          if (v16 >= 0.999999)
          {
            v42 = *(v6 + 136) + 16 * v20;
            v19 = *v42;
            v22 = *(v42 + 8);
            sub_1002926F4((a1 + 152), *(v42 - 16), *(v42 - 8), *v42, v22);
            goto LABEL_42;
          }

          v35 = *(v6 + 160);
          v36 = *(v6 + 168);
          if (v35 != v36)
          {
            v37 = 0.0;
            v38 = 2;
            v39 = 24;
            while (1)
            {
              v40 = *v35 / *(v6 + 40);
              if (vabdd_f64(v16, v37 + v40) < 0.000001)
              {
                break;
              }

              if (v37 + v40 > v16)
              {
                v54 = (*(v6 + 136) + v39);
                v56 = *(v54 - 3);
                v55 = *(v54 - 2);
                v57 = *(v54 - 1);
                v58 = sub_1002AADB4(v55, *v54);
                v59 = (v16 - v37) / v40;
                sub_10002DB04(v55 + v58 * v59);
                v22 = v60;
                v61 = (*(v6 + 136) + v39);
                v62 = *(v61 - 3);
                v63 = *(v61 - 2);
                v64 = *(v61 - 1);
                v65 = *v61;
                v70 = 0;
                *&buf[0] = 0;
                __y = 0.0;
                sub_1001063B0((a1 + 152), buf, &__y, &v70, v62, v63, 0.0, v64, v65, 0.0);
                v19 = v56 + (v57 - v56) * v59;
                goto LABEL_42;
              }

              ++v35;
              v39 += 16;
              ++v38;
              v37 = v37 + v40;
              if (v35 == v36)
              {
                goto LABEL_59;
              }
            }

            if (v38 < v18)
            {
              v43 = (*(v6 + 136) + v39);
              v19 = *(v43 - 1);
              v22 = *v43;
              v44 = *(v43 - 3);
              v45 = *(v43 - 2);
              v70 = 0;
              *&buf[0] = 0;
              __y = 0.0;
              sub_1001063B0((a1 + 152), buf, &__y, &v70, v44, v45, 0.0, v19, v22, 0.0);
              v46 = __y;
              v47 = *buf;
              v48 = *(v6 + 136) + v39;
              v49 = *(v48 + 8);
              v50 = *(v48 + 16);
              v70 = 0;
              *&buf[0] = 0;
              __y = 0.0;
              sub_1001063B0((a1 + 152), buf, &__y, &v70, v19, v22, 0.0, v49, v50, 0.0);
              v51 = atan2(v46, v47);
              if (v51 < 0.0)
              {
                v51 = v51 + 6.28318531;
              }

              v52 = v51 * 57.2957795;
              v53 = atan2(__y, *buf);
              if (v53 < 0.0)
              {
                v53 = v53 + 6.28318531;
              }

              sub_1004E60D8(v52, v53 * 57.2957795);
LABEL_42:
              if (v17)
              {
                sub_100008080(v17);
              }

              sub_1002A9144((a1 + 152), buf, buf + 1, v19, v22, *(a4 + 72), *(a4 + 168), v12 * 0.5 + 3.70000005);
              v30 = *(*a2 + 136);
              v31 = *(*a2 + 144);
              if (a3)
              {
                if (v31 != v30)
                {
                  v30 = v31 - 2;
                  v32 = v31 - 1;
LABEL_49:
                  v33 = *v30;
                  v34 = *v32;
LABEL_51:
                  sub_1002A9144((a1 + 152), &__y, &v69, v33, v34, *(a4 + 72), *(a4 + 168), -(v12 * 0.5 + 3.70000005));
                  sub_1012D00B0(a1 + 88, a5, __y, v69, *buf, *(buf + 1));
                  return a5[1] != *a5;
                }
              }

              else if (v31 != v30)
              {
                v32 = v30 + 1;
                goto LABEL_49;
              }

              v33 = 0.0;
              v34 = 0.0;
              goto LABEL_51;
            }

            if (qword_1025D46B0 != -1)
            {
              sub_101915810();
            }

            v66 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf[0]) = 0;
              _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
            }

            v19 = 0.0;
            if (sub_10000A100(121, 0))
            {
              sub_1019157CC(buf);
              LOWORD(__y) = 0;
              v67 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v67);
              goto LABEL_80;
            }

LABEL_41:
            v22 = 0.0;
            goto LABEL_42;
          }

LABEL_59:
          if (qword_1025D46B0 != -1)
          {
            sub_101915810();
          }

          v41 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_41;
          }
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_101915810();
          }

          v29 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_41;
          }
        }
      }

      sub_1019157CC(buf);
      LOWORD(__y) = 0;
      v67 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v67);
LABEL_80:
      if (v67 != buf)
      {
        free(v67);
      }

      goto LABEL_41;
    }

    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v27 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 134349056;
      *(buf + 4) = v5;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,Flowline data not available", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101915CC0();
      return 0;
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v25 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf[0]) = 134349056;
      *(buf + 4) = v5;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,road is nullptr", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101915DB4();
      return 0;
    }
  }

  return result;
}

void sub_1006F9C78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F9C98(uint64_t a1, double a2)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101915810();
  }

  v4 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 16);
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v13 = 134351105;
    v14 = a2;
    v15 = 2053;
    v16 = v5;
    v17 = 2053;
    v18 = v6;
    v19 = 2049;
    v20 = v10;
    v21 = 1026;
    v22 = v7;
    v23 = 2049;
    v24 = v8;
    v25 = 2050;
    v26 = v9;
    v27 = 2050;
    v28 = v11;
    v29 = 2050;
    v30 = v12;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,laneData,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{private}.1lf,laneIndex,%{public}d,id,%{private}lld,probability,%{public}.2lf,shortestDist,%{public}.2lf,proj,%{public}.2lf", &v13, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101915EA8(a1, a2);
  }
}

void sub_1006F9EEC()
{
  if (qword_102637208)
  {
    v2 = 0;
    (*(*qword_102637208 + 976))(qword_102637208, &v2);
    if (((*(*qword_102637208 + 944))() & 1) == 0)
    {
      if (qword_1025D4890 != -1)
      {
        sub_101916024();
      }

      v0 = qword_1025D4898;
      if (os_log_type_enabled(qword_1025D4898, OS_LOG_TYPE_FAULT))
      {
        *v1 = 0;
        _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_FAULT, "could not store stats data ", v1, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10191604C();
      }
    }
  }
}

uint64_t sub_1006FA000(uint64_t a1, uint64_t a2)
{
  v3 = sub_100565AA0(a1, a2, "stats", 1, 0, 2);
  *v3 = off_10246C090;
  sub_100536F74(v3 + 16, "CLDaemonStats", 1, 1);
  *(a1 + 144) = 0;
  sub_10001A3E8();
  if (!sub_100717D04())
  {
    v8 = 0;
    sub_10001CAF4(&v6);
    v4 = sub_10001CB4C(v6, "EnableLocationAccessorySessionDebugLog", &v8);
    if (v7)
    {
      sub_100008080(v7);
    }

    if (v4)
    {
      *(a1 + 144) = v8;
    }
  }

  return a1;
}

void sub_1006FA0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_10053700C(v12);
  sub_1005661F8(v11);
  _Unwind_Resume(a1);
}

void *sub_1006FA110(void *a1)
{
  *a1 = off_10246C090;
  sub_10053700C(a1 + 16);

  return sub_1005661F8(a1);
}

void sub_1006FA164(void *a1)
{
  *a1 = off_10246C090;
  sub_10053700C(a1 + 16);
  sub_1005661F8(a1);

  operator delete();
}

uint64_t sub_1006FA1CC(uint64_t a1, std::string *a2)
{
  v4 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_1004FF934(a1, a2);
  return (*(*v4 + 24))(v4);
}

void sub_1006FA270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA284(uint64_t a1, double *a2)
{
  v5 = a1 + 128;
  v4 = *(a1 + 128);
  v7[5] = a1 + 128;
  (*(v4 + 16))(a1 + 128);
  v8 = 256;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1006FA388;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  sub_100566954(a1, a2, v7);
  return (*(*v5 + 24))(v5);
}

void sub_1006FA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA390(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_100566B4C(a1);
  return (*(*v2 + 24))(v2);
}

void sub_1006FA424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA438(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  v3 = sub_100566324(a1);
  (*(*v2 + 24))(v2);
  return v3;
}

void sub_1006FA4D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA4E8(uint64_t a1)
{
  v2 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  v3 = sub_100566514(a1);
  (*(*v2 + 24))(v2);
  return v3;
}

void sub_1006FA584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1006FA598(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  (*(*a1 + 968))(a1, __p);
  if (v4 >= 0)
  {
    v1 = __p;
  }

  else
  {
    v1 = __p[0];
  }

  v2 = sub_100053C00(v1);
  CFUserNotificationDisplayNotice(0.0, 0, 0, 0, 0, @"Location Stats", v2, 0);
  CFRelease(v2);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006FA650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA670(uint64_t a1, const void *a2, const void *a3)
{
  v6 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_10007041C(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_1006FA71C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA730@<X0>(_BYTE *a1@<X8>)
{
  sub_1004C01C8(&v17);
  sub_10000EC00(&v14, "[");
  if ((v16 & 0x80u) == 0)
  {
    v2 = &v14;
  }

  else
  {
    v2 = v14;
  }

  if ((v16 & 0x80u) == 0)
  {
    v3 = v16;
  }

  else
  {
    v3 = v15;
  }

  sub_100038730(&v17, v2, v3);
  for (i = 0; i != 56; i += 4)
  {
    sub_10003DD04(&v18, __p);
    v5 = v13;
    if ((v13 & 0x80u) == 0)
    {
      v6 = v13;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v7 = v15;
    }

    if (v6 == v7)
    {
      if ((v13 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14;
      }

      v10 = memcmp(v8, v9, v6) == 0;
      if (v5 < 0)
      {
LABEL_25:
        operator delete(__p[0]);
        if (v10)
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_100038730(&v17, ", ", 2);
        goto LABEL_27;
      }
    }

    else
    {
      v10 = 0;
      if (v13 < 0)
      {
        goto LABEL_25;
      }
    }

    if (!v10)
    {
      goto LABEL_26;
    }

LABEL_27:
    std::ostream::operator<<();
  }

  sub_100038730(&v17, "]", 1);
  sub_10003DD04(&v18, a1);
  if (v16 < 0)
  {
    operator delete(v14);
  }

  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1006FA9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006FA9F8@<X0>(_BYTE *a1@<X8>)
{
  sub_1004C01C8(&v17);
  sub_10000EC00(&v14, "[");
  if ((v16 & 0x80u) == 0)
  {
    v2 = &v14;
  }

  else
  {
    v2 = v14;
  }

  if ((v16 & 0x80u) == 0)
  {
    v3 = v16;
  }

  else
  {
    v3 = v15;
  }

  sub_100038730(&v17, v2, v3);
  for (i = 0; i != 56; i += 4)
  {
    sub_10003DD04(&v18, __p);
    v5 = v13;
    if ((v13 & 0x80u) == 0)
    {
      v6 = v13;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v7 = v15;
    }

    if (v6 == v7)
    {
      if ((v13 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = &v14;
      }

      else
      {
        v9 = v14;
      }

      v10 = memcmp(v8, v9, v6) == 0;
      if (v5 < 0)
      {
LABEL_25:
        operator delete(__p[0]);
        if (v10)
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_100038730(&v17, ", ", 2);
        goto LABEL_27;
      }
    }

    else
    {
      v10 = 0;
      if (v13 < 0)
      {
        goto LABEL_25;
      }
    }

    if (!v10)
    {
      goto LABEL_26;
    }

LABEL_27:
    std::ostream::operator<<();
  }

  sub_100038730(&v17, "]", 1);
  sub_10003DD04(&v18, a1);
  if (v16 < 0)
  {
    operator delete(v14);
  }

  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1006FAC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1006FACC0(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    if ((a2[63] & 0x80u) == 0)
    {
      v7 = a2 + 40;
    }

    else
    {
      v7 = *(a2 + 5);
    }

    v8 = a2[112];
    v9 = a2[113];
    v10 = *(a2 + 58);
    v11 = a2[114];
    *buf = 68291075;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 1026;
    v18 = v4;
    v19 = 2050;
    v20 = v5;
    v21 = 2081;
    v22 = v6;
    v23 = 2081;
    v24 = v7;
    v25 = 1026;
    v26 = v8;
    v27 = 1026;
    v28 = v9;
    v29 = 1026;
    v30 = v10;
    v31 = 1026;
    v32 = v11;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit monitor session, metric.valid:%{public}d, metric.timestamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, onbehalfbundleid:%{private, location:escape_only}s, clientSpecifiesMajor:%{public}d, clientSpecifiesMinor:%{public}d, totalMonitoredRegions:%{public}d, foreground:%{public}d}", buf, 0x4Eu);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FAEC4(uint64_t a1)
{
  v3[0] = @"clientSpecifiesMajor";
  v4[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 112)];
  v3[1] = @"clientSpecifiesMinor";
  v4[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 113)];
  v3[2] = @"totalMonitoredRegions";
  v4[2] = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 116)];
  v3[3] = @"appIsInForeground";
  v4[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 114)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

NSDictionary *sub_1006FAFB4(uint64_t a1)
{
  v9[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"regionIdentifier";
  v4 = *(a1 + 32);
  v5 = (v4 + 88);
  if (*(v4 + 111) < 0)
  {
    v5 = *v5;
  }

  v10[1] = [NSString stringWithUTF8String:v5];
  v9[2] = @"proximityUUID";
  v6 = *(a1 + 32);
  v7 = (v6 + 64);
  if (*(v6 + 87) < 0)
  {
    v7 = *v7;
  }

  v10[2] = [NSString stringWithUTF8String:v7];
  v9[3] = @"clientSpecifiesMajor";
  v10[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 112)];
  v9[4] = @"clientSpecifiesMinor";
  v10[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 113)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
}

uint64_t sub_1006FB0EC(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    if ((a2[63] & 0x80u) == 0)
    {
      v7 = a2 + 40;
    }

    else
    {
      v7 = *(a2 + 5);
    }

    v8 = *(a2 + 56);
    *buf = 68290307;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v4;
    v16 = 2050;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    v22 = 1026;
    v23 = v8;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit monitor session, metric.valid:%{public}d, metric.timestamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, onbehalfbundleid:%{private, location:escape_only}s, totalMonitoredRegions:%{public}d}", buf, 0x3Cu);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FB2C8(uint64_t a1)
{
  v2 = @"totalMonitoredRegions";
  v3 = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 112)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

NSDictionary *sub_1006FB350(uint64_t a1)
{
  v9[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"regionIdentifier";
  v4 = *(a1 + 32);
  v5 = (v4 + 88);
  if (*(v4 + 111) < 0)
  {
    v5 = *v5;
  }

  v10[1] = [NSString stringWithUTF8String:v5];
  v9[2] = @"proximityUUID";
  v6 = *(a1 + 32);
  v7 = (v6 + 64);
  if (*(v6 + 87) < 0)
  {
    v7 = *v7;
  }

  v10[2] = [NSString stringWithUTF8String:v7];
  v9[3] = @"totalMonitoredRegions";
  v10[3] = [NSNumber numberWithUnsignedShort:*(*(a1 + 32) + 112)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
}

uint64_t sub_1006FB468(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    if ((a2[63] & 0x80u) == 0)
    {
      v7 = a2 + 40;
    }

    else
    {
      v7 = *(a2 + 5);
    }

    v8 = a2[116];
    *buf = 68290307;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v4;
    v16 = 2050;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    v22 = 1026;
    v23 = v8;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit monitor session, metric.valid:%{public}d, metric.timestamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, onbehalfbundleid:%{private, location:escape_only}s, foreground:%{public}d}", buf, 0x3Cu);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FB644(uint64_t a1)
{
  v4[0] = @"appIsInForeground";
  v2 = [NSNumber numberWithBool:*(*(a1 + 32) + 116)];
  v4[1] = @"beaconState";
  v5[0] = v2;
  v5[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
}

NSDictionary *sub_1006FB6F0(uint64_t a1)
{
  v9[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v10[0] = [NSString stringWithUTF8String:v3];
  v9[1] = @"regionIdentifier";
  v4 = *(a1 + 32);
  v5 = (v4 + 88);
  if (*(v4 + 111) < 0)
  {
    v5 = *v5;
  }

  v10[1] = [NSString stringWithUTF8String:v5];
  v9[2] = @"proximityUUID";
  v6 = *(a1 + 32);
  v7 = (v6 + 64);
  if (*(v6 + 87) < 0)
  {
    v7 = *v7;
  }

  v10[2] = [NSString stringWithUTF8String:v7];
  v9[3] = @"beaconState";
  v10[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 124)];
  return [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
}

uint64_t sub_1006FB808(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v6 = a2 + 16;
    }

    else
    {
      v6 = *(a2 + 2);
    }

    v7 = a2[80];
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 13) - *(a2 + 12)) >> 3);
    v9 = *(a2 + 16);
    v10 = *(a2 + 9);
    *buf = 68290819;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 1026;
    v17 = v4;
    v18 = 2050;
    v19 = v5;
    v20 = 2081;
    v21 = v6;
    v22 = 1026;
    v23 = v7;
    v24 = 2050;
    v25 = v8;
    v26 = 1026;
    v27 = v9;
    v28 = 1026;
    v29 = v10;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit ranging session, metric.valid:%{public}d, metric.timstamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, regions:%{public}d, beacons:%{public}lu, measurements:%{public}d, duration:%{public}d}", buf, 0x48u);
  }

  AnalyticsSendEventLazy();
  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FBA08(uint64_t a1)
{
  v3[0] = @"appIsInForeground";
  v4[0] = [NSNumber numberWithBool:*(*(a1 + 32) + 81)];
  v3[1] = @"rangingMeasurements";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 64)];
  v3[2] = @"rangingBeacons";
  v4[2] = [NSNumber numberWithUnsignedLong:0xCCCCCCCCCCCCCCCDLL * ((*(*(a1 + 32) + 104) - *(*(a1 + 32) + 96)) >> 3)];
  v3[3] = @"rangingDuration";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 72)];
  v3[4] = @"rangedRegions";
  v4[4] = [NSNumber numberWithUnsignedChar:*(*(a1 + 32) + 80)];
  v3[5] = @"proximityChanges";
  v4[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 84)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_1006FBB4C(uint64_t a1)
{
  v7[0] = @"bundleId";
  v2 = *(a1 + 32);
  v3 = (v2 + 16);
  if (*(v2 + 39) < 0)
  {
    v3 = *v3;
  }

  v8[0] = [NSString stringWithUTF8String:v3];
  v7[1] = @"proximityUUID";
  v4 = *(a1 + 32);
  v5 = (v4 + 40);
  if (*(v4 + 63) < 0)
  {
    v5 = *v5;
  }

  v8[1] = [NSString stringWithUTF8String:v5];
  v7[2] = @"rangingDuration";
  v8[2] = [NSNumber numberWithDouble:*(*(a1 + 32) + 72)];
  v7[3] = @"rangedRegions";
  v8[3] = [NSNumber numberWithUnsignedChar:*(*(a1 + 32) + 80)];
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
}

uint64_t sub_1006FBC58(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = a2 + 16;
    if ((a2[39] & 0x80u) != 0)
    {
      v6 = *(a2 + 2);
    }

    v7 = *(a2 + 16);
    *buf = 68290051;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1026;
    v14 = v4;
    v15 = 2050;
    v16 = v5;
    v17 = 2081;
    v18 = v6;
    v19 = 1026;
    v20 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:iB: submit error event, metric.valid:%{public}d, metric.timstamp:%{public}f, metric.bundleId:%{private, location:escape_only}s, errorType:%{public}d}", buf, 0x32u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FBDC8(uint64_t a1)
{
  v2 = @"ErrorType";
  v3 = [NSNumber numberWithInt:*(*(a1 + 32) + 64)];
  return [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
}

uint64_t sub_1006FBE50(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_1025D45E0 != -1)
  {
    sub_101916474();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    if ((a2[39] & 0x80u) == 0)
    {
      v7 = a2 + 16;
    }

    else
    {
      v7 = *(a2 + 2);
    }

    v8 = *(a2 + 51);
    if (v8)
    {
      LODWORD(v4) = *(a2 + 415);
      v9 = llround(v4 * 100.0 / v8);
    }

    else
    {
      v9 = -1;
    }

    *buf = 67109890;
    v16 = v5;
    v17 = 2048;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    v21 = 1026;
    v22 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#GpsAccessoryCA Submit Gps Accessory metric to CA,metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,LCFusionOnPercentage,%{public}.d", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916488();
  }

  result = AnalyticsSendEventLazy();
  v11 = *(a2 + 204);
  if (v11 != a2 + 1640)
  {
    do
    {
      result = AnalyticsSendEventLazy();
      v12 = *(v11 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v11 + 2);
          v14 = *v13 == v11;
          v11 = v13;
        }

        while (!v14);
      }

      v11 = v13;
    }

    while (v13 != a2 + 1640);
  }

  return result;
}

NSDictionary *sub_1006FC158(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v178[0] = @"AccessoryManufacturer";
  v5 = (v3 + 40);
  if (*(v3 + 63) < 0)
  {
    v5 = *v5;
  }

  v179[0] = [NSString stringWithUTF8String:v5];
  v178[1] = @"AccessoryModel";
  v6 = (*v2 + 88);
  if (*(*v2 + 111) < 0)
  {
    v6 = *v6;
  }

  v179[1] = [NSString stringWithUTF8String:v6];
  v178[2] = @"AccessoryName";
  v7 = (*v2 + 64);
  if (*(*v2 + 87) < 0)
  {
    v7 = *v7;
  }

  v179[2] = [NSString stringWithUTF8String:v7];
  v178[3] = @"AccessoryFirmwareVersion";
  v8 = (*v2 + 112);
  if (*(*v2 + 135) < 0)
  {
    v8 = *v8;
  }

  v179[3] = [NSString stringWithUTF8String:v8];
  v178[4] = @"AccessoryHardwareVersion";
  v9 = (*v2 + 136);
  if (*(*v2 + 159) < 0)
  {
    v9 = *v9;
  }

  v179[4] = [NSString stringWithUTF8String:v9];
  v178[5] = @"BundleId";
  sub_1006FE0C4(*v2 + 16, (*v2 + 1456), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v179[5] = [NSString stringWithUTF8String:p_p];
  v178[6] = @"PPID";
  v11 = (*v2 + 160);
  if (*(*v2 + 183) < 0)
  {
    v11 = *v11;
  }

  v179[6] = [NSString stringWithUTF8String:v11];
  v178[7] = @"IsOnDenyList";
  v179[7] = [NSNumber numberWithBool:*(*v2 + 188)];
  v178[8] = @"IsCarPlaySessionWireless";
  v179[8] = [NSNumber numberWithBool:*(*v2 + 208) != 0];
  v178[9] = @"IsDeviceCharging";
  v179[9] = [NSNumber numberWithBool:*(*v2 + 336) != 0];
  v178[10] = @"IsAppleMapsRerouted";
  v12 = [NSNumber numberWithBool:*(*v2 + 1484) != 0];
  v13 = 0;
  v179[10] = v12;
  v178[11] = @"AccessoryType";
  memset(v177, 0, sizeof(v177));
  v14 = *(v3 + 184);
  do
  {
    if ((v14 >> v13))
    {
      *(v177 + v13) = 1;
    }

    ++v13;
  }

  while (v13 != 6);
  if (HIDWORD(v177[0]))
  {
    v15 = LODWORD(v177[1]) == 0;
  }

  else
  {
    v15 = 1;
  }

  v19 = !v15 && HIDWORD(v177[1]) == 0 && LODWORD(v177[2]) == 0 && HIDWORD(v177[2]) == 0;
  if (LODWORD(v177[0]))
  {
    if (v19)
    {
      v20 = 1;
      goto LABEL_60;
    }

    if (!*(v177 + 4) && __PAIR64__(HIDWORD(v177[1]), 0) == LODWORD(v177[2]) && !HIDWORD(v177[2]))
    {
      v20 = 3;
      goto LABEL_60;
    }
  }

  else
  {
    if (v19)
    {
      v20 = 2;
      goto LABEL_60;
    }

    if (HIDWORD(v177[0]) && !LODWORD(v177[1]) && __PAIR64__(HIDWORD(v177[1]), 0) == LODWORD(v177[2]) && !HIDWORD(v177[2]))
    {
      v20 = 4;
      goto LABEL_60;
    }

    if (!HIDWORD(v177[0]) && LODWORD(v177[1]) && !*(&v177[1] + 4) && !HIDWORD(v177[2]))
    {
      v20 = 5;
      goto LABEL_60;
    }

    if (!*(v177 + 4) && !HIDWORD(v177[1]) && LODWORD(v177[2]) && !HIDWORD(v177[2]))
    {
      v20 = 6;
      goto LABEL_60;
    }
  }

  v20 = 0;
LABEL_60:
  v179[11] = [NSNumber numberWithInt:v20];
  v178[12] = @"NumberOfLocationSession";
  v179[12] = [NSNumber numberWithUnsignedInt:*(*v2 + 196)];
  v178[13] = @"AccessoryConnectedDuration";
  v179[13] = [NSNumber numberWithUnsignedInt:*(*v2 + 192)];
  v178[14] = @"CarPlaySessionDuration";
  v179[14] = [NSNumber numberWithUnsignedInt:*(*v2 + 204)];
  v178[15] = @"TotalLocationSessionDuration";
  v179[15] = [NSNumber numberWithUnsignedInt:*(*v2 + 200)];
  v178[16] = @"DeviceLocationUnavailableEpochsCount";
  v179[16] = [NSNumber numberWithUnsignedInt:*(*v2 + 1004)];
  v178[17] = @"DeadReckonedCount";
  v179[17] = [NSNumber numberWithUnsignedInt:*(*v2 + 1008)];
  v178[18] = @"BadGPRMCCount";
  v179[18] = [NSNumber numberWithUnsignedInt:*(*v2 + 1016)];
  v178[19] = @"AppleMapsRoutingEpochCount";
  v179[19] = [NSNumber numberWithUnsignedInt:*(*v2 + 1480)];
  v178[20] = @"AppleMapsRerouteCount";
  v179[20] = [NSNumber numberWithUnsignedInt:*(*v2 + 1484)];
  v178[21] = @"AppleMapsProceedToRouteCount";
  v179[21] = [NSNumber numberWithUnsignedInt:*(*v2 + 1488)];
  v178[22] = @"NMEAScreeningEnabledDuration";
  v179[22] = [NSNumber numberWithUnsignedInt:*(*v2 + 1520)];
  v178[23] = @"NMEAScreenedEpochCount";
  v179[23] = [NSNumber numberWithUnsignedInt:*(*v2 + 1524)];
  v178[24] = @"NMEAScreenedRejectedEpochCount";
  v179[24] = [NSNumber numberWithUnsignedInt:*(*v2 + 1528)];
  v178[25] = @"WirelessCarPlayDuration";
  v179[25] = [NSNumber numberWithUnsignedInt:*(*v2 + 208)];
  v178[26] = @"NumberOfPublishedLocations";
  v179[26] = [NSNumber numberWithUnsignedInt:*(*v2 + 216)];
  v178[27] = @"ShiftedLocationEpochCount";
  v179[27] = [NSNumber numberWithUnsignedInt:*(*v2 + 212)];
  v178[28] = @"LocationSessionPercentage";
  v23 = *(*v2 + 192);
  if (v23)
  {
    LODWORD(v22) = *(*v2 + 200);
    LODWORD(v21) = llround(v22 * 100.0 / v23);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v179[28] = [NSNumber numberWithInt:v21];
  v178[29] = @"AppleMapsRoutingPercentage";
  v26 = *(*v2 + 192);
  if (v26)
  {
    LODWORD(v25) = *(*v2 + 1480);
    LODWORD(v24) = llround(v25 * 100.0 / v26);
  }

  else
  {
    v24 = 0xFFFFFFFFLL;
  }

  v179[29] = [NSNumber numberWithInt:v24];
  v178[30] = @"DeviceChargingPercentage";
  v29 = *(*v2 + 192);
  if (v29)
  {
    LODWORD(v28) = *(*v2 + 336);
    LODWORD(v27) = llround(v28 * 100.0 / v29);
  }

  else
  {
    v27 = 0xFFFFFFFFLL;
  }

  v179[30] = [NSNumber numberWithInt:v27];
  v178[31] = @"DeviceLocationAvailablePercentage";
  v31 = *(*v2 + 200);
  if (v31)
  {
    LODWORD(v30) = llround((v31 - *(*v2 + 1004)) * 100.0 / v31);
  }

  else
  {
    v30 = 0xFFFFFFFFLL;
  }

  v179[31] = [NSNumber numberWithInt:v30];
  v178[32] = @"LocationPublishedPercentage";
  v34 = *(*v2 + 200);
  if (v34)
  {
    LODWORD(v33) = *(*v2 + 216);
    LODWORD(v32) = llround(v33 * 100.0 / v34);
  }

  else
  {
    v32 = 0xFFFFFFFFLL;
  }

  v179[32] = [NSNumber numberWithInt:v32];
  v178[33] = @"ShiftedLocationPercentage";
  v37 = *(*v2 + 200);
  if (v37)
  {
    LODWORD(v36) = *(*v2 + 212);
    LODWORD(v35) = llround(v36 * 100.0 / v37);
  }

  else
  {
    v35 = 0xFFFFFFFFLL;
  }

  v179[33] = [NSNumber numberWithInt:v35];
  v178[34] = @"BadGPRMCPercentage";
  v40 = *(*v2 + 200);
  if (v40)
  {
    LODWORD(v39) = *(*v2 + 1016);
    LODWORD(v38) = llround(v39 * 100.0 / v40);
  }

  else
  {
    v38 = 0xFFFFFFFFLL;
  }

  v179[34] = [NSNumber numberWithInt:v38];
  v178[35] = @"DeadReckonedPercentage";
  v43 = *(*v2 + 200);
  if (v43)
  {
    LODWORD(v42) = *(*v2 + 1008);
    LODWORD(v41) = llround(v42 * 100.0 / v43);
  }

  else
  {
    v41 = 0xFFFFFFFFLL;
  }

  v179[35] = [NSNumber numberWithInt:v41];
  v178[36] = @"NMEAScreenedPercentage";
  v46 = *(*v2 + 200);
  if (v46)
  {
    LODWORD(v45) = *(*v2 + 1524);
    LODWORD(v44) = llround(v45 * 100.0 / v46);
  }

  else
  {
    v44 = 0xFFFFFFFFLL;
  }

  v179[36] = [NSNumber numberWithInt:v44];
  v178[37] = @"NMEAScreenedRejectedPercentage";
  v49 = *(*v2 + 200);
  if (v49)
  {
    LODWORD(v48) = *(*v2 + 1528);
    LODWORD(v47) = llround(v48 * 100.0 / v49);
  }

  else
  {
    v47 = 0xFFFFFFFFLL;
  }

  v179[37] = [NSNumber numberWithInt:v47];
  v178[38] = @"AppleMapsReroutesPerHour";
  v179[38] = [NSNumber numberWithInt:*(a1 + 48)];
  v178[39] = @"AppleMapsProceedToRoutesPerHour";
  v179[39] = [NSNumber numberWithInt:*(a1 + 52)];
  v178[40] = @"AppleMapsReroutesOrPTRPerHour";
  v179[40] = [NSNumber numberWithInt:*(a1 + 56)];
  v178[41] = @"TTFFAllAvg";
  if (*(*v2 + 240))
  {
    v50 = *(*v2 + 248);
  }

  else
  {
    v50 = 0.0;
  }

  v179[41] = [NSNumber numberWithDouble:v50];
  v178[42] = @"TTFFAllMax";
  v179[42] = [NSNumber numberWithDouble:*(*v2 + 224)];
  v178[43] = @"TTFFAllMin";
  v179[43] = [NSNumber numberWithDouble:*(*v2 + 232)];
  v178[44] = @"TTFFAllRMS";
  if (*(*v2 + 240))
  {
    v51 = sqrt(*(*v2 + 264));
  }

  else
  {
    v51 = 0.0;
  }

  v179[44] = [NSNumber numberWithDouble:v51];
  v178[45] = @"TTFFAllSTD";
  v52 = *(*v2 + 240);
  v53 = -1.0;
  if (v52 >= 2)
  {
    v53 = sqrt(*(*v2 + 256) / (v52 - 1));
  }

  v179[45] = [NSNumber numberWithDouble:v53];
  v178[46] = @"TTFFNonDRAvg";
  if (*(*v2 + 288))
  {
    v54 = *(*v2 + 296);
  }

  else
  {
    v54 = 0.0;
  }

  v179[46] = [NSNumber numberWithDouble:v54];
  v178[47] = @"TTFFNonDRMax";
  v179[47] = [NSNumber numberWithDouble:*(*v2 + 272)];
  v178[48] = @"TTFFNonDRMin";
  v179[48] = [NSNumber numberWithDouble:*(*v2 + 280)];
  v178[49] = @"TTFFNonDRRMS";
  if (*(*v2 + 288))
  {
    v55 = sqrt(*(*v2 + 312));
  }

  else
  {
    v55 = 0.0;
  }

  v179[49] = [NSNumber numberWithDouble:v55];
  v178[50] = @"TTFFNonDRSTD";
  v56 = *(*v2 + 288);
  v57 = -1.0;
  if (v56 >= 2)
  {
    v57 = sqrt(*(*v2 + 304) / (v56 - 1));
  }

  v179[50] = [NSNumber numberWithDouble:v57];
  v178[51] = @"HorzPosSolnDiffAvg";
  v58 = 0.0;
  if (*(*v2 + 456) >= 0x5Bu)
  {
    v58 = *(*v2 + 464);
  }

  v179[51] = [NSNumber numberWithDouble:v58];
  v178[52] = @"HorzPosSolnDiffMax";
  v179[52] = [NSNumber numberWithDouble:*(*v2 + 440)];
  v178[53] = @"HorzPosSolnDiffMin";
  v179[53] = [NSNumber numberWithDouble:*(*v2 + 448)];
  v178[54] = @"HorzPosSolnDiffRMS";
  v59 = 0.0;
  if (*(*v2 + 456) >= 0x5Bu)
  {
    v59 = sqrt(*(*v2 + 480));
  }

  v179[54] = [NSNumber numberWithDouble:v59];
  v178[55] = @"HorzPosSolnDiffSTD";
  v60 = *(*v2 + 456);
  v61 = -1.0;
  if (v60 >= 0x5B)
  {
    v61 = sqrt(*(*v2 + 472) / (v60 - 1));
  }

  v179[55] = [NSNumber numberWithDouble:v61];
  v178[56] = @"HorzDRPosSolnDiffAvg";
  v62 = 0.0;
  if (*(*v2 + 624) >= 0x5Bu)
  {
    v62 = *(*v2 + 632);
  }

  v179[56] = [NSNumber numberWithDouble:v62];
  v178[57] = @"HorzDRPosSolnDiffMax";
  v179[57] = [NSNumber numberWithDouble:*(*v2 + 608)];
  v178[58] = @"HorzDRPosSolnDiffMin";
  v179[58] = [NSNumber numberWithDouble:*(*v2 + 616)];
  v178[59] = @"HorzDRPosSolnDiffRMS";
  v63 = 0.0;
  if (*(*v2 + 624) >= 0x5Bu)
  {
    v63 = sqrt(*(*v2 + 648));
  }

  v179[59] = [NSNumber numberWithDouble:v63];
  v178[60] = @"HorzDRPosSolnDiffSTD";
  v64 = *(*v2 + 624);
  v65 = -1.0;
  if (v64 >= 0x5B)
  {
    v65 = sqrt(*(*v2 + 640) / (v64 - 1));
  }

  v179[60] = [NSNumber numberWithDouble:v65];
  v178[61] = @"AltitudeSolnDiffAvg";
  v66 = 0.0;
  if (*(*v2 + 744) >= 0x5Bu)
  {
    v66 = *(*v2 + 752);
  }

  v179[61] = [NSNumber numberWithDouble:v66];
  v178[62] = @"AltitudeSolnDiffMax";
  v179[62] = [NSNumber numberWithDouble:*(*v2 + 728)];
  v178[63] = @"AltitudeSolnDiffMin";
  v179[63] = [NSNumber numberWithDouble:*(*v2 + 736)];
  v178[64] = @"AltitudeSolnDiffRMS";
  v67 = 0.0;
  if (*(*v2 + 744) >= 0x5Bu)
  {
    v67 = sqrt(*(*v2 + 768));
  }

  v179[64] = [NSNumber numberWithDouble:v67];
  v178[65] = @"AltitudeSolnDiffSTD";
  v68 = *(*v2 + 744);
  v69 = -1.0;
  if (v68 >= 0x5B)
  {
    v69 = sqrt(*(*v2 + 760) / (v68 - 1));
  }

  v179[65] = [NSNumber numberWithDouble:v69];
  v178[66] = @"CourseSolnDiffAvg";
  v70 = 0.0;
  if (*(*v2 + 864) >= 0x5Bu)
  {
    v70 = *(*v2 + 872);
  }

  v179[66] = [NSNumber numberWithDouble:v70];
  v178[67] = @"CourseSolnDiffMax";
  v179[67] = [NSNumber numberWithDouble:*(*v2 + 848)];
  v178[68] = @"CourseSolnDiffMin";
  v179[68] = [NSNumber numberWithDouble:*(*v2 + 856)];
  v178[69] = @"CourseSolnDiffRMS";
  v71 = 0.0;
  if (*(*v2 + 864) >= 0x5Bu)
  {
    v71 = sqrt(*(*v2 + 888));
  }

  v179[69] = [NSNumber numberWithDouble:v71];
  v178[70] = @"CourseSolnDiffSTD";
  v72 = *(*v2 + 864);
  v73 = -1.0;
  if (v72 >= 0x5B)
  {
    v73 = sqrt(*(*v2 + 880) / (v72 - 1));
  }

  v179[70] = [NSNumber numberWithDouble:v73];
  v178[71] = @"SpeedSolnDiffAvg";
  v74 = 0.0;
  if (*(*v2 + 968) >= 0x5Bu)
  {
    v74 = *(*v2 + 976);
  }

  v179[71] = [NSNumber numberWithDouble:v74];
  v178[72] = @"SpeedSolnDiffMax";
  v179[72] = [NSNumber numberWithDouble:*(*v2 + 952)];
  v178[73] = @"SpeedSolnDiffMin";
  v179[73] = [NSNumber numberWithDouble:*(*v2 + 960)];
  v178[74] = @"SpeedSolnDiffRMS";
  v75 = 0.0;
  if (*(*v2 + 968) >= 0x5Bu)
  {
    v75 = sqrt(*(*v2 + 992));
  }

  v179[74] = [NSNumber numberWithDouble:v75];
  v178[75] = @"SpeedSolnDiffSTD";
  v76 = *(*v2 + 968);
  v77 = -1.0;
  if (v76 >= 0x5B)
  {
    v77 = sqrt(*(*v2 + 984) / (v76 - 1));
  }

  v179[75] = [NSNumber numberWithDouble:v77];
  v178[76] = @"GPRMCLatencyAvg";
  v78 = -1.0;
  if (*(*v2 + 1064) >= 0x5Bu)
  {
    v78 = *(*v2 + 1072);
  }

  v179[76] = [NSNumber numberWithDouble:v78];
  v178[77] = @"GPRMCLatencyMax";
  v179[77] = [NSNumber numberWithDouble:*(*v2 + 1048)];
  v178[78] = @"GPRMCLatencyMin";
  v179[78] = [NSNumber numberWithDouble:*(*v2 + 1056)];
  v178[79] = @"GPRMCLatencyRMS";
  v79 = -1.0;
  if (*(*v2 + 1064) >= 0x5Bu)
  {
    v79 = sqrt(*(*v2 + 1088));
  }

  v179[79] = [NSNumber numberWithDouble:v79];
  v178[80] = @"GPRMCLatencySTD";
  v80 = *(*v2 + 1064);
  v81 = -1.0;
  if (v80 >= 0x5B)
  {
    v81 = sqrt(*(*v2 + 1080) / (v80 - 1));
  }

  v179[80] = [NSNumber numberWithDouble:v81];
  v178[81] = @"GPRMCSpacingAvg";
  v82 = -1.0;
  if (*(*v2 + 1112) >= 0x5Bu)
  {
    v82 = *(*v2 + 1120);
  }

  v179[81] = [NSNumber numberWithDouble:v82];
  v178[82] = @"GPRMCSpacingMax";
  v179[82] = [NSNumber numberWithDouble:*(*v2 + 1096)];
  v178[83] = @"GPRMCSpacingMin";
  v179[83] = [NSNumber numberWithDouble:*(*v2 + 1104)];
  v178[84] = @"GPRMCSpacingRMS";
  v83 = -1.0;
  if (*(*v2 + 1112) >= 0x5Bu)
  {
    v83 = sqrt(*(*v2 + 1136));
  }

  v179[84] = [NSNumber numberWithDouble:v83];
  v178[85] = @"GPRMCSpacingSTD";
  v84 = *(*v2 + 1112);
  v85 = -1.0;
  if (v84 >= 0x5B)
  {
    v85 = sqrt(*(*v2 + 1128) / (v84 - 1));
  }

  v179[85] = [NSNumber numberWithDouble:v85];
  v178[86] = @"GPGGALatencyAvg";
  v86 = -1.0;
  if (*(*v2 + 1192) >= 0x5Bu)
  {
    v86 = *(*v2 + 1200);
  }

  v179[86] = [NSNumber numberWithDouble:v86];
  v178[87] = @"GPGGALatencyMax";
  v179[87] = [NSNumber numberWithDouble:*(*v2 + 1176)];
  v178[88] = @"GPGGALatencyMin";
  v179[88] = [NSNumber numberWithDouble:*(*v2 + 1184)];
  v178[89] = @"GPGGALatencyRMS";
  v87 = -1.0;
  if (*(*v2 + 1192) >= 0x5Bu)
  {
    v87 = sqrt(*(*v2 + 1216));
  }

  v179[89] = [NSNumber numberWithDouble:v87];
  v178[90] = @"GPGGALatencySTD";
  v88 = *(*v2 + 1192);
  v89 = -1.0;
  if (v88 >= 0x5B)
  {
    v89 = sqrt(*(*v2 + 1208) / (v88 - 1));
  }

  v179[90] = [NSNumber numberWithDouble:v89];
  v178[91] = @"GPGGASpacingAvg";
  v90 = -1.0;
  if (*(*v2 + 1240) >= 0x5Bu)
  {
    v90 = *(*v2 + 1248);
  }

  v179[91] = [NSNumber numberWithDouble:v90];
  v178[92] = @"GPGGASpacingMax";
  v179[92] = [NSNumber numberWithDouble:*(*v2 + 1224)];
  v178[93] = @"GPGGASpacingMin";
  v179[93] = [NSNumber numberWithDouble:*(*v2 + 1232)];
  v178[94] = @"GPGGASpacingRMS";
  v91 = -1.0;
  if (*(*v2 + 1240) >= 0x5Bu)
  {
    v91 = sqrt(*(*v2 + 1264));
  }

  v179[94] = [NSNumber numberWithDouble:v91];
  v178[95] = @"GPGGASpacingSTD";
  v92 = *(*v2 + 1240);
  v93 = -1.0;
  if (v92 >= 0x5B)
  {
    v93 = sqrt(*(*v2 + 1256) / (v92 - 1));
  }

  v179[95] = [NSNumber numberWithDouble:v93];
  v178[96] = @"PASCDLatencyAvg";
  v94 = -1.0;
  if (*(*v2 + 1320) >= 0x5Bu)
  {
    v94 = *(*v2 + 1328);
  }

  v179[96] = [NSNumber numberWithDouble:v94];
  v178[97] = @"PASCDLatencyMax";
  v179[97] = [NSNumber numberWithDouble:*(*v2 + 1304)];
  v178[98] = @"PASCDLatencyMin";
  v179[98] = [NSNumber numberWithDouble:*(*v2 + 1312)];
  v178[99] = @"PASCDLatencyRMS";
  v95 = -1.0;
  if (*(*v2 + 1320) >= 0x5Bu)
  {
    v95 = sqrt(*(*v2 + 1344));
  }

  v179[99] = [NSNumber numberWithDouble:v95];
  v178[100] = @"PASCDLatencySTD";
  v96 = *(*v2 + 1320);
  v97 = -1.0;
  if (v96 >= 0x5B)
  {
    v97 = sqrt(*(*v2 + 1336) / (v96 - 1));
  }

  v179[100] = [NSNumber numberWithDouble:v97];
  v178[101] = @"PASCDSpacingAvg";
  v98 = -1.0;
  if (*(*v2 + 1368) >= 0x5Bu)
  {
    v98 = *(*v2 + 1376);
  }

  v179[101] = [NSNumber numberWithDouble:v98];
  v178[102] = @"PASCDSpacingMax";
  v179[102] = [NSNumber numberWithDouble:*(*v2 + 1352)];
  v178[103] = @"PASCDSpacingMin";
  v179[103] = [NSNumber numberWithDouble:*(*v2 + 1360)];
  v178[104] = @"PASCDSpacingRMS";
  v99 = -1.0;
  if (*(*v2 + 1368) >= 0x5Bu)
  {
    v99 = sqrt(*(*v2 + 1392));
  }

  v179[104] = [NSNumber numberWithDouble:v99];
  v178[105] = @"PASCDSpacingSTD";
  v100 = *(*v2 + 1368);
  v101 = -1.0;
  if (v100 >= 0x5B)
  {
    v101 = sqrt(*(*v2 + 1384) / (v100 - 1));
  }

  v179[105] = [NSNumber numberWithDouble:v101];
  v178[106] = @"ChargingTypeMode";
  LODWORD(v177[0]) = 0;
  v179[106] = [NSNumber numberWithInt:sub_1006FE1E8(v4, v177, (*v2 + 344))];
  v178[107] = @"AppleMapsRoutingType";
  v175 = 6;
  v179[107] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v175, (*v2 + 1496))];
  v178[108] = @"NMEAScreeningLocationType";
  v174 = 0;
  v179[108] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v174, (*v2 + 1536))];
  v178[109] = @"PASCDRavenUsedSpeedMode";
  v173 = 0;
  v179[109] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v173, (*v2 + 1560))];
  v178[110] = @"PASCDRavenRejectedSpeedMode";
  v172 = 0;
  v179[110] = [NSNumber numberWithInt:sub_1006FE1E8(v4, &v172, (*v2 + 1584))];
  v178[111] = @"GPSUnc0To5Percentage";
  v102 = sub_1006FE250(*v2 + 416, 1, 0);
  v104 = *(*v2 + 504);
  if (v104)
  {
    LODWORD(v103) = llround(v102 * 100.0 / v104);
  }

  else
  {
    v103 = 0xFFFFFFFFLL;
  }

  v179[111] = [NSNumber numberWithInt:v103];
  v178[112] = @"GPSUnc5To10Percentage";
  v105 = sub_1006FE250(*v2 + 416, 2, 0);
  v107 = *(*v2 + 504);
  if (v107)
  {
    LODWORD(v106) = llround(v105 * 100.0 / v107);
  }

  else
  {
    v106 = 0xFFFFFFFFLL;
  }

  v179[112] = [NSNumber numberWithInt:v106];
  v178[113] = @"GPSUnc10To15Percentage";
  v108 = sub_1006FE250(*v2 + 416, 3, 0);
  v110 = *(*v2 + 504);
  if (v110)
  {
    LODWORD(v109) = llround(v108 * 100.0 / v110);
  }

  else
  {
    v109 = 0xFFFFFFFFLL;
  }

  v179[113] = [NSNumber numberWithInt:v109];
  v178[114] = @"GPSUnc15To20Percentage";
  v111 = sub_1006FE250(*v2 + 416, 4, 0);
  v113 = *(*v2 + 504);
  if (v113)
  {
    LODWORD(v112) = llround(v111 * 100.0 / v113);
  }

  else
  {
    v112 = 0xFFFFFFFFLL;
  }

  v179[114] = [NSNumber numberWithInt:v112];
  v178[115] = @"GPSUnc20To30Percentage";
  v114 = sub_1006FE250(*v2 + 416, 5, 0);
  v116 = *(*v2 + 504);
  if (v116)
  {
    LODWORD(v115) = llround(v114 * 100.0 / v116);
  }

  else
  {
    v115 = 0xFFFFFFFFLL;
  }

  v179[115] = [NSNumber numberWithInt:v115];
  v178[116] = @"GPSUnc30To40Percentage";
  v117 = sub_1006FE250(*v2 + 416, 6, 0);
  v119 = *(*v2 + 504);
  if (v119)
  {
    LODWORD(v118) = llround(v117 * 100.0 / v119);
  }

  else
  {
    v118 = 0xFFFFFFFFLL;
  }

  v179[116] = [NSNumber numberWithInt:v118];
  v178[117] = @"GPSUnc40To50Percentage";
  v120 = sub_1006FE250(*v2 + 416, 7, 0);
  v122 = *(*v2 + 504);
  if (v122)
  {
    LODWORD(v121) = llround(v120 * 100.0 / v122);
  }

  else
  {
    v121 = 0xFFFFFFFFLL;
  }

  v179[117] = [NSNumber numberWithInt:v121];
  v178[118] = @"GPSUnc50To70Percentage";
  v123 = sub_1006FE250(*v2 + 416, 8, 0);
  v125 = *(*v2 + 504);
  if (v125)
  {
    LODWORD(v124) = llround(v123 * 100.0 / v125);
  }

  else
  {
    v124 = 0xFFFFFFFFLL;
  }

  v179[118] = [NSNumber numberWithInt:v124];
  v178[119] = @"GPSUnc70To100Percentage";
  v126 = sub_1006FE250(*v2 + 416, 9, 0);
  v128 = *(*v2 + 504);
  if (v128)
  {
    LODWORD(v127) = llround(v126 * 100.0 / v128);
  }

  else
  {
    v127 = 0xFFFFFFFFLL;
  }

  v179[119] = [NSNumber numberWithInt:v127];
  v178[120] = @"GPSUncOver100To200Percentage";
  v129 = sub_1006FE250(*v2 + 416, 10, 0);
  v131 = *(*v2 + 504);
  if (v131)
  {
    LODWORD(v130) = llround(v129 * 100.0 / v131);
  }

  else
  {
    v130 = 0xFFFFFFFFLL;
  }

  v179[120] = [NSNumber numberWithInt:v130];
  v178[121] = @"GPSUncOver200To300Percentage";
  v132 = sub_1006FE250(*v2 + 416, 11, 0);
  v134 = *(*v2 + 504);
  if (v134)
  {
    LODWORD(v133) = llround(v132 * 100.0 / v134);
  }

  else
  {
    v133 = 0xFFFFFFFFLL;
  }

  v179[121] = [NSNumber numberWithInt:v133];
  v178[122] = @"GPSUncOver300Percentage";
  v135 = sub_1006FE250(*v2 + 416, 12, 0);
  v137 = *(*v2 + 504);
  if (v137)
  {
    LODWORD(v136) = llround(v135 * 100.0 / v137);
  }

  else
  {
    v136 = 0xFFFFFFFFLL;
  }

  v179[122] = [NSNumber numberWithInt:v136];
  v178[123] = @"GPSUncAverage";
  v138 = 0.0;
  if (*(*v2 + 504) >= 0x5Bu)
  {
    v138 = *(*v2 + 512);
  }

  v179[123] = [NSNumber numberWithDouble:round(v138)];
  v178[124] = @"GPSUncRMS";
  v139 = 0.0;
  if (*(*v2 + 504) >= 0x5Bu)
  {
    v139 = sqrt(*(*v2 + 528));
  }

  v179[124] = [NSNumber numberWithDouble:round(v139)];
  v178[125] = @"CarPlayLCFusionFeatureOffEpochCount";
  v179[125] = [NSNumber numberWithUnsignedInt:*(*v2 + 1656)];
  v178[126] = @"CarPlayLCFusionFeatureOnEpochCount";
  v179[126] = [NSNumber numberWithUnsignedInt:*(*v2 + 1660)];
  v178[127] = @"LCFusionAccessoryNotSelectedPercentage";
  v142 = *(*v2 + 1660);
  if (v142)
  {
    LODWORD(v141) = *(*v2 + 1664);
    LODWORD(v140) = llround(v141 * 100.0 / v142);
  }

  else
  {
    v140 = 0xFFFFFFFFLL;
  }

  v179[127] = [NSNumber numberWithInt:v140];
  v178[128] = @"LCFusionAccessoryNotSelectedEpochCount";
  v179[128] = [NSNumber numberWithUnsignedInt:*(*v2 + 1664)];
  v178[129] = @"LCFusionNumberOfHypothesisSessionMax";
  v179[129] = [NSNumber numberWithUnsignedInt:*(*v2 + 1724)];
  v178[130] = @"LCFusionMutliHypothesesAccessoryOutputEpochCount";
  v179[130] = [NSNumber numberWithUnsignedInt:*(*v2 + 1668)];
  v178[131] = @"LCFusionMutliHypothesesAccessoryOutputPercentage";
  v145 = *(*v2 + 1660);
  if (v145)
  {
    LODWORD(v144) = *(*v2 + 1668);
    LODWORD(v143) = llround(v144 * 100.0 / v145);
  }

  else
  {
    v143 = 0xFFFFFFFFLL;
  }

  v179[131] = [NSNumber numberWithInt:v143];
  v178[132] = @"LCFusionGPSNotSelectedEpochCount";
  v179[132] = [NSNumber numberWithUnsignedInt:*(*v2 + 1712)];
  v178[133] = @"LCFusionGPSNotSelectedPercentage";
  v148 = *(*v2 + 1660);
  if (v148)
  {
    LODWORD(v147) = *(*v2 + 1712);
    LODWORD(v146) = llround(v147 * 100.0 / v148);
  }

  else
  {
    v146 = 0xFFFFFFFFLL;
  }

  v179[133] = [NSNumber numberWithInt:v146];
  v178[134] = @"LCFusionGPSSelectedButOverriddenPercentage";
  v151 = *(*v2 + 1660);
  if (v151)
  {
    LODWORD(v150) = *(*v2 + 1716);
    LODWORD(v149) = llround(v150 * 100.0 / v151);
  }

  else
  {
    v149 = 0xFFFFFFFFLL;
  }

  v179[134] = [NSNumber numberWithInt:v149];
  v178[135] = @"LCFusionGPSBadQualityPercentage";
  v154 = *(*v2 + 1660);
  if (v154)
  {
    LODWORD(v153) = *(*v2 + 1708);
    LODWORD(v152) = llround(v153 * 100.0 / v154);
  }

  else
  {
    v152 = 0xFFFFFFFFLL;
  }

  v179[135] = [NSNumber numberWithInt:v152];
  v178[136] = @"LCFusionGPSAccessoryDisagreeEpochCount";
  v179[136] = [NSNumber numberWithUnsignedInt:*(*v2 + 1672)];
  v178[137] = @"LCFusionGPSAccessoryDisagreePercentage";
  v157 = *(*v2 + 1660);
  if (v157)
  {
    LODWORD(v156) = *(*v2 + 1672);
    LODWORD(v155) = llround(v156 * 100.0 / v157);
  }

  else
  {
    v155 = 0xFFFFFFFFLL;
  }

  v179[137] = [NSNumber numberWithInt:v155];
  v178[138] = @"LCFusionHigherUncAccessoryYieldedPercentage";
  v160 = *(*v2 + 1660);
  if (v160)
  {
    LODWORD(v159) = *(*v2 + 1720);
    LODWORD(v158) = llround(v159 * 100.0 / v160);
  }

  else
  {
    v158 = 0xFFFFFFFFLL;
  }

  v179[138] = [NSNumber numberWithInt:v158];
  v178[139] = @"LCFusionWiFiFusedEpochCount";
  v179[139] = [NSNumber numberWithUnsignedInt:*(*v2 + 1684)];
  v178[140] = @"LCFusionTimeSinceLastWiFiFixSessionMax";
  v179[140] = [NSNumber numberWithUnsignedInt:*(*v2 + 1728)];
  v178[141] = @"LCFusionWiFiGPSDisagreePercentage";
  v163 = *(*v2 + 1660);
  if (v163)
  {
    LODWORD(v162) = *(*v2 + 1676);
    LODWORD(v161) = llround(v162 * 100.0 / v163);
  }

  else
  {
    v161 = 0xFFFFFFFFLL;
  }

  v179[141] = [NSNumber numberWithInt:v161];
  v178[142] = @"LCFusionWiFiAccessoryDisagreePercentage";
  v166 = *(*v2 + 1660);
  if (v166)
  {
    LODWORD(v165) = *(*v2 + 1680);
    LODWORD(v164) = llround(v165 * 100.0 / v166);
  }

  else
  {
    v164 = 0xFFFFFFFFLL;
  }

  v179[142] = [NSNumber numberWithInt:v164];
  v178[143] = @"LCFusionWiFiFusedPercentage";
  v169 = *(*v2 + 1660);
  if (v169)
  {
    LODWORD(v168) = *(*v2 + 1684);
    LODWORD(v167) = llround(v168 * 100.0 / v169);
  }

  else
  {
    v167 = 0xFFFFFFFFLL;
  }

  v179[143] = [NSNumber numberWithInt:v167];
  v178[144] = @"LCFusionDistanceAccessoryToFuserStateSessionMax";
  v179[144] = [NSNumber numberWithUnsignedInt:*(*v2 + 1688)];
  v178[145] = @"LCFusionDistanceAccessoryToGPSSessionMax";
  v179[145] = [NSNumber numberWithUnsignedInt:*(*v2 + 1692)];
  v178[146] = @"LCFusionDistanceAccessoryToOutput";
  v179[146] = [NSNumber numberWithUnsignedInt:*(*v2 + 1696)];
  v178[147] = @"LCFusionDistanceAccessoryToWiFiSessionMax";
  v179[147] = [NSNumber numberWithUnsignedInt:*(*v2 + 1700)];
  v178[148] = @"LCFusionDistanceGPSToOutputSessionMax";
  v179[148] = [NSNumber numberWithUnsignedInt:*(*v2 + 1704)];
  v170 = [NSDictionary dictionaryWithObjects:v179 forKeys:v178 count:149];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v170;
}

void sub_1006FE0C4(uint64_t a1@<X1>, void *a2@<X2>, std::string *a3@<X8>)
{
  v4 = *(a1 + 23);
  if (a2[2])
  {
    if (v4 < 0)
    {
      sub_100007244(a3, *a1, *(a1 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    v8 = *a2;
    v6 = a2 + 1;
    v7 = v8;
    if (v8 != v6)
    {
      v9 = 0;
      do
      {
        if (v9 < *(v7 + 14))
        {
          std::string::operator=(a3, (v7 + 4));
          v9 = *(v7 + 14);
        }

        v10 = v7[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v7[2];
            v12 = *v11 == v7;
            v7 = v11;
          }

          while (!v12);
        }

        v7 = v11;
      }

      while (v11 != v6);
    }
  }

  else if (v4 < 0)
  {
    v13 = *(a1 + 8);
    v14 = *a1;

    sub_100007244(a3, v14, v13);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void sub_1006FE1CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FE1E8(uint64_t a1, unsigned int *a2, void *a3)
{
  result = *a2;
  if (a3[2])
  {
    v6 = *a3;
    v4 = a3 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      v7 = 0;
      do
      {
        v8 = *(v5 + 8);
        v9 = v7 >= v8;
        if (v7 <= v8)
        {
          v7 = *(v5 + 8);
        }

        if (v9)
        {
          result = result;
        }

        else
        {
          result = *(v5 + 7);
        }

        v10 = v5[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v5[2];
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        v5 = v11;
      }

      while (v11 != v4);
    }
  }

  return result;
}

uint64_t sub_1006FE250(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  for (i = *(a1 + 8); i; i = *i)
  {
    v4 = *(i + 7);
    if (v4 <= a2)
    {
      if (v4 >= a2)
      {
        return *sub_1001FD038(a1, &v6);
      }

      ++i;
    }
  }

  return a3;
}

NSDictionary *sub_1006FE2A8(uint64_t a1)
{
  v23[0] = @"UnsupportedMessage";
  v2 = *(a1 + 40);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v24[0] = [NSString stringWithUTF8String:v2];
  v23[1] = @"AccessoryManufacturer";
  v3 = *(a1 + 48);
  v4 = (v3 + 40);
  if (*(v3 + 63) < 0)
  {
    v4 = *v4;
  }

  v24[1] = [NSString stringWithUTF8String:v4];
  v23[2] = @"AccessoryModel";
  v5 = *(a1 + 48);
  v6 = (v5 + 88);
  if (*(v5 + 111) < 0)
  {
    v6 = *v6;
  }

  v24[2] = [NSString stringWithUTF8String:v6];
  v23[3] = @"AccessoryName";
  v7 = *(a1 + 48);
  v8 = (v7 + 64);
  if (*(v7 + 87) < 0)
  {
    v8 = *v8;
  }

  v24[3] = [NSString stringWithUTF8String:v8];
  v23[4] = @"AccessoryFirmwareVersion";
  v9 = *(a1 + 48);
  v10 = (v9 + 112);
  if (*(v9 + 135) < 0)
  {
    v10 = *v10;
  }

  v24[4] = [NSString stringWithUTF8String:v10];
  v23[5] = @"AccessoryHardwareVersion";
  v11 = *(a1 + 48);
  v12 = (v11 + 136);
  if (*(v11 + 159) < 0)
  {
    v12 = *v12;
  }

  v24[5] = [NSString stringWithUTF8String:v12];
  v23[6] = @"BundleId";
  sub_1006FE0C4(*(a1 + 48) + 16, (*(a1 + 48) + 1456), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v24[6] = [NSString stringWithUTF8String:p_p];
  v23[7] = @"PPID";
  v14 = *(a1 + 48);
  v15 = (v14 + 160);
  if (*(v14 + 183) < 0)
  {
    v15 = *v15;
  }

  v24[7] = [NSString stringWithUTF8String:v15];
  v23[8] = @"IsOnDenyList";
  v24[8] = [NSNumber numberWithBool:*(*(a1 + 48) + 188)];
  v23[9] = @"IsCarPlaySessionWireless";
  v24[9] = [NSNumber numberWithBool:*(*(a1 + 48) + 208) != 0];
  v23[10] = @"IsDeviceCharging";
  v24[10] = [NSNumber numberWithBool:*(*(a1 + 48) + 336) != 0];
  v23[11] = @"DeviceChargingPercentage";
  v18 = *(a1 + 48);
  v19 = *(v18 + 192);
  if (v19)
  {
    LODWORD(v17) = *(v18 + 336);
    LODWORD(v16) = llround(v17 * 100.0 / v19);
  }

  else
  {
    v16 = 0xFFFFFFFFLL;
  }

  v24[11] = [NSNumber numberWithInt:v16];
  v23[12] = @"IsAppleMapsRerouted";
  v24[12] = [NSNumber numberWithBool:*(*(a1 + 48) + 1484) != 0];
  v23[13] = @"AppleMapsReroutesPerHour";
  v24[13] = [NSNumber numberWithInt:*(a1 + 56)];
  v23[14] = @"AppleMapsProceedToRoutesPerHour";
  v24[14] = [NSNumber numberWithInt:*(a1 + 60)];
  v23[15] = @"AppleMapsReroutesOrPTRPerHour";
  v24[15] = [NSNumber numberWithInt:*(a1 + 64)];
  v20 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:16];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v20;
}

uint64_t sub_1006FE618(uint64_t a1, int *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1019165FC();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[6];
    v11 = a2[7];
    *buf = 67176449;
    v14 = v4;
    v15 = 1025;
    v16 = v5;
    v17 = 1025;
    v18 = v6;
    v19 = 1025;
    v20 = v7;
    v21 = 1025;
    v22 = v8;
    v23 = 1025;
    v24 = v9;
    v25 = 1025;
    v26 = v10;
    v27 = 1025;
    v28 = v11;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#gnssca,AssistanceFileCountMetrics,Submit to CA,shortTermOrbitAssistanceDailyDownloadCount,%{private}d,longTermOrbitAssistanceDailyDownloadCount,%{private}d,rtiDailyDownloadCount,%{private}d,ravenGnssAssistanceDailyDownloadCount,%{private}d,shortTermOrbitAssistanceDailyDownloadLargeCount,%{private}d,longTermOrbitAssistanceDailyDownloadLargeCount,%{private}d,rtiDailyDownloadLargeCount,%{private}d,ravenGnssAssistanceDailyDownloadLargeCount,%{private}d", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916610(a2);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FE790(uint64_t a1)
{
  v3[0] = @"shortTermOrbitAssistanceDailyDownloadCount";
  v4[0] = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v3[1] = @"longTermOrbitAssistanceDailyDownloadCount";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 4)];
  v3[2] = @"rtiDailyDownloadCount";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v3[3] = @"ravenGnssAssistanceDailyDownloadCount";
  v4[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v3[4] = @"shortTermOrbitAssistanceDailyDownloadLargeCount";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v3[5] = @"longTermOrbitAssistanceDailyDownloadLargeCount";
  v4[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v3[6] = @"rtiDailyDownloadLargeCount";
  v4[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v3[7] = @"ravenGnssAssistanceDailyDownloadLargeCount";
  v4[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:8];
}

uint64_t sub_1006FE900(uint64_t a1, int *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1019165FC();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[14];
    *buf = 67175937;
    v22 = v4;
    v23 = 1025;
    v24 = v5;
    v25 = 1025;
    v26 = v6;
    v27 = 1025;
    v28 = v7;
    v29 = 1025;
    v30 = v8;
    v31 = 1025;
    v32 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#gnssca,GnssPowerAnalyticMetrics,Submit to CA,totalDailyGnssUsageSeconds,%{private}d,totalDailyClientGnssUsageSeconds,%{private}d,totalDailyProactiveGnssUsageSeconds,%{private}d,totalDailyGnssDebounceSeconds,%{private}d,totalDailyExclusiveProactiveGnssSeconds,%{private}d,totalDailyGnssSecondsProactiveLocationNetBalance,%{private}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916758(a2);
  }

  AnalyticsSendEventLazy();
  if (qword_1025D4650 != -1)
  {
    sub_101916854();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v11 = a2[5];
    v12 = a2[6];
    v13 = a2[7];
    v14 = a2[8];
    v15 = a2[9];
    v16 = a2[10];
    v17 = a2[11];
    v18 = a2[12];
    v19 = a2[13];
    *buf = 67176705;
    v22 = v11;
    v23 = 1025;
    v24 = v12;
    v25 = 1025;
    v26 = v13;
    v27 = 1025;
    v28 = v14;
    v29 = 1025;
    v30 = v15;
    v31 = 1025;
    v32 = v16;
    v33 = 1025;
    v34 = v17;
    v35 = 1025;
    v36 = v18;
    v37 = 1025;
    v38 = v19;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "#gnssca,GnssDailyPowerAnalyticsWithContext,Submit to CA,dailyClientGnssDisplayOnOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOnInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOnInsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffOutsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffOutsideVisitSeconds,%{private}d,dailyClientGnssDisplayOffInsideVisitSeconds,%{private}d,dailyDebouncePeriodDisplayOffInsideVisitSeconds,%{private}d,dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds,%{private}d", buf, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191687C(a2);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_1006FEB98(uint64_t a1)
{
  v3[0] = @"totalDailyGnssUsageSeconds";
  v4[0] = [NSNumber numberWithUnsignedInt:**(a1 + 32)];
  v3[1] = @"totalDailyClientGnssUsageSeconds";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 4)];
  v3[2] = @"totalDailyProactiveGnssUsageSeconds";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v3[3] = @"totalDailyGnssDebounceSeconds";
  v4[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v3[4] = @"totalDailyExclusiveProactiveGnssSeconds";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v3[5] = @"totalDailyProactiveLocationMinusGnssSavings";
  v4[5] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

NSDictionary *sub_1006FECC8(uint64_t a1)
{
  v3[0] = @"dailyClientGnssDisplayOnOutsideVisitSeconds";
  v4[0] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  v3[1] = @"dailyDebouncePeriodDisplayOnOutsideVisitSeconds";
  v4[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 24)];
  v3[2] = @"dailyClientGnssDisplayOnInsideVisitSeconds";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 28)];
  v3[3] = @"dailyDebouncePeriodDisplayOnInsideVisitSeconds";
  v4[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v3[4] = @"dailyClientGnssDisplayOffOutsideVisitSeconds";
  v4[4] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v3[5] = @"dailyDebouncePeriodDisplayOffOutsideVisitSeconds";
  v4[5] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v3[6] = @"dailyClientGnssDisplayOffInsideVisitSeconds";
  v4[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v3[7] = @"dailyDebouncePeriodDisplayOffInsideVisitSeconds";
  v4[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 48)];
  v3[8] = @"dailyGnssUsageWithShortOrWiFiAssociatedSessionsSeconds";
  v4[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 52)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:9];
}

uint64_t sub_1006FEE58(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D4650 != -1)
  {
    sub_1019165FC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssca Submit gnss session metric to CA", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019169D0();
  }

  sub_10001CAF4(buf);
  LOBYTE(v306[0]) = 0;
  v5 = sub_10001CB4C(*buf, "EnableVerboseGnssAnalyticsSubmissionLogging", v306);
  v6 = (v5 & v306[0]);
  if (*v308)
  {
    sub_100008080(*v308);
  }

  if (v6)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101916854();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a3 + 23) >= 0 ? a3 : *a3;
      v9 = *(a3 + 24);
      v10 = *(a3 + 212);
      v11 = *(a3 + 213);
      v12 = *(a3 + 28);
      v13 = *(a3 + 214);
      v14 = *(a3 + 29);
      v15 = *(a3 + 30);
      v16 = *(a3 + 31);
      v17 = *(a3 + 32);
      *buf = 68291587;
      *v308 = 2082;
      *&buf[4] = 0;
      *&v308[2] = "";
      v309 = 2081;
      *v310 = v8;
      *&v310[8] = 1025;
      *v311 = v9;
      *&v311[4] = 1025;
      *v312 = v10;
      *&v312[4] = 1025;
      *v313 = v11;
      *&v313[4] = 1025;
      *v314 = v12;
      *&v314[4] = 1025;
      *v315 = v13;
      *&v315[4] = 1025;
      *v316 = v14;
      *&v316[4] = 1025;
      *v317 = v15;
      *&v317[4] = 1025;
      *v318 = v16;
      *&v318[4] = 1025;
      *&v318[6] = v17;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, bundleId:%{private, location:escape_only}s, ratType:%{private}d, isShortTermOrbitAssistanceFileAvailable:%{private}d, isLongTermOrbitAssistanceFileAvailable:%{private}d, isRtiFileAvailable:%{private}d, isRavenGnssAssistanceFileAvailable:%{private}d, isExtendedEphemerisFileInjected:%{private}d, isTimeAssistanceProvided:%{private}d, isDEMAssistanceProvided:%{private}d, isCPIAssistanceProvided:%{private}d}", buf, 0x52u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a3 + 36);
      v20 = *(a3 + 40);
      v21 = *(a3 + 44);
      v22 = *(a3 + 48);
      v23 = *(a3 + 52);
      v24 = *(a3 + 56);
      v25 = *(a3 + 60);
      v26 = *(a3 + 64);
      v27 = *(a3 + 68);
      v29 = *(a3 + 116);
      v28 = *(a3 + 120);
      v30 = *(a3 + 124);
      v31 = *(a3 + 128);
      v32 = *(a3 + 132);
      v33 = *(a3 + 136);
      v34 = *(a3 + 140);
      v35 = *(a3 + 144);
      v36 = *(a3 + 148);
      v37 = *(a3 + 232);
      v38 = *(a3 + 236);
      v39 = *(a3 + 156);
      v40 = *(a3 + 160);
      *buf = 68294659;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v19;
      *&v310[4] = 1025;
      *&v310[6] = v20;
      *v311 = 1025;
      *&v311[2] = v21;
      *v312 = 1025;
      *&v312[2] = v22;
      *v313 = 1025;
      *&v313[2] = v23;
      *v314 = 1025;
      *&v314[2] = v24;
      *v315 = 1025;
      *&v315[2] = v25;
      *v316 = 1025;
      *&v316[2] = v26;
      *v317 = 1025;
      *&v317[2] = v27;
      *v318 = 1025;
      *&v318[2] = v29;
      *&v318[6] = 1025;
      *&v318[8] = v28;
      *&v318[12] = 1025;
      *&v318[14] = v30;
      *v319 = 1025;
      *&v319[2] = v31;
      *&v319[6] = 1025;
      *&v319[8] = v32;
      *&v319[12] = 1025;
      *&v319[14] = v33;
      *&v319[18] = 1025;
      *&v319[20] = v34;
      *&v319[24] = 1025;
      *&v319[26] = v35;
      *&v319[30] = 1025;
      *v320 = v36;
      *&v320[4] = 1025;
      *v321 = v39;
      *&v321[4] = 1025;
      *v322 = v37;
      *&v322[4] = 1025;
      *v323 = v38;
      *&v323[4] = 1025;
      *v324 = v40;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, gpsL1Cn0Avg:%{private}d, qzssL1Cn0Avg:%{private}d, galileoL1Cn0Avg:%{private}d, beidouL1Cn0Avg:%{private}d, glonassL1Cn0Avg:%{private}d, gpsL5Cn0Avg:%{private}d, qzssL5Cn0Avg:%{private}d, galileoL5Cn0Avg:%{private}d, beidouL5Cn0Avg:%{private}d, gpsL1SignalCountAvg:%{private}d, qzssL1SignalCountAvg:%{private}d, galileoL1SignalCountAvg:%{private}d, beidouL1SignalCountAvg:%{private}d, glonassL1SignalCountAvg:%{private}d, gpsL5SignalCountAvg:%{private}d, qzssL5SignalCountAvg:%{private}d, galileoL5SignalCountAvg:%{private}d, beidouL5SignalCountAvg:%{private}d, signalEnvironmentMode:%{private}d, powerMeasurementMode:%{private}d, powerStateMode:%{private}d, horizontalUncertaintyAvg:%{private}d}", buf, 0x96u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a3 + 164);
      v43 = *(a3 + 168);
      v44 = *(a3 + 172);
      v45 = *(a3 + 176);
      v46 = *(a3 + 180);
      v47 = *(a3 + 184);
      v48 = *(a3 + 185);
      v49 = *(a3 + 186);
      v50 = *(a3 + 188);
      v51 = *(a3 + 192);
      v52 = *(a3 + 196);
      v53 = *(a3 + 200);
      v54 = *(a3 + 204);
      v55 = *(a3 + 208);
      v56 = *(a3 + 216);
      v57 = *(a3 + 220);
      v58 = *(a3 + 224);
      v59 = *(a3 + 228);
      *buf = 68293635;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v42;
      *&v310[4] = 1025;
      *&v310[6] = v43;
      *v311 = 1025;
      *&v311[2] = v44;
      *v312 = 1025;
      *&v312[2] = v45;
      *v313 = 1025;
      *&v313[2] = v46;
      *v314 = 1025;
      *&v314[2] = v47;
      *v315 = 1025;
      *&v315[2] = v48;
      *v316 = 1025;
      *&v316[2] = v49;
      *v317 = 1025;
      *&v317[2] = v50;
      *v318 = 1025;
      *&v318[2] = v51;
      *&v318[6] = 1025;
      *&v318[8] = v52;
      *&v318[12] = 1025;
      *&v318[14] = v53;
      *v319 = 1025;
      *&v319[2] = v54;
      *&v319[6] = 1025;
      *&v319[8] = v55;
      *&v319[12] = 1025;
      *&v319[14] = v56;
      *&v319[18] = 1025;
      *&v319[20] = v57;
      *&v319[24] = 1025;
      *&v319[26] = v58;
      *&v319[30] = 1025;
      *v320 = v59;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, mountStateMode:%{private}d, motionActivityMode:%{private}d, movingStateMode:%{private}d, sessionDuration:%{private}d, deviceOrientationMode:%{private}d, isDisplayOn:%{private}d, isReachable:%{private}d, isBatterySaverModeOn:%{private}d, chargerTypeHistMode:%{private}d, thermalLevelAvg:%{private}d, isAccessoryYieldingLocations:%{private}d, l5OnOffStateMode:%{private}d, positionContextStateMode:%{private}d, xoCalibrationState:%{private}d, sessionStartPositionAssistHorzReliability:%{private}d, sessionStartPositionAssistHorzAcc:%{private}d, sessionStartPositionAssistType:%{private}d, wasWiFiPositioningAvailable:%{private}d}", buf, 0x7Eu);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v60 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v61 = *(a2 + 432);
      v62 = *(a2 + 433);
      v63 = *(a2 + 434);
      v64 = *(a2 + 435);
      v65 = *(a2 + 436);
      v66 = *(a2 + 437);
      v67 = *(a2 + 438);
      v68 = *(a2 + 439);
      v69 = *(a2 + 440);
      v70 = *(a2 + 441);
      v71 = *(a2 + 264);
      v72 = *(a2 + 265);
      v73 = *(a2 + 266);
      v74 = *(a2 + 267);
      v75 = *(a2 + 268);
      v76 = a2[68];
      v77 = a2[69];
      v78 = a2[70];
      v79 = *(a2 + 442);
      *buf = 68293891;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v61;
      *&v310[4] = 1025;
      *&v310[6] = v62;
      *v311 = 1025;
      *&v311[2] = v63;
      *v312 = 1025;
      *&v312[2] = v64;
      *v313 = 1025;
      *&v313[2] = v65;
      *v314 = 1025;
      *&v314[2] = v66;
      *v315 = 1025;
      *&v315[2] = v67;
      *v316 = 1025;
      *&v316[2] = v68;
      *v317 = 1025;
      *&v317[2] = v69;
      *v318 = 1025;
      *&v318[2] = v70;
      *&v318[6] = 1025;
      *&v318[8] = v71;
      *&v318[12] = 1025;
      *&v318[14] = v72;
      *v319 = 1025;
      *&v319[2] = v73;
      *&v319[6] = 1025;
      *&v319[8] = v74;
      *&v319[12] = 1025;
      *&v319[14] = v75;
      *&v319[18] = 1025;
      *&v319[20] = v76;
      *&v319[24] = 1025;
      *&v319[26] = v77;
      *&v319[30] = 1025;
      *v320 = v78;
      *&v320[4] = 1025;
      *v321 = v79;
      _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, isTimePreceedsBuildTime:%{private}d, isTimePreceedsExtendedEphemerisTime:%{private}d, isTimeJumpForward100Seconds:%{private}d, isTimeJumpBackward100Seconds:%{private}d, isLnavAntiSpoofBitZeroOnMultipleSvs:%{private}d, isOtaLeapSecondInconsistentWithExtendedEphemeris:%{private}d, isExcessiveSignalStrength:%{private}d, isHigherOrderOtaEphemerisAllZeroOnMultipleSvs:%{private}d, isOtaUtcModelInconsistentWithExtendedEphemeris:%{private}d, isOtaParameterOutOfBoundsOnMultipleSvs:%{private}d, isCn0LowVariance:%{private}d, isCn0HighValue:%{private}d, isKacRegion:%{private}d, isAltitudeOutOfBounds:%{private}d, isTimePreceedingBuildTime:%{private}d, numCn0StatsBlockedFix:%{private}d, numFixesFromFFCn0LowVarSet:%{private}d, numFixesFromFFCn0LowVarReset:%{private}d, isSessionSpoofed:%{private}d}", buf, 0x84u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v80 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v81 = *(a3 + 76);
      v82 = *(a3 + 80);
      v83 = *(a3 + 84);
      v84 = *(a3 + 88);
      v85 = *(a3 + 92);
      v86 = *(a3 + 96);
      v87 = *(a3 + 100);
      v88 = *(a3 + 104);
      v89 = *(a3 + 108);
      *buf = 68291331;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v81;
      *&v310[4] = 1025;
      *&v310[6] = v82;
      *v311 = 1025;
      *&v311[2] = v83;
      *v312 = 1025;
      *&v312[2] = v84;
      *v313 = 1025;
      *&v313[2] = v85;
      *v314 = 1025;
      *&v314[2] = v86;
      *v315 = 1025;
      *&v315[2] = v87;
      *v316 = 1025;
      *&v316[2] = v88;
      *v317 = 1025;
      *&v317[2] = v89;
      _os_log_impl(dword_100000000, v80, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, gpsL1Cn0AvgFineRes:%{private}d, qzssL1Cn0AvgFineRes:%{private}d, galileoL1Cn0AvgFineRes:%{private}d, beidouL1Cn0AvgFineRes:%{private}d, glonassL1Cn0AvgFineRes:%{private}d, gpsL5Cn0AvgFineRes:%{private}d, qzssL5Cn0AvgFineRes:%{private}d, galileoL5Cn0AvgFineRes:%{private}d, beidouL5Cn0AvgFineRes:%{private}d}", buf, 0x48u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v90 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v92 = *a2;
      v91 = a2[1];
      v93 = a2[2];
      v94 = a2[3];
      v95 = a2[4];
      v96 = a2[5];
      v97 = a2[6];
      v98 = a2[7];
      v99 = a2[8];
      v100 = *(a2 + 5);
      v101 = a2[12];
      v102 = *(a2 + 7);
      v103 = a2[16];
      v104 = a2[17];
      v105 = a2[18];
      v106 = a2[19];
      v107 = a2[20];
      v108 = a2[21];
      v109 = a2[22];
      v110 = a2[23];
      v111 = a2[24];
      v112 = a2[25];
      *buf = 68294659;
      *v308 = 2082;
      *&buf[4] = 0;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v91;
      *&v310[4] = 1025;
      *&v310[6] = v93;
      *v311 = 1025;
      *&v311[2] = v92;
      *v312 = 1025;
      *&v312[2] = v94;
      *v313 = 1025;
      *&v313[2] = v95;
      *v314 = 1025;
      *&v314[2] = v96;
      *v315 = 1025;
      *&v315[2] = v97;
      *v316 = 1025;
      *&v316[2] = v98;
      *v317 = 1025;
      *&v317[2] = v99;
      *v318 = 2049;
      *&v318[2] = v100;
      *&v318[10] = 1025;
      *&v318[12] = v101;
      *&v318[16] = 2049;
      *v319 = v102;
      *&v319[8] = 1025;
      *&v319[10] = v103;
      *&v319[14] = 1025;
      *&v319[16] = v104;
      *&v319[20] = 1025;
      *&v319[22] = v105;
      *&v319[26] = 1025;
      *&v319[28] = v106;
      *v320 = 1025;
      *&v320[2] = v107;
      *v321 = 1025;
      *&v321[2] = v108;
      *v322 = 1025;
      *&v322[2] = v109;
      *v323 = 1025;
      *&v323[2] = v110;
      *v324 = 1025;
      *&v324[2] = v111;
      v325 = 1025;
      v326 = v112;
      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, shortTermOrbitAssistanceFileAgeSeconds:%{private}d, longTermOrbitAssistanceFileAgeSeconds:%{private}d, rtiFileAgeSeconds:%{private}d, ravenGnssAssistanceFileAgeSeconds:%{private}d, pctYield:%{private}d, pctYieldPostFirstFix:%{private}d, yieldCount:%{private}d, ttff:%{private}d, epochCount:%{private}d, cellularUplinkTxBandwidth:%{private}f, cellularBand:%{private}d, cellularUplinkTxFrequency:%{private}f, cellularRSRP:%{private}d, cellularSNR:%{private}d, cellularBandEpochCount:%{private}d, mmPAssisProvPct:%{private}d, demAssisProvPct:%{private}d, taAssisProvPct:%{private}d, timeAssisProvPct:%{private}d, cpiPositionAssisProvPct:%{private}d, cpiTlyCpldPosAssisProvPct:%{private}d, rtiProvPct:%{private}d}", buf, 0x9Eu);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v113 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v114 = a2[26];
      v115 = a2[27];
      v116 = a2[28];
      v117 = a2[29];
      v118 = a2[30];
      v119 = a2[31];
      v120 = a2[32];
      v121 = a2[33];
      v122 = a2[34];
      *buf = 68291331;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v114;
      *&v310[4] = 1025;
      *&v310[6] = v115;
      *v311 = 1025;
      *&v311[2] = v116;
      *v312 = 1025;
      *&v312[2] = v117;
      *v313 = 1025;
      *&v313[2] = v118;
      *v314 = 1025;
      *&v314[2] = v119;
      *v315 = 1025;
      *&v315[2] = v120;
      *v316 = 1025;
      *&v316[2] = v121;
      *v317 = 1025;
      *&v317[2] = v122;
      _os_log_impl(dword_100000000, v113, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, accelDataProvPct:%{private}d, gyroDataProvPct:%{private}d, pressureDataProvPct:%{private}d, pedSpeedDataProvPct:%{private}d, pedSpeedConDataProvPct:%{private}d, motionDataProvPct:%{private}d, ephemerisProvPct:%{private}d, mountStateProvPct:%{private}d, signalEnvirDataProvPct:%{private}d}", buf, 0x48u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v123 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v124 = a2[35];
      v125 = a2[36];
      v126 = a2[37];
      v127 = a2[38];
      v128 = a2[39];
      v129 = a2[40];
      v130 = a2[41];
      v131 = a2[42];
      v132 = a2[43];
      v133 = a2[44];
      v134 = a2[45];
      v135 = a2[46];
      v136 = a2[47];
      v137 = a2[48];
      v138 = a2[49];
      *buf = 68292867;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v124;
      *&v310[4] = 1025;
      *&v310[6] = v125;
      *v311 = 1025;
      *&v311[2] = v126;
      *v312 = 1025;
      *&v312[2] = v127;
      *v313 = 1025;
      *&v313[2] = v128;
      *v314 = 1025;
      *&v314[2] = v129;
      *v315 = 1025;
      *&v315[2] = v130;
      *v316 = 1025;
      *&v316[2] = v131;
      *v317 = 1025;
      *&v317[2] = v132;
      *v318 = 1025;
      *&v318[2] = v133;
      *&v318[6] = 1025;
      *&v318[8] = v134;
      *&v318[12] = 1025;
      *&v318[14] = v135;
      *v319 = 1025;
      *&v319[2] = v136;
      *&v319[6] = 1025;
      *&v319[8] = v137;
      *&v319[12] = 1025;
      *&v319[14] = v138;
      _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, motionActivContextProvPct:%{private}d, mmPAssisUsedPct:%{private}d, demAssisUsedPct:%{private}d, taAssisUsedPct:%{private}d, timeAssisUsedPct:%{private}d, cpiPositionAssisUsedPct:%{private}d, cpiTlyCpldPosAssisUsedPct:%{private}d, rtiUsedPct:%{private}d, accelDataUsedPct:%{private}d, gyroDataUsedPct:%{private}d, pressureDataUsedPct:%{private}d, pedSpeedDataUsedPct:%{private}d, pedSpeedConDataUsedPct:%{private}d, motionDataUsedPct:%{private}d, ephemerisUsedPct:%{private}d}", buf, 0x6Cu);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v139 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v140 = a2[50];
      v141 = a2[51];
      v142 = a2[52];
      v143 = a2[53];
      v144 = a2[54];
      v145 = a2[55];
      v146 = a2[56];
      v147 = a2[57];
      v148 = a2[58];
      v149 = a2[59];
      v150 = *(a2 + 30);
      v151 = a2[62];
      v152 = a2[63];
      v153 = a2[64];
      v154 = a2[65];
      v155 = *(a2 + 53);
      *buf = 68293123;
      *v308 = 2082;
      *&buf[4] = 0;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v140;
      *&v310[4] = 1025;
      *&v310[6] = v141;
      *v311 = 1025;
      *&v311[2] = v142;
      *v312 = 1025;
      *&v312[2] = v143;
      *v313 = 1025;
      *&v313[2] = v144;
      *v314 = 1025;
      *&v314[2] = v145;
      *v315 = 1025;
      *&v315[2] = v146;
      *v316 = 1025;
      *&v316[2] = v147;
      *v317 = 1025;
      *&v317[2] = v148;
      *v318 = 1025;
      *&v318[2] = v149;
      *&v318[6] = 2049;
      *&v318[8] = v150;
      *&v318[16] = 1025;
      *v319 = v151;
      *&v319[4] = 1025;
      *&v319[6] = v152;
      *&v319[10] = 1025;
      *&v319[12] = v153;
      *&v319[16] = 1025;
      *&v319[18] = v154;
      *&v319[22] = 2049;
      *&v319[24] = v155;
      _os_log_impl(dword_100000000, v139, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, mountStateUsedPct:%{private}d, signalEnvirDataUsedPct:%{private}d, motionActivContextUsedPct:%{private}d, displayOnPct:%{private}d, reachablePct:%{private}d, batterySaverModeOnPct:%{private}d, anomalyStatusUnknownPct:%{private}d, anomalyStatusSimulatedPct:%{private}d, anomalyStatusAuthenticPct:%{private}d, anomalyStatusMaybeSimulatedPct:%{private}d, deresFinalAltitude:%{private}f, antL5BestDurationPct:%{private}d, antL5OtherDurationPct:%{private}d, antL5WorstDurationPct:%{private}d, gnssL5BlankingDurationPct:%{private}d, deltaFirstFixAndPositionAssistMeters:%{private}f}", buf, 0x7Au);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v156 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v157 = a2[122];
      v158 = a2[123];
      v159 = a2[124];
      v160 = a2[125];
      v161 = a2[126];
      v162 = a2[127];
      v163 = a2[128];
      v164 = a2[129];
      v165 = a2[130];
      v166 = a2[131];
      v167 = a2[132];
      v168 = a2[133];
      v169 = a2[134];
      v170 = a2[152];
      v171 = a2[154];
      v172 = a2[156];
      v173 = a2[151];
      v174 = a2[153];
      v175 = a2[155];
      *buf = 68293891;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v157;
      *&v310[4] = 1025;
      *&v310[6] = v158;
      *v311 = 1025;
      *&v311[2] = v159;
      *v312 = 1025;
      *&v312[2] = v160;
      *v313 = 1025;
      *&v313[2] = v161;
      *v314 = 1025;
      *&v314[2] = v162;
      *v315 = 1025;
      *&v315[2] = v163;
      *v316 = 1025;
      *&v316[2] = v164;
      *v317 = 1025;
      *&v317[2] = v165;
      *v318 = 1025;
      *&v318[2] = v166;
      *&v318[6] = 1025;
      *&v318[8] = v167;
      *&v318[12] = 1025;
      *&v318[14] = v168;
      *v319 = 1025;
      *&v319[2] = v169;
      *&v319[6] = 1025;
      *&v319[8] = v170;
      *&v319[12] = 1025;
      *&v319[14] = v171;
      *&v319[18] = 1025;
      *&v319[20] = v172;
      *&v319[24] = 1025;
      *&v319[26] = v173;
      *&v319[30] = 1025;
      *v320 = v174;
      *&v320[4] = 1025;
      *v321 = v175;
      _os_log_impl(dword_100000000, v156, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, ms_to_first_gps_code_lock:%{private}d, ms_to_first_glo_code_lock:%{private}d, ms_to_first_gal_code_lock:%{private}d, ms_to_first_bds_code_lock:%{private}d, ms_to_first_gps_tow_decoded:%{private}d, ms_to_first_glo_tod_decoded:%{private}d, ms_to_first_gal_tow_decoded:%{private}d, ms_to_first_bds_tow_decoded:%{private}d, ms_to_first_gps_full_sync:%{private}d, ms_to_first_glo_full_sync:%{private}d, ms_to_first_gal_full_sync:%{private}d, ms_to_first_bds_full_sync:%{private}d, me_clock_event_counter:%{private}d, phase_lock_rate_20_25dBHz:%{private}d, phase_lock_rate_25_30dBHz:%{private}d, phase_lock_rate_30plusdBHz:%{private}d, phase_available_rate_20_25dBHz:%{private}d, phase_available_rate_25_30dBHz:%{private}d, phase_available_rate_30plusdBHz:%{private}d}", buf, 0x84u);
      if (qword_1025D4650 != -1)
      {
        sub_101916854();
      }
    }

    v176 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v177 = a2[157];
      v178 = a2[158];
      v179 = a2[159];
      v180 = a2[160];
      v181 = a2[161];
      v182 = a2[162];
      *buf = 68290563;
      *&buf[4] = 0;
      *v308 = 2082;
      *&v308[2] = "";
      v309 = 1025;
      *v310 = v177;
      *&v310[4] = 1025;
      *&v310[6] = v178;
      *v311 = 1025;
      *&v311[2] = v179;
      *v312 = 1025;
      *&v312[2] = v180;
      *v313 = 1025;
      *&v313[2] = v181;
      *v314 = 1025;
      *&v314[2] = v182;
      _os_log_impl(dword_100000000, v176, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#gnssca LocationGnssSessionStatsForCA Submission, iono_model_percent_global_prediction:%{private}d, iono_model_percent_klob:%{private}d, sv_pos_percentage_brdc_file:%{private}d, sv_pos_percentage_long_term_file:%{private}d, sv_pos_percentage_ota:%{private}d, sv_pos_percentage_short_term_file:%{private}d}", buf, 0x36u);
    }
  }

  v306[99] = _NSConcreteStackBlock;
  v306[100] = 3221225472;
  v306[101] = sub_100700308;
  v306[102] = &unk_102451C38;
  v306[103] = a3;
  v306[104] = a2;
  AnalyticsSendEventLazy();
  bzero(v306, 0x318uLL);
  v305 = 0;
  v304 = 0u;
  v303 = 0u;
  v302 = 0u;
  v301 = 0u;
  bzero(v300, 0x240uLL);
  v299 = 0;
  v298 = 0u;
  v297 = 0u;
  v296 = 0u;
  v295 = 0u;
  bzero(v294, 0x240uLL);
  v183 = 0;
  v293 = 0;
  v291 = 0u;
  v292 = 0u;
  v289 = 0u;
  v290 = 0u;
  do
  {
    v184 = objc_opt_new();
    v185 = dword_101C89CF0[v183];
    *(&v301 + v185) = v184;
    *buf = v185;
    v186 = *(a2 + 43);
    if (!v186)
    {
      goto LABEL_63;
    }

    while (1)
    {
      v187 = *(v186 + 8);
      if (v187 <= v185)
      {
        break;
      }

LABEL_53:
      v186 = *v186;
      if (!v186)
      {
        goto LABEL_63;
      }
    }

    if (v187 < v185)
    {
      ++v186;
      goto LABEL_53;
    }

    v188 = sub_1003DD9F8((a2 + 84), buf);
    v191 = *v188;
    v189 = v188 + 1;
    v190 = v191;
    if (v191 != v189)
    {
      do
      {
        v306[11 * v185 + *(v190 + 8)] = v190[5];
        v192 = v190[1];
        if (v192)
        {
          do
          {
            v193 = v192;
            v192 = *v192;
          }

          while (v192);
        }

        else
        {
          do
          {
            v193 = v190[2];
            v194 = *v193 == v190;
            v190 = v193;
          }

          while (!v194);
        }

        v190 = v193;
      }

      while (v193 != v189);
    }

    *(&v301 + v185) = sub_10070172C(a1, &v306[11 * v185]);
LABEL_63:
    *(&v295 + v185) = objc_opt_new();
    *buf = v185;
    for (i = *(a2 + 40); i; i = *i)
    {
      v196 = *(i + 8);
      if (v196 <= v185)
      {
        if (v196 >= v185)
        {
          v197 = sub_1003DD9F8((a2 + 78), buf);
          v200 = *v197;
          v198 = v197 + 1;
          v199 = v200;
          if (v200 != v198)
          {
            do
            {
              *&v300[64 * v185 + 8 * *(v199 + 8)] = v199[5];
              v201 = v199[1];
              if (v201)
              {
                do
                {
                  v202 = v201;
                  v201 = *v201;
                }

                while (v201);
              }

              else
              {
                do
                {
                  v202 = v199[2];
                  v194 = *v202 == v199;
                  v199 = v202;
                }

                while (!v194);
              }

              v199 = v202;
            }

            while (v202 != v198);
          }

          *(&v295 + v185) = sub_1007017A0(a1, &v300[64 * v185]);
          break;
        }

        ++i;
      }
    }

    *(&v289 + v185) = objc_opt_new();
    *buf = v185;
    v203 = *(a2 + 37);
    if (!v203)
    {
      goto LABEL_93;
    }

    while (2)
    {
      v204 = *(v203 + 8);
      if (v204 > v185)
      {
        goto LABEL_83;
      }

      if (v204 < v185)
      {
        ++v203;
LABEL_83:
        v203 = *v203;
        if (!v203)
        {
          goto LABEL_93;
        }

        continue;
      }

      break;
    }

    v205 = sub_1003DD9F8((a2 + 72), buf);
    v208 = *v205;
    v206 = v205 + 1;
    v207 = v208;
    if (v208 != v206)
    {
      do
      {
        *&v294[64 * v185 + 8 * *(v207 + 8)] = v207[5];
        v209 = v207[1];
        if (v209)
        {
          do
          {
            v210 = v209;
            v209 = *v209;
          }

          while (v209);
        }

        else
        {
          do
          {
            v210 = v207[2];
            v194 = *v210 == v207;
            v207 = v210;
          }

          while (!v194);
        }

        v207 = v210;
      }

      while (v210 != v206);
    }

    *(&v289 + v185) = sub_1007017A0(a1, &v294[64 * v185]);
LABEL_93:
    ++v183;
  }

  while (v183 != 9);
  v278 = _NSConcreteStackBlock;
  v279 = 3221225472;
  v280 = sub_100701814;
  v281 = &unk_10246C528;
  v282 = a2;
  v283 = a3;
  v286 = v291;
  v287 = v292;
  v288 = v293;
  v284 = v289;
  v285 = v290;
  AnalyticsSendExplodingEventLazy();
  v267 = _NSConcreteStackBlock;
  v268 = 3221225472;
  v269 = sub_100701EC0;
  v270 = &unk_10246C528;
  v271 = a3;
  v272 = a2;
  v275 = v303;
  v276 = v304;
  v277 = v305;
  v273 = v301;
  v274 = v302;
  AnalyticsSendExplodingEventLazy();
  v256 = _NSConcreteStackBlock;
  v257 = 3221225472;
  v258 = sub_100702594;
  v259 = &unk_10246C528;
  v260 = a3;
  v261 = a2;
  v264 = v297;
  v265 = v298;
  v266 = v299;
  v262 = v295;
  v263 = v296;
  AnalyticsSendExplodingEventLazy();
  bzero(buf, 0x360uLL);
  v211 = 0;
  v255 = 0;
  v253 = 0u;
  v254 = 0u;
  v251 = 0u;
  v252 = 0u;
  do
  {
    v212 = objc_opt_new();
    v213 = dword_101C89CF0[v211];
    *(&v251 + v213) = v212;
    LODWORD(v236[0]) = v213;
    if (sub_1000735F4(a2 + 45, v236))
    {
      v214 = sub_1000735F4(a2 + 45, v236);
      if (!v214)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v215 = &buf[96 * v213];
      for (j = v214[5]; j; j = *j)
      {
        v217 = *(j + 16);
        v218 = v217 - 35;
        if ((v217 - 35) > 0x31)
        {
          if (v217 < 85)
          {
            *v215 = 1;
          }

          else
          {
            *(v215 + 11) = 1;
          }
        }

        else
        {
          v219 = *(j + 20);
          if (v219 >= 1)
          {
            v220 = (v218 * 0.2 + 1.0);
            if (v220 - 1 <= 8)
            {
              *&v215[8 * v220] = v219;
            }
          }
        }
      }

      *(&v251 + v213) = sub_100702C68(a1, v215);
    }

    ++v211;
  }

  while (v211 != 9);
  v240 = _NSConcreteStackBlock;
  v241 = 3221225472;
  v242 = sub_100702CDC;
  v243 = &unk_10246C528;
  v244 = a3;
  v245 = a2;
  v248 = v253;
  v249 = v254;
  v250 = v255;
  v246 = v251;
  v247 = v252;
  AnalyticsSendExplodingEventLazy();
  v221 = objc_opt_new();
  v238 = 0;
  v239 = 0;
  v222 = *(a2 + 50);
  v223 = *(a2 + 51);
  if (v222 == v223)
  {
    v225 = 0;
  }

  else
  {
    v224 = 0;
    v225 = 0;
    do
    {
      v226 = *(v222 + 8);
      if (v226)
      {
        if ((*v222 - 2) >= 2)
        {
          if (*v222 == 1)
          {
            v239 = *(v222 + 8);
          }

          else
          {
            v225 = *(v222 + 8);
          }
        }

        else
        {
          v224 += v226;
          v238 = v224;
        }
      }

      v222 += 16;
    }

    while (v222 != v223);
  }

  v237 = v225;
  sub_1007033F0(a1, &v237);
  v227 = objc_opt_new();
  memset(v236, 0, sizeof(v236));
  v228 = *(a2 + 68);
  if (v228 != a2 + 138)
  {
    do
    {
      v229 = v228[8];
      if (v229 <= 5)
      {
        v230 = *(v228 + 5);
        if (v230)
        {
          *(v236 + v229) = v230;
        }
      }

      v231 = *(v228 + 1);
      if (v231)
      {
        do
        {
          v232 = v231;
          v231 = *v231;
        }

        while (v231);
      }

      else
      {
        do
        {
          v232 = *(v228 + 2);
          v194 = *v232 == v228;
          v228 = v232;
        }

        while (!v194);
      }

      v228 = v232;
    }

    while (v232 != a2 + 138);
  }

  sub_100703464(a1, v236);
  return AnalyticsSendExplodingEventLazy();
}