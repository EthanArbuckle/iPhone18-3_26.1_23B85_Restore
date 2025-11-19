void sub_10028D7E4(uint64_t a1, double a2)
{
  v3 = *(a1 + 8);
  if (v3 > 0.0 && v3 > a2)
  {
    return;
  }

  v6 = *(a1 + 112);
  if (v6 > 0.0 && v6 < a2)
  {
    v3 = *(a1 + 112);
  }

  else if (v3 <= 0.0 || v6 >= 0.0 || *(a1 + 80) || v3 >= a2 || *(a1 + 16) >= 0.0)
  {
    goto LABEL_18;
  }

  *(a1 + 104) = a2 - v3 + *(a1 + 104);
LABEL_18:
  if (qword_1025D4770 != -1)
  {
    sub_10025BA60();
  }

  v8 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v9 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v9 = *v9;
    }

    v11 = *(a1 + 104);
    v10 = *(a1 + 112);
    v12 = *(a1 + 8);
    *buf = 136447234;
    v15 = v9;
    v16 = 2050;
    v17 = a2;
    v18 = 2050;
    v19 = v10;
    v20 = 2050;
    v21 = v11;
    v22 = 2050;
    v23 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,set IO StaticPeriodStop at mct,%{public}.3f,staticStartMCT,%{public}.3f,accumStaticPeriods_s,%{public}.3f,intgStartTimeMCT,%{public}.3f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::setDeviceStaticPeriodStop(const CFTimeInterval)", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  *(a1 + 112) = 0xBFF0000000000000;
}

void sub_10028DA60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10028DA6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    sub_1000432E8("array::at");
  }

  v2 = *(result + 4 * a2);
  *(result + 4 * a2) = v2 - 1;
  if (v2 <= 0)
  {
    sub_101A09AC0();
  }

  return result;
}

void sub_10028DAAC(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101A2900C();
  }

  v7 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100006C9C(a3);
    v9 = a4 + 8;
    if (*(a4 + 31) < 0)
    {
      v9 = *(a4 + 8);
    }

    v25 = 68289795;
    v26 = 2082;
    v27 = "";
    v28 = 2081;
    v29 = v8;
    v30 = 2081;
    v31 = v9;
    v32 = 2050;
    v33[0] = 11;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onAppMonitorNotification, notification:%{private, location:escape_only}s, bundleId:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v25, 0x30u);
  }

  v10 = *(a4 + 31);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 16);
  }

  if (v10 == 16)
  {
    v12 = v11 >= 0 ? (a4 + 8) : *(a4 + 8);
    v14 = *v12;
    v13 = v12[1];
    if (v14 == 0x6C7070612E6D6F63 && v13 == 0x6172656D61632E65)
    {
      if (*a3 <= 0xC)
      {
        v16 = 1 << *a3;
        if ((v16 & 0x1DA1) != 0)
        {
          if (qword_1025D47D0 != -1)
          {
            sub_101A28FA8();
          }

          v17 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_ERROR))
          {
            v18 = sub_100006C9C(a3);
            v25 = 68289539;
            v26 = 2082;
            v27 = "";
            v28 = 2081;
            v29 = v18;
            v30 = 2050;
            v31 = 11;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:WARN, Received expected CLAppMonitor notification type for camera bundle ID, notification:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v25, 0x26u);
            if (qword_1025D47D0 != -1)
            {
              sub_101A28FA8();
            }
          }

          v19 = qword_1025D47D8;
          if (os_signpost_enabled(qword_1025D47D8))
          {
            v20 = sub_100006C9C(a3);
            v25 = 68289539;
            v26 = 2082;
            v27 = "";
            v28 = 2081;
            v29 = v20;
            v30 = 2050;
            v31 = 11;
            _os_signpost_emit_with_name_impl(dword_100000000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "WARN, Received expected CLAppMonitor notification type for camera bundle ID", "{msg%{public}.0s:WARN, Received expected CLAppMonitor notification type for camera bundle ID, notification:%{private, location:escape_only}s, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v25, 0x26u);
          }
        }

        else if ((v16 & 0x258) != 0)
        {
          *(a1 + 2017) = 1;
        }

        else
        {
          *(a1 + 2017) = 0;
          if ((*(a1 + 2016) & 1) == 0)
          {
            sub_10028B5F0(a1);
          }

          if (qword_1025D47D0 != -1)
          {
            sub_101A28FA8();
          }

          v21 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            v22 = sub_100006C9C(a3);
            if (*(a4 + 31) >= 0)
            {
              v23 = a4 + 8;
            }

            else
            {
              v23 = *(a4 + 8);
            }

            v24 = *(a1 + 2017);
            v25 = 68290051;
            v26 = 2082;
            v27 = "";
            v28 = 2081;
            v29 = v22;
            v30 = 2081;
            v31 = v23;
            v32 = 1025;
            LODWORD(v33[0]) = v24;
            WORD2(v33[0]) = 2050;
            *(v33 + 6) = 11;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onAppMonitorNotification:receivedCameraBundleId-setting fIsCameraAppRunning false, notification:%{private, location:escape_only}s, bundleId:%{private, location:escape_only}s, fIsCameraAppRunning:%{private}hhd, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v25, 0x36u);
          }
        }
      }

      [*(a1 + 2000) updateCameraRunning:*(a1 + 2017)];
    }
  }
}

void sub_10028DE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A0A280();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterAvengerExternal::onAppMonitorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A0A294();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterAvengerExternal::onAppMonitorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  (*(**(a4 + 56) + 88))(*(a4 + 56), a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10028E080(uint64_t result, _DWORD *a2, uint64_t a3, double *a4)
{
  if (*a2 >= 0.0)
  {
    v6 = result;
    v7 = *(result + 240);
    if (v7 >= 0.0)
    {
      v8 = *a4 - *(result + 248);
      if (v8 > 4.0 || v8 < 0.0)
      {
        sub_10028E5F0(result);
        v7 = *(v6 + 240);
      }
    }

    if (v7 < 0.0)
    {
      *(v6 + 240) = *a2;
      *(v6 + 244) = 1061997773;
      *(v6 + 248) = *a4;
      sub_10028E754();
    }

    sub_10028E754();
  }

  return result;
}

void sub_10028E5F0(uint64_t a1)
{
  *(a1 + 248) = 0;
  *(a1 + 240) = -1082130432;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(a1 + 64) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(a1 + 40);
      v2 = (*(a1 + 32) + 8);
      *(a1 + 32) = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 512;
  }

  *(a1 + 56) = v6;
LABEL_8:
  sub_1003C93BC(a1 + 72, *(a1 + 80));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 80;
  v7 = *(a1 + 128);
  v8 = *(a1 + 136);
  *(a1 + 160) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 136);
      v7 = (*(a1 + 128) + 8);
      *(a1 + 128) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 512;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_15;
    }

    v11 = 1024;
  }

  *(a1 + 152) = v11;
LABEL_15:
  *(a1 + 112) = 0;
  v12 = *(a1 + 200);
  v13 = *(a1 + 208);
  *(a1 + 232) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 208);
      v12 = (*(a1 + 200) + 8);
      *(a1 + 200) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 512;
    goto LABEL_21;
  }

  if (v14 == 2)
  {
    v16 = 1024;
LABEL_21:
    *(a1 + 224) = v16;
  }

  *(a1 + 184) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
}

void sub_10028E7F4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10028E850(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028F31C(result, a4);
  }

  return result;
}

void sub_10028E8B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028E96C(uint64_t a1)
{
  v2 = sub_1000081AC();
  __src = 0;
  v21 = 0;
  v22 = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + -60.0;
    do
    {
      for (i = v3[5]; i; i = *i)
      {
        v7 = *(i + 8) > 0.0 && v5 < *(i + 10);
        if (v7 || *(i + 6) > 0.0 || *(i + 7) > 0.0)
        {
          sub_10029E1C0(*(v3 + 4), i + 5, buf);
          v8 = v21;
          if (v21 >= v22)
          {
            v10 = __src;
            v11 = v21 - __src;
            v12 = 0x6DB6DB6DB6DB6DB7 * ((v21 - __src) >> 2);
            v13 = v12 + 1;
            if ((v12 + 1) > 0x924924924924924)
            {
              sub_10028C64C();
            }

            if (0xDB6DB6DB6DB6DB6ELL * ((v22 - __src) >> 2) > v13)
            {
              v13 = 0xDB6DB6DB6DB6DB6ELL * ((v22 - __src) >> 2);
            }

            if ((0x6DB6DB6DB6DB6DB7 * ((v22 - __src) >> 2)) >= 0x492492492492492)
            {
              v14 = 0x924924924924924;
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              sub_10028E7F4(&__src, v14);
            }

            v15 = (4 * ((v21 - __src) >> 2));
            *v15 = *buf;
            *(v15 + 12) = *&buf[12];
            v9 = 28 * v12 + 28;
            v16 = (28 * v12 - v11);
            memcpy(v15 - v11, v10, v11);
            v17 = __src;
            __src = v16;
            v21 = v9;
            v22 = 0;
            if (v17)
            {
              operator delete(v17);
            }
          }

          else
          {
            *v21 = *buf;
            *(v8 + 12) = *&buf[12];
            v9 = (v8 + 28);
          }

          v21 = v9;
        }
      }

      v4 += v3[6];
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A3AD8C();
  }

  v18 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = 0x6DB6DB6DB6DB6DB7 * ((v21 - __src) >> 2);
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "#SatReport,info available for %zu SVs with %zu above-horizon SVs copied to client report", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A3ADB4(buf);
    v23 = 134218240;
    v24 = v4;
    v25 = 2048;
    v26 = 0x6DB6DB6DB6DB6DB7 * ((v21 - __src) >> 2);
    v19 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::shared_ptr<const CLDaemonLocationPrivate::AboveHorizonSatelliteVisibilityReport> GNSS::ConvertSatelliteVisibilityReportToCLClientSatelliteReport(const GNSS::SatelliteVisibilityReport &)", "%s\n", v19);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  sub_1002A89F4();
}

void sub_10028ECE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10028ED10(void *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10028FBF8(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 304 * (v7 & 0xF);
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[3];
  *(v8 + 32) = a2[2];
  *(v8 + 48) = v11;
  *v8 = v9;
  *(v8 + 16) = v10;
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  *(v8 + 96) = a2[6];
  *(v8 + 112) = v14;
  *(v8 + 64) = v12;
  *(v8 + 80) = v13;
  v15 = a2[8];
  v16 = a2[9];
  v17 = a2[11];
  *(v8 + 160) = a2[10];
  *(v8 + 176) = v17;
  *(v8 + 128) = v15;
  *(v8 + 144) = v16;
  v18 = a2[12];
  v19 = a2[13];
  v20 = a2[14];
  *(v8 + 240) = *(a2 + 30);
  *(v8 + 208) = v19;
  *(v8 + 224) = v20;
  *(v8 + 192) = v18;
  sub_10028EE00(v8 + 248, a2 + 248);
  result = a2[18];
  *(v8 + 288) = result;
  ++a1[5];
  return result;
}

uint64_t sub_10028EE00(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10029F7AC(a1, i + 4);
  }

  return a1;
}

uint64_t sub_10028EE78(uint64_t a1, float *a2)
{
  result = *(a1 + 120);
  if (result)
  {
    v4 = (*(*result + 24))(result, @"AppleVoltageDictionary");
    v5 = [v4 objectForKeyedSubscript:@"PRESSURE_TEMP"];
    [v5 floatValue];
    *a2 = v6 / 100.0;

    return v5 != 0;
  }

  return result;
}

void sub_10028EF0C(uint64_t a1, uint64_t a2, float32x2_t *a3, int a4, uint64_t a5)
{
  LODWORD(v5) = a4;
  *(a5 + 52) |= 2u;
  v9 = *(a5 + 40);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 488) |= 2u;
  v10 = *(v9 + 16);
  if (!v10)
  {
    operator new();
  }

  sub_100294964(a2, a5);
  *(v10 + 44) |= 1u;
  v11 = *(v10 + 8);
  if (!v11)
  {
    operator new();
  }

  if (sub_10027E930(a2, v11))
  {
    goto LABEL_13;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v12 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Error: Failed to convert gyro notification receipt time to protobuf", v18, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
LABEL_13:
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_23:
    v14 = 0.0;
    goto LABEL_24;
  }

  sub_101A25838();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_14:
  v5 = v5;
  do
  {
    v13 = *a3;
    v14 = *a3 - *(a2 + 8);
    *v18 = v14 + *a2;
    v18[1] = v13;
    *&v18[2] = v14 + *(a2 + 16);
    v19 = *(a2 + 24);
    v15 = *(v10 + 28);
    v16 = *(v10 + 24);
    if (v16 >= v15)
    {
      if (v15 == *(v10 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 16), v15 + 1);
        v15 = *(v10 + 28);
      }

      *(v10 + 28) = v15 + 1;
      sub_100308B58();
    }

    v17 = *(v10 + 16);
    *(v10 + 24) = v16 + 1;
    sub_100308BBC(a3, *(v17 + 8 * v16), v18);
    a3 += 3;
    --v5;
  }

  while (v5);
LABEL_24:
  sub_100293D9C(a1 + 4680, 1u, *a2, -v14);
}

void *sub_10028F1A8(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x924924924924924)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x492492492492492)
      {
        v11 = 0x924924924924924;
      }

      else
      {
        v11 = v10;
      }

      sub_10028F31C(v6, v11);
    }

    sub_10028C64C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void sub_10028F31C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x924924924924925)
  {
    sub_10028E7F4(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_10028F36C(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((*(a1 + 96) & 0xFFFFFFF7) == 1)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0.0)
    {
      v5 = *(a1 + 680);
      if (v5)
      {
        v7 = *(a1 + 192);
        *a2 = *(a1 + 76);
        *(a2 + 8) = v7;
        *(a2 + 16) = v4;
        v8 = *v5;
        v9 = v5[1];
        if (v8 == v9)
        {
          v10 = 0;
        }

        else
        {
          LODWORD(v10) = 0;
          do
          {
            v10 = v10 + *(v8 + 24);
            v8 += 28;
          }

          while (v8 != v9);
        }

        v11 = (a2 + 24);
        *(a2 + 32) = *(a2 + 24);
        sub_10028F550((a2 + 24), v10);
        v12 = *(a1 + 680);
        v13 = *v12;
        v14 = v12[1];
        if (*v12 != v14)
        {
          do
          {
            if (*(v13 + 24) == 1)
            {
              v16 = *(a2 + 32);
              v15 = *(a2 + 40);
              if (v16 >= v15)
              {
                v19 = 0x6DB6DB6DB6DB6DB7 * ((v16 - *v11) >> 2);
                v20 = v19 + 1;
                if ((v19 + 1) > 0x924924924924924)
                {
                  sub_10028C64C();
                }

                v21 = 0x6DB6DB6DB6DB6DB7 * ((v15 - *v11) >> 2);
                if (2 * v21 > v20)
                {
                  v20 = 2 * v21;
                }

                if (v21 >= 0x492492492492492)
                {
                  v22 = 0x924924924924924;
                }

                else
                {
                  v22 = v20;
                }

                if (v22)
                {
                  sub_10028E7F4(a2 + 24, v22);
                }

                v23 = 28 * v19;
                v24 = *v13;
                *(v23 + 12) = *(v13 + 12);
                *v23 = v24;
                v18 = 28 * v19 + 28;
                v25 = *(a2 + 24);
                v26 = *(a2 + 32) - v25;
                v27 = 28 * v19 - v26;
                memcpy((v23 - v26), v25, v26);
                v28 = *(a2 + 24);
                *(a2 + 24) = v27;
                *(a2 + 32) = v18;
                *(a2 + 40) = 0;
                if (v28)
                {
                  operator delete(v28);
                }
              }

              else
              {
                v17 = *v13;
                *(v16 + 12) = *(v13 + 12);
                *v16 = v17;
                v18 = v16 + 28;
              }

              *(a2 + 32) = v18;
            }

            v13 = (v13 + 28);
          }

          while (v13 != v14);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_10028F550(void *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x924924924924925)
    {
      sub_10028E7F4(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_10028F634(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v20 = *a2;
  v21 = *(a2 + 16);
  __p = 0;
  if (&v20 != a2)
  {
    sub_10028F1A8(&__p, *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 2));
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    (*(*v3 + 48))(v3, &v20);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 24);
    v7 = *(v6[(v4 + v5 - 1) / 0x55] + 6 * ((v4 + v5 - 1) % 0x55));
    if (v7 > *&v20)
    {
      v8 = *(a1 + 32);
      if (v8 == v6)
      {
        v8 = *(a1 + 24);
      }

      else
      {
        v9 = &v6[v5 / 0x55];
        v10 = *v9;
        v11 = *v9 + 48 * (v5 % 0x55);
        v12 = v6[(v5 + v4) / 0x55] + 48 * ((v5 + v4) % 0x55);
        if (v11 != v12)
        {
          do
          {
            v13 = *(v11 + 24);
            if (v13)
            {
              *(v11 + 32) = v13;
              operator delete(v13);
              v10 = *v9;
            }

            v11 += 48;
            if (v11 - v10 == 4080)
            {
              v14 = v9[1];
              ++v9;
              v10 = v14;
              v11 = v14;
            }
          }

          while (v11 != v12);
          v6 = *(a1 + 24);
          v8 = *(a1 + 32);
        }
      }

      *(a1 + 56) = 0;
      v15 = v8 - v6;
      if (v15 >= 3)
      {
        do
        {
          operator delete(*v6);
          v16 = *(a1 + 32);
          v6 = (*(a1 + 24) + 8);
          *(a1 + 24) = v6;
          v15 = (v16 - v6) >> 3;
        }

        while (v15 > 2);
      }

      if (v15 == 1)
      {
        v17 = 42;
      }

      else
      {
        if (v15 != 2)
        {
LABEL_23:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v18 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v30 = v20;
            v31 = 2048;
            v32 = v7;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A89850(buf);
            v25 = 134218240;
            v26 = v20;
            v27 = 2048;
            v28 = v7;
            v19 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLSourceBuffer<CLOutdoorGnssLeechLocation>::add(const T &) [T = CLOutdoorGnssLeechLocation]", "%s\n", v19);
            if (v19 != buf)
            {
              free(v19);
            }
          }

          goto LABEL_28;
        }

        v17 = 85;
      }

      *(a1 + 48) = v17;
      goto LABEL_23;
    }
  }

LABEL_28:
  sub_10028FB1C((a1 + 16), &v20);
  *(a1 + 96) = v20;
  *(a1 + 112) = v21;
  if ((a1 + 96) != &v20)
  {
    sub_10028F1A8((a1 + 120), __p, v23, 0x6DB6DB6DB6DB6DB7 * ((v23 - __p) >> 2));
  }

  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_10028F9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028FA04(uint64_t a1, int *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_100325278();
  }

  v3 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = 134218496;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "GnssLeechLocation,startTime,%f,machTime,%f,lifespan,%f", &v7, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019CB02C(a2);
  }
}

uint64_t sub_10028FAF4(void *a1)
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

uint64_t sub_10028FB1C(void *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 85 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100DB8EC0(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x55)) + 48 * (v7 % 0x55);
  v9 = *a2;
  *(v8 + 16) = *(a2 + 2);
  *v8 = v9;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0;
  result = sub_10028E850(v8 + 24, *(a2 + 3), *(a2 + 4), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 4) - *(a2 + 3)) >> 2));
  ++a1[5];
  return result;
}

void *sub_10028FBF8(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
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

void sub_10028FD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028FDCC(uint64_t result, unint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 48);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 48) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 48);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

void *sub_10028FE90(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      sub_1004CA6DC(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

uint64_t sub_10028FF2C(_BYTE *a1, void *a2, uint64_t *a3, int a4, double a5, double a6, double a7)
{
  (*(*a1 + 16))(a1);
  if (a1[224] == 1)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101A2EDD4();
    }

    v14 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,map data requested while map data buffering was in progress", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A2ED90(buf);
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoMapFeatureRoadGeometryBuffer::findRoadsNear(const double, const double, const double, const std::map<CLMapRoadKey, CLMapRoadPtr> &, std::vector<CLMapRoadPtr> &, const BOOL)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    sub_1002916F8(a1);
  }

  if (!a4)
  {
    sub_1004C9BF4(a3);
    v32 = *a2;
    v30 = (a2 + 1);
    v31 = v32;
    if (v32 == v30)
    {
      goto LABEL_54;
    }

    while (1)
    {
      v33 = *(v31 + 6);
      if (v33)
      {
        if (*(v33 + 144) - *(v33 + 136) >= 0x11uLL)
        {
          v34 = 0;
          v35 = 0;
          while (1)
          {
            GEOClosestCoordinateOnLineSegmentFromCoordinate();
            GEOCalculateDistance();
            if (v36 <= a7)
            {
              break;
            }

            ++v35;
            v34 += 16;
            if (v35 >= ((*(v33 + 144) - *(v33 + 136)) >> 4) - 1)
            {
              goto LABEL_48;
            }
          }

LABEL_47:
          sub_1005729E8(a3, v31 + 3);
          goto LABEL_48;
        }

        GEOCalculateDistance();
        if (v37 <= a7)
        {
          goto LABEL_47;
        }
      }

LABEL_48:
      v38 = *(v31 + 1);
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = *(v31 + 2);
          v29 = *v39 == v31;
          v31 = v39;
        }

        while (!v29);
      }

      v31 = v39;
      if (v39 == v30)
      {
        goto LABEL_54;
      }
    }
  }

  sub_1000081AC();
  sub_100291A6C(buf, a5, a6, a7);
  sub_1004C9BF4(a3);
  v19 = *a2;
  v17 = (a2 + 1);
  v18 = v19;
  if (v19 == v17)
  {
    goto LABEL_54;
  }

  do
  {
    v16 = v18 + 3;
    v20 = *(v18 + 6);
    if (!v20)
    {
      goto LABEL_32;
    }

    v21 = *(v20 + 136);
    v22 = *(v20 + 144);
    if (v21 == v22)
    {
      goto LABEL_32;
    }

    while (1)
    {
      if (*buf > *v21 || v44 < *v21)
      {
        goto LABEL_29;
      }

      v24 = v21[1];
      if (v45 <= v43)
      {
        break;
      }

      if (v45 >= v24 && v43 <= v24)
      {
        goto LABEL_31;
      }

LABEL_29:
      v21 += 2;
      if (v21 == v22)
      {
        goto LABEL_32;
      }
    }

    if (v45 >= v43)
    {
      goto LABEL_29;
    }

    if (v45 <= v24 && v43 >= v24)
    {
      goto LABEL_29;
    }

LABEL_31:
    sub_1005729E8(a3, v16);
LABEL_32:
    v27 = *(v18 + 1);
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        v28 = *(v18 + 2);
        v29 = *v28 == v18;
        v18 = v28;
      }

      while (!v29);
    }

    v18 = v28;
  }

  while (v28 != v17);
LABEL_54:
  (*(*a1 + 24))(a1, v16);
  return 1;
}

void sub_10029031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100290364(double *a1, double *a2, double *a3, double *a4, double a5, double a6, double a7)
{
  if (a1 && a2 && a3)
  {
    if (a4)
    {
      v13 = a6 * 0.0174532925;
      v14 = a7 / 6378137.0;
      v15 = __sincos_stret(a5 * 0.0174532925);
      v16 = __sincos_stret(v14);
      v17 = vabdd_f64(asin(v15.__cosval * v16.__sinval + v15.__sinval * v16.__cosval) / 0.0174532925, a5);
      v18 = asin(v15.__cosval * v16.__sinval * 6.123234e-17 + v15.__sinval * v16.__cosval);
      v19 = sin(v18);
      v20 = vabdd_f64((v13 + atan2(v15.__cosval * v16.__sinval, v16.__cosval - v15.__sinval * v19)) / 0.0174532925, a6);
      *a1 = a5 - v17;
      *a3 = v17 + a5;
      *a2 = a6 - v20;
      *a4 = v20 + a6;
    }
  }
}

uint64_t sub_10029046C(uint64_t a1)
{
  v2 = *(a1 + 136);
  v1 = *(a1 + 144);
  if ((v1 - v2) >= 0x11)
  {
    if (v1 - v2 != 32)
    {
      return 1;
    }

    v4 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E7AD7F29ABCAF48uLL), vabdq_f64(*(v1 - 16), *v2)));
    if ((vand_s8(v4, vdup_lane_s32(v4, 1)).u32[0] & 1) == 0)
    {
      return 1;
    }
  }

  result = 0;
  ++qword_102636B50;
  return result;
}

uint64_t sub_1002904DC(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v85 = a4;
  if ((*(a1 + 32) & 1) == 0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101AD2104();
    }

    v17 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 8);
      *buf = 134349056;
      *&buf[4] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,CLGeoMapFeatureAccessGeometry geometry is not initialized, use initialize() function", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AD2718();
    }

    return 0;
  }

  context = objc_autoreleasePoolPush();
  v84 = *(a3 + 56);
  v7 = round(a4);
  v8 = (v7 + v7);
  if (v8 >= 0x1F4)
  {
    v9 = 500;
  }

  else
  {
    v9 = v8;
  }

  v81 = 0;
  v82 = 0;
  v83 = 0;
  sub_10028FE90(&v81, v9);
  if (*(a1 + 33) != 1)
  {
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_100F3E30C;
    v80[3] = &unk_1024BEFF0;
    v80[4] = +[NSMutableArray array];
    *&v117 = v80;
    *&v87[24] = 0;
    operator new();
  }

  if (*(a1 + 16))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_100292764();
    }

    v10 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 8);
      v12 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
      *buf = 134349312;
      *&buf[4] = v11;
      *&buf[12] = 2050;
      *&buf[14] = v12;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,RoadBuffer,findRoadsNear fRoadBuffer.size,%{public}lu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AD25D8(buf);
      v71 = *(a1 + 8);
      v72 = (*(*(a1 + 16) + 336) - *(*(a1 + 16) + 328)) >> 4;
      *v87 = 134349312;
      *&v87[4] = v71;
      *&v87[12] = 2050;
      *&v87[14] = v72;
      v73 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "%s\n", v73);
      if (v73 != buf)
      {
        free(v73);
      }
    }

    if ((sub_100291558(*(a1 + 16), &v81, 1, 0, *(a3 + 56), *(a3 + 64), v85) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_100292764();
      }

      v13 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLMM,%{public}.1lf,Warning,RoadBuffer,findRoadsNear returned false", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AD25D8(buf);
        v15 = *(a1 + 8);
        *v87 = 134349056;
        *&v87[4] = v15;
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "%s\n", v16);
        goto LABEL_88;
      }

      goto LABEL_96;
    }

    v20 = v81;
    v21 = v82;
    v19 = 1;
    if (v81 == v82)
    {
      goto LABEL_97;
    }

    __asm { FMOV            V0.2D, #-1.0 }

    v76 = _Q0;
    while (1)
    {
      if (!*v20)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_100292764();
        }

        v68 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
        {
          v69 = *(a1 + 8);
          *buf = 134349056;
          *&buf[4] = v69;
          _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,makeRoadFromGEOMapFeatureRoad returned nullptr", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101AD25D8(buf);
          v74 = *(a1 + 8);
          *v87 = 134349056;
          *&v87[4] = v74;
          v75 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "%s\n", v75);
          if (v75 != buf)
          {
            free(v75);
          }
        }

        sub_10004FF5C(a2);
        goto LABEL_96;
      }

      if (sub_10029046C(*v20))
      {
        break;
      }

      v20 += 2;
      if (v20 == v21)
      {
        v19 = 1;
        goto LABEL_97;
      }
    }

    v111 = 0;
    v110 = 0;
    v112 = 0.0;
    v113 = 1;
    v114 = 0.0;
    v116 = 0;
    v115 = 0uLL;
    *v87 = 0;
    *&v87[8] = 0;
    *&v87[16] = v76;
    v88 = 0;
    v89 = 0;
    v90 = 0xBFF0000000000000;
    v102 = 0;
    v103 = 0;
    memset(&v100[32], 0, 32);
    v101 = 0;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    memset(v107, 0, 27);
    memset(&v107[32], 0, 48);
    memset(v100, 0, 30);
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v109 = 0xBFF0000000000000;
    v108 = 0;
    v27 = *v20;
    v28 = *(*v20 + 136);
    v29 = *(*v20 + 144) - v28;
    v79 = 0xBFF0000000000000;
    if ((v29 >> 4) <= 1)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_100292764();
      }

      v50 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AD25D8(buf);
        LOWORD(v117) = 0;
        v62 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = GEOLocationCoordinate2D]", "%s\n", v62);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      if (qword_1025D46B0 != -1)
      {
        sub_100292764();
      }

      v51 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 8);
        *buf = 134349056;
        *&buf[4] = v52;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,findClosestPointOnRoad returned false", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        goto LABEL_80;
      }

LABEL_71:
      if (SHIBYTE(v96) < 0)
      {
        operator delete(*(&v95 + 1));
      }

      if (v111)
      {
        sub_100008080(v111);
      }

      goto LABEL_96;
    }

    v30 = *v28;
    v31 = v28[1];
    *buf = 0;
    *&buf[8] = 0;
    *&v117 = 0;
    sub_1001063B0((a1 + 56), buf, &buf[8], &v117, *&v84, *(&v84 + 1), 0.0, v30, v31, 0.0);
    v32 = 0;
    v33 = ((v29 >> 4) & 0x7FFFFFFF) - 1;
    v34 = 0.0;
    v35 = -1.0;
    v36 = 0.0;
    while (1)
    {
      v37 = *(v27 + 136) + v32;
      v38 = *(v37 + 16);
      v39 = *(v37 + 24);
      v117 = 0uLL;
      v86 = 0;
      sub_1001063B0((a1 + 56), &v117, &v117 + 1, &v86, *&v84, *(&v84 + 1), 0.0, v38, v39, 0.0);
      v40 = (*buf - *&v117) * (*buf - *&v117) + (*&buf[8] - *(&v117 + 1)) * (*&buf[8] - *(&v117 + 1));
      v41 = 0.0 - *buf;
      if (v40 >= 0.001)
      {
        v43 = ((0.0 - *&buf[8]) * (*(&v117 + 1) - *&buf[8]) + v41 * (*&v117 - *buf)) / v40;
        if (v43 < 0.0)
        {
          v45 = v41 * v41 + (0.0 - *&buf[8]) * (0.0 - *&buf[8]);
          v43 = 0.0;
          goto LABEL_40;
        }

        if (v43 > 1.0)
        {
          v45 = (0.0 - *&v117) * (0.0 - *&v117) + (0.0 - *(&v117 + 1)) * (0.0 - *(&v117 + 1));
          v43 = 1.0;
          goto LABEL_40;
        }

        v42 = (0.0 - (*buf + (*&v117 - *buf) * v43)) * (0.0 - (*buf + (*&v117 - *buf) * v43));
        v44 = 0.0 - (*&buf[8] + (*(&v117 + 1) - *&buf[8]) * v43);
      }

      else
      {
        v42 = v41 * v41;
        v43 = 0.0;
        v44 = 0.0 - *&buf[8];
      }

      v45 = v42 + v44 * v44;
LABEL_40:
      v46 = sqrt(v40);
      v47 = sqrt(v45);
      v48 = v35 < 0.0;
      if (v47 < v35)
      {
        v48 = 1;
      }

      v49 = v34 + v46 * v43;
      if (v48)
      {
        v35 = v47;
        v36 = v49;
      }

      v34 = v34 + v46;
      *buf = v117;
      v32 += 16;
      if (!--v33)
      {
        v53 = v36 / v34;
        if (v34 < 0.001)
        {
          v53 = 0.0;
        }

        v79 = *&v53;
        v54 = *(*v20 + 72) != 2;
        if (sub_100291AC4(a1, v87, v20, v54, &v79, 1))
        {
          v56 = *v20;
          v55 = v20[1];
          if (v55)
          {
            atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v57 = v111;
          v110 = v56;
          v111 = v55;
          if (v57)
          {
            sub_100008080(v57);
          }

          v58 = v35;
          v112 = v58;
          v115 = v97;
          v59 = *&v98;
          v114 = v59;
          v116 = v79;
          v113 = v54;
          sub_100292674();
        }

        if (qword_1025D46B0 != -1)
        {
          sub_100292764();
        }

        v60 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
        {
          v61 = *(a1 + 8);
          *buf = 134349056;
          *&buf[4] = v61;
          _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,interpolateOnRoad returned false", buf, 0xCu);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_71;
        }

LABEL_80:
        sub_101AD25D8(buf);
        v63 = *(a1 + 8);
        LODWORD(v117) = 134349056;
        *(&v117 + 4) = v63;
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "%s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }

        goto LABEL_71;
      }
    }
  }

  if (qword_1025D46B0 != -1)
  {
    sub_100292764();
  }

  v65 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    v66 = *(a1 + 8);
    *buf = 134349056;
    *&buf[4] = v66;
    _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_ERROR, "CLMM,%{public}.1lf,roadsWithinDistance,fRoadGeometryBuffer is unexpectedly nullptr", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101AD25D8(buf);
    v67 = *(a1 + 8);
    *v87 = 134349056;
    *&v87[4] = v67;
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLGeoMapFeatureAccessGeometry::roadsWithinDistance(CLMapGeometry::DistanceQueryResultList &, const CLMapCrumb &, double, BOOL) const", "%s\n", v16);
LABEL_88:
    if (v16 != buf)
    {
      free(v16);
    }
  }

LABEL_96:
  v19 = 0;
LABEL_97:
  *buf = &v81;
  sub_1004CA974(buf);
  objc_autoreleasePoolPop(context);
  return v19;
}

void sub_100291488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  a41 = &a34;
  sub_1004CA974(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_100291558(uint64_t a1, uint64_t a2, int a3, int a4, double a5, double a6, double a7)
{
  v20 = a1;
  (*(*a1 + 16))(a1);
  v21 = 256;
  if (*(a1 + 216) == 1 && (Current = CFAbsoluteTimeGetCurrent(), (sub_1002AFB0C(a1, 0, 0, 0, Current, a5, a6, a7) & 1) == 0))
  {
    v15 = 0;
  }

  else
  {
    sub_10028FF2C(a1, (a1 + 240), a2, a3, a5, a6, a7);
    if (a4)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      sub_10028FF2C(a1, (a1 + 264), &v17, a3, a5, a6, a7);
      sub_100C36AF4(a2, *(a2 + 8), v17, v18, (v18 - v17) >> 4);
      v22 = &v17;
      sub_1004CA974(&v22);
    }

    v15 = 1;
  }

  (*(*a1 + 24))(a1);
  return v15;
}

void sub_1002916C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a10;
  sub_1004CA974(&a16);
  sub_1017EC98C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1002916F8(uint64_t a1)
{
  v15[2] = a1;
  (*(*a1 + 16))(a1);
  v16 = 256;
  v2 = *(a1 + 328);
  v3 = *(a1 + 336);
  if (v2 != v3)
  {
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    do
    {
      v4 = *v2;
      *buf = **v2;
      buf[16] = 1;
      sub_100C390E0(&v14, buf);
      if (!sub_100C36618(a1 + 240, v4) && !sub_100C36618(a1 + 264, v4))
      {
        if (sub_10029046C(*v2))
        {
          *buf = *v4;
          *&buf[16] = *v2;
          v5 = v2[1];
          v22 = v5;
          if (v5)
          {
            atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_100C3917C(a1 + 240, buf);
        }

        else
        {
          *buf = *v4;
          *&buf[16] = *v2;
          v6 = v2[1];
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_100C3917C(a1 + 264, buf);
        }

        if (v22)
        {
          sub_100008080(v22);
        }
      }

      v2 += 2;
    }

    while (v2 != v3);
    sub_1004C9BF4((a1 + 328));
    sub_100C329AC((a1 + 240), &v14);
    sub_100C329AC((a1 + 264), &v14);
    if ((*(a1 + 216) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101A2ED68();
      }

      v7 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(a1 + 256);
        v9 = *(a1 + 280);
        *buf = 134349312;
        *&buf[4] = v8;
        *&buf[12] = 2050;
        *&buf[14] = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLMM,CLTSP,Roads,newly buffered data ingested,roads,%{public}lu,zeroLengthRoads,%{public}lu", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A2ED90(buf);
        v11 = *(a1 + 256);
        v12 = *(a1 + 280);
        v17 = 134349312;
        v18 = v11;
        v19 = 2050;
        v20 = v12;
        v13 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLGeoMapFeatureRoadGeometryBuffer::updateRoadDataObjectsWithNewlyBufferedData()", "%s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }
    }

    sub_1003C93BC(&v14, v15[0]);
  }

  return (*(*a1 + 24))(a1);
}

void sub_100291A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_1003C93BC(va, v6);
  sub_1017EC98C(va1);
  _Unwind_Resume(a1);
}

double *sub_100291A6C(double *a1, double a2, double a3, double a4)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  sub_100290364(a1, a1 + 1, a1 + 2, a1 + 3, a2, a3, a4);
  sub_10002DB04(a1[1]);
  *(a1 + 1) = v5;
  sub_10002DB04(a1[3]);
  *(a1 + 3) = v6;
  return a1;
}

uint64_t sub_100291AC4(uint64_t a1, uint64_t a2, double **a3, char a4, double *a5, int a6)
{
  if (!a6)
  {
    return 0;
  }

  v10 = 8 * a6;
  v11 = 0.0;
  do
  {
    v12 = *a5++;
    v11 = v11 + v12;
    v10 -= 8;
  }

  while (v10);
  v14 = *a3;
  v13 = a3[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v11 / a6;
  if (!v14)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1002CF0D0();
    }

    v19 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
    }

    v17 = 0.0;
    if (!sub_10000A100(121, 0))
    {
      goto LABEL_33;
    }

LABEL_15:
    sub_101AFFC48(buf);
    LOWORD(__y[0]) = 0;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v20);
    goto LABEL_87;
  }

  v16 = (*(v14 + 18) - *(v14 + 17)) >> 4;
  if (v16 <= 0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1002CF0D0();
    }

    v21 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
    }

    v17 = 0.0;
    if (!sub_10000A100(121, 2))
    {
      goto LABEL_33;
    }

    goto LABEL_86;
  }

  v17 = 0.0;
  if (v16 == 1)
  {
    v18 = 1;
    goto LABEL_34;
  }

  sub_10029244C(v14);
  v22 = (*(v14 + 21) - *(v14 + 20)) >> 3;
  if (v22 != v16 - 1)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1002CF0D0();
    }

    v29 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_33;
    }

    goto LABEL_86;
  }

  sub_10029244C(v14);
  if (v15 >= 0.000001)
  {
    if (v15 >= 0.999999)
    {
      v42 = *(v14 + 17) + 16 * v22;
      v24 = *v42;
      v17 = *(v42 + 8);
      v43 = sub_1002926F4((a1 + 56), *(v42 - 16), *(v42 - 8), *v42, v17);
LABEL_70:
      v28 = v43;
      goto LABEL_71;
    }

    v35 = *(v14 + 20);
    v36 = *(v14 + 21);
    if (v35 != v36)
    {
      v37 = 0.0;
      v38 = 2;
      v39 = 24;
      while (1)
      {
        v40 = *v35 / v14[5];
        if (vabdd_f64(v15, v37 + v40) < 0.000001)
        {
          break;
        }

        if (v37 + v40 > v15)
        {
          v55 = (*(v14 + 17) + v39);
          v57 = *(v55 - 3);
          v56 = *(v55 - 2);
          v58 = *(v55 - 1);
          v59 = sub_1002AADB4(v56, *v55);
          v60 = (v15 - v37) / v40;
          sub_10002DB04(v56 + v59 * v60);
          v17 = v61;
          v62 = (*(v14 + 17) + v39);
          v63 = *(v62 - 3);
          v64 = *(v62 - 2);
          v65 = *(v62 - 1);
          v66 = *v62;
          buf[0].__r_.__value_.__r.__words[0] = 0;
          v68 = 0;
          __y[0] = 0.0;
          sub_1001063B0((a1 + 56), buf, __y, &v68, v63, v64, 0.0, v65, v66, 0.0);
          v24 = v57 + (v58 - v57) * v60;
          goto LABEL_25;
        }

        ++v35;
        v39 += 16;
        ++v38;
        v37 = v37 + v40;
        if (v35 == v36)
        {
          goto LABEL_63;
        }
      }

      if (v38 < v16)
      {
        v44 = (*(v14 + 17) + v39);
        v24 = *(v44 - 1);
        v17 = *v44;
        v45 = *(v44 - 3);
        v46 = *(v44 - 2);
        buf[0].__r_.__value_.__r.__words[0] = 0;
        v68 = 0;
        __y[0] = 0.0;
        sub_1001063B0((a1 + 56), buf, __y, &v68, v45, v46, 0.0, v24, v17, 0.0);
        v47 = __y[0];
        v48 = *&buf[0].__r_.__value_.__l.__data_;
        v49 = *(v14 + 17) + v39;
        v50 = *(v49 + 8);
        v51 = *(v49 + 16);
        buf[0].__r_.__value_.__r.__words[0] = 0;
        v68 = 0;
        __y[0] = 0.0;
        sub_1001063B0((a1 + 56), buf, __y, &v68, v24, v17, 0.0, v50, v51, 0.0);
        v52 = atan2(v47, v48);
        if (v52 < 0.0)
        {
          v52 = v52 + 6.28318531;
        }

        v53 = v52 * 57.2957795;
        v54 = atan2(__y[0], *&buf[0].__r_.__value_.__l.__data_);
        if (v54 < 0.0)
        {
          v54 = v54 + 6.28318531;
        }

        sub_1004E60D8(v53, v54 * 57.2957795);
        goto LABEL_70;
      }

      if (qword_1025D46B0 != -1)
      {
        sub_1002CF0D0();
      }

      v67 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
      }

      v17 = 0.0;
      if (!sub_10000A100(121, 0))
      {
LABEL_33:
        v18 = 0;
LABEL_34:
        v24 = 0.0;
        v28 = 0.0;
        if (!v13)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_63:
    if (qword_1025D46B0 != -1)
    {
      sub_1002CF0D0();
    }

    v41 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_33;
    }

LABEL_86:
    sub_101AFFC48(buf);
    LOWORD(__y[0]) = 0;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = GEOLocationCoordinate2D, RoadPtr = std::shared_ptr<CLMapRoad>]", "%s\n", v20);
LABEL_87:
    if (v20 != buf)
    {
      free(v20);
    }

    goto LABEL_33;
  }

  v23 = *(v14 + 17);
  v24 = *v23;
  v17 = v23[1];
  v25 = v23[2];
  v26 = v23[3];
  buf[0].__r_.__value_.__r.__words[0] = 0;
  v68 = 0;
  __y[0] = 0.0;
  sub_1001063B0((a1 + 56), buf, __y, &v68, v24, v17, 0.0, v25, v26, 0.0);
LABEL_25:
  v27 = atan2(__y[0], *&buf[0].__r_.__value_.__l.__data_);
  if (v27 < 0.0)
  {
    v27 = v27 + 6.28318531;
  }

  v28 = v27 * 57.2957795;
LABEL_71:
  v18 = 1;
  if (v13)
  {
LABEL_35:
    sub_100008080(v13);
  }

LABEL_36:
  if (v18)
  {
    if ((a4 & 1) == 0 && v28 < 360.0 && v28 >= 0.0)
    {
      v28 = v28 + dbl_101D16EC0[v28 > 180.0];
    }

    v31 = *a3;
    if (*(*a3 + 71) < 0)
    {
      sub_100007244(buf, *(v31 + 6), *(v31 + 7));
    }

    else
    {
      buf[0] = *(v31 + 2);
    }

    std::string::operator=((a2 + 128), buf);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    v34 = *a3;
    *(a2 + 112) = **a3;
    *(a2 + 120) = *(v34 + 20);
    *(a2 + 152) = v24;
    *(a2 + 160) = v17;
    *(a2 + 168) = v28;
    *(a2 + 272) = v15;
    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101AFFC8C();
  }

  v32 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "CLMM,interpolateOnRoad,interpolateProjections returned false", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101AFFF78();
    return 0;
  }

  return result;
}

void sub_100292414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029244C(void *a1)
{
  v1 = (a1 + 20);
  if (a1[20] != a1[21])
  {
    return 1;
  }

  a1[5] = 0;
  if (a1[17] != a1[18])
  {
    ++qword_102636B40;
    sub_10018D404(v21);
    sub_1003E4354(v1, ((a1[18] - a1[17]) >> 4) - 1);
    v4 = a1[17];
    if ((a1[18] - v4) >= 0x11)
    {
      v5 = 0;
      v6 = 1;
      do
      {
        v7 = sub_100109D18(v21, *(v4 + v5), *(v4 + v5 + 8), *(v4 + v5 + 16), *(v4 + v5 + 24), 0.0);
        v8 = v7;
        v10 = a1[21];
        v9 = a1[22];
        if (v10 >= v9)
        {
          v12 = *v1;
          v13 = v10 - *v1;
          v14 = v13 >> 3;
          v15 = (v13 >> 3) + 1;
          if (v15 >> 61)
          {
            sub_10028C64C();
          }

          v16 = v9 - v12;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            sub_1000B9708(v1, v17);
          }

          *(8 * v14) = v7;
          v11 = 8 * v14 + 8;
          memcpy(0, v12, v13);
          v18 = a1[20];
          a1[20] = 0;
          a1[21] = v11;
          a1[22] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v10 = v7;
          v11 = (v10 + 1);
        }

        a1[21] = v11;
        *(a1 + 5) = v8 + *(a1 + 5);
        ++v6;
        v4 = a1[17];
        v5 += 16;
      }

      while (v6 < (a1[18] - v4) >> 4);
    }

    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101878734();
  }

  v19 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21[0].f64[0]) = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "CLMM,computeSegmentLengthsAndHeading,CoordinateCount is 0", v21, 2u);
  }

  v20 = sub_10000A100(121, 0);
  result = 0;
  if (v20)
  {
    sub_101878748();
    return 0;
  }

  return result;
}

double sub_1002926F4(float64x2_t *a1, double a2, double a3, double a4, double a5)
{
  v9 = 0.0;
  v7 = 0;
  __y = 0.0;
  sub_1001063B0(a1, &v9, &__y, &v7, a2, a3, 0.0, a4, a5, 0.0);
  v5 = atan2(__y, v9);
  if (v5 < 0.0)
  {
    v5 = v5 + 6.28318531;
  }

  return v5 * 57.2957795;
}

uint64_t sub_10029278C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 808);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 80);
  v8 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  v10 = *(a2 + 112);
  v9 = *(a2 + 128);
  v11 = *(a2 + 96);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v10;
  *(a1 + 128) = v9;
  *(a1 + 96) = v11;
  memcpy((a1 + 160), (a2 + 160), 0x201uLL);
  v12 = *(a2 + 680);
  if (v4 == 1)
  {
    v13 = *(a2 + 688);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 680) = v12;
    v14 = *(a1 + 688);
    *(a1 + 688) = v13;
    if (v14)
    {
      sub_100008080(v14);
    }

    v15 = *(a2 + 696);
    v16 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v16;
    *(a1 + 696) = v15;
    v17 = *(a2 + 744);
    v18 = *(a2 + 760);
    v19 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v18;
    *(a1 + 776) = v19;
    *(a1 + 744) = v17;
  }

  else
  {
    *(a1 + 680) = v12;
    v20 = *(a2 + 688);
    *(a1 + 688) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v21 = *(a2 + 696);
    v22 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v22;
    *(a1 + 696) = v21;
    v23 = *(a2 + 744);
    v24 = *(a2 + 760);
    v25 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v24;
    *(a1 + 776) = v25;
    *(a1 + 744) = v23;
    *(a1 + 808) = 1;
  }

  return a1;
}

uint64_t *sub_1002928BC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_100292990(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 >> 8));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9 + 16 * v7;
  }

  v36 = v9;
  v37 = v10;
  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((a3 - *a2) >> 4) + 32 * (a2 - v9) - ((v10 - *v9) >> 4);
  }

  v12 = sub_100014378(&v36, v11);
  v35.n128_u64[0] = v12;
  v35.n128_u64[1] = v13;
  if (v6 >= 1)
  {
    if (v11 <= (a1[5] - v6) >> 1)
    {
      v20 = v12;
      v21 = v13;
      v22 = v36;
      v23 = v37;
      v24 = sub_100014378(&v35, v6);
      sub_1004E27D8(v22, v23, v20, v21, v24, v25, &v38);
      v26 = v37;
      if (v37 != v39)
      {
        v27 = v36;
        do
        {
          v26 += 16;
          v37 = v26;
          if (v26 - *v27 == 4096)
          {
            v28 = v27[1];
            ++v27;
            v26 = v28;
            v36 = v27;
            v37 = v28;
          }
        }

        while (v26 != v39);
      }

      v29 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v29;
        ;
      }
    }

    else
    {
      v14 = sub_100014378(&v35, v6);
      v16 = a1[4] + a1[5];
      v17 = a1[1];
      v18 = (v17 + 8 * (v16 >> 8));
      if (a1[2] == v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = &(*v18)[16 * v16];
      }

      v38 = v35;
      sub_100292BBC(v14, v15, v18, v19, &v38);
      a1[5] -= v6;
        ;
      }
    }
  }

  v30 = a1[4];
  v31 = a1[1];
  v32 = (v31 + 8 * (v30 >> 8));
  if (a1[2] == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = *v32 + 16 * v30;
  }

  v38.n128_u64[0] = v32;
  v38.n128_u64[1] = v33;
  return sub_100014378(&v38, v11);
}

double sub_100292BBC(char **a1, char *a2, char **a3, char *a4, char **a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
  }

  else
  {
    v10 = a1 + 1;
    v7 = *a5;
    v8 = a5[1];
    for (i = *a1 + 4096; ; i = v12 + 4096)
    {
      sub_100292D84(a2, i, v7, v8, &v14);
      v8 = *(&v15 + 1);
      v7 = v15;
      *a5 = v15;
      a5[1] = v8;
      if (v10 == a3)
      {
        break;
      }

      v12 = *v10++;
      a2 = v12;
    }

    a2 = *v10;
  }

  sub_100292D84(a2, a4, v7, v8, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

uint64_t sub_100292C60(void *a1, void *a2, void *a3)
{
  v6 = a1[4];
  if (!v6)
  {
    sub_1002FD6F8(a1);
    v6 = a1[4];
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (v6 >> 8));
  v9 = *v8 + 16 * v6;
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  if (v9 == *v8)
  {
    v9 = *(v8 - 1) + 4096;
  }

  *(v9 - 16) = *a2;
  *(v9 - 8) = *a3;
  v10 = v6 - 1;
  v11 = a1[5] + 1;
  a1[4] = v10;
  a1[5] = v11;
  return *(v7 + ((v10 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v10;
}

double sub_100292D00(void *a1)
{
  v1 = a1[8];
  result = 0.0;
  if (v1 >= 5)
  {
    v3 = a1[4];
    v4 = a1[7];
    v5 = (v3 + 8 * (v4 >> 8));
    v6 = *v5;
    v7 = &(*v5)[2 * v4];
    v8 = *(v3 + (((v4 + v1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + v1);
    if (v7 != v8)
    {
      v9 = &(*v5)[2 * v4];
      while (1)
      {
        v9 += 2;
        if (v9 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v9 = v10;
        }

        if (v9 == v8)
        {
          break;
        }

        if (*v9 < *v7)
        {
          v7 = v9;
        }
      }
    }

    return *v7;
  }

  return result;
}

void sub_100292D84(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  if (a1 == a2)
  {
    v9 = a1;
    goto LABEL_15;
  }

  v5 = *a3;
  while (1)
  {
    v6 = (v5 + 512);
    v7 = (v5 + 512) - a4;
    v8 = (a2 - a1) >> 4 >= v7 >> 4 ? v7 >> 4 : (a2 - a1) >> 4;
    if (v8)
    {
      break;
    }

LABEL_11:
    v10 = *(a3 + 1);
    a3 += 8;
    v5 = v10;
    a4 = v10;
  }

  v9 = &a1[16 * v8];
  do
  {
    *a4 = *a1;
    *(a4 + 1) = *(a1 + 1);
    a1 += 16;
    a4 += 16;
  }

  while (a1 != v9);
  if (v9 != a2)
  {
    a1 = v9;
    goto LABEL_11;
  }

  if (a4 == v6)
  {
    v11 = *(a3 + 1);
    a3 += 8;
    a4 = v11;
  }

LABEL_15:
  *a5 = v9;
  a5[1] = a3;
  a5[2] = a4;
}

void sub_100292E0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 72) == 1)
  {
    v6 = *(a1 + 8);
    *(a1 + 32) = v6;
    v7 = (a1 + 32);
    *(a1 + 48) = a2;
    *(a1 + 56) = a3;
    *(a1 + 40) = *(a1 + 16) - v6;
    for (i = compression_stream_process((a1 + 32), 0); i == COMPRESSION_STATUS_OK; i = compression_stream_process(v7, 0))
    {
      v11 = *(a1 + 16) - *(a1 + 8);
      v12 = *(a1 + 40);
      v13 = v11 - v12;
      if (v11 == v12)
      {
        if (!*(a1 + 56))
        {
          return;
        }
      }

      else
      {
        if (v11 < v12)
        {
          if (qword_1025D4730 != -1)
          {
            sub_1001F3464();
          }

          v14 = qword_1025D4738;
          if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
          {
            v15 = *(a1 + 16) - *(a1 + 8);
            *buf = 134349312;
            *v27 = v13;
            *&v27[8] = 2050;
            v28 = v15;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "ProtobufCompressor,excessive bytes_to_print,%{public}zu,limit,%{public}zu", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4730 != -1)
            {
              sub_1001F3464();
            }

            v19 = *(a1 + 16) - *(a1 + 8);
            v23 = 134349312;
            *v24 = v13;
            *&v24[8] = 2050;
            v25 = v19;
            v20 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 0, "void CLProtobufSerializer::StreamingCompressor::write(const uint8_t *const, const size_t, std::ofstream &)", "%s\n", v20);
            if (v20 != buf)
            {
              free(v20);
            }
          }
        }

        if ((*(a4 + *(*a4 - 24) + 32) & 5) != 0)
        {
          if (qword_1025D4730 != -1)
          {
            sub_1001F3464();
          }

          v16 = qword_1025D4738;
          if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "ProtobufCompressor,write,bad stream", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B10930(v22);
          }
        }

        else
        {
          std::ostream::write();
        }

        v17 = *(a1 + 8);
        v18 = *(a1 + 16) - v17;
        *(a1 + 32) = v17;
        *(a1 + 40) = v18;
      }
    }

    v9 = i;
    if (qword_1025D4730 != -1)
    {
      sub_1001F3464();
    }

    v10 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      *v27 = v9 == COMPRESSION_STATUS_END;
      *&v27[4] = 1026;
      *&v27[6] = v9 == COMPRESSION_STATUS_ERROR;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "ProtobufCompressor,write,unexpected status,isEND,%{public}d,isERROR,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      v23 = 67240448;
      *v24 = v9 == COMPRESSION_STATUS_END;
      *&v24[4] = 1026;
      *&v24[6] = v9 == COMPRESSION_STATUS_ERROR;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLProtobufSerializer::StreamingCompressor::write(const uint8_t *const, const size_t, std::ofstream &)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }
}

uint64_t sub_10029325C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102636C20 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, v8, a3);
}

uint64_t sub_1002932F8(uint64_t a1, uint64_t *a2)
{
  result = sub_10013176C(a1, v5);
  if (result)
  {

    return sub_100131DE8(a1, a2);
  }

  return result;
}

void sub_100293358(float32x2_t *a1, unsigned int a2, uint64_t *a3)
{
  CLProfilingIdentify();
  if (a3)
  {
    v6 = a3[1];
    if (v6)
    {
      v7 = *a3;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v6);
      if (v8 && v7)
      {
        [objc_msgSend(*(v7 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v15 = 1;
          v9 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleAccelerometerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v9, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v10 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v17 = 0;
            v18 = 2082;
            v19 = "";
            v20 = 2082;
            v21 = "activity";
            v22 = 2050;
            v23 = v7;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleAccelerometerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v15 = 0;
        }

        sub_100293714(v7, a1, a2);
        if (v15 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v8 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v12 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleAccelerometerNotification_bounce(const CLAccelerometer::Sample *, unsigned int, void *)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    if (!v8)
    {
      if (!v6)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v8);
    if (!v6)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v11 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A21638();
  }
}

void sub_1002936C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100293714(uint64_t a1, float32x2_t *a2, unsigned int a3)
{
  if (a2 && a3)
  {
    if (a3 < 0xB)
    {
      if ((*(a1 + 4784) & 1) != 0 || *(a1 + 4800))
      {
        if (sub_1002932F8(a1 + 4600, a2))
        {
          sub_10000AED0(buf);
          sub_10000B230(v10);
          sub_100294D18(a1, v10, a2, a3, buf);
          sub_100294A04(a1, buf, 0);
          sub_10000CE1C(buf);
        }

        else
        {
          if (qword_1025D4680 != -1)
          {
            sub_101A2038C();
          }

          v8 = qword_1025D4688;
          if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *a2;
            *buf = 134349056;
            v12 = v9;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning,accel sample is before sleep,%{public}.3f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A238E4();
          }
        }
      }
    }

    else
    {
      if (qword_1025D4680 != -1)
      {
        sub_101A2038C();
      }

      v4 = qword_1025D4688;
      if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12.i32[0] = a3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Raven: encountered unexpected accelerometer batch size of %u", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A239D8();
      }
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v5 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#Warning Raven: encountered empty accelerometer notification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A23AC8();
    }
  }
}

void sub_100293968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100293988(uint64_t result)
{
  *(result + 40) = 0;
  *result = off_102451E10;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_100293A18(float32x2_t *a1, float32x2_t *a2, uint64_t *a3)
{
  if (a2)
  {
    a2[4].i32[0] |= 1u;
    v5 = a2[1];
    if (!v5)
    {
      operator new();
    }

    sub_10027E930(a3, v5);
    v6 = a2[4].i32[0];
    a2[2] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(a1[1]), vdupq_n_s64(0xC0239D013A92A305)));
    v7 = a1[2].f32[0] * -9.80665;
    a2[4].i32[0] = v6 | 0xE;
    a2[3].f32[0] = v7;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v8 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "pSample,Invalid pointer", v9, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B83574();
    }
  }
}

uint64_t sub_100293B80(uint64_t result)
{
  *result = &off_102451D98;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_100293BA8(uint64_t a1)
{
  if (*(a1 + 44))
  {
    v3 = *(a1 + 8);
    if (!v3)
    {
      v3 = *(qword_102636C08 + 8);
    }

    v4 = *(v3 + 36);
    if (*(v3 + 36))
    {
      v5 = (v4 << 31 >> 31) & 9;
      if ((v4 & 2) != 0)
      {
        v5 += 9;
      }

      if ((v4 & 4) != 0)
      {
        v4 = v5 + 9;
      }

      else
      {
        v4 = v5;
      }
    }

    *(v3 + 32) = v4;
    v2 = v4 + 2;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 24);
  v7 = (v6 + v2);
  if (v6 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sub_100293C84(*(*(a1 + 16) + 8 * v8));
      v11 = v9;
      if (v9 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
      }

      else
      {
        v12 = 1;
      }

      v7 = (v11 + v7 + v12);
      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  *(a1 + 40) = v7;
  return v7;
}

uint64_t sub_100293C84(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 32))
  {
    if (v1)
    {
      v1 = *(a1 + 8);
      if (!v1)
      {
        v1 = *(qword_102636C00 + 8);
      }

      v3 = *(v1 + 36);
      if (*(v1 + 36))
      {
        v4 = (v3 << 31 >> 31) & 9;
        if ((v3 & 2) != 0)
        {
          v4 += 9;
        }

        if ((v3 & 4) != 0)
        {
          v3 = v4 + 9;
        }

        else
        {
          v3 = v4;
        }
      }

      *(v1 + 32) = v3;
      v2 = v3 + 2;
      LODWORD(v1) = *(a1 + 32);
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 5;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 28) = v1;
  return v1;
}

uint64_t sub_100293D14(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 44))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_102636C08 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  return result;
}

void sub_100293D9C(uint64_t a1, unsigned int a2, double a3, double a4)
{
  if (a2 <= 1)
  {
    v5 = a1 + 32 * a2;
    ++*v5;
    v6 = *(v5 + 16);
    if (v6 >= a4)
    {
      v6 = a4;
    }

    *(v5 + 8) = *(v5 + 8) + a4;
    *(v5 + 16) = v6;
    if (*(v5 + 24) > a4)
    {
      a4 = *(v5 + 24);
    }

    *(v5 + 24) = a4;
    if (a3 - *(a1 + 64) > 30.0)
    {
      v7 = 0;
      v8 = 1;
      *(a1 + 64) = a3;
      v9 = "unk";
      do
      {
        v10 = v8;
        if (v8)
        {
          v11 = "accel";
        }

        else
        {
          v11 = v9;
        }

        if (qword_1025D4680 != -1)
        {
          sub_101A20320();
        }

        v12 = a1 + 32 * v7;
        v13 = qword_1025D4688;
        if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_INFO))
        {
          v14 = *v12;
          if (*v12)
          {
            v15 = *(v12 + 8) * 1000.0 / v14;
          }

          else
          {
            v15 = 0.0;
          }

          v16 = *(v12 + 16) * 1000.0;
          v17 = *(v12 + 24) * 1000.0;
          *buf = 136447234;
          v20 = v11;
          v21 = 1026;
          v22 = v14;
          v23 = 2050;
          v24 = v16;
          v25 = 2050;
          v26 = v15;
          v27 = 2050;
          v28 = v17;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "IfcTelem,%{public}s,count,%{public}d,minAgeMs,%{public}.1f,meanAgeMs,%{public}.1f,maxAgeMs,%{public}.1f", buf, 0x30u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4680 != -1)
          {
            sub_101A20320();
          }

          v18 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLRavenController::InterfaceTelemeter::tick(CLRavenController::InterfaceTelemeter::MessageType, double, double)", "%s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }
        }

        v8 = 0;
        *v12 = 0;
        *(v12 + 8) = xmmword_101C88A80;
        v9 = "gyro";
        v7 = 1;
        *(v12 + 24) = 0xBFF0000000000000;
      }

      while ((v10 & 1) != 0);
    }
  }
}

void sub_1002940B0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10029467C(a1);

  operator delete();
}

void sub_1002940E8(uint64_t a1)
{
  if ((*(a1 + 4754) & 1) == 0)
  {
    v2 = sub_100187460();
    if (v2)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        sub_100178498(v2, 0, v3, 0.04);
      }
    }

    *(a1 + 4754) = 1;
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v4 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Raven: registering for barometer notifications", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A2047C();
    }
  }
}

void sub_1002941B4(uint64_t a1)
{
  if ((*(a1 + 4752) & 1) == 0)
  {
    v2 = sub_1001C3FFC();
    if (v2)
    {
      v3 = *(a1 + 24);
      if (v3)
      {
        sub_100178498(v2, 0, v3, 0.01);
      }
    }

    *(a1 + 4752) = 1;
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v4 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Raven: registering for accelerometer notifications", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A203A0();
    }
  }
}

void sub_100294280(uint64_t a1)
{
  v1 = a1 + 4096;
  if ((*(a1 + 4756) & 1) != 0 || !*(a1 + 4779))
  {
    return;
  }

  v3 = sub_1010AC550();
  if (v3 && *(a1 + 64))
  {
    v4 = v3;
    if ((sub_100023B30() & 0x10) != 0)
    {
      v5 = 4;
      goto LABEL_9;
    }

    if ((sub_100023B30() & 8) != 0)
    {
      v5 = 1;
LABEL_9:
      sub_100178498(v4, v5, *(a1 + 64), 0.01);
    }
  }

  *(v1 + 660) = 1;
  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v6 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Raven: registering for device motion notifications", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A20558();
  }
}

void sub_100294380(uint64_t a1)
{
  v1 = a1 + 4096;
  if ((*(a1 + 4759) & 1) == 0 && *(a1 + 4780))
  {
    v3 = sub_10017C02C();
    if (v3)
    {
      v4 = *(a1 + 152);
      if (v4)
      {
        sub_100178498(v3, 0, v4, 0.01);
      }
    }

    *(v1 + 663) = 1;
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v5 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Raven: registering for magnetometer notifications", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20634();
    }
  }
}

void sub_100294454(uint64_t a1)
{
  if ((*(a1 + 4768) & 1) == 0)
  {
    v2 = sub_10098EAD4();
    if (v2)
    {
      v3 = *(a1 + 216);
      if (v3)
      {
        sub_100178498(v2, 0, v3, 0.01);
      }
    }

    *(a1 + 4768) = 1;
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v4 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Raven: registering for rate gyro notifications", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20710();
    }
  }
}

void sub_100294520(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102452D88;
  if (qword_102636D10 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_1002945AC(uint64_t *a1)
{
  *a1 = off_102451E10;
  if (qword_102636C08 != a1)
  {
    v2 = a1[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  sub_100027438(a1 + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_100294644(uint64_t *a1)
{
  sub_1002945AC(a1);

  operator delete();
}

void sub_10029467C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102451D98;
  if (qword_102636C00 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_100294708(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
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

void sub_100294890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1002948DC(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_102452D88;
  return result;
}

uint64_t sub_100294900(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102636D10 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

void sub_10029492C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100294520(a1);

  operator delete();
}

double sub_100294964(uint64_t a1, uint64_t a2)
{
  *(a2 + 52) |= 1u;
  v2 = *(a2 + 32);
  if (!v2)
  {
    operator new();
  }

  v3 = *(v2 + 44);
  *(v2 + 8) = vextq_s8(*(a1 + 8), *(a1 + 8), 8uLL);
  result = *a1;
  *(v2 + 44) = v3 | 7;
  *(v2 + 24) = result;
  return result;
}

void sub_100294A04(uint64_t a1, uint64_t a2, char a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    if (*(a1 + 4784) == 1 && (a3 & 1) == 0)
    {
      sub_100E4E02C(*(a1 + 4792), __p);
    }

    v5 = *(a1 + 4800);
    if (v5)
    {
      sub_1000145C0(v5, __p);
    }
  }

  else
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A20320();
    }

    v6 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Raven: Could not serialize protobuf message", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A20348(buf);
      v7 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "void CLRavenController::SendMessage(const CLP::LogEntry::LogEntry &, BOOL)", "%s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100294BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100294BE4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = *(v4 + 4);
        *(v8 + 4) = v11;
        if (v8 != v4)
        {
          *(v8 + 14) = *(v4 + 14);
          sub_100298D58(v8 + 3, v4[5], 0);
          v11 = *(v8 + 4);
        }

        v10 = *v8;
        v8[1] = v11;
        v12 = sub_100806EC4(a1, v11, v8 + 4);
        sub_1007BE1F4(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_10013489C(a1, v10);
  }

  if (v4 != a3)
  {
    sub_10029E420();
  }
}

void sub_100294CE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10013489C(v1, v2);
  __cxa_rethrow();
}

void sub_100294D18(uint64_t a1, uint64_t a2, float32x2_t *a3, int a4, uint64_t a5)
{
  LODWORD(v5) = a4;
  *(a5 + 52) |= 2u;
  v9 = *(a5 + 40);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 488) |= 1u;
  v10 = *(v9 + 8);
  if (!v10)
  {
    operator new();
  }

  sub_100294964(a2, a5);
  *(v10 + 44) |= 1u;
  v11 = *(v10 + 8);
  if (!v11)
  {
    operator new();
  }

  if (sub_10027E930(a2, v11))
  {
    goto LABEL_13;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v12 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18[0]) = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Error: Failed to convert accelerometer notification receipt time to protobuf", v18, 2u);
  }

  if (!sub_10000A100(121, 2))
  {
LABEL_13:
    if (v5)
    {
      goto LABEL_14;
    }

LABEL_23:
    v14 = 0.0;
    goto LABEL_24;
  }

  sub_101A23BAC();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_14:
  v5 = v5;
  do
  {
    v13 = *a3;
    v14 = *a3 - *(a2 + 8);
    *v18 = v14 + *a2;
    v18[1] = v13;
    *&v18[2] = v14 + *(a2 + 16);
    v19 = *(a2 + 24);
    v15 = *(v10 + 28);
    v16 = *(v10 + 24);
    if (v16 >= v15)
    {
      if (v15 == *(v10 + 32))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v10 + 16), v15 + 1);
        v15 = *(v10 + 28);
      }

      *(v10 + 28) = v15 + 1;
      sub_1002939B4();
    }

    v17 = *(v10 + 16);
    *(v10 + 24) = v16 + 1;
    sub_100293A18(a3, *(v17 + 8 * v16), v18);
    a3 += 3;
    --v5;
  }

  while (v5);
LABEL_24:
  sub_100293D9C(a1 + 4680, 0, *a2, -v14);
}

void sub_100294FB4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a3 + 52) |= 2u;
  v4 = *(a3 + 40);
  if (!v4)
  {
    operator new();
  }

  *(v4 + 488) |= 0x80u;
  v5 = *(v4 + 64);
  if (!v5)
  {
    operator new();
  }

  sub_100294964(a2, a3);
  *(v5 + 20) |= 1u;
  v6 = *(v5 + 8);
  if (!v6)
  {
    operator new();
  }

  if ((sub_10027E930(a2, v6) & 1) == 0)
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v7 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Error: Failed to convert timer notification receipt time to protobuf", v8, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A25AE4();
    }
  }
}

uint64_t sub_100295168(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636C00 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
      if ((*(v5 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_11:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, v8, a3);
}

__n128 sub_100295220(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003110CC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 808 * (v7 & 0xF);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v8 + 140) = *(a2 + 140);
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  *(v8 + 96) = v13;
  memcpy((v8 + 160), (a2 + 160), 0x201uLL);
  *(v8 + 680) = *(a2 + 680);
  v16 = *(a2 + 688);
  *(v8 + 688) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = *(a2 + 696);
  v18 = *(a2 + 728);
  *(v8 + 712) = *(a2 + 712);
  *(v8 + 728) = v18;
  *(v8 + 696) = v17;
  result = *(a2 + 744);
  v20 = *(a2 + 760);
  v21 = *(a2 + 776);
  *(v8 + 785) = *(a2 + 785);
  *(v8 + 760) = v20;
  *(v8 + 776) = v21;
  *(v8 + 744) = result;
  ++a1[5];
  return result;
}

uint64_t sub_100295344(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 808 * (v2 & 0xF) + 688);
  if (v3)
  {
    sub_100008080(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_1000AAA64(a1, 1);
}

void *sub_1002953BC(void *result, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a5)
  {
    while (a3 - *(a2 + 8) <= 5.5)
    {
      a2 += 16;
      if (a2 - *result == 4096)
      {
        v5 = result[1];
        ++result;
        a2 = v5;
      }

      if (a2 == a5)
      {
        a2 = a5;
        break;
      }
    }
  }

  if (a2 != a5)
  {
    v6 = *result;
    v7 = *result;
    v8 = a2;
    v9 = result;
    while (1)
    {
      v8 += 16;
      if (v8 - v7 == 4096)
      {
        v10 = v9[1];
        ++v9;
        v7 = v10;
        v8 = v10;
      }

      if (v8 == a5)
      {
        break;
      }

      v11 = *(v8 + 8);
      if (a3 - v11 <= 5.5)
      {
        *a2 = *v8;
        *(a2 + 8) = v11;
        a2 += 16;
        if (a2 - v6 == 4096)
        {
          v12 = result[1];
          ++result;
          v6 = v12;
          a2 = v12;
        }
      }
    }
  }

  return result;
}

void sub_10029546C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 358) != 1 || !sub_1002BD83C(a2))
  {
    return;
  }

  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  v8 = *(a2 + 80);
  if (v8 > 100.0)
  {
    v8 = 100.0;
  }

  if (v8 >= 50.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 50.0;
  }

  if (*(a2 + 264) == 1 && (*(a2 + 265) & 1) == 0)
  {
    v17 = *(a2 + 361);
    v18 = *(a2 + 362);
    if (v17 & 1) != 0 || (*(a2 + 362))
    {
      v10 = *(a2 + 368);
      v11 = *(a2 + 376);
      v19 = *(a2 + 362);
      v20 = *(a2 + 361);
      if (*(a2 + 362))
      {
LABEL_60:
        if (qword_1025D46B0 != -1)
        {
          sub_101B095F4();
        }

        v32 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v33 = *(a2 + 80);
          *buf = 134547713;
          *&buf[4] = v10;
          *&buf[12] = 2053;
          *&buf[14] = v11;
          *&buf[22] = 2050;
          *&buf[24] = v33;
          LOWORD(v53) = 2050;
          *(&v53 + 2) = v9;
          WORD5(v53) = 1026;
          HIDWORD(v53) = v18 & 1;
          LOWORD(v54) = 1026;
          *(&v54 + 2) = v17 & 1;
          HIWORD(v54) = 1026;
          LODWORD(v55) = v19;
          WORD2(v55) = 1026;
          *(&v55 + 6) = v20;
          WORD5(v55) = 1026;
          HIDWORD(v55) = a3;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CLMM,TBA,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,unc,%{public}.2lf,searchRadius,%{public}.1lf,isCloseToTunnel,%{public}d,isCloseToBridge,%{public}d,isTunnel,%{public}d,isBridge,%{public}d,mmType,%{public}d", buf, 0x48u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D46B0 != -1)
          {
            sub_101B095F4();
          }

          v35 = *(a2 + 80);
          *v38 = 134547713;
          *&v38[4] = v10;
          *&v38[12] = 2053;
          *&v38[14] = v11;
          *&v38[22] = 2050;
          v39 = v35;
          v40 = 2050;
          v41 = v9;
          v42 = 1026;
          v43 = v18 & 1;
          v44 = 1026;
          v45 = v17 & 1;
          v46 = 1026;
          v47 = v19;
          v48 = 1026;
          v49 = v20;
          v50 = 1026;
          v51 = a3;
          v36 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatchingEngine::provideTunnelBridgeAssistance(const CLMapCrumb &, const CLDaemonLocationPrivate::MapMatcherType)", "%s\n", v36);
          if (v36 != buf)
          {
            free(v36);
          }
        }

        v34 = *(a1 + 368);
        *buf = v6;
        *&buf[8] = v7;
        *&buf[16] = v10;
        *&buf[24] = v11;
        *&v53 = v9;
        BYTE8(v53) = v18;
        BYTE9(v53) = v17;
        BYTE10(v53) = v19;
        BYTE11(v53) = v20;
        [v34 setTunnelBridgeAssistance:buf];
        return;
      }

LABEL_59:
      if ((v17 & 1) == 0)
      {
        return;
      }

      goto LABEL_60;
    }
  }

  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  if (sub_10002807C(v10, v11))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_1000E8BB4();
    }

    v12 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLMM,TBA,NULL Island", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A4CC();
    }

    return;
  }

  if (a3 == 3)
  {
    v24 = *(a1 + 616);
    if (!v24)
    {
      return;
    }

    v15 = *(v24 + 208);
    v14 = *(v24 + 216);
    v16 = 15.0;
    if (!v14)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (a3 != 2)
  {
    if (a3 != 1)
    {
      return;
    }

    v13 = *(a1 + 232);
    if (!v13)
    {
      return;
    }

    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = 38.0;
    goto LABEL_31;
  }

  v21 = *(a1 + 592);
  if (!v21)
  {
    return;
  }

  v15 = *(v21 + 208);
  v14 = *(v21 + 216);
  v16 = 6.0;
  if (v14)
  {
LABEL_30:
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100008080(v14);
  }

LABEL_31:
  if (v15)
  {
    v22 = *(a1 + 624);
    if (v22 < 0.0 || vabdd_f64(v22, v6) >= v9 / v16)
    {
      *(a1 + 624) = v6;
      *v38 = v38;
      *&v38[8] = v38;
      *&v38[16] = 0;
      *buf = 0;
      *&buf[8] = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      *&buf[16] = _Q0;
      v53 = 0uLL;
      v54 = 0xBFF0000000000000;
      v66 = 0;
      v67 = 0;
      memset(&v64[32], 0, 32);
      v65 = 0;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      memset(v71, 0, 27);
      memset(&v71[32], 0, 48);
      memset(v64, 0, 30);
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v73 = 0xBFF0000000000000;
      v72 = 0;
      *&v55 = v10;
      *(&v55 + 1) = v11;
      (*(*v15 + 64))(v15, v38, buf, 0, v9);
      v30 = *&v38[8];
      if (*&v38[8] == v38)
      {
        v18 = 0;
        v17 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v31 = *(v30 + 16);
          if (v31)
          {
            if (*(v31 + 18))
            {
              v18 = 1;
            }

            if (*(v31 + 19))
            {
              v17 = 1;
            }
          }

          v30 = *(v30 + 8);
        }

        while (v30 != v38);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(*(&v59 + 1));
      }

      sub_10004FF5C(v38);
      if (v14)
      {
        sub_100008080(v14);
      }

      v19 = 0;
      v20 = 0;
      if (v18)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    if (qword_1025D46B0 != -1)
    {
      sub_1000E8BB4();
    }

    v23 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLMM,no TBA,recently queried", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B095B0(buf);
      *v38 = 0;
      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatchingEngine::provideTunnelBridgeAssistance(const CLMapCrumb &, const CLDaemonLocationPrivate::MapMatcherType)", "%s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }
  }

  if (v14)
  {
    sub_100008080(v14);
  }
}

void sub_100295B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    sub_100008080(v42);
  }

  _Unwind_Resume(exception_object);
}

void sub_100295B44(_BYTE *a1, char *a2, void *a3, void *a4, void *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8)
{
  if (*a1 != 1)
  {
    return;
  }

  sub_10000EC00(&v110, a2);
  v103 = a4;
  v104 = a7;
  v105 = a8;
  v106 = a1;
  sub_10000EC00(&v114, "{public}");
  sub_10000EC00(&__p, "");
  size = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v110;
  }

  else
  {
    v13 = v110.__r_.__value_.__r.__words[0];
  }

  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v110.__r_.__value_.__l.__size_;
  }

  v14 = v116;
  v15 = v115;
  if ((v116 & 0x80u) == 0)
  {
    v16 = &v114;
  }

  else
  {
    v16 = v114;
  }

  if ((v116 & 0x80u) == 0)
  {
    v17 = v116;
  }

  else
  {
    v17 = v115;
  }

  if (v17)
  {
    if (size >= v17)
    {
      v85 = v13 + size;
      v86 = *v16;
      v87 = v13;
      do
      {
        v88 = size - v17;
        if (v88 == -1)
        {
          break;
        }

        v89 = memchr(v87, v86, v88 + 1);
        if (!v89)
        {
          break;
        }

        v90 = v89;
        if (!memcmp(v89, v16, v17))
        {
          if (v90 != v85)
          {
            v31 = v90 - v13;
            if (v90 - v13 != -1)
            {
              goto LABEL_58;
            }
          }

          break;
        }

        v87 = (v90 + 1);
        size = v85 - (v90 + 1);
      }

      while (size >= v17);
    }
  }

  else
  {
    v31 = 0;
LABEL_58:
    v32 = v113;
    v33 = v112;
    do
    {
      v34 = (v14 & 0x80u) == 0 ? v14 : v15;
      v35 = (v32 & 0x80u) == 0 ? &__p : __p;
      v36 = (v32 & 0x80u) == 0 ? v32 : v33;
      std::string::replace(&v110, v31, v34, v35, v36);
      v32 = v113;
      v33 = v112;
      v37 = (v113 & 0x80u) == 0 ? v113 : v112;
      v31 += v37;
      v38 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v110 : v110.__r_.__value_.__r.__words[0];
      v39 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v110.__r_.__value_.__r.__words[2]) : v110.__r_.__value_.__l.__size_;
      v14 = v116;
      v15 = v115;
      v40 = (v116 & 0x80u) == 0 ? &v114 : v114;
      v41 = (v116 & 0x80u) == 0 ? v116 : v115;
      v42 = v39 - v31;
      if (v39 < v31)
      {
        break;
      }

      if (v41)
      {
        if (v42 >= v41)
        {
          v43 = v38 + v39;
          v44 = v38 + v31;
          v45 = *v40;
          while (1)
          {
            v46 = v42 - v41;
            if (v46 == -1)
            {
              break;
            }

            v47 = memchr(v44, v45, v46 + 1);
            if (!v47)
            {
              break;
            }

            v48 = v47;
            if (!memcmp(v47, v40, v41))
            {
              if (v48 == v43)
              {
                goto LABEL_15;
              }

              v31 = v48 - v38;
              goto LABEL_94;
            }

            v44 = v48 + 1;
            v42 = v43 - (v48 + 1);
            if (v42 < v41)
            {
              goto LABEL_15;
            }
          }
        }

        break;
      }

LABEL_94:
      ;
    }

    while (v31 != -1);
  }

LABEL_15:
  if (v113 < 0)
  {
    operator delete(__p);
    if ((v116 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_17;
  }

  operator delete(v114);
LABEL_17:
  sub_10000EC00(&v114, "{private}");
  sub_10000EC00(&__p, "");
  v18 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v110;
  }

  else
  {
    v19 = v110.__r_.__value_.__r.__words[0];
  }

  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v110.__r_.__value_.__l.__size_;
  }

  v20 = v116;
  v21 = v115;
  if ((v116 & 0x80u) == 0)
  {
    v22 = &v114;
  }

  else
  {
    v22 = v114;
  }

  if ((v116 & 0x80u) == 0)
  {
    v23 = v116;
  }

  else
  {
    v23 = v115;
  }

  if (v23)
  {
    if (v18 >= v23)
    {
      v91 = v19 + v18;
      v92 = *v22;
      v93 = v19;
      do
      {
        v94 = v18 - v23;
        if (v94 == -1)
        {
          break;
        }

        v95 = memchr(v93, v92, v94 + 1);
        if (!v95)
        {
          break;
        }

        v96 = v95;
        if (!memcmp(v95, v22, v23))
        {
          if (v96 != v91)
          {
            v49 = v96 - v19;
            if (v96 - v19 != -1)
            {
              goto LABEL_99;
            }
          }

          break;
        }

        v93 = (v96 + 1);
        v18 = v91 - (v96 + 1);
      }

      while (v18 >= v23);
    }
  }

  else
  {
    v49 = 0;
LABEL_99:
    v50 = v113;
    v51 = v112;
    do
    {
      v52 = (v20 & 0x80u) == 0 ? v20 : v21;
      v53 = (v50 & 0x80u) == 0 ? &__p : __p;
      v54 = (v50 & 0x80u) == 0 ? v50 : v51;
      std::string::replace(&v110, v49, v52, v53, v54);
      v50 = v113;
      v51 = v112;
      v55 = (v113 & 0x80u) == 0 ? v113 : v112;
      v49 += v55;
      v56 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v110 : v110.__r_.__value_.__r.__words[0];
      v57 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v110.__r_.__value_.__r.__words[2]) : v110.__r_.__value_.__l.__size_;
      v20 = v116;
      v21 = v115;
      v58 = (v116 & 0x80u) == 0 ? &v114 : v114;
      v59 = (v116 & 0x80u) == 0 ? v116 : v115;
      v60 = v57 - v49;
      if (v57 < v49)
      {
        break;
      }

      if (v59)
      {
        if (v60 >= v59)
        {
          v61 = v56 + v57;
          v62 = v56 + v49;
          v63 = *v58;
          while (1)
          {
            v64 = v60 - v59;
            if (v64 == -1)
            {
              break;
            }

            v65 = memchr(v62, v63, v64 + 1);
            if (!v65)
            {
              break;
            }

            v66 = v65;
            if (!memcmp(v65, v58, v59))
            {
              if (v66 == v61)
              {
                goto LABEL_30;
              }

              v49 = v66 - v56;
              goto LABEL_135;
            }

            v62 = v66 + 1;
            v60 = v61 - (v66 + 1);
            if (v60 < v59)
            {
              goto LABEL_30;
            }
          }
        }

        break;
      }

LABEL_135:
      ;
    }

    while (v49 != -1);
  }

LABEL_30:
  if (v113 < 0)
  {
    operator delete(__p);
    if ((v116 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_138:
    operator delete(v114);
    goto LABEL_32;
  }

  if ((v20 & 0x80) != 0)
  {
    goto LABEL_138;
  }

LABEL_32:
  sub_10000EC00(&v114, "{sensitive}");
  sub_10000EC00(&__p, "");
  v24 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v110;
  }

  else
  {
    v25 = v110.__r_.__value_.__r.__words[0];
  }

  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = v110.__r_.__value_.__l.__size_;
  }

  v26 = v116;
  v27 = v115;
  if ((v116 & 0x80u) == 0)
  {
    v28 = &v114;
  }

  else
  {
    v28 = v114;
  }

  if ((v116 & 0x80u) == 0)
  {
    v29 = v116;
  }

  else
  {
    v29 = v115;
  }

  if (v29)
  {
    if (v24 >= v29)
    {
      v97 = v25 + v24;
      v98 = *v28;
      v99 = v25;
      do
      {
        v100 = v24 - v29;
        if (v100 == -1)
        {
          break;
        }

        v101 = memchr(v99, v98, v100 + 1);
        if (!v101)
        {
          break;
        }

        v102 = v101;
        if (!memcmp(v101, v28, v29))
        {
          if (v102 != v97)
          {
            v67 = v102 - v25;
            if (v102 - v25 != -1)
            {
              goto LABEL_140;
            }
          }

          break;
        }

        v99 = (v102 + 1);
        v24 = v97 - (v102 + 1);
      }

      while (v24 >= v29);
    }
  }

  else
  {
    v67 = 0;
LABEL_140:
    v68 = v113;
    v69 = v112;
    do
    {
      v70 = (v26 & 0x80u) == 0 ? v26 : v27;
      v71 = (v68 & 0x80u) == 0 ? &__p : __p;
      v72 = (v68 & 0x80u) == 0 ? v68 : v69;
      std::string::replace(&v110, v67, v70, v71, v72);
      v68 = v113;
      v69 = v112;
      v73 = (v113 & 0x80u) == 0 ? v113 : v112;
      v67 += v73;
      v74 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v110 : v110.__r_.__value_.__r.__words[0];
      v75 = (v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v110.__r_.__value_.__r.__words[2]) : v110.__r_.__value_.__l.__size_;
      v26 = v116;
      v27 = v115;
      v76 = (v116 & 0x80u) == 0 ? &v114 : v114;
      v77 = (v116 & 0x80u) == 0 ? v116 : v115;
      v78 = v75 - v67;
      if (v75 < v67)
      {
        break;
      }

      if (v77)
      {
        if (v78 >= v77)
        {
          v79 = v74 + v75;
          v80 = v74 + v67;
          v81 = *v76;
          while (1)
          {
            v82 = v78 - v77;
            if (v82 == -1)
            {
              break;
            }

            v83 = memchr(v80, v81, v82 + 1);
            if (!v83)
            {
              break;
            }

            v84 = v83;
            if (!memcmp(v83, v76, v77))
            {
              if (v84 == v79)
              {
                goto LABEL_45;
              }

              v67 = v84 - v74;
              goto LABEL_176;
            }

            v80 = v84 + 1;
            v78 = v79 - (v84 + 1);
            if (v78 < v77)
            {
              goto LABEL_45;
            }
          }
        }

        break;
      }

LABEL_176:
      ;
    }

    while (v67 != -1);
  }

LABEL_45:
  if (v113 < 0)
  {
    operator delete(__p);
    LOBYTE(v26) = v116;
  }

  if ((v26 & 0x80) != 0)
  {
    operator delete(v114);
  }

  bzero(v106 + 56, 0x800uLL);
  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    snprintf(v106 + 56, 0x800uLL, &v110, *a3, *v103, *a5, *a6, *v104, *v105);
  }

  else
  {
    snprintf(v106 + 56, 0x800uLL, v110.__r_.__value_.__l.__data_, *a3, *v103, *a5, *a6, *v104, *v105);
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_10000EC00(&v114, v106 + 56);
  sub_1002B9CCC(v106, &v114, Current);
  if (v116 < 0)
  {
    operator delete(v114);
  }

  if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v110.__r_.__value_.__l.__data_);
  }
}

void *sub_10029627C(void *result, double a2, double a3)
{
  v3 = result;
  v28 = a2;
  v29 = a3;
  v4 = result[4];
  if (result[5] == v4)
  {
    v5 = result + 8;
  }

  else
  {
    v5 = result + 8;
    v6 = result[7];
    v7 = (v4 + 8 * (v6 >> 8));
    v8 = *v7;
    v9 = *v7 + 16 * v6;
    v10 = *(v4 + (((result[8] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(result + 64) + v6);
    while (v9 != v10)
    {
      if (a3 < *(v9 + 8))
      {
        return result;
      }

      v9 += 16;
      if (v9 - v8 == 4096)
      {
        v11 = v7[1];
        ++v7;
        v8 = v11;
        v9 = v11;
      }
    }
  }

  result = sub_100292C60(result + 3, &v28, &v29);
  if (*v5 >= 2uLL)
  {
    v12 = v3[7];
    v13 = v3[4];
    v14 = v3[5];
    v15 = (v13 + 8 * (v12 >> 8));
    v16 = *v15 + 16 * v12;
    if (v14 == v13)
    {
      v16 = 0;
    }

    v17 = v16 + 16;
    if (v16 + 16 - *v15 == 4096)
    {
      v18 = v15[1];
      ++v15;
      v17 = v18;
    }

    v19 = v12 + *v5;
    v20 = (v13 + 8 * (v19 >> 8));
    if (v14 == v13)
    {
      v21 = 0;
    }

    else
    {
      v21 = *v20 + 16 * v19;
    }

    v23 = sub_1002953BC(v15, v17, v29, v20, v21);
    v24 = v3[7] + v3[8];
    v25 = v3[4];
    v26 = (v25 + 8 * (v24 >> 8));
    if (v3[5] == v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = *v26 + 16 * v24;
    }

    return sub_100292990(v3 + 3, v23, v22, v26, v27);
  }

  return result;
}

void sub_1002963D8(uint64_t a1)
{
  sub_10000B230(v5);
  v2 = *(a1 + 4856);
  if (v2 && (*(*v2 + 40))(v2))
  {
    sub_1002941B4(a1);
    sub_1002940E8(a1);
    sub_100294280(a1);
    sub_100294380(a1);
    sub_100294454(a1);
  }

  if ((*(a1 + 4784) & 1) != 0 || *(a1 + 4800))
  {
    v3 = sub_10000AED0(v4);
    sub_100294FB4(v3, v5, v4);
    sub_100294A04(a1, v4, 0);
    sub_10000CE1C(v4);
  }
}

void sub_1002964A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002964B4(uint64_t a1)
{
  if (*(a1 + 26))
  {
    v1 = 1;
  }

  else if (sub_1000081AC() - *(a1 + 16) >= 180.0 && (*(a1 + 24) & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 25);
  }

  return v1 & 1;
}

uint64_t sub_10029651C(uint64_t a1)
{
  if (*(a1 + 20))
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      v2 = *(qword_102636D10 + 8);
    }

    v3 = *(v2 + 36);
    if (*(v2 + 36))
    {
      v4 = (v3 << 31 >> 31) & 9;
      if ((v3 & 2) != 0)
      {
        v4 += 9;
      }

      if ((v3 & 4) != 0)
      {
        v3 = v4 + 9;
      }

      else
      {
        v3 = v4;
      }
    }

    *(v2 + 32) = v3;
    v1 = (v3 + 2);
  }

  else
  {
    v1 = 0;
  }

  *(a1 + 16) = v1;
  return v1;
}

__n128 sub_100296580(void *a1, __n128 *a2)
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
    sub_100F660A4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

__n128 sub_10029660C@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = a3 - 1;
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_1002966DC(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = v19 + 4096;
    }

    v12 = *v17 + 4096;
    v11 = a2;
  }

  sub_1002966DC(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1002966DC@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = &a4[-v10];
      if ((v11 - a1) >> 4 >= v12 >> 4)
      {
        v13 = v12 >> 4;
      }

      else
      {
        v13 = (v11 - a1) >> 4;
      }

      v11 -= 16 * v13;
      a4 -= 16 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 16 * v13);
      }

      if (v11 == a1)
      {
        break;
      }

      v15 = *--v6;
      v10 = v15;
      a4 = (v15 + 4096);
    }

    if ((*v6 + 4096) == a4)
    {
      v16 = v6[1];
      ++v6;
      a4 = v16;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

void *sub_100296798(void *a1, void *a2, __int128 *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 32 * (v9 - v8) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1002968D0(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 >> 8));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 16 * v11;
    v15 = v14;
  }

  v23[0] = v13;
  v23[1] = v15;
  result = sub_100014378(v23, a4);
  while (v14 != v17)
  {
    v18 = (v13 == result ? v17 : *v13 + 4096);
    if (v14 == v18)
    {
      v18 = v14;
    }

    else
    {
      v19 = v14;
      do
      {
        v20 = *a3++;
        *v19 = v20;
        if ((a3 - *a2) == 4096)
        {
          v21 = a2[1];
          ++a2;
          a3 = v21;
        }

        ++v19;
      }

      while (v19 != v18);
    }

    a1[5] += (v18 - v14) >> 4;
    if (v13 == result)
    {
      break;
    }

    v22 = v13[1];
    ++v13;
    v14 = v22;
  }

  return result;
}

void *sub_1002968D0(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4)
  {
    v5 = (v4 >> 8) + 1;
  }

  else
  {
    v5 = v4 >> 8;
  }

  v6 = result[4];
  if (v5 >= v6 >> 8)
  {
    v7 = v6 >> 8;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 8)
  {
    for (result[4] = v6 - (v7 << 8); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = result;
      if (v12)
      {
        sub_10045E858(result, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 8; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_10045E430(v2, v16);
    }
  }

  return result;
}

void sub_100296B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100296BE8(void *a1, char *a2, __int128 *a3, char *a4, __int128 *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = ((a5 - *a4) >> 4) + 32 * (a4 - a2) - ((a3 - *a2) >> 4);
  }

  return sub_100296798(a1, a2, a3, v5);
}

uint64_t sub_100296C1C(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  v4 = a2[4];
  v5 = a2[1];
  v6 = a2[2];
  v7 = (v5 + 8 * (v4 >> 8));
  if (v6 == v5)
  {
    v8 = 0;
    v11 = 0;
    v10 = (v5 + 8 * ((a2[5] + v4) >> 8));
  }

  else
  {
    v8 = (*v7 + 16 * v4);
    v9 = a2[5] + v4;
    v10 = (v5 + 8 * (v9 >> 8));
    v11 = (*v10 + 16 * v9);
  }

  sub_100296BE8(a1, v7, v8, v10, v11);
  return a1;
}

uint64_t sub_100296CC0(uint64_t result, __int128 *a2, char *a3, __int128 *a4, char *a5, __int128 *a6, uint64_t a7)
{
  v65 = result;
  v66 = a2;
  if (a6 != a4)
  {
    v8 = a6;
    while (1)
    {
      v11 = v66;
      if (v8 == v66)
      {
        return result;
      }

      result = v65;
      v12 = *a5;
      v13 = ((v8 - *a5) >> 4) + 32 * (a5 - v65) - ((v66 - *v65) >> 4);
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 3)
      {
        v54 = v66 + 1;
        if ((v66 - *v65 + 16) == 4096)
        {
          v54 = *(v65 + 1);
        }

        if (v8 == v12)
        {
          v8 = (*(a5 - 1) + 4096);
        }

        v55 = v8 - 1;
        v56 = (*(*a7 + 16))();
        result = (*(*a7 + 16))();
        if (v56)
        {
          if (result)
          {
            v57 = *v11;
            v67 = *v11;
            *v11 = *v55;
          }

          else
          {
            v63 = *v11;
            *v11 = *v54;
            *v54 = v63;
            result = (*(*a7 + 16))();
            if (!result)
            {
              return result;
            }

            v57 = *v54;
            v67 = *v54;
            *v54 = *v55;
          }

          *v55 = v57;
          return result;
        }

        if (result)
        {
          v67 = *v54;
          v61 = v67;
          *v54 = *v55;
          *v55 = v61;
          result = (*(*a7 + 16))();
          if (result)
          {
            v62 = *v11;
            *v11 = *v54;
            *v54 = v62;
          }
        }

        return result;
      }

      if (v13 == 2)
      {
        v58 = *a7;
        if (v8 == v12)
        {
          v8 = (*(a5 - 1) + 4096);
        }

        v59 = v8 - 1;
        result = (*(v58 + 16))(v58, v8 - 1, v66);
        if (result)
        {
          v67 = *v66;
          v60 = v67;
          *v66 = *v59;
          *v59 = v60;
        }

        return result;
      }

      if (v13 <= 7)
      {
        return sub_100F61268(v65, v66, a5, v8, a7);
      }

      sub_100014378(&v65, v13 >> 1);
      v15 = v14;
      v16 = a5;
      v17 = v8;
      if (v8 == *a5)
      {
        v16 = a5 - 8;
        v17 = *(a5 - 1) + 4096;
      }

      v18 = v66;
      v19 = (v17 - 16);
      v20 = (*(*a7 + 16))();
      v21 = (*(*a7 + 16))();
      if (v20)
      {
        break;
      }

      if (v21)
      {
        v67 = *v15;
        v23 = v67;
        *v15 = *v19;
        *v19 = v23;
        if ((*(*a7 + 16))())
        {
          v24 = *v18;
          *v18 = *v15;
          *v15 = v24;
        }

        goto LABEL_20;
      }

      v26 = 0;
LABEL_22:
      v28 = v65;
      v27 = v66;
      result = (*(*a7 + 16))();
      if ((result & 1) == 0)
      {
        do
        {
          if (v19 == *v16)
          {
            v29 = *(v16 - 1);
            v16 -= 8;
            v19 = (v29 + 4096);
          }

          if (v27 == --v19)
          {
            v44 = v27 + 1;
            if ((v27 - *v28 + 16) == 4096)
            {
              v45 = *(v28 + 1);
              v28 += 8;
              v44 = v45;
            }

            v46 = a5;
            v47 = v8;
            if (v8 == *a5)
            {
              v46 = a5 - 8;
              v47 = *(a5 - 1) + 4096;
            }

            v48 = (v47 - 16);
            result = (*(*a7 + 16))();
            if ((result & 1) == 0)
            {
              while (1)
              {
                if (v44 == v48)
                {
                  return result;
                }

                result = (*(*a7 + 16))();
                if (result)
                {
                  break;
                }

                if ((++v44 - *v28) == 4096)
                {
                  v51 = *(v28 + 1);
                  v28 += 8;
                  v44 = v51;
                }
              }

              v67 = *v44;
              *v44++ = *v48;
              *v48 = v67;
              if ((v44 - *v28) == 4096)
              {
                v53 = *(v28 + 1);
                v28 += 8;
                v44 = v53;
              }
            }

            if (v44 == v48)
            {
              return result;
            }

            while (1)
            {
              if ((*(*a7 + 16))())
              {
                do
                {
                  if (v48 == *v46)
                  {
                    v50 = *(v46 - 1);
                    v46 -= 8;
                    v48 = (v50 + 4096);
                  }

                  --v48;
                  result = (*(*a7 + 16))();
                }

                while ((result & 1) != 0);
                if (v28 >= v46 && (v28 != v46 || v44 >= v48))
                {
                  if (v28 > a3 || v44 > a4 && v28 == a3)
                  {
                    return result;
                  }

LABEL_98:
                  v65 = v28;
                  v66 = v44;
                  goto LABEL_99;
                }

                v67 = *v44;
                *v44 = *v48;
                *v48 = v67;
              }

              if ((++v44 - *v28) == 4096)
              {
                v49 = *(v28 + 1);
                v28 += 8;
                v44 = v49;
              }
            }
          }

          result = (*(*a7 + 16))();
        }

        while (!result);
        v67 = *v27;
        v30 = v67;
        *v27 = *v19;
        *v19 = v30;
        if (v26)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }
      }

      v31 = v27 + 1;
      if ((v31 - *v28) == 4096)
      {
        v32 = *(v28 + 1);
        v28 += 8;
        v31 = v32;
      }

      if (v28 < v16 || v28 == v16 && v31 < v19)
      {
        while (1)
        {
          if ((*(*a7 + 16))())
          {
            do
            {
              if ((++v31 - *v28) == 4096)
              {
                v33 = *(v28 + 1);
                v28 += 8;
                v31 = v33;
              }
            }

            while (((*(*a7 + 16))() & 1) != 0);
          }

          do
          {
            if (v19 == *v16)
            {
              v34 = *(v16 - 1);
              v16 -= 8;
              v19 = (v34 + 4096);
            }

            --v19;
            result = (*(*a7 + 16))();
          }

          while (!result);
          if (v28 >= v16 && (v28 != v16 || v31 >= v19))
          {
            break;
          }

          v67 = *v31;
          *v31 = *v19;
          *v19 = v67;
          ++v26;
          if (v15 == v31)
          {
            v15 = v19;
          }

          if ((++v31 - *v28) == 4096)
          {
            v35 = *(v28 + 1);
            v28 += 8;
            v31 = v35;
          }
        }
      }

      if (v31 != v15)
      {
        result = (*(*a7 + 16))();
        if (result)
        {
          v67 = *v31;
          *v31 = *v15;
          *v15 = v67;
          ++v26;
        }
      }

      if (v31 == a4)
      {
        return result;
      }

      if (!v26)
      {
        if (v28 > a3 || (v36 = v31, v37 = v28, v31 > a4) && (v36 = v31, v37 = v28, v28 == a3))
        {
          v39 = v65;
          v38 = v66;
          while (1)
          {
            v40 = v38 + 1;
            if ((v38 - *v39 + 16) == 4096)
            {
              v41 = *(v39 + 1);
              v39 += 8;
              v40 = v41;
            }

            if (v40 == v31)
            {
              break;
            }

            result = (*(*a7 + 16))();
            v38 = v40;
            if (result)
            {
              goto LABEL_54;
            }
          }
        }

        else
        {
          while (1)
          {
            v42 = v36 + 1;
            if ((v36 - *v37 + 16) == 4096)
            {
              v43 = *(v37 + 1);
              v37 += 8;
              v42 = v43;
            }

            if (v42 == v8)
            {
              break;
            }

            result = (*(*a7 + 16))();
            v36 = v42;
            if (result)
            {
              goto LABEL_54;
            }
          }
        }

        return result;
      }

LABEL_54:
      if (v28 <= a3 && (v31 <= a4 || v28 != a3))
      {
        v44 = v31 + 1;
        if ((v31 - *v28 + 16) == 4096)
        {
          v52 = *(v28 + 1);
          v28 += 8;
          v44 = v52;
        }

        goto LABEL_98;
      }

      v8 = v31;
      a5 = v28;
LABEL_99:
      if (v8 == a4)
      {
        return result;
      }
    }

    if (v21)
    {
      v22 = *v18;
      v67 = *v18;
      *v18 = *v19;
    }

    else
    {
      v25 = *v18;
      *v18 = *v15;
      *v15 = v25;
      if (!(*(*a7 + 16))())
      {
LABEL_20:
        v26 = 1;
        goto LABEL_22;
      }

      v22 = *v15;
      v67 = *v15;
      *v15 = *v19;
    }

    *v19 = v22;
    goto LABEL_20;
  }

  return result;
}

void sub_100297478(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v3 = *(v1 + 144);

  sub_1002974B4(v3, v2.__d_.__rep_);
}

void sub_1002974B4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 8) setIsInVehicleNavigation:0];

  sub_100297500(a1, a2, 0);
}

void sub_100297500(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_1025D4620 != -1)
  {
    sub_101869E48();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67240192;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Vehicle navigation mode changed to %{public}d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10186F4C0();
  }

  if ([*(a1 + 8) pipelinedSeeded] && a3)
  {
    if (*(a1 + 40) == 1)
    {
      sub_10000EC00(__p, "vehiclenav");
      sub_10017F2F4(a1, 1, __p);
    }

    else
    {
      sub_10000EC00(__p, "vehiclenav");
      sub_10017F2F4(a1, 2, __p);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (a3)
  {
    v7 = "setVehicleNavigation:ON";
  }

  else
  {
    v7 = "setVehicleNavigation:OFF";
  }

  sub_10000EC00(__p, v7);
  sub_10022C7A4(a1, a2, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100297694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002976DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1017B8500;
  block[3] = &unk_102449A78;
  block[4] = a1;
  dispatch_async(v1, block);
}

void sub_100297750(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  CLProfilingIdentify();
  if (a4)
  {
    v7 = a4[1];
    if (v7)
    {
      v8 = *a4;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = std::__shared_weak_count::lock(v7);
      if (v9 && v8)
      {
        [objc_msgSend(*(v8 + 16) "silo")];
        if (qword_1025D47F0 != -1)
        {
          sub_101A215FC();
        }

        if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
        {
          v17 = 1;
          v11 = _os_activity_create(dword_100000000, "CL: CLRavenController::HandleGnssAvailabilityPredictorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v11, &state);

          if (qword_1025D47F0 != -1)
          {
            sub_101A21610();
          }

          v12 = qword_1025D47F8;
          if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289538;
            v19 = 0;
            v20 = 2082;
            v21 = "";
            v22 = 2082;
            v23 = "activity";
            v24 = 2050;
            v25 = v8;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRavenController::HandleGnssAvailabilityPredictorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
          }
        }

        else
        {
          v17 = 0;
        }

        sub_100297B0C(v8, v10, a2, a3);
        if (v17 == 1)
        {
          os_activity_scope_leave(&state);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v9 = 0;
    }

    if (qword_1025D4680 != -1)
    {
      sub_101A2038C();
    }

    v14 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called after controller deletion", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A20348(buf);
      LOWORD(state.opaque[0]) = 0;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static void CLRavenController::HandleGnssAvailabilityPredictorNotification_bounce(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &, void *)", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    if (!v9)
    {
      if (!v7)
      {
        return;
      }

      goto LABEL_26;
    }

LABEL_31:
    sub_100008080(v9);
    if (!v7)
    {
      return;
    }

LABEL_26:
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  if (qword_1025D4680 != -1)
  {
    sub_101A2038C();
  }

  v13 = qword_1025D4688;
  if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Raven: #methodName called with null ctxExpr", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A219C8();
  }
}

void sub_100297ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_activity_scope_state_s state, char a12)
{
  if (v13)
  {
    sub_100008080(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100297B0C(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 36)
  {
    v5 = result;
    if ((*(result + 4784) & 1) != 0 || *(result + 4800))
    {
      sub_10000AED0(v9);
      sub_10000B230(v8);
      sub_100297BA8(v6, v8, v7, a4, v9);
      sub_100294A04(v5, v9, 0);
      return sub_10000CE1C(v9);
    }
  }

  return result;
}

void sub_100297B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

BOOL sub_100297BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 52) |= 2u;
  v7 = *(a5 + 40);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 488) |= 0x8000000u;
  v8 = *(v7 + 224);
  if (!v8)
  {
    operator new();
  }

  sub_100294964(a2, a5);
  *&v9 = *(a4 + 1344) - *a2;
  v14 = *(a4 + 1344);
  v15 = vaddq_f64(vdupq_lane_s64(v9, 0), *(a2 + 8));
  v16 = *(a2 + 24);
  *(v8 + 36) |= 1u;
  v10 = *(v8 + 8);
  if (!v10)
  {
    operator new();
  }

  if ((sub_10027E930(&v14, v10) & 1) == 0)
  {
    if (qword_1025D4680 != -1)
    {
      sub_101A20320();
    }

    v11 = qword_1025D4688;
    if (os_log_type_enabled(qword_1025D4688, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "SerializeGnssAvailabilityPredictorNotification,failed to convert applicable time to protobuf", v13, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A245B8();
    }
  }

  return sub_100297D94(a4, v8);
}

BOOL sub_100297D94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100020A20((a1 + 1332));
  if (!sub_10041ECF8(v4))
  {
    sub_101882D68();
  }

  v5 = *(a2 + 36);
  *(a2 + 24) = v4;
  v6 = *(a1 + 1336);
  *(a2 + 36) = v5 | 6;
  *(a2 + 16) = v6;
  v7 = sub_100020928((a1 + 1328));
  result = sub_10041ECF8(v7);
  if (!result)
  {
    sub_101882D94();
  }

  *(a2 + 36) |= 8u;
  *(a2 + 28) = v7;
  return result;
}

uint64_t sub_100297E18(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 84))
  {
    v2 = 1;
  }

  else
  {
    v2 = 6;
  }

  v3 = *(v1 + 80) + 1;
  *(v1 + 80) = v3;
  if (v3 <= v2 || v3 % 0x64 == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168BBC0();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 8);
      v8 = *(v7 + 80);
      LODWORD(v7) = *(v7 + 84);
      v11[0] = 68289538;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v8;
      v16 = 1026;
      v17 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, onFix, NumFixesFromStart:%{public}u, ContinuousMode:%{public}d}", v11, 0x1Eu);
    }

    v1 = *(a1 + 8);
    if (*(v1 + 80) == v2)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10168BCB8();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#tt, onFix, enabling", v11, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168C86C();
      }

      *(a1 + 17) = 1;
      sub_100175108(a1);
      v1 = *(a1 + 8);
    }
  }

  return *(**v1 - 8);
}

uint64_t sub_100297FFC(void *a1, int a2, _DWORD *a3)
{
  v3 = a1[10];
  if (!v3)
  {
    return 0;
  }

  if (a2 == 2)
  {
    v10 = vcvtd_n_f64_u64(v3, 1uLL);
    v11 = vcvtms_s32_f32(v10);
    v12 = a1[8];
    if (v11 < 1)
    {
      v7 = a1[8];
    }

    else
    {
      for (i = 0; i != v11; ++i)
      {
        v14 = v12[1];
        if (v14)
        {
          do
          {
            v7 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v7 = v12[2];
            v8 = *v7 == v12;
            v12 = v7;
          }

          while (!v8);
        }

        v12 = v7;
      }
    }

    goto LABEL_22;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v6 = a1[9];
      v4 = a1 + 9;
      v5 = v6;
      if (v6)
      {
        do
        {
          v7 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (v8);
      }

      goto LABEL_22;
    }

    return 0;
  }

  v7 = a1[8];
LABEL_22:
  *a3 = *(v7 + 7);
  return 1;
}

uint64_t *sub_1002980C8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1002981C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    v10 = 0x300000003;
    v8 = off_10249DB60;
    v9 = xmmword_101CF0650;
    v11 = &v12;
    sub_1000AC374(a1 + 16, a2, &v8);
    sub_1002C1414(v7, *(a1 + 28), *(a1 + 24));
    sub_1002CD878(a1 + 16, v7);
    v15 = 0x300000003;
    v13 = off_10249DB60;
    v14 = xmmword_101CF0650;
    v16 = &v17;
    sub_1000AC374(&v8, v7, &v13);
    sub_1000AC16C(a3, &v13);
  }

  return v3;
}

void *sub_1002982C8(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_1000B85D0(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

double sub_100298394(int a1, unsigned int a2)
{
  if (qword_102656768 != -1)
  {
    sub_1001537D4();
  }

  return a2 / 1000.0 + (604800 * a1) + -662342400.0 - dword_1025D6560;
}

void sub_100298410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000B230(v19);
  v6 = *(a1 + 72);
  v7 = *(a1 + 8);
  if ((v6 & 1) == 0)
  {
    v7 = 0;
  }

  *a2 = v7;
  v8 = *(a1 + 16) * 0.000001;
  if ((v6 & 2) == 0)
  {
    v8 = 0.0;
  }

  *(a2 + 44) = v8;
  *(a2 + 16) = sub_100298368(v7 / 0xF4240) + (v7 % 0xF4240) * 0.000000001;
  v18 = *(a1 + 32);
  if (v18 == 0.0 || (*(a1 + 72) & 0x20) == 0)
  {
    v18 = v19[0];
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,falling back to fix receipt time", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10176FE1C();
    }
  }

  *(a2 + 32) = v18;
  if ((sub_1002A879C(a3, &v18, (a2 + 24)) & 1) == 0)
  {
    *(a2 + 24) = sub_1000137E0() + v19[0] - v18;
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning,falling back in fix mach abs calc", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10176FEF8();
    }
  }

  v11 = v19[0] - v18;
  *(a2 + 8) = v19[2] - (v19[0] - v18);
  if (qword_1025D4650 != -1)
  {
    sub_100154094();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v13 = *(a2 + 8) - *(a2 + 16);
    *buf = 134349312;
    v25 = v11;
    v26 = 2050;
    v27 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#gpsd,fixAgeSeconds,%{public}.4f,pedApparentCfTimeErr,%{public}.4f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v16 = *(a2 + 8) - *(a2 + 16);
    v20 = 134349312;
    v21 = v11;
    v22 = 2050;
    v23 = v16;
    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void GNSS::Convert::timeFromProtobuf(const proto::gnss::Time &, GNSS::TimeInfo &, CLUtils::LiveTimeConverter &)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  if ((~*(a1 + 72) & 0xC) != 0 || *(a1 + 20) != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100154094();
    }

    v15 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#gpsd,Time.leapSeconds invalid", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10176FFD4();
    }

    v14 = 0;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  *(a2 + 40) = v14;
}

uint64_t sub_10029882C(uint64_t a1, double a2, double a3)
{
  if (*(a1 + 1273))
  {
    return 0;
  }

  result = 0;
  if (a2 >= 0.0 && a3 > 0.0)
  {
    result = CLMotionActivity::isTypeStatic();
    if (result)
    {
      return a2 + a3 * -3.0 < 0.0 || a2 < 5.0;
    }
  }

  return result;
}

void sub_1002988A4(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = 0xFFFF;
  *(a4 + 12) = 0;
  *(a4 + 4) = 0;
  *(a4 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v24 = _Q0;
  *(a4 + 36) = _Q0;
  *(a4 + 52) = 0xBFF0000000000000;
  *(a4 + 60) = _Q0;
  *(a4 + 76) = 0xBFF0000000000000;
  *(a4 + 84) = 0;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 88) = 0xBFF0000000000000;
  *(a4 + 112) = 0;
  *(a4 + 116) = 0xBFF0000000000000;
  *(a4 + 124) = 0x7FFFFFFF;
  *(a4 + 136) = 0;
  *(a4 + 144) = 0;
  *(a4 + 128) = 0;
  *(a4 + 152) = 0;
  sub_100021ED8(a4 + 160);
  *(a4 + 76) = *(a1 + 8);
  *(a4 + 4) = *(a1 + 56);
  *(a4 + 28) = *(a1 + 72) - *(a1 + 80);
  *(a4 + 132) = 1;
  *(a4 + 44) = v24;
  if (*(a1 + 144) == 1)
  {
    *(a4 + 44) = *(a1 + 152);
  }

  *(a4 + 60) = v24;
  if (*(a1 + 168) == 1)
  {
    *(a4 + 60) = *(a1 + 176);
  }

  v13 = *(a1 + 104);
  *(a4 + 20) = *(a1 + 96);
  *(a4 + 36) = v13;
  sub_100027CA8(a4);
  *(a4 + 88) = 0x4020000000000000;
  v14 = *(a4 + 20);
  if (v14 < 149.0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 9;
  }

  *(a4 + 96) = v15;
  if (v14 >= 149.0)
  {
    v16 = 72;
  }

  else
  {
    v16 = 90;
  }

  *(a4 + 84) = v16;
  v17 = *(a1 + 140);
  if ((v17 - 3) < 2)
  {
    v18 = 75;
  }

  else if ((v17 - 1) > 1)
  {
    if (v14 >= 149.0)
    {
      v18 = 50;
    }

    else
    {
      v18 = 75;
    }
  }

  else
  {
    *(a4 + 84) = 68;
    v18 = 25;
  }

  *(a4 + 128) = v18;
  *(a4 + 184) = *(a1 + 16);
  *(a4 + 504) = *(a1 + 32);
  *(a4 + 200) = vcvt_f32_f64(*(a1 + 112));
  v19 = *(a1 + 128);
  *(a4 + 208) = v19;
  *(a4 + 472) = *(a1 + 88);
  v20 = *(a1 + 80);
  *(a4 + 476) = v20;
  if (*(a1 + 292) == 3)
  {
    v21 = 1;
  }

  else
  {
    v21 = a3;
  }

  *(a4 + 672) = v21;
  if (*(a1 + 216) == 1)
  {
    *(a4 + 160) = *(a1 + 224);
    *(a4 + 176) = *(a1 + 240);
  }

  if (a2)
  {
    sub_10028E96C(a1 + 248);
  }

  v22 = *(a1 + 288);
  if (v22 > 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = dword_101CAFC38[v22];
  }

  *(a4 + 696) = v23;
}

void sub_100298AF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 688);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100298B0C(uint64_t a1, double *a2)
{
  v2 = *a2;
  v3 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (v3 - 1) < 0xFFFFFFFFFFFFFLL;
  v5 = *a2 < 0 && (v3 - 0x10000000000000) >> 53 < 0x3FF;
  if (*a2 >= 0)
  {
    v4 = 0;
  }

  v6 = v3 == 0x7FF0000000000000 || v4;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v6 = 1;
  }

  if ((v6 | v5))
  {
    return 0;
  }

  if (v2 < 5.0)
  {
    return 8;
  }

  if (v2 < 10.0)
  {
    return 9;
  }

  if (v2 < 15.0)
  {
    return 10;
  }

  if (v2 < 20.0)
  {
    return 11;
  }

  if (v2 < 30.0)
  {
    return 12;
  }

  if (v2 < 40.0)
  {
    return 13;
  }

  if (v2 < 50.0)
  {
    return 14;
  }

  if (v2 < 100.0)
  {
    return 3;
  }

  if (v2 < 200.0)
  {
    return 4;
  }

  if (v2 < 400.0)
  {
    return 5;
  }

  if (v2 >= 1000.0)
  {
    return 7;
  }

  return 6;
}

uint64_t sub_100298C70(uint64_t result, uint64_t a2)
{
  if ((~*(result + 96) & 0x3BF) == 0)
  {
    v3 = result;
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = *(result + 24);
    *(a2 + 56) = *(result + 40);
    v4 = *(result + 48);
    *(a2 + 48) = sqrt(COERCE_DOUBLE(*&vmulq_f64(v4, v4).f64[1]) + v4.f64[0] * v4.f64[0]);
    *(a2 + 64) = vmulq_f64(v4, vdupq_n_s64(0x400399999999999AuLL));
    *(a2 + 80) = *(result + 64);
    *(a2 + 88) = sub_100298824(*(result + 72));
    result = sub_10029DBE0(*(v3 + 76));
    *(a2 + 92) = result;
    v5 = *(a2 + 48);
    v6 = v5 > 0.0;
    if (v5 >= 100000.0)
    {
      v6 = 0;
    }

    *a2 = v6;
    *(a2 + 40) = 1;
    if (fabs(*(a2 + 32)) < 2.22044605e-16)
    {
      *(a2 + 40) = -1;
    }
  }

  return result;
}

void sub_100298D58(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        v10 = *(a2 + 20);
        *(v8 + 2) = *(a2 + 2);
        *(v8 + 20) = v10;
        v11 = *v8;
        v8[1] = v9;
        v12 = sub_100806EC4(a1, v9, v8 + 4);
        sub_1007BE1F4(a1, v8, v12);
        a2 = *a2;
        v8 = v11;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v13 = *v8;
        operator delete(v8);
        v8 = v13;
      }

      while (v13);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_1002A88E0();
  }
}

void sub_100298E40(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t sub_100298E74(_BYTE *a1, double *a2, double *a3, int a4, int a5)
{
  *a1 = 0;
  if ((a1[268] & 1) == 0)
  {
    v12 = sub_1001E4A58();
    sub_10168D9C8(v12);
    goto LABEL_7;
  }

  v10 = sub_10029DEC4(a1, a2, a3);
  if (v10)
  {
LABEL_7:
    v11 = 0;
    return v11 & 1;
  }

  *a1 = sub_1001E21E4(v10, a2, a3, a4);
  v14 = a5;
  sub_1002A6C44(a1, &v14);
  if (*a1 & 1) != 0 || (a1[1])
  {
    v11 = 1;
  }

  else
  {
    v11 = a1[2];
  }

  return v11 & 1;
}

void sub_100298F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, int a6)
{
  if (*(a1 + 73) != 1)
  {
    return;
  }

  v80 = *(a2 + 292);
  if ((*(a1 + 82) & 1) != 0 || !sub_1016AD130(a1, a2))
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 76) + 1;
    v13 = 1;
  }

  *(a1 + 76) = v12;
  if (qword_1025D4650 != -1)
  {
    sub_1016ADBCC();
  }

  v14 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v15 = *(a2 + 48);
    v16 = *(a1 + 82);
    v17 = *(a1 + 76);
    *buf = 67109888;
    *v94 = v13 ^ 1;
    *&v94[4] = 1024;
    *&v94[6] = v15;
    *v95 = 1024;
    *&v95[2] = v16;
    *&v95[6] = 1024;
    *&v95[8] = v17;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "#imag,isMultiConstellationFix,%d,fixValid,%d,prevFixValid,%d,numBlockedFix,%d", buf, 0x1Au);
  }

  v18 = sub_10000A100(121, 2);
  v85 = a3;
  if (v18)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v72 = _os_log_send_and_compose_impl();
    v18 = sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::feedAndUpdateSimulationStatus(GNSS::PerEpochData &, GNSS::GnssSessionData &, const CLGnssALD &, const int &, const BOOL)", "%s\n", v72);
    if (v72 != buf)
    {
      free(v72);
    }
  }

  v89 = sub_1002A6F34(v18, a2, a6);
  *(a3 + 1091) |= v89;
  v90 = a4;
  v19 = nullsub_34(a4);
  sub_1002A70E8(v19, v19, a3);
  v20 = *(a1 + 16);
  v83 = v19;
  v88 = v13;
  if (*(a1 + 24) == v20)
  {
    v23 = 0;
    v92 = 0;
    v78 = 0;
    v24 = 1;
  }

  else
  {
    v86 = a5;
    v21 = 0;
    v22 = 0;
    v92 = 0;
    v23 = 0;
    v24 = 1;
    v25 = 1;
    v26 = 1;
    do
    {
      v27 = *(v20 + v21);
      v28 = sub_10029A1C8((v20 + v21), *(a2 + 296), *(a2 + 288));
      if (v27 == 2)
      {
        v29 = v28;
      }

      else
      {
        v29 = v25;
      }

      if (v27 == 5)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (v27 == 5)
      {
        v29 = v25;
      }

      if (v27 == 1)
      {
        v24 = v28;
      }

      else
      {
        v26 = v30;
        v25 = v29;
      }

      if ((v28 - 2) >= 2)
      {
        if (v28)
        {
          LODWORD(v92) = v92 + 1;
        }

        else
        {
          ++HIDWORD(v92);
        }
      }

      else
      {
        ++v23;
      }

      ++v22;
      v20 = *(a1 + 16);
      v21 += 48;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v20) >> 4) > v22);
    LODWORD(v78) = v25 == 0;
    HIDWORD(v78) = v26 == 0;
    a3 = v85;
    a5 = v86;
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (*(a1 + 64) & 1) == 0 || (*(a1 + 72))
  {
    v87 = 0;
    v79 = 0;
    goto LABEL_35;
  }

  v35 = *(a2 + 32) - *(a1 + 56);
  if (v35 < -10.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v36 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *v94 = v35;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "#imag,negative age,%{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1016AE34C(v35);
    }

    v87 = 0;
    v79 = 0;
    *(a1 + 64) = 0;
    goto LABEL_35;
  }

  v61 = fabs(v35);
  v62 = *(a1 + 48) + v61 * 0.0001;
  v63 = *(a2 + 16);
  v64 = v61 + *(a1 + 40);
  v65 = v63 - v64;
  if (vabdd_f64(v63, v64) <= v62)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v69 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v70 = *(a2 + 16);
      v71 = *(a1 + 48);
      *buf = 134350080;
      *v94 = v70;
      *&v94[8] = 2050;
      *v95 = v65;
      *&v95[8] = 2050;
      *&v95[10] = v62;
      *v96 = 2050;
      *&v96[2] = v61;
      *&v96[10] = 2050;
      v97 = v71;
      _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "#imag,stf_agreement,cfTimeGps,%{public}.3f,offset,%{public}.1f,width,%{public}.3f,age,%{public}.1f,origWidth,%{public}.1f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 2))
    {
      v87 = 0;
      v79 = 1;
      goto LABEL_35;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v77 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::feedAndUpdateSimulationStatus(GNSS::PerEpochData &, GNSS::GnssSessionData &, const CLGnssALD &, const int &, const BOOL)", "%s\n", v77);
    if (v77 != buf)
    {
      free(v77);
    }

    v87 = 0;
    v79 = 1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v66 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v67 = *(a2 + 16);
      v68 = *(a1 + 48);
      *buf = 134350080;
      *v94 = v67;
      *&v94[8] = 2050;
      *v95 = v65;
      *&v95[8] = 2050;
      *&v95[10] = v62;
      *v96 = 2050;
      *&v96[2] = v61;
      *&v96[10] = 2050;
      v97 = v68;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_ERROR, "#imag,stf_violation,cfTimeGps,%{public}.3f,offset,%{public}.1f,width,%{public}.3f,age,%{public}.1f,origWidth,%{public}.1f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 0))
    {
      v79 = 0;
      v87 = 1;
      goto LABEL_35;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v76 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "void CLGnssSimulationAndSpoofingMonitor::feedAndUpdateSimulationStatus(GNSS::PerEpochData &, GNSS::GnssSessionData &, const CLGnssALD &, const int &, const BOOL)", "%s\n", v76);
    if (v76 != buf)
    {
      free(v76);
    }

    v79 = 0;
    v87 = 1;
  }

  p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  a3 = v85;
LABEL_35:
  v32 = v90;
  if (*(v19 + 1) == 1)
  {
    v33 = *a5;
    if (v33 >= sub_10170C334(v90))
    {
      v34 = *(a1 + 83) ^ 1;
    }

    else
    {
      v34 = 0;
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  }

  else
  {
    v34 = 0;
  }

  *(a3 + 1088) = (*(a3 + 1088) | v34) & 1;
  if (*(v19 + 2) == 1)
  {
    v37 = *(a1 + 83) ^ 1;
  }

  else
  {
    v37 = 0;
  }

  *(a3 + 1089) = (*(a3 + 1089) | v37) & 1;
  if (*v19 == 1)
  {
    v38 = *(a1 + 83) ^ 1;
  }

  else
  {
    v38 = 0;
  }

  *(a3 + 1090) = (*(a3 + 1090) | v38) & 1;
  *(a3 + 1092) |= v24 == 3;
  v41 = *(v19 + 16);
  v40 = v19 + 16;
  v39 = v41;
  *(a3 + 1100) = *(v40 + 16);
  *(a3 + 1104) = *(v40 + 20);
  v42 = -1.0;
  if (!v41)
  {
    goto LABEL_63;
  }

  v43 = v40;
  do
  {
    if (*(v39 + 28))
    {
      v43 = v39;
    }

    v39 = *(v39 + 8 * (*(v39 + 28) == 0));
  }

  while (v39);
  if (v43 == v40 || *(v43 + 28) > 1u)
  {
LABEL_63:
    v82 = 0;
  }

  else
  {
    LODWORD(v82) = *(v43 + 32);
    HIDWORD(v82) = *(v43 + 40);
    v42 = *(v43 + 36);
  }

  v84 = v38;
  v91 = v37;
  if (qword_1025D4650 != -1)
  {
    sub_1016ADE08();
  }

  v44 = p_info[203];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67241216;
    *v94 = v34 & 1;
    *&v94[4] = 1026;
    *&v94[6] = v82;
    *v95 = 2050;
    *&v95[2] = v42;
    *&v95[10] = 1026;
    *&v95[12] = v91 & 1;
    *&v95[16] = 1026;
    *v96 = HIDWORD(v82);
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "#imag,cn0Stats,isCn0VarianceUnrealistic,%{public}d,numMeasForCn0Var,%{public}d,gpsCn0Var,%{public}.1f,cn0HighFake,%{public}d,numHighCn0,%{public}d,", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v73 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::feedAndUpdateSimulationStatus(GNSS::PerEpochData &, GNSS::GnssSessionData &, const CLGnssALD &, const int &, const BOOL)", "%s\n", v73);
    if (v73 != buf)
    {
      free(v73);
    }

    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v81 = v80 & 0xFFFFFFFE;
  v45 = sub_10029E1B8(v32);
  v46 = sub_10029E49C(v32);
  v47 = v34;
  v48 = v91;
  v49 = v91 & v46;
  if ((v88 | v84) & 1) != 0 || (v34 & v45 & 1) != 0 || ((v89 | v49))
  {
    goto LABEL_81;
  }

  v50 = v87;
  if (v24 == 3)
  {
    v50 = 1;
  }

  if (v50 == 1 && (*(a1 + 72) & 1) == 0)
  {
LABEL_81:
    if (v24 == 3)
    {
      if (*(a1 + 72))
      {
        v53 = 0;
      }

      else
      {
        v53 = "build_check";
      }

      v54 = *(a1 + 72) ^ 1;
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    if (v87)
    {
      if (!*(a1 + 72))
      {
        v53 = "stf_violation";
      }

      v54 |= *(a1 + 72) ^ 1;
    }

    if (v84)
    {
      if (!*(a1 + 72))
      {
        v53 = "known_coord";
      }

      v54 |= *(a1 + 72) ^ 1;
    }

    if (v89)
    {
      if (!*(a1 + 72))
      {
        v53 = "alt_check";
      }

      v54 |= *(a1 + 72) ^ 1;
    }

    if ((v34 & v45 & 1) != 0 && (*(a1 + 72) & 1) == 0)
    {
      v54 = 1;
      *(a1 + 81) = 1;
      v53 = "cn0var_fail";
    }

    if ((v49 & 1) != 0 && (*(a1 + 72) & 1) == 0)
    {
      v54 = 1;
      *(a1 + 81) = 1;
      v53 = "cn0high_fail";
    }

    if (v88)
    {
      if (*(a1 + 76) > 0x1Du)
      {
        v53 = "multicon_fail";
      }

      v54 |= *(a1 + 76) > 0x1Du;
    }

    v52 = 0;
    v51 = 3;
    if (*(a1 + 80) & 1) == 0 && (v54)
    {
      *(a1 + 80) = 1;
      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v55 = p_info[203];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        *buf = 67242752;
        *v94 = v79;
        *&v94[4] = 1026;
        *&v94[6] = v87;
        *v95 = 1026;
        *&v95[2] = v24 == 3;
        *&v95[6] = 1026;
        *&v95[8] = v88;
        *&v95[12] = 1026;
        *&v95[14] = v84 & 1;
        *v96 = 1026;
        *&v96[2] = v89;
        *&v96[6] = 1026;
        *&v96[8] = v34 & 1;
        LOWORD(v97) = 1026;
        *(&v97 + 2) = v82;
        HIWORD(v97) = 2050;
        *v98 = v42;
        *&v98[8] = 1026;
        *v99 = v91 & 1;
        *&v99[4] = 1026;
        *v100 = HIDWORD(v82);
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_FAULT, "#imag,yield gated,stfAuth,%{public}d,stfFake,%{public}d,build,%{public}d,multiConstFake,%{public}d,locFake,%{public}d,altFake,%{public}d,measCn0VarFake,%{public}d,numGpsVarCalc,%{public}d,gpsCn0Var,%{public}.1f,measCn0HighFake,%{public}d,numGpsHighCn0,%{public}d", buf, 0x48u);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016ADE08();
        }

        v75 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssSimulationAndSpoofingMonitor::feedAndUpdateSimulationStatus(GNSS::PerEpochData &, GNSS::GnssSessionData &, const CLGnssALD &, const int &, const BOOL)", "%s\n", v75);
        if (v75 != buf)
        {
          free(v75);
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      sub_1016B1A70([objc_msgSend(*a1 "silo")], "imag", v53, 0);
      v52 = 0;
      v51 = 3;
      v47 = v34;
      v48 = v91;
    }
  }

  else
  {
    v51 = 2;
    v52 = 1;
    if (!v23 && v81 != 2 && (*(a1 + 72) & 1) == 0)
    {
      if ((v79 | v78 | HIDWORD(v78)))
      {
        v51 = 0;
        ++*(v85 + 1072);
      }

      else
      {
        ++*(v85 + 1064);
        v51 = 1;
      }
    }
  }

  *(v85 + 1080) |= *(a2 + 296);
  if (((v47 | v48) & 1) != 0 && (*(a1 + 72) & 1) == 0)
  {
    ++*(v85 + 1096);
    if ((*(a1 + 81) & 1) == 0)
    {
      if (v47)
      {
        v56 = "cn0var_fail_test";
      }

      else
      {
        v56 = "cn0high_fail_test";
      }

      *(a1 + 81) = 1;
      sub_1016B1A70([objc_msgSend(*a1 "silo")], "imag", v56, 0);
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_1016ADE08();
  }

  v57 = p_info[203];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    v58 = *(a1 + 72);
    v59 = *(v83 + 32);
    v60 = *(v83 + 36);
    *buf = 67245312;
    *v94 = v51;
    *&v94[4] = 1026;
    *&v94[6] = v81 == 2;
    *v95 = 1026;
    *&v95[2] = v92;
    *&v95[6] = 1026;
    *&v95[8] = HIDWORD(v92);
    *&v95[12] = 1026;
    *&v95[14] = v23;
    *v96 = 1026;
    *&v96[2] = v24 == 0;
    *&v96[6] = 1026;
    *&v96[8] = v78;
    LOWORD(v97) = 1026;
    *(&v97 + 2) = HIDWORD(v78);
    HIWORD(v97) = 1026;
    *v98 = v58;
    *&v98[4] = 1026;
    *&v98[6] = v79;
    *v99 = 1026;
    *&v99[2] = v87;
    *v100 = 1026;
    *&v100[2] = v88;
    v101 = 1026;
    v102 = v84 & 1;
    v103 = 1026;
    v104 = v89;
    v105 = 1026;
    v106 = v34 & 1;
    v107 = 1026;
    v108 = v82;
    v109 = 2050;
    v110 = v42;
    v111 = 1026;
    v112 = v91 & 1;
    v113 = 1026;
    v114 = HIDWORD(v82);
    v115 = 1026;
    v116 = v59;
    v117 = 1026;
    v118 = v60;
    _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_INFO, "#imag,result,%{public}d,deviceResult,%{public}d,unkCount,%{public}d,authCount,%{public}d,spoofedCount,%{public}d,buildTimeOk,%{public}d,eeTimeOk,%{public}d,pyTimeOk,%{public}d,simMode,%{public}d,stfAuth,%{public}d,stfFake,%{public}d,multiConstFake,%{public}d,locFake,%{public}d,altFake,%{public}d,measCn0VarFake,%{public}d,numGpsVarCalc,%{public}d,gpsCn0Var,%{public}.1f,measCn0HighFake,%{public}d,numGpsHighCn0,%{public}d,numFixesFromFFCn0LowVarSet,%{public}d,numFixesFromFFCn0LowVarReset,%{public}d", buf, 0x84u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v74 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::feedAndUpdateSimulationStatus(GNSS::PerEpochData &, GNSS::GnssSessionData &, const CLGnssALD &, const int &, const BOOL)", "%s\n", v74);
    if (v74 != buf)
    {
      free(v74);
    }
  }

  *(a1 + 82) = v52 & *(a2 + 48);
  *(a2 + 292) = v51;
}

uint64_t sub_10029A1C8(int32x2_t *a1, uint64_t a2, int a3)
{
  if ((*&a1[1] & a2) != 0)
  {
    a1[4] = 0;
    a1[5].i32[0] = a1[3].i32[0];
    if (qword_1025D4650 != -1)
    {
      sub_1016ADBCC();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v5 = a1->i32[0];
      v19 = 67240192;
      v20 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#imag,flagSet,id,%{public}d", &v19, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016ADBE0(a1);
    }

    return 3;
  }

  if (a1[3].i8[4] == 1 && !sub_100298C60(a3))
  {
    v8 = 0;
    a1[4].i32[1] = 0;
    v10 = a1[5].i32[0];
  }

  else
  {
    v6 = vadd_s32(a1[4], 0x100000001);
    a1[4] = v6;
    v7 = a1[5].i32[0];
    v8 = v6.i32[1];
    v9 = __OFSUB__(v7, 1);
    v10 = v7 - 1;
    if (v10 < 0 != v9)
    {
      return a1[4].i32[0] < a1[2].i32[0] || v8 < a1[2].i32[1];
    }

    a1[5].i32[0] = v10;
  }

  if (v10 > 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016ADBCC();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v12 = a1->i32[0];
      v14 = a1[4].i32[1];
      v13 = a1[5].i32[0];
      v15 = a1[4].i32[0];
      v16 = a1[2].i32[0];
      v17 = a1[2].i32[1];
      v19 = 67241472;
      v20 = v12;
      v21 = 1026;
      v22 = v13;
      v23 = 1026;
      v24 = v15;
      v25 = 1026;
      v26 = v16;
      v27 = 1026;
      v28 = v14;
      v29 = 1026;
      v30 = v17;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "#imag,flagStatus,id,%{public}d,remaining,%{public}d,numTot,%{public}d,threshTot,%{public}d,numConsec,%{public}d,threshConsec,%{public}d", &v19, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016ADCCC(a1, &a1[5]);
    }

    return 3;
  }

  return a1[4].i32[0] < a1[2].i32[0] || v8 < a1[2].i32[1];
}

void sub_10029A3F8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, double *a6, double *a7)
{
  v10 = a2[18] + 1;
  a2[18] = v10;
  a2[14] = *a3;
  a2[15] = *a4;
  a2[16] = *a5;
  v11 = *a6;
  a2[17] = *a6;
  *(a1 + 1360) = (v11 + *(a1 + 1360) * (v10 - 1)) / v10;
  v14 = sub_100298B0C(a1, a6);
  v15 = &v14;
  v12 = sub_1003E3DEC((a2 + 19), &v14);
  ++v12[5];
  v14 = sub_100298B0C(v12, a7);
  v15 = &v14;
  v13 = sub_1003E3DEC((a2 + 22), &v14);
  ++v13[5];
  sub_10012D924(a1, a2);
  *(a1 + 2472) = 1;
}

void sub_10029A508(uint64_t a1, uint64_t a2, int a3)
{
  v36 = a2;
  if (*(a1 + 114) != 1 || *(a1 + 112) != 1 || !*(a1 + 8) || *(a2 + 52) <= 0.0 || *(a2 + 44) >= 45.0)
  {
    return;
  }

  if (qword_1025D4650 != -1)
  {
    sub_1002981A0();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "DEM,feeding position", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1016FFC50();
  }

  v35 = 0;
  v34 = 0;
  if ([*(a1 + 8) syncgetAltitude:a2 rel:&v35 undulation:&v34 feedToAltFilter:1])
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016FF8FC();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "DEM,altitude available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016FFE50();
    }

    if (*(a1 + 72))
    {
      *buf = v34;
      v38 = 2;
      sub_1002A7DD0(a1 + 48);
    }

    v8 = *(a2 + 536);
    v9 = *(a2 + 28);
    if (vabdd_f64(v8, v9) <= 150.0)
    {
      if (v35 > 2)
      {
        if (v35 != 3 && v35 != 4)
        {
          goto LABEL_61;
        }
      }

      else if (v35 != 1 && v35 != 2)
      {
LABEL_61:
        v33 = 0;
LABEL_45:
        if (*(a1 + 40))
        {
          *(a1 + 120) = sub_1000137E0();
          *(a1 + 128) = *(a2 + 536);
          *(a1 + 144) = v34;
          memcpy(v26, (a2 + 160), 0x201uLL);
          v26[65] = *(a2 + 680);
          v19 = *(a2 + 688);
          v26[66] = v19;
          if (v19 != 0.0)
          {
            atomic_fetch_add_explicit((*&v19 + 8), 1uLL, memory_order_relaxed);
          }

          v20 = *(a2 + 776);
          v31 = *(a2 + 760);
          v32[0] = v20;
          *(v32 + 9) = *(a2 + 785);
          v21 = *(a2 + 712);
          v27 = *(a2 + 696);
          v28 = v21;
          v22 = *(a2 + 744);
          v29 = *(a2 + 728);
          v30 = v22;
          if (a3)
          {
            if (*(a1 + 115) == 1)
            {
              v23 = v26[48];
              if ((*&v26[48] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v26[48] < 40.0 && v26[48] > 0.0)
              {
                if (qword_1025D4650 != -1)
                {
                  sub_1016FF8FC();
                }

                v24 = qword_1025D4658;
                if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134349312;
                  *&buf[4] = v23;
                  *&buf[12] = 2050;
                  *&buf[14] = 0x4044000000000000;
                  _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "DEM,uncertainty inflated,old,%{public}0.3f,new,%{public}0.3f", buf, 0x16u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1016FF924(buf);
                  v38 = 134349312;
                  v39 = v23;
                  v40 = 2050;
                  v41 = 0x4044000000000000;
                  v25 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "void CLGnssAssistanceDem::feedPositionAndPopulateGroundAltUncAndClampLongitude(GNSS::DaemonLocation *, const BOOL)", "%s\n", v25);
                  if (v25 != buf)
                  {
                    free(v25);
                  }
                }

                v26[48] = 40.0;
              }
            }
          }

          v37 = 0;
          operator new();
        }

        return;
      }

      v33 = v35;
      goto LABEL_45;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1016FF8FC();
    }

    v17 = v8 - v9;
    v18 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = v17;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "DEM, large altitude offset between DEM and GPS: %{public}f not feeding to hardware", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016FFF3C(v17);
    }
  }

  else
  {
    if (*(a1 + 152) == 1)
    {
      v10 = *(a1 + 113);
    }

    else
    {
      v10 = 1;
    }

    if (qword_1025D4650 != -1)
    {
      sub_1016FF8FC();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240448;
      *&buf[4] = 0;
      *&buf[8] = 1026;
      *&buf[10] = v10 & 1;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "DEM,downloadIfNeeded,isGPSSignalQualityGood,%{public}d,allowCenterTileDownloadOverCellular,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016FFD3C(v10 & 1);
    }

    v12 = *(a1 + 8);
    v13 = *(a2 + 96);
    v48 = *(a2 + 112);
    v49[0] = *(a2 + 128);
    *(v49 + 12) = *(a2 + 140);
    v14 = *(a2 + 48);
    v43 = *(a2 + 32);
    v44 = v14;
    v15 = *(a2 + 80);
    v45 = *(a2 + 64);
    v46 = v15;
    v47 = v13;
    v16 = *(a2 + 16);
    *buf = *a2;
    *&buf[16] = v16;
    [v12 downloadIfNeeded:sub_1016FF1DC(buf) signalQuality:0 allowCenterOverCellular:v10 & 1];
  }
}

void sub_10029AB68(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10029ABA0(uint64_t a1, uint64_t a2, int *a3, double *a4, int a5)
{
  v11 = a1 + 104;
  v10 = *(a1 + 104);
  *&v132[1] = a1 + 104;
  (*(v10 + 16))(a1 + 104);
  v133 = 256;
  v12 = (a2 + 12);
  v13 = (a2 + 4);
  if (!sub_100020608(*(a2 + 4), *(a2 + 12)))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v34 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v35 = *(a2 + 76);
      v36 = *(a2 + 4);
      v37 = *(a2 + 12);
      *buf = 134349569;
      v155 = v35;
      v156 = 2053;
      v157 = v36;
      v158 = 2053;
      *v159 = v37;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_ERROR, "#Error,DEM,invalidInput,timestamp,%{public}.1lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf", buf, 0x20u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_32;
    }

    sub_101AF594C(buf);
    v107 = *(a2 + 76);
    v108 = *(a2 + 4);
    v109 = *(a2 + 12);
    v134 = 134349569;
    v135 = v107;
    v136 = 2053;
    v137 = v108;
    v138 = 2053;
    *v139 = v109;
    v47 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v47);
LABEL_114:
    if (v47 != buf)
    {
      free(v47);
    }

    goto LABEL_32;
  }

  if (sub_10029E530(a1))
  {
LABEL_32:
    v33 = 0;
    goto LABEL_33;
  }

  v131 = -1.0;
  v132[0] = 0.0;
  if (*(a1 + 944) == 1)
  {
    v14 = *(a1 + 1032);
    v15 = *(a1 + 1022);
    v16 = *(a1 + 1048);
    v17 = *(a1 + 1040);
    LOWORD(v5) = *(a1 + 1020);
    sub_10002DB04(v14);
    v19 = v18;
    sub_10002DB04(v14 + v15 * v16);
    v21 = v20;
    sub_10002DB04(*v12);
    v23 = v22;
    v24 = v17 + v5 * v16;
    *v12 = v22;
    v25 = *v13;
    if (*v13 >= v17 && v25 < v24 && v23 >= v19 && v23 < v21)
    {
      *(a1 + 544) = 0;
      goto LABEL_35;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101AF5938();
    }

    v29 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v30 = *v13;
      v31 = *v12;
      *buf = 134546945;
      v155 = v30;
      v156 = 2053;
      v157 = v31;
      v158 = 2053;
      *v159 = v17;
      *&v159[8] = 2053;
      *v160 = v24;
      *&v160[8] = 2053;
      v161 = v19;
      v162 = 2053;
      v163 = v21;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "DEM,not on the current in-memory tile,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,minLat,%{sensitive}.7lf,maxLat,%{sensitive}.7lf,minLon,%{sensitive}.7lf,maxLon,%{sensitive}.7lf", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AF594C(buf);
      v111 = *v13;
      v112 = *v12;
      v134 = 134546945;
      v135 = v111;
      v136 = 2053;
      v137 = v112;
      v138 = 2053;
      *v139 = v17;
      *&v139[8] = 2053;
      *v140 = v24;
      *&v140[8] = 2053;
      v141 = v19;
      v142 = 2053;
      v143 = v21;
      v113 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v113);
      if (v113 != buf)
      {
        free(v113);
      }
    }
  }

  if (!sub_10024F62C(a1 + 8, (a2 + 4), (a2 + 12)) || *(a1 + 605) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5990();
    }

    v32 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "DEM,tile not available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AF594C(buf);
      LOWORD(v134) = 0;
      v110 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v110);
      if (v110 != buf)
      {
        free(v110);
      }
    }

    v33 = 0;
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
    goto LABEL_33;
  }

  LOBYTE(v130) = 0;
  v44 = sub_100FD1A14(a1, &v130, *v13, *v12);
  if (LOBYTE(v130) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5990();
    }

    v45 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "DEM,tile download needed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AF594C(buf);
      LOWORD(v134) = 0;
      v114 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v114);
      if (v114 != buf)
      {
        free(v114);
      }
    }

    *(a1 + 464) = 1;
    *(a1 + 472) = *v13;
    goto LABEL_32;
  }

  if ((v44 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AF5990();
    }

    v46 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "DEM,Tile not loaded yet", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_32;
    }

    sub_101AF594C(buf);
    LOWORD(v134) = 0;
    v47 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v47);
    goto LABEL_114;
  }

  v25 = *v13;
  v23 = *v12;
LABEL_35:
  *(a1 + 464) = 0;
  if ((sub_10029E824(a1 + 912, v132, &v131, v25, v23) & 1) == 0)
  {
    goto LABEL_32;
  }

  v33 = 0;
  v39 = v132[0];
  if (v132[0] <= 8850.0 && v132[0] != -9999.0 && v132[0] >= -450.0)
  {
    v40 = v131;
    if (v131 < 9999.0)
    {
      *a4 = *(a1 + 1072);
      if (*(a2 + 44) > 22.0)
      {
        v40 = v40 * 2.5;
        v131 = v40;
      }

      v129 = v40 * v40;
      v130 = v39;
      v41 = v39;
      v42 = v39;
      if (a5)
      {
        if (*(a1 + 576) == 1 && (*(a2 + 96) & 0xFFFFFFF7) == 1)
        {
          v43 = sub_1002A74F8(a1 + 656, &v130, &v129, v39, v40 * v40, *(a2 + 4), *(a2 + 12), *(a2 + 76));
          v41 = v130;
          if (v43)
          {
            v42 = v130;
          }

          else
          {
            v42 = v39;
          }
        }

        else
        {
          *(a1 + 704) = xmmword_101D15FD0;
          *(a1 + 720) = 0u;
          *(a1 + 864) = 0xC0C3878000000000;
          *(a1 + 736) = 0u;
          *(a1 + 752) = 0u;
          *(a1 + 768) = 0u;
          *(a1 + 784) = 0u;
          *(a1 + 800) = 0u;
          *(a1 + 816) = 0u;
          *(a1 + 832) = 0u;
          *(a1 + 848) = vdupq_n_s64(0xC0C3878000000000);
          *(a1 + 888) = 0;
          *(a1 + 872) = 0u;
          *(a1 + 896) = 0u;
          v41 = v39;
          v42 = v39;
        }
      }

      v48 = v42 + 1.3;
      v132[0] = v48;
      v49 = v41 + 1.3;
      v130 = v41 + 1.3;
      if (*(a1 + 577))
      {
        v50 = 4;
      }

      else
      {
        v50 = 3;
      }

      *a3 = v50;
      if ((*(a1 + 888) & 1) != 0 || *(a1 + 889) == 1)
      {
        if (v40 < 40.0)
        {
          v131 = 40.0;
          v40 = 40.0;
        }

        *a3 = 2;
      }

      *(a2 + 536) = v48;
      *(a2 + 544) = v40;
      if (qword_1025D4650 != -1)
      {
        sub_101AF5990();
      }

      v51 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(a2 + 476);
        v53 = *(a2 + 472);
        *buf = 134283777;
        v155 = v52;
        v156 = 1026;
        LODWORD(v157) = v53;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "DEM,input location undulation,und,%{private}.3lf,model,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AF594C(buf);
        v115 = *(a2 + 476);
        v116 = *(a2 + 472);
        v134 = 134283777;
        v135 = v115;
        v136 = 1026;
        LODWORD(v137) = v116;
        v117 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v117);
        if (v117 != buf)
        {
          free(v117);
        }
      }

      v54 = *(a2 + 36);
      v56 = (v54 < 0 || ((v54 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v54 - 1) > 0xFFFFFFFFFFFFELL;
      if (!v56 && *(a2 + 472) == 1)
      {
        v57 = *(a2 + 28);
        v58 = *(a2 + 476);
        v59 = *a4;
        if (qword_1025D4650 != -1)
        {
          sub_101AF5990();
        }

        v60 = v57 + v58 - v59;
        v61 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v62 = *(a2 + 476);
          v63 = *a4;
          v64 = *(a2 + 28);
          *buf = 134284289;
          v155 = v62;
          v156 = 2049;
          v157 = v63;
          v158 = 2049;
          *v159 = v64;
          *&v159[8] = 2049;
          *v160 = v60;
          _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "DEM,update undulation,undOld,%{private}.3lf,undNew,%{private}.3lf,altOld,%{private}.3lf,altNew,%{private}.3lf,", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AF594C(buf);
          v124 = *(a2 + 476);
          v125 = *a4;
          v126 = *(a2 + 28);
          v134 = 134284289;
          v135 = v124;
          v136 = 2049;
          v137 = v125;
          v138 = 2049;
          *v139 = v126;
          *&v139[8] = 2049;
          *v140 = v60;
          v127 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v127);
          if (v127 != buf)
          {
            free(v127);
          }
        }

        v65 = *a4;
        *(a2 + 476) = v65;
        *(a2 + 472) = 2;
        *(a2 + 28) = v60;
      }

      if (*(a1 + 648) == 1)
      {
        sub_100FD1E9C(a1 + 912, a2, *(a2 + 4), *(a2 + 12));
        if (qword_1025D4650 != -1)
        {
          sub_101AF5990();
        }

        v66 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v67 = *(a2 + 4);
          v68 = *(a2 + 12);
          v69 = *(a2 + 96);
          v70 = *(a2 + 784);
          v71 = *(a2 + 788);
          *buf = 134546689;
          v155 = v67;
          v156 = 2053;
          v157 = v68;
          v158 = 1024;
          *v159 = v69;
          *&v159[4] = 1025;
          *&v159[6] = v70;
          *v160 = 2049;
          *&v160[2] = v71;
          _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "DEM,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,type,%d,numFlatPoints,%{private}d,%{private}.3f", buf, 0x2Cu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AF594C(buf);
          v118 = *(a2 + 4);
          v119 = *(a2 + 12);
          v120 = *(a2 + 96);
          v121 = *(a2 + 784);
          v122 = *(a2 + 788);
          v134 = 134546689;
          v135 = v118;
          v136 = 2053;
          v137 = v119;
          v138 = 1024;
          *v139 = v120;
          *&v139[4] = 1025;
          *&v139[6] = v121;
          *v140 = 2049;
          *&v140[2] = v122;
          v123 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v123);
          if (v123 != buf)
          {
            free(v123);
          }
        }
      }

      v33 = sub_1002A8A60(a1, a2);
      if (v33)
      {
        if (a5)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101AF5990();
          }

          v72 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v73 = *(a2 + 536);
            v74 = *(a2 + 544);
            v75 = *a4;
            v76 = *(a2 + 520);
            v77 = *(a2 + 528);
            v78 = *(a2 + 4);
            v79 = *(a2 + 12);
            v80 = *(a2 + 96);
            *buf = 134286081;
            v155 = v73;
            v156 = 2050;
            v157 = v74;
            v158 = 2049;
            *v159 = v49;
            *&v159[8] = 2050;
            *v160 = v129;
            *&v160[8] = 2049;
            v161 = v39;
            v162 = 2050;
            v163 = v75;
            v164 = 2049;
            v165 = v76;
            v166 = 2050;
            v167 = v77;
            v168 = 2053;
            v169 = v78;
            v170 = 2053;
            v171 = v79;
            v172 = 1024;
            v173 = v80;
            _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "DEM,Alt(m),%{private}.2lf,AltUnc(m),%{public}.2lf,filterAlt(m),%{private}.2lf,filterAltVariance(m^2),%{public}.2lf,RawDemAlt(m),%{private}.2lf,undulation,%{public}.3lf,slope,%{private}.3lf,maxAbsSlope,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,type,%d", buf, 0x6Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AF594C(buf);
            v81 = *(a2 + 536);
            v82 = *(a2 + 544);
            v83 = *a4;
            v84 = *(a2 + 520);
            v85 = *(a2 + 528);
            v86 = *(a2 + 4);
            v87 = *(a2 + 12);
            v88 = *(a2 + 96);
            v134 = 134286081;
            v135 = v81;
            v136 = 2050;
            v137 = v82;
            v138 = 2049;
            *v139 = v49;
            *&v139[8] = 2050;
            *v140 = v129;
            *&v140[8] = 2049;
            v141 = v39;
            v142 = 2050;
            v143 = v83;
            v144 = 2049;
            v145 = v84;
            v146 = 2050;
            v147 = v85;
            v148 = 2053;
            v149 = v86;
            v150 = 2053;
            v151 = v87;
            v152 = 1024;
            v153 = v88;
            v89 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v89);
            goto LABEL_111;
          }
        }

        else
        {
          if (qword_1025D4650 != -1)
          {
            sub_101AF5990();
          }

          v90 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            v91 = *(a2 + 536);
            v92 = *(a2 + 544);
            v93 = *a4;
            v94 = *(a2 + 520);
            v95 = *(a2 + 528);
            v96 = *(a2 + 4);
            v97 = *(a2 + 12);
            v98 = *(a2 + 96);
            *buf = 134285569;
            v155 = v91;
            v156 = 2050;
            v157 = v92;
            v158 = 2049;
            *v159 = v39;
            *&v159[8] = 2050;
            *v160 = v93;
            *&v160[8] = 2049;
            v161 = v94;
            v162 = 2050;
            v163 = v95;
            v164 = 2053;
            v165 = v96;
            v166 = 2053;
            v167 = v97;
            v168 = 1024;
            LODWORD(v169) = v98;
            _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "DEM,Alt(m),%{private}.2lf,AltUnc(m),%{public}.2lf,RawDemAlt(m),%{private}.2lf,undulation,%{public}.3lf,slope,%{private}.3lf,maxAbsSlope,%{public}.3lf,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,type,%d", buf, 0x58u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AF594C(buf);
            v99 = *(a2 + 536);
            v100 = *(a2 + 544);
            v101 = *a4;
            v102 = *(a2 + 520);
            v103 = *(a2 + 528);
            v104 = *(a2 + 4);
            v105 = *(a2 + 12);
            v106 = *(a2 + 96);
            v134 = 134285569;
            v135 = v99;
            v136 = 2050;
            v137 = v100;
            v138 = 2049;
            *v139 = v39;
            *&v139[8] = 2050;
            *v140 = v101;
            *&v140[8] = 2049;
            v141 = v102;
            v142 = 2050;
            v143 = v103;
            v144 = 2053;
            v145 = v104;
            v146 = 2053;
            v147 = v105;
            v148 = 1024;
            LODWORD(v149) = v106;
            v89 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDigitalElevationModel::getAltitude(GNSS::DaemonLocation &, CLDEMReliabilityIndication &, double &, const BOOL)", "%s\n", v89);
LABEL_111:
            if (v89 != buf)
            {
              free(v89);
            }
          }
        }
      }
    }
  }

LABEL_33:
  (*(*v11 + 24))(v11);
  return v33;
}

void sub_10029BE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10029BE74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  (*(*a2 + 112))(a2, **(a1 + 8), *(a1 + 16), *(v3 + 115), **(a1 + 24));
  v4 = *(v3 + 104);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = *v5;
    v7 = (*v5)[1];
    v25[0] = **v5;
    v25[1] = v7;
    v8 = v6[5];
    v10 = v6[2];
    v9 = v6[3];
    v25[4] = v6[4];
    v25[5] = v8;
    v25[2] = v10;
    v25[3] = v9;
    v12 = v6[7];
    v11 = v6[8];
    v13 = v6[6];
    *&v26[12] = *(v6 + 140);
    v25[7] = v12;
    *v26 = v11;
    v25[6] = v13;
    memcpy(v27, v6 + 10, sizeof(v27));
    v28 = *(v6 + 85);
    v14 = *(v6 + 86);
    v29 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v4 = *(v3 + 104);
      v15 = *(v6 + 696);
      v16 = *(v6 + 728);
      v31 = *(v6 + 712);
      v32 = v16;
      v30 = v15;
      v17 = *(v6 + 744);
      v18 = *(v6 + 760);
      v19 = *(v6 + 776);
      *(v35 + 9) = *(v6 + 785);
      v34 = v18;
      v35[0] = v19;
      v33 = v17;
      if (!v4)
      {
        sub_1000CF05C();
      }
    }

    else
    {
      v20 = *(v6 + 696);
      v21 = *(v6 + 728);
      v31 = *(v6 + 712);
      v32 = v21;
      v30 = v20;
      v22 = *(v6 + 744);
      v23 = *(v6 + 760);
      v24 = *(v6 + 776);
      *(v35 + 9) = *(v6 + 785);
      v34 = v23;
      v35[0] = v24;
      v33 = v22;
    }

    (*(*v4 + 48))(v4, v25);
    if (v29)
    {
      sub_100008080(v29);
    }
  }
}

void sub_10029C008(_Unwind_Exception *a1)
{
  if (STACK[0x2B0])
  {
    sub_100008080(STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void sub_10029C020(uint64_t a1, unsigned int a2, double *a3, double a4)
{
  if (a2 > 2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a3 + 67);
      v11 = *(a3 + 68);
      v12 = *(a3 + 63);
      *buf = 134219008;
      v35 = v10;
      v36 = 2048;
      v37 = v11;
      v38 = 1024;
      v39 = a2;
      v40 = 2048;
      v41 = a4;
      v42 = 2048;
      v43 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#gpsd,DEM,feeding,alt,%.3f,unc,%.3f,reliability,%d,undulation,%.3lf,mach_cont,%.2f", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v18 = *(a3 + 67);
      v19 = *(a3 + 68);
      v20 = *(a3 + 63);
      v23 = 134219008;
      v24 = v18;
      v25 = 2048;
      *v26 = v19;
      *&v26[8] = 1024;
      v27 = a2;
      v28 = 2048;
      v29 = a4;
      v30 = 2048;
      v31 = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceDem(GNSS::ReliabilityIndication, const GNSS::DaemonLocation &, double, BOOL)", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    sub_1001324C4(&v23);
    if (!sub_100132484(0x10u))
    {
      __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
    }

    *&v26[6] = 16;
    v33 |= 0x104u;
    v13 = v32;
    if (!v32)
    {
      operator new();
    }

    v14 = (a3[63] * 1000000000.0);
    *(v32 + 36) |= 1u;
    *(v13 + 8) = v14;
    if (!v14)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#gpsd,#Warning DEM timestamp is zero", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017700B0(buf);
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectAssistanceDem(GNSS::ReliabilityIndication, const GNSS::DaemonLocation &, double, BOOL)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }

    v16 = *(v13 + 36);
    *(v13 + 16) = a3[67] + a4;
    v17 = *(a3 + 68);
    *(v13 + 36) = v16 | 6;
    *(v13 + 24) = v17;
    sub_10013256C(a1, &v23);
    sub_100133DCC(&v23);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      LODWORD(v35) = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#gpsd,DEM,reliability too low to inject,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1017776C8();
    }
  }
}

void sub_10029C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100133DCC(va);
  _Unwind_Resume(a1);
}

double sub_10029C4C0(uint64_t a1)
{
  *a1 = off_1024B8E98;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_10029C4EC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      result = v4 + 9;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  *(a1 + 32) = result;
  return result;
}

__n128 sub_10029C554(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *(a1 + 10024) = *a2;
  *(a1 + 10040) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 10088) = *(a2 + 64);
  *(a1 + 10104) = v7;
  *(a1 + 10056) = v5;
  *(a1 + 10072) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 10164) = *(a2 + 140);
  *(a1 + 10136) = v9;
  *(a1 + 10152) = v10;
  *(a1 + 10120) = v8;
  memcpy((a1 + 10184), (a2 + 160), 0x201uLL);
  v11 = *(a2 + 680);
  v12 = *(a2 + 688);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 10704) = v11;
  v13 = *(a1 + 10712);
  *(a1 + 10712) = v12;
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = *(a2 + 696);
  v15 = *(a2 + 712);
  *(a1 + 10752) = *(a2 + 728);
  *(a1 + 10736) = v15;
  *(a1 + 10720) = v14;
  result = *(a2 + 744);
  v17 = *(a2 + 760);
  v18 = *(a2 + 776);
  *(a1 + 10809) = *(a2 + 785);
  *(a1 + 10800) = v18;
  *(a1 + 10784) = v17;
  *(a1 + 10768) = result;
  return result;
}