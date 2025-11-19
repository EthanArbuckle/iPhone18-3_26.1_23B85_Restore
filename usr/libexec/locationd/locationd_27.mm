uint64_t sub_1001CECB8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

double sub_1001CECD8(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = 360.0;
  if (a5 < 0.0)
  {
    a5 = a5 + 360.0;
  }

  if (a8 < 0.0)
  {
    a8 = a8 + 360.0;
  }

  v15 = a8 - a5;
  if (v15 > 180.0)
  {
    v14 = -360.0;
LABEL_8:
    v15 = v15 + v14;
    goto LABEL_9;
  }

  if (v15 < -180.0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v16 = (a7 - a4) * 0.0174532925;
  v17 = (a6 + a9) * 0.5;
  v18 = v15 * 0.0174532925;
  v19 = __sincos_stret((a4 + a7) * 0.0174532925 * 0.5);
  v20 = sqrt(v19.__sinval * -0.00669437999 * v19.__sinval + 1.0);
  *a1 = v16 * (v17 + 6335439.33 / (v20 * (v20 * v20)));
  *a2 = v19.__cosval * (v17 + 6378137.0 / v20) * v18;
  result = a9 - a6;
  *a3 = a9 - a6;
  return result;
}

id sub_1001CEE08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#Warning,#cterror,#ctcl,triggerCellMonitorRefresh,error,%@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019763B8();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10196EBB8();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#ctcl,triggerCellMonitorRefresh,success", &v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019764A0();
    }
  }

  return sub_1001CEF60(v3, (a2 == 0));
}

id sub_1001CEF60(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10196EBB8();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#ctcl,sendCellMonitorRefreshResult,%d", v8, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101975D38(a2);
  }

  v5 = sub_1001CF068(a2);
  v6 = v5;
  return [*(a1 + 112) sendNotificationToClients:@"kCellMonitorRefreshResultNotification" notificationData:v5];
}

CFDictionaryRef sub_1001CF068(char a1)
{
  v2 = a1;
  values = sub_1001CF0F0(&v2);
  keys = @"kCellMonitorRefreshResultKey";
  return CFDictionaryCreate(0, &keys, &values, 1, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

CFTypeRef sub_1001CF0F0(_BYTE *a1)
{
  v1 = &kCFBooleanTrue;
  if (!*a1)
  {
    v1 = &kCFBooleanFalse;
  }

  v2 = *v1;
  CFRetain(*v1);
  return v2;
}

long double sub_1001CF138(double a1, double a2, double a3, double a4)
{
  if (sub_10010632C(a1, a2, a3, a4))
  {

    return sub_1002AB240(a1, a2, a3, a4);
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    sub_1001CECD8(&v11, &v10, &v9, a1, a2, 0.0, a3, a4, 0.0);
    return sqrt(v10 * v10 + v11 * v11);
  }
}

uint64_t sub_1001CF1EC(uint64_t a1, _DWORD *a2, double *a3)
{
  v5 = a3[1] > 0.0 && *a3 > 0.0;
  if ((CLMotionActivity::isTypeInVehicle() & 1) != 0 || *a3 > 0.0 && a3[1] < 0.0)
  {
    return 2;
  }

  else
  {
    return ((*a2 != 0) | v5) & 1;
  }
}

void sub_1001CF26C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101951884();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCachedLocationController::onLocationUpdateNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101951898();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCachedLocationController::onLocationUpdateNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001CF438(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001CF438(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v5 = *a3;
  if (*a3 > 12)
  {
    if (v5 == 13 || v5 == 22)
    {
      return;
    }
  }

  else
  {
    if (v5)
    {
      v6 = v5 == 4;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      Current = CFAbsoluteTimeGetCurrent();
      sub_1001CFD3C((a1 + 568), a4, &Current);
      return;
    }
  }

  if (qword_1025D4600 != -1)
  {
    sub_101951784();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a3;
    LODWORD(Current) = 67240192;
    HIDWORD(Current) = v11;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLC: Received unknown notification, %{public}d", &Current, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101951BCC(a3);
  }
}

void sub_1001CF560(void *a1, int a2, uint64_t a3, double *a4)
{
  v7 = *a4;
  v8 = *(a1 + 6);
  v9 = vabdd_f64(*a4, *(a1 + 7));
  if ((a2 & 1) != 0 || v9 >= 2400.0)
  {
    memset(v24, 0, sizeof(v24));
    v10 = (*(**a1 + 16))();
    if (v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101ABD550();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v12 = a1[7];
        v13 = *(a1 + 68);
        v14 = *(a1 + 76);
        *buf = 67110145;
        *&buf[4] = a2;
        v35 = 1024;
        *v36 = 1;
        *&v36[4] = 2048;
        *&v36[6] = v12;
        v37 = 2053;
        v38 = v13;
        v39 = 2053;
        *&v40 = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "isStart,%d,manifest,%d,LastTime,%lf,LastLat,%{sensitive}.05lf,LastLon,%{sensitive}.05lf", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ABD578(buf);
        v18 = a1[7];
        v19 = *(a1 + 68);
        v20 = *(a1 + 76);
        *v25 = 67110145;
        *&v25[4] = a2;
        v26 = 1024;
        v27 = 1;
        v28 = 2048;
        v29 = v18;
        v30 = 2053;
        v31 = v19;
        v32 = 2053;
        v33 = v20;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLTransitTilePreloader::makeRequestIfNeeded(BOOL, const CLDaemonLocation &, const CFAbsoluteTime &)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      if (!a2)
      {
        if (*(a3 + 20) > 0.0)
        {
          sub_1001097CC((a1 + 1), a3, (a1 + 8));
          if ((v9 >= 259200.0 || v17 > 150000.0) && *(a1 + 7) == 0.0)
          {
            a1[7] = *a4;
          }
        }

        goto LABEL_29;
      }

      if (vabdd_f64(v7, v8) >= 259200.0)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101ABD550();
        }

        v15 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Request region preload manifest, update", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_23;
        }

        goto LABEL_33;
      }
    }

    else if (a2)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101ABD550();
      }

      v16 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Request region preload manifest, no manifest", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_23;
      }

LABEL_33:
      sub_101ABD578(buf);
      *v25 = 0;
      v22 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLTransitTilePreloader::makeRequestIfNeeded(BOOL, const CLDaemonLocation &, const CFAbsoluteTime &)", "%s\n", v22);
      if (v22 != buf)
      {
        free(v22);
      }

LABEL_23:
      sub_100ED3994(a1, v10 ^ 1, a4);
    }

LABEL_29:
    *buf = v24;
    sub_1001D22FC(buf);
  }
}

void sub_1001CFCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void **a31)
{
  a31 = &a20;
  sub_1001D22FC(&a31);
  _Unwind_Resume(a1);
}

id sub_1001CFCF4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_msgSend(*(a1 + 8) "vendor")];

  return [v3 syncgetRegionPreloadManifest:a2];
}

uint64_t sub_1001CFFA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 5992);
  v5[0] = *(a2 + 5984);
  v5[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001D0020(a1, v5);
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

void sub_1001D0008(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D0020(uint64_t a1, void *a2)
{
  *a1 = xmmword_101D220A0;
  *(a1 + 16) = 0x408F400000000000;
  *(a1 + 24) = 6;
  *(a1 + 32) = *a2;
  v3 = a2[1];
  *(a1 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_10018D404(a1 + 72);
  sub_10001CAF4(&v14);
  v4 = *(a1 + 8);
  v16 = 0.0;
  v5 = sub_1000B9370(v14, "CLLocationControllerTrajectorySamplerThresholdDistance_m", &v16);
  v6 = v16;
  if (!v5)
  {
    v6 = v4;
  }

  *(a1 + 8) = v6;
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_10001CAF4(&v14);
  v7 = *(a1 + 8);
  v16 = 0.0;
  v8 = sub_1000B9370(v14, "CLLocationControllerTrajectorySamplerThresholdDistance_m", &v16);
  v9 = v16;
  if (!v8)
  {
    v9 = v7;
  }

  *(a1 + 8) = v9;
  if (v15)
  {
    sub_100008080(v15);
  }

  sub_10001CAF4(&v14);
  v10 = *(a1 + 16);
  v16 = 0.0;
  v11 = sub_1000B9370(v14, "CLLocationControllerTrajectorySamplerRequiredHorizontalAccuracy_m", &v16);
  v12 = v16;
  if (!v11)
  {
    v12 = v10;
  }

  *(a1 + 16) = v12;
  if (v15)
  {
    sub_100008080(v15);
  }

  return a1;
}

void sub_1001D017C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  v14 = *v12;
  if (*v12)
  {
    *(v11 + 56) = v14;
    operator delete(v14);
  }

  v15 = *(v11 + 40);
  if (v15)
  {
    sub_100008080(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001D01CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (a1 + 48);
  *(a1 + 56) = *(a1 + 48);
  v9 = (*(**(a1 + 32) + 56))(*(a1 + 32));
  if (v9)
  {
    if (a4 - a3 <= *a1 || (v10 = v9, (v11 = (*(**(a1 + 32) + 56))(*(a1 + 32), a4 + -1.0)) == 0))
    {
LABEL_39:
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      return sub_10115F0F8(a2, *(a1 + 48), *(a1 + 56), (*(a1 + 56) - *(a1 + 48)) >> 3);
    }

    v12 = v11;
    [objc_msgSend(v10 "location")];
    if (v13 < *(a1 + 16))
    {
      v15 = *(a1 + 56);
      v14 = *(a1 + 64);
      if (v15 >= v14)
      {
        v20 = (v15 - *v8) >> 3;
        if ((v20 + 1) >> 61)
        {
          goto LABEL_40;
        }

        v21 = v14 - *v8;
        v22 = v21 >> 2;
        if (v21 >> 2 <= (v20 + 1))
        {
          v22 = v20 + 1;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v22;
        }

        if (v23)
        {
          sub_1003EE744(v8, v23);
        }

        *(8 * v20) = v10;
        v16 = 8 * v20 + 8;
        v24 = *(a1 + 48);
        v25 = *(a1 + 56) - v24;
        v26 = (8 * v20 - v25);
        memcpy(v26, v24, v25);
        v27 = *(a1 + 48);
        *(a1 + 48) = v26;
        *(a1 + 56) = v16;
        *(a1 + 64) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        *v15 = v10;
        v16 = (v15 + 1);
      }

      *(a1 + 56) = v16;
    }

    sub_1001B3DF8(a1, v10, v12, 0);
    [objc_msgSend(v12 "location")];
    v28 = *(a1 + 56);
    if (v29 >= *(a1 + 16))
    {
LABEL_35:
      v40 = *v8;
      v41 = 126 - 2 * __clz((v28 - *v8) >> 3);
      v42 = v28 == *v8;
      v44 = sub_1001B4008;
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41;
      }

      sub_10115F1B0(v40, v28, &v44, v43, 1);
      goto LABEL_39;
    }

    v30 = *(a1 + 64);
    if (v28 < v30)
    {
      *v28++ = v12;
LABEL_34:
      *(a1 + 56) = v28;
      goto LABEL_35;
    }

    v31 = (v28 - *v8) >> 3;
    if (!((v31 + 1) >> 61))
    {
      v32 = v30 - *v8;
      v33 = v32 >> 2;
      if (v32 >> 2 <= (v31 + 1))
      {
        v33 = v31 + 1;
      }

      if (v32 >= 0x7FFFFFFFFFFFFFF8)
      {
        v34 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v33;
      }

      if (v34)
      {
        sub_1003EE744(v8, v34);
      }

      v35 = (8 * v31);
      *v35 = v12;
      v28 = (8 * v31 + 8);
      v36 = *(a1 + 48);
      v37 = *(a1 + 56) - v36;
      v38 = v35 - v37;
      memcpy(v35 - v37, v36, v37);
      v39 = *(a1 + 48);
      *(a1 + 48) = v38;
      *(a1 + 56) = v28;
      *(a1 + 64) = 0;
      if (v39)
      {
        operator delete(v39);
      }

      goto LABEL_34;
    }

LABEL_40:
    sub_10028C64C();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);

  return sub_10115F0F8(a2, v17, v18, (v18 - v17) >> 3);
}

void sub_1001D04CC(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 40);
  if (*(v5 + 68) <= 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationAtMct,%{public}.3f,buffer is empty", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194EF04();
    }
  }

  else if (a3 >= 0.0)
  {
    v8 = sub_1006A9A14(v5, a3);
    *buf = off_1024DE5F8;
    v9 = *(v8 + 24);
    v10 = *(v8 + 40);
    v11 = *(v8 + 56);
    *&buf[8] = *(v8 + 8);
    v26 = v11;
    v25 = v10;
    v24 = v9;
    v12 = *(v8 + 88);
    v13 = *(v8 + 104);
    v14 = *(v8 + 120);
    v27 = *(v8 + 72);
    v30 = v14;
    v29 = v13;
    v28 = v12;
    v31 = *(v8 + 128);
    if (sub_100028030(buf) && BYTE8(v31))
    {
      *a2 = off_1024DE5F8;
      *(a2 + 72) = v27;
      *(a2 + 88) = v28;
      *(a2 + 104) = v29;
      *(a2 + 120) = v30;
      *(a2 + 8) = *&buf[8];
      *(a2 + 24) = v24;
      *(a2 + 40) = v25;
      *(a2 + 56) = v26;
      *(a2 + 128) = v31;
      return;
    }

    if (qword_1025D4600 != -1)
    {
      sub_10194EB0C();
    }

    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v21 = 134349056;
      v22 = a3;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "LCOutputBuffer,getLocationAtMct,%{public}.3f,invalid location", &v21, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194ED24();
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10194EAB4();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "LCOutputBuffer,getLocationAtMct,%{public}.3f,invalid timestamp", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194EE14();
    }
  }

  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 24) = 0u;
  *a2 = off_1024DE5F8;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 8) = _Q0;
  *(a2 + 40) = 0xBFF0000000000000;
  *(a2 + 56) = 0xBFF0000000000000;
  *(a2 + 72) = _Q0;
  *(a2 + 88) = _Q0;
  *(a2 + 104) = 0xBFF0000000000000;
  *(a2 + 116) = 0;
  *(a2 + 124) = 0;
  *(a2 + 128) = 0xBFF0000000000000;
  *(a2 + 136) = 0;
  *(a2 + 140) = 7;
}

void sub_1001D0818()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t sub_1001D084C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1001D08DC((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_1001D08DC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001D0934(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1001D0934(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1006A6D20(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

id sub_1001D09BC(const void *a1, int a2, void *a3, uint64_t a4)
{
  CFRetain(a1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D0D20;
  v9[3] = &unk_102498FE0;
  v9[5] = a4;
  v9[6] = a1;
  v10 = a2;
  v9[4] = a3;
  return [objc_msgSend(a3 "silo")];
}

uint64_t sub_1001D0AA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memcpy(a2, &unk_101C7C020, 0x230uLL);
  result = [a1 objectForKey:@"LocationsPrivate"];
  if (result)
  {
    v5 = result;
    result = [objc_msgSend(a1 objectForKey:{@"LocationCount", "integerValue"}];
    if (result >= 1)
    {
      v6 = result;
      result = [v5 bytes];
      if (result)
      {

        return memcpy(a2, (result + 560 * v6 - 560), 0x230uLL);
      }
    }
  }

  return result;
}

double sub_1001D0B64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v3;
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 104);
  v5 = *(a2 + 120);
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a1 + 120) = v5;
  *(a1 + 104) = v4;
  v7 = *(a2 + 248);
  v8 = *(a2 + 264);
  v9 = *(a2 + 280);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 264) = v8;
  *(a1 + 280) = v9;
  *(a1 + 248) = v7;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a1 + 184) = v11;
  *(a1 + 168) = v10;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 356) = 0;
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 425) = *(a2 + 425);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 544) = xmmword_101C76220;
  *(a1 + 560) = 0;
  *(a1 + 568) = -1;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 592) = _Q0;
  *(a1 + 608) = 0;
  *(a1 + 610) = 0;
  *(a1 + 612) = 0;
  *(a1 + 616) = *(a2 + 536);
  *(a1 + 624) = *(a2 + 544);
  result = 0.0;
  *(a1 + 632) = 0;
  *(a1 + 640) = *(a2 + 552);
  return result;
}

void sub_1001D0D20(uint64_t a1)
{
  if ([*(a1 + 32) isValid])
  {
    sub_1001D0D74([*(a1 + 32) provider], *(a1 + 48), *(a1 + 56), *(a1 + 40));
  }

  v2 = *(a1 + 48);

  CFRelease(v2);
}

void sub_1001D0D74(void *a1, uint64_t a2, int a3, void *a4)
{
  if (a3 <= 24)
  {
    if (a3)
    {
      if (a3 == 3)
      {
        LODWORD(__src[0]) = 9;
        (*(*a1 + 144))(a1, __src, 0, 0xFFFFFFFFLL);
      }

      return;
    }

    if (a1[17] == a2)
    {
      [objc_msgSend(a4 objectForKey:{@"LocationCount", "integerValue"}];
      [objc_msgSend(a4 objectForKey:{@"Locations", "bytes"}];
      sub_100021AFC(__src);
      operator new();
    }

    if (a1[18] == a2)
    {
      sub_100021AFC(&v20);
      if (CLClientGetLocation())
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
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
        sub_1001D0AA4(a4, &v34);
        sub_1001D0B5C(__src, &v34);
        memcpy(v21, __src, sizeof(v21));
        v10 = v67;
        v67 = 0u;
        v11 = *(&v22 + 1);
        v22 = v10;
        if (v11)
        {
          sub_100008080(v11);
          v27 = v72;
          v28[0] = v73[0];
          *(v28 + 9) = *(v73 + 9);
          v23 = v68;
          v24 = v69;
          v25 = v70;
          v26 = v71;
          if (*(&v67 + 1))
          {
            sub_100008080(*(&v67 + 1));
          }
        }

        else
        {
          v27 = v72;
          v28[0] = v73[0];
          *(v28 + 9) = *(v73 + 9);
          v23 = v68;
          v24 = v69;
          v25 = v70;
          v26 = v71;
        }

        LODWORD(__src[0]) = 39;
        (*(*a1 + 152))(a1, __src, &v20, 0, 0xFFFFFFFFLL, 0);
        goto LABEL_49;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v16 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Could not get location from location event (%s)", __src, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_1019F9848(__src);
      v18 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
      LODWORD(v34) = 136315138;
      *(&v34 + 4) = v18;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLBundleLocationProvider::handleClientEvent(CLClientRef, CLClientEvent, id)", "%s\n", v15);
      if (v15 == __src)
      {
        goto LABEL_49;
      }
    }

    else
    {
      sub_100021AFC(&v20);
      if (CLClientGetLocation())
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
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
        sub_1001D0AA4(a4, &v34);
        sub_1001D0B5C(__src, &v34);
        memcpy(v21, __src, sizeof(v21));
        v6 = v67;
        v67 = 0u;
        v7 = *(&v22 + 1);
        v22 = v6;
        if (v7)
        {
          sub_100008080(v7);
          v27 = v72;
          v28[0] = v73[0];
          *(v28 + 9) = *(v73 + 9);
          v23 = v68;
          v24 = v69;
          v25 = v70;
          v26 = v71;
          if (*(&v67 + 1))
          {
            sub_100008080(*(&v67 + 1));
          }
        }

        else
        {
          v27 = v72;
          v28[0] = v73[0];
          *(v28 + 9) = *(v73 + 9);
          v23 = v68;
          v24 = v69;
          v25 = v70;
          v26 = v71;
        }

        LODWORD(__src[0]) = 0;
        (*(*a1 + 152))(a1, __src, &v20, 0, 0xFFFFFFFFLL, 0);
        goto LABEL_49;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Could not get location from location event (%s)", __src, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_1019F9848(__src);
      v14 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
      LODWORD(v34) = 136315138;
      *(&v34 + 4) = v14;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLBundleLocationProvider::handleClientEvent(CLClientRef, CLClientEvent, id)", "%s\n", v15);
      if (v15 == __src)
      {
        goto LABEL_49;
      }
    }

    free(v15);
LABEL_49:

    if (v32)
    {
      sub_100008080(v32);
    }

    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (v29)
    {
      sub_100008080(v29);
    }

    if (*(&v22 + 1))
    {
      sub_100008080(*(&v22 + 1));
    }

    return;
  }

  if (a3 == 25)
  {
    if (CLClientGetError() && v19 <= 1)
    {
      LODWORD(__src[0]) = 9;
      (*(*a1 + 144))(a1, __src, 1, 0xFFFFFFFFLL);
    }
  }

  else if (a3 == 27)
  {
    if (CLClientGetAuthorizationStatus())
    {
      *(a1 + 45) = 0;
      (*(*a1 + 304))(a1);
      LODWORD(__src[0]) = 9;
      (*(*a1 + 144))(a1, __src, 1, 0xFFFFFFFFLL);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019F877C();
      }

      v8 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [+[NSString stringWithFormat:](NSString UTF8String:CFSTR(""bundleIdentifier];
        LODWORD(__src[0]) = 136315138;
        *(__src + 4) = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning BLP: Could not get authorization status (%s)", __src, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019F972C(a1);
      }
    }

    LODWORD(__src[0]) = 13;
    (*(*a1 + 144))(a1, __src, 0, 0xFFFFFFFFLL);
  }
}

void sub_1001D17B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1858(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLeechedNotification:v5 withData:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D18E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D18FC(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D198C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D19A0(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1A30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1A44(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1AD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

id sub_1001D1AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101A5C200();
  }

  v5 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Received an initial location (pinned), unregistering", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A5C214();
  }

  return [a4 unregisterFromLocationNotifications];
}

void sub_1001D1BA8(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1C38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1C4C(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1CDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001D1CF0(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1001D1D80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001D1DA4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52) <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v4 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v5 = "{msg%{public}.0s:#GnssRefLocationCache,isNotRepeatedLocationAssistance,no cached location}";
    goto LABEL_14;
  }

  v2 = *(a2 + 76) - *(a1 + 108);
  if (v2 < 0.0 || v2 > 6.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v4 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return 1;
    }

    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v5 = "{msg%{public}.0s:#GnssRefLocationCache,isNotRepeatedLocationAssistance,new assistance not recent}";
LABEL_14:
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, v5, &v10, 0x12u);
    return 1;
  }

  if (*(a2 + 36) > 0.0)
  {
    v7 = *(a1 + 68);
    if (v7 < 0.0 || v7 > 0.0 && vabdd_f64(*(a2 + 28), *(a1 + 60)) > 1.0)
    {
      return 1;
    }
  }

  if (*(a2 + 84) > *(a1 + 116))
  {
    return 1;
  }

  sub_1001097CC((a1 + 1008), a2, a1 + 32);
  if (v8 > 1.0)
  {
    return 1;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v9 = qword_1025D4658;
  result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,isNotRepeatedLocationAssistance,same location}", &v10, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_1001D1FE0(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    sub_101AC0C84();
  }

  v4 = sub_1001D252C(a1, 0xA);
  sub_1001D22AC(a2);
  if (*v4 != 1)
  {
    return 0;
  }

  if (qword_1025D4600 != -1)
  {
    sub_1003110B8();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = sub_100008880((v4 + 184));
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Get manifest tile, %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AC0A98(v4);
  }

  result = sub_100008880((v4 + 184));
  if (result)
  {
    if (sub_100008880((v4 + 184)) >= 2)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Why do we have more than one, we only want one", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AC0B98();
      }
    }

    v8 = *(sub_10018D3FC((v4 + 184)) + 80);
    *buf = *(v8 + 48);
    v17 = *(v8 + 64);
    if (*(v8 + 95) < 0)
    {
      sub_100007244(&__p, *(v8 + 72), *(v8 + 80));
    }

    else
    {
      __p = *(v8 + 72);
      v19 = *(v8 + 88);
    }

    if (sub_10008AC98(v8, *(a1 + 200)))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (sub_100713434(v8, &v12))
      {
        v9 = v12;
        v10 = v13;
        if (v12 != v13)
        {
          v11 = a2[1];
          do
          {
            if (v11 >= a2[2])
            {
              v11 = sub_100714994(a2, v9);
            }

            else
            {
              sub_10071492C(a2, v9);
              v11 += 56;
            }

            a2[1] = v11;
            v9 += 56;
          }

          while (v9 != v10);
        }
      }

      v15 = &v12;
      sub_1001D22FC(&v15);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    return 1;
  }

  return result;
}

void sub_1001D226C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  a12 = &a9;
  sub_1001D22FC(&a12);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001D22AC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_1001D22FC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001D22AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1001D2350(unsigned __int8 *a1, uint64_t a2)
{
  result = sub_100072814(a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a2 + 96);
  if (v5 > 6)
  {
    if ((v5 - 10) >= 2)
    {
      if (v5 == 7)
      {
        v9 = a1 + 200;
        v8 = (a1 + 356);
        v7 = a1[356];
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_21;
        }

        v9 = a1 + 360;
        v8 = (a1 + 516);
        v7 = a1[516];
      }

      goto LABEL_15;
    }

LABEL_14:
    v9 = a1 + 520;
    v8 = (a1 + 676);
    v7 = a1[676];
    goto LABEL_15;
  }

  if (v5 == 1 || v5 == 4)
  {
    goto LABEL_14;
  }

  if (v5 != 6)
  {
    goto LABEL_21;
  }

  v8 = (a1 + 196);
  v7 = a1[196];
  v9 = a1 + 40;
LABEL_15:
  if (v7 != 1)
  {
    v18 = *(a2 + 16);
    *v9 = *a2;
    v9[1] = v18;
    v19 = *(a2 + 32);
    v20 = *(a2 + 48);
    v21 = *(a2 + 80);
    v9[4] = *(a2 + 64);
    v9[5] = v21;
    v9[2] = v19;
    v9[3] = v20;
    v22 = *(a2 + 96);
    v23 = *(a2 + 112);
    v24 = *(a2 + 128);
    *(v9 + 140) = *(a2 + 140);
    v9[7] = v23;
    v9[8] = v24;
    v9[6] = v22;
LABEL_20:
    *v8 = 1;
    goto LABEL_21;
  }

  if (!sub_100073270(v9, a2))
  {
    v10 = *v8;
    v11 = *(a2 + 16);
    *v9 = *a2;
    v9[1] = v11;
    v12 = *(a2 + 80);
    v14 = *(a2 + 32);
    v13 = *(a2 + 48);
    v9[4] = *(a2 + 64);
    v9[5] = v12;
    v9[2] = v14;
    v9[3] = v13;
    v16 = *(a2 + 112);
    v15 = *(a2 + 128);
    v17 = *(a2 + 96);
    *(v9 + 140) = *(a2 + 140);
    v9[7] = v16;
    v9[8] = v15;
    v9[6] = v17;
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_21:

  return sub_1001D3364(a1);
}

uint64_t sub_1001D252C(uint64_t a1, void *a2)
{
  if ((a2 & 0xFFFFFFF7) - 1 >= 2)
  {
    sub_101AC3C68();
  }

  result = sub_10007253C((a1 + 504), a2);
  if (!result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABFB1C();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      v9 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "TileMgr, invalid tileType, %{public}d, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AC3DCC(a2);
    }

    if (qword_1025D4600 != -1)
    {
      sub_101ABFEE4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }
    }

    v6 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101ABFEE4();
      }
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
  }

  return result;
}

void sub_1001D2828(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 24);
  if (v2 != (a1 + 24))
  {
    a2.n128_u64[0] = 68289282;
    v13 = a2;
    do
    {
      v5 = v2[4];
      v6 = v2[5];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = (v5 + 72);
      if (*(v5 + 95) < 0)
      {
        v7 = *v7;
      }

      v8 = sub_1000184F4(*(a1 + 8), [CLClientKeyPath clientKeyPathWithClientKey:[NSString stringWithUTF8String:v7, *&v13]]);
      if (sub_1001D2A1C(a1, v8))
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v9 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
        {
          *buf = v13.n128_u32[0];
          v15 = 0;
          v16 = 2082;
          v17 = "";
          v18 = 2114;
          v19 = v8;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:markReceivingLocationInformation, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        sub_1000F6390(*(a1 + 8), v8, 1, 0);
      }

      if (v6)
      {
        sub_100008080(v6);
      }

      v10 = v2[1];
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
          v11 = v2[2];
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
  }
}

id sub_1001D2A1C(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 8) + 136) registeredKeyPathForClientIdentifier:a2];
  if (![v3 isValidCKP])
  {
    return 0;
  }

  v4 = *(*(a1 + 8) + 136);
  sub_1001D2AE8(__p);
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

void sub_1001D2ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D2AFC(__n128 *a1, __n128 *a2)
{
  v13 = *a2;
  v3 = a1[8].n128_u64[1];
  if (v3)
  {
    (*(*v3 + 48))(v3, &v13);
  }

  v4 = a1[3].n128_u64[1];
  if (v4)
  {
    v5 = v4 + a1[3].n128_u64[0] - 1;
    v6 = a1[1].n128_u64[1];
    v7 = (*(v6 + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * v5];
    if (v7 > v13.n128_f64[0])
    {
      v8 = a1[2].n128_u64[0];
      a1[3].n128_u64[1] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[2].n128_u64[0];
          v6 = (a1[1].n128_u64[1] + 8);
          a1[1].n128_u64[1] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 128;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v15 = v13.n128_u64[0];
            v16 = 2048;
            v17 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A89754();
          }

          goto LABEL_18;
        }

        v11 = 256;
      }

      a1[3].n128_u64[0] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1001D2E28(a1[1].n128_u64, &v13);
  a1[6] = v13;
}

uint64_t sub_1001D2CDC(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_1001D2D04(uint64_t *a1, float *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *a2;
    v7 = a2[2];
    v8 = a2[3];
    v9 = 136315907;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2053;
    v14 = v7;
    v15 = 2053;
    v16 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "LocationCoordinate,context,%s,startTime,%f,latitude,%{sensitive}f,longitude,%{sensitive}f", &v9, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CAB68();
  }
}

__n128 sub_1001D2E28(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10025C808(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t *sub_1001D2ED0(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10045E8A0(a1, a2);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  operator delete(a2);
  return v3;
}

id sub_1001D2F14(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Scheduling pending app status event}", buf, 0x12u);
  }

  v3 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E8BAC;
  v7[3] = &unk_102449A78;
  v7[4] = a1;
  [v3 afterInterval:v7 async:sub_1000F49A8(1)];
  v4 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100126378;
  v6[3] = &unk_102449A78;
  v6[4] = a1;
  return [v4 afterInterval:v6 async:sub_1000F49A8(2)];
}

void sub_1001D30B4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A60E38();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLUnifiedCellLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A60E4C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLUnifiedCellLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001D3280(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001D3280(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 33 && (*(a4 + 672) & 1) == 0)
  {
    sub_1001D2350((a1 + 2800), a4);

    sub_1001F20F4(a1 + 3512, a4);
  }
}

uint64_t sub_1001D32E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100072814(a2);
  if (result)
  {
    result = sub_100072814(a3);
    if (result)
    {
      if (vabdd_f64(*(a2 + 76), *(a3 + 76)) <= 45.0)
      {

        return sub_1002270B8(result, a2, a3);
      }
    }
  }

  return result;
}

uint64_t sub_1001D3364(uint64_t result)
{
  if (*(result + 676) == 1)
  {
    v1 = result;
    if (*(result + 196) == 1)
    {
      result = sub_1001D32E8(result, result + 40, result + 520);
      if (v1[196] == 1)
      {
        v1[196] = 0;
      }
    }

    if (v1[356] == 1)
    {
      result = sub_1001D32E8(result, (v1 + 200), (v1 + 520));
      if (v1[356] == 1)
      {
        v1[356] = 0;
      }
    }

    if (v1[516] == 1)
    {
      result = sub_1001D32E8(result, (v1 + 360), (v1 + 520));
      if (v1[516] == 1)
      {
        v1[516] = 0;
      }
    }
  }

  return result;
}

void sub_1001D340C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018FCDB0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLWifiLocationProvider::onCellLocationProviderNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018FCDC4();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWifiLocationProvider::onCellLocationProviderNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001D35D0(a4, v6, v7, a3);
}

void sub_1001D35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    sub_1001D78F4(__p);
    v6 = (SBYTE7(v17) & 0x80u) == 0 ? __p : __p[0];
    *buf = 136642819;
    v46 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@WifiLogic, Cell location notification received, %{sensitive}s", buf, 0xCu);
    if (SBYTE7(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCDEC();
  }

  v7 = *(a4 + 112);
  v22 = *(a4 + 96);
  v23 = v7;
  v24[0] = *(a4 + 128);
  *(v24 + 12) = *(a4 + 140);
  v8 = *(a4 + 48);
  v18 = *(a4 + 32);
  v19 = v8;
  v9 = *(a4 + 80);
  v20 = *(a4 + 64);
  v21 = v9;
  v10 = *(a4 + 16);
  *__p = *a4;
  v17 = v10;
  memcpy(v25, (a4 + 160), sizeof(v25));
  v11 = *(a4 + 680);
  v12 = *(a4 + 688);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(v44 + 9) = *(a4 + 785);
  v13 = *(a4 + 776);
  v43 = *(a4 + 760);
  v44[0] = v13;
  v14 = *(a4 + 712);
  v39 = *(a4 + 696);
  v40 = v14;
  v15 = *(a4 + 728);
  v42 = *(a4 + 744);
  v41 = v15;
  v28 = v17;
  v27 = *__p;
  v32 = v21;
  v31 = v20;
  v30 = v19;
  v29 = v18;
  *(v35 + 12) = *(v24 + 12);
  v35[0] = v24[0];
  v34 = v23;
  v33 = v22;
  memcpy(v36, v25, sizeof(v36));
  v37 = v11;
  v38 = v12;
  v26 = 16;
  sub_1000FFE90();
}

uint64_t sub_1001D381C(float *a1, double a2, double a3)
{
  v3 = a3;
  *a1 = 0.0;
  if (fabs(a2) <= 90.0)
  {
    if (a3 < -180.0)
    {
      v8 = 0;
      do
      {
        v3 = v3 + 360.0;
      }

      while (v3 < -180.0 && v8++ < 3);
    }

    if (v3 >= 180.0)
    {
      v10 = 0;
      do
      {
        v3 = v3 + -360.0;
      }

      while (v3 >= 180.0 && v10++ < 3);
    }

    v12 = (v3 + 180.0) / 10.0;
    v13 = vcvtms_s32_f32(v12);
    if (v13 < 0x24)
    {
      v15 = (90.0 - a2) / 10.0;
      v16 = vcvtms_s32_f32(v15);
      if (v16 < 0x13)
      {
        if (v13 == 35)
        {
          v18 = 0;
        }

        else
        {
          v18 = v13 + 1;
        }

        v19 = v16 + 1;
        if (v16 == 18)
        {
          *a1 = -30.0;
        }

        else
        {
          v20 = 36 * v16;
          result = sub_1001F0848(v20 + v13);
          if (!result)
          {
            return result;
          }

          v21 = byte_101CB6C38[v20 + v13];
          v22 = 36 * v19;
          result = sub_1001F0848(v22 + v13);
          if (!result)
          {
            return result;
          }

          v24 = byte_101CB6C38[v22 + v13];
          result = sub_1001F0848(v18 + v20);
          if (!result)
          {
            return result;
          }

          v23 = byte_101CB6C38[v18 + v20];
          result = sub_1001F0848(v18 + v22);
          if (!result)
          {
            return result;
          }

          *a1 = (((((v19 - v15) * ((v12 - v13) * v23)) + (((v18 - v12) * v21) * (v19 - v15))) + (((v18 - v12) * v24) * (v15 - v16))) + (((v12 - v13) * byte_101CB6C38[v18 + v22]) * (v15 - v16))) / ((v19 - v16) * (v18 - v13));
        }

        return 1;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1019846C8();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v26 = a2;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "latitude %.9lf is not valid.", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1019847E0();
        return 0;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1019846C8();
      }

      v14 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134217984;
        v26 = v3;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "longitude %.9lf is not valid.", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_1019848D4();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019846C8();
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v26 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Input latitude = %.9lf is out of possible range", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019849C8();
      return 0;
    }
  }

  return result;
}

void sub_1001D3BE4(uint64_t a1, _BYTE *a2)
{
  sub_10010B730(a1);
  v4 = *a2;
  if (v4 != 2 && v4 < *(a1 + 161))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v15[0] = 68289282;
      v15[1] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 1026;
      v19 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stopping all location providers above threshold, threshold:%{public}d}", v15, 0x18u);
    }

    v7 = *(a1 + 232);
    if (v7 != (a1 + 240))
    {
      v8 = 0;
      do
      {
        v9 = *(v7 + 908);
        if (v9 <= *(a1 + 161) && v9 > *a2)
        {
          v8 = sub_1001EEB1C(a1, *(v7 + 10));
        }

        v11 = v7[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v7[2];
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != (a1 + 240));
      if (v8)
      {
        sub_100110094(a1);
      }
    }

    v14 = *a2;
    if (v14 == 255)
    {
      [*(a1 + 664) setNextFireDelay:1.79769313e308];
      sub_1001EFA0C(a1 + 800);
      LOBYTE(v14) = *a2;
    }

    *(a1 + 161) = v14;
  }
}

uint64_t sub_1001D3D90(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 344));
  v4 = sub_1001D3DEC(a1, a2);
  std::mutex::unlock((a1 + 344));
  return v4;
}

uint64_t sub_1001D3DEC(uint64_t a1, uint64_t a2)
{
  *(a1 + 264) = 0;
  *(a1 + 266) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 287) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 311) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  v5 = (a2 + 96);
  v4 = *(a2 + 96);
  if (v4 <= 3)
  {
    if (v4 != 1 && v4 != 3)
    {
      goto LABEL_62;
    }

LABEL_16:
    if (*(a1 + 208))
    {
      v10 = *(*(a1 + 176) + 8 * (*(a1 + 200) / 0x1AuLL)) + 156 * (*(a1 + 200) % 0x1AuLL);
      if (*(a2 + 76) - *(v10 + 76) < 900.0)
      {
        *(a1 + 289) = *(v10 + 84) > 0x49u;
      }
    }

    sub_1001D4750(v43, (a1 + 168));
    sub_1001D4820(a1, a2, v43, a1 + 288);
    sub_100106180(v43);
    sub_1001D4750(v42, (a1 + 216));
    sub_1001D4820(a1, a2, v42, a1 + 264);
    sub_100106180(v42);
    *(a1 + 336) = 1;
    sub_1001D77F4(a2, (a1 + 120));
    goto LABEL_20;
  }

  if (v4 == 9)
  {
    goto LABEL_16;
  }

  if (v4 != 6)
  {
    if (v4 == 4)
    {
      *(a1 + 289) = *(a2 + 84) > 0x49u;
      sub_1001D4750(v45, (a1 + 216));
      sub_1001D4820(a1, a2, v45, a1 + 264);
      sub_100106180(v45);
      sub_1001D4750(v44, (a1 + 120));
      sub_1001D4820(a1, a2, v44, a1 + 312);
      sub_100106180(v44);
      v6 = sub_1001D7858(a1 + 312, (a1 + 264));
      *(a1 + 336) = v6;
      if (v6 != 5)
      {
        sub_1001D77F4(a2, (a1 + 168));
        if ((*(a1 + 336) - 1) <= 1)
        {
          v7 = (a2 + 128);
          if (*(a2 + 128) <= 0x31u)
          {
            if (qword_1025D4870 != -1)
            {
              sub_101B70C38();
            }

            v8 = qword_1025D4878;
            if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
            {
              v9 = *v7;
              *buf = 67109376;
              *&buf[4] = v9;
              *&buf[8] = 1024;
              *&buf[10] = 50;
              _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, locationType,integrityPrior,%d,integrityNew,%d", buf, 0xEu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B70D58((a2 + 128));
            }

LABEL_61:
            *v7 = 50;
            goto LABEL_20;
          }
        }
      }

      goto LABEL_20;
    }

LABEL_62:
    if (qword_1025D4870 != -1)
    {
      sub_101B70AC4();
    }

    v24 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v25 = *v5;
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, location type,%d,not supported", buf, 8u);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    sub_101B7148C(v5);
    return 0;
  }

  if (*(a1 + 208))
  {
    v20 = *(*(a1 + 176) + 8 * (*(a1 + 200) / 0x1AuLL)) + 156 * (*(a1 + 200) % 0x1AuLL);
    if (*(a2 + 76) - *(v20 + 76) < 900.0)
    {
      *(a1 + 289) = *(v20 + 84) > 0x49u;
    }
  }

  sub_1001D4750(v41, (a1 + 168));
  sub_1001D4820(a1, a2, v41, a1 + 288);
  sub_100106180(v41);
  sub_1001D4750(v40, (a1 + 120));
  sub_1001D4820(a1, a2, v40, a1 + 312);
  sub_100106180(v40);
  v21 = sub_1001D7858(a1 + 312, (a1 + 288));
  *(a1 + 336) = v21;
  if (v21 != 5)
  {
    sub_1001D77F4(a2, (a1 + 216));
    if ((*(a1 + 336) - 1) <= 1)
    {
      v7 = (a2 + 128);
      if (*(a2 + 128) <= 0x31u)
      {
        if (qword_1025D4870 != -1)
        {
          sub_101B70C38();
        }

        v22 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          v23 = *v7;
          *buf = 67109376;
          *&buf[4] = v23;
          *&buf[8] = 1024;
          *&buf[10] = 50;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, locationType,integrityPrior,%d,integrityNew,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B70C60((a2 + 128));
        }

        goto LABEL_61;
      }
    }
  }

LABEL_20:
  if ((*(a1 + 336) & 0xFFFFFFFE) != 4)
  {
    return 0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_101B70C38();
  }

  v11 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    sub_1001D78F4(buf);
    v12 = v48 >= 0 ? buf : *buf;
    *v49 = 136642819;
    v50 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, not reliable or very low reliable, location %{sensitive}s", v49, 0xCu);
    if (v48 < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B70E50();
  }

  if (*(a1 + 312) == 1)
  {
    v13 = *(a1 + 328);
    if (v13 > *(a1 + 320) + *(a1 + 320))
    {
      if (qword_1025D4870 != -1)
      {
        sub_101B70C38();
      }

      v14 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        v15 = *v5;
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, Location rejected by IM,Reason,disagrees with GPS,location type,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B71398(v5);
      }

      return 1;
    }

    v28 = fabs(v13) / 3.5;
    v30 = *(a2 + 20);
    v29 = (a2 + 20);
    *v29 = v28 + v30;
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v31 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v32 = *v29;
      v33 = *v29 - v28;
      *buf = 134218240;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      v47 = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, huncBump,fromHunc,%.1lf,toHunc,%.1lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B71290(v29, v28);
      return 0;
    }
  }

  else
  {
    if (*(a1 + 288) != 1 || *(a1 + 289) != 1)
    {
      if (*v5 == 4 && *(a1 + 264) == 1 && (*(a1 + 289) & 1) == 0 && *(a1 + 280) > 5000.0)
      {
        if (qword_1025D4870 != -1)
        {
          sub_101B70C38();
        }

        v26 = qword_1025D4878;
        if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
        {
          v27 = *v5;
          *buf = 67109120;
          *&buf[4] = v27;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, Location rejected by IM,Reason,low confidence wifi strongly disagrees with cell,location type,%d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B70FA0(v5);
        }

        return 1;
      }

      return 0;
    }

    v17 = *(a1 + 304);
    if (v17 > *(a1 + 296) + *(a1 + 296))
    {
      if (qword_1025D4870 != -1)
      {
        sub_101B70C38();
      }

      v18 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
      {
        v19 = *v5;
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, Location rejected by IM,Reason,disagrees with high confidence wifi,location type,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B7119C(v5);
      }

      return 1;
    }

    v34 = fabs(v17) / 3.5;
    v36 = *(a2 + 20);
    v35 = (a2 + 20);
    *v35 = v34 + v36;
    if (qword_1025D4870 != -1)
    {
      sub_101B70C38();
    }

    v37 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v38 = *v35;
      v39 = *v35 - v34;
      *buf = 134218240;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      v47 = v38;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, huncBump,fromHunc,%.1lf,toHunc,%.1lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B71094(v35, v34);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001D4750(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
  }

  else
  {
    v5 = (*(v4 + 8 * (v3 / 0x1A)) + 156 * (v3 % 0x1A));
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x1A));
    v8 = (*v7 + 156 * (v6 % 0x1A));
  }

  sub_1001DA11C(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  return a1;
}

void sub_1001D4820(float64x2_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3[5])
  {
    v4 = *(a3[1] + 8 * (a3[4] / 0x1AuLL)) + 156 * (a3[4] % 0x1AuLL);
    if (*(a2 + 76) - *(v4 + 76) < 900.0)
    {
      *a4 = 1;
      sub_1001D4898(a1, a2, v4, (a4 + 8), (a4 + 2), (a4 + 16));
    }
  }
}

void sub_1001D4898(float64x2_t *a1, uint64_t a2, uint64_t a3, double *a4, BOOL *a5, double *a6)
{
  sub_1001097CC(a1, a2, a3);
  v13 = v12;
  v14 = *(a2 + 76);
  v15 = v14 - *(a3 + 76);
  if (v15 >= -2.0)
  {
    v17 = v15 >= 0.0 || v15 <= -2.0;
    v18 = fabs(v15);
    if (v17)
    {
      v18 = v14 - *(a3 + 76);
    }

    v19 = sub_1001F5CA4(a1, v18, v14);
    v20 = v19 + (*(a3 + 20) + *(a2 + 20)) * 3.0;
    *a4 = v20;
    *a6 = v13 - v20;
    *a5 = v13 < *a4;
    if (qword_1025D4870 != -1)
    {
      sub_101B70AC4();
    }

    v21 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a4;
      v23 = *a5;
      sub_1001D78F4(v39);
      v24 = SHIBYTE(v42);
      v25 = *v39;
      sub_1001D78F4(__p);
      v26 = v39;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if (v38 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      *buf = 134219266;
      v51 = v22;
      v52 = 2048;
      v53 = *&v13;
      v54 = 2048;
      v55 = v19;
      v56 = 1024;
      v57 = v23;
      v58 = 2080;
      v59 = v26;
      v60 = 2080;
      v61 = v27;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, hpl %.1f, distance %.1f, hplmodifier %.1f, withinhpl_ %d, loc1 %s, loc2 %s", buf, 0x3Au);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(*v39);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B70AD8(buf);
      v28 = *a4;
      v29 = *a5;
      sub_1001D78F4(__p);
      v30 = v38;
      v31 = __p[0];
      sub_1001D78F4(v35);
      v32 = __p;
      if (v30 < 0)
      {
        v32 = v31;
      }

      if (v36 >= 0)
      {
        v33 = v35;
      }

      else
      {
        v33 = v35[0];
      }

      *v39 = 134219266;
      *&v39[4] = v28;
      v40 = 2048;
      v41 = v13;
      v42 = 2048;
      v43 = v19;
      v44 = 1024;
      v45 = v29;
      v46 = 2080;
      v47 = v32;
      v48 = 2080;
      v49 = v33;
      v34 = _os_log_send_and_compose_impl();
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      if (v38 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLIntegrityMonitor::crossCheck(const CLDaemonLocation &, const CLDaemonLocation &, double &, BOOL &, double &)", "%s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_101B70AC4();
    }

    v16 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v51 = v15;
      v52 = 2048;
      v53 = 0xC000000000000000;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "IntegrityMonitor, #Warning deltaTime = %0.3f, but most negative allowed is %0.3lf, resetting Integrity Monitor", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B70B1C();
    }

    sub_10120B8E8(a1);
  }
}

void sub_1001D4C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D4CB8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 96);
  if ((v5 & 0xFFFFFFF7) == 1)
  {
    v6 = *(a1 + 5176);
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 == 4 || v5 == 11;
  if (!v7 && (v6 & 1) == 0)
  {
    v27 = v5 > 0xA;
    v28 = (1 << v5) & 0x5C0;
    if (v27 || v28 == 0)
    {
      return;
    }
  }

  *(a1 + 2000) = 0xBFF0000000000000;
  v8 = (a1 + 2008);
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0xBFF0000000000000;
  v9 = sub_10000B1F8();
  *buf = 1;
  *(a1 + 2000) = sub_10001A6B0(v9, buf);
  *(a1 + 2016) = *(a2 + 28);
  *v8 = 0;
  v49 = 0;
  *v50 = 0;
  *&v50[8] = xmmword_101C75BF0;
  v51 = -1;
  v52 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  if (!(*(**(a1 + 280) + 288))())
  {
    return;
  }

  v10 = *(a2 + 36);
  if (v10 <= 0.0 || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v6 ^ 1 | a3) & 1) == 0)
  {
    v11 = *&v50[8] > 0.0;
    if (*&v50[8] >= 20.0)
    {
      v11 = 0;
    }

    v12 = (*&v50[8] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v11;
    goto LABEL_18;
  }

  if (v10 >= *(sub_1000F7F38() + 44))
  {
    v30 = *&v50[8] > 0.0;
    if (*&v50[8] >= 20.0)
    {
      v30 = 0;
    }

    v12 = (*&v50[8] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v30;
    if (*&v50[8] >= *(a2 + 36))
    {
      v12 = 0;
    }

LABEL_18:
    v45 = v12;
    goto LABEL_19;
  }

  v45 = 0;
LABEL_19:
  if (qword_1025D4600 != -1)
  {
    sub_101ACBA1C();
  }

  v13 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a2 + 96);
    v15 = *(a2 + 504);
    v16 = *(a2 + 28);
    v17 = *(a2 + 36);
    v18 = *(a2 + 476);
    v19 = *(a2 + 472);
    v40 = *(a1 + 5176);
    v42 = *(a2 + 704);
    v44 = *(a2 + 712);
    v20 = sub_10000B1F8();
    v21 = sub_100125220(v20);
    *buf = 67244289;
    *&buf[4] = v45;
    *v88 = 1026;
    *&v88[2] = v14;
    v89 = 2050;
    v90 = v15;
    v91 = 2049;
    *v92 = v16;
    *&v92[8] = 2050;
    v93 = v17;
    v94 = 2050;
    v95 = v18;
    v96 = 1026;
    v97 = v19;
    v98 = 2050;
    v99 = v49;
    v100 = 2049;
    v101 = *v50;
    *v102 = 2050;
    *&v102[2] = *&v50[8];
    *&v102[10] = 2050;
    v103 = *&v50[16];
    v104 = 1026;
    v105 = v51;
    v106 = 1026;
    v107 = v40;
    *v108 = 2049;
    *&v108[2] = v42;
    *&v108[10] = 2050;
    v109 = v44;
    v110 = 1026;
    v111 = a3;
    v112 = 2050;
    v113 = v21;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "BaroAlt,updateAltIfApprprt,success,%{public}d,type,%{public}d,locMachContTime,%{public}lf,altPrior,%{private}.3lf,altUncPrior,%{public}.3lf,undulationPrior,%{public}.3lf,undulationModelPrior,%{public}d,baroAltApplicableTime,%{public}lf,baroAltVal,%{private}.3lf, baroAltUnc,%{public}.3lf,undulation,%{public}.3lf, undulationModel,%{public}d,emergency,%{public}d,rawAlt,%{private}.3lf,rawAltUnc,%{public}.3lf,isOverridenByWiFiZ,%{public}d,propagation_us,%{public}.3f", buf, 0x94u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101ACBA1C();
    }

    v31 = *(a2 + 96);
    v32 = *(a2 + 504);
    v33 = *(a2 + 28);
    v34 = *(a2 + 36);
    v35 = *(a2 + 476);
    v36 = *(a2 + 472);
    v39 = *(a1 + 5176);
    v41 = *(a2 + 704);
    v43 = *(a2 + 712);
    v37 = sub_10000B1F8();
    LODWORD(v56) = 67244289;
    HIDWORD(v56) = v45;
    LOWORD(v57) = 1026;
    *(&v57 + 2) = v31;
    HIWORD(v57) = 2050;
    v58 = v32;
    v59 = 2049;
    v60 = v33;
    v61 = 2050;
    v62 = v34;
    v63 = 2050;
    v64 = v35;
    v65 = 1026;
    v66 = v36;
    v67 = 2050;
    v68 = v49;
    v69 = 2049;
    v70 = *v50;
    v71 = 2050;
    v72 = *&v50[8];
    v73 = 2050;
    v74 = *&v50[16];
    v75 = 1026;
    v76 = v51;
    v77 = 1026;
    v78 = v39;
    v79 = 2049;
    v80 = v41;
    v81 = 2050;
    v82 = v43;
    v83 = 1026;
    v84 = a3;
    v85 = 2050;
    v86 = sub_100125220(v37);
    v38 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::updateAltitudeWithBaroIfAppropriate(CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v38);
    if (v38 != buf)
    {
      free(v38);
    }
  }

  if (v45)
  {
    *(a2 + 704) = *(a2 + 28);
    *(a2 + 720) = *(a2 + 476);
    *(a2 + 728) = *(a2 + 472);
    *(a2 + 28) = *v50;
    v22 = *&v50[16];
    *(a2 + 476) = v22;
    *(a2 + 472) = v51;
    *v8 = 1;
    v48 = 0;
    v23 = sub_100226520((a2 + 4), (a2 + 12), &v48);
    *buf = 184;
    *v88 = 100;
    v24 = *(a2 + 36);
    *&v92[6] = 0;
    HIDWORD(v93) = 185;
    *(&v95 + 2) = v24;
    LODWORD(v101) = 4;
    *v102 = 187;
    *&v102[8] = v24;
    *v108 = 4;
    *&v108[8] = 189;
    HIDWORD(v109) = v23;
    v114 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    sub_1007B6614(&v56, buf, &v115, 4uLL);
    for (i = 128; i != -32; i -= 40)
    {
      sub_10008F96C(&buf[i]);
    }

    v26 = *(a1 + 5192);
    memset(v47, 0, sizeof(v47));
    sub_1007B68E0(v47, v56, v57, 0xCCCCCCCCCCCCCCCDLL * ((v57 - v56) >> 3));
    [v26 setMeasurements:sub_1007B2EC4(v47)];
    *buf = v47;
    sub_1007B6858(buf);
    *buf = &v56;
    sub_1007B6858(buf);
  }
}

void sub_1001D537C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  a53 = &a33;
  sub_1007B6858(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D53D4(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v223 = a2;
  if (!a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "LocationController,#Warning, not notifying clients when provider is None", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAC34C();
    }

    return 0;
  }

  v9 = a1 + 240;
  v8 = *(a1 + 240);
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = a1 + 240;
  v11 = *(a1 + 240);
  do
  {
    if (*(v11 + 32) >= a2)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a2));
  }

  while (v11);
  if (v10 == v9 || *(v10 + 32) > a2)
  {
LABEL_9:
    v10 = a1 + 240;
  }

  v12 = (a1 + 220);
  if (!v8)
  {
    goto LABEL_17;
  }

  v13 = *v12;
  v14 = a1 + 240;
  v15 = *(a1 + 240);
  do
  {
    if (*(v15 + 32) >= v13)
    {
      v14 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v13));
  }

  while (v15);
  if (v14 == v9 || v13 < *(v14 + 32))
  {
LABEL_17:
    v14 = a1 + 240;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v16 = *(a1 + 224);
  v17 = a1 + 240;
  do
  {
    if (*(v8 + 32) >= v16)
    {
      v17 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < v16));
  }

  while (v8);
  if (v17 == v9 || v16 < *(v17 + 32))
  {
LABEL_25:
    v17 = a1 + 240;
  }

  if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")] && (*(v10 + 911) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v45 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "LocationController,#Warning, not notifying clients when device is sleeping", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AABED4();
    }

    return 0;
  }

  if (a2 == 4 && sub_1002A4D0C(a1, v10, v14, a4))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "LocationController,#Warning, not notifying clients in WiFi to GPS transition", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAC270();
    }

    return 0;
  }

  v20 = *(v10 + 116);
  v21 = *(v10 + 192);
  if ((v21 & 0xFFFFFFFE) != 0xA || *(v10 + 224) != 75 || (v22 = 0.0, v20 <= 0.0))
  {
    if (v20 < 20.0 && v20 > 0.0 && v21 == 4)
    {
      v22 = 20.0;
    }

    else
    {
      v22 = *(v10 + 116);
    }
  }

  v25 = *(v17 + 116);
  v26 = *(v17 + 192);
  if ((v26 & 0xFFFFFFFE) != 0xA || *(v17 + 224) != 75 || (v27 = 0.0, v25 <= 0.0))
  {
    if (v25 < 20.0 && v25 > 0.0 && v26 == 4)
    {
      v27 = 20.0;
    }

    else
    {
      v27 = *(v17 + 116);
    }
  }

  v30 = *(v14 + 116);
  v31 = *(v14 + 192);
  if ((v31 & 0xFFFFFFFE) != 0xA || *(v14 + 224) != 75 || (v32 = 0.0, v30 <= 0.0))
  {
    if (v30 < 20.0 && v30 > 0.0 && v31 == 4)
    {
      v32 = 20.0;
    }

    else
    {
      v32 = *(v14 + 116);
    }
  }

  v221 = v9 - 8;
  v219 = a3;
  v220 = *(a1 + 344) == a2 && *(v10 + 228) == 2;
  if (*v12 && *v12 != a2 && (*(v10 + 911) & 1) == 0)
  {
    v35 = *(v10 + 908);
    if (v35 <= *(v14 + 908) && a4 - *(v14 + 172) < *(v14 + 184))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101AAB6FC();
      }

      v36 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(v10 + 100);
        v38 = *(v10 + 108);
        *buf = &v223;
        v39 = sub_100109DF4(v221, &v223);
        v40 = v39 + 6;
        if (*(v39 + 71) < 0)
        {
          v40 = *v40;
        }

        *buf = 134546179;
        *&buf[4] = v37;
        *&buf[12] = 2053;
        v246 = v38;
        v247 = 2082;
        v248 = v40;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v41 = *(v10 + 100);
      v42 = *(v10 + 108);
      *v224 = &v223;
      v43 = sub_100109DF4(v221, &v223);
      v44 = v43 + 6;
      if (*(v43 + 71) < 0)
      {
        v44 = *v44;
      }

      goto LABEL_226;
    }

    if (v35 <= 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101AAB6FC();
      }

      v110 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v111 = *(v10 + 100);
        v112 = *(v10 + 108);
        *buf = &v223;
        v113 = sub_100109DF4(v221, &v223);
        v114 = v113 + 6;
        if (*(v113 + 71) < 0)
        {
          v114 = *v114;
        }

        *buf = 134546179;
        *&buf[4] = v111;
        *&buf[12] = 2053;
        v246 = v112;
        v247 = 2082;
        v248 = v114;
        _os_log_impl(dword_100000000, v110, OS_LOG_TYPE_DEBUG, "Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v41 = *(v10 + 100);
      v42 = *(v10 + 108);
      *v224 = &v223;
      v115 = sub_100109DF4(v221, &v223);
      v44 = v115 + 6;
      if (*(v115 + 71) < 0)
      {
        v44 = *v44;
      }

LABEL_226:
      *v224 = 134546179;
      *&v224[4] = v41;
      v225 = 2053;
      v226 = v42;
      v227 = 2082;
      v228 = v44;
      v116 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v116);
      if (v116 != buf)
      {
        free(v116);
      }

      return 0;
    }
  }

  v222 = (a1 + 224);
  v48 = *(v10 + 172);
  if (v48 > a4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v49 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(v10 + 100);
      v51 = *(v10 + 108);
      *buf = &v223;
      v52 = sub_100109DF4(v221, &v223);
      v53 = v52 + 6;
      if (*(v52 + 71) < 0)
      {
        v53 = *v53;
      }

      v54 = a4 - *(v10 + 172);
      *buf = 134546691;
      *&buf[4] = v50;
      *&buf[12] = 2053;
      v246 = v51;
      v247 = 2082;
      v248 = v53;
      v249 = 2050;
      v250 = v54;
      v251 = 2050;
      *v252 = a4;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Got future,lat,%{sensitive}.7f,lon,%{sensitive}.7f,from provider,%{public}s,age,%{public}.3f,correcting to,%{public}.3f", buf, 0x34u);
      v12 = (a1 + 220);
    }

    if (sub_10000A100(121, 2))
    {
      v164 = v12;
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v165 = *(v10 + 100);
      v166 = *(v10 + 108);
      *v224 = &v223;
      v167 = sub_100109DF4(v221, &v223);
      v168 = v167 + 6;
      if (*(v167 + 71) < 0)
      {
        v168 = *v168;
      }

      v169 = a4 - *(v10 + 172);
      *v224 = 134546691;
      *&v224[4] = v165;
      v225 = 2053;
      v226 = v166;
      v227 = 2082;
      v228 = v168;
      v229 = 2050;
      v230 = v169;
      v231 = 2050;
      *v232 = a4;
      v170 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v170);
      if (v170 != buf)
      {
        free(v170);
      }

      v12 = v164;
    }

    *(v10 + 172) = a4;
    v48 = a4;
  }

  v55 = *(v10 + 184);
  if (v55 >= 0.0 && vabdd_f64(a4, v48) > v55)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v56 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v223;
      v57 = sub_100109DF4(v221, &v223);
      v58 = v57 + 6;
      if (*(v57 + 71) < 0)
      {
        v58 = *v58;
      }

      v59 = *(v10 + 100);
      v60 = *(v10 + 108);
      v61 = a4 - *(v10 + 172);
      v62 = *(v10 + 184);
      *buf = 136447235;
      *&buf[4] = v58;
      *&buf[12] = 2053;
      v246 = v59;
      v247 = 2053;
      v248 = v60;
      v249 = 2050;
      v250 = v61;
      v251 = 2050;
      *v252 = v62;
      _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "expiredLocation,provider,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,age,%{public}.3fs,lifespan,%{public}.1fs,(not throwing away)", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      *v224 = &v223;
      v175 = sub_100109DF4(v221, &v223);
      v176 = v175 + 6;
      if (*(v175 + 71) < 0)
      {
        v176 = *v176;
      }

      v177 = *(v10 + 100);
      v178 = *(v10 + 108);
      v179 = a4 - *(v10 + 172);
      v180 = *(v10 + 184);
      *v224 = 136447235;
      *&v224[4] = v176;
      v225 = 2053;
      v226 = v177;
      v227 = 2053;
      v228 = v178;
      v229 = 2050;
      v230 = v179;
      v231 = 2050;
      *v232 = v180;
      v181 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v181);
      if (v181 != buf)
      {
        free(v181);
      }
    }
  }

  if (*(v10 + 911) == 1)
  {
    v63 = (a1 + 224);
    if (!*v222 || *v222 != v223 && *(v17 + 180) <= *(v10 + 180) || (v64 = *(v17 + 184), v64 >= 0.0) && v64 + *(v17 + 172) < a4)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v65 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v223;
        v66 = sub_100109DF4(v221, &v223);
        v67 = v66 + 6;
        if (*(v66 + 71) < 0)
        {
          v67 = *v67;
        }

        v68 = *(a3 + 84);
        *buf = 136446466;
        *&buf[4] = v67;
        *&buf[12] = 1026;
        LODWORD(v246) = v68;
        _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "current most confident provider,%{public}s,conf,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        *v224 = &v223;
        v171 = sub_100109DF4(v221, &v223);
        v172 = v171 + 6;
        if (*(v171 + 71) < 0)
        {
          v172 = *v172;
        }

        v173 = *(a3 + 84);
        *v224 = 136446466;
        *&v224[4] = v172;
        v225 = 1026;
        LODWORD(v226) = v173;
        v174 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v174);
        if (v174 != buf)
        {
          free(v174);
        }
      }

      v63 = (a1 + 224);
      *v222 = v223;
      v17 = v10;
    }
  }

  else
  {
    v63 = (a1 + 224);
  }

  if (!*v12)
  {
    goto LABEL_179;
  }

  v69 = *(a1 + 344);
  if (v223 == v69 && v220)
  {
    goto LABEL_179;
  }

  if (v223 == *v12 || (v83 = *(v14 + 184), v83 >= 0.0) && a4 - *(v14 + 172) > v83)
  {
    if (v223 == *v63)
    {
      goto LABEL_179;
    }

    sub_1001097CC((a1 + 120), v10 + 96, v17 + 96);
    v71 = v70;
    v46 = 1;
    if (v70 > 5000.0)
    {
      v72 = v70 <= v22 * 4.0 || v70 <= v27 * 4.0;
      if (!v72 && v70 > (*(v10 + 172) - *(v17 + 172)) * 50.0 && *(v17 + 180) - *(v10 + 180) >= 5)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        v73 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          *buf = &v223;
          v74 = sub_100109DF4(v221, &v223);
          v75 = v74 + 6;
          if (*(v74 + 71) < 0)
          {
            v75 = *v75;
          }

          v76 = *(v10 + 100);
          v215 = *(v10 + 108);
          v217 = *(v10 + 180);
          *buf = a1 + 224;
          v77 = sub_100109DF4(v221, v222);
          v78 = v77 + 6;
          if (*(v77 + 71) < 0)
          {
            v78 = *v78;
          }

          v79 = *(v17 + 100);
          v80 = *(v17 + 108);
          v81 = *(v17 + 180);
          v82 = a4 - *(v17 + 172);
          *buf = 136449027;
          *&buf[4] = v75;
          *&buf[12] = 2053;
          v246 = v76;
          v247 = 2053;
          v248 = v215;
          v249 = 2050;
          v250 = v22;
          v251 = 1026;
          *v252 = v217;
          *&v252[4] = 2082;
          *&v252[6] = v78;
          v253 = 2053;
          v254 = v79;
          v255 = 2053;
          v256 = v80;
          v257 = 2050;
          v258 = v27;
          v259 = 1026;
          v260 = v81;
          v261 = 2050;
          v262 = v82;
          v263 = 2050;
          v264 = v71;
          _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,new,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with confident,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,age,%{public}.3f,distance,%{public}.2f,discarding", buf, 0x72u);
        }

        if (!sub_10000A100(121, 2))
        {
          v46 = 0;
          goto LABEL_180;
        }

        v218 = v12;
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        *v224 = &v223;
        v188 = sub_100109DF4(v221, &v223);
        v189 = v188 + 6;
        if (*(v188 + 71) < 0)
        {
          v189 = *v189;
        }

        v190 = *(v10 + 100);
        v191 = *(v10 + 108);
        v216 = *(v10 + 180);
        *v224 = a1 + 224;
        v192 = sub_100109DF4(v221, v222);
        v193 = v192 + 6;
        if (*(v192 + 71) < 0)
        {
          v193 = *v193;
        }

        v194 = *(v17 + 100);
        v195 = *(v17 + 108);
        v196 = *(v17 + 180);
        v197 = a4 - *(v17 + 172);
        *v224 = 136449027;
        *&v224[4] = v189;
        v225 = 2053;
        v226 = v190;
        v227 = 2053;
        v228 = v191;
        v229 = 2050;
        v230 = v22;
        v231 = 1026;
        *v232 = v216;
        *&v232[4] = 2082;
        *&v232[6] = v193;
        v233 = 2053;
        v234 = v194;
        v235 = 2053;
        v236 = v195;
        v237 = 2050;
        v238 = v27;
        v239 = 1026;
        v240 = v196;
        v241 = 2050;
        v242 = v197;
        v243 = 2050;
        v244 = v71;
        goto LABEL_354;
      }
    }
  }

  else
  {
    if (*(v10 + 180) > *(v14 + 180))
    {
      if (v223 != v69)
      {
        sub_1001097CC((a1 + 120), v10 + 96, v14 + 96);
        if (v22 > v32)
        {
          v85 = v84;
          if (v84 > 5000.0 && v84 > v22 * 4.0 && *(v10 + 180) - *(v14 + 180) >= 5)
          {
            if (qword_1025D4600 != -1)
            {
              sub_10022FB88();
            }

            v86 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
            {
              *buf = &v223;
              v87 = sub_100109DF4(v221, &v223);
              v88 = v87 + 6;
              if (*(v87 + 71) < 0)
              {
                v88 = *v88;
              }

              v89 = *(v10 + 100);
              v90 = *(v10 + 108);
              v91 = *(v10 + 180);
              *buf = v12;
              v92 = sub_100109DF4(v221, v12);
              v93 = v92 + 6;
              if (*(v92 + 71) < 0)
              {
                v93 = *v93;
              }

              v94 = *(v14 + 100);
              v95 = *(v14 + 108);
              v96 = *(v14 + 180);
              *buf = 136448771;
              *&buf[4] = v88;
              *&buf[12] = 2053;
              v246 = v89;
              v247 = 2053;
              v248 = v90;
              v249 = 2050;
              v250 = v22;
              v251 = 1026;
              *v252 = v91;
              *&v252[4] = 2082;
              *&v252[6] = v93;
              v253 = 2053;
              v254 = v94;
              v255 = 2053;
              v256 = v95;
              v257 = 2050;
              v258 = v32;
              v259 = 1026;
              v260 = v96;
              v261 = 2050;
              v262 = v85;
              _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,new,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with current,%{public}s lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,notifying", buf, 0x68u);
            }

            if (!sub_10000A100(121, 2))
            {
              v46 = 1;
              goto LABEL_180;
            }

            v218 = v12;
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_10022FB88();
            }

            *v224 = &v223;
            v204 = sub_100109DF4(v221, &v223);
            v205 = v204 + 6;
            if (*(v204 + 71) < 0)
            {
              v205 = *v205;
            }

            v206 = *(v10 + 100);
            v207 = *(v10 + 108);
            v208 = *(v10 + 180);
            *v224 = v12;
            v209 = sub_100109DF4(v221, v12);
            v210 = v209 + 6;
            if (*(v209 + 71) < 0)
            {
              v210 = *v210;
            }

            v211 = *(v14 + 100);
            v212 = *(v14 + 108);
            v213 = *(v14 + 180);
            *v224 = 136448771;
            *&v224[4] = v205;
            v225 = 2053;
            v226 = v206;
            v227 = 2053;
            v228 = v207;
            v229 = 2050;
            v230 = v22;
            v231 = 1026;
            *v232 = v208;
            *&v232[4] = 2082;
            *&v232[6] = v210;
            v233 = 2053;
            v234 = v211;
            v235 = 2053;
            v236 = v212;
            v237 = 2050;
            v238 = v32;
            v239 = 1026;
            v240 = v213;
            v241 = 2050;
            v242 = v85;
            v214 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v214);
            if (v214 != buf)
            {
              free(v214);
            }

            v46 = 1;
            goto LABEL_357;
          }

          if (qword_1025D4600 != -1)
          {
            sub_10022FB88();
          }

          v153 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = &v223;
            v154 = sub_100109DF4(v221, &v223);
            v155 = v154 + 6;
            if (*(v154 + 71) < 0)
            {
              v155 = *v155;
            }

            v156 = *(v10 + 100);
            v157 = *(v10 + 108);
            v158 = *(v10 + 180);
            *buf = v12;
            v159 = sub_100109DF4(v221, v12);
            v160 = v159 + 6;
            if (*(v159 + 71) < 0)
            {
              v160 = *v160;
            }

            v161 = *(v14 + 100);
            v162 = *(v14 + 108);
            v163 = *(v14 + 180);
            *buf = 136317699;
            *&buf[4] = v155;
            *&buf[12] = 2053;
            v246 = v156;
            v247 = 2053;
            v248 = v157;
            v249 = 2050;
            v250 = v22;
            v251 = 1026;
            *v252 = v158;
            *&v252[4] = 2082;
            *&v252[6] = v160;
            v253 = 2053;
            v254 = v161;
            v255 = 2053;
            v256 = v162;
            v257 = 2050;
            v258 = v32;
            v259 = 1026;
            v260 = v163;
            v261 = 2050;
            v262 = v85;
            _os_log_impl(dword_100000000, v153, OS_LOG_TYPE_DEBUG, "new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,coarser and agrees with current,%{public}s, lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding", buf, 0x68u);
          }

          if (!sub_10000A100(121, 2))
          {
LABEL_298:
            v46 = 0;
            goto LABEL_180;
          }

          v218 = v12;
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10022FB88();
          }

          *v224 = &v223;
          v198 = sub_100109DF4(v221, &v223);
          v131 = v198 + 6;
          if (*(v198 + 71) < 0)
          {
            v131 = *v131;
          }

          v132 = *(v10 + 100);
          v133 = *(v10 + 108);
          v134 = *(v10 + 180);
          *v224 = v12;
          v199 = sub_100109DF4(v221, v12);
          v136 = v199 + 6;
          if (*(v199 + 71) < 0)
          {
            v136 = *v136;
          }

          goto LABEL_353;
        }
      }

LABEL_179:
      v46 = 1;
      goto LABEL_180;
    }

    sub_1001097CC((a1 + 120), v10 + 96, v14 + 96);
    v85 = v118;
    if (v22 >= v32)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v137 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v223;
        v138 = sub_100109DF4(v221, &v223);
        v139 = v138 + 6;
        if (*(v138 + 71) < 0)
        {
          v139 = *v139;
        }

        v140 = *(v10 + 100);
        v141 = *(v10 + 108);
        v142 = *(v10 + 180);
        *buf = v12;
        v143 = sub_100109DF4(v221, v12);
        v144 = v143 + 6;
        if (*(v143 + 71) < 0)
        {
          v144 = *v144;
        }

        v145 = *(v14 + 100);
        v146 = *(v14 + 108);
        v147 = *(v14 + 180);
        *buf = 136317699;
        *&buf[4] = v139;
        *&buf[12] = 2053;
        v246 = v140;
        v247 = 2053;
        v248 = v141;
        v249 = 2050;
        v250 = v22;
        v251 = 1026;
        *v252 = v142;
        *&v252[4] = 2082;
        *&v252[6] = v144;
        v253 = 2053;
        v254 = v145;
        v255 = 2053;
        v256 = v146;
        v257 = 2050;
        v258 = v32;
        v259 = 1026;
        v260 = v147;
        v261 = 2050;
        v262 = v85;
        _os_log_impl(dword_100000000, v137, OS_LOG_TYPE_DEBUG, "new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,coarser than current,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_298;
      }

      v218 = v12;
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      *v224 = &v223;
      v148 = sub_100109DF4(v221, &v223);
      v131 = v148 + 6;
      if (*(v148 + 71) < 0)
      {
        v131 = *v131;
      }

      v132 = *(v10 + 100);
      v133 = *(v10 + 108);
      v134 = *(v10 + 180);
      *v224 = v12;
      v149 = sub_100109DF4(v221, v12);
      v136 = v149 + 6;
      if (*(v149 + 71) < 0)
      {
        v136 = *v136;
      }

LABEL_353:
      v200 = *(v14 + 100);
      v201 = *(v14 + 108);
      v202 = *(v14 + 180);
      *v224 = 136317699;
      *&v224[4] = v131;
      v225 = 2053;
      v226 = v132;
      v227 = 2053;
      v228 = v133;
      v229 = 2050;
      v230 = v22;
      v231 = 1026;
      *v232 = v134;
      *&v232[4] = 2082;
      *&v232[6] = v136;
      v233 = 2053;
      v234 = v200;
      v235 = 2053;
      v236 = v201;
      v237 = 2050;
      v238 = v32;
      v239 = 1026;
      v240 = v202;
      v241 = 2050;
      v242 = v85;
LABEL_354:
      v203 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v203);
      if (v203 != buf)
      {
        free(v203);
      }

      v46 = 0;
LABEL_357:
      v12 = v218;
      goto LABEL_180;
    }

    v46 = 1;
    if (v118 >= 5000.0 && v118 >= v32 * 4.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v119 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v223;
        v120 = sub_100109DF4(v221, &v223);
        v121 = v120 + 6;
        if (*(v120 + 71) < 0)
        {
          v121 = *v121;
        }

        v122 = *(v10 + 100);
        v123 = *(v10 + 108);
        v124 = *(v10 + 180);
        *buf = v12;
        v125 = sub_100109DF4(v221, v12);
        v126 = v125 + 6;
        if (*(v125 + 71) < 0)
        {
          v126 = *v126;
        }

        v127 = *(v14 + 100);
        v128 = *(v14 + 108);
        v129 = *(v14 + 180);
        *buf = 136317699;
        *&buf[4] = v121;
        *&buf[12] = 2053;
        v246 = v122;
        v247 = 2053;
        v248 = v123;
        v249 = 2050;
        v250 = v22;
        v251 = 1026;
        *v252 = v124;
        *&v252[4] = 2082;
        *&v252[6] = v126;
        v253 = 2053;
        v254 = v127;
        v255 = 2053;
        v256 = v128;
        v257 = 2050;
        v258 = v32;
        v259 = 1026;
        v260 = v129;
        v261 = 2050;
        v262 = v85;
        _os_log_impl(dword_100000000, v119, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with current,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_298;
      }

      v218 = v12;
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      *v224 = &v223;
      v130 = sub_100109DF4(v221, &v223);
      v131 = v130 + 6;
      if (*(v130 + 71) < 0)
      {
        v131 = *v131;
      }

      v132 = *(v10 + 100);
      v133 = *(v10 + 108);
      v134 = *(v10 + 180);
      *v224 = v12;
      v135 = sub_100109DF4(v221, v12);
      v136 = v135 + 6;
      if (*(v135 + 71) < 0)
      {
        v136 = *v136;
      }

      goto LABEL_353;
    }
  }

LABEL_180:
  if (*(v10 + 911) != 1)
  {
    return v46;
  }

  *(v10 + 910) = 0;
  v97 = *(v10 + 184);
  if (v97 < 0.0)
  {
    v98 = *(a1 + 664);
    v99 = 1.79769313e308;
LABEL_187:
    [v98 setNextFireDelay:v99];
    goto LABEL_188;
  }

  if (v14 == v9 || v97 > *(v14 + 184) - (a4 - *(v14 + 172)))
  {
    [*(a1 + 664) nextFireDelay];
    if (v100 != 1.79769313e308)
    {
      v98 = *(a1 + 664);
      v99 = *(v10 + 184) + 15.0;
      goto LABEL_187;
    }
  }

LABEL_188:
  v101 = *(v10 + 908);
  v102 = *(a1 + 160);
  if (v101 >= v102)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v103 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = v12;
      v104 = sub_100109DF4(v221, v12);
      v105 = v104 + 6;
      if (*(v104 + 71) < 0)
      {
        v105 = *v105;
      }

      *buf = 136446210;
      *&buf[4] = v105;
      _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "reached the granularity, stopping all providers finer than current,%{public}s ", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      *v224 = v12;
      v182 = sub_100109DF4(v221, v12);
      v183 = v182 + 6;
      if (*(v182 + 71) < 0)
      {
        v183 = *v183;
      }

      *v224 = 136446210;
      *&v224[4] = v183;
      v184 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v184);
      if (v184 != buf)
      {
        free(v184);
      }
    }

    sub_1001D3BE4(a1, (v10 + 908));
    LOBYTE(v101) = *(v10 + 908);
    LOBYTE(v102) = *(a1 + 160);
  }

  if (v101 > v102 || *(a1 + 216) != 1)
  {
LABEL_207:
    if (!v46)
    {
      return v46;
    }

    goto LABEL_208;
  }

  if (v223 == *(a1 + 344))
  {
    buf[0] = 5;
    if (sub_1001F1B94(a1, buf, (v220 | *(v219 + 516)) & 1))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v106 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v107 = *(v219 + 516);
        *buf = 67240448;
        *&buf[4] = v220;
        *&buf[8] = 1026;
        *&buf[10] = v107;
        _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_DEBUG, "got accessory,stopped everything less preferred,isShifted,%{public}d,isPropagatedSolution,%{public}d\n", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AAC178(v220, (v219 + 516));
      }
    }

    goto LABEL_207;
  }

  if (!v46)
  {
    return v46;
  }

  if (v223 == *(a1 + 336) && *(v10 + 192) == 9)
  {
    buf[0] = 0;
    if (sub_1001F1B94(a1, buf, 0))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v117 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEBUG, "stopped all providers below coarse gps", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AAC09C();
      }
    }
  }

  else if (sub_1001F1B94(a1, (v10 + 909), 0))
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v151 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v152 = *(v10 + 909);
      *buf = 67240192;
      *&buf[4] = v152;
      _os_log_impl(dword_100000000, v151, OS_LOG_TYPE_DEBUG, "stopped all providers below newIter %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AABFB0((v10 + 909));
    }
  }

LABEL_208:
  if (*v12 != v223)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v108 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (v10 == v9)
      {
        v109 = "(none)";
      }

      else
      {
        v109 = (v10 + 48);
        if (*(v10 + 71) < 0)
        {
          v109 = *v109;
        }
      }

      if (v14 == v9)
      {
        v150 = "(none)";
      }

      else
      {
        v150 = (v14 + 48);
        if (*(v14 + 71) < 0)
        {
          v150 = *v150;
        }
      }

      *buf = 136446466;
      *&buf[4] = v109;
      *&buf[12] = 2082;
      v246 = v150;
      _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_DEBUG, "changing to provider,%{public}s,from,%{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      if (v10 == v9)
      {
        v185 = "(none)";
      }

      else
      {
        v185 = (v10 + 48);
        if (*(v10 + 71) < 0)
        {
          v185 = *v185;
        }
      }

      if (v14 == v9)
      {
        v186 = "(none)";
      }

      else
      {
        v186 = (v14 + 48);
        if (*(v14 + 71) < 0)
        {
          v186 = *v186;
        }
      }

      *v224 = 136446466;
      *&v224[4] = v185;
      v225 = 2082;
      v226 = v186;
      v187 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v187);
      if (v187 != buf)
      {
        free(v187);
      }
    }

    *v12 = v223;
  }

  return 1;
}

void sub_1001D77F4(__int128 *a1, int64x2_t *a2)
{
  sub_1001DF618(a2, a1);
  v3 = a2[2].u64[1];
  if (v3 >= 5)
  {
    a2[2].i64[1] = v3 - 1;

    sub_1001E0254(a2, 1);
  }
}

uint64_t sub_1001D7858(uint64_t a1, _BYTE *a2)
{
  if (*a1 == 1)
  {
    if (*(a1 + 2) == 1)
    {
      v2 = *(a1 + 8);
      if (v2 <= 1000.0)
      {
        return 1;
      }

      else if (v2 > 5000.0 || v2 <= 1000.0)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else if (*a2 == 1 && (a2[2] & 1) != 0)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (*a2 == 1)
  {
    if (a2[2])
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D78F4@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v18);
  v2 = sub_100038730(&v19, "ll, ", 4);
  v3 = *v2;
  *(v2 + *(*v2 - 24) + 16) = 8;
  *(v2 + *(v3 - 24) + 8) = *(v2 + *(v3 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v4 = sub_100038730(&v19, ", ", 2);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 16) = 8;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v6 = sub_100038730(&v19, ", alt, ", 7);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 16) = 1;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v8 = sub_100038730(&v19, ", acc, ", 7);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 16) = 1;
  *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v10 = sub_100038730(&v19, ", vacc, ", 8);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 16) = 1;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v12 = sub_100038730(&v19, ", timestamp, ", 13);
  v13 = *v12;
  *(v12 + *(*v12 - 24) + 16) = 1;
  *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v14 = sub_100038730(&v19, ", age, ", 7);
  v15 = *v14;
  *(v14 + *(*v14 - 24) + 16) = 1;
  *(v14 + *(v15 - 24) + 8) = *(v14 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
  CFAbsoluteTimeGetCurrent();
  std::ostream::operator<<();
  sub_100038730(&v19, ", type, ", 8);
  std::ostream::operator<<();
  sub_100038730(&v19, ", lifespan, ", 12);
  std::ostream::operator<<();
  sub_100038730(&v19, ", confidence, ", 14);
  std::ostream::operator<<();
  sub_100038730(&v19, ", integrity, ", 13);
  std::ostream::operator<<();
  sub_100073518(v18, a1);
  v19 = v16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001D7E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1001D7EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CCA3C(a2, a2 + 160);
  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    sub_100072AFC(a2, __p);
    v6 = v58 >= 0 ? __p : __p[0];
    v7 = *(a2 + 476);
    v8 = *(a2 + 472);
    v9 = *(a2 + 128);
    v10 = *(a2 + 132);
    v11 = *(a1 + 108);
    *buf = 68290563;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v61 = 2085;
    v62 = v6;
    v63 = 1026;
    v64 = v9;
    v65 = 2050;
    v66 = v7;
    v67 = 1026;
    v68 = v8;
    v69 = 1026;
    v70 = v10;
    v71 = 2050;
    v72 = v11;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache, location,:%{sensitive, location:escape_only}s, integrity:%{public}d, undulation:%{public}f, undulationModel:%{public}d, referenceFrame:%{public}d, cacheTimestamp:%{public}.1f}", buf, 0x42u);
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a2 + 20) <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v16 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289026;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,drop,hunc invalid}";
LABEL_33:
    v19 = v16;
    v20 = 18;
LABEL_65:
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, v15, buf, v20);
    return;
  }

  v12 = (a2 + 96);
  if ((*(a2 + 96) & 0xFFFFFFF7) != 1 && *(a1 + 24) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 24);
      *buf = 68289282;
      *v60 = 0;
      *&v60[4] = 2082;
      *&v60[6] = "";
      v61 = 1026;
      LODWORD(v62) = v14;
      v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,drop,ignoring non-gps location assistance when airborne, IsAirborne:%{public}d}";
LABEL_64:
      v19 = v13;
      v20 = 24;
      goto LABEL_65;
    }

    return;
  }

  v17 = sub_1001D8750(a1, a2);
  if ((v17 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v16 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289026;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,drop,not valid for caching}";
    goto LABEL_33;
  }

  if (v4 > 60.0 || v4 < 0.0)
  {
    if (*(a2 + 20) < 500.0)
    {
      *(a2 + 20) = 0x407F400000000000;
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v21 = qword_1025D4658;
      v17 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (v17)
      {
        sub_100072AFC(a2, __p);
        v22 = v58 >= 0 ? __p : __p[0];
        *buf = 68289283;
        *v60 = 0;
        *&v60[4] = 2082;
        *&v60[6] = "";
        v61 = 2085;
        v62 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,adjust,hunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v23 = *(a2 + 36);
    if (v23 > 0.0 && v23 < 200.0)
    {
      *(a2 + 36) = 0x4069000000000000;
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v24 = qword_1025D4658;
      v17 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (v17)
      {
        sub_100072AFC(a2, __p);
        v25 = v58 >= 0 ? __p : __p[0];
        *buf = 68289283;
        *v60 = 0;
        *&v60[4] = 2082;
        *&v60[6] = "";
        v61 = 2085;
        v62 = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,adjust,vunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v18 = *v12;
  if (*v12 > 5)
  {
    if (v18 > 10)
    {
      if (v18 == 11)
      {
LABEL_72:
        sub_1001EBA08(a1, a2);
        goto LABEL_80;
      }

      if (v18 == 12 || v18 == 14)
      {
        goto LABEL_60;
      }

LABEL_80:
      if (v4 >= 0.0 && sub_1001D8CE8(v17, a2))
      {
        v37 = *(a2 + 16);
        *(a1 + 32) = *a2;
        *(a1 + 48) = v37;
        v38 = *(a2 + 32);
        v39 = *(a2 + 48);
        v40 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 64);
        *(a1 + 112) = v40;
        *(a1 + 64) = v38;
        *(a1 + 80) = v39;
        v41 = *(a2 + 96);
        v42 = *(a2 + 112);
        v43 = *(a2 + 128);
        *(a1 + 172) = *(a2 + 140);
        *(a1 + 144) = v42;
        *(a1 + 160) = v43;
        *(a1 + 128) = v41;
        memcpy((a1 + 192), (a2 + 160), 0x201uLL);
        v44 = *(a2 + 680);
        v45 = *(a2 + 688);
        if (v45)
        {
          atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 712) = v44;
        v46 = *(a1 + 720);
        *(a1 + 720) = v45;
        if (v46)
        {
          sub_100008080(v46);
        }

        v47 = *(a2 + 696);
        v48 = *(a2 + 728);
        *(a1 + 744) = *(a2 + 712);
        *(a1 + 760) = v48;
        *(a1 + 728) = v47;
        v49 = *(a2 + 744);
        v50 = *(a2 + 760);
        v51 = *(a2 + 776);
        *(a1 + 817) = *(a2 + 785);
        *(a1 + 792) = v50;
        *(a1 + 808) = v51;
        *(a1 + 776) = v49;
        if (qword_1025D4650 != -1)
        {
          sub_101AA95CC();
        }

        v52 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          sub_100072AFC(a2, __p);
          v53 = v58 >= 0 ? __p : __p[0];
          *buf = 68289283;
          *v60 = 0;
          *&v60[4] = 2082;
          *&v60[6] = "";
          v61 = 2085;
          v62 = v53;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,cached, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      return;
    }

    if (v18 == 6)
    {
      v29 = *(a2 + 16);
      *(a1 + 840) = *a2;
      *(a1 + 856) = v29;
      v30 = *(a2 + 32);
      v31 = *(a2 + 48);
      v32 = *(a2 + 80);
      *(a1 + 904) = *(a2 + 64);
      *(a1 + 920) = v32;
      *(a1 + 872) = v30;
      *(a1 + 888) = v31;
      v33 = *(a2 + 96);
      v34 = *(a2 + 112);
      v35 = *(a2 + 128);
      *(a1 + 980) = *(a2 + 140);
      *(a1 + 952) = v34;
      *(a1 + 968) = v35;
      *(a1 + 936) = v33;
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v36 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,updateReferenceLocationCache,cache,Cell location", buf, 2u);
      }

      v17 = sub_10000A100(121, 2);
      if (v17)
      {
        sub_101AA9630();
      }

      goto LABEL_80;
    }

    if (v18 != 9)
    {
      goto LABEL_80;
    }

LABEL_69:
    v27 = *(a2 + 76);
    v28 = (a1 + 1000);
    if (v27 - *(a1 + 1000) < 30.0 && *(a2 + 20) >= *(a1 + 52))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v54 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v55 = *v28;
        v56 = *v12;
        *buf = 134349312;
        *v60 = v55;
        *&v60[8] = 1026;
        *&v60[10] = v56;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,updateReferenceLocationCache,ignoring GPS location,lastGpsTime,%{public}.1lf,type,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA971C((a1 + 1000));
      }

      return;
    }

    *v28 = v27;
    goto LABEL_80;
  }

  if (v18 <= 2)
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        goto LABEL_60;
      }

      goto LABEL_80;
    }

    goto LABEL_69;
  }

  if (v18 == 3)
  {
    if (sub_1001CCA3C(a1 + 32, a1 + 192) < 900.0)
    {
      return;
    }

    goto LABEL_80;
  }

  if (v18 == 4)
  {
    goto LABEL_72;
  }

  if (v18 != 5)
  {
    goto LABEL_80;
  }

LABEL_60:
  if (qword_1025D4650 != -1)
  {
    sub_101AA95CC();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v26 = *v12;
    *buf = 68289282;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v61 = 1026;
    LODWORD(v62) = v26;
    v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,unsupported, locationType:%{public}d}";
    goto LABEL_64;
  }
}

uint64_t sub_1001D8750(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52) <= 0.0)
  {
    return 1;
  }

  result = sub_1001D8CE8(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = sub_1001CCA3C(a1 + 32, a1 + 192);
  v6 = (a2 + 20);
  v7 = *(a2 + 20);
  v8 = *(a2 + 36);
  if (v8 <= 0.0)
  {
    v10 = 1;
  }

  else
  {
    v9 = *(a1 + 68);
    v10 = v8 > v9;
    if (v9 <= 0.0)
    {
      v10 = 0;
    }
  }

  if (v7 >= *(a1 + 52))
  {
    v10 = 1;
  }

  if (v5 < 6.0 && v10)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v26 = v5;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,ignoring location as cache is fresh,age,%{public}.1lf", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AA995C(v5);
      return 0;
    }

    return result;
  }

  if (v7 <= 75000.0 || v5 >= 1800.0)
  {
    if (v8 <= 0.0 && *(a1 + 68) > 0.0 && v5 < 900.0)
    {
      sub_1001097CC((a1 + 1008), a2, a1 + 32);
      v20 = v19;
      if (v19 < 5000.0 || *(a2 + 20) > v19)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10025BA4C();
        }

        v21 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v22 = *v6;
          v23 = *(a1 + 68);
          *buf = 134349824;
          v26 = v22;
          v27 = 2050;
          v28 = v23;
          v29 = 2050;
          v30 = v5;
          v31 = 2050;
          v32 = v20;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,reject location,no altitude,Hunc,%{public}.1lf,cacheVunc,%{public}.1lf,cacheAge,%{public}.1lf,distance,%{public}.1lf", buf, 0x2Au);
        }

        result = sub_10000A100(121, 2);
        if (!result)
        {
          return result;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 == -1)
        {
LABEL_59:
          v24 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssRefLocationCache::isLocationValidForCaching(CLDaemonLocation &)", "%s\n", v24);
          if (v24 != buf)
          {
            free(v24);
          }

          return 0;
        }

LABEL_61:
        sub_101AA95CC();
        goto LABEL_59;
      }

      sub_100E63920(a1, a2);
    }

    v15 = *(a1 + 128);
    if ((v15 & 0xFFFFFFF7) != 1 && (v15 > 0xD || ((1 << v15) & 0x2C10) == 0) || *v6 <= 1000.0 || v5 >= 220.0)
    {

      return sub_1001D1DA4(a1, a2);
    }

    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 52);
      v18 = *(a1 + 128);
      *buf = 134349568;
      v26 = v17;
      v27 = 2050;
      v28 = v5;
      v29 = 1026;
      LODWORD(v30) = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,reject location,cache accurate,cacheHunc,%{public}.1lf,cacheAge,%{public}.1lf,type,%{public}d", buf, 0x1Cu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 == -1)
    {
      goto LABEL_59;
    }

    goto LABEL_61;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v13 = *v6;
    *buf = 134349312;
    v26 = v13;
    v27 = 2050;
    v28 = v5;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,reject location,large hunc,%{public}.1lf,cacheAge,%{public}.1lf", buf, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AA9838((a2 + 20), v5);
    return 0;
  }

  return result;
}

BOOL sub_1001D8CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 0.0 || v3 > 200000.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v11 = qword_1025D4658;
    result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v12 = *(a2 + 20);
      v16 = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      *v21 = v12;
      *&v21[8] = 2050;
      *&v21[10] = 0x41086A0000000000;
      v8 = "{msg%{public}.0s:#GnssRefLocationCache,Warning invalid assistance location, horizontalAccuracy:%{public}f, maximumAccuracy:%{public}f}";
      v9 = v11;
      v10 = 38;
      goto LABEL_14;
    }
  }

  else
  {
    v4 = (a2 + 4);
    v5 = (a2 + 12);
    if (sub_10002807C(*(a2 + 4), *(a2 + 12)) || fabs(*v4) > 90.0 || fabs(*v5) > 180.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10025BA4C();
      }

      v6 = qword_1025D4658;
      result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v16 = 68290050;
        v18 = 2082;
        v17 = 0;
        v19 = "";
        v20 = 1040;
        *v21 = LocationLogEncryptionDataSize();
        *&v21[4] = 2098;
        *&v21[6] = LocationLogEncryptionEncryptData();
        *&v21[14] = 1040;
        *&v21[16] = LocationLogEncryptionDataSize();
        v22 = 2098;
        v23 = LocationLogEncryptionEncryptData();
        v8 = "{msg%{public}.0s:#GnssRefLocationCache,Warning invalid assistance location,invalid coordinates, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P}";
        v9 = v6;
        v10 = 50;
LABEL_14:
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, v8, &v16, v10);
        return 0;
      }
    }

    else
    {
      if (*(a2 + 36) <= 0.0)
      {
        return 1;
      }

      v13 = *(a2 + 28);
      if (v13 >= -450.0 && v13 <= 8850.0)
      {
        return 1;
      }

      if (qword_1025D4650 != -1)
      {
        sub_10025BA4C();
      }

      v14 = qword_1025D4658;
      result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v15 = *(a2 + 28);
        v16 = 68289283;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2049;
        *v21 = v15;
        v8 = "{msg%{public}.0s:#GnssRefLocationCache,Warning invalid assistance location, altitude:%{private}.2f}";
        v9 = v14;
        v10 = 28;
        goto LABEL_14;
      }
    }
  }

  return result;
}

void sub_1001D8FE0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v8;
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(dword_100000000, v9, v10, "{msg%{public}.0s:#GnssAssistancePosition, Received location notification, notification:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v12;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_10;
    }
  }

  if (*a3 == 33)
  {
    *buf = 0xFFFF;
    *&buf[12] = 0;
    *&buf[4] = 0;
    *&buf[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&buf[36] = _Q0;
    *&buf[52] = _Q0;
    *&buf[68] = _Q0;
    *&buf[84] = 0;
    v52 = 0uLL;
    *&buf[88] = 0xBFF0000000000000;
    *(&v53 + 4) = 0xBFF0000000000000;
    LODWORD(v53) = 0;
    HIDWORD(v53) = 0x7FFFFFFF;
    memset(v54, 0, 25);
    sub_100021ED8(v55);
    v31 = *(a4 + 112);
    v52 = *(a4 + 96);
    v53 = v31;
    *v54 = *(a4 + 128);
    *&v54[12] = *(a4 + 140);
    v32 = *(a4 + 48);
    *&buf[32] = *(a4 + 32);
    *&buf[48] = v32;
    v33 = *(a4 + 80);
    *&buf[64] = *(a4 + 64);
    *&buf[80] = v33;
    v34 = *(a4 + 16);
    *buf = *a4;
    *&buf[16] = v34;
    memcpy(v55, (a4 + 160), 0x201uLL);
    v35 = *(a4 + 680);
    v36 = *(a4 + 688);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = v35;
    v37 = v57;
    v57 = v36;
    if (v37)
    {
      sub_100008080(v37);
    }

    v38 = *(a4 + 776);
    v62 = *(a4 + 760);
    v63[0] = v38;
    *(v63 + 9) = *(a4 + 785);
    v39 = *(a4 + 712);
    v58 = *(a4 + 696);
    v59 = v39;
    v40 = *(a4 + 744);
    v60 = *(a4 + 728);
    v61 = v40;
    if ((v52 == 11 || v52 == 4) && sub_100195800(a1, buf, a1 + 4844))
    {
      sub_1001EBD10(a1 + 72, buf, v55);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 11768);
      v43 = *(a1 + 1544);
      v44[0] = 68289538;
      v44[1] = 0;
      v45 = 2082;
      v46 = "";
      v47 = 1026;
      v48 = v42;
      v49 = 1026;
      v50 = v43;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,, fInEmergency:%{public}hhd, fPositionAssistanceRunning:%{public}hhd}", v44, 0x1Eu);
    }

    if ((*(a1 + 11768) & 1) != 0 || *(a1 + 1544) == 1)
    {
      sub_1001928D0(a1, buf, 1, 1);
    }
  }

  else
  {
    if (*a3 != 5)
    {
      return;
    }

    *buf = 0xFFFF;
    *&buf[12] = 0;
    *&buf[4] = 0;
    *&buf[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&buf[36] = _Q0;
    *&buf[52] = _Q0;
    *&buf[68] = _Q0;
    *&buf[84] = 0;
    v52 = 0uLL;
    *&buf[88] = 0xBFF0000000000000;
    *(&v53 + 4) = 0xBFF0000000000000;
    LODWORD(v53) = 0;
    HIDWORD(v53) = 0x7FFFFFFF;
    memset(v54, 0, 25);
    sub_100021ED8(v55);
    v18 = *(a4 + 112);
    v52 = *(a4 + 96);
    v53 = v18;
    *v54 = *(a4 + 128);
    *&v54[12] = *(a4 + 140);
    v19 = *(a4 + 48);
    *&buf[32] = *(a4 + 32);
    *&buf[48] = v19;
    v20 = *(a4 + 80);
    *&buf[64] = *(a4 + 64);
    *&buf[80] = v20;
    v21 = *(a4 + 16);
    *buf = *a4;
    *&buf[16] = v21;
    memcpy(v55, (a4 + 160), 0x201uLL);
    v22 = *(a4 + 680);
    v23 = *(a4 + 688);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = v22;
    v24 = v57;
    v57 = v23;
    if (v24)
    {
      sub_100008080(v24);
    }

    v25 = *(a4 + 776);
    v62 = *(a4 + 760);
    v63[0] = v25;
    *(v63 + 9) = *(a4 + 785);
    v26 = *(a4 + 712);
    v58 = *(a4 + 696);
    v59 = v26;
    v27 = *(a4 + 744);
    v60 = *(a4 + 728);
    v61 = v27;
    sub_1001928D0(a1, buf, 0, 1);
    v28 = *(a1 + 11776);
    if (v28 && sub_100226220(v28, a4) && *(a1 + 64))
    {
      v29 = sub_1003CCBA8(*(a1 + 11776));
      sub_1000B92AC(a1 + 40, v29);
    }
  }

  if (v57)
  {
    sub_100008080(v57);
  }
}

void sub_1001D94E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1001D953C(void *result)
{
  if (qword_102636C58 != result)
  {
    v1 = result;
    v2 = result[8];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[11];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[13];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[17];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[26];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[39];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

uint64_t sub_1001D968C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 368);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 368);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 368);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 368);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 52), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 112), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_73:
  v10 = *(v5 + 64);
  if (!v10)
  {
    v10 = *(qword_102636C58 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v10, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 72), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 80), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 84), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 113), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_80:
  v11 = *(v5 + 88);
  if (!v11)
  {
    v11 = *(qword_102636C58 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v11, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 96), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x12, a2, *(v5 + 100), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_85:
  v12 = *(v5 + 104);
  if (!v12)
  {
    v12 = *(qword_102636C58 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v12, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 120), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 128), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 116), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 114), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_95;
  }

LABEL_92:
  v13 = *(v5 + 136);
  if (!v13)
  {
    v13 = *(qword_102636C58 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v13, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 144), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 152), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 160), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 168), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 176), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_101:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1F, *(v5 + 115), a2, a4);
    if ((*(v5 + 368) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_102;
  }

LABEL_100:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 184), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_101;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_102:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 192), a3);
LABEL_33:
  v7 = *(v5 + 372);
  if (v7)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x21, a2, *(v5 + 200), a3);
    v7 = *(v5 + 372);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_105;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x22, *(v5 + 276), a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_108;
  }

LABEL_105:
  v14 = *(v5 + 208);
  if (!v14)
  {
    v14 = *(qword_102636C58 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v14, a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x24, a2, *(v5 + 216), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x25, *(v5 + 272), a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x26, a2, *(v5 + 224), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x27, a2, *(v5 + 232), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x28, a2, *(v5 + 240), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x29, a2, *(v5 + 248), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2A, a2, *(v5 + 256), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2B, *(v5 + 277), a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_116:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2C, a2, *(v5 + 264), a3);
  if ((*(v5 + 372) & 0x1000) != 0)
  {
LABEL_46:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2D, a2, *(v5 + 280), a3);
  }

LABEL_47:
  if (*(v5 + 296) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2E, *(*(v5 + 288) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 296));
  }

  v9 = *(v5 + 372);
  if ((v9 & 0x4000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x2F, *(v5 + 320), a2, a4);
    v9 = *(v5 + 372);
    if ((v9 & 0x8000) == 0)
    {
LABEL_52:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_122;
    }
  }

  else if ((v9 & 0x8000) == 0)
  {
    goto LABEL_52;
  }

  v15 = *(v5 + 312);
  if (!v15)
  {
    v15 = *(qword_102636C58 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x30, v15, a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x10000) == 0)
  {
LABEL_53:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x31, *(v5 + 324), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x20000) == 0)
  {
LABEL_54:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x32, a2, *(v5 + 328), a3);
  v9 = *(v5 + 372);
  if ((v9 & 0x40000) == 0)
  {
LABEL_55:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x33, a2, *(v5 + 336), a3);
  v9 = *(v5 + 372);
  if ((v9 & 0x80000) == 0)
  {
LABEL_56:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_126;
  }

LABEL_125:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x34, *(v5 + 344), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x100000) == 0)
  {
LABEL_57:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x35, *(v5 + 278), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x200000) == 0)
  {
LABEL_58:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_128;
  }

LABEL_127:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x36, *(v5 + 348), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x400000) == 0)
  {
LABEL_59:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x37, *(v5 + 352), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x800000) == 0)
  {
LABEL_60:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_130:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x39, *(v5 + 356), a2, a4);
    if ((*(v5 + 372) & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_131;
  }

LABEL_129:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x38, *(v5 + 279), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_130;
  }

LABEL_61:
  if ((v9 & 0x2000000) == 0)
  {
    return result;
  }

LABEL_131:
  v16 = *(v5 + 360);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3A, v16, a2, a4);
}

void sub_1001D9DA0(uint64_t *a1)
{
  sub_1001E0634(a1);

  operator delete();
}

void sub_1001D9DD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001D9E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8();
  sub_10000AED4(v4, v12);
  v11 = 0.0;
  if (sub_100125300(v12, &v11))
  {
    v5 = *(a2 + 96);
    if (v5 == 4 || v5 == 1)
    {
      v7 = *(a2 + 76) - v11;
      v8 = -6.0;
      if (*(a1 + 128) == 1)
      {
        v8 = *(a1 + 120);
      }

      if (v7 - v8 > 5.0)
      {
        *(a1 + 104) = v7;
        *(a1 + 112) = 1;
        v5 = *(a2 + 96);
      }

      if (v5 == 1)
      {
        *(a1 + 120) = v7;
        *(a1 + 128) = 1;
      }

      sub_1001E8A54(a1, v7);
      sub_1001E94EC(a1, a2, v7);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment, cannot compute machContinuousToCFAbsoluteOffset_s, discarding location sample", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DC624();
    }
  }
}

void *sub_1001D9F70(void *a1, void *a2, _OWORD *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 26 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1001F5958(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x1A));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 156 * (v11 % 0x1A);
    v15 = v14;
  }

  v30 = v13;
  v31 = v15;
  result = sub_1001DA180(&v30, a4);
  v17 = v31;
  if (v14 != v31)
  {
    v18 = v30;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4056;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = a3[1];
          *v20 = *a3;
          v20[1] = v21;
          v22 = a3[2];
          v23 = a3[3];
          v24 = a3[5];
          v20[4] = a3[4];
          v20[5] = v24;
          v20[2] = v22;
          v20[3] = v23;
          v25 = a3[6];
          v26 = a3[7];
          v27 = a3[8];
          *(v20 + 140) = *(a3 + 140);
          v20[7] = v26;
          v20[8] = v27;
          v20[6] = v25;
          a3 = (a3 + 156);
          if ((a3 - *a2) == 4056)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v20 = (v20 + 156);
        }

        while (v20 != v19);
      }

      a1[5] += 0x6F96F96F96F96F97 * ((v19 - v14) >> 2);
      if (v13 == v18)
      {
        break;
      }

      v29 = v13[1];
      ++v13;
      v14 = v29;
    }

    while (v29 != v17);
  }

  return result;
}

void *sub_1001DA11C(void *a1, void *a2, _OWORD *a3, void *a4, _OWORD *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) + 0x6F96F96F96F96F97 * ((a5 - *a4) >> 2) - 0x6F96F96F96F96F97 * ((a3 - *a2) >> 2);
  }

  return sub_1001D9F70(a1, a2, a3, v5);
}

void *sub_1001DA180(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6F96F96F96F96F97 * ((result[1] - **result) >> 2);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 156 * (26 * (v5 / 0x1A) - v5) + 3900;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 156 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t sub_1001DA234(uint64_t a1, uint64_t a2, char *a3)
{
  *a3 = 0;
  if (*(a1 + 2884))
  {
    if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
    {
      sub_100272FF0(a1);
    }

    v6 = (a2 + 96);
    if (sub_100208064(a1, *(a2 + 96)))
    {
      *(a1 + 2754) = 0;
      *(a1 + 2872) = 0;
      if (sub_100028030(a1 + 1160) && (*(a1 + 1283) & 1) == 0)
      {
        *(a1 + 1360) = *(a1 + 1232);
        *(a1 + 1376) = *(a1 + 1248);
        *(a1 + 1392) = *(a1 + 1264);
        *(a1 + 1408) = *(a1 + 1280);
        *(a1 + 1296) = *(a1 + 1168);
        *(a1 + 1312) = *(a1 + 1184);
        *(a1 + 1328) = *(a1 + 1200);
        *(a1 + 1344) = *(a1 + 1216);
      }

      sub_1001FB908(a1 + 1160);
      if (*(a2 + 20) <= 0.0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v17 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v18 = *(a2 + 76);
          v19 = sub_1001FD6E4(*(a2 + 96));
          sub_1001D78F4(__p);
          v20 = v98 >= 0 ? COERCE_DOUBLE(__p) : *__p;
          *buf = 134349571;
          *&buf[4] = v18;
          v113 = 2082;
          v114 = v19;
          v115 = 2085;
          v116 = v20;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#Error,timestamp,%{public}.3f,Invalid location update,hunc <= 0,type,%{public}s,inputLoc,%{sensitive}s", buf, 0x20u);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_42;
        }

        sub_101A7B5F4(buf);
        v73 = *(a2 + 76);
        v74 = sub_1001FD6E4(*(a2 + 96));
        sub_1001D78F4(v108);
        if (v111 >= 0)
        {
          v75 = COERCE_DOUBLE(v108);
        }

        else
        {
          v75 = *v108;
        }

        *__p = 134349571;
        *&__p[4] = v73;
        v96 = 2082;
        v97 = v74;
        v98 = 2085;
        v99 = v75;
        v14 = _os_log_send_and_compose_impl();
        if (v111 < 0)
        {
          operator delete(*v108);
        }

        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v14);
        goto LABEL_153;
      }

      if (!sub_100072814(a2) || sub_10002807C(*(a2 + 4), *(a2 + 12)))
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v7 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a2 + 76);
          v9 = sub_1001FD6E4(*(a2 + 96));
          sub_1001D78F4(__p);
          v10 = v98 >= 0 ? COERCE_DOUBLE(__p) : *__p;
          *buf = 134349571;
          *&buf[4] = v8;
          v113 = 2082;
          v114 = v9;
          v115 = 2085;
          v116 = v10;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#Warning,timestamp,%{public}.3f,Invalid location update,null island,type,%{public}s,inputLoc,%{sensitive}s", buf, 0x20u);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_42;
        }

        sub_101A7B5F4(buf);
        v11 = *(a2 + 76);
        v12 = sub_1001FD6E4(*(a2 + 96));
        sub_1001D78F4(v108);
        if (v111 >= 0)
        {
          v13 = COERCE_DOUBLE(v108);
        }

        else
        {
          v13 = *v108;
        }

        *__p = 134349571;
        *&__p[4] = v11;
        v96 = 2082;
        v97 = v12;
        v98 = 2085;
        v99 = v13;
        v14 = _os_log_send_and_compose_impl();
        if (v111 < 0)
        {
          operator delete(*v108);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v14);
LABEL_153:
        if (v14 != buf)
        {
          free(v14);
        }

LABEL_42:
        *a3 = 1;
        *(a1 + 1544) = 2;
        v21 = a1 + 3000;
        v22 = 2;
LABEL_43:
        sub_1002389A4(v21, v22);
        v16 = *a3;
        return v16 & 1;
      }

      if (sub_100072814(a1 + 16) && sub_1001FCBD4(a1 + 16, a2))
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v24 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v25 = *(a2 + 76);
          v26 = sub_1001FD6E4(*(a2 + 96));
          sub_1001D78F4(__p);
          v27 = SHIBYTE(v98);
          v28 = *__p;
          sub_1001D78F4(v108);
          v29 = COERCE_DOUBLE(__p);
          if (v27 < 0)
          {
            v29 = *&v28;
          }

          if (v111 >= 0)
          {
            v30 = COERCE_DOUBLE(v108);
          }

          else
          {
            v30 = *v108;
          }

          *buf = 134349827;
          *&buf[4] = v25;
          v113 = 2082;
          v114 = v26;
          v115 = 2085;
          v116 = v29;
          v117 = 2085;
          v118 = v30;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#fusion,location timestamp,%{public}.3f,ignoring duplicate location of type,%{public}s,newLoc,%{sensitive}s,oldLoc,%{sensitive}s", buf, 0x2Au);
          if (v111 < 0)
          {
            operator delete(*v108);
          }

          if (SHIBYTE(v98) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v80 = *(a2 + 76);
          v81 = sub_1001FD6E4(*(a2 + 96));
          sub_1001D78F4(v108);
          v82 = v111;
          v83 = *v108;
          sub_1001D78F4(v93);
          v84 = COERCE_DOUBLE(v108);
          if (v82 < 0)
          {
            v84 = *&v83;
          }

          if (v94 >= 0)
          {
            *&v85 = COERCE_DOUBLE(v93);
          }

          else
          {
            v85 = v93[0];
          }

          *__p = 134349827;
          *&__p[4] = v80;
          v96 = 2082;
          v97 = v81;
          v98 = 2085;
          v99 = v84;
          v100 = 2085;
          v101 = *&v85;
          v86 = _os_log_send_and_compose_impl();
          if (v94 < 0)
          {
            operator delete(v93[0]);
          }

          if (v111 < 0)
          {
            operator delete(*v108);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v86);
          if (v86 != buf)
          {
            free(v86);
          }
        }

        *a3 = 1;
        *(a1 + 1544) = 3;
        v21 = a1 + 3000;
        v22 = 3;
        goto LABEL_43;
      }

      if (*v6 == 10)
      {
        v31 = sub_10002F470();
        if (sub_100125258(a1 + 2424, v31, 6.0) || (v32 = sub_10002F470(), sub_1001252CC(a1 + 2424, v32, 6.0)))
        {
          if (qword_1025D4770 != -1)
          {
            sub_1002F97A8();
          }

          v33 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v34 = *(a2 + 76);
            sub_1001D78F4(buf);
            v35 = v115 >= 0 ? buf : *buf;
            *__p = 134349315;
            *&__p[4] = v34;
            v96 = 2085;
            v97 = v35;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#fusion,indoor location timestamp,%{public}.3f,ignored in driving/vehicular context,location,%{sensitive}s", __p, 0x16u);
            if (SHIBYTE(v115) < 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v77 = *(a2 + 76);
            sub_1001D78F4(__p);
            if (v98 >= 0)
            {
              v78 = __p;
            }

            else
            {
              v78 = *__p;
            }

            *v108 = 134349315;
            *&v108[4] = v77;
            v109 = 2085;
            v110 = v78;
            v79 = _os_log_send_and_compose_impl();
            if (SHIBYTE(v98) < 0)
            {
              operator delete(*__p);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v79);
            if (v79 != buf)
            {
              free(v79);
            }
          }

          *a3 = 1;
          *(a1 + 1544) = 13;
          v21 = a1 + 3000;
          v22 = 13;
          goto LABEL_43;
        }
      }

      if ((*(a1 + 2840) & 1) != 0 || *(a1 + 2904) != 1)
      {
LABEL_132:
        if ((*(a1 + 2840) & 1) != 0 || *(a1 + 2880) == 2)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v63 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "#fusion,processing buffered data on receiving a location notification after sleep notifications and before wake-up", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *__p = 0;
            v76 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v76);
            if (v76 != buf)
            {
              free(v76);
            }
          }

          sub_100D6CE60(a1, 1);
          sub_100857280(a1 + 2920, *(a1 + 2928));
          *(a1 + 2920) = a1 + 2928;
          *(a1 + 2928) = 0u;
          *(a1 + 2912) = sub_10002F470();
        }

        v64 = *(a2 + 16);
        *(a1 + 16) = *a2;
        *(a1 + 32) = v64;
        v65 = *(a2 + 32);
        v66 = *(a2 + 48);
        v67 = *(a2 + 80);
        *(a1 + 80) = *(a2 + 64);
        *(a1 + 96) = v67;
        *(a1 + 48) = v65;
        *(a1 + 64) = v66;
        v68 = *(a2 + 96);
        v69 = *(a2 + 112);
        v70 = *(a2 + 128);
        *(a1 + 156) = *(a2 + 140);
        *(a1 + 128) = v69;
        *(a1 + 144) = v70;
        *(a1 + 112) = v68;
        if (*(a2 + 36) > 0.0)
        {
          *(a1 + 2248) = *(a2 + 28);
        }

        v93[0] = 0;
        v93[1] = 0;
        v71 = sub_10002F470();
        sub_100125424(a1 + 2424, v71, 6.0);
        if (*v6 == 1)
        {
          sub_1002A4FB4();
        }

        sub_1001FCD94();
      }

      v36 = sub_10002F470();
      v37 = *(a1 + 2856);
      if (v37 > 0.0 || (v37 = *(a1 + 2864), v38 = -1.0, v37 > 0.0))
      {
        v38 = v36 - v37;
      }

      v39 = 2.0;
      if (*v6 <= 8 && ((1 << *v6) & 0x1D0) != 0)
      {
        v39 = 5.0;
        if ((sub_100681564(a1 + 2424, v36, -1.0) & 1) == 0)
        {
          v40 = *(a1 + 2448) - 1;
          if (v40 <= 9)
          {
            v39 = dbl_101CFC808[v40];
          }
        }
      }

      if ((*(a1 + 2856) >= 0.0 || *(a1 + 2864) >= 0.0) && v38 <= v39)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v41 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(a2 + 504);
          v43 = sub_1001FD6E4(*(a2 + 96));
          v44 = *(a1 + 2936);
          *buf = 134349826;
          *&buf[4] = v42;
          v113 = 2082;
          v114 = v43;
          v115 = 2050;
          v116 = v38;
          v117 = 2050;
          v118 = v44;
          _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#fusion,Location notification arrived while collecting buffered data,Loc_mct,%{public}.3f,loc_type,%{public}s,timeSinceWakeUp_s,%{public}.3f,enable roll-back to consume buffered data once ready,currentAOPDataBufferSize,%{public}zu", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v87 = *(a2 + 504);
          v88 = sub_1001FD6E4(*(a2 + 96));
          v89 = *(a1 + 2936);
          *__p = 134349826;
          *&__p[4] = v87;
          v96 = 2082;
          v97 = v88;
          v98 = 2050;
          v99 = v38;
          v100 = 2050;
          v101 = v89;
          v90 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v90);
          if (v90 != buf)
          {
            free(v90);
          }
        }

        for (i = *(a1 + 248); i; i = *i)
        {
          v46 = *(i + 209);
          if ((v46 & 0x80000000) != 0 || i[8] <= v46)
          {
            sub_1011699E4((i + 1));
          }
        }

        if (*(a1 + 1104))
        {
          v47 = *(a1 + 1084);
          if ((v47 & 0x80000000) != 0 || *(a1 + 312) <= v47)
          {
            sub_1011699E4(a1 + 256);
          }
        }

        if (!*(a1 + 248))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v48 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "#fusion,no hypothesis location as yet, processing buffered data on receiving a location notification", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *__p = 0;
            v92 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v92);
            if (v92 != buf)
            {
              free(v92);
            }
          }

          sub_100D6CE60(a1, 0);
        }

        goto LABEL_132;
      }

      if (v38 <= v39)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v61 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v62 = *(a1 + 2936);
          *buf = 134349056;
          *&buf[4] = v62;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "#fusion,no wakeup notification detected and not in sleep mode, processing buffered data on receiving a location notification,syncedBuffSize,%{public}zu", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_131;
        }

        sub_101A7B5F4(buf);
        v91 = *(a1 + 2936);
        *__p = 134349056;
        *&__p[4] = v91;
        v60 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v60);
        if (v60 == buf)
        {
          goto LABEL_131;
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v49 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v50 = *(a1 + 2856);
          v51 = *(a1 + 2864);
          v52 = *(a1 + 2936);
          v53 = *v6;
          sub_1001FCE40(a1 + 2424, __p);
          v54 = __p;
          if (v98 < 0)
          {
            v54 = *__p;
          }

          *buf = 134350594;
          *&buf[4] = v50;
          v113 = 2050;
          v114 = v51;
          v115 = 2050;
          v116 = v38;
          v117 = 2050;
          v118 = v39;
          v119 = 2050;
          v120 = v52;
          v121 = 1026;
          v122 = v53;
          v123 = 2082;
          v124 = v54;
          _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "#fusion,max leeway after wakeup reached,processing buffered data on receiving a location notification,wakeupTime_mct,%{public}.3f,%{public}.3f,dt_since_s,%{public}.1f,gatingThreshold_s,%{public}.1f,syncedBuffSize,%{public}zu,locType,%{public}d,MotionType,%{public}s", buf, 0x44u);
          if (SHIBYTE(v98) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_131;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v55 = *(a1 + 2856);
        v56 = *(a1 + 2864);
        v57 = *(a1 + 2936);
        v58 = *v6;
        sub_1001FCE40(a1 + 2424, v108);
        if (v111 >= 0)
        {
          v59 = v108;
        }

        else
        {
          v59 = *v108;
        }

        *__p = 134350594;
        *&__p[4] = v55;
        v96 = 2050;
        v97 = v56;
        v98 = 2050;
        v99 = v38;
        v100 = 2050;
        v101 = v39;
        v102 = 2050;
        v103 = v57;
        v104 = 1026;
        v105 = v58;
        v106 = 2082;
        v107 = v59;
        v60 = _os_log_send_and_compose_impl();
        if (v111 < 0)
        {
          operator delete(*v108);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v60);
        if (v60 == buf)
        {
          goto LABEL_131;
        }
      }

      free(v60);
LABEL_131:
      sub_100D6CE60(a1, 1);
      sub_100857280(a1 + 2920, *(a1 + 2928));
      *(a1 + 2920) = a1 + 2928;
      *(a1 + 2928) = 0u;
      *(a1 + 2904) = 0;
      *(a1 + 2912) = 0xBFF0000000000000;
      *(a1 + 2856) = 0xBFF0000000000000;
      *(a1 + 2864) = 0xBFF0000000000000;
      goto LABEL_132;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v15 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#Error,LC Fusion is not configured.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *__p = 0;
      v72 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v72);
      if (v72 != buf)
      {
        free(v72);
      }
    }
  }

  v16 = 0;
  return v16 & 1;
}

void sub_1001DD3AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1001DD3B8(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a4 = 0;
  *a3 = 0;
  v8 = sub_10000B1F8();
  *buf = 0;
  v9 = sub_10001A6B0(v8, buf);
  v10 = (a2 + 8);
  v11 = *(a2 + 8);
  v12 = v9 - v11;
  if (v9 - v11 < 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a2 + 16);
      v14 = *(a2 + 24);
      v16 = *(a2 + 32);
      v17 = sub_1001FD6E4(*(a2 + 124));
      v18 = *v10;
      v19 = sub_10000B1F8();
      v20 = sub_100125220(v19);
      *buf = 134350851;
      *&buf[4] = v15;
      v58 = 2053;
      v59 = v14;
      v60 = 2053;
      v61 = v16;
      v62 = 2082;
      v63 = v17;
      v64 = 2050;
      v65 = v12;
      v66 = 2050;
      v67 = v18;
      v68 = 2050;
      v69 = v9;
      v70 = 2050;
      v71 = v20;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning,Got location with future timestamp,mct,%{public}.3f,lat,%{sensitive}.7f,lon,%{sensitive}.7f,provider,%{public}s,age,%{public}.3f,timestampiOS,%{public}.3f,correcting to,%{public}.3f,propagation_us,%{public}.3f", buf, 0x52u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      sub_1001FD6E4(*(a2 + 124));
      v52 = sub_10000B1F8();
      sub_100125220(v52);
      v53 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::ageCheckLocation(LCFusionProviderLocation &, BOOL &, BOOL &)", "%s\n", v53);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    *v10 = v9;
    v21 = sub_10000B1F8();
    *buf = 1;
    *(a2 + 16) = sub_10001A6B0(v21, buf);
    return;
  }

  v22 = *(a1 + 2792);
  if (v22 && v22[1] == 1 && *v22 == 1 && v12 > 2.5 && *(a2 + 124) == 3)
  {
    goto LABEL_27;
  }

  v24 = *(a2 + 104);
  if (v12 > v24 && v24 >= 0.0 && v9 > v11)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v26 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a2 + 8);
      v28 = sub_1001FD6E4(*(a2 + 124));
      v29 = *(a2 + 24);
      v30 = *(a2 + 32);
      v31 = *(a2 + 104);
      v32 = sub_10000B1F8();
      v33 = sub_100125220(v32);
      *buf = 134350595;
      *&buf[4] = v27;
      v58 = 2082;
      v59 = v28;
      v60 = 2053;
      v61 = v29;
      v62 = 2053;
      v63 = v30;
      v64 = 2050;
      v65 = v31;
      v66 = 2050;
      v67 = v12;
      v68 = 2050;
      v69 = v33;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "#Warning,Got expiredLocation,timestamp_ios,%{public}.3f,provider,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,lifespan,%{public}.1f,age,%{public}.3f,propagation_us,%{public}.3f", buf, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      sub_1001FD6E4(*(a2 + 124));
      v54 = sub_10000B1F8();
      sub_100125220(v54);
      v55 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::ageCheckLocation(LCFusionProviderLocation &, BOOL &, BOOL &)", "%s\n", v55);
      if (v55 != buf)
      {
        free(v55);
      }
    }

    *a4 = 1;
    v34 = *v10;
    v35 = v10[1];
    v36 = v10[2];
    *(a1 + 1216) = v10[3];
    *(a1 + 1200) = v36;
    *(a1 + 1184) = v35;
    *(a1 + 1168) = v34;
    v37 = v10[4];
    v38 = v10[5];
    v39 = v10[6];
    *(a1 + 1280) = *(v10 + 14);
    *(a1 + 1264) = v39;
    *(a1 + 1248) = v38;
    *(a1 + 1232) = v37;
    return;
  }

  if (v12 > 900.0)
  {
LABEL_27:
    *a3 = 1;
    v40 = 4;
LABEL_28:
    *(a1 + 1544) = v40;
  }

  else if (v12 >= 2.0)
  {
    v41 = *(a1 + 208);
    v42 = (a2 + 124);
    *buf = a2 + 124;
    v43 = sub_1001FBADC(v41, (a2 + 124)) + 5;
    while (1)
    {
      v43 = *v43;
      v44 = *(a1 + 208);
      *buf = a2 + 124;
      sub_1001FBADC(v44, (a2 + 124));
      if (!v43)
      {
        break;
      }

      v45 = v43[1];
      if (v45 && (*(*v45 + 16))(v45, a2))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v46 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v47 = *v10;
          v48 = sub_1001FD6E4(*v42);
          v49 = *(a2 + 24);
          v50 = *(a2 + 32);
          v51 = *(a2 + 104);
          *buf = 134350339;
          *&buf[4] = v47;
          v58 = 2082;
          v59 = v48;
          v60 = 2053;
          v61 = v49;
          v62 = 2053;
          v63 = v50;
          v64 = 2050;
          v65 = v51;
          v66 = 2050;
          v67 = v12;
          _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "Duplicate location detected in LC Fusion,timestamp_ios,%{public}.3f,provider,%{public}s,lat,%{sensitive}.7f,lon,%{sensitive}.7f,lifespan,%{public}.1f,age,%{public}.3f", buf, 0x3Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          sub_1001FD6E4(*v42);
          v56 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::ageCheckLocation(LCFusionProviderLocation &, BOOL &, BOOL &)", "%s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }

        *a3 = 1;
        v40 = 3;
        goto LABEL_28;
      }
    }
  }
}

void sub_1001DDB40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001DDB50(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  sub_1001FB908(a1 + 1160);
  v198 = a3;
  *a3 = 0;
  *(a1 + 1544) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v200 = _Q0;
  if (!(_NF ^ _VF | _ZF))
  {
    v10 = sub_10000B1F8();
    *buf = 1;
    if (vabdd_f64(sub_10001A6B0(v10, buf), *(a1 + 200)) > 40.0)
    {
      *(a1 + 175) = 0;
      *(a1 + 184) = v200;
    }
  }

  if (*(a1 + 2800) == 1 && (*(*a2 + 124) - 6) >= 3)
  {
    v11 = sub_100109D18((a1 + 2384), *(*a2 + 24), *(*a2 + 32), *(a1 + 2808), *(a1 + 2816), *(a1 + 2248));
    v12 = *(a1 + 2824);
    v13 = 0.0;
    if (v12 > 0.0)
    {
      v14 = sub_10000B1F8();
      *buf = 1;
      v15 = sub_10001A6B0(v14, buf);
      v12 = *(a1 + 2824);
      v13 = v15 - v12;
    }

    if (v11 > 600.0 && (v12 < 0.0 || v13 > 60.0) && sub_10025BC08(a1))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v16 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
      {
        v17 = sub_10002F470();
        v18 = *(*a1 + 24);
        v19 = *(a1 + 2824);
        v20 = *(a1 + 2808);
        v21 = *(a1 + 2816);
        *buf = 134350593;
        *&buf[4] = v17;
        *&buf[12] = 2050;
        *&buf[14] = v18;
        *&buf[22] = 2050;
        *&buf[24] = v19;
        *&buf[32] = 2050;
        *&buf[34] = v13;
        *&buf[42] = 2050;
        *&buf[44] = v11;
        *&buf[52] = 2053;
        *&buf[54] = v20;
        *&buf[62] = 2053;
        *&buf[64] = v21;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#fusion,Overrides WiFi Service AP Associated state,now_mct,%{public}.3f,time received associated state,%{public}.3f,time last APWiFiFix seen,%{public}.3f,elapsedTime,%{public}.3f,distance user moved away,%{public}.2f,AP WiFi approx location LL deg,%{sensitive}.7f,%{sensitive}.7f", buf, 0x48u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v148 = sub_10002F470();
        v149 = *(*a1 + 24);
        v150 = *(a1 + 2824);
        v151 = *(a1 + 2808);
        v152 = *(a1 + 2816);
        *v234 = 134350593;
        *&v234[4] = v148;
        *&v234[12] = 2050;
        *&v234[14] = v149;
        *&v234[22] = 2050;
        *&v234[24] = v150;
        *&v234[32] = 2050;
        *&v234[34] = v13;
        *&v234[42] = 2050;
        *&v234[44] = v11;
        *&v234[52] = 2053;
        *&v234[54] = v151;
        *&v234[62] = 2053;
        *&v234[64] = v152;
        v153 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v153);
        if (v153 != buf)
        {
          free(v153);
        }
      }

      *(a1 + 2800) = 0;
    }
  }

  v22 = (*a2 + 16);
  *(a1 + 200) = *v22;
  sub_1001FBBCC(a1, v22);
  v23 = *(a1 + 2792);
  if (!v23 || v23[1] != 1 || *v23 != 1)
  {
    goto LABEL_26;
  }

  v24 = a2[1];
  v229[0] = *a2;
  v229[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = sub_100D6EE20(a1, v229);
  if (v24)
  {
    sub_100008080(v24);
  }

  if ((v25 & 1) == 0)
  {
    result = 1;
    *a3 = 1;
  }

  else
  {
LABEL_26:
    v220 = v200;
    v221 = xmmword_101C75BF0;
    v222 = xmmword_101C75BF0;
    v223 = v200;
    v224 = v200;
    v219 = off_1024DE5F8;
    v225 = 0xBFF0000000000000;
    v227 = 0;
    v226 = 0;
    v228 = 0;
    v27 = *a2;
    v26 = a2[1];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v217 = v27;
    v218 = v26;
    if (*(a1 + 182))
    {
      *buf = *a2 + 124;
      if (!*(sub_10030B63C(a1 + 224, *buf) + 220))
      {
        *buf = *a2 + 124;
        v28 = sub_10030B63C(a1 + 224, *buf);
        sub_101168DA4((v28 + 5), *(*a2 + 124));
        *buf = *a2 + 124;
        *(sub_10030B63C(a1 + 224, *buf) + 148) = *(a1 + 2448);
      }

      *buf = *a2 + 124;
      v29 = sub_10030B63C(a1 + 224, *buf);
      sub_100204720((v29 + 5), &v217);
    }

    v197 = sub_100202484(a1, &v217);
    if (v197)
    {
      sub_10021003C(a1);
      sub_100210238(a1, *a2);
      for (i = *(a1 + 248); i; i = *i)
      {
        if (*(i + 214) && (v31 = i[8]) != 0 && (*(*(i[4] + 8 * ((v31 + i[7] - 1) / 0x1AuLL)) + 152 * ((v31 + i[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
        {
          v202 = off_1024DE5F8;
          v203 = v200;
          v206 = xmmword_101C75BF0;
          v207 = xmmword_101C75BF0;
          v208 = v200;
          v209 = v200;
          v210 = 0xBFF0000000000000;
          v211 = 0;
          v212 = 0;
          if (!sub_10002A8E4((i + 25), &v202))
          {
            continue;
          }

          v32 = i[8] + i[7] - 1;
          sub_1012E8F84(&v202, *(i[4] + 8 * (v32 / 0x1A)) + 152 * (v32 % 0x1A) + 16);
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v33 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
          {
            v34 = *(i + 212);
            v35 = v203;
            v36 = sub_1001FD6E4(v212);
            v37 = sub_1000291EC((i + 1), &v203 + 1);
            v38 = sub_1001FD6E4(v37);
            v39 = i[102];
            v40 = i[1];
            v41 = *(i + 214);
            *buf = 67245315;
            *&buf[4] = v34;
            *&buf[8] = 2050;
            *&buf[10] = v35;
            *&buf[18] = 2050;
            *&buf[20] = *(&v35 + 1);
            *&buf[28] = 2082;
            *&buf[30] = v36;
            *&buf[38] = 2082;
            *&buf[40] = v38;
            *&buf[48] = 2053;
            *&buf[50] = v204;
            *&buf[58] = 2053;
            *&buf[60] = v205;
            *&buf[68] = 2049;
            *&buf[70] = *(&v206 + 1);
            *&buf[78] = 2049;
            *&buf[80] = v208;
            *&buf[88] = 2049;
            *&buf[90] = v209;
            *&buf[98] = 2050;
            *&buf[100] = v206;
            *&buf[108] = 2050;
            *&buf[110] = v207;
            *&buf[118] = 2050;
            *&buf[120] = *(&v208 + 1);
            *&buf[128] = 2050;
            *&buf[130] = *(&v209 + 1);
            *&buf[138] = 1026;
            *&buf[140] = v211;
            *v258 = 2050;
            *&v258[2] = v210;
            v259 = 1026;
            v260 = BYTE4(v211);
            v261 = 1026;
            v262 = BYTE5(v211);
            v263 = 2050;
            *v264 = v39;
            *&v264[8] = 2050;
            v265 = v40;
            *v266 = 1026;
            *&v266[2] = v41;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "#fusion hypothesis,%{public}d,%{public}.3f,%{public}.3f,%{public}s,%{public}s,%{sensitive}.7f,%{sensitive}.7f,%{private}.1f,%{private}.2f,%{private}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}d,%{public}.2f,%{public}d,%{public}d,%{public}.3f,%{public}.3f,%{public}d", buf, 0xC0u);
          }

          if (!sub_10000A100(121, 2))
          {
            continue;
          }

          sub_101A7B5F4(buf);
          v42 = *(i + 212);
          v44 = *(&v203 + 1);
          v43 = v203;
          v45 = sub_1001FD6E4(v212);
          v46 = sub_1000291EC((i + 1), &v203 + 1);
          v47 = sub_1001FD6E4(v46);
          v48 = i[102];
          v49 = i[1];
          v50 = *(i + 214);
          *v234 = 67245315;
          *&v234[4] = v42;
          *&v234[8] = 2050;
          *&v234[10] = v43;
          *&v234[18] = 2050;
          *&v234[20] = v44;
          *&v234[28] = 2082;
          *&v234[30] = v45;
          *&v234[38] = 2082;
          *&v234[40] = v47;
          *&v234[48] = 2053;
          *&v234[50] = v204;
          *&v234[58] = 2053;
          *&v234[60] = v205;
          *&v234[68] = 2049;
          *&v234[70] = *(&v206 + 1);
          *&v234[78] = 2049;
          *&v234[80] = v208;
          *&v234[88] = 2049;
          *&v234[90] = v209;
          *&v234[98] = 2050;
          *&v234[100] = v206;
          *&v234[108] = 2050;
          *&v234[110] = v207;
          *&v234[118] = 2050;
          *&v234[120] = *(&v208 + 1);
          *&v234[128] = 2050;
          *&v234[130] = *(&v209 + 1);
          *&v234[138] = 1026;
          *&v234[140] = v211;
          *v235 = 2050;
          *&v235[2] = v210;
          v236 = 1026;
          v237 = BYTE4(v211);
          v238 = 1026;
          v239 = BYTE5(v211);
          v240 = 2050;
          *v241 = v48;
          *&v241[8] = 2050;
          v242 = v49;
          *v243 = 1026;
          *&v243[2] = v50;
          v51 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v51);
        }

        else
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v52 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
          {
            v53 = i[8];
            v54 = v53 == 0;
            if (v53)
            {
              LODWORD(v53) = *(*(i[4] + 8 * ((v53 + i[7] - 1) / 0x1AuLL)) + 152 * ((v53 + i[7] - 1) % 0x1AuLL) + 148);
            }

            v55 = *(i + 212);
            *buf = 67240704;
            *&buf[4] = v55;
            *&buf[8] = 1026;
            *&buf[10] = v54;
            *&buf[14] = 1026;
            *&buf[16] = v53;
            _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "#fusion,Invalid hypothesis,hID,%{public}d,bufferEmpty,%{public}d,fused,%{public}d", buf, 0x14u);
          }

          if (!sub_10000A100(121, 2))
          {
            continue;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v56 = *(i + 212);
          v57 = i[8];
          v58 = v57 == 0;
          if (v57)
          {
            LODWORD(v57) = *(*(i[4] + 8 * ((v57 + i[7] - 1) / 0x1AuLL)) + 152 * ((v57 + i[7] - 1) % 0x1AuLL) + 148);
          }

          *v234 = 67240704;
          *&v234[4] = v56;
          *&v234[8] = 1026;
          *&v234[10] = v58;
          *&v234[14] = 1026;
          *&v234[16] = v57;
          v51 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v51);
        }

        if (v51 != buf)
        {
          free(v51);
        }
      }

      v59 = *(a1 + 2792);
      if (!v59 || (v59[1] & 1) == 0 || (*v59 & 1) == 0)
      {
        sub_1001FDF20(a1, *a2);
      }

      sub_100211EF8(a1);
      if ((*(a1 + 2904) & 1) == 0)
      {
        sub_100215BE4(a1);
      }

      *v198 = 1;
      if (*(a1 + 173) == 1)
      {
        if (*(a1 + 172) == 1)
        {
          v60 = *(a1 + 208);
          *buf = *a2 + 124;
          v61 = *(sub_1001FBADC(v60, *buf)[5] + 8);
          v62 = *(v61 + 88);
          v63 = *(v61 + 104);
          v64 = *(v61 + 120);
          *(a1 + 1232) = *(v61 + 72);
          *(a1 + 1280) = v64;
          *(a1 + 1264) = v63;
          *(a1 + 1248) = v62;
          v65 = *(v61 + 8);
          v66 = *(v61 + 24);
          v67 = *(v61 + 40);
          *(a1 + 1216) = *(v61 + 56);
          *(a1 + 1200) = v67;
          *(a1 + 1184) = v66;
          *(a1 + 1168) = v65;
          *v198 = 0;
        }

        else
        {
          *(a1 + 1544) = 1;
        }
      }

      else
      {
        if (sub_10020AB5C(a1, *a2))
        {
          *v198 = 0;
          *(a1 + 1283) = *(*a2 + 123);
          v68 = sub_10000B1F8();
          *buf = 0;
          v216 = sub_10001A6B0(v68, buf) - *(a1 + 1168);
          v69 = *(a1 + 248);
          if (v69)
          {
            v70 = 0;
            do
            {
              ++v70;
              v69 = *v69;
            }

            while (v69);
          }

          else
          {
            v70 = 0;
          }

          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v72 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
          {
            v73 = *(a1 + 1184);
            v74 = *(a1 + 1192);
            v75 = *(a1 + 1200);
            v76 = *(a1 + 1284);
            v77 = sub_1001FD6E4(v76);
            v78 = *(a1 + 1232);
            v79 = *(a1 + 1248);
            v159 = *(a1 + 1276);
            v161 = *(a1 + 1264);
            v163 = *(a1 + 1168);
            v165 = v216;
            v167 = *(a1 + 1208);
            v169 = *(a1 + 1216);
            v171 = *(a1 + 1240);
            v173 = *(a1 + 1256);
            v175 = *(a1 + 1176);
            v177 = *(a1 + 1280);
            v179 = *(a1 + 2800);
            v181 = *(a1 + 2778);
            v183 = *(a1 + 175);
            v185 = *(a1 + 2448);
            v80 = *(a1 + 2168);
            v191 = *(v80 + 560);
            v187 = *(v80 + 568);
            v189 = *(a1 + 112);
            v193 = *(a1 + 2880);
            v195 = *(a1 + 1281);
            v199 = *(a1 + 1283);
            v81 = sub_10000B1F8();
            v82 = sub_100125220(v81);
            *buf = 134552835;
            *&buf[4] = v73;
            *&buf[12] = 2053;
            *&buf[14] = v74;
            *&buf[22] = 2050;
            *&buf[24] = v75;
            *&buf[32] = 1026;
            *&buf[34] = v76;
            *&buf[38] = 2082;
            *&buf[40] = v77;
            *&buf[48] = 2049;
            *&buf[50] = v78;
            *&buf[58] = 2049;
            *&buf[60] = v79;
            *&buf[68] = 1026;
            *&buf[70] = v159;
            *&buf[74] = 2050;
            *&buf[76] = v161;
            *&buf[84] = 2050;
            *&buf[86] = v163;
            *&buf[94] = 2050;
            *&buf[96] = v165;
            *&buf[104] = 2049;
            *&buf[106] = v167;
            *&buf[114] = 2050;
            *&buf[116] = v169;
            *&buf[124] = 2050;
            *&buf[126] = v171;
            *&buf[134] = 2050;
            *&buf[136] = v173;
            *v258 = 2050;
            *&v258[2] = v175;
            v259 = 1026;
            v260 = v177;
            v261 = 1026;
            v262 = v179;
            v263 = 1026;
            *v264 = v181;
            *&v264[4] = 1026;
            *&v264[6] = v183;
            LOWORD(v265) = 1026;
            *(&v265 + 2) = v185;
            HIWORD(v265) = 1026;
            *v266 = v187;
            *&v266[4] = 2050;
            v267 = v191;
            v268 = 1026;
            v269 = v189;
            v270 = 1026;
            v271 = v70;
            v272 = 1026;
            v273 = v193;
            v274 = 1026;
            v275 = v195;
            v276 = 1026;
            v277 = v199;
            v278 = 2050;
            v279 = v82;
            _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEFAULT, "CL-fusion,Pos,0,%{sensitive}.7f,%{sensitive}.7f,Accuracy,%{public}.3f,Type,%{public}d,%{public}s,Speed,%{private}.2f,Course,%{private}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.1f,AltitudeAccuracy,%{public}.1f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampMCT,%{public}.3f,fixIsWiFiAP,%{public}d,linkIsAssociated,%{public}d,inVisit,%{public}d,isPassthrough,%{public}d,dynamicsMode,%{public}d,IO_Context,%{public}d,IO_mct,%{public}.3f,origProviderType,%{public}d,numHypothesis,%{public}d,FusionExeState,%{public}d,CourseAided,%{public}d,IsWSBFix,%{public}d,propagation_us,%{public}.3f", buf, 0xF0u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v137 = *(a1 + 1184);
            v138 = *(a1 + 1192);
            v139 = *(a1 + 1200);
            v140 = *(a1 + 1284);
            v141 = sub_1001FD6E4(v140);
            v142 = *(a1 + 1232);
            v143 = *(a1 + 1248);
            v158 = *(a1 + 1276);
            v160 = *(a1 + 1264);
            v162 = *(a1 + 1168);
            v164 = v216;
            v166 = *(a1 + 1208);
            v168 = *(a1 + 1216);
            v170 = *(a1 + 1240);
            v172 = *(a1 + 1256);
            v174 = *(a1 + 1176);
            v176 = *(a1 + 1280);
            v178 = *(a1 + 2800);
            v180 = *(a1 + 2778);
            v182 = *(a1 + 175);
            v184 = *(a1 + 2448);
            v144 = *(a1 + 2168);
            v190 = *(v144 + 560);
            v186 = *(v144 + 568);
            v188 = *(a1 + 112);
            v192 = *(a1 + 2880);
            v194 = *(a1 + 1281);
            v196 = *(a1 + 1283);
            v145 = sub_10000B1F8();
            v146 = sub_100125220(v145);
            *v234 = 134552835;
            *&v234[4] = v137;
            *&v234[12] = 2053;
            *&v234[14] = v138;
            *&v234[22] = 2050;
            *&v234[24] = v139;
            *&v234[32] = 1026;
            *&v234[34] = v140;
            *&v234[38] = 2082;
            *&v234[40] = v141;
            *&v234[48] = 2049;
            *&v234[50] = v142;
            *&v234[58] = 2049;
            *&v234[60] = v143;
            *&v234[68] = 1026;
            *&v234[70] = v158;
            *&v234[74] = 2050;
            *&v234[76] = v160;
            *&v234[84] = 2050;
            *&v234[86] = v162;
            *&v234[94] = 2050;
            *&v234[96] = v164;
            *&v234[104] = 2049;
            *&v234[106] = v166;
            *&v234[114] = 2050;
            *&v234[116] = v168;
            *&v234[124] = 2050;
            *&v234[126] = v170;
            *&v234[134] = 2050;
            *&v234[136] = v172;
            *v235 = 2050;
            *&v235[2] = v174;
            v236 = 1026;
            v237 = v176;
            v238 = 1026;
            v239 = v178;
            v240 = 1026;
            *v241 = v180;
            *&v241[4] = 1026;
            *&v241[6] = v182;
            LOWORD(v242) = 1026;
            *(&v242 + 2) = v184;
            HIWORD(v242) = 1026;
            *v243 = v186;
            *&v243[4] = 2050;
            v244 = v190;
            v245 = 1026;
            v246 = v188;
            v247 = 1026;
            v248 = v70;
            v249 = 1026;
            v250 = v192;
            v251 = 1026;
            v252 = v194;
            v253 = 1026;
            v254 = v196;
            v255 = 2050;
            v256 = v146;
            v147 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v147);
            if (v147 != buf)
            {
              free(v147);
            }
          }

          if (*(a1 + 1104))
          {
            *(a1 + 1044) = 2020;
          }

          v83 = *(a1 + 808);
          v84 = *(a1 + 2904);
          if (v84 & 1) != 0 || (*(a1 + 1283))
          {
            if ((*(a1 + 1284) - 6) >= 3)
            {
              *&v234[12] = 0;
              *&v234[4] = 0;
              *&v234[20] = xmmword_101C75BF0;
              *&v234[36] = v200;
              *&v234[52] = v200;
              *&v234[68] = v200;
              *v234 = 0xFFFF;
              *&v234[84] = 0;
              *&v234[88] = 0xBFF0000000000000;
              memset(&v234[96], 0, 20);
              *&v234[116] = 0xBFF0000000000000;
              *&v234[124] = 0x7FFFFFFF;
              *v235 = 0;
              *&v234[128] = 0;
              *&v234[136] = 0;
              v235[8] = 0;
              if ((v84 & 1) == 0)
              {
                if (sub_10002790C(a1 + 1160, v234))
                {
                  *&v234[132] = 1;
                  *&v234[88] = 0x4008000000000000;
                  sub_10002D644(&v202, v234, *(a1 + 1176));
                  v213 = 0xBFF0000000000000;
                  v214 = 1;
                  v215 = v83;
                  if (qword_1025D4770 != -1)
                  {
                    sub_100224830();
                  }

                  v85 = qword_1025D4778;
                  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                  {
                    v86 = *(a1 + 1176);
                    v87 = *(a1 + 1200);
                    *buf = 134349312;
                    *&buf[4] = v86;
                    *&buf[12] = 2050;
                    *&buf[14] = v87;
                    _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,pushing location to output buffer (non-cell) at MCT %{public}.3f sec (hunc: %{public}.3f)", buf, 0x16u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101A7B5F4(buf);
                    v155 = *(a1 + 1176);
                    v156 = *(a1 + 1200);
                    v230 = 134349312;
                    v231 = v155;
                    v232 = 2050;
                    v233 = v156;
                    v157 = _os_log_send_and_compose_impl();
                    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v157);
                    if (v157 != buf)
                    {
                      free(v157);
                    }
                  }

                  sub_100D6C864(a1 + 2960);
                  if (*(a1 + 1283) == 1)
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v88 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v89 = *(a1 + 1176);
                      *buf = 134349056;
                      *&buf[4] = v89;
                      _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,forwarding filtered WSB location to output buffer at MCT %{public}.3f sec", buf, 0xCu);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v90 = *(a1 + 1176);
                      v230 = 134349056;
                      v231 = v90;
                      v91 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v91);
                      if (v91 != buf)
                      {
                        free(v91);
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            sub_10002AAB0(a1, (a1 + 1160), 0, *(a1 + 808));
            if (*(a1 + 1176) > *(a1 + 1432))
            {
              v92 = *(a1 + 1248);
              *(a1 + 1488) = *(a1 + 1232);
              *(a1 + 1504) = v92;
              *(a1 + 1520) = *(a1 + 1264);
              v93 = *(a1 + 1184);
              *(a1 + 1424) = *(a1 + 1168);
              *(a1 + 1440) = v93;
              v94 = *(a1 + 1216);
              *(a1 + 1456) = *(a1 + 1200);
              *(a1 + 1536) = *(a1 + 1280);
              *(a1 + 1472) = v94;
            }
          }

          *&buf[12] = 0;
          *&buf[4] = 0;
          *&buf[20] = xmmword_101C75BF0;
          *&buf[36] = v200;
          *&buf[52] = v200;
          *&buf[68] = v200;
          *buf = 0xFFFF;
          *&buf[84] = 0;
          *&buf[88] = 0xBFF0000000000000;
          memset(&buf[96], 0, 20);
          *&buf[116] = 0xBFF0000000000000;
          *&buf[124] = 0x7FFFFFFF;
          *v258 = 0;
          *&buf[128] = 0;
          *&buf[136] = 0;
          v258[8] = 0;
          if (*(a1 + 2952) == 1)
          {
            v95 = sub_10002790C(a1 + 1160, buf);
            if (v95)
            {
              *v234 = 0xBFF0000000000000;
              CLMotionActivity::getInit(&v234[8], v95);
              sub_1000D0738(a1 + 2424, v234);
              v96 = sub_10000AE98();
              v97 = *(a1 + 1280);
              v98 = *(a1 + 2800);
              v99 = *(a1 + 2778);
              v100 = *(a1 + 175);
              v230 = *(a1 + 2448);
              v101 = *(a1 + 2168);
              v102 = *(v101 + 560);
              v103 = *(v101 + 568);
              v202 = v102;
              LODWORD(v203) = v103;
              sub_1005D4344(v96, buf, &v216, v97, v98, v99, v100, &v230, &v202, (a1 + 112), v70, (a1 + 2880), v234);
            }
          }
        }

        else
        {
          if (!*(a1 + 1544))
          {
            *(a1 + 1544) = 9;
          }

          *v198 = 1;
        }

        if ((*(a1 + 174) & 1) == 0)
        {
          v104 = *(a1 + 2792);
          if (!v104 || v104[1] != 1 || (*v104 & 1) == 0)
          {
            if (sub_1002096A0(a1, *a2))
            {
              if (*(a1 + 172) == 1)
              {
                v105 = *(a1 + 112);
                if (v105 > 8 || ((1 << v105) & 0x1D0) == 0)
                {
                  v106 = *(a1 + 208);
                  *buf = *a2 + 124;
                  v107 = *(sub_1001FBADC(v106, *buf)[5] + 8);
                  v108 = *(v107 + 88);
                  v109 = *(v107 + 104);
                  v110 = *(v107 + 120);
                  *(a1 + 1232) = *(v107 + 72);
                  *(a1 + 1280) = v110;
                  *(a1 + 1264) = v109;
                  *(a1 + 1248) = v108;
                  v111 = *(v107 + 8);
                  v112 = *(v107 + 24);
                  v113 = *(v107 + 40);
                  *(a1 + 1216) = *(v107 + 56);
                  *(a1 + 1200) = v113;
                  *(a1 + 1184) = v112;
                  *(a1 + 1168) = v111;
                  *v198 = 0;
                }
              }

              else
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v114 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_DEFAULT, "#fusion,passthrough mode,mark the fix as rejected,legacy should notify block the provider fix", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A7B5F4(buf);
                  *v234 = 0;
                  v154 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v154);
                  if (v154 != buf)
                  {
                    free(v154);
                  }
                }

                *v198 = 1;
                *(a1 + 1544) = 1;
              }

              *(a1 + 175) = 1;
            }
          }
        }
      }

      *(a1 + 172) = 0;
      if ((*v198 & 1) == 0)
      {
        *(a1 + 2832) = 0;
        if ((*(a1 + 2904) & 1) == 0)
        {
          v115 = *(a1 + 2176);
          if (v115)
          {
            sub_100216EAC(v115, *(a1 + 200));
          }
        }
      }

      v116 = *(a1 + 2272);
      if (v116 != (a1 + 2280))
      {
        do
        {
          v117 = *(v116[5] + 16);
          v118 = *(a1 + 200);
          if (v118 <= v117 || v118 - v117 <= 300.0)
          {
            v120 = v116[1];
            if (v120)
            {
              do
              {
                v119 = v120;
                v120 = *v120;
              }

              while (v120);
            }

            else
            {
              do
              {
                v119 = v116[2];
                _ZF = *v119 == v116;
                v116 = v119;
              }

              while (!_ZF);
            }
          }

          else
          {
            v119 = sub_1001F3424((a1 + 2272), v116);
          }

          v116 = v119;
        }

        while (v119 != (a1 + 2280));
      }

      v121 = *(a1 + 208);
      v124 = *v121;
      v122 = v121 + 1;
      v123 = v124;
      if (v124 != v122)
      {
        do
        {
          v125 = v123 + 5;
          v126 = v123[5];
          if (v126)
          {
            do
            {
              v127 = *(a1 + 200);
              v128 = *(v126[1] + 16);
              if (v127 > v128 && v127 - v128 > 900.0)
              {
                v129 = v126[2];
                v126[1] = 0;
                v126[2] = 0;
                if (v129)
                {
                  sub_100008080(v129);
                }
              }

              v126 = *v126;
            }

            while (v126);
            v130 = *v125;
            for (*buf = 0; v130; v130 = *v130)
            {
              v131 = v130[2];
              if (!v131 || *(v131 + 8) == -1)
              {
                while (1)
                {
                  v130 = *v130;
                  if (!v130)
                  {
                    break;
                  }

                  v132 = v130[2];
                  if (v132)
                  {
                    if (*(v132 + 8) != -1)
                    {
                      break;
                    }
                  }
                }

                if (buf != v125 && v125 != v130)
                {
                  v133 = v125;
                  do
                  {
                    v134 = v133;
                    v133 = *v133;
                  }

                  while (v133 != v130);
                  if (v134 != v125)
                  {
                    *v134 = *buf;
                    *buf = *v125;
                    *v125 = v130;
                  }
                }

                if (!v130)
                {
                  break;
                }
              }

              v125 = v130;
            }
          }

          else
          {
            *buf = 0;
          }

          sub_100224858(buf);
          v135 = v123[1];
          if (v135)
          {
            do
            {
              v136 = v135;
              v135 = *v135;
            }

            while (v135);
          }

          else
          {
            do
            {
              v136 = v123[2];
              _ZF = *v136 == v123;
              v123 = v136;
            }

            while (!_ZF);
          }

          v123 = v136;
        }

        while (v136 != v122);
      }
    }

    else
    {
      *a3 = 1;
    }

    if (v218)
    {
      std::__shared_weak_count::__release_weak(v218);
    }

    return v197;
  }

  return result;
}

void sub_1001DF600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t sub_1001DF618(int64x2_t *a1, __int128 *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_10025A210(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  v7 = *v6 + 156 * (v4 % 0x1A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4056;
  }

  v8 = *a2;
  *(v7 - 140) = a2[1];
  *(v7 - 156) = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  *(v7 - 76) = a2[5];
  *(v7 - 92) = v11;
  *(v7 - 108) = v10;
  *(v7 - 124) = v9;
  v12 = a2[6];
  v13 = a2[7];
  v14 = a2[8];
  *(v7 - 16) = *(a2 + 140);
  *(v7 - 28) = v14;
  *(v7 - 44) = v13;
  *(v7 - 60) = v12;
  result = vaddq_s64(a1[2], xmmword_101C79510);
  a1[2] = result;
  return result;
}

void sub_1001DF6F0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 368;
  if (*(a1 + 245))
  {
    v5 = 244;
  }

  if (*(a1 + v5) == 1)
  {
    v10 = v3;
    v11 = v4;
    if (*(a1 + 2172) == 1 && *a1 && sub_100021618(a3, *(a1 + 1568), 315360000.0) >= 120.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023A174();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "BaroAlt,query ref pressure during a e911 call", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101747178();
      }

      sub_10173C5AC(a1, a2);
    }
  }
}

uint64_t sub_1001DF7F8(uint64_t a1, uint64_t a2, double *__src)
{
  if (!*(a1 + 3872) || !*(a1 + 3880) || (*(a2 + 96) & 0xFFFFFFF7) != 1)
  {
    return 0;
  }

  v6 = *(a2 + 112);
  v45[6] = *(a2 + 96);
  v45[7] = v6;
  v46[0] = *(a2 + 128);
  *(v46 + 12) = *(a2 + 140);
  v7 = *(a2 + 48);
  v45[2] = *(a2 + 32);
  v45[3] = v7;
  v8 = *(a2 + 80);
  v45[4] = *(a2 + 64);
  v45[5] = v8;
  v9 = *(a2 + 16);
  v45[0] = *a2;
  v45[1] = v9;
  memcpy(v47, __src, 0x201uLL);
  v10 = *(__src + 65);
  v47[65] = v10;
  v11 = *(__src + 66);
  v48 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(__src + 65);
    v12 = *(__src + 66);
  }

  else
  {
    v12 = 0;
  }

  v14 = *(__src + 77);
  v53 = *(__src + 75);
  v54[0] = v14;
  *(v54 + 9) = *(__src + 625);
  v15 = *(__src + 69);
  v49 = *(__src + 67);
  v50 = v15;
  v16 = *(__src + 73);
  v51 = *(__src + 71);
  v52 = v16;
  v17 = *(a2 + 112);
  v35[6] = *(a2 + 96);
  v35[7] = v17;
  v36[0] = *(a2 + 128);
  *(v36 + 12) = *(a2 + 140);
  v18 = *(a2 + 48);
  v35[2] = *(a2 + 32);
  v35[3] = v18;
  v19 = *(a2 + 80);
  v35[4] = *(a2 + 64);
  v35[5] = v19;
  v20 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v20;
  memcpy(v37, __src, 0x201uLL);
  v37[65] = v10;
  v38 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(__src + 77);
  v43 = *(__src + 75);
  v44[0] = v21;
  *(v44 + 9) = *(__src + 625);
  v22 = *(__src + 69);
  v39 = *(__src + 67);
  v40 = v22;
  v23 = *(__src + 73);
  v41 = *(__src + 71);
  v42 = v23;
  v34 = 0;
  sub_1002A3274(*(a1 + 3872), v45, &v34 + 1);
  sub_1002A3274(*(a1 + 3880), v35, &v34);
  v24 = HIBYTE(v34);
  if (HIBYTE(v34) == *(a1 + 3888))
  {
    v25 = *&v47[1];
    v26 = *v37;
    v27 = *(a1 + 3896) + *&v47[1] - *&v37[1];
    *(a1 + 3896) = v27;
  }

  else
  {
    v26 = *v37;
    v25 = *&v37[1];
    v27 = *(a1 + 3896);
  }

  *(__src + 1) = v25;
  *(a1 + 3888) = v24;
  *__src = v26 + v27;
  if (qword_1025D46B0 != -1)
  {
    sub_101956350();
  }

  v28 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v29 = *__src;
    v30 = *(a1 + 3896);
    buf = 134218240;
    v60 = v29;
    v61 = 2048;
    v62 = v30;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "GPSODOM,odometer,%.1lf,fAccumulatedDeltaDistanceDifferenceM,%.1lf", &buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956DC4(&buf);
    v31 = *__src;
    v32 = *(a1 + 3896);
    v55 = 134218240;
    v56 = v31;
    v57 = 2048;
    v58 = v32;
    v33 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationControllerFusion::updateGnssOdometer(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v33);
    if (v33 != &buf)
    {
      free(v33);
    }
  }

  if (v38)
  {
    sub_100008080(v38);
  }

  if (v48)
  {
    sub_100008080(v48);
  }

  return 1;
}

void sub_1001DFB84(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 688);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(v1 + 688);
  if (v5)
  {
    sub_100008080(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DFBB4(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A9619C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistancePosition::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A961B0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistancePosition::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001D8FE0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001DFD80(uint64_t a1, _OWORD *a2)
{
  result = *(a1 + 136);
  if (result)
  {
    if (*(a2 + 24) == 1)
    {
      v4 = *a2;
      *(a1 + 168) = a2[1];
      *(a1 + 152) = v4;
      v5 = a2[2];
      v6 = a2[3];
      v7 = a2[4];
      *(a1 + 232) = a2[5];
      *(a1 + 216) = v7;
      *(a1 + 200) = v6;
      *(a1 + 184) = v5;
      v8 = a2[6];
      v9 = a2[7];
      v10 = a2[8];
      *(a1 + 292) = *(a2 + 140);
      *(a1 + 264) = v9;
      *(a1 + 280) = v10;
      *(a1 + 248) = v8;
    }

    return sub_1001DFDE0(result, a2);
  }

  return result;
}

uint64_t sub_1001DFDE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (v4 == 6)
  {
    v5 = sub_1001D3D90(*(a1 + 40), a2);
    if (qword_1025D4620 != -1)
    {
      sub_101968930();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001D78F4(__p);
      v7 = __p[0];
      v8 = "yes";
      if (v29 >= 0)
      {
        v7 = __p;
      }

      if (v5)
      {
        v8 = "no";
      }

      *buf = 136643075;
      *&buf[4] = v7;
      v21 = 2080;
      v22 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "MovingApDetector, CellOnly, received location: %{sensitive}s, success: %s", buf, 0x16u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      sub_1001D78F4(buf);
      v17 = *buf;
      v18 = "yes";
      if (v23 >= 0)
      {
        v17 = buf;
      }

      if (v5)
      {
        v18 = "no";
      }

      v24 = 136643075;
      v25 = v17;
      v26 = 2080;
      v27 = v18;
      v19 = _os_log_send_and_compose_impl();
      if (v23 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::receiveLocation(CLDaemonLocation &)", "%s\n", v19);
      if (v19 != __p)
      {
        free(v19);
      }
    }

    v4 = *(a2 + 96);
  }

  if (v4 != 1 && (v4 != 6 || sub_1001CCA30()[1] != 1))
  {
    return 0;
  }

  v9 = sub_1001D3D90(*(a1 + 24), a2);
  if (qword_1025D4620 != -1)
  {
    sub_1019688C4();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_1001D78F4(__p);
    v11 = __p[0];
    v12 = "yes";
    if (v29 >= 0)
    {
      v11 = __p;
    }

    if (v9)
    {
      v12 = "no";
    }

    *buf = 136643075;
    *&buf[4] = v11;
    v21 = 2080;
    v22 = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "MovingApDetector, received location: %{sensitive}s, success: %s", buf, 0x16u);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019688C4();
    }

    sub_1001D78F4(buf);
    v13 = *buf;
    v14 = "yes";
    if (v23 >= 0)
    {
      v13 = buf;
    }

    if (v9)
    {
      v14 = "no";
    }

    v24 = 136643075;
    v25 = v13;
    v26 = 2080;
    v27 = v14;
    v15 = _os_log_send_and_compose_impl();
    if (v23 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::receiveLocation(CLDaemonLocation &)", "%s\n", v15);
    if (v15 != __p)
    {
      free(v15);
    }
  }

  return v9;
}

uint64_t sub_1001E0254(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t sub_1001E02CC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 152);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 48), a2, a4);
    v6 = *(v5 + 152);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(qword_102636C38 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 152);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 104), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_39:
  v8 = *(v5 + 96);
  if (!v8)
  {
    v8 = *(qword_102636C38 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v8, a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 112), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, *(v5 + 108), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 120), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 124), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 128), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_48:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 136), a3);
    if ((*(v5 + 152) & 0x200000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 132), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_48;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return result;
  }

LABEL_49:
  v9 = *(v5 + 144);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, v9, a2, a4);
}