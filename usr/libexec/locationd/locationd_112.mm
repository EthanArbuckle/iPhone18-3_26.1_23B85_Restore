void sub_10084CDEC(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100846E5C(a1, lpsrc);
}

double sub_10084D090(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = a2;
  *a1 = off_1024769B8;
  *(a1 + 8) = off_102476A60;
  *(a1 + 296) = 0;
  result = 0.0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  return result;
}

void *sub_10084D0EC(void *a1)
{
  *a1 = off_1024769B8;
  v2 = a1 + 1;
  a1[1] = off_102476A60;
  v3 = a1[37];
  a1[37] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[36];
  a1[36] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[35];
  a1[35] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_10084D1E4(v2);
  return a1;
}

void *sub_10084D1E4(void *a1)
{
  *a1 = off_102476AE0;
  sub_100EAB1D0(a1);
  v2 = a1[30];
  a1[30] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_10084D268(void *a1)
{
  sub_10084D0EC(a1);

  operator delete();
}

void sub_10084D2A0(uint64_t a1)
{
  sub_10084D0EC((a1 - 8));

  operator delete();
}

void sub_10084D2DC(uint64_t a1, uint64_t a2)
{
  sub_10001CAF4(&v3);
  (*(*a2 + 168))(a2, &v3);
  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_10084D344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_10084D35C(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 256) "vendor")];

  return [v1 syncgetLocationClientKeys];
}

void sub_10084D7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 256) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101955644();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterTraceExternal::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101955658();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterTraceExternal::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(**(a4 + 304) + 32))(*(a4 + 304), a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10084D9E4(uint64_t a1)
{
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 296);
  *(a1 + 296) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 288);
  *(a1 + 288) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  MapsFeature_RemoveDelegateListenerForAllKeys();
  [*(a1 + 272) deregisterForVisionNotifications:*(a1 + 264)];

  [*(a1 + 320) unregisterForUpdates:*(a1 + 312)];
  *(a1 + 320) = 0;
  v5 = *(a1 + 312);
}

uint64_t sub_10084DB00(uint64_t a1, int a2)
{
  result = sub_100023ED4(0);
  if (result && *(a1 + 296))
  {
    v5 = sub_100023ED4(0);
    v6 = *(a1 + 296);

    return sub_100178498(v5, a2, v6, -1.0);
  }

  return result;
}

void sub_10084DB68(uint64_t a1, int a2)
{
  if (sub_100023ED4(0) && *(a1 + 296))
  {
    v4 = sub_100023ED4(0);
    v5 = *(a1 + 296);

    sub_10095D9F8(v4, a2, v5);
  }
}

uint64_t sub_10084DBCC(uint64_t result, int a2)
{
  if (*(result + 288))
  {
    v3 = result;
    v4 = sub_10017C3BC();
    v5 = *(v3 + 288);

    return sub_100178498(v4, a2, v5, -1.0);
  }

  return result;
}

void sub_10084DC1C(uint64_t a1, int a2)
{
  if (*(a1 + 288))
  {
    v4 = sub_10017C3BC();
    v5 = *(a1 + 288);

    sub_10095D9F8(v4, a2, v5);
  }
}

void sub_10084DC68(uint64_t a1, double a2)
{
  v4 = [*(a1 + 256) silo];

  sub_100EAAF8C(a1 + 8, v4, a2);
}

double sub_10084DDE8(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_10084DE14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10084DEE8(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_10084DF38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10084E01C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10084E108(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10084E16C(uint64_t a1)
{
  sub_10084E1A4(a1);

  operator delete();
}

uint64_t sub_10084E1A4(uint64_t a1)
{
  *a1 = off_102476D68;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  return sub_1017E7D44(a1);
}

void sub_10084E220()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10084E298()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_10084E310()
{
  qword_10265A698 = off_102476B48;
  qword_10265A6B0 = &qword_10265A698;
  __cxa_atexit(sub_1003EE78C, &qword_10265A698, dword_100000000);
  qword_10265A6B8 = off_102476BC8;
  qword_10265A6D0 = &qword_10265A6B8;
  __cxa_atexit(sub_1003EE78C, &qword_10265A6B8, dword_100000000);
  qword_10265A6D8 = off_102476C48;
  qword_10265A6F0 = &qword_10265A6D8;
  __cxa_atexit(sub_1003EE790, &qword_10265A6D8, dword_100000000);
  qword_10265A6F8 = off_102476CC8;
  qword_10265A710 = &qword_10265A6F8;
  __cxa_atexit(sub_1003EE790, &qword_10265A6F8, dword_100000000);
  operator new();
}

uint64_t sub_10084E49C(unsigned int a1, int a2, int a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_1019557AC();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v10 = sub_100085790(a1);
    v11 = 1026;
    v12 = a2;
    v13 = 1026;
    v14 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@TileDl, tile download completed, %{public}s, reachability, %{public}d, isCompanionNearby, %{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019557C0();
    }

    sub_100085790(a1);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "static void CLTileDownloadAnalytics::submitMetricsUponTileDownloadCompleted(const CLTilesManager_Type::TileType, const CLDaemonStatus_Type::Reachability, const BOOL)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_10084E6D0(uint64_t a1)
{
  v4[0] = &off_10254F050;
  v3[0] = @"tilesDownloaded";
  v3[1] = @"reachability";
  v4[1] = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  v3[2] = @"isCompanionNearby";
  v4[2] = [NSNumber numberWithBool:*(a1 + 40)];
  v3[3] = @"tileType";
  v4[3] = [NSString stringWithUTF8String:sub_100085790(*(a1 + 36))];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_10084EB04(id a1)
{
  sub_10001A3E8();
  if ((sub_10003A088() & 0x100) != 0)
  {
    byte_10265A730 = 1;
  }
}

uint64_t sub_10084EEEC(uint64_t a1, unsigned int *a2, __int128 *a3, void *a4)
{
  v6 = *a2;
  sub_1004BF718(__dst, a3);
  sub_1004BF718(v9, (a3 + 248));
  memcpy(v10, a3 + 31, sizeof(v10));
  [a4 onMonitorNotification:v6 data:__dst];
  return sub_10005E520(__dst);
}

void sub_10084EF70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10005E520(va);
  _Unwind_Resume(a1);
}

void sub_10084F150(uint64_t a1)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
}

uint64_t sub_10084F250(uint64_t a1, uint64_t a2)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  v4 = [-[CLFenceAnalyticsMotionActivityHistogram initActivityHistogramWithActivities:dateInterval:]([CLFenceAnalyticsMotionActivityHistogram alloc] initActivityHistogramWithActivities:a2 dateInterval:{*(a1 + 40)), "binsSortedByInterval"}];
  v5 = *(a1 + 48);
  v6 = [objc_msgSend(v4 "firstObject")];
  v7 = *(v5 + 16);

  return v7(v5, v6);
}

void sub_10084F4E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004BF9B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10084F5F8(uint64_t a1)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t sub_10084FA60(uint64_t a1, __int128 *a2)
{
  dispatch_assert_queue_V2([*(a1 + 32) queue]);
  v4 = *(a1 + 40);
  v8 = *(a2 + 2);
  v7 = *a2;
  return (*(v4 + 16))(v4, &v7, v5);
}

void sub_10084FDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10005E520(va);
  _Unwind_Resume(a1);
}

void sub_10084FF68(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1065353216;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  operator new();
}

void sub_100850028(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  v14 = *(v9 + 120);
  if (v14)
  {
    *(v9 + 128) = v14;
    operator delete(v14);
  }

  sub_101955D3C((v9 + 96), v10, v9, a1, a2, &exception_object);
  v15 = exception_object;
  v16 = *v11;
  if (*v11)
  {
    *(v9 + 32) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(v15);
}

void sub_1008500A0(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1025D4230 != -1)
  {
    sub_101955DB0();
  }

  v3 = Current + -1814400.0;
  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *v24 = v3;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Delete Records Before, expirationTime, %f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955DC4(v3);
  }

  sub_1012F98EC(*(a1 + 56), v3);
  __p = 0;
  v19 = 0;
  v20 = 0;
  if (qword_1025D4230 != -1)
  {
    sub_101955EE0();
  }

  v5 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 20);
    *buf = 67109376;
    LODWORD(v24[0]) = v6;
    WORD2(v24[0]) = 2048;
    *(v24 + 6) = 0x3FE0000000000000;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Get All Records By Activity Type And Maximum Standard Deviation, activityType, %u, standardDeviation, %f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101955F08(buf);
    v14 = *(a1 + 20);
    v21 = 67109376;
    LODWORD(v22[0]) = v14;
    WORD2(v22[0]) = 2048;
    *(v22 + 6) = 0x3FE0000000000000;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::bootstrapCalibrationValueFromDb()", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  sub_1012F9524(*(a1 + 56), &__p, *(a1 + 20), 0.5);
  v7 = __p;
  v8 = v19;
  if (__p != v19)
  {
    v9 = *(a1 + 8);
    v10 = 0.0;
    v11 = __p;
    do
    {
      v10 = v10 + *(v11 + 2);
      if (*(v11 + 3) > v9)
      {
        v9 = *(v11 + 3);
      }

      v11 += 32;
    }

    while (v11 != v19);
    *(a1 + 8) = v9;
    *(a1 + 16) = v10 / ((v8 - v7) >> 5);
    if (qword_1025D4230 != -1)
    {
      sub_101955EE0();
    }

    v12 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 16);
      *buf = 134217984;
      *v24 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Workload Calibrator, Bootstraping Calibration, Value, %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101955F08(buf);
      v16 = *(a1 + 16);
      v21 = 134217984;
      *v22 = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::bootstrapCalibrationValueFromDb()", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v7 = __p;
  }

  if (v7)
  {
    v19 = v7;
    operator delete(v7);
  }
}

void sub_100850470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008504A4(void *a1, uint64_t a2, _BYTE *a3, double a4, float a5, float a6)
{
  v6 = a1;
  *a3 = 0;
  if (!a2)
  {
    return;
  }

  v12 = a1[13];
  v11 = a1[14];
  if (v12 >= v11)
  {
    v14 = a1[12];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 2;
    v17 = v16 + 1;
    if ((v16 + 1) >> 62)
    {
      goto LABEL_66;
    }

    v18 = v11 - v14;
    if (v18 >> 1 > v17)
    {
      v17 = v18 >> 1;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
    v20 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      sub_1000B85D0((a1 + 12), v20);
    }

    v21 = (v12 - v14) >> 2;
    v22 = (4 * v16);
    v23 = (4 * v16 - 4 * v21);
    *v22 = a5;
    v13 = v22 + 1;
    memcpy(v23, v14, v15);
    a1 = *(v6 + 96);
    *(v6 + 96) = v23;
    *(v6 + 104) = v13;
    *(v6 + 112) = 0;
    if (a1)
    {
      operator delete(a1);
    }
  }

  else
  {
    *v12 = a5;
    v13 = v12 + 1;
  }

  *(v6 + 104) = v13;
  v25 = *(v6 + 128);
  v24 = *(v6 + 136);
  if (v25 < v24)
  {
    *v25 = a6;
    v26 = v25 + 1;
    goto LABEL_25;
  }

  v27 = *(v6 + 120);
  v28 = v25 - v27;
  v29 = (v25 - v27) >> 2;
  v30 = v29 + 1;
  if ((v29 + 1) >> 62)
  {
LABEL_66:
    sub_10028C64C();
  }

  v31 = v24 - v27;
  if (v31 >> 1 > v30)
  {
    v30 = v31 >> 1;
  }

  v19 = v31 >= 0x7FFFFFFFFFFFFFFCLL;
  v32 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v19)
  {
    v32 = v30;
  }

  if (v32)
  {
    sub_1000B85D0(v6 + 120, v32);
  }

  v33 = (v25 - v27) >> 2;
  v34 = (4 * v29);
  v35 = (4 * v29 - 4 * v33);
  *v34 = a6;
  v26 = v34 + 1;
  memcpy(v35, v27, v28);
  a1 = *(v6 + 120);
  *(v6 + 120) = v35;
  *(v6 + 128) = v26;
  *(v6 + 136) = 0;
  if (a1)
  {
    operator delete(a1);
  }

LABEL_25:
  *(v6 + 128) = v26;
  v36 = sub_1008509BC(a1, (v6 + 96));
  v38 = sub_1008509BC(v37, (v6 + 120));
  if (v38 < 4.0 || v38 >= 6.0)
  {
    if (v38 < 6.0 || v38 >= 11.0)
    {
      v40 = 1.0;
      if (v38 < 11.0 || v38 > 20.0)
      {
        goto LABEL_35;
      }

      v39 = 4.2658;
    }

    else
    {
      v39 = 4.4668;
    }
  }

  else
  {
    v39 = 4.7863;
  }

  v40 = v39 / v38;
LABEL_35:
  v41 = *(a2 + 344);
  v42 = *(a2 + 348);
  if (!(**a2)(a2))
  {
    goto LABEL_56;
  }

  v43 = v42 == 2 || v41 == 4;
  v44 = v43;
  if (v38 < 4.0 || v38 > 20.0 || !v44 || v36 < 4.5 || v36 > 20.0)
  {
    goto LABEL_56;
  }

  if ((v36 / v38) > (10.715 / v38) || (v36 / v38) < v40)
  {
    goto LABEL_56;
  }

  v46 = *(v6 + 48);
  if (v46 == 1)
  {
    sub_100850BFC(v6, a4, v36, v38);
    goto LABEL_55;
  }

  if (!v46)
  {
    sub_100850A38(v6, v36, v38);
LABEL_55:
    *a3 = 1;
    *(v6 + 8) = CFAbsoluteTimeGetCurrent();
  }

LABEL_56:
  if (qword_1025D4230 != -1)
  {
    sub_101955DB0();
  }

  v47 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v48 = *(v6 + 16);
    *buf = 134219008;
    v51 = a4;
    v52 = 2048;
    v53 = v36;
    v54 = 2048;
    v55 = v38;
    v56 = 2048;
    v57 = v48;
    v58 = 2048;
    v59 = (v38 * v48);
    _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "WorkloadCalibration, timestamp, %f, HRMETs, %f, WRMETs, %f, calibrationValue, %f, calibratedMets, %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101955EE0();
    }

    v49 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "float CLWorkloadCalibrator::computeCalibrationValue(const CLNatalieModelInput *, const CFAbsoluteTime, const float, const float, BOOL &)", "%s\n", v49);
    if (v49 != buf)
    {
      free(v49);
    }
  }
}

float sub_1008509BC(uint64_t a1, float **a2)
{
  result = 0.0;
  if (a2)
  {
    v3 = *a2;
    v4 = a2[1];
    if ((v4 - *a2) >= 0x11)
    {
      v5 = v4 - 4;
      if (v4 - 4 != v3)
      {
        if (v4 != v5)
        {
          *v3 = *v5;
        }

        v6 = *a2;
        v4 = v3 + 4;
        a2[1] = v3 + 4;
        v3 = v6;
      }
    }

    if (v3 != v4)
    {
      v7 = v3;
      do
      {
        v8 = *v7++;
        result = result + v8;
      }

      while (v7 != v4);
      return result / (v4 - v3);
    }
  }

  return result;
}

void sub_100850A38(uint64_t a1, float a2, float a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 >= v4)
  {
    v7 = *(a1 + 24);
    v8 = (v5 - v7) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_10028C64C();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000B9708(a1 + 24, v11);
    }

    v12 = (8 * v8);
    *v12 = a3;
    v12[1] = a2;
    v6 = 8 * v8 + 8;
    v13 = *(a1 + 24);
    v14 = *(a1 + 32) - v13;
    v15 = 8 * v8 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = *(a1 + 24);
    *(a1 + 24) = v15;
    *(a1 + 32) = v6;
    *(a1 + 40) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a3;
    v5[1] = a2;
    v6 = (v5 + 2);
  }

  *(a1 + 32) = v6;
  v17 = *(a1 + 24);
  v18 = v6 - v17;
  if ((v6 - v17) < 0x31)
  {
LABEL_21:
    if (v18 < 0x19)
    {
      return;
    }

    goto LABEL_22;
  }

  v19 = v6 - 48 - v17;
  if (v6 - 48 != v17)
  {
    if (v6 - 48 == v6)
    {
      v20 = *(a1 + 24);
      v21 = v20;
    }

    else
    {
      v20 = (v17 + 48);
      v21 = *(a1 + 24);
      do
      {
        v22 = v21 + v19;
        *v21 = *(v21 + v19);
        v21[1] = *(v21 + v19 + 4);
        v21 += 2;
      }

      while (v22 + 8 != v6);
    }

    *(a1 + 32) = v21;
    v18 = v20 - v17;
    goto LABEL_21;
  }

LABEL_22:
  v23 = sub_10058BEB0((a1 + 24), 30);
  *(a1 + 16) = v23;
  sub_1003F2C74((a1 + 144), v23);
  v24 = *(a1 + 144);
  v25 = 0.0;
  v26 = __OFSUB__(v24, 1);
  v27 = v24 - 1;
  if (v27 < 0 != v26)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = *(a1 + 160);
    if (v27)
    {
      v25 = *(a1 + 176) / v27;
    }
  }

  v29 = sqrt(v25);

  sub_100850DB0(a1, v28, v29);
}

void sub_100850BFC(void *a1, double a2, float a3, float a4)
{
  v7 = a1[9];
  v5 = a1[10];
  v6 = (a1 + 9);
  if (v7 != v5 && a2 - *(v5 - 2) > 120.0)
  {
    a1[10] = v7;
    v5 = v7;
  }

  v8 = a1[11];
  if (v5 >= v8)
  {
    v10 = v5 - v7;
    v11 = (v5 - v7) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v13 = v8 - v7;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1003E5FE8((a1 + 9), v14);
    }

    v15 = 16 * v11;
    *v15 = a2;
    *(v15 + 8) = a3;
    *(v15 + 12) = a4;
    v9 = 16 * v11 + 16;
    memcpy(0, v7, v10);
    v16 = a1[9];
    a1[9] = 0;
    a1[10] = v9;
    a1[11] = 0;
    if (v16)
    {
      operator delete(v16);
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    *v5 = a2;
    v9 = (v5 + 2);
    *(v5 + 2) = a3;
    *(v5 + 3) = a4;
  }

  a1[10] = v9;
  if ((v9 - v7) >= 0x41 && sub_100851208(a1) > 30.0)
  {
    sub_1008512F4(v17, v6, 8);
    v19 = v18;
    sub_1008512F4(v20, v6, 12);
    a1[10] = v7;

    sub_100850A38(a1, v19, v21);
  }
}

uint64_t sub_100850DB0(uint64_t a1, float a2, float a3)
{
  v6 = *a1;
  if (*a1 == 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    *a1 = Current;
    v18 = 0;
    v8 = *(a1 + 20);
    HIDWORD(v18) = v8;
    v19 = a2;
    v20 = a3;
    v9 = *(a1 + 8);
    v21 = Current;
    v22 = v9;
    if (qword_1025D4230 != -1)
    {
      sub_101955DB0();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v32 = v8;
      *&v32[4] = 2048;
      *&v32[6] = a2;
      v33 = 2048;
      v34 = a3;
      v35 = 2048;
      v36 = Current;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Insert, activityType, %u, valueAverage, %f, standardDeviation, %f, entry.startTime, %f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101955EE0();
      }

      v23 = 67109888;
      v24 = v8;
      v25 = 2048;
      v26 = a2;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = Current;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::persistCalibration(const float, const float)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    sub_1012FA304(*(a1 + 56), &v18);
    if (qword_1025D48A0 != -1)
    {
      sub_101955F4C();
    }

    v11 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      *v32 = 5;
      *&v32[8] = 1024;
      *&v32[10] = HIDWORD(v18);
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Delete Keep Last N, kMaximumDbHistorySize, %lu, activityType, %u", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101955F74(&v18 + 1);
    }

    return sub_1012FA414(*(a1 + 56), 5, SHIDWORD(v18));
  }

  else
  {
    v18 = 0;
    v13 = *(a1 + 20);
    HIDWORD(v18) = v13;
    v19 = a2;
    v20 = a3;
    v14 = *(a1 + 8);
    v21 = v6;
    v22 = v14;
    if (qword_1025D4230 != -1)
    {
      sub_101955DB0();
    }

    v15 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109888;
      *v32 = v13;
      *&v32[4] = 2048;
      *&v32[6] = a2;
      v33 = 2048;
      v34 = a3;
      v35 = 2048;
      v36 = v6;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Workload Calibrator, DB Update, activityType, %u, valueAverage, %f, standardDeviation, %f, entry.startTime, %f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101955EE0();
      }

      v23 = 67109888;
      v24 = v13;
      v25 = 2048;
      v26 = a2;
      v27 = 2048;
      v28 = a3;
      v29 = 2048;
      v30 = v6;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkloadCalibrator::persistCalibration(const float, const float)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return sub_1012FA510(*(a1 + 56), &v18);
  }
}

double sub_100851208(uint64_t a1)
{
  v2 = *(a1 + 72);
  v1 = *(a1 + 80);
  v3 = v2 + 2;
  if (v2 == v1 || v3 == v1)
  {
    v5 = *(a1 + 72);
    v3 = v5;
  }

  else
  {
    v7 = v2[2];
    if (v7 >= *v2)
    {
      v5 = *(a1 + 72);
    }

    else
    {
      v5 = v2 + 2;
    }

    if (v7 < *v2)
    {
      v3 = *(a1 + 72);
    }

    v8 = v2 + 4;
    if (v2 + 4 != v1)
    {
      if (v7 >= *v2)
      {
        v7 = *v2;
      }

      while (1)
      {
        v9 = v8;
        v10 = v8 + 2;
        if (v10 == v1)
        {
          break;
        }

        v11 = v9[2];
        v12 = *v9;
        if (v11 >= *v9)
        {
          v13 = v2 + 6;
          if (v12 < v7)
          {
            v7 = *v9;
            v5 = v9;
          }

          if (v11 >= *v3)
          {
            v3 = v13;
          }
        }

        else
        {
          v7 = *v5;
          if (v11 < *v5)
          {
            v7 = v9[2];
            v5 = v10;
          }

          if (v12 >= *v3)
          {
            v3 = v9;
          }
        }

        v8 = v9 + 4;
        v2 = v9;
        if (v9 + 4 == v1)
        {
          return *v3 - *v5;
        }
      }

      if (*v9 >= *v5)
      {
        if (*v9 >= *v3)
        {
          v3 = v9;
        }
      }

      else
      {
        v5 = v9;
      }
    }
  }

  return *v3 - *v5;
}

void sub_1008512F4(uint64_t a1, double **a2, uint64_t a3)
{
  v3 = 0.0;
  if (a2)
  {
    if (a3 != -1)
    {
      v5 = *a2;
      v4 = a2[1];
      if (*a2 != v4)
      {
        v6 = a2[1];
        do
        {
          v7 = v5;
          if (v6 != v4)
          {
            v3 = v3 + ((*(v6 + a3) + *(v5 + a3)) * 0.5) * (*v5 - *v6);
          }

          v5 += 2;
          v6 = v7;
        }

        while (v7 + 2 != v4);
      }
    }
  }
}

void sub_1008513FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10189B1B8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100851414(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_100851444(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100851484(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1008577B4(v13, a4);
  sub_100DCBEB4(a1, a2, v13);
  sub_100678FA8(v13);
  *a1 = off_102476FD8;
  sub_10085771C(v12, a6);
  v10 = a3[1];
  v11[0] = *a3;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100855F9C((a1 + 57), v12, v11);
}

void sub_100852C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  sub_100678FA8(a16 + 4424);
  v64 = *(a16 + 4360);
  if (v64)
  {
    *(a16 + 4368) = v64;
    operator delete(v64);
  }

  sub_100857898((a16 + 4344), 0);
  v65 = *(a16 + 4336);
  *(a16 + 4336) = 0;
  if (v65)
  {
    operator delete();
  }

  sub_10085784C((a16 + 4288), 0);
  nullsub_34(a16 + 4040);
  sub_100CE1E30(a16 + 4000);
  v66 = *(a16 + 3968);
  *(a16 + 3968) = 0;
  if (v66)
  {
    (*(a16 + 3976))();
  }

  sub_1019561DC(a15, (a16 + 3880), (a16 + 3872), a16 + 456);
  sub_1008533B0(a16);
  _Unwind_Resume(a1);
}

void sub_100852F6C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_100853078(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_1008530B8(uint64_t a1)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101956260();
  }

  v2 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLMM,onMapMatcherStopped,timer triggered", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956274();
  }

  v3 = *(a1 + 3912);
  if (v3)
  {
    sub_100855E38(v3, 1);
    sub_100855E38(*(a1 + 3912), 0);
    GEOResetGeoCodecsAllocator();
    if (qword_1025D46B0 != -1)
    {
      sub_101956350();
    }

    v4 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLMM,onMapMatcherStopped,road and building tiles cleared from process memory", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956378();
    }
  }

  v5 = *(a1 + 4408);
  if (v5)
  {
    [v5 setNextFireDelay:1.79769313e308];
  }

  if (*(a1 + 4416))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101956350();
    }

    v6 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLMM,Releasing mapmatcher collection OS transaction", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956454();
    }

    *(a1 + 4416) = 0;
  }
}

BOOL sub_100853270()
{
  sub_10001CAF4(buf);
  v0 = *buf;
  v1 = sub_1002D48A8();
  v5 = 0;
  if (sub_10001CB4C(v0, "EnableTrackRun", &v5))
  {
    v2 = v5;
  }

  else
  {
    v2 = v1;
  }

  if (v7)
  {
    sub_100008080(v7);
  }

  if (qword_1025D41D0 != -1)
  {
    sub_101956170();
  }

  v3 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    *&buf[4] = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#cltr,EnableTrackRun,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956530(v2);
  }

  return v2;
}

void sub_100853390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008533B0(void *a1)
{
  *a1 = off_1024B1DF8;
  v2 = (a1 + 2);
  sub_10120BB38(a1 + 6);
  sub_100678FA8(v2);
  return a1;
}

uint64_t sub_100853408(uint64_t a1)
{
  if (*(a1 + 3923) == 1)
  {
    *(a1 + 3923) = 0;
  }

  if (!*(a1 + 3952))
  {
    *(a1 + 3952) = objc_alloc_init(CLNanoRegistry);
  }

  sub_10001A3E8();
  if (sub_10001CF04())
  {
    v2 = [*(a1 + 3952) isAFire6OrOlderWatchPaired] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 3922) = v2 | 0x100;
  if (qword_1025D41D0 != -1)
  {
    sub_101956624();
  }

  v3 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 3923) == 1)
    {
      v4 = *(a1 + 3922);
    }

    else
    {
      v4 = 1;
    }

    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#cltr,fIsPhoneThatDoesNotNeedTrackRunProcessing,%{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956638();
  }

  return (*(*a1 + 472))(a1);
}

id sub_100853578(uint64_t a1)
{
  v2 = +[RDEstimate currentEstimates];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_44;
  }

  if (*(a1 + 3960))
  {
    v4 = [v2 count];
    v5 = v4 == [*(a1 + 3960) count];
  }

  else
  {
    v5 = 0;
  }

  v23 = a1;
  if ([v3 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = [v3 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v26)
    {
      v25 = *v32;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      obj = v3;
      while (1)
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v31 + 1) + 8 * i);
          if (p_info[58] != -1)
          {
            sub_101956170();
          }

          v9 = qword_1025D41D8;
          if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = [v8 countryCode];
            *buf = 138477827;
            v41 = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#cltr,currentCountryCode,%{private}@", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101956738(v38, v8, &v39);
            if (!v5)
            {
LABEL_34:
              v5 = 0;
              continue;
            }
          }

          else if (!v5)
          {
            goto LABEL_34;
          }

          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v11 = *(v23 + 3960);
          v12 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:{16, v23}];
          if (v12)
          {
            v13 = v12;
            v14 = *v28;
            while (2)
            {
              v15 = p_info;
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                if ([objc_msgSend(v8 "countryCode")])
                {
                  p_info = v15;
                  if (v15[58] != -1)
                  {
                    sub_101956170();
                  }

                  v18 = qword_1025D41D8;
                  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = [v17 countryCode];
                    *buf = 138477827;
                    v41 = v19;
                    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#cltr,matching country found,%{private}@", buf, 0xCu);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_10195683C(v35, v17, &v36);
                  }

                  goto LABEL_32;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v27 objects:v37 count:16];
              v5 = 0;
              p_info = v15;
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          else
          {
LABEL_32:
            v5 = 1;
          }
        }

        v3 = obj;
        v26 = [obj countByEnumeratingWithState:&v31 objects:v42 count:16];
        if (!v26)
        {
          break;
        }
      }
    }
  }

  a1 = v23;
  if (v5)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v20 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#cltr,country code list is the same. Not clearing the supported region flag.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956940();
    }
  }

  else
  {
LABEL_44:
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v21 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#cltr,country code list has changed. Clearing the supported region flag.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101956A1C();
    }

    if (*(a1 + 3921) == 1)
    {
      *(a1 + 3921) = 0;
    }
  }

  result = v3;
  *(a1 + 3960) = result;
  return result;
}

uint64_t sub_1008539D0(uint64_t a1)
{
  *a1 = off_102476FD8;
  v2 = *(a1 + 4288);
  if (v2)
  {
    sub_1017363F0(v2);
  }

  v3 = *(a1 + 4408);
  if (v3)
  {
    [v3 invalidate];

    *(a1 + 4408) = 0;
  }

  v4 = *(a1 + 3968);
  *(a1 + 3968) = 0;
  if (v4)
  {
    (*(a1 + 3976))();
  }

  (*(*a1 + 448))(a1);
  sub_100733E10(*(a1 + 3936));

  sub_10025CAF4((a1 + 4000));
  sub_100678FA8(a1 + 4424);
  v5 = *(a1 + 4360);
  if (v5)
  {
    *(a1 + 4368) = v5;
    operator delete(v5);
  }

  sub_100857898((a1 + 4344), 0);
  v6 = *(a1 + 4336);
  *(a1 + 4336) = 0;
  if (v6)
  {
    operator delete();
  }

  sub_10085784C((a1 + 4288), 0);
  nullsub_34(a1 + 4040);
  sub_100CE1E30(a1 + 4000);
  v7 = *(a1 + 3968);
  *(a1 + 3968) = 0;
  if (v7)
  {
    (*(a1 + 3976))();
  }

  v8 = *(a1 + 3912);
  *(a1 + 3912) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_1006F7EA8((a1 + 3880), 0);
  sub_1006F7EA8((a1 + 3872), 0);
  sub_100857568(a1 + 456);
  *a1 = off_1024B1DF8;
  sub_10120BB38(a1 + 48);
  sub_100678FA8(a1 + 16);
  return a1;
}

void sub_100853BA0(uint64_t a1)
{
  sub_1008539D0(a1);

  operator delete();
}

double sub_100853BD8(uint64_t a1)
{
  *(a1 + 3552) = 0xFFFF;
  *(a1 + 3556) = 0u;
  __asm { FMOV            V2.2D, #-1.0 }

  *(a1 + 3572) = xmmword_101C75BF0;
  *(a1 + 3588) = _Q2;
  *(a1 + 3604) = _Q2;
  *(a1 + 3620) = _Q2;
  *(a1 + 3636) = 0;
  *(a1 + 3640) = 0xBFF0000000000000;
  *(a1 + 3648) = 0u;
  *(a1 + 3664) = 0;
  *(a1 + 3668) = 0xBFF0000000000000;
  *(a1 + 3676) = 0x7FFFFFFF;
  *(a1 + 3680) = 0;
  *(a1 + 3696) = 0;
  *(a1 + 3688) = 0;
  *(a1 + 3704) = 0;
  sub_100D6B030(a1 + 456);
  sub_10120BB3C(a1 + 48);
  v8 = *(a1 + 4288);
  if (v8)
  {

    return sub_1017363F0(v8);
  }

  return result;
}

uint64_t sub_100853C88(uint64_t a1, uint64_t a2, double a3)
{
  LODWORD(result) = sub_100D6F154(a1 + 456, a2, a3);
  if (*(a2 + 20) > 0.0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100853CBC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 3912);
  if (result)
  {
    return sub_101051070(result, a2);
  }

  return result;
}

BOOL sub_100853CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 544);
  if (v4 > 0.0)
  {
    *(a2 + 28) = *(a4 + 28);
    *(a3 + 316) = *(a4 + 476);
    *(a3 + 312) = *(a4 + 472);
    *(a3 + 384) = v4;
    *(a3 + 360) = *(a4 + 520);
    *(a3 + 368) = *(a4 + 528);
    *(a3 + 624) = *(a4 + 784);
    *(a3 + 496) = *(a4 + 656);
  }

  return v4 > 0.0;
}

void sub_100853D2C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    v5 = sub_10000B1F8();
    *buf = 1;
    *buf = sub_10001A6B0(v5, buf);
    sub_100D714B4(a1 + 456, buf, a3);
    v6 = *(a1 + 3912);
    if (v6)
    {
      v7 = *a3;
      if (*(a3 + 8) != 73 && (*a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v7 > 0.0)
      {
        *buf = *a3;
        *&buf[16] = *(a3 + 16);
        sub_10104DED0(v6, buf);
      }

      if (qword_1025D4600 != -1)
      {
        sub_101956104();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(a3 + 8);
        if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v10 = -1.0;
        }

        else
        {
          v10 = *a3;
        }

        v11 = sub_10000B1F8();
        *buf = 1;
        v12 = sub_10001A6B0(v11, buf);
        v13 = sub_10000B1F8();
        v14 = sub_100125220(v13);
        *buf = 67240960;
        *&buf[4] = v9;
        *&buf[8] = 2050;
        *&buf[10] = v10;
        *&buf[18] = 2050;
        v18 = v12;
        v19 = 2050;
        v20 = v14;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMM,CLLocationFilterController,Received NotificationWorkoutSessionOverride,fitnessSession,%{public}d,startTime,%{public}.1lf,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101956104();
        }

        sub_10002F470();
        v15 = sub_10000B1F8();
        sub_100125220(v15);
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionStateObserverNotification(const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }
  }
}

void sub_100853FF8(uint64_t a1, int *a2, __int128 *a3)
{
  if ((*a2 - 1) < 2)
  {
    v5 = sub_10000B1F8();
    *buf = 0;
    v6 = sub_10001A6B0(v5, buf);
    v59 = *&v6;
    v7 = a3[7];
    v56 = a3[6];
    v57 = v7;
    v58 = *(a3 + 16);
    v8 = a3[3];
    v52 = a3[2];
    v53 = v8;
    v9 = a3[5];
    v54 = a3[4];
    v55 = v9;
    v10 = a3[1];
    v50 = *a3;
    v51 = v10;
    v11 = *(a1 + 3872);
    if (v11)
    {
      sub_1009311A0(v11, &v50, v6);
    }

    v12 = *(a1 + 3880);
    if (v12)
    {
      sub_1009311A0(v12, &v50, v6);
    }

    v13 = vabdd_f64(v6, *(a1 + 4256));
    if (v13 >= 1.5)
    {
      goto LABEL_44;
    }

    if (*(a1 + 4248) != 0.0)
    {
      goto LABEL_11;
    }

    v14 = 0;
    if (v13 < 0.5 && vabdd_f64(v6, *(a1 + 4164)) < 1.5)
    {
      v15 = *(a1 + 4132);
      if (v15 < 0.0)
      {
LABEL_11:
        v14 = 0;
        goto LABEL_26;
      }

      v14 = v15 + *(a1 + 4140) * -2.0 < 0.0;
    }

LABEL_26:
    if (v50 <= 0x38)
    {
      if (((1 << v50) & 0x20000000398) != 0)
      {
        LODWORD(v50) = 5;
LABEL_38:
        DWORD1(v50) = 2;
        goto LABEL_39;
      }

      if (((1 << v50) & 0x110000000000020) != 0)
      {
        goto LABEL_38;
      }

      if (((1 << v50) & 0xC00) != 0)
      {
        if (!v14)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    if (v50 == 2)
    {
      v20 = 11;
    }

    else
    {
      if (v50 != 1)
      {
        goto LABEL_39;
      }

      v20 = 10;
    }

    LODWORD(v50) = v20;
    if (v14)
    {
      goto LABEL_38;
    }

LABEL_39:
    if (qword_1025D4770 != -1)
    {
      sub_101956098();
    }

    v21 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a3;
      v23 = *(a3 + 1);
      *buf = 67241216;
      *&buf[4] = v22;
      v73 = 1026;
      *v74 = v23;
      *&v74[4] = 1026;
      *&v74[6] = v50;
      LOWORD(v75) = 1026;
      *(&v75 + 2) = DWORD1(v50);
      HIWORD(v75) = 1026;
      LODWORD(v76) = v14;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "In vehicle detected Adjusting motion state,type,%{public}d,confidence,%{public}d,to type,%{public}d,confidence,%{public}d,isSpeedZero,%{public}d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_101956098();
      }

      v39 = *a3;
      v40 = *(a3 + 1);
      v60 = 67241216;
      v61 = v39;
      v62 = 1026;
      v63 = v40;
      v64 = 1026;
      v65 = v50;
      v66 = 1026;
      v67 = DWORD1(v50);
      v68 = 1026;
      LODWORD(v69) = v14;
      v41 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionNotification(const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v41);
      if (v41 != buf)
      {
        free(v41);
      }
    }

LABEL_44:
    if (*(a1 + 4272) == 1 && v50 && (v24 = v6 - *(a1 + 4264), v24 >= 0.0) && v24 < 10.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_101956098();
      }

      v25 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v26 = v50;
        v27 = sub_10000B1F8();
        v28 = sub_100125220(v27);
        *buf = 67240704;
        *&buf[4] = v26;
        v73 = 2050;
        *v74 = v6;
        *&v74[8] = 2050;
        v75 = v28;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Going to sleep. Not providing motion state, %{public}d, to the location KF,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019573DC(&v50, v6);
      }
    }

    else
    {
      sub_10120BB80(a1 + 48, &v59, &v50, &v50 + 1);
      v29 = sub_10000B1F8();
      *buf = 1;
      *buf = sub_10001A6B0(v29, buf);
      sub_1000DBA30(a1 + 456, buf, &v50);
      v30 = *(a1 + 3912);
      if (v30)
      {
        (*(*v30 + 64))(v30, &v59, &v50);
        if (qword_1025D4600 != -1)
        {
          sub_101956104();
        }

        v31 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v32 = v50;
          v33 = DWORD1(v50);
          v34 = HIDWORD(v50);
          v35 = v51;
          v36 = v59;
          v37 = sub_10000B1F8();
          v38 = sub_100125220(v37);
          *buf = 67241472;
          *&buf[4] = v32;
          v73 = 1026;
          *v74 = v33;
          *&v74[4] = 1026;
          *&v74[6] = v34;
          LOWORD(v75) = 1026;
          *(&v75 + 2) = v35;
          HIWORD(v75) = 2050;
          v76 = v36;
          v77 = 2050;
          v78 = v38;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "CLMM, MotionState,type,%{public}d,confidence,%{public}d,mountedState,%{public}d,mountedConfidence,%{public}d,now,%{public}.3f,propagation_us,%{public}.3f", buf, 0x2Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101956104();
          }

          v42 = v50;
          v43 = DWORD1(v50);
          v44 = HIDWORD(v50);
          v45 = v51;
          v46 = v59;
          v47 = sub_10000B1F8();
          v48 = sub_100125220(v47);
          v60 = 67241472;
          v61 = v42;
          v62 = 1026;
          v63 = v43;
          v64 = 1026;
          v65 = v44;
          v66 = 1026;
          v67 = v45;
          v68 = 2050;
          v69 = v46;
          v70 = 2050;
          v71 = v48;
          v49 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMotionNotification(const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v49);
          if (v49 != buf)
          {
            free(v49);
          }
        }
      }
    }

    return;
  }

  if (*a2)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_FAULT))
    {
      v19 = *a2;
      *buf = 67240192;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "#Warning, Fusion Controller, received unhandled motion notification %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019575E8(a2);
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_101957038();
    }

    v16 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning, Fusion Controller, unexpected kNotificationMovementCoarse", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195750C();
    }
  }
}

uint64_t sub_100854768(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result + 4096;
  if ((*(result + 4273) & 1) == 0)
  {
    v5 = result;
    if (qword_1025D4600 != -1)
    {
      sub_1019578A4();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(v5 + 4328);
      v8 = *a3;
      v9 = a3[1];
      LODWORD(v14) = 67240704;
      HIDWORD(v14) = v7;
      v15 = 1026;
      v16 = v8;
      v17 = 1026;
      v18 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "priorSignalEnvironment,%{public}d,newSignalEnvironment,%{public}d,fidelity,%{public}d", &v14, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101957CF0();
    }

    sub_100E0BA44(v5 + 4304, *a3);
    v10 = *(v5 + 3912);
    if (v10)
    {
      sub_10001AB38(v10, (*(v3 + 223) & 1) == 0);
    }

    *(v5 + 4276) = *a3;
    v11 = sub_10000B1F8();
    LODWORD(v14) = 1;
    v14 = sub_10001A6B0(v11, &v14);
    sub_100D716F8(v5 + 456, &v14, *a3);
    v12 = *(v5 + 3872);
    if (v12)
    {
      sub_100931340(v12, *a3);
    }

    v13 = *(v5 + 3880);
    if (v13)
    {
      sub_100931340(v13, *a3);
    }

    result = *(v5 + 3912);
    if (result)
    {
      return sub_10104DBF0(result, *a3);
    }
  }

  return result;
}

void sub_1008548FC(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v6 = *(a1 + 3872);
  if (v6)
  {
    sub_100930974(v6, 0xFFFFFFFFLL, a2, a3);
  }

  v7 = *(a1 + 3880);
  if (v7)
  {

    sub_100930974(v7, 0xFFFFFFFFLL, a2, a3);
  }
}

void sub_100854978(uint64_t a1, int *a2)
{
  v3 = sub_100072010(a2);
  if (CFEqual(v3, kCTRegistrationStatusChangedNotification))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019578A4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "device lost registration - no longer has active cell", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101957E04();
    }
  }

  else
  {
    v5 = sub_100072010(a2);
    if (CFEqual(v5, kCTCallStatusChangeNotification))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019578A4();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "device on active call - no longer has active cell", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101957EE0();
      }
    }
  }
}

void sub_100854AB8(uint64_t a1, uint64_t *a2, void **a3, _BYTE *a4, void *a5)
{
  if (!off_1025D53B8)
  {
    operator new();
  }

  if (*(off_1025D53B8 + 1))
  {
    v10 = 16.6666;
    if (*off_1025D53B8)
    {
      v10 = 50.0;
    }
  }

  else
  {
    v10 = 16.6666;
  }

  if (*a3 >= 0.0 && *a3 < v10)
  {
    v12 = sub_10000B1F8();
    v19 = 0;
    *(a1 + 4256) = sub_10001A6B0(v12, &v19);
    *(a1 + 4248) = *a3;
    if (qword_1025D4600 != -1)
    {
      sub_101956104();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v14 = *a3;
      v15 = sub_10000B1F8();
      v19 = 0;
      v16 = sub_10001A6B0(v15, &v19);
      v17 = sub_10000B1F8();
      v18 = sub_100125220(v17);
      v19 = 134218496;
      v20 = v14;
      v21 = 2048;
      v22 = v16;
      v23 = 2048;
      v24 = v18;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "LocationController,updateVehicleSpeedFilter,vehicleSpeed,%.3f,now,%.3f,propagation_us,%.3f", &v19, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019582C0(a3);
    }
  }

  sub_10109A454(a1 + 4040, a2, a3, a4, a5);
}

void sub_100854CBC(uint64_t a1, void *a2)
{
  v4 = sub_10000B1F8();
  LODWORD(v6) = 1;
  v6 = sub_10001A6B0(v4, &v6);
  sub_100D71E5C(a1 + 456, &v6, a2);
  *(a1 + 4280) = a2;
  if (qword_1025D4650 != -1)
  {
    sub_1019583F0();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v6) = 67240192;
    HIDWORD(v6) = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLMM,isAirborne,%{public}d", &v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101958418(a2);
  }
}

void sub_100854DCC(uint64_t a1)
{
  *(a1 + 3985) = 0;
  if (qword_1025D41D0 != -1)
  {
    sub_101956624();
  }

  v1 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "#cltr,backoff timer fired,allow region support queries.", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101958504();
  }
}

id sub_100854E64(uint64_t a1, double a2)
{
  if (!*(a1 + 3992))
  {
    v4 = [objc_msgSend(*(a1 + 8) "silo")];
    *(a1 + 3992) = v4;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10085504C;
    v10[3] = &unk_102449A78;
    v10[4] = a1;
    [v4 setHandler:v10];
  }

  if (a2 > 0.0 && a2 < 1.79769313e308)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v8 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v12 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#cltr,backoff timer set for %lf seconds", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019586BC(a2);
    }

    v7 = 1;
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956170();
    }

    v6 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#cltr,backoff timer disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019585E0();
    }

    v7 = 0;
    a2 = 1.79769313e308;
  }

  result = [*(a1 + 3992) setNextFireDelay:a2];
  *(a1 + 3985) = v7;
  return result;
}

void sub_10085507C(uint64_t a1)
{
  if (*(a1 + 3992))
  {
    (*(*a1 + 456))(a1, 1.79769313e308);
    v2 = *(a1 + 3992);
    *(a1 + 3928) = 0x4082C00000000000;
    *(a1 + 3985) = 0;
    if (v2)
    {

      *(a1 + 3992) = 0;
    }
  }

  else
  {
    *(a1 + 3928) = 0x4082C00000000000;
    *(a1 + 3985) = 0;
  }
}

void sub_100855110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1025D41D0 != -1)
  {
    sub_101956624();
  }

  v5 = qword_1025D41D8;
  if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134349056;
    v7 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#cltr,Entered handler,flags,%{public}lu", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101958AE8();
  }

  *(*(*(a1 + 32) + 8) + 24) |= a3;
}

void sub_100855204(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(*(v4 + 8) "silo")];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008552A0;
  block[3] = &unk_102477248;
  v6 = *(a1 + 32);
  block[4] = a2;
  block[5] = v6;
  block[6] = v4;
  dispatch_async(v5, block);
}

void sub_1008552A0(void *a1)
{
  v1 = a1[6];
  *(v1 + 3984) = 0;
  v2 = (a1 + 4);
  if (a1[4])
  {
    (*(*v1 + 456))(v1, *(v1 + 3928));
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v3 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_ERROR))
    {
      v4 = [*v2 code];
      v5 = [*v2 domain];
      v6 = [*v2 localizedDescription];
      v7 = *(v1 + 3928);
      v13 = 134349827;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      v17 = 2113;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#cltr,RunningTrackFlags query,error:%{public}lld (%{public}@) %{private}@,setting backoff to,%.0lf", &v13, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101958BD8();
    }

    *(v1 + 3985) = 1;
    v8 = *(v1 + 3928) + *(v1 + 3928);
    if (v8 > 86400.0)
    {
      v8 = 86400.0;
    }

    *(v1 + 3928) = v8;
  }

  else
  {
    (*(*v1 + 448))(v1);
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v10 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1[5] + 8) + 24);
      v13 = 134349056;
      v14 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#cltr,Entered completionHandler,combinedAvailabilityFlags,%{public}lu", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101958D38();
    }

    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v12 = 256;
    }

    else
    {
      v12 = 257;
    }

    *(v1 + 3920) = v12;
    (*(*v1 + 472))(v1);
  }

  sub_100733E10(*(v1 + 3936));
  sub_10025CAF4((v1 + 4000));
}

void sub_100855568(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 3968))
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v4 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      v7 = *(a2 + 12);
      v9 = 134349569;
      v10 = v5;
      v11 = 1025;
      v12 = v6;
      v13 = 1025;
      v14 = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#cltr,TrackRunHint,CLLocationFilterController,setTrackRunHint,mctime,%{public}.1lf,lane,%{private}d,notification,%{private}d", &v9, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101958FF8();
    }

    sub_10129DA04(*(a1 + 3968), a2);
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v8 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#cltr,Warning,TrackRunHint,CLLocationFilterController not instantiated", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959104();
    }
  }
}

void sub_1008556E4(_BYTE *a1)
{
  v1 = a1[3921] == 1 && a1[3920] == 0;
  if (a1[3923] == 1)
  {
    v2 = a1[3922];
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 | v2;
  if (v1 | v2)
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v4 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109376;
      v8 = v1;
      v9 = 1024;
      v10 = v2 & 1;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#cltr,disabling trackrun,is_unsupported_region,%d,is_unsupported_phone,%d", &v7, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019592E0(v1, (v2 & 1));
    }
  }

  else
  {
    if (qword_1025D41D0 != -1)
    {
      sub_101956624();
    }

    v5 = qword_1025D41D8;
    if (os_log_type_enabled(qword_1025D41D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 67109376;
      v8 = 0;
      v9 = 1024;
      v10 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#cltr,enabling trackrun,is_unsupported_region,%d,is_unsupported_phone,%d", &v7, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019591E0();
    }
  }

  v6 = sub_100C5B6C4();
  sub_100C5BF78(v6, !v3);
}

void sub_10085589C(uint64_t a1, double a2)
{
  if (*(a1 + 4296) == 1)
  {
    v2 = *(a1 + 4288);
    if (v2)
    {
      sub_101743F14(v2, a2);
    }
  }
}

uint64_t sub_1008558BC(uint64_t result, uint64_t a2)
{
  if (*(result + 4296) == 1)
  {
    v2 = *(result + 4288);
    if (v2)
    {
      sub_1008578E4(v3, a2);
      sub_10173D190(v2, v3);
      return sub_100679F34(v3);
    }
  }

  return result;
}

void sub_100855940(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100679F34(va);
  _Unwind_Resume(a1);
}

void sub_10085595C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 4296) == 1)
  {
    v4 = *(a1 + 4288);
    if (v4)
    {
      v7 = v2;
      v8 = v3;
      v5 = *a2;
      v6 = *(a2 + 4);
      sub_10173CDB8(v4, &v5);
    }
  }
}

void sub_1008559AC(uint64_t a1, int *a2, uint64_t a3)
{
  if (qword_1025D46B0 != -1)
  {
    sub_101956260();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    *buf = 67240192;
    v18 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,notification,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019593F0(a2);
  }

  if (*(a1 + 3912))
  {
    if (*a2 == 2)
    {
      sub_10004FD18(v16);
      if (!sub_100185ADC(a3, "MapMatcherConfig", v16))
      {
        if (qword_1025D46B0 != -1)
        {
          sub_101956350();
        }

        v8 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,map matcher config not available", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101956DC4(buf);
          LOWORD(v15[0]) = 0;
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMobileAssetNotification(const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }
      }

      sub_10104FC3C(*(a1 + 3912), v16);
      sub_10004FD18(v15);
      if (*(a1 + 4336) && sub_100185ADC(a3, "LCFusionCarPlayConfig", v15))
      {
        sub_1007581B4(*(a1 + 4336), v15);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_101956104();
        }

        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "CLLocationController,MA-OTA,LCFusionCarPlayConfig config not available", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195612C(buf);
          v13 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLLocationControllerFusion::feedMobileAssetNotification(const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v13);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      sub_100005DA4(v15);
      sub_100005DA4(v16);
    }

    else
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101956350();
      }

      v10 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
      {
        v11 = *a2;
        *buf = 67240192;
        v18 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,invalid notification,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019594E4(a2);
      }
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101956350();
    }

    v9 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,platform does not support MM", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019595E0();
    }
  }
}

void sub_100855E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

id sub_100855E38(void *a1, int a2)
{
  v4 = a1[27];
  if (v4)
  {
    sub_100FF7AA8(v4, a2);
  }

  v5 = a1[72];
  if (v5)
  {
    sub_100FF7AA8(v5, a2);
  }

  result = a1[75];
  if (result)
  {

    return sub_100FF7AA8(result, a2);
  }

  return result;
}

void sub_100855EA4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48) > 0)
  {
    v2 = *(a2 + 96);
  }

  else
  {
    v2 = 0;
  }

  sub_100D722B0((a1 + 456), v2);
}

uint64_t sub_100855ED4(uint64_t a1)
{
  v1 = *(a1 + 4336);
  if (v1)
  {
    return *(v1 + 48);
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019596C4();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Object pointer does not exist fLCFusionAccessoryConditions", v4, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019596D8();
  }

  return 0x7FFFFFFFLL;
}

uint64_t sub_100855F7C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 672);
  *a2 = *(result + 664);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100855F9C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = *a3;
  v5 = a3[1];
  *(a1 + 8) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = 0xFFFF;
  *(a1 + 20) = 0u;
  *(a1 + 36) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 52) = _Q0;
  *(a1 + 68) = _Q0;
  *(a1 + 84) = _Q0;
  v11 = _Q0;
  *(a1 + 100) = 0;
  *(a1 + 104) = 0xBFF0000000000000;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0xBFF0000000000000;
  *(a1 + 140) = 0x7FFFFFFF;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 180) = 0;
  *(a1 + 172) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 184) = _Q0;
  *(a1 + 200) = 0xBFF0000000000000;
  *(a1 + 208) = 0u;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = 0;
  sub_100856684(a1 + 256);
  *(a1 + 1160) = off_1024DE5F8;
  *(a1 + 1168) = v11;
  *(a1 + 1200) = xmmword_101C75BF0;
  *(a1 + 1216) = xmmword_101C75BF0;
  *(a1 + 1232) = v11;
  *(a1 + 1248) = v11;
  *(a1 + 1264) = 0xBFF0000000000000;
  *(a1 + 1276) = 0;
  *(a1 + 1284) = 0;
  *(a1 + 1288) = off_1024DE5F8;
  *(a1 + 1296) = v11;
  *(a1 + 1328) = xmmword_101C75BF0;
  *(a1 + 1344) = xmmword_101C75BF0;
  *(a1 + 1360) = v11;
  *(a1 + 1376) = v11;
  *(a1 + 1392) = 0xBFF0000000000000;
  *(a1 + 1404) = 0;
  *(a1 + 1412) = 0;
  *(a1 + 1416) = off_1024DE5F8;
  *(a1 + 1424) = v11;
  *(a1 + 1456) = xmmword_101C75BF0;
  *(a1 + 1472) = xmmword_101C75BF0;
  *(a1 + 1488) = v11;
  *(a1 + 1504) = v11;
  *(a1 + 1520) = 0xBFF0000000000000;
  *(a1 + 1532) = 0u;
  sub_100856740(a1 + 1552);
  *(a1 + 2216) = 0u;
  *(a1 + 2232) = 0;
  *(a1 + 2200) = 0u;
  *(a1 + 2184) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2224) = 0xBFF0000000000000;
  *(a1 + 2240) = xmmword_101C75BF0;
  *(a1 + 2256) = v11;
  *(a1 + 2280) = 0u;
  *(a1 + 2272) = a1 + 2280;
  *(a1 + 2296) = 0xBFF0000000000000;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0;
  *(a1 + 2344) = 0xBFF0000000000000;
  *(a1 + 2352) = 0xBFF0000000000000;
  *(a1 + 2376) = 0;
  *(a1 + 2360) = 0u;
  sub_10018D404(a1 + 2384);
  sub_100680604(a1 + 2424);
  *(a1 + 2632) = 0x600000006;
  *(a1 + 2640) = 0;
  *(a1 + 2648) = 0u;
  *(a1 + 2664) = 0xBFF0000000000000;
  *(a1 + 2672) = v11;
  *(a1 + 2688) = 0u;
  *(a1 + 2704) = 0u;
  *(a1 + 2720) = 0x3FE0000000000000;
  *(a1 + 2728) = 0u;
  *(a1 + 2747) = 0;
  *(a1 + 2740) = 0;
  *(a1 + 2760) = 0xBFF0000000000000;
  *(a1 + 2768) = 0xBFF0000000000000;
  *(a1 + 2776) = 0;
  *(a1 + 2784) = 0xBFF0000000000000;
  *(a1 + 2792) = 0;
  *(a1 + 2800) = 0;
  *(a1 + 2808) = 0u;
  *(a1 + 2824) = 0xBFF0000000000000;
  *(a1 + 2832) = 0;
  *(a1 + 2840) = 0;
  *(a1 + 2848) = v11;
  *(a1 + 2864) = xmmword_101C75BF0;
  *(a1 + 2880) = 0;
  *(a1 + 2884) = 0;
  *(a1 + 2888) = 0x402C000000000000;
  *(a1 + 2904) = 0;
  *(a1 + 2896) = 0;
  *(a1 + 2912) = 0xBFF0000000000000;
  *(a1 + 2928) = 0u;
  *(a1 + 2944) = 0x3E112E0BE826D695;
  *(a1 + 2920) = a1 + 2928;
  *(a1 + 2952) = 0;
  sub_10085771C(a1 + 2960, a2);
  *(a1 + 2992) = 0;
  sub_1008F2D4C(a1 + 3000);
  operator new();
}

void sub_100856520(_Unwind_Exception *a1)
{
  sub_1003C93BC(v1 + 3048, *(v1 + 3056));
  sub_10067938C(v1 + 2960);
  sub_100857280(v1 + 2920, *v6);
  v8 = *v5;
  if (*v5)
  {
    *(v1 + 2648) = v8;
    operator delete(v8);
  }

  sub_1003C93BC(v1 + 2424, *(v1 + 2432));
  sub_100574ED8(v4 + 2040, *(v1 + 2280));
  v9 = *(v1 + 2216);
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = *(v1 + 2200);
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = *(v1 + 2184);
  if (v11)
  {
    sub_100008080(v11);
  }

  sub_10085662C(v3);
  v12 = *(v1 + 2128);
  if (v12)
  {
    sub_100008080(v12);
  }

  sub_1008572E0(v4 + 24);
  sub_10020AB0C(v2);
  sub_100857478(v4 - 8, *(v1 + 232));
  v13 = *(v1 + 216);
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(v1 + 8);
  if (v14)
  {
    sub_100008080(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10085662C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10001423C((v1 + 296));
    sub_100856AD8(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_100856684(uint64_t a1)
{
  __asm { FMOV            V0.2D, #-1.0 }

  *a1 = _Q0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = off_1024DE5F8;
  *(a1 + 72) = _Q0;
  *(a1 + 104) = xmmword_101C75BF0;
  *(a1 + 120) = xmmword_101C75BF0;
  *(a1 + 136) = _Q0;
  *(a1 + 152) = _Q0;
  *(a1 + 168) = 0xBFF0000000000000;
  *(a1 + 180) = 0;
  *(a1 + 188) = 0;
  sub_100856740(a1 + 192);
  *(a1 + 808) = 0x3FF0000000000000;
  *(a1 + 816) = 0;
  *(a1 + 824) = -1;
  *(a1 + 832) = 0xBFF0000000000000;
  *(a1 + 840) = 0;
  *(a1 + 845) = 0;
  sub_10018D404(a1 + 856);
  *(a1 + 896) = 0;
  return a1;
}

uint64_t sub_100856740(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 304) = xmmword_101C75BF0;
  *(a1 + 320) = 0xBFF0000000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0x200000000;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 368) = _Q1;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0xBFF0000000000000;
  *(a1 + 432) = _Q1;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  sub_10018D404(a1 + 512);
  *(a1 + 552) = 0xBFF0000000000000;
  *(a1 + 560) = 0;
  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  *(a1 + 584) = 0xBFF0000000000000;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0xBFF0000000000000;
  return a1;
}

void sub_100856864(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024772B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1008568C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1008568C8(a1, *a2);
    sub_1008568C8(a1, a2[1]);
    sub_100224858(a2 + 5);

    operator delete(a2);
  }
}

uint64_t sub_100856924(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 8) = 0xBFF0000000000000;
  sub_100856A2C(a1 + 16);
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 344) = 0xBFF0000000000000;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 352) = _Q1;
  *(a1 + 368) = _Q1;
  *(a1 + 384) = xmmword_101C76220;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0xBFF0000000000000;
  *(a1 + 448) = xmmword_101C76220;
  *(a1 + 464) = xmmword_101C75BF0;
  *(a1 + 480) = 0xBFF0000000000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0xBFF0000000000000;
  *(a1 + 512) = xmmword_101C76220;
  *(a1 + 528) = xmmword_101C75BF0;
  *(a1 + 544) = xmmword_101C75BF0;
  *(a1 + 560) = 0xBFF0000000000000;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0xBFF0000000000000;
  *(a1 + 584) = a2;
  *(a1 + 608) = 0;
  *(a1 + 592) = 0u;
  sub_10000EC00(&__str, "CumSum");
  std::string::operator=((a1 + 272), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100856A10(_Unwind_Exception *a1)
{
  sub_10001423C(v2);
  sub_100856AD8(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_100856A2C(uint64_t a1)
{
  *a1 = 1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 72) = 0;
  *(a1 + 24) = xmmword_101C75BF0;
  *(a1 + 40) = _Q0;
  *(a1 + 56) = _Q0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0xBFF0000000000000;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 208;
  *(a1 + 216) = a1 + 208;
  *(a1 + 248) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_10000EC00((a1 + 256), "NoLabel");
  return a1;
}

uint64_t sub_100856AD8(uint64_t a1)
{
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  sub_1001FB750((a1 + 208));
  return a1;
}

void *sub_100856B80(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102477308;
  sub_100856C5C((a1 + 3), a2);
  return a1;
}

void sub_100856BFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102477308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100856C5C(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  sub_100856CC8(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100856CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100856CC8(uint64_t a1, const std::string *a2)
{
  *a1 = 1;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 72) = 0;
  *(a1 + 24) = xmmword_101C75BF0;
  *(a1 + 40) = _Q0;
  *(a1 + 56) = _Q0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0xBFF0000000000000;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 208;
  *(a1 + 216) = a1 + 208;
  *(a1 + 248) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_10000EC00((a1 + 256), "NoLabel");
  std::string::operator=((a1 + 256), a2);
  return a1;
}

void sub_100856D78(_Unwind_Exception *a1)
{
  if (*(v2 + 279) < 0)
  {
    operator delete(*(v2 + 256));
  }

  sub_1001FB750(v1);
  _Unwind_Resume(a1);
}

void *sub_100856E10(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102477308;
  sub_100856E6C((a1 + 3), a2);
  return a1;
}

uint64_t sub_100856E6C(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  sub_100856CC8(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100856EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100856F44(void *a1, char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102477308;
  sub_100856FA0((a1 + 3), a2);
  return a1;
}

uint64_t sub_100856FA0(uint64_t a1, char *a2)
{
  sub_10000EC00(&__p, a2);
  sub_100856CC8(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100856FF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10085700C(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 32 * (v4 - v5) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = sub_1008570AC(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v7 + v3[4];
  }

  v9 = *a2;
  *(*(v5 + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8) = *a2;
  if (*(&v9 + 1))
  {
    atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
    v7 = v3[5];
  }

  v3[5] = v7 + 1;
  return result;
}

void *sub_1008570AC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_10045E858(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10045E430(a1, &v10);
}

void sub_100857234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100857280(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100857280(a1, *a2);
    sub_100857280(a1, a2[1]);
    v4 = a2[57];
    if (v4)
    {
      sub_100008080(v4);
    }

    operator delete(a2);
  }
}

uint64_t sub_1008572E0(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_100857318((a1 + 16));
  return a1;
}

uint64_t sub_100857318(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x1A];
    v7 = *v6;
    v8 = *v6 + 152 * (v5 % 0x1A);
    v9 = v2[(a1[5] + v5) / 0x1A] + 152 * ((a1[5] + v5) % 0x1A);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
          v7 = *v6;
        }

        v8 += 152;
        if (v8 - v7 == 3952)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 13;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 26;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_1003EE22C(a1);
}

void sub_100857478(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100857478(a1, *a2);
    sub_100857478(a1, a2[1]);
    sub_1008572E0((a2 + 5));

    operator delete(a2);
  }
}

uint64_t sub_100857568(uint64_t a1)
{
  sub_1003C93BC(a1 + 3048, *(a1 + 3056));
  sub_10067938C(a1 + 2960);
  sub_100857280(a1 + 2920, *(a1 + 2928));
  v2 = *(a1 + 2640);
  if (v2)
  {
    *(a1 + 2648) = v2;
    operator delete(v2);
  }

  sub_1003C93BC(a1 + 2424, *(a1 + 2432));
  sub_100574ED8(a1 + 2272, *(a1 + 2280));
  v3 = *(a1 + 2216);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 2200);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 2184);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_10085662C((a1 + 2168));
  v6 = *(a1 + 2128);
  if (v6)
  {
    sub_100008080(v6);
  }

  sub_1008572E0(a1 + 256);
  sub_10020AB0C((a1 + 248));
  sub_100857478(a1 + 224, *(a1 + 232));
  v7 = *(a1 + 216);
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    sub_100008080(v8);
  }

  return a1;
}

void sub_100857670(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_10045EA08(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10085771C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1008577B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10085784C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_101739E0C();

    operator delete();
  }

  return result;
}

uint64_t sub_100857898(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100905CF8();

    operator delete();
  }

  return result;
}

uint64_t sub_1008578E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10085797C(int a1@<W8>, float a2@<S0>)
{
  *(v7 - 96) = a2;
  *(v7 - 92) = a1;
  *(v7 - 88) = 1026;
  *(v6 + 10) = v2;
  *(v7 - 82) = 2053;
  *(v6 + 16) = v3;
  *(v7 - 72) = 2053;
  *(v6 + 26) = v4;
  *(v7 - 62) = 2050;
  *(v6 + 36) = v5;
}

uint64_t sub_1008579E8()
{
  sub_10000EC00(byte_10265A750, "RoadAndBuildingPrecachingEnabled");
  __cxa_atexit(&std::string::~string, byte_10265A750, dword_100000000);
  sub_10000EC00(byte_10265A768, "RoadTilesRadiusInMetersHome");
  __cxa_atexit(&std::string::~string, byte_10265A768, dword_100000000);
  sub_10000EC00(byte_10265A780, "BuildingTilesRadiusInMetersHome");
  __cxa_atexit(&std::string::~string, byte_10265A780, dword_100000000);
  sub_10000EC00(byte_10265A798, "RunningTrackTilesRadiusInMetersHome");
  __cxa_atexit(&std::string::~string, byte_10265A798, dword_100000000);
  sub_10000EC00(byte_10265A7B0, "RoadTilesRadiusInMetersWork");
  __cxa_atexit(&std::string::~string, byte_10265A7B0, dword_100000000);
  sub_10000EC00(byte_10265A7C8, "BuildingTilesRadiusInMetersWork");
  __cxa_atexit(&std::string::~string, byte_10265A7C8, dword_100000000);
  sub_10000EC00(byte_10265A7E0, "RunningTrackTilesRadiusInMetersWork");
  __cxa_atexit(&std::string::~string, byte_10265A7E0, dword_100000000);
  sub_10000EC00(byte_10265A7F8, "RoadTilesRadiusInMetersSchool");
  __cxa_atexit(&std::string::~string, byte_10265A7F8, dword_100000000);
  sub_10000EC00(byte_10265A810, "BuildingTilesRadiusInMetersSchool");
  __cxa_atexit(&std::string::~string, byte_10265A810, dword_100000000);
  sub_10000EC00(byte_10265A828, "RunningTrackTilesRadiusInMetersSchool");
  __cxa_atexit(&std::string::~string, byte_10265A828, dword_100000000);
  sub_10000EC00(byte_10265A840, "PrecachingTileRefreshPeriodV2");
  __cxa_atexit(&std::string::~string, byte_10265A840, dword_100000000);
  sub_10000EC00(byte_10265A858, "PrecachingTileRefreshPeriodNPLOIAndTouristV2");
  __cxa_atexit(&std::string::~string, byte_10265A858, dword_100000000);
  sub_10000EC00(byte_10265A870, "PrecachingMinimumBatteryLevel");
  __cxa_atexit(&std::string::~string, byte_10265A870, dword_100000000);
  sub_10000EC00(byte_10265A888, "PrecachingMinimumBatteryLevelAggressiveMode");
  __cxa_atexit(&std::string::~string, byte_10265A888, dword_100000000);
  sub_10000EC00(byte_10265A8A0, "PrecachingXPCDownloadInterval");
  __cxa_atexit(&std::string::~string, byte_10265A8A0, dword_100000000);
  sub_10000EC00(byte_10265A8B8, "PrecachingDownloadSizePerSection");
  __cxa_atexit(&std::string::~string, byte_10265A8B8, dword_100000000);
  sub_10000EC00(byte_10265A8D0, "PrecachingUploadSizePerSection");
  __cxa_atexit(&std::string::~string, byte_10265A8D0, dword_100000000);
  sub_10000EC00(byte_10265A8E8, "PrecachingDownloadTimePerSection");
  __cxa_atexit(&std::string::~string, byte_10265A8E8, dword_100000000);
  sub_10000EC00(byte_10265A900, "UseInsideOutTileDownload");
  __cxa_atexit(&std::string::~string, byte_10265A900, dword_100000000);
  sub_10000EC00(byte_10265A918, "IsDiskIntensiveActivity");
  __cxa_atexit(&std::string::~string, byte_10265A918, dword_100000000);
  sub_10000EC00(byte_10265A930, "PrecachingAllowSignalEnvironmentMode");
  __cxa_atexit(&std::string::~string, byte_10265A930, dword_100000000);
  sub_10000EC00(byte_10265A948, "RoadTileDownloadRadiusSE");
  __cxa_atexit(&std::string::~string, byte_10265A948, dword_100000000);
  sub_10000EC00(byte_10265A960, "BuildingTileDownloadRadiusSE");
  __cxa_atexit(&std::string::~string, byte_10265A960, dword_100000000);
  sub_10000EC00(byte_10265A978, "RunningTrackTileDownloadRadiusSE");
  __cxa_atexit(&std::string::~string, byte_10265A978, dword_100000000);
  sub_10000EC00(byte_10265A990, "PrecachingAllowAggressiveSettingInTouristMode");
  __cxa_atexit(&std::string::~string, byte_10265A990, dword_100000000);
  sub_10000EC00(byte_10265A9A8, "RoadTileDownloadRadiusTouristSE");
  __cxa_atexit(&std::string::~string, byte_10265A9A8, dword_100000000);
  sub_10000EC00(byte_10265A9C0, "BuildingTileDownloadRadiusTouristSE");
  __cxa_atexit(&std::string::~string, byte_10265A9C0, dword_100000000);
  sub_10000EC00(byte_10265A9D8, "RunningTrackTileDownloadRadiusTouristSE");
  __cxa_atexit(&std::string::~string, byte_10265A9D8, dword_100000000);
  sub_10000EC00(byte_10265A9F0, "MaxSectionDownloadAllowedForTouristSE");
  __cxa_atexit(&std::string::~string, byte_10265A9F0, dword_100000000);
  sub_10000EC00(byte_10265AA08, "TimeWindowToCheckForMaxSectionDownloadForTouristSE");
  __cxa_atexit(&std::string::~string, byte_10265AA08, dword_100000000);
  sub_10000EC00(byte_10265AA20, "PrecachingAllowTouristMode");
  __cxa_atexit(&std::string::~string, byte_10265AA20, dword_100000000);
  sub_10000EC00(byte_10265AA38, "RoadTilesRadiusInMetersTourist");
  __cxa_atexit(&std::string::~string, byte_10265AA38, dword_100000000);
  sub_10000EC00(byte_10265AA50, "BuildingTilesRadiusInMetersTourist");
  __cxa_atexit(&std::string::~string, byte_10265AA50, dword_100000000);
  sub_10000EC00(byte_10265AA68, "RunningTrackTilesRadiusInMetersTourist");
  __cxa_atexit(&std::string::~string, byte_10265AA68, dword_100000000);
  sub_10000EC00(byte_10265AA80, "MaxLocationAgeForTouristMode");
  __cxa_atexit(&std::string::~string, byte_10265AA80, dword_100000000);
  sub_10000EC00(byte_10265AA98, "SectionsToDownloadPerXPCCall");
  __cxa_atexit(&std::string::~string, byte_10265AA98, dword_100000000);
  sub_10000EC00(byte_10265AAB0, "SectionsToDownloadPerXPCCallForTourist");
  __cxa_atexit(&std::string::~string, byte_10265AAB0, dword_100000000);
  sub_10000EC00(byte_10265AAC8, "SectionsToDownloadPerXPCCallForNPLOI");
  __cxa_atexit(&std::string::~string, byte_10265AAC8, dword_100000000);
  sub_10000EC00(byte_10265AAE0, "SectionsToDownloadPerXPCCallForSignalEnvironment");
  __cxa_atexit(&std::string::~string, byte_10265AAE0, dword_100000000);
  sub_10000EC00(byte_10265AAF8, "RoadTileDownloadRadiusNPLOI");
  __cxa_atexit(&std::string::~string, byte_10265AAF8, dword_100000000);
  sub_10000EC00(byte_10265AB10, "BuildingTileDownloadRadiusNPLOI");
  __cxa_atexit(&std::string::~string, byte_10265AB10, dword_100000000);
  sub_10000EC00(byte_10265AB28, "RunningTrackTileDownloadRadiusNPLOI");
  __cxa_atexit(&std::string::~string, byte_10265AB28, dword_100000000);
  sub_10000EC00(byte_10265AB40, "DistanceFromHomeForTouristModeMeters");
  __cxa_atexit(&std::string::~string, byte_10265AB40, dword_100000000);
  sub_10000EC00(byte_10265AB58, "NumDaysLookbackForWorkouts");

  return __cxa_atexit(&std::string::~string, byte_10265AB58, dword_100000000);
}

void sub_100858550(_Unwind_Exception *a1)
{
  v4 = *(v1 + 2048);
  *(v1 + 2048) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100B55830(v1 + 1856);
  v5 = *(v1 + 1848);
  *(v1 + 1848) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(v1 + 1767) < 0)
  {
    operator delete(*(v1 + 1744));
  }

  sub_1004D2C5C(v1);
  _Unwind_Resume(a1);
}

void sub_100858650(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_100858708;
  v6[3] = &unk_10246F808;
  v5 = *a2;
  v4 = a2[1];
  v6[4] = v2;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v3 async:v6];
  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_1008586F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100858708(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100858794(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_10085877C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100858794(uint64_t a1, uint64_t ***a2)
{
  *buf = 5;
  if (sub_10000608C(a1, buf, 1))
  {
    for (i = **a2; i != (*a2)[1]; i += 2)
    {
      if (qword_1025D4310 != -1)
      {
        sub_1019597F8();
      }

      v5 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *i;
        v7 = *(i + 2);
        *buf = 134349569;
        *&buf[4] = v6;
        *&buf[12] = 1025;
        *&buf[14] = v7;
        *&buf[18] = 1025;
        *&buf[20] = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "onCoarseElevation,startTime,%{public}f,ascended,%{private}d,source,%{private}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4310 != -1)
        {
          sub_1019597F8();
        }

        v10 = *i;
        v11 = *(i + 2);
        v15 = 134349569;
        v16 = v10;
        v17 = 1025;
        v18 = v11;
        v19 = 1025;
        v20 = 0;
        v12 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLOdometerNotifierCompanion::notifyCoarseElevation(std::shared_ptr<CLCoarseElevationVector>)", "%s\n", v12);
        if (v12 != buf)
        {
          free(v12);
        }
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      *&buf[16] = 0u;
      *buf = *i;
      v15 = 5;
      (*(*a1 + 152))(a1, &v15, buf, 0, 0xFFFFFFFFLL, 0);
      v8 = objc_autoreleasePoolPush();
      v9 = objc_alloc_init(ALActivityLog);
      [(ALActivityLog *)v9 setTimestamp:*i];
      [(ALActivityLog *)v9 setCoarseElevation:objc_alloc_init(ALCMCoarseElevation)];
      [(ALCMCoarseElevation *)[(ALActivityLog *)v9 coarseElevation] setElevationAscended:*(i + 2)];
      [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
      objc_autoreleasePoolPop(v8);
    }
  }

  else
  {
    v13 = sub_100023ED4(0);
    if (v13 && (*(*(v13 + 72) + 16))())
    {
      v14 = sub_100023ED4(0);
      (*(*(v14 + 72) + 40))();
    }
  }
}

void sub_100858B00(uint64_t a1, int a2)
{
  if (qword_1025D4390 != -1)
  {
    sub_101959820();
  }

  v4 = qword_1025D4398;
  if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 945);
    v7[0] = 67240448;
    v7[1] = v5;
    v8 = 1026;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Update location authorization, current, %{public}d, new, %{public}d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101959834();
  }

  if (*(a1 + 945) != a2)
  {
    v6 = *(a1 + 1840);
    *(a1 + 1840) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    sub_100678564();
  }
}

uint64_t sub_100858E30(uint64_t a1)
{
  *a1 = off_102477418;
  *(a1 + 112) = &off_102477538;
  sub_1004D3510(a1);
  v2 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 2048);
  *(a1 + 2048) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
    v5 = *(a1 + 2048);
    *(a1 + 2048) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  sub_100B55830(a1 + 1856);
  v6 = *(a1 + 1848);
  *(a1 + 1848) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 1840);
  *(a1 + 1840) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(a1 + 1767) < 0)
  {
    operator delete(*(a1 + 1744));
  }

  return sub_1004D2C5C(a1);
}

void sub_100858FEC(uint64_t a1)
{
  sub_100858E30(a1);

  operator delete();
}

void sub_100859024(uint64_t a1)
{
  sub_100858E30(a1 - 112);

  operator delete();
}

_BYTE *sub_100859060(_BYTE *result)
{
  if ((result[1040] & 1) == 0)
  {
    v1 = result;
    if (qword_1025D4390 != -1)
    {
      sub_101959820();
    }

    v2 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Enable GPS; Start GPS subscription", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959948();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101959A34();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#wigo,on,OdometerNotifierCompanion", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101959A5C();
    }

    AnalyticsSendEventLazy();
    [*(*(v1 + 231) + 16) register:*(*(v1 + 231) + 8) forNotification:0 registrationInfo:0];
    result = [*(*(v1 + 256) + 16) register:*(*(v1 + 256) + 8) forNotification:0 registrationInfo:0];
    v1[1040] = 1;
  }

  return result;
}

double sub_100859318(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_100859344(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100859418(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_100859468(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10085954C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100859638(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100859684()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB1770;
      v0[3] = unk_101CB1780;
      v0[4] = xmmword_101CB1790;
      v0[0] = xmmword_101CB1750;
      v0[1] = unk_101CB1760;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10085977C()
{
  qword_10265AB70 = off_102477640;
  qword_10265AB88 = &qword_10265AB70;
  __cxa_atexit(sub_1003EE78C, &qword_10265AB70, dword_100000000);
  qword_10265AB90 = off_1024776C0;
  qword_10265ABA8 = &qword_10265AB90;
  __cxa_atexit(sub_1003EE78C, &qword_10265AB90, dword_100000000);
  qword_10265ABB0 = off_102477740;
  qword_10265ABC8 = &qword_10265ABB0;
  __cxa_atexit(sub_1003EE790, &qword_10265ABB0, dword_100000000);
  qword_10265ABD0 = off_1024777C0;
  qword_10265ABE8 = &qword_10265ABD0;
  __cxa_atexit(sub_1003EE790, &qword_10265ABD0, dword_100000000);
  operator new();
}

void sub_100859940(id a1)
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    sub_10001A3E8();
    if ((sub_100023B30() & 0x4000000000000) != 0)
    {
      byte_10265AC08 = 1;
    }
  }
}

void sub_100859EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10085A490()
{
  __cxa_atexit(sub_1005A704C, aAcc800fp_3, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_3, dword_100000000);
}

id sub_10085A904(uint64_t a1)
{
  [*(a1 + 32) sendBufferedScanNotifications];
  v2 = (*&qword_10265AC18 + j__CFAbsoluteTimeGetCurrent_2() * 1000.0) / 1000.0;
  v3 = [*(a1 + 32) scanDeliveryDelayTimer];

  return [v3 setNextFireTime:v2];
}

double sub_10085B628()
{
  v0 = [&off_10254F080 intValue] * 0.625;
  result = v0 + [&off_10254F098 intValue] * 0.625;
  *&qword_10265AC18 = result;
  return result;
}

uint64_t sub_10085B67C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v4;
  }

  return a1;
}

void sub_10085B6E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

id sub_10085B704(uint64_t a1)
{
  v2 = sub_1001CA9C4();
  v3 = 0.0;
  if (v2 < sub_10085B884(a1))
  {
    v4 = sub_10085B884(a1);
    v3 = v4 - sub_1001CA9C4();
  }

  if (qword_1025D43F0 != -1)
  {
    sub_10195AAA4();
  }

  v5 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v6 = *v6;
    }

    v8 = 136446466;
    v9 = v6;
    v10 = 2050;
    v11 = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "VO2MaxPowerBudgetEstimator, updating budgetRefreshTimer, cacheKey, %{public}s, delay, %{public}.2f", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195AAB8();
  }

  return [*a1 setNextFireDelay:v3 interval:7200.0];
}

double sub_10085B884(uint64_t a1)
{
  v5 = 0.0;
  v2 = sub_1000206B4();
  v3 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v3 = *v3;
  }

  if (sub_1000B9370(v2, v3, &v5))
  {
    return v5;
  }

  else
  {
    return sub_1001CA9C4();
  }
}

id sub_10085B8E0(uint64_t a1, double a2)
{
  v10 = a2;
  if (qword_1025D43F0 != -1)
  {
    sub_10195AAA4();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1 + 32);
    if (*(a1 + 55) < 0)
    {
      v5 = *v5;
    }

    *buf = 136446466;
    v12 = v5;
    v13 = 2050;
    v14 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "VO2MaxPowerBudgetEstimator, scheduling next budget refresh, cacheKey, %{public}s, time, %{public}.2f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195ABD4();
  }

  v6 = sub_1000206B4();
  v7 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v7 = *v7;
  }

  sub_100116D68(v6, v7, &v10);
  v8 = *sub_1000206B4();
  (*(v8 + 944))();
  return sub_10085B704(a1);
}

uint64_t sub_10085BA74(_DWORD *a1)
{
  if (*a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10085BA88(uint64_t a1, __int128 *a2)
{
  *a1 = 0x500000000;
  sub_100F96FB0(a1 + 48);
  *(a1 + 568) = 0;
  *(a1 + 576) = xmmword_101CB1B80;
  *(a1 + 592) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 656) = 1;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100007244((a1 + 680), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 696) = *(a2 + 2);
    *(a1 + 680) = v4;
  }

  sub_10085BB50(a1);
  return a1;
}

void sub_10085BB34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 703) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10085BB50(uint64_t a1)
{
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 648) = 0x7FEFFFFFFFFFFFFFLL;
  sub_10085BC68(a1);
  if (qword_1025D4310 != -1)
  {
    sub_10195ACF0();
  }

  v2 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
  {
    v3 = (a1 + 680);
    if (*(a1 + 703) < 0)
    {
      v3 = *v3;
    }

    v4 = 136315394;
    v5 = "ElevationLabel";
    v6 = 2080;
    v7 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "init %s, %s", &v4, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195AD04();
  }
}

void sub_10085BC68(uint64_t a1)
{
  *a1 = 0;
  sub_100F96FE0(a1 + 48);
  *(a1 + 568) = 0;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  *(a1 + 656) = 1;
  if (qword_1025D4310 != -1)
  {
    sub_10195ACF0();
  }

  v2 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
  {
    v3 = (a1 + 680);
    if (*(a1 + 703) < 0)
    {
      v3 = *v3;
    }

    v4 = 136315394;
    v5 = "ElevationLabel";
    v6 = 2080;
    v7 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Resetting significant elevation %s, %s", &v4, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195AE10();
  }
}

double sub_10085BD8C(uint64_t a1, double a2, double a3, double a4)
{
  v4 = *(a1 + 648);
  result = 1.79769313e308;
  if (v4 != 1.79769313e308)
  {
    LODWORD(result) = *(a1 + 544);
    LODWORD(a4) = *(a1 + 548);
    return v4 + (*&result - *&a4) / 100.0;
  }

  return result;
}

void sub_10085BDCC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = *(a1 + 648);
  v7 = *(a1 + 544);
  HIDWORD(v8) = 2146435071;
  if (v6 == 1.79769313e308)
  {
    LODWORD(v8) = *(a1 + 548);
    v9 = (v7 - v8) / 100.0;
    v10 = 1.79769313e308;
  }

  else
  {
    LODWORD(a5) = *(a1 + 548);
    v9 = (v7 - *&a5) / 100.0;
    v10 = v6 + v9;
  }

  *(a1 + 648) = a2 - v9;
  if (qword_1025D4310 != -1)
  {
    sub_10195ACF0();
  }

  v11 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 648);
    v15 = 1.79769313e308;
    if (v14 != 1.79769313e308)
    {
      LODWORD(v12) = *(a1 + 544);
      LODWORD(v13) = *(a1 + 548);
      v15 = (v12 - v13) / 100.0 + v14;
    }

    *buf = 136316930;
    v18 = "biasOfSigElevation";
    v19 = 2048;
    v20 = v14;
    v21 = 2080;
    v22 = "preAbsSigElevation";
    v23 = 2048;
    v24 = v10;
    v25 = 2080;
    v26 = "curAbsSigElevation";
    v27 = 2048;
    v28 = v15;
    v29 = 2080;
    v30 = "rebaseTime";
    v31 = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4310 != -1)
    {
      sub_10195AF1C();
    }

    CFAbsoluteTimeGetCurrent();
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantElevationEstimator::rebaseAbsSignificantElevation(double)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }
}

double sub_10085C118(uint64_t a1)
{
  result = *(a1 + 640);
  *(a1 + 664) = result;
  return result;
}

void sub_10085C124(uint64_t a1, double a2, double a3)
{
  v6 = a3 - *(a1 + 584);
  v7 = *(a1 + 600) + v6;
  *(a1 + 600) = v7;
  *(a1 + 616) = a2;
  if (fabs(v7) > 2.0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10195ACF0();
    }

    v8 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 584);
      v10 = *(a1 + 528);
      v11 = *(a1 + 536);
      v12 = *(a1 + 544);
      v13 = *(a1 + 548);
      v14 = *(a1 + 624);
      v15 = (a1 + 680);
      if (*(a1 + 703) < 0)
      {
        v15 = *v15;
      }

      *buf = 136319490;
      v19 = "Altitude";
      v20 = 2048;
      v21 = a3;
      v22 = 2080;
      v23 = "ReferenceAltitude";
      v24 = 2048;
      v25 = v9;
      v26 = 2080;
      v27 = "ElevationStartTime";
      v28 = 2048;
      v29 = v10;
      v30 = 2080;
      v31 = "ElevationEndTime";
      v32 = 2048;
      v33 = v11;
      v34 = 2080;
      v35 = "AscendedElevation";
      v36 = 2048;
      v37 = v12;
      v38 = 2080;
      v39 = "DescendedElevation";
      v40 = 2048;
      v41 = v13;
      v42 = 2080;
      v43 = "AscendingState";
      v44 = 2048;
      v45 = v14;
      v46 = 2080;
      v47 = "ElevationLabel";
      v48 = 2080;
      v49 = v15;
      v50 = 2080;
      v51 = "Time";
      v52 = 2048;
      v53 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%s,%s,%f", buf, 0xB6u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4310 != -1)
      {
        sub_10195AF1C();
      }

      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantElevationEstimator::bufferCurrentElevation(CFAbsoluteTime, double)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v16 = *(a1 + 600);
    if (v16 != 0.0)
    {
      sub_10085C564(a1, *(a1 + 616), v16);
    }

    *(a1 + 600) = 0;
    *(a1 + 608) = 0;
    v6 = a3 - *(a1 + 584);
  }

  *(a1 + 632) = *(a1 + 632) - v6;
  *(a1 + 584) = a3;
  *(a1 + 568) = 3;
}

uint64_t sub_10085C564(uint64_t result, double a2, double a3)
{
  if (a3 <= 0.0)
  {
    *(result + 548) += (a3 * -100.0);
    v3 = -1;
  }

  else
  {
    *(result + 544) += (a3 * 100.0);
    v3 = 1;
  }

  *(result + 624) = v3;
  v4 = a2 + -2.56;
  v5 = *(result + 536);
  if (v5 < a2 + -2.56)
  {
    v5 = a2 + -2.56;
  }

  if (v5 <= a2)
  {
    v4 = v5;
  }

  *(result + 528) = v4;
  *(result + 536) = a2;
  return result;
}

double sub_10085C5E0(uint64_t a1, double a2)
{
  result = -a2;
  *(a1 + 664) = result;
  return result;
}

void sub_10085CB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

double sub_10085EEC8(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_10085EEF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10085EFC8(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_10085F018(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10085F0FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10085F1E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10085F2A8(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102477B88;
  sub_1003E8A8C(a1 + 3, *a2, *a3);
  return a1;
}

void sub_10085F32C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102477B88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10085F3CC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB1BD0;
      v0[3] = unk_101CB1BE0;
      v0[4] = xmmword_101CB1BF0;
      v0[0] = xmmword_101CB1BB0;
      v0[1] = unk_101CB1BC0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10085F4C4()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10085F53C()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_10085F5B4()
{
  qword_10265AC30 = off_102477988;
  qword_10265AC48 = &qword_10265AC30;
  __cxa_atexit(sub_1003EE78C, &qword_10265AC30, dword_100000000);
  qword_10265AC50 = off_102477A08;
  qword_10265AC68 = &qword_10265AC50;
  __cxa_atexit(sub_1003EE78C, &qword_10265AC50, dword_100000000);
  qword_10265AC70 = off_102477A88;
  qword_10265AC88 = &qword_10265AC70;
  __cxa_atexit(sub_1003EE790, &qword_10265AC70, dword_100000000);
  qword_10265AC90 = off_102477B08;
  qword_10265ACA8 = &qword_10265AC90;
  __cxa_atexit(sub_1003EE790, &qword_10265AC90, dword_100000000);
  operator new();
}

void sub_10085F740(uint64_t **a1, uint64_t a2)
{
  if (sub_1000852BC((a2 + 32)))
  {
    sub_10085F8C0(a1, (a2 + 32));
    sub_10045E8A0(a1, a2);
    sub_10085FFB4(a2 + 32);

    operator delete(a2);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10195C830();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2 + 32, __p);
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v9 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195CA34();
    }
  }
}

void sub_10085F8C0(uint64_t a1, int *a2)
{
  if (sub_1000852BC(a2))
  {
    if (a1 + 8 == sub_10008535C(a1, a2))
    {
      sub_10195CC24();
    }

    v4 = sub_10008535C(a1 + 24, a2);
    if (a1 + 32 != v4)
    {

      sub_100860088((a1 + 24), v4);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10195C830();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      v6 = v8 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v10 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195CB2C();
    }
  }
}

void sub_10085FA5C(uint64_t **a1, int *a2)
{
  if (sub_1000852BC(a2))
  {
    sub_10085F8C0(a1, a2);

    sub_10086002C(a1, a2);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10195C830();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v9 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195CDB0();
    }
  }
}

void sub_10085FBCC(uint64_t a1, int *a2)
{
  if (sub_1000852BC(a2))
  {
    if (a1 + 8 == sub_10008535C(a1, a2))
    {
      sub_10195CFA0();
    }

    sub_100236990(a1 + 24, a2);
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10195C830();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      sub_100B4EFD4(a2, __p);
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v9 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195CEA8();
    }
  }
}

void sub_10085FD68(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_100199B5C(a1 + 24, *(a1 + 32));
  *(a1 + 24) = v2;
  *(a1 + 40) = 0;
  *v2 = 0;
  sub_100860210(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
}

void sub_10085FDC0(uint64_t a1)
{
  v1 = (a1 + 32);
  sub_100199B5C(a1 + 24, *(a1 + 32));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t sub_10085FDF4(uint64_t a1, int *a2)
{
  if (!*a2)
  {
    if (sub_1000852BC(a2))
    {
      sub_100236990(a1 + 24, a2);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_10195C830();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        sub_100B4EFD4(a2, __p);
        v5 = v8 >= 0 ? __p : __p[0];
        *buf = 136380675;
        v10 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Invalid tile ID: %{private}s, #CloneMe", buf, 0xCu);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_10195D12C();
      }
    }
  }

  __p[0] = a2;
  return sub_10086026C(a1, a2) + 80;
}

void sub_10085FFB4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

uint64_t sub_10086002C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10008535C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10045E8A0(a1, v3);
  sub_10085FFB4((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *sub_100860088(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10045E8A0(a1, a2);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  operator delete(a2);
  return v3;
}

void sub_1008600CC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_100860130(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100860188(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100860188(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100236B88(v5, v5 + 1, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

void sub_100860210(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100860210(a1, *a2);
    sub_100860210(a1, a2[1]);
    sub_10085FFB4((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_10086026C(uint64_t a1, uint64_t a2)
{
  v2 = *sub_1000897E8(a1, &v4, a2);
  if (!v2)
  {
    sub_100860314();
  }

  return v2;
}

uint64_t sub_1008603C4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10085FFB4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100860410(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100B4EFD4(v3, va);
}

void sub_10086042C(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_10195D224();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "DEM,clear AVL status cache", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195D238();
  }

  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
}

void *sub_1008604D0(uint64_t a1)
{
  result = sub_1001FB750(a1);
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_100860560(uint64_t a1, void *a2)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  if (a2)
  {
    sub_10000EC00(__p, [objc_msgSend(objc_msgSend(a2 "encryptedValues")]);
    *a1 = sub_100196E8C(__p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 8) = v4;
    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 16) = v5;
    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 24) = v6;
    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 32) = v7;
    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 40) = v8;
    *(a1 + 48) = [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 56) = v9;
    *(a1 + 64) = [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    [objc_msgSend(objc_msgSend(a2 "encryptedValues")];
    *(a1 + 72) = v10;
    sub_10000EC00(__p, [objc_msgSend(objc_msgSend(a2 "recordID")]);
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = *__p;
    *(a1 + 96) = v13;
    *(a1 + 104) = sub_1008607E4(a2);
  }

  return a1;
}

void sub_100860794(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 103) < 0)
  {
    operator delete(*(v15 + 80));
  }

  _Unwind_Resume(exception_object);
}

id sub_1008607E4(void *a1)
{
  result = [a1 recordChangeTag];
  if (result)
  {
    v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [a1 encodeSystemFieldsWithCoder:v3];
    [v3 finishEncoding];
    v4 = [[NSData alloc] initWithData:{objc_msgSend(v3, "encodedData")}];

    return v4;
  }

  return result;
}

uint64_t sub_10086086C(uint64_t a1, void *a2)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  if (a2)
  {
    sub_10000EC00(__p, [objc_msgSend(a2 objectForKey:{@"mac", "UTF8String"}]);
    *a1 = sub_100196E8C(__p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    [objc_msgSend(a2 objectForKey:{@"latitude", "doubleValue"}];
    *(a1 + 8) = v4;
    [objc_msgSend(a2 objectForKey:{@"longitude", "doubleValue"}];
    *(a1 + 16) = v5;
    [objc_msgSend(a2 objectForKey:{@"altitude", "doubleValue"}];
    *(a1 + 24) = v6;
    [objc_msgSend(a2 objectForKey:{@"horizontalAccuracy", "doubleValue"}];
    *(a1 + 32) = v7;
    [objc_msgSend(a2 objectForKey:{@"verticalAccuracy", "doubleValue"}];
    *(a1 + 40) = v8;
    *(a1 + 48) = [objc_msgSend(a2 objectForKey:{@"reach", "intValue"}];
    [objc_msgSend(a2 objectForKey:{@"stationaryTimeInSeconds", "doubleValue"}];
    *(a1 + 56) = v9;
    v10 = [a2 objectForKey:@"loiType"];
    if ([v10 isEqualToString:@"Home"])
    {
      v11 = 0;
    }

    else if ([v10 isEqualToString:@"Work"])
    {
      v11 = 1;
    }

    else if ([v10 isEqualToString:@"School"])
    {
      v11 = 2;
    }

    else if ([v10 isEqualToString:@"Gym"])
    {
      v11 = 3;
    }

    else
    {
      if (([v10 isEqualToString:@"Unknown"] & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10195E010();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = 138543362;
          *(__p[0].__r_.__value_.__r.__words + 4) = v10;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "warning, unknown LOI type: %{public}@", __p, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10195E038(__p);
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "RTLocationOfInterestType getLocationOfInterestType(NSString *)", "%s\n", v15);
          if (v15 != __p)
          {
            free(v15);
          }
        }
      }

      v11 = -1;
    }

    *(a1 + 64) = v11;
    [objc_msgSend(a2 objectForKey:{@"lastUpdated", "doubleValue"}];
    *(a1 + 72) = v13;
    sub_100860C7C(__p);
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = __p[0];
    *(a1 + 104) = 0;
  }

  return a1;
}

void sub_100860C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 103) < 0)
  {
    operator delete(*(v18 + 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100860C7C(std::string *a1@<X8>)
{
  sub_10000EC00(&__str, [(NSString *)[+[NSUUID UUID](NSUUID UUIDString] UTF8String];
  std::string::basic_string(&v2, &__str, 0, 0x12uLL, &v4);
  if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(a1, v2.__r_.__value_.__l.__data_, v2.__r_.__value_.__l.__size_);
    if (SHIBYTE(v2.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = v2;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_100860D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100860D5C(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v4 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v4;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  v5 = *(a1 + 104);
  if (v5)
  {

    *(a1 + 104) = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  return a1;
}

uint64_t sub_100860E90(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    v4 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v4;
    *(a2 + 103) = 0;
    *(a2 + 80) = 0;
    v5 = *(a1 + 104);
    if (v5)
    {

      *(a1 + 104) = 0;
    }

    *(a1 + 104) = *(a2 + 104);
    *(a2 + 104) = 0;
  }

  return a1;
}

id sub_100860F48(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v3 = *v3;
  }

  v4 = [[CKRecordID alloc] initWithRecordName:+[NSString stringWithUTF8String:](NSString zoneID:{"stringWithUTF8String:", v3), objc_msgSend([CKRecordZoneID alloc], "initWithZoneName:ownerName:", @"com.apple.clx.cloudkit.zone", CKCurrentUserDefaultName)}];
  if (v2)
  {
    v9 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v2 error:&v9];
    [v5 setRequiresSecureCoding:1];
    v6 = [[CKRecord alloc] initWithCoder:v5];
    [v5 finishDecoding];
    if (!v6)
    {
      if (qword_1025D4620 != -1)
      {
        sub_10195E010();
      }

      v7 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v11 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "Failed to decode record from system fields data: %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10195E07C(&v9);
      }
    }
  }

  else
  {
    v6 = [[CKRecord alloc] initWithRecordType:@"WifiAssociatedApCentroid" recordID:v4];
  }

  sub_100861124(a1, v6);
  return v6;
}

id sub_100861124(uint64_t a1, void *a2)
{
  v4 = [a2 encryptedValues];
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  [v4 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", p_p), @"mac"}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  [objc_msgSend(a2 "encryptedValues")];
  return [objc_msgSend(a2 "encryptedValues")];
}

void sub_100861350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10086136C(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = result[13];
    if (v4)
    {

      v3[13] = 0;
    }

    result = sub_1008607E4(a2);
    v3[13] = result;
  }

  return result;
}

uint64_t sub_1008613C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v38);
  sub_10018F0D0(&__p);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_100038730(&v39, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = sub_100038730(&v39, ", ", 2);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 16) = 8;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v8 = sub_100038730(&v39, ", ", 2);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 16) = 8;
  *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v10 = sub_100038730(&v39, ", alt, ", 7);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 16) = 1;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v12 = sub_100038730(&v39, ", hacc, ", 8);
  v13 = *v12;
  *(v12 + *(*v12 - 24) + 16) = 1;
  *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v14 = sub_100038730(&v39, ", vacc, ", 8);
  v15 = *v14;
  *(v14 + *(*v14 - 24) + 16) = 1;
  *(v14 + *(v15 - 24) + 8) = *(v14 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v16 = sub_100038730(&v39, ", reach, ", 9);
  v17 = *v16;
  *(v16 + *(*v16 - 24) + 16) = 0;
  *(v16 + *(v17 - 24) + 8) = *(v16 + *(v17 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v18 = sub_100038730(&v39, ", stationaryTime, ", 18);
  v19 = *v18;
  *(v18 + *(*v18 - 24) + 16) = 1;
  *(v18 + *(v19 - 24) + 8) = *(v18 + *(v19 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v20 = sub_100038730(&v39, ", loiType, ", 11);
  sub_10023788C(*(a1 + 64), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__l.__size_;
  }

  sub_100038730(v20, v21, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v23 = sub_100038730(&v39, ", lastUpdated, ", 15);
  v24 = *v23;
  *(v23 + *(*v23 - 24) + 16) = 1;
  *(v23 + *(v24 - 24) + 8) = *(v23 + *(v24 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v25 = sub_100038730(&v39, ", age, ", 7);
  v26 = *v25;
  *(v25 + *(*v25 - 24) + 16) = 1;
  *(v25 + *(v26 - 24) + 8) = *(v25 + *(v26 - 24) + 8) & 0xFFFFFEFB | 4;
  CFAbsoluteTimeGetCurrent();
  v27 = std::ostream::operator<<();
  sub_100038730(v27, "s", 1);
  v28 = sub_100038730(&v39, ", recordName, ", 14);
  v29 = *(a1 + 103);
  if (v29 >= 0)
  {
    v30 = a1 + 80;
  }

  else
  {
    v30 = *(a1 + 80);
  }

  if (v29 >= 0)
  {
    v31 = *(a1 + 103);
  }

  else
  {
    v31 = *(a1 + 88);
  }

  sub_100038730(v28, v30, v31);
  sub_100038730(&v39, ", systemFields, ", 16);
  std::ostream::operator<<();
  if ((v46 & 0x10) != 0)
  {
    v33 = v45;
    if (v45 < v42)
    {
      v45 = v42;
      v33 = v42;
    }

    locale = v41[4].__locale_;
  }

  else
  {
    if ((v46 & 8) == 0)
    {
      v32 = 0;
      a2[23] = 0;
      goto LABEL_36;
    }

    locale = v41[1].__locale_;
    v33 = v41[3].__locale_;
  }

  v32 = v33 - locale;
  if ((v33 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v32 >= 0x17)
  {
    operator new();
  }

  a2[23] = v32;
  if (v32)
  {
    memmove(a2, locale, v32);
  }

LABEL_36:
  a2[v32] = 0;
  v39 = v35;
  if (v44 < 0)
  {
    operator delete(v43);
  }

  std::locale::~locale(v41);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100861B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100861C2C(uint64_t a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_100861E70(a1, "CLPednetRecorderDb", a2, __p, 1, 2.56);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102477CD8;
  *(a1 + 72) = off_102477D80;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  if (qword_1025D4270 != -1)
  {
    sub_10195E1A8();
  }

  v4 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLPednetRecorderDb init", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195E1D0(__p);
    v6 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLPednetRecorderDb::CLPednetRecorderDb(BOOL, BOOL)", "%s\n", v6);
    if (v6 != __p)
    {
      free(v6);
    }
  }

  (*(*a1 + 112))(a1);
  return a1;
}

uint64_t sub_100861E70(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102456270;
  sub_1003FFA38((a1 + 8));
  *v12 = off_1024562B8;
  *a1 = off_102477E60;
  *(a1 + 72) = off_102477F08;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_102477E60;
  *(a1 + 72) = off_102477F08;
  *(a1 + 176) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 276) = 0x2EE000000001;
  *(a1 + 288) = off_102456270;
  sub_1003FFA38((a1 + 296));
  *(a1 + 296) = off_1024562B8;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((a3 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72);
  }

  *(a1 + 224) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_10086226C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_1005A842C(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_100862314(void *a1)
{
  *a1 = off_102477E60;
  v2 = (a1 + 9);
  a1[9] = off_102477F08;
  sub_10086600C(a1, 0, 0);
  a1[36] = off_102456270;
  sub_1003FFCFC(a1 + 37);
  sub_1005A842C(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void *sub_1008623E8(void *a1)
{
  *a1 = off_102477CD8;
  a1[9] = off_102477D80;
  sub_100862468(a1, 0, 0);

  return sub_100862314(a1);
}

void sub_100862468(uint64_t a1, void *a2, const void *a3)
{
  if ((a2 != 0) != (a3 != 0))
  {
    sub_10195E280();
  }

  *(a1 + 384) = a2;
  v6 = *(a1 + 376);
  if (v6)
  {
    _Block_release(v6);
  }

  if (a3)
  {
    *(a1 + 376) = _Block_copy(a3);
  }
}

void sub_1008624EC(void *a1)
{
  sub_1008623E8(a1);

  operator delete();
}

void sub_100862524(uint64_t a1)
{
  sub_1008623E8((a1 - 72));

  operator delete();
}

void sub_100862560(uint64_t a1)
{
  if ((*(a1 + 392) & 1) == 0)
  {
    v2 = *(a1 + 80);
    if (v2 && sub_100023B68(v2))
    {
      sub_10086264C(a1);
      sub_100608EC8(*(a1 + 80), "PednetHistory", &qword_10265ACC8, &qword_10265AE18, 0);
      *(a1 + 392) = 1;
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10195E450();
      }

      v3 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Device is locked and we are unable to open the database", v4, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195E464();
      }
    }
  }
}

void sub_10086264C(uint64_t a1)
{
  if (sub_10060A6D8(*(a1 + 80), "PednetHistory"))
  {
    v4 = "recordId";
    v5 = 5;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_100611268(*(a1 + 80), "PednetHistory", "recordId", &v4);
  }

  if (qword_1025D4270 != -1)
  {
    sub_10195E450();
  }

  v2 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "PednetHistory table doesn't even exist", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195E558();
  }
}

void sub_100862BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a23);
  if (v61)
  {
    (*(*v61 + 8))(v61);
  }

  sub_10026C504(&a61);
  _Unwind_Resume(a1);
}

uint64_t sub_100862CA4(uint64_t *a1, uint64_t *a2)
{
  result = sub_100099160(a1 + 9);
  if (result)
  {
    (*(*a1 + 112))(a1);
    v6 = *a2;
    v5 = a2[1];
    v7 = *(a2 + 4);
    v9 = a2[3];
    v8 = a2[4];
    if (qword_1025D4270 != -1)
    {
      sub_10195E450();
    }

    v10 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 134284545;
      *&buf[1] = v6;
      v13 = 2049;
      v14 = v5;
      v15 = 1025;
      *v16 = v7;
      *&v16[4] = 2049;
      *&v16[6] = v9;
      v17 = 2049;
      v18 = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "PednetHistory (%{private}f,%{private}f,%{private}d,%{private}f,%{private}f).", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4270 != -1)
      {
        sub_10195E1A8();
      }

      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLPednetRecorderDb::insertRecordUL(const CMPedometerStep &, BOOL)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    sub_1000388D8(a1[10], "INSERT INTO PednetHistory (startTime, endTime, count, distance, currentPace)VALUES (?, ?, ?, ?, ?)");
  }

  return result;
}

void sub_100863110(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100863130(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 376);
  v2 = *(a1 + 72);
  v4[1] = *(a1 + 56);
  v4[2] = v2;
  v5 = *(a1 + 88);
  v4[0] = *(a1 + 40);
  return (*(v1 + 16))(v1, v4);
}

uint64_t sub_100863184(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 368);
  v2 = *(a1 + 72);
  v4[1] = *(a1 + 56);
  v4[2] = v2;
  v5 = *(a1 + 88);
  v4[0] = *(a1 + 40);
  return (*(v1 + 16))(v1, v4);
}

void sub_100863204(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  *a2 = sqlite3_column_double(v4, 1);
  v5 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_double(v5, 2);
  v6 = sub_100008880(*a1);
  *(a2 + 16) = sqlite3_column_double(v6, 3);
  v7 = sub_100008880(*a1);
  *(a2 + 24) = sqlite3_column_double(v7, 4);
  v8 = sub_100008880(*a1);
  *(a2 + 32) = sqlite3_column_double(v8, 5);
}

uint64_t sub_100863290(void *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v7 = BYTE7(v16);
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1008638E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_100863970(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v8 = *v16;
  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v4 = BYTE7(v14);
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (SBYTE7(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((SBYTE7(v14) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_10086400C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_100864094(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_100866258(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_10195E650();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v13 = 2082;
    v14 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195E23C(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<CMPedometerStep>::setDatabaseAccessible() [T = CMPedometerStep, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_100864770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1008647AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *a2 = result;
  return result;
}

id *sub_1008647C8(uint64_t a1, __int128 *a2, char a3)
{
  v35[0] = os_transaction_create();
  v35[1] = 0;
  if (*(a1 + 224) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v35);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v28[0] = 0.0;
  v28[1] = 0.0;
  v29 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v33 = 0;
  v34 = 1;
  v6 = (*(*a1 + 104))(a1, v28);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10195E23C(buf);
        LOWORD(v36) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CMPedometerStep>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CMPedometerStep, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *a2;
    v8 = v28[0];
    v9 = *a2 - v28[0];
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *a2;
        *buf = 134349312;
        v41 = v28[0];
        v42 = 2050;
        v43 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195E23C(buf);
        v23 = *a2;
        v36 = 134349312;
        v37 = v28[0];
        v38 = 2050;
        v39 = v23;
        v24 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CMPedometerStep>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CMPedometerStep, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v24);
        if (v24 != buf)
        {
          free(v24);
        }
      }

      CLWriteStackshot();
      v7 = *a2;
      v8 = v28[0];
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_10195E214();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *a2;
          *buf = 134217984;
          v41 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195E23C(buf);
          v25 = *a2;
          v36 = 134217984;
          v37 = v25;
          v26 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CMPedometerStep>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CMPedometerStep, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v26);
          if (v26 != buf)
          {
            free(v26);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10195E23C(buf);
        v36 = 134217984;
        v37 = v17;
        v27 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CMPedometerStep>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CMPedometerStep, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v27);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, v28, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[2];
  *(a1 + 272) = *(a2 + 6);
  *(a1 + 240) = v20;
  *(a1 + 256) = v21;
  *(a1 + 224) = v19;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v35);
}

void sub_100864F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100864F48(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_1008654A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1008654FC(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160(a1 + 9);
  if (result)
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v16[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v5 = v14;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " SET startTime = startTime + ?", 30);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return result;
}

void sub_100865A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100865A70(void *a1)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v18) & 0x80000000) == 0)
  {
    if (BYTE3(v18))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v10 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v11 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_10195E214();
      }
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v16 = 2082;
      *&v16[2] = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  v9 = *v16;
  operator delete(*buf);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160(a1 + 9))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v14 & 0x80u) == 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v4 = v14;
    }

    else
    {
      v4 = __p[1];
    }

    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = a1[10];
    sub_100073518(buf, __p);
    if ((v14 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    sub_1000388D8(v6, v7);
  }

  return 2;
}

void sub_100865F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

void sub_10086600C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_10195E650();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195E664(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10195E214();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195E7AC(a1);
    }
  }

  *(a1 + 360) = a2;
  v10 = *(a1 + 368);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 368) = _Block_copy(a3);
  }
}

void sub_1008662D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008662F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_100866380()
{
  qword_10265ACC8 = "recordId";
  dword_10265ACD0 = 1;
  word_10265ACD4 = 257;
  byte_10265ACD8 = 0;
  byte_10265ACF0 = 0;
  qword_10265ACF8 = "startTime";
  dword_10265AD00 = 2;
  word_10265AD04 = 0;
  byte_10265AD08 = 0;
  byte_10265AD20 = 0;
  qword_10265AD28 = "endTime";
  dword_10265AD30 = 2;
  word_10265AD34 = 0;
  byte_10265AD38 = 0;
  byte_10265AD50 = 0;
  qword_10265AD58 = "count";
  dword_10265AD60 = 1;
  word_10265AD64 = 0;
  byte_10265AD68 = 0;
  byte_10265AD80 = 0;
  qword_10265AD88 = "distance";
  dword_10265AD90 = 2;
  word_10265AD94 = 0;
  byte_10265AD98 = 0;
  byte_10265ADB0 = 0;
  qword_10265ADB8 = "currentPace";
  dword_10265ADC0 = 2;
  word_10265ADC4 = 0;
  byte_10265ADC8 = 0;
  byte_10265ADE0 = 0;
  qword_10265ADE8 = 0;
  dword_10265ADF0 = 5;
  word_10265ADF4 = 0;
  byte_10265ADF8 = 0;
  byte_10265AE10 = 0;
  qword_10265AE18 = "startTime";
  unk_10265AE20 = 0;
}

uint64_t sub_1008664CC(uint64_t a1)
{
  *a1 = off_102477F98;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  v8 = 0;
  sub_10001CAF4(buf);
  v2 = sub_10001CB4C(*buf, "DisableMapMatchingRouteHints", &v8);
  if (v12)
  {
    sub_100008080(v12);
  }

  if (v2)
  {
    *(a1 + 96) = v8;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10195E914();
  }

  v3 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 96);
    *buf = 67240192;
    *&buf[4] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLMM, DisableMapMatchingRouteHints, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195E93C(buf);
    v6 = *(a1 + 96);
    v9 = 67240192;
    v10 = v6;
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLMapRouteHintController::CLMapRouteHintController()", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return a1;
}

void sub_1008666CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = (v13 + 72);
  sub_100866820(&a13);
  std::mutex::~mutex(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_100866714(uint64_t a1)
{
  *a1 = off_102477F98;
  v2 = (a1 + 8);
  v4 = (a1 + 72);
  sub_100866820(&v4);
  std::mutex::~mutex(v2);
  return a1;
}

void sub_100866778(uint64_t a1)
{
  *a1 = off_102477F98;
  v1 = (a1 + 8);
  v2 = (a1 + 72);
  sub_100866820(&v2);
  std::mutex::~mutex(v1);
  operator delete();
}

void sub_100866820(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        sub_1002575BC(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1008668A4(uint64_t *a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_10028C64C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1008669FC(a1, v7);
  }

  v8 = v2 << 6;
  v16 = 0;
  v17 = v8;
  v18 = v8;
  if (*(a2 + 23) < 0)
  {
    sub_100007244(v8, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
  }

  *(v8 + 24) = *(a2 + 3);
  sub_1001C7078(v8 + 32, (a2 + 2));
  *&v18 = v18 + 64;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_100866A44(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100866B58(&v16);
  return v15;
}

void sub_1008669D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  sub_100866B58(va);
  _Unwind_Resume(a1);
}

void sub_1008669FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100866A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2 + 32;
    v7 = a4 + 32;
    do
    {
      v8 = *(v6 - 32);
      *(v7 - 16) = *(v6 - 16);
      *(v7 - 32) = v8;
      *(v6 - 24) = 0;
      *(v6 - 16) = 0;
      *(v6 - 32) = 0;
      *(v7 - 8) = *(v6 - 8);
      v9 = sub_100866AD8(v7, v6);
      v10 = v6 + 32;
      v6 += 64;
      v7 = v9 + 64;
    }

    while (v10 != a3);
    while (v5 != a3)
    {
      sub_1002575BC(v5);
      v5 += 64;
    }
  }
}

uint64_t sub_100866AD8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100866B58(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_1002575BC(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100866BA8(uint64_t a1)
{
  sub_1001C9C60(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100866BE4(uint64_t a1, uint64_t a2)
{
  sub_100866C68(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100866C68(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100866E50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100867098;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265AE40 != -1)
  {
    dispatch_once(&qword_10265AE40, block);
  }

  return qword_102637308;
}

uint64_t sub_100867098()
{
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    operator new();
  }

  sub_10001A3E8();
  if ((sub_10001CF04() & 1) != 0 || (sub_10001A3E8(), result = sub_10003FFF8(), result))
  {
    operator new();
  }

  return result;
}

const void *sub_100867168(const void *a1, void *a2)
{
  v3 = sub_1008672E0(a1, "CLFitnessTrackingNotifier", a2);
  *v3 = off_102478038;
  *(v3 + 109) = 0;
  v4 = (v3 + 109);
  *(v3 + 112) = 0;
  *(v3 + 120) = 1;
  v5 = sub_100011660();
  sub_100185AC0(v5, &v9);
  sub_10001CB4C(v9, "AllowUnactivatedFitnessTracking", v4);
  if (v10)
  {
    sub_100008080(v10);
  }

  if (qword_10265AE48 != -1)
  {
    sub_10195EB3C();
  }

  if (qword_10265AE50 && off_1025D94D8())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v7 = [NSString stringWithUTF8String:off_1025D94D8()];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_10086738C, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  (*(*a1 + 240))(a1);
  return a1;
}

void sub_1008672B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_1008675B8(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1008672E0(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102478248;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100867370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10086738C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10195EB64();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLFitnessTrackingNotifier::activityMoveModeChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10195EB78();
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
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFitnessTrackingNotifier::activityMoveModeChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100867FE0;
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

uint64_t sub_1008675B8(uint64_t a1)
{
  *a1 = off_102478248;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10086763C(void *a1)
{
  *a1 = off_102478038;
  if (qword_10265AE48 != -1)
  {
    sub_10195EBA0();
  }

  if (qword_10265AE50 && off_1025D94D8())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = [NSString stringWithUTF8String:off_1025D94D8()];
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, v3, 0);
  }

  (*(*a1 + 16))(a1);

  return sub_1008675B8(a1);
}

BOOL sub_1008677B0(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 <= 7)
  {
    (*(*a1 + 224))(a1);
  }

  return v2 < 8;
}

BOOL sub_100867804(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 >= 8)
  {
    if (qword_1025D44A0 != -1)
    {
      sub_10195EBB4();
    }

    v4 = qword_1025D44A8;
    if (os_log_type_enabled(qword_1025D44A8, OS_LOG_TYPE_FAULT))
    {
      v5 = *a2;
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Unknown notification during unregistration: %{public}d", v7, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195EBC8(a2);
    }
  }

  return v2 < 8;
}

uint64_t sub_100867900(uint64_t result, int a2)
{
  if (*(result + 112) != a2)
  {
    v3 = result;
    *(result + 112) = a2;
    v5 = a2 == 2;
    if (qword_1025D4200 != -1)
    {
      sub_10195ECC4();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 1026;
      v11 = a2 == 2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Motion Sensor Logging, Always On:%{public}hhd}", buf, 0x18u);
    }

    *buf = 3;
    return (*(*v3 + 152))(v3, buf, &v5, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_100867A50(_BYTE *a1)
{
  a1[120] = (*(*a1 + 216))(a1);
  v2 = *(*a1 + 224);

  return v2(a1);
}

uint64_t sub_100867ACC()
{
  if (qword_10265AE48 != -1)
  {
    sub_10195EBA0();
  }

  if (!qword_10265AE50 || !off_1025D94D8())
  {
    return 1;
  }

  v3 = 0;
  sub_10054B43C(v2, @"com.apple.nanolifestyle", 1, @"mobile");
  v0 = [off_1025D94E0() UTF8String];
  sub_10005BBE4(v2, v0, &v3);
  sub_10054B4D4(v2);
  if (v3 == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_100867BA0(int *a1)
{
  result = sub_100867ACC();
  v3 = a1 + 29;
  if (a1[29] != result)
  {
    *v3 = result;
    v6 = result;
    if (qword_1025D4200 != -1)
    {
      sub_10195ECC4();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      if (*v3 == 1)
      {
        v5 = "ActiveEnergy";
      }

      else
      {
        v5 = "MoveMinute";
      }

      *buf = 136446210;
      v8 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CM Activity Move Mode,%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195ECD8(a1 + 29);
    }

    *buf = 4;
    return (*(*a1 + 152))(a1, buf, &v6, 1, 0xFFFFFFFFLL, 0);
  }

  return result;
}

uint64_t sub_100867CF8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102478328;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_100867E9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_100867ED0(uint64_t a1)
{
  sub_1008680B4(a1);

  operator delete();
}

uint64_t sub_100867F64()
{
  if (qword_10265AE48 != -1)
  {
    sub_10195EBA0();
  }

  v0 = dlsym(qword_10265AE50, "HKActivityMoveModeDidUpdateNotification");
  if (v0)
  {
    result = *v0;
    qword_10265AE58 = result;
  }

  else
  {
    result = qword_10265AE58;
  }

  off_1025D94D8 = sub_100867FD4;
  return result;
}

uint64_t sub_100868038()
{
  if (qword_10265AE48 != -1)
  {
    sub_10195EBA0();
  }

  v0 = dlsym(qword_10265AE50, "HKActivityMoveModeDefaultsKey");
  if (v0)
  {
    result = *v0;
    qword_10265AE60 = result;
  }

  else
  {
    result = qword_10265AE60;
  }

  off_1025D94E0 = sub_1008680A8;
  return result;
}

uint64_t sub_1008680B4(uint64_t a1)
{
  *a1 = off_102478328;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100868124(uint64_t result)
{
  *result = off_102478350;
  *(result + 8) = 0;
  *(result + 16) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_10086815C(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0x7FEFFFFFFFFFFFFFLL;
  return result;
}

uint64_t sub_10086816C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = v4;
  v5 = (a1 + 8);
  *(a1 + 16) = *a2;
  v6 = (a1 + 16);
  if (qword_1025D43F0 != -1)
  {
    sub_10195EDF0();
  }

  v7 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *v5;
    v9 = *v6;
    v11 = 134218240;
    v12 = v8;
    v13 = 2048;
    v14 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLIndoorRunningActiveStateModelPhone,eventType,%ld,eventTime,%f", &v11, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195EE04(v5, v5 + 1);
  }

  return *v5;
}

uint64_t sub_100868298()
{
  if (qword_1025D43F0 != -1)
  {
    sub_10195EDF0();
  }

  v0 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "CLWorkoutActiveStateModel, feedExternalActiveState not implemented for this model, will do nothing", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10195EF34();
  }

  return 0;
}

void sub_1008685D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1008685EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(objc_msgSend(a2 "startDate")];
  if ((result & 1) == 0)
  {
    if ([objc_msgSend(objc_msgSend(a2 "startDate")])
    {
      v8 = [*(a1 + 32) startDate];
      *a4 = 1;
    }

    else
    {
      v8 = [a2 startDate];
    }

    v9 = *(a1 + 40);
    [*(*(*(a1 + 48) + 8) + 40) timeIntervalSinceDate:v8];
    [v9 addInterval:+[CLFenceAnalyticsCommon motionTypeFromMotionActivity:](CLFenceAnalyticsCommon type:"motionTypeFromMotionActivity:" confidence:{a2), objc_msgSend(a2, "confidence"), v10}];

    result = [objc_msgSend(a2 "startDate")];
    *(*(*(a1 + 48) + 8) + 40) = result;
  }

  return result;
}

int64_t sub_1008687A4(id a1, CLFenceAnalyticsMotionActivityHistogramBin *a2, CLFenceAnalyticsMotionActivityHistogramBin *a3)
{
  [(CLFenceAnalyticsMotionActivityHistogramBin *)a2 interval];
  v5 = v4;
  [(CLFenceAnalyticsMotionActivityHistogramBin *)a3 interval];
  if (v5 <= v6)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_100868B7C(id a1)
{
  if (objc_opt_class())
  {
    v1 = sub_10001A3E8();
    if (((**v1)(v1) & 1) != 0 || (sub_10001A3E8(), sub_10001CF3C()))
    {
      byte_10265AE78 = 1;
    }
  }
}

void sub_100868E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#usesync IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v8, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10195F074();
      }
    }

    v5 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v8 = 68289282;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#usesync IDS service failed to initialize", "{msg%{public}.0s:#usesync IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v8, 0x1Cu);
    }
  }

  else
  {
    [*(a1 + 32) setService:a2];
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 68289026;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync IDS became available so resuming silo}", &v8, 0x12u);
    }

    [*(a1 + 40) resume];
  }
}

void sub_100869634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10086AFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10086B004(uint64_t a1)
{
  v2 = sub_10001A3E8();
  if ((**v2)(v2))
  {
    if (qword_10265AE98 != -1)
    {
      sub_10195F09C();
    }

    v3 = [qword_10265AE90 objectForKeyedSubscript:a1];
    if (v3)
    {
      return v3;
    }
  }

  return a1;
}

id sub_10086B084(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  *(*(*(a1 + 40) + 8) + 40) = sub_100792C78(a2, &__dst);
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  return *(*(*(a1 + 40) + 8) + 40);
}

void sub_10086B180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10086B19C(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (*(*(a1[6] + 8) + 40))
  {
    v3 = a1[4];
    v4 = a1[5];

    return [v3 client:v4 didChangeUsageData:?];
  }

  return result;
}

id sub_10086BE38(uint64_t a1)
{
  result = [*(a1 + 32) onStatusBarIconChangeInternal:dword_10265AE88];
  *(*(a1 + 32) + 20) = 0;
  return result;
}

id sub_10086C2D4(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = sub_100792944(a2);
  v3 = *(*(*(a1 + 32) + 8) + 40);

  return v3;
}

void sub_10086C324(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (([*(a1 + 32) isPaired] & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10195F060();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      buf = 68289026;
      v19 = 2082;
      v20 = "";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#usesync Dropping full sync due to being unpaired}", &buf, 0x12u);
    }
  }

  v4 = +[NSMutableDictionary dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:objc_msgSend(*(*(*(a1 + 40) + 8) + 40) forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v11 + 1) + 8 * i)), *(*(&v11 + 1) + 8 * i)}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v7);
  }

  v15[0] = IDSSendMessageOptionTimeoutKey;
  v15[1] = IDSSendMessageOptionEncryptPayloadKey;
  v16[0] = &off_10254F0C8;
  v16[1] = &__kCFBooleanTrue;
  v15[2] = IDSSendMessageOptionForceLocalDeliveryKey;
  v15[3] = IDSSendMessageOptionQueueOneIdentifierKey;
  v16[2] = &__kCFBooleanTrue;
  v16[3] = @"kCLUsageSyncResyncResponseQueueIdentifierKey";
  [*(a1 + 32) sendMessageWithMessageType:@"kCLUsageSyncMessageResyncResponseKey" dataPayload:v4 priority:300 idsOptions:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v16, v15, 4)}];
  if (qword_1025D47A0 != -1)
  {
    sub_10195F074();
  }

  v10 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v19 = 2082;
    v20 = "";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync Enqueued all usage data}", &buf, 0x12u);
  }
}

BOOL sub_10086D140(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) UTF8String];
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  sub_100792ED0(a2, &__dst, *(a1 + 40));
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  result = sub_1007934B0(a2, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10086D23C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10086D258(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 21) = 1;
  }

  return result;
}

id sub_10086D5F8(uint64_t a1, uint64_t a2)
{
  sub_100793384(a2, *(a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v6 = result;
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

        *(*(*(a1 + 40) + 8) + 24) = sub_1007934B0(a2, [*(a1 + 32) objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v8)]);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_10086D714(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    *(*(result + 32) + 21) = 1;
  }

  return result;
}

void sub_10086E01C(id a1, void *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_10195F060();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289026;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#usesync paired device is no longer nearby.  Removing usage}", v4, 0x12u);
  }

  sub_1007A3758(a2);
}

uint64_t sub_10086E0F0(uint64_t result)
{
  *(*(result + 32) + 21) = 0;
  *(*(result + 32) + 22) = 1;
  return result;
}

id sub_10086E118(uint64_t a1)
{
  result = [*(a1 + 32) requestFullResync];
  *(*(a1 + 32) + 22) = 0;
  return result;
}

void sub_10086E2DC(id a1)
{
  qword_10265AE90 = objc_alloc_init(NSMutableDictionary);
  v1 = sub_10078D780();

  [v1 enumerateKeysAndObjectsUsingBlock:&stru_1024785E8];
}

void sub_10086E720(_Unwind_Exception *a1)
{
  sub_1003C93BC(v1 + 320, *v2);
  sub_100734014(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10086E790(uint64_t a1)
{
  if (*(a1 + 88))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10195F11C();
    }

    v2 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGCZ,destroy geocodec malloc zone,~CLRavenGeoMapBuildingDataManager()", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195F130(buf);
      v4 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLRavenGeoMapBuildingDataManager::~CLRavenGeoMapBuildingDataManager()", "%s\n", v4);
      if (v4 != buf)
      {
        free(v4);
      }
    }

    [*(a1 + 88) clearBuildingTiles];
    GEOResetGeoCodecsAllocator();

    *(a1 + 88) = 0;
  }

  sub_1003C93BC(a1 + 320, *(a1 + 328));
  sub_100734014(a1);
  return a1;
}

void sub_10086E924(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10086E934(CLMotionActivity *this, double *a2)
{
  if (BYTE2(this[3].vehicleType) == 1)
  {
    if (qword_1025D4680 != -1)
    {
      sub_10195F174();
    }

    v2 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      v10[0] = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "clrgmd,Query in progress, can't start new query", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195F188();
    }

    return 0;
  }

  if ((this[3].vehicleType & 0x100) == 0 && (LODWORD(this[3].estExitTime) - 3) > 1)
  {
    return 0;
  }

  v7 = (this + 136);
  if (LODWORD(this[1].estExitTime))
  {
    if ((CLMotionActivity::isWalking((this + 136)) & 1) == 0 && (CLMotionActivity::isRunning((this + 136)) & 1) == 0)
    {
      type = v7->type;
      if (v7->type != 3 && type != 11805 && type != 90603 && (this[3].vehicleType & 1) != 0)
      {
        return 0;
      }
    }
  }

  v5 = 1;
  if (this[1].isStanding)
  {
    v8 = sub_100109D18(&this->isStanding, *a2, a2[1], *&this[1].mountedConfidence, this[1].conservativeMountedProbability, 0.0);
    *&this->fsmTransitionData.fConsecStatic = v8;
    LOBYTE(this[1].type) = 1;
    return v8 >= *&this[1].isVehicleConnected;
  }

  return v5;
}

void sub_10086EA98(uint64_t a1, double *a2, uint64_t *a3)
{
  if (sub_10086E934(a1, a2))
  {
    if (qword_1025D4680 != -1)
    {
      sub_10195F174();
    }

    v6 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "clrgmd,Query required", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195F270();
    }

    v7 = objc_autoreleasePoolPush();
    v8 = *a2;
    v9 = a2[1];
    v24 = *a2;
    v10 = +[NSMutableArray array];
    v11 = *(a1 + 88);
    if (v11)
    {
      [v11 setAllowNetworkTileLoad:*(a1 + 287)];
    }

    v12 = sub_1000081AC();
    v13 = *a3;
    v14 = a3[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10086EF40;
    v23[3] = &unk_102478610;
    v23[4] = v10;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3321888768;
    v19[2] = sub_10086F090;
    v19[3] = &unk_102478638;
    v19[5] = a1;
    v19[6] = v13;
    v20 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[4] = v10;
    v21 = v24;
    v22 = v12;
    if (*(a1 + 88))
    {
      if (sub_100020608(v8, v9))
      {
        *(a1 + 306) = 1;
        sub_10086F63C(a1);
        if (qword_1025D4680 != -1)
        {
          sub_10195F0B0();
        }

        v15 = qword_1025D4688;
        if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134545921;
          v30 = v8;
          v31 = 2053;
          v32 = v9;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "clrgmd,starting building data query at lat,%{sensitive}.7lf,lon,%{sensitive}.7lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195F0D8(buf);
          v25 = 134545921;
          v26 = v8;
          v27 = 2053;
          v28 = v9;
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLRavenGeoMapBuildingDataManager::QueryAndSerializeBuildingData(const CLClientLocationCoordinate &, std::weak_ptr<CLRavenController>)", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }

        [*(a1 + 88) findBuildingsNear:*(a1 + 120) radius:v23 tileSetStyle:v19 handler:v8 completionHandler:{v9, *(a1 + 312)}];
      }

      else
      {
        if (qword_1025D4680 != -1)
        {
          sub_10195F0B0();
        }

        v16 = qword_1025D4688;
        if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "clrgmd,Invalid query center coordinate", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10195F0D8(buf);
          LOWORD(v25) = 0;
          v18 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLRavenGeoMapBuildingDataManager::QueryAndSerializeBuildingData(const CLClientLocationCoordinate &, std::weak_ptr<CLRavenController>)", "%s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_10086EF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10086EF40(uint64_t a1, void *a2)
{
  if (a2)
  {
    if ([objc_msgSend(a2 "sections")])
    {
      v4 = *(a1 + 32);

      [v4 addObject:a2];
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_10195F174();
      }

      v6 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "clrgmd,No sections found in the building data", v7, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10195F35C();
      }
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_10195F174();
    }

    v5 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "clrgmd,Returned building data has invalid memory location", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10195F444();
    }
  }
}

void sub_10086F090(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        if (a2)
        {
          if (qword_1025D4680 != -1)
          {
            sub_10195F174();
          }

          v8 = qword_1025D4688;
          if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349571;
            v16 = [a2 code];
            v17 = 2114;
            v18 = [a2 domain];
            v19 = 2117;
            v20 = [a2 localizedDescription];
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "clrgmd,Building data query, error:%{public}lld (%{public}@) %{sensitive}@", buf, 0x20u);
          }

          if (!sub_10000A100(121, 0))
          {
            goto LABEL_27;
          }

          sub_10195F0D8(buf);
          [a2 code];
          [a2 domain];
          [a2 localizedDescription];
          v9 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "void CLRavenGeoMapBuildingDataManager::QueryAndSerializeBuildingData(const CLClientLocationCoordinate &, std::weak_ptr<CLRavenController>)_block_invoke", "%s\n", v9);
          if (v9 == buf)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ([*(a1 + 32) count])
          {
            sub_100C04508(v7, *(a1 + 32), (a1 + 64), (a1 + 80));
            goto LABEL_27;
          }

          if (qword_1025D4680 != -1)
          {
            sub_10195F174();
          }

          v11 = qword_1025D4688;
          if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "clrgmd,No building data obtained from the query", buf, 2u);
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_27;
          }

          sub_10195F0D8(buf);
          v9 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLRavenGeoMapBuildingDataManager::QueryAndSerializeBuildingData(const CLClientLocationCoordinate &, std::weak_ptr<CLRavenController>)_block_invoke", "%s\n", v9);
          if (v9 == buf)
          {
            goto LABEL_27;
          }
        }

        free(v9);
LABEL_27:
        [*(v5 + 88) clearBuildingTiles];
        if (*v5)
        {

          *v5 = 0;
        }

        if (qword_1025D4680 != -1)
        {
          sub_10195F0B0();
        }

        v12 = qword_1025D4688;
        if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "clrgmd,Completed Handling of building data in GEOMapFeatureAccessCompletionHandler", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10195F0D8(buf);
          v14 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLRavenGeoMapBuildingDataManager::QueryAndSerializeBuildingData(const CLClientLocationCoordinate &, std::weak_ptr<CLRavenController>)_block_invoke", "%s\n", v14);
          if (v14 != buf)
          {
            free(v14);
          }
        }

        *(v5 + 306) = 0;
LABEL_35:
        sub_100008080(v6);
        return;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  if (qword_1025D4680 != -1)
  {
    sub_10195F174();
  }

  v10 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "clrgmd,Building data query's CompletionHandler called after Raven controller deletion", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10195F0D8(buf);
    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLRavenGeoMapBuildingDataManager::QueryAndSerializeBuildingData(const CLClientLocationCoordinate &, std::weak_ptr<CLRavenController>)_block_invoke", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (v6)
  {
    goto LABEL_35;
  }
}

uint64_t sub_10086F610(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}