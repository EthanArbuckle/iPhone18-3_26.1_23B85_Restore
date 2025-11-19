void sub_1000AF8C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000AF8CC(uint64_t a1, double *a2, int8x16_t a3, double a4, int8x16_t a5)
{
  v6 = *a3.i64;
  if (*(a1 + 456) == 1 && (*(a1 + 472) & 1) != 0)
  {
    goto LABEL_5;
  }

  v24 = 0;
  v25 = 0;
  if (sub_100208760((a1 + 512), &v25, &v24, *(a1 + 8) * 57.2957795, *(a1 + 408)))
  {
    v8 = v25;
    *(a1 + 448) = v24;
    *(a1 + 456) = 1;
    *(a1 + 464) = v8;
    *(a1 + 472) = 1;
LABEL_5:
    *a3.i64 = *(a1 + 8) + *a2 * v6 / *(a1 + 464);
    a5.i64[0] = 0x400921FB54442D18;
    v22 = a5;
    if (fabs(*a3.i64) > 3.14159265)
    {
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      v21 = *vbslq_s8(vnegq_f64(v9), a5, a3).i64;
      *a3.i64 = fmod(*a3.i64 + v21, 6.28318531) - v21;
    }

    if (*a3.i64 >= 1.57079633)
    {
      v10 = v22;
      *a3.i64 = *v22.i64 - *a3.i64;
    }

    else
    {
      v10 = v22;
      if (*a3.i64 < -1.57079633)
      {
        *a3.i64 = -3.14159265 - *a3.i64;
      }
    }

    *(a1 + 8) = a3.i64[0];
    v14 = *(a1 + 448);
    v15 = *(a1 + 16);
    v16 = a2[1];
    if (v14 <= 0.0)
    {
      *a3.i64 = v15 + v16 * v6;
    }

    else
    {
      *a3.i64 = v15 + v16 * v6 / v14;
    }

    if (fabs(*a3.i64) > *v10.i64)
    {
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v23 = *vbslq_s8(vnegq_f64(v17), v10, a3).i64;
      *a3.i64 = fmod(*a3.i64 + v23, 6.28318531) - v23;
    }

    *(a1 + 16) = a3.i64[0];
    v18 = *(a1 + 32);
    *(a1 + 24) = *(a1 + 24) + a2[2] * v6;
    *(a1 + 32) = v18 + a2[3] * v6;
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_101912E6C();
  }

  v11 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 596);
    *buf = 67240192;
    v29 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,updateStateVector calc_dNdE failed", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101912E28(buf);
    v19 = *(a1 + 596);
    v26 = 67240192;
    v27 = v19;
    v20 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateStateVector(const double, const std::array<double, 4> &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  return 0;
}

void sub_1000AFBC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

double sub_1000AFBD0(uint64_t a1, float64x2_t *a2, uint64_t a3, double a4)
{
  v5 = 0;
  v6 = (a1 + 168);
  v7 = *(a1 + 248);
  v40 = *(a1 + 232);
  v41 = v7;
  v8 = *(a1 + 280);
  v42 = *(a1 + 264);
  v43 = v8;
  v9 = *(a1 + 184);
  v36 = *(a1 + 168);
  v37 = v9;
  v10 = *(a1 + 216);
  v38 = *(a1 + 200);
  v39 = v10;
  memset(v31, 0, sizeof(v31));
  v11 = (a1 + 168 + 32 * a3);
  v12 = v11 + 3;
  v13 = v11 + 2;
  v14 = vld1q_dup_f64(v11++);
  v15 = vld1q_dup_f64(v11);
  v16 = vld1q_dup_f64(v13);
  v17 = vld1q_dup_f64(v12);
  do
  {
    v18 = *a2++;
    v19 = vmulq_n_f64(v18, a4);
    v44.val[0] = vmulq_f64(v19, v14);
    v44.val[1] = vmulq_f64(v19, v15);
    v44.val[2] = vmulq_f64(v19, v16);
    v44.val[3] = vmulq_f64(v19, v17);
    v20 = &v31[v5];
    vst4q_f64(v20, v44);
    v5 += 4;
  }

  while (v5 != 8);
  for (i = 0; i != 128; i += 16)
  {
    *&v6[i / 8] = vsubq_f64(*&v6[i / 8], v31[i / 0x10]);
  }

  if (*v6 <= 0.0 || *(a1 + 208) <= 0.0 || *(a1 + 248) <= 0.0 || (result = *(a1 + 288), result <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v23 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 596);
      *buf = 67240192;
      v35 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,error covariance matrix diagonal element < 0", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101912E28(buf);
      v29 = *(a1 + 596);
      v32 = 67240192;
      v33 = v29;
      v30 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateErrorCovMat(const std::array<double, 4> &, std::size_t, const double)", "%s\n", v30);
      if (v30 != buf)
      {
        free(v30);
      }
    }

    v25 = v41;
    *(v6 + 4) = v40;
    *(v6 + 5) = v25;
    v26 = v43;
    *(v6 + 6) = v42;
    *(v6 + 7) = v26;
    v27 = v37;
    *v6 = v36;
    *(v6 + 1) = v27;
    result = *&v38;
    v28 = v39;
    *(v6 + 2) = v38;
    *(v6 + 3) = v28;
  }

  return result;
}

void sub_1000AFE60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_1000AFE74(void *a1, double *__dst, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  v8 = __dst;
  if (__dst != a4)
  {
    while (*&a5 - *v8 <= *(a6 + 88))
    {
      v8 += 41;
      if ((v8 - *a1) == 5248)
      {
        v11 = a1[1];
        ++a1;
        v8 = v11;
      }

      if (v8 == a4)
      {
        v8 = a4;
        break;
      }
    }
  }

  if (v8 != a4)
  {
    v13 = v8;
    v14 = a1;
    while (1)
    {
      v13 += 41;
      if ((v13 - *v14) == 5248)
      {
        v15 = v14[1];
        ++v14;
        v13 = v15;
      }

      if (v13 == a4)
      {
        break;
      }

      if (*&a5 - *v13 <= *(a6 + 88))
      {
        memcpy(v8, v13, 0x148uLL);
        v8 += 41;
        if ((v8 - *a1) == 5248)
        {
          v16 = a1[1];
          ++a1;
          v8 = v16;
        }
      }
    }
  }

  return a1;
}

void sub_1000AFF84(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_10023A174();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "WifiZMetrics, Attempt to publish z axis metric", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10174A6DC();
  }

  if (*(a1 + 176) == 1 && *(a1 + 192) == 1 && (*(a1 + 256) & 1) != 0)
  {
    if ((*(a1 + 280) & 1) != 0 || *(a1 + 160) != 1 || (v3 = *(a1 + 184), v4 = v3 - *(a1 + 136), v4 > 600.0) || v4 < 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, no good map match recently completed, return", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174AA60();
      }
    }

    else
    {
      if ((*(a1 + 272) & 1) == 0)
      {
        goto LABEL_70;
      }

      if (vabdd_f64(*(a1 + 264), v3) > 3.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v5 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, device pressure based altitude and wifi z fix not close enough in time, return.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10174A984();
        }

        return;
      }

      v8 = *(a1 + 248) - *(a1 + 144);
      if (v8 != 0.0 && v8 >= -450.0 && v8 <= 8850.0)
      {
        v9 = -1.0;
        if (*(a1 + 240) == 1 && *(a1 + 224) == 1 && (v10 = vabdd_f64(*(a1 + 232), v3), v10 <= 60.0))
        {
          v11 = *(a1 + 216);
          v9 = v10;
        }

        else
        {
          v11 = 0xBFF0000000000000;
        }

        v12 = *(a1 + 152);
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v13 = v8 + v12;
        v14 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          if ((*(a1 + 176) & 1) == 0 || (*(a1 + 208) & 1) == 0)
          {
            goto LABEL_70;
          }

          v15 = *(a1 + 168);
          v16 = *(a1 + 200);
          *buf = 134350336;
          v20 = v15;
          v21 = 2050;
          v22 = v13;
          v23 = 2050;
          v24 = v8;
          v25 = 2050;
          v26 = v16;
          v27 = 2050;
          v28 = v11;
          v29 = 2050;
          v30 = v9;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "WifiZMetrics, publish metric, LastWiFiZAlt_m,%{public}.3lf, groundTruthAltitudeEstimate_m,%{public}.3lf, altitudeChangeFromPressureDifference_m,%{public}.3lf,LastWiFiZAltUnc_m,%{public}.3lf,LastOutdoorProbability,%{public}.3lf,timeSinceOutdoorProb_s,%{public}.3lf", buf, 0x3Eu);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_49:
          AnalyticsSendEventLazy();
          if (*(a1 + 176) == 1)
          {
            *(a1 + 176) = 0;
          }

          if (*(a1 + 192) == 1)
          {
            *(a1 + 192) = 0;
          }

          if (*(a1 + 208) == 1)
          {
            *(a1 + 208) = 0;
          }

          if (*(a1 + 256) == 1)
          {
            *(a1 + 256) = 0;
          }

          return;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        if (*(a1 + 176) & 1) != 0 && (*(a1 + 208))
        {
          v18 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::WifiZaxisMetric::publishMetricToCoreAnalytics()", "%s\n", v18);
          if (v18 != buf)
          {
            free(v18);
          }

          goto LABEL_49;
        }

LABEL_70:
        sub_100173BA0();
      }

      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v17 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        v20 = v8;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, invalid alt change from pressure difference, %{public}.3lf, return", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174A894();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_100312410();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WifiZMetrics, publishMetricToCoreAnalytics, no good fix available, return", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174A7B8();
    }
  }
}

id sub_1000B056C(void *a1, int a2, void *__src, unint64_t a4)
{
  if (a4 >= 0xE8)
  {
    v8 = 232;
  }

  else
  {
    v8 = a4;
  }

  memcpy(__dst, __src, v8);
  if (a4 >= 0xE9)
  {
    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_1025024E0);
    }

    v9 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v44 = "N28CLMotionCoprocessorInterface16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      v45 = 2048;
      v46 = 232;
      v47 = 2048;
      v48 = a4;
      v49 = 1024;
      v50 = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "SIZE MISMATCH: %s=%lu vs sz=%zu notification=%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_1025024E0);
      }

      v35 = 136315906;
      v36 = "N28CLMotionCoprocessorInterface16NotificationDataE" & 0x7FFFFFFFFFFFFFFFLL;
      v37 = 2048;
      v38 = 232;
      v39 = 2048;
      v40 = a4;
      v41 = 1024;
      v42 = a2;
      v15 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionNotifier::SiloDispatcher<CLMotionCoprocessorInterface::NotificationData>::dispatchData(int, const void *, size_t) [T = CLMotionCoprocessorInterface::NotificationData]", "%s\n", v15);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[6];
  v13 = a1[4];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B08C4;
  v16[3] = &unk_102464C48;
  v16[4] = v12;
  v16[5] = v11;
  v29 = __dst[12];
  v30 = __dst[13];
  v25 = __dst[8];
  v26 = __dst[9];
  v28 = __dst[11];
  v27 = __dst[10];
  v21 = __dst[4];
  v22 = __dst[5];
  v24 = __dst[7];
  v23 = __dst[6];
  v17 = __dst[0];
  v18 = __dst[1];
  v20 = __dst[3];
  v19 = __dst[2];
  v31 = v34;
  v32 = v10;
  return [v13 async:v16];
}

uint64_t sub_1000B08C4(void *a1)
{
  result = (*(a1[4] + 16))();
  if (result)
  {
    v3 = a1[5];
    v4 = a1[35];

    return v3(a1 + 6, v4);
  }

  return result;
}

void *sub_1000B0920(void *result, double *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *a2 <= *(a6 + 88))
    {
      a2 += 2;
      if ((a2 - *result) == 4096)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 2;
      if ((v7 - *v8) == 4096)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *v7 <= *(a6 + 88))
      {
        *a2 = *v7;
        a2 += 2;
        if ((a2 - *result) == 4096)
        {
          v10 = result[1];
          ++result;
          a2 = v10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B09CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CLMotionActivity::init(a2);
  *a2 = sub_1000B0AD8(a1);
  v4 = sub_1000B0AD8((a1 + 24));
  v5 = *(a1 + 29);
  *(a2 + 88) = v4;
  *(a2 + 92) = v5;
  *(a2 + 80) = *(a1 + 16) * 0.000001;
  v6 = *(a1 + 4);
  v7 = v6 == 3;
  if (v6 == 3)
  {
    v6 = 2;
  }

  *(a2 + 48) = v7;
  *(a2 + 4) = v6;
  v8 = *(a1 + 6);
  *(a2 + 12) = *(a1 + 5);
  *(a2 + 16) = v8;
  v9 = *(a1 + 84);
  *(a2 + 20) = v9 >= 0.75;
  *(a2 + 24) = v9;
  *(a2 + 52) = *(a1 + 11);
  *(a2 + 96) = *(a2 + 96) & 0xE0 | *(a1 + 36) & 0x1F;
  if (*(a1 + 38) - 1 < 3)
  {
    v10 = (*(a1 + 38) - 1) + 1;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 64) = v10;
  *(a2 + 74) = *(a1 + 46);
  result = sub_1000B0AD8((a1 + 56));
  *(a2 + 120) = *(a1 + 72);
  *(a2 + 100) = *(a1 + 37);
  *(a2 + 104) = result;
  if (*(a1 + 80) - 1 < 3)
  {
    v12 = (*(a1 + 80) - 1) + 1;
  }

  else
  {
    v12 = 0;
  }

  *(a2 + 128) = v12;
  return result;
}

uint64_t sub_1000B0AD8(int *a1)
{
  v1 = *a1;
  if (*a1 <= 255)
  {
    if (v1 == 128)
    {
      v5 = 6;
    }

    else
    {
      v5 = 0;
    }

    if (v1 == 64)
    {
      v6 = 8;
    }

    else
    {
      v6 = v5;
    }

    if (v1 == 32)
    {
      v7 = 41;
    }

    else
    {
      v7 = 0;
    }

    if (v1 == 16)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v1 <= 63)
    {
      v6 = v8;
    }

    if (v1 == 12)
    {
      v9 = 7;
    }

    else
    {
      v9 = 0;
    }

    if (v1 == 4)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    if (v1 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    if (v1 == 1)
    {
      v11 = 1;
    }

    if (v1 <= 3)
    {
      v10 = v11;
    }

    v14 = __OFSUB__(v1, 15);
    v12 = v1 == 15;
    v13 = v1 - 15 < 0;
    goto LABEL_54;
  }

  if (v1 < 12288)
  {
    if (v1 == 0x2000)
    {
      v15 = 52;
    }

    else
    {
      v15 = 0;
    }

    if (v1 == 4096)
    {
      v6 = 5;
    }

    else
    {
      v6 = v15;
    }

    if (v1 == 512)
    {
      v16 = 11;
    }

    else
    {
      v16 = 0;
    }

    if (v1 == 256)
    {
      v10 = 10;
    }

    else
    {
      v10 = v16;
    }

    v14 = __OFSUB__(v1, 4095);
    v12 = v1 == 4095;
    v13 = v1 - 4095 < 0;
LABEL_54:
    if (v13 ^ v14 | v12)
    {
      return v10;
    }

    else
    {
      return v6;
    }
  }

  if (v1 < 196608)
  {
    if (v1 == 12288 || v1 == 0x4000)
    {
      return 56;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v1 == 0x200000)
    {
      v2 = 62;
    }

    else
    {
      v2 = 0;
    }

    if (v1 == 0x100000)
    {
      v3 = 61;
    }

    else
    {
      v3 = v2;
    }

    if (v1 == 196608)
    {
      return 41;
    }

    else
    {
      return v3;
    }
  }
}

double sub_1000B0BE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  sub_1000B09CC(a1 + 24, a2);
  *(a2 + 68) = *(a1 + 148);
  *(a2 + 72) = *(a1 + 152);
  v4 = *(a1 + 8);
  *(a2 + 40) = *a1;
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *(a2 + 112) = result;
  *(a2 + 32) = *(a1 + 144);
  return result;
}

void sub_1000B0C58(uint64_t a1, __int128 *a2)
{
  v3 = a2[7];
  v29 = a2[6];
  v30 = v3;
  v4 = a2[9];
  v31 = a2[8];
  v32 = v4;
  v5 = a2[3];
  v25 = a2[2];
  v26 = v5;
  v6 = a2[5];
  v27 = a2[4];
  v28 = v6;
  v7 = a2[1];
  v23 = *a2;
  v24 = v7;
  v8 = *(a1 + 280);
  if (v8)
  {
    (*(*v8 + 48))(v8, &v23);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = v9 + *(a1 + 48) - 1;
    v11 = *(a1 + 24);
    v12 = *(v11[v10 / 0x19] + 20 * (v10 % 0x19) + 1);
    if (v12 > *(&v23 + 1))
    {
      v13 = *(a1 + 32);
      *(a1 + 56) = 0;
      v14 = (v13 - v11) >> 3;
      if (v14 >= 3)
      {
        do
        {
          operator delete(*v11);
          v15 = *(a1 + 32);
          v11 = (*(a1 + 24) + 8);
          *(a1 + 24) = v11;
          v14 = (v15 - v11) >> 3;
        }

        while (v14 > 2);
      }

      if (v14 == 1)
      {
        v16 = 12;
      }

      else
      {
        if (v14 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101A89534();
          }

          v17 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v34 = *(&v23 + 1);
            v35 = 2048;
            v36 = v12;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A8955C();
          }

          goto LABEL_18;
        }

        v16 = 25;
      }

      *(a1 + 48) = v16;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_1000B1980((a1 + 16), &v23);
  v18 = v30;
  *(a1 + 192) = v29;
  *(a1 + 208) = v18;
  v19 = v32;
  *(a1 + 224) = v31;
  *(a1 + 240) = v19;
  v20 = v26;
  *(a1 + 128) = v25;
  *(a1 + 144) = v20;
  v21 = v28;
  *(a1 + 160) = v27;
  *(a1 + 176) = v21;
  v22 = v24;
  *(a1 + 96) = v23;
  *(a1 + 112) = v22;
}

void sub_1000B0EAC(uint64_t a1, double a2)
{
  v4 = (*(**(a1 + 24) + 96))(*(a1 + 24));
  v5.n128_f64[0] = a2;
  sub_1000B2F7C(v4, v5);
  v6 = (*(**(a1 + 24) + 104))(*(a1 + 24));
  v7.n128_f64[0] = a2;
  sub_1000B4344(v6, v7);
  v8 = (*(**(a1 + 24) + 112))(*(a1 + 24));
  v9.n128_f64[0] = a2;
  sub_1000B10BC(v8, v9);
  v10 = (*(**(a1 + 24) + 128))(*(a1 + 24));
  v11.n128_f64[0] = a2;
  sub_1000BD89C(v10, v11);
  v12 = (*(**(a1 + 24) + 120))(*(a1 + 24));
  v13.n128_f64[0] = a2;
  sub_1000B3CE8(v12, v13);
  v14 = (*(**(a1 + 24) + 136))(*(a1 + 24));
  v15.n128_f64[0] = a2;
  sub_1000BDB68(v14, v15);
  v16 = (*(**(a1 + 24) + 144))(*(a1 + 24));
  v17.n128_f64[0] = a2;
  sub_1000BE25C(v16, v17);
  v18 = (*(**(a1 + 24) + 160))(*(a1 + 24));
  v19.n128_f64[0] = a2;
  sub_1000B5844(v18, v19);
  v20 = (*(**(a1 + 24) + 152))(*(a1 + 24));
  v21.n128_f64[0] = a2;
  sub_1000BC28C(v20, v21);
  v22 = (*(**(a1 + 24) + 168))(*(a1 + 24));
  v23.n128_f64[0] = a2;
  sub_1000B5C90(v22, v23);
  *(a1 + 32) = a2;
}

void sub_1000B10BC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 8;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_1000C042C(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA0B8();
        }

        return;
      }

      v10 = 16;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 4));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 4));
    }

    else
    {
      v15 = (*v14 + 328 * (*(a1 + 48) & 0xFLL));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 4));
      v19 = (*v18 + 328 * (v17 & 0xF));
    }

    v23 = sub_1000AFE74(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 4));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 328 * (v24 & 0xF));
    sub_1000A28B0((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B13B0(uint64_t a1, uint64_t a2)
{
  sub_1000B0C58(a1 + 24, a2);
  if (qword_1025D4760 != -1)
  {
    sub_101A89240();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    v7 = 134218240;
    v8 = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Received motion state, startTime, %f, activityType, %u", &v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A89424(a2);
  }

  sub_1000B17F4(a1, *(a2 + 8));
}

uint64_t sub_1000B14B8(void *a1)
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

void sub_1000B14E0(uint64_t *a1, uint64_t a2)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_1000B0BE8(a2, v27);
  if (qword_1025D4760 != -1)
  {
    sub_1019CA8C0();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1;
    if (*(a1 + 23) < 0)
    {
      v5 = *a1;
    }

    v6 = *(a2 + 8);
    v7 = *(a2 + 144);
    v8 = *(a2 + 112);
    v9 = *(a2 + 116);
    v10 = *(a2 + 132);
    v11 = *(a2 + 136);
    v12 = *(a2 + 128);
    v13 = *(a2 + 124);
    v14 = *(a2 + 120);
    v15 = *(a2 + 140);
    *buf = 136317954;
    v54 = v5;
    v55 = 2048;
    v56 = v6;
    v57 = 1024;
    v58 = v27[0];
    v59 = 1024;
    v60 = v7;
    v61 = 2048;
    v62 = v8;
    v63 = 2048;
    v64 = v9;
    v65 = 2048;
    v66 = v10;
    v67 = 2048;
    v68 = v11;
    v69 = 2048;
    v70 = v12;
    v71 = 2048;
    v72 = v13;
    v73 = 2048;
    v74 = v14;
    v75 = 1024;
    v76 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Activity,context,%s,startTime,%f,type,%u,standing,%d,angeX,%f,vectorMag,%f,strokeAmp,%f,strokePwr,%f,strokeFreq,%f,machineFreq,%f,pushVectorMag,%f,epochType,%d", buf, 0x6Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_1019CA8C0();
    }

    if (*(a1 + 23) < 0)
    {
      a1 = *a1;
    }

    v16 = *(a2 + 8);
    v17 = *(a2 + 144);
    v18 = *(a2 + 112);
    v19 = *(a2 + 116);
    v20 = *(a2 + 132);
    v21 = *(a2 + 136);
    v22 = *(a2 + 128);
    v23 = *(a2 + 124);
    v24 = *(a2 + 120);
    v25 = *(a2 + 140);
    v29 = 136317954;
    v30 = a1;
    v31 = 2048;
    v32 = v16;
    v33 = 1024;
    v34 = v27[0];
    v35 = 1024;
    v36 = v17;
    v37 = 2048;
    v38 = v18;
    v39 = 2048;
    v40 = v19;
    v41 = 2048;
    v42 = v20;
    v43 = 2048;
    v44 = v21;
    v45 = 2048;
    v46 = v22;
    v47 = 2048;
    v48 = v23;
    v49 = 2048;
    v50 = v24;
    v51 = 1024;
    v52 = v25;
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorInputs::logActivity(const CLOutdoorActivity &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }
  }
}

void sub_1000B17F4(uint64_t a1, double a2)
{
  v11 = a2;
  sub_1000A2B60((a1 + 8968), &v11);
  if ((*a1 & 1) == 0 && *(a1 + 9008))
  {
    do
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(*(*(a1 + 8976) + ((*(a1 + 9000) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 9000) & 0x1FFLL));
      *(a1 + 9000) = vaddq_s64(*(a1 + 9000), xmmword_101C66230);
      sub_1000A2BE8(a1 + 8968, 1);
      sub_1000B0EAC(a1 + 2512, v4);
      sub_1000B9B5C(a1 + 2552, v10, v4);
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 16))(v5, v10);
      }

      sub_1000C61E8(a1 + 6392, v10, &__p);
      v6 = __p;
      if (*(a1 + 6376))
      {
        v7 = v9;
        if (__p != v9)
        {
          do
          {
            sub_100ED4008(*(a1 + 6376), v6);
            v6 += 2;
          }

          while (v6 != v7);
          v6 = __p;
        }
      }

      if (v6)
      {
        v9 = v6;
        operator delete(v6);
      }

      objc_autoreleasePoolPop(v3);
    }

    while (*(a1 + 9008));
  }
}

void sub_1000B1964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000B1980(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 25 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10028C478(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x19)) + 160 * (v7 % 0x19);
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
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 144);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 144) = v15;
  *(v8 + 96) = result;
  *(v8 + 112) = v14;
  ++a1[5];
  return result;
}

void sub_1000B1A58(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];

  sub_1000B1AB0(a2, a1);
}

void sub_1000B1AB0(uint64_t a1, uint64_t a2)
{
  *buf = 5;
  if (sub_10000608C(a1, buf, 1))
  {
    v4 = (*(**(a1 + 6680) + 40))(*(a1 + 6680));
    sub_10069B530(v4);
  }

  sub_1000B1EF4(a1 + 6648, a2);
  v5 = *(a1 + 8736);
  if (v5)
  {
    sub_10071E75C(v5);
  }

  v6 = *(a1 + 10160);
  if (v6)
  {
    sub_100FD68FC(v6);
  }

  if (*(a1 + 9856) > *(a2 + 8))
  {
    (*(**(a1 + 8264) + 24))(*(a1 + 8264));
  }

  if (!*(a1 + 8256))
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101901508();
    }

    v7 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "IndoorOutdoor detector running without turn detector.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101901530();
    }
  }

  (*(**(a1 + 8264) + 16))(*(a1 + 8264), *(a2 + 8));
  *(a1 + 9856) = *(a2 + 8);
  *&v14 = 0;
  *(&v14 + 1) = 7;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_1000BC56C(a1 + 3760, &v14, Current))
  {
    v9 = sub_100023ED4(0);
    buf[0] = sub_100EA038C(&v14 + 2);
    *&buf[4] = HIDWORD(v14);
    v10 = CFAbsoluteTimeGetCurrent();
    v16 = sub_100F9AEB4((a1 + 6680), v10, 23.0);
    (*(*(v9 + 96) + 40))(v9 + 96, buf);
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1000B0BE8(a2, v12);
  if (*(a1 + 592) == 1)
  {
    v12[0] = 18200;
  }

  v11 = *(a1 + 376);
  sub_10001A3E8();
  if (sub_10001CF3C())
  {
    if (v11)
    {
      v12[0] = CLMotionActivity::remapActivityTypeForWheelchairUsers();
    }
  }

  sub_1000C1934(a1 + 136, v12);
}

uint64_t sub_1000B1EF4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 712);
  if (v4 != 0x7FFFFFFF && *(a1 + 1372) == 1)
  {
    v5 = *(a1 + 716) + 1;
    *(a1 + 716) = v5;
    if (v5 >= v4)
    {
      if ((*(*a1 + 16))(a1))
      {
        sub_1000CE87C(a1 + 8, 13, buf);
      }
    }
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  sub_1000B0BE8(a2, v23);
  sub_1000B2824(a1, v23);
  if (*(&v26 + 1) != *(a1 + 688))
  {
    *(a1 + 688) = *(&v26 + 1);
    v6 = sub_100D30940(a1, a2);
    if (*(a1 + 688))
    {
      v7 = v6;
      v8 = v26;
      v9 = sub_1000C0CAC([CMWorkout CMWorkoutTypeFromCLMotionActivityType:DWORD2(v25)]);
      v22[0] = v8;
      v22[1] = v24;
      v22[2] = v9;
      v22[3] = v7;
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      v10 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349568;
        *&buf[4] = v9;
        *&buf[12] = 2050;
        *&buf[14] = v8;
        *&buf[22] = 1026;
        LODWORD(v35) = v7;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "CLAS,new AP escalation detected for workout type,%{public}ld,startTime,%{public}f,is early detection,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101A681F8();
        }

        v28 = 134349568;
        v29 = v9;
        v30 = 2050;
        v31 = v8;
        v32 = 1026;
        v33 = v7;
        v21 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::feedMotionStateUpdate(const CLWorkoutPredictorActivity &)", "%s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }

      if ((*(*a1 + 16))(a1))
      {
        sub_1000CE87C(a1 + 8, 1, v22);
      }
    }
  }

  v11 = *(a1 + 488) + 1;
  *(a1 + 488) = v11;
  if (v11 >= 0x17)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_101A681F8();
    }

    v12 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 24);
      *buf = 67240448;
      *&buf[4] = v13;
      *&buf[8] = 1024;
      *&buf[10] = v23[0];
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Current state of Workout Predictor: %{public}d,motiontype,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A68ADC();
    }

    *(a1 + 488) = 0;
  }

  sub_1000B23B4((a1 + 32), a2);
  v14 = *(a2 + 8);
  if (*(a1 + 480) > v14)
  {
    v15 = *(a1 + 424);
    if (v15)
    {
      sub_101255E68(v15);
    }

    v16 = *(a1 + 472);
    if (v16)
    {
      sub_1007465F0(v16);
    }

    nullsub_34(a1 + 1352);
    v14 = *(a2 + 8);
  }

  *(a1 + 480) = v14;
  sub_1000BEE88((a1 + 1352));
  v17 = *(a1 + 424);
  if (v17)
  {
    sub_10125653C(v17);
  }

  v18 = *(a1 + 432);
  if (v18)
  {
    (*(*v18 + 16))(v18);
  }

  sub_1000BFEAC(*(a1 + 1416), (a1 + 32));
  v19 = *(a1 + 472);
  if (v19)
  {
    sub_100746834(v19);
  }

  if (sub_1000C0B18(*(a1 + 1416), a1 + 1376))
  {
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    *&buf[8] = 0u;
    *buf = *(a1 + 1376);
    sub_100746770(a1 + 1432, 7);
  }

  return sub_1000C0BC0(a1);
}

void sub_1000B23B4(double *a1, uint64_t a2)
{
  v3 = a1[37];
  v4 = *(a2 + 8);
  sub_1000B0C58((a1 + 1), a2);
  v5.n128_u64[0] = v4;
  sub_1000B2F7C((a1 + 1), v5);
  v6 = (*(**a1 + 104))();
  v7.n128_u64[0] = v4;
  sub_1000B32B0(v6, v7);
  v8 = (*(**a1 + 112))();
  v9.n128_u64[0] = v4;
  sub_1000B3A10(v8, v9);
  v10 = (*(**a1 + 120))();
  v11.n128_u64[0] = v4;
  sub_1000B3CE8(v10, v11);
  v12 = (*(**a1 + 128))();
  v13.n128_u64[0] = v4;
  sub_1000B4024(v12, v13);
  v14 = (*(**a1 + 136))();
  v15.n128_u64[0] = v4;
  sub_1000B10BC(v14, v15);
  v16 = (*(**a1 + 144))();
  v17.n128_u64[0] = v4;
  sub_1000B488C(v16, v17);
  v18 = (*(**a1 + 152))();
  v19.n128_u64[0] = v4;
  sub_1000B4BB8(v18, v19);
  v20 = (*(**a1 + 160))();
  v21.n128_u64[0] = v4;
  sub_1000BDB68(v20, v21);
  v22 = (*(**a1 + 168))();
  v23.n128_u64[0] = v4;
  sub_1000BDF40(v22, v23);
  v24 = (*(**a1 + 176))();
  v25.n128_u64[0] = v4;
  sub_1000B4F8C(v24, v25);
  v26 = (*(**a1 + 184))();
  v27.n128_u64[0] = v4;
  sub_1000B5260(v26, v27);
  v28 = (*(**a1 + 192))();
  v29.n128_u64[0] = v4;
  sub_1000B5568(v28, v29);
  v30 = (*(**a1 + 200))();
  v31.n128_u64[0] = v4;
  sub_1000BE8A4(v30, v31);
  v32 = *&v4 <= v3 || a1[37] == -1.0;
  v33 = *&v4 - v3;
  if (v32)
  {
    v33 = 0.0;
  }

  a1[40] = v33;
  a1[37] = *&v4;
}

void sub_1000B268C(uint64_t a1)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_1000B0BE8(a1, v13);
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9F58();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 144);
    v5 = *(a1 + 112);
    v6 = *(a1 + 116);
    v7 = *(a1 + 132);
    v8 = *(a1 + 136);
    v9 = *(a1 + 128);
    v10 = *(a1 + 124);
    v11 = *(a1 + 120);
    v12 = *(a1 + 140);
    *buf = 134220544;
    v16 = v3;
    v17 = 1024;
    v18 = v13[0];
    v19 = 1024;
    v20 = v4;
    v21 = 2048;
    v22 = v5;
    v23 = 2048;
    v24 = v6;
    v25 = 2048;
    v26 = v7;
    v27 = 2048;
    v28 = v8;
    v29 = 2048;
    v30 = v9;
    v31 = 2048;
    v32 = v10;
    v33 = 2048;
    v34 = v11;
    v35 = 1024;
    v36 = v12;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Activity,%f,type,%u,standing,%d,angeX,%f,vectorMag,%f,strokeAmp,%f,strokePwr,%f,strokeFreq,%f,machineFreq,%f,pushVectorMag,%f,epochType,%d", buf, 0x64u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEAD38(a1, v13);
  }
}

void sub_1000B2824(uint64_t a1, int *a2)
{
  if (*(a1 + 520) != 1 || *(a1 + 24))
  {
    return;
  }

  v4 = sub_1000081AC();
  if ((*(a1 + 504) & 1) == 0 && (CLMotionActivity::isTypeWalking() & 1) == 0)
  {
    *(a1 + 496) = v4;
    *(a1 + 504) = 1;
    if (qword_1025D43F0 != -1)
    {
      sub_101A68264();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 504) & 1) == 0)
      {
        goto LABEL_63;
      }

      v9 = *(a1 + 496);
      v10 = *a2;
      *buf = 134218240;
      *v32 = v9;
      *&v32[8] = 1024;
      *&v32[10] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLAS,user switched out of walking state,%.1lf,type,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      if ((*(a1 + 504) & 1) == 0)
      {
        sub_100173BA0();
      }

      v15 = *(a1 + 496);
      v16 = *a2;
      v25 = 134218240;
      v26 = v15;
      v27 = 1024;
      LODWORD(v28) = v16;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::reactivateEarlyWorkoutDetectionIfNecessary(const CLMotionActivity &)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    goto LABEL_22;
  }

  if (CLMotionActivity::isTypeWalking())
  {
    if (*(a1 + 504) != 1)
    {
LABEL_14:
      if (*(a1 + 504) == 1)
      {
        *(a1 + 504) = 0;
      }

      goto LABEL_22;
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101A68264();
    }

    v5 = qword_1025D43F8;
    if (!os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_13:
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101A681F8();
        }

        if ((*(a1 + 504) & 1) == 0)
        {
          sub_100173BA0();
        }

        v20 = *(a1 + 496);
        v21 = *a2;
        v25 = 134218240;
        v26 = v20;
        v27 = 1024;
        LODWORD(v28) = v21;
        v22 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::reactivateEarlyWorkoutDetectionIfNecessary(const CLMotionActivity &)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      goto LABEL_14;
    }

    if (*(a1 + 504))
    {
      v6 = *(a1 + 496);
      v7 = *a2;
      *buf = 134218240;
      *v32 = v6;
      *&v32[8] = 1024;
      *&v32[10] = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLAS,user switched back into walking state,%.1lf,type,%d", buf, 0x12u);
      goto LABEL_13;
    }

LABEL_63:
    sub_100173BA0();
  }

LABEL_22:
  v23 = 0x4088600000000000;
  v24 = 0x405E000000000000;
  if ((atomic_load_explicit(&qword_10265E3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265E3D0))
  {
    sub_10183A3AC(buf, "kMaxTimeSinceLastWalkingStateBeforeResetEarlyWorkoutDetectionS", &v24, 0);
    qword_10265E3C8 = *&v32[4];
    __cxa_guard_release(&qword_10265E3D0);
  }

  if ((atomic_load_explicit(&qword_10265E3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265E3E0))
  {
    sub_10183A3AC(buf, "kMaxTimeSinceEscalationBeforeResetEarlyWorkoutDetectionS", &v23, 0);
    qword_10265E3D8 = *&v32[4];
    __cxa_guard_release(&qword_10265E3E0);
  }

  if (*(a1 + 504) == 1)
  {
    v11 = vabdd_f64(v4, *(a1 + 496));
    if (v11 >= *&qword_10265E3C8)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      v12 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *v32 = v11;
        *&v32[8] = 2048;
        *&v32[10] = qword_10265E3C8;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLAS,enable early workout detection due to non-walking timeout,timeSinceLastWalkingStateS,%.1lf,maxTimeSinceLastWalkingStateBeforeResetEarlyWorkoutDetectionS,%.0lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A68BE4();
      }

      sub_10049CCE8(a1 + 1552, (a1 + 592), *(a1 + 512), *(a1 + 520), 0);
      sub_100D302C8(a1, 0);
      if (*(a1 + 504) == 1)
      {
        *(a1 + 504) = 0;
      }
    }
  }

  else
  {
    if ((*(a1 + 520) & 1) == 0)
    {
      sub_100173BA0();
    }

    if (v4 - *(a1 + 512) > *&qword_10265E3D8)
    {
      if (qword_1025D43F0 != -1)
      {
        sub_101A681F8();
      }

      v13 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
      {
        if ((*(a1 + 520) & 1) == 0)
        {
          sub_100173BA0();
        }

        v14 = *(a1 + 512);
        *buf = 134349568;
        *v32 = v14;
        *&v32[8] = 2050;
        *&v32[10] = v4;
        v33 = 2048;
        v34 = qword_10265E3D8;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLAS,enable early workout detection due to time out since first escalated,last update,%{public}.1lf,current time,%{public}.1lf,maxTimeInSecondsBeforeResetEarlyWorkoutDetection,%.0lf", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_101A681F8();
        }

        if ((*(a1 + 520) & 1) == 0)
        {
          sub_100173BA0();
        }

        v18 = *(a1 + 512);
        v25 = 134349568;
        v26 = v18;
        v27 = 2050;
        v28 = v4;
        v29 = 2048;
        v30 = qword_10265E3D8;
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutPredictor::reactivateEarlyWorkoutDetectionIfNecessary(const CLMotionActivity &)", "%s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }

      sub_10049CCE8(a1 + 1552, (a1 + 592), *(a1 + 512), *(a1 + 520), 0);
      sub_100D302C8(a1, 0);
    }
  }
}

void sub_1000B2F7C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 12;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 104) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3B02C(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019C9EC0();
        }

        return;
      }

      v10 = 25;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 104) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x19));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0x19));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x19)) + 160 * (v11 % 0x19);
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x19));
      v19 = *v18 + 160 * (v17 % 0x19);
    }

    v23 = sub_1000B387C(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x19));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 160 * (v24 % 0x19));
    sub_1000B4610((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 104) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B32B0(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  a2.n128_u64[0] = *(a1 + 320);
  *(a1 + 320) = v2;
  if (*(a1 + 264) == 1 && *(a1 + 328) < v2)
  {
    *(a1 + 264) = 0;
    v4 = *(*a1 + 24);

    v4(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v5 = *(a1 + 280);
    v6 = *(a1 + 288);
    *(a1 + 312) = 0;
    v7 = (v6 - v5) >> 3;
    if (v7 >= 3)
    {
      do
      {
        operator delete(*v5);
        v8 = *(a1 + 288);
        v5 = (*(a1 + 280) + 8);
        *(a1 + 280) = v5;
        v7 = (v8 - v5) >> 3;
      }

      while (v7 > 2);
    }

    if (v7 == 1)
    {
      v9 = 32;
    }

    else
    {
      if (v7 != 2)
      {
LABEL_17:
        *(a1 + 360) = 0xBFF0000000000000;
        if (*(a1 + 264) == 1)
        {
          sub_100F98AA4(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v19 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 320);
          v27 = 134218240;
          v28 = v2;
          v29 = 2048;
          v30 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v27, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC070();
        }

        return;
      }

      v9 = 64;
    }

    *(a1 + 304) = v9;
    goto LABEL_17;
  }

  if (*(a1 + 360) != -1.0)
  {
    v10 = *(a1 + 304);
    v11 = *(a1 + 280);
    v12 = *(a1 + 288);
    v13 = (v11 + 8 * (v10 >> 6));
    if (v12 == v11)
    {
      v14 = 0;
      v18 = 0;
      v15 = (a1 + 312);
      v17 = (v11 + 8 * ((*(a1 + 312) + v10) >> 6));
    }

    else
    {
      v14 = (*v13 + ((v10 & 0x3F) << 6));
      v15 = (a1 + 312);
      v16 = *(a1 + 312) + v10;
      v17 = (v11 + 8 * (v16 >> 6));
      v18 = (*v17 + ((v16 & 0x3F) << 6));
    }

    v22 = sub_1000B3584(v13, v14, v17, v18, *&v2, a1);
    v23 = *(a1 + 304) + *(a1 + 312);
    v24 = *(a1 + 280);
    v25 = (v24 + 8 * (v23 >> 6));
    v26 = *(a1 + 288) == v24 ? 0 : *v25 + ((v23 & 0x3F) << 6);
    sub_1000A2D90((a1 + 272), v22, v21, v25, v26);
    if (!*v15)
    {
      *(a1 + 360) = 0xBFF0000000000000;
    }
  }
}

void *sub_1000B3584(void *result, double *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - a2[1] <= *(a6 + 344))
    {
      a2 += 8;
      if ((a2 - *result) == 4096)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 8;
      if ((v7 - *v8) == 4096)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - v7[1] <= *(a6 + 344))
      {
        v10 = *v7;
        v11 = *(v7 + 1);
        v12 = *(v7 + 3);
        *(a2 + 2) = *(v7 + 2);
        *(a2 + 3) = v12;
        *a2 = v10;
        *(a2 + 1) = v11;
        a2 += 8;
        if ((a2 - *result) == 4096)
        {
          v13 = result[1];
          ++result;
          a2 = v13;
        }
      }
    }
  }

  return result;
}

void *sub_1000B3638(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
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
      sub_10029660C(v22, v23, v20, v21, v24, v25, &v38);
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
      sub_100115040(v14, v15, v18, v19, &v38);
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

void *sub_1000B387C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *(a2 + 8) <= *(a6 + 88))
    {
      a2 += 160;
      if (a2 - *result == 4000)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 160;
      if (v7 - *v8 == 4000)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *(v7 + 8) <= *(a6 + 88))
      {
        v10 = *(v7 + 16);
        *a2 = *v7;
        *(a2 + 16) = v10;
        v11 = *(v7 + 32);
        v12 = *(v7 + 48);
        v13 = *(v7 + 80);
        *(a2 + 64) = *(v7 + 64);
        *(a2 + 80) = v13;
        *(a2 + 32) = v11;
        *(a2 + 48) = v12;
        v14 = *(v7 + 96);
        v15 = *(v7 + 112);
        v16 = *(v7 + 144);
        *(a2 + 128) = *(v7 + 128);
        *(a2 + 144) = v16;
        *(a2 + 96) = v14;
        *(a2 + 112) = v15;
        a2 += 160;
        if (a2 - *result == 4000)
        {
          v17 = result[1];
          ++result;
          a2 = v17;
        }
      }
    }
  }

  return result;
}

void *sub_1000B394C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 5);
    if (v3 < 1)
    {
      v5 = 24 - v3;
      v6 = &v2[-(v5 / 0x19)];
      *result = v6;
      v4 = *v6 + 160 * (25 * (v5 / 0x19) - v5) + 3840;
    }

    else
    {
      *result = &v2[v3 / 0x19];
      v4 = v2[v3 / 0x19] + 160 * (v3 % 0x19);
    }

    result[1] = v4;
  }

  return result;
}

void sub_1000B3A10(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 32;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 136) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100F98C20(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC16C();
        }

        return;
      }

      v10 = 64;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 136) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 6));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 6));
    }

    else
    {
      v15 = (*v14 + ((v11 & 0x3F) << 6));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 6));
      v19 = (*v18 + ((v17 & 0x3F) << 6));
    }

    v23 = sub_100F9DA54(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 6));
    v27 = *(a1 + 32) == v25 ? 0 : *v26 + ((v24 & 0x3F) << 6);
    sub_1000A2D90((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 136) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B3CE8(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 10;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_1006AE61C(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA2B0();
        }

        return;
      }

      v10 = 21;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x15));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0x15));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x15)) + 192 * (v11 % 0x15));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x15));
      v19 = (*v18 + 192 * (v17 % 0x15));
    }

    v23 = sub_10025BB1C(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x15));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 192 * (v24 % 0x15));
    sub_10009CB8C((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B4024(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 11;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 104) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100F98DF4(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC268();
        }

        return;
      }

      v10 = 22;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 104) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x16));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + ((2 * (((*(a1 + 56) + v11) * 0x2E8BA2E8BA2E8BA3uLL) >> 64)) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x16)) + 184 * (v11 % 0x16));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x16));
      v19 = (*v18 + 184 * (v17 % 0x16));
    }

    v23 = sub_100F9DB08(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x16));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 184 * (v24 % 0x16));
    sub_1009BA3B0((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 104) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B4344(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3B27C(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019C9FBC();
        }

        return;
      }

      v10 = 256;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 8));
    }

    else
    {
      v15 = (a1 + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(a1 + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((a1 + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

unint64_t sub_1000B4610(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 25 * (a4 - a2) - 0x3333333333333333 * (&a5[-*a4] >> 5) + 0x3333333333333333 * (&a3[-*a2] >> 5);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x19));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[160 * (v7 % 0x19)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 25 * (a2 - v9) - 0x3333333333333333 * (&a3[-*a2] >> 5) + 0x3333333333333333 * ((v10 - *v9) >> 5);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x19);
  v24[0].n128_u64[1] = v10;
  sub_1000B394C(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000B394C(v24, v6);
      sub_100A3B0C8(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000B394C(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x19));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[160 * (v14 % 0x19)];
      }

      v24[0] = v12;
      sub_1000AAD88(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x19));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 160 * (v19 % 0x19);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_1000B394C(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_1000B488C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 28;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_10069B530(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC364();
        }

        return;
      }

      v10 = 56;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x38));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0x38));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x38)) + 72 * (v11 % 0x38);
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x38));
      v19 = *v18 + 72 * (v17 % 0x38);
    }

    v23 = sub_100A3B6BC(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x38));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 72 * (v24 % 0x38));
    sub_100A3B450((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B4BB8(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 51;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100F98F90(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC460();
        }

        return;
      }

      v10 = 102;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x66));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0x66));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0x66)) + 40 * (v11 % 0x66));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x66));
      v19 = (*v18 + 40 * (v17 % 0x66));
    }

    v23 = sub_100F9DBE8(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x66));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 40 * (v24 % 0x66));
    sub_1000C6E90((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

unint64_t sub_1000B4ECC(uint64_t a1, double a2)
{
  sub_1000BDE7C(a1, a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    v10 = 0;
    v11 = 0.0;
  }

  else
  {
    v5 = 0.0;
    v6 = -1;
    v7 = 0.0;
    do
    {
      v8 = *(v3 + 8);
      v9 = v8 - v7;
      v7 = v7 + ((v8 - v7) / (v6 + 2));
      v5 = v5 + (v9 * (v8 - v7));
      v3 += 16;
      ++v6;
    }

    while (v3 != v4);
    v10 = LODWORD(v7) << 32;
    if (v6)
    {
      v11 = v5 / v6;
    }

    else
    {
      v11 = 0.0;
    }
  }

  return v10 | COERCE_UNSIGNED_INT(sqrtf(v11));
}

void sub_1000B4F8C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_1006ACA0C(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC658();
        }

        return;
      }

      v10 = 256;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 8));
    }

    else
    {
      v15 = (a1 + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(a1 + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((a1 + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B5260(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 85;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 104) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_1006ACAA8(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC754();
        }

        return;
      }

      v10 = 170;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 104) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0xAA));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0xAA));
    }

    else
    {
      v15 = (*(v12 + 8 * (v11 / 0xAA)) + 24 * (v11 % 0xAA));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0xAA));
      v19 = (*v18 + 24 * (v17 % 0xAA));
    }

    v23 = sub_100F9DF2C(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0xAA));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 24 * (v24 % 0xAA));
    sub_1000CA088((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 104) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B5568(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100F991F4(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC850();
        }

        return;
      }

      v10 = 256;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 8));
    }

    else
    {
      v15 = (a1 + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(a1 + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((a1 + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000B5844(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v8 = (a1 + 56);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 48);
      v10 = &v6[v9 / 0x55];
      v11 = *v10;
      v12 = *v10 + 48 * (v9 % 0x55);
      v13 = v6[(*(a1 + 56) + v9) / 0x55] + 48 * ((*(a1 + 56) + v9) % 0x55);
      if (v12 != v13)
      {
        do
        {
          v14 = *(v12 + 24);
          if (v14)
          {
            *(v12 + 32) = v14;
            operator delete(v14);
            v11 = *v10;
          }

          v12 += 48;
          if (v12 - v11 == 4080)
          {
            v15 = v10[1];
            ++v10;
            v11 = v15;
            v12 = v15;
          }
        }

        while (v12 != v13);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }
    }

    *v8 = 0;
    v25 = v7 - v6;
    if (v25 >= 3)
    {
      do
      {
        operator delete(*v6);
        v26 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v25 = (v26 - v6) >> 3;
      }

      while (v25 > 2);
    }

    if (v25 == 1)
    {
      v27 = 42;
    }

    else
    {
      if (v25 != 2)
      {
LABEL_28:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3C4C8(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v28 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v29 = *v4;
          LODWORD(v36[0]) = 134218240;
          *(v36 + 4) = v2;
          WORD6(v36[0]) = 2048;
          *(v36 + 14) = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", v36, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA5CC();
        }

        return;
      }

      v27 = 85;
    }

    *(a1 + 48) = v27;
    goto LABEL_28;
  }

  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  v16 = (a1 + 96);
  if (*(a1 + 96) != -1.0)
  {
    v36[0] = *v16;
    *&v36[1] = *(a1 + 112);
    if (v36 != v16)
    {
      sub_10028F1A8(&v36[1] + 1, *(a1 + 120), *(a1 + 128), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 128) - *(a1 + 120)) >> 2));
    }

    v17 = *(a1 + 48);
    v18 = *(a1 + 24);
    v19 = (v18 + 8 * (v17 / 0x55));
    if (*(a1 + 32) == v18)
    {
      v20 = 0;
      v24 = 0;
      v21 = (a1 + 56);
      v23 = (v18 + 8 * ((*(a1 + 56) + v17) / 0x55));
    }

    else
    {
      v20 = (*(v18 + 8 * (v17 / 0x55)) + 48 * (v17 % 0x55));
      v21 = (a1 + 56);
      v22 = *(a1 + 56) + v17;
      v23 = (v18 + 8 * (v22 / 0x55));
      v24 = (*v23 + 48 * (v22 % 0x55));
    }

    v31 = sub_10030CBC4(v19, v20, v23, v24, *&v2, a1);
    v32 = *(a1 + 48) + *(a1 + 56);
    v33 = *(a1 + 24);
    v34 = (v33 + 8 * (v32 / 0x55));
    if (*(a1 + 32) == v33)
    {
      v35 = 0;
    }

    else
    {
      v35 = *v34 + 48 * (v32 % 0x55);
    }

    sub_10030CCD0((a1 + 16), v31, v30, v34, v35);
    if (!*v21)
    {
      *v16 = 0xBFF0000000000000;
    }
  }

  if (*(&v36[1] + 1))
  {
    *&v37 = *(&v36[1] + 1);
    operator delete(*(&v36[1] + 1));
  }
}

void sub_1000B5C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000B5C90(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    if (v7 == v6)
    {
      v8 = (a1 + 56);
      v7 = *(a1 + 24);
    }

    else
    {
      v8 = (a1 + 56);
      v9 = *(a1 + 48);
      v10 = &v6[v9 / 0x49];
      v11 = *v10;
      v12 = *v10 + 56 * (v9 % 0x49);
      v13 = v6[(*(a1 + 56) + v9) / 0x49] + 56 * ((*(a1 + 56) + v9) % 0x49);
      if (v12 != v13)
      {
        do
        {
          v14 = *(v12 + 16);
          if (v14)
          {
            *(v12 + 24) = v14;
            operator delete(v14);
            v11 = *v10;
          }

          v12 += 56;
          if (v12 - v11 == 4088)
          {
            v15 = v10[1];
            ++v10;
            v11 = v15;
            v12 = v15;
          }
        }

        while (v12 != v13);
        v6 = *(a1 + 24);
        v7 = *(a1 + 32);
      }
    }

    *v8 = 0;
    v30 = v7 - v6;
    if (v30 >= 3)
    {
      do
      {
        operator delete(*v6);
        v31 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v30 = (v31 - v6) >> 3;
      }

      while (v30 > 2);
    }

    if (v30 == 1)
    {
      v32 = 36;
    }

    else
    {
      if (v30 != 2)
      {
LABEL_28:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3C974(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v33 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v34 = *v4;
          *v41 = 134218240;
          *&v41[4] = v2;
          *&v41[12] = 2048;
          *&v41[14] = v34;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", v41, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA7C4();
        }

        return;
      }

      v32 = 73;
    }

    *(a1 + 48) = v32;
    goto LABEL_28;
  }

  *v41 = 0;
  *&v41[8] = 0x600000006;
  v42 = 0;
  v43 = 0;
  *&v41[16] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v44 = _Q0;
  v21 = (a1 + 96);
  if (*(a1 + 96) != -1.0)
  {
    *v41 = *(a1 + 96);
    *&v41[8] = *(a1 + 104);
    if (v41 != v21)
    {
      sub_100306558(&v41[16], *(a1 + 112), *(a1 + 120), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 120) - *(a1 + 112)) >> 3));
    }

    v44 = *(a1 + 136);
    v22 = *(a1 + 48);
    v23 = *(a1 + 24);
    v24 = (v23 + 8 * (v22 / 0x49));
    if (*(a1 + 32) == v23)
    {
      v25 = 0;
      v29 = 0;
      v26 = (a1 + 56);
      v28 = (v23 + (((((*(a1 + 56) + v22) * 0x70381C0E070381C1uLL) >> 64) >> 2) & 0x1FFFFFFFFFFFFFF8));
    }

    else
    {
      v25 = *(v23 + 8 * (v22 / 0x49)) + 56 * (v22 % 0x49);
      v26 = (a1 + 56);
      v27 = *(a1 + 56) + v22;
      v28 = (v23 + 8 * (v27 / 0x49));
      v29 = *v28 + 56 * (v27 % 0x49);
    }

    v36 = sub_100A3CD2C(v24, v25, v28, v29, *&v2, a1);
    v37 = *(a1 + 48) + *(a1 + 56);
    v38 = *(a1 + 24);
    v39 = (v38 + 8 * (v37 / 0x49));
    if (*(a1 + 32) == v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = *v39 + 56 * (v37 % 0x49);
    }

    sub_100A3CA10((a1 + 16), v36, v35, v39, v40);
    if (!*v26)
    {
      *v21 = 0xBFF0000000000000;
    }
  }

  if (*&v41[16])
  {
    v42 = *&v41[16];
    operator delete(*&v41[16]);
  }
}

void sub_1000B60C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000B60F4(void *a1, double a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v4 = (a1 + 3);
  if (v5 != v6)
  {
LABEL_2:
    v8 = *v5;
    v7 = *(v5 + 8);
    while (v8 != v7)
    {
      if (vabdd_f64(a2, *v8) <= 150.0)
      {
        v5 += 80;
        if (v5 != v6)
        {
          goto LABEL_2;
        }

        v13 = v6;
        goto LABEL_28;
      }

      v9 = v7 - (v8 + 1);
      if (v7 != v8 + 1)
      {
        memmove(v8, v8 + 1, v7 - (v8 + 1));
      }

      v7 = (v8 + v9);
      *(v5 + 8) = v8 + v9;
      v11 = *(v5 + 32);
      v10 = *(v5 + 40);
      v12 = v10 - (v11 + 4);
      if (v10 != v11 + 4)
      {
        memmove(*(v5 + 32), (v11 + 4), v10 - (v11 + 4));
        v7 = *(v5 + 8);
      }

      *(v5 + 40) = v11 + v12;
      v8 = *v5;
    }
  }

  v14 = v5 + 80;
  if (v5 == v6 || v14 == v6)
  {
    v13 = v5;
  }

  else
  {
    v13 = v5;
    do
    {
      v16 = v5;
      v5 = v14;
      v18 = *(v16 + 80);
      v17 = *(v16 + 88);
      while (v18 != v17)
      {
        if (vabdd_f64(a2, *v18) <= 150.0)
        {
          sub_10007057C(v13, v5);
          *(v13 + 24) = *(v16 + 104);
          sub_10007057C(v13 + 32, (v16 + 112));
          v23 = *(v16 + 136);
          *(v13 + 72) = *(v16 + 152);
          *(v13 + 56) = v23;
          v13 += 80;
          break;
        }

        v19 = v17 - (v18 + 1);
        if (v17 != v18 + 1)
        {
          memmove(v18, v18 + 1, v17 - (v18 + 1));
        }

        v17 = (v18 + v19);
        *(v16 + 88) = v18 + v19;
        v21 = *(v16 + 112);
        v20 = *(v16 + 120);
        v22 = v20 - (v21 + 4);
        if (v20 != v21 + 4)
        {
          memmove(*(v16 + 112), (v21 + 4), v20 - (v21 + 4));
          v17 = *(v16 + 88);
        }

        *(v16 + 120) = v21 + v22;
        v18 = *v5;
      }

      v14 = v5 + 80;
    }

    while (v5 + 80 != v6);
  }

LABEL_28:
  result = sub_1000B63E0(v4, v13, a1[4]);
  v26 = a1[6];
  v25 = a1[7];
  if (v26 != v25)
  {
    while (vabdd_f64(a2, *v26) <= 150.0)
    {
      if (++v26 == v25)
      {
        goto LABEL_40;
      }
    }

    if (v26 != v25)
    {
      for (i = v26 + 1; i != v25; ++i)
      {
        if (vabdd_f64(a2, *i) <= 150.0)
        {
          *v26++ = *i;
        }
      }
    }
  }

  if (v26 != v25)
  {
    a1[7] = v26;
  }

LABEL_40:
  v29 = a1[9];
  v28 = a1[10];
  if (v29 != v28)
  {
    while (vabdd_f64(a2, *v29) <= 150.0)
    {
      v29 += 2;
      if (v29 == v28)
      {
        return result;
      }
    }

    if (v29 != v28)
    {
      v30 = v29 + 2;
      if (v29 + 2 != v28)
      {
        do
        {
          if (vabdd_f64(a2, *v30) <= 150.0)
          {
            *v29 = *v30;
            v29 += 2;
          }

          v30 += 2;
        }

        while (v30 != v28);
        v28 = a1[10];
      }
    }
  }

  if (v29 != v28)
  {
    a1[10] = v29;
  }

  return result;
}

uint64_t sub_1000B63E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    sub_10030D828(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 80;
        sub_1002AD354(v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

double sub_1000B6460(uint64_t *a1, double a2)
{
  v4 = (*(*a1[5] + 40))(a1[5]);
  v5 = sub_1000B6BF0(v4, &v39, a2);
  v6 = *(&v39 + 1);
  v7 = (*(*a1[5] + 40))(a1[5]);
  v8 = sub_1000B6BF0(v7, &v34, a2 + 1.0 + 0.5);
  if (v5)
  {
    v9 = v6 == -1.0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return 1.79769313e308;
  }

  v10 = *(&v34 + 1) == -1.0 ? 0 : v8;
  if (v10 != 1)
  {
    return 1.79769313e308;
  }

  v11 = v41;
  if (vabdd_f64(v41, v36) > 0.001)
  {
    v11 = sub_1010BD6D8(a2, v42, v37, v41, v36);
  }

  v12 = v38;
  if (qword_1025D44D0 != -1)
  {
    sub_101AE36F4();
  }

  v13 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
  {
    v14 = a1;
    if (*(a1 + 23) < 0)
    {
      v14 = *a1;
    }

    v15 = *(a1 + 470);
    *buf = 136318722;
    v75 = v14;
    v76 = 1024;
    v77 = v15;
    v78 = 2080;
    v79 = "GOOD";
    v80 = 2048;
    v81 = v42;
    v82 = 2048;
    v83 = v41;
    v84 = 2048;
    v85 = v43;
    v86 = 2048;
    v87 = v40;
    v88 = 2080;
    v89 = "GOOD";
    v90 = 2048;
    v91 = v37;
    v92 = 2048;
    v93 = v36;
    v94 = 2048;
    v95 = v38;
    v96 = 2048;
    v97 = v35;
    v98 = 2048;
    v99 = a2;
    v100 = 2048;
    v101 = v11;
    v102 = 2048;
    v103 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][gps-current],[A-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f[B-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f[interp],startTime,%f,gpsDistance,%f,gpsHeadingRad,%f", buf, 0x94u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v31 = a1;
    if (*(a1 + 23) < 0)
    {
      v31 = *a1;
    }

    v32 = *(a1 + 470);
    v44 = 136318722;
    v45 = v31;
    v46 = 1024;
    v47 = v32;
    v48 = 2080;
    v49 = "GOOD";
    v50 = 2048;
    v51 = v42;
    v52 = 2048;
    v53 = v41;
    v54 = 2048;
    v55 = v43;
    v56 = 2048;
    v57 = v40;
    v58 = 2080;
    v59 = "GOOD";
    v60 = 2048;
    v61 = v37;
    v62 = 2048;
    v63 = v36;
    v64 = 2048;
    v65 = v38;
    v66 = 2048;
    v67 = v35;
    v68 = 2048;
    v69 = a2;
    v70 = 2048;
    v71 = v11;
    v72 = 2048;
    v73 = v12;
    v33 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "std::tuple<double, double> CLIndoorOutdoorGPSModel::getGpsDeltaDistanceAndHeading(const CFAbsoluteTime) const", "%s\n", v33);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  v16 = (*(*a1[5] + 40))(a1[5]);
  v17 = sub_1000B6BF0(v16, &v39, a2 + -2.56);
  v18 = *(&v39 + 1);
  v19 = (*(*a1[5] + 40))(a1[5]);
  v20 = sub_1000B6BF0(v19, &v34, a2 + -2.56 + 1.0 + 0.5);
  v21 = 1.79769313e308;
  if (v17 && v18 != -1.0)
  {
    if (*(&v34 + 1) == -1.0)
    {
      v22 = 0;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v23 = v41;
      if (vabdd_f64(v41, v36) > 0.001)
      {
        v23 = sub_1010BD6D8(a2 + -2.56, v42, v37, v41, v36);
      }

      if (qword_1025D44D0 != -1)
      {
        sub_101AE36F4();
      }

      v24 = qword_1025D44D8;
      if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
      {
        v25 = a1;
        if (*(a1 + 23) < 0)
        {
          v25 = *a1;
        }

        v26 = *(a1 + 470);
        *buf = 136318722;
        v75 = v25;
        v76 = 1024;
        v77 = v26;
        v78 = 2080;
        v79 = "GOOD";
        v80 = 2048;
        v81 = v42;
        v82 = 2048;
        v83 = v41;
        v84 = 2048;
        v85 = v43;
        v86 = 2048;
        v87 = v40;
        v88 = 2080;
        v89 = "GOOD";
        v90 = 2048;
        v91 = v37;
        v92 = 2048;
        v93 = v36;
        v94 = 2048;
        v95 = v38;
        v96 = 2048;
        v97 = v35;
        v98 = 2048;
        v99 = a2;
        v100 = 2048;
        v101 = v23;
        v102 = 2048;
        v103 = v12;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][gps-previous],[A-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f,[B-%s],timestampGps,%f,odometer,%f,gpsHeadingRad,%f,accuracy,%f,[interp],startTime,%f,gpsDistance,%f,gpsHeadingRad,%f", buf, 0x94u);
      }

      v21 = v11 - v23;
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D44D0 != -1)
        {
          sub_101AE36F4();
        }

        v27 = a1;
        if (*(a1 + 23) < 0)
        {
          v27 = *a1;
        }

        v28 = *(a1 + 470);
        v44 = 136318722;
        v45 = v27;
        v46 = 1024;
        v47 = v28;
        v48 = 2080;
        v49 = "GOOD";
        v50 = 2048;
        v51 = v42;
        v52 = 2048;
        v53 = v41;
        v54 = 2048;
        v55 = v43;
        v56 = 2048;
        v57 = v40;
        v58 = 2080;
        v59 = "GOOD";
        v60 = 2048;
        v61 = v37;
        v62 = 2048;
        v63 = v36;
        v64 = 2048;
        v65 = v38;
        v66 = 2048;
        v67 = v35;
        v68 = 2048;
        v69 = a2;
        v70 = 2048;
        v71 = v23;
        v72 = 2048;
        v73 = v12;
        v29 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "std::tuple<double, double> CLIndoorOutdoorGPSModel::getGpsDeltaDistanceAndHeading(const CFAbsoluteTime) const", "%s\n", v29);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      return v21;
    }

    return 1.79769313e308;
  }

  return v21;
}

uint64_t sub_1000B6BF0(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * (v5 / 0x15));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *(v6 + 8 * (v5 / 0x15));
    v9 = v8 + 192 * (v5 % 0x15);
    for (i = *(v6 + 8 * (v4 / 0x15)) + 192 * (v4 % 0x15); i != v9; v9 -= 192)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4032;
      }

      v12 = *(v11 - 192);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4032;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4032;
  }

  v15 = *(v9 - 192);
  v16 = *(v9 - 176);
  v17 = *(v9 - 144);
  a2[2] = *(v9 - 160);
  a2[3] = v17;
  *a2 = v15;
  a2[1] = v16;
  v18 = *(v9 - 128);
  v19 = *(v9 - 112);
  v20 = *(v9 - 80);
  a2[6] = *(v9 - 96);
  a2[7] = v20;
  a2[4] = v18;
  a2[5] = v19;
  v21 = *(v9 - 64);
  v22 = *(v9 - 48);
  v23 = *(v9 - 16);
  a2[10] = *(v9 - 32);
  a2[11] = v23;
  a2[8] = v21;
  a2[9] = v22;
  return 1;
}

void sub_1000B6D1C(uint64_t a1, float *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a2;
  v7 = a4 - 1;
  if (a4 != 1)
  {
    v8 = a3;
    v9 = a2;
    v10 = a4 - 1;
    do
    {
      v11 = *v8++;
      *v9++ = v11;
      --v10;
    }

    while (v10);
  }

  if (a5)
  {
    v12 = 0;
    do
    {
      if (a4 == 1)
      {
        v13 = v12 + 1;
      }

      else
      {
        v13 = v12 + 1;
        v14 = &a3[(v12 + 1) * v7];
        v15 = a2;
        v16 = a4 - 1;
        do
        {
          v17 = *v14++;
          *v15 = *v15 + (*(a1 + 4 * v12) * v17);
          ++v15;
          --v16;
        }

        while (v16);
      }

      v12 = v13;
    }

    while (v13 != a5);
  }

  a2[v7] = 1.0;
  v18 = 1.0;
  if (a4 == 1)
  {
    goto LABEL_19;
  }

  v19 = a2;
  do
  {
    v20 = expf(*v19);
    *v19++ = v20;
    v18 = v18 + v20;
    --v7;
  }

  while (v7);
  if (v5)
  {
LABEL_19:
    do
    {
      *v6 = *v6 / v18;
      ++v6;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_1000B6E08(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = (v4 + v3) / 0x38;
  v7 = *(a1 + 24);
  v8 = (v7 + 8 * v6);
  if (*(a1 + 32) == v7)
  {
    v10 = 0;
    i = 0;
  }

  else
  {
    v9 = *(v7 + 8 * v6);
    v10 = v9 + 72 * (v5 - 56 * v6);
    for (i = *(v7 + 8 * (v4 / 0x38)) + 72 * (v4 % 0x38); i != v10; v10 -= 72)
    {
      v12 = v10;
      if (v10 == v9)
      {
        v12 = *(v8 - 1) + 4032;
      }

      v13 = *(v12 - 72);
      if (v13 <= a3 && v13 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v10 == v9)
      {
        v14 = *--v8;
        v9 = v14;
        v10 = v14 + 4032;
      }
    }
  }

  if (i == v10)
  {
    return 0;
  }

  if (v10 == *v8)
  {
    v10 = *(v8 - 1) + 4032;
  }

  *a2 = *(v10 - 72);
  v16 = *(v10 - 56);
  v17 = *(v10 - 40);
  v18 = *(v10 - 24);
  *(a2 + 64) = *(v10 - 8);
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  *(a2 + 16) = v16;
  return 1;
}

float sub_1000B6F18(uint64_t a1)
{
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    do
    {
      v3 = *(v1 + 40);
      v4 = *(v1 + 32);
      v5 = v4 + 1;
      if (v4 != v3 && v5 != v3)
      {
        v7 = *v4;
        v8 = *v4;
        v9 = v4 + 1;
        v10 = *(v1 + 32);
        v11 = v4 + 1;
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = v8 < v13;
          if (v8 <= v13)
          {
            v8 = v12;
          }

          if (v14)
          {
            v10 = v9;
          }

          v9 = v11;
        }

        while (v11 != v3);
        v15 = *v10;
        v16 = v4 + 1;
        do
        {
          v18 = *v16++;
          v17 = v18;
          if (v18 < v7)
          {
            v7 = v17;
            v4 = v5;
          }

          v5 = v16;
        }

        while (v16 != v3);
        v19 = *v4;
        if (*(v1 + 64) > 0.0 && v15 != v19)
        {
          sub_1002AD064(&v61, v1);
        }
      }

      v1 += 80;
    }

    while (v1 != v2);
    v21 = v61;
    v22 = v62;
  }

  v23 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - v21) >> 4);
  v24 = -1.0;
  if (v23 >= 2)
  {
    v25 = 126 - 2 * __clz(v23);
    if (v22 == v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    sub_1002AD514(v21, v22, v26, 1);
    v27 = v61;
    v28 = 0xCCCCCCCCCCCCCCCDLL * (v62 - v61);
    if (v28 > 0x19)
    {
      v29 = 0;
      v33 = v61;
      do
      {
        v35 = v33->n128_u64[0];
        v34 = v33->n128_i64[1];
        v33 += 5;
        v29 += (v34 - v35) >> 3;
      }

      while (v33 != &v61[120]);
    }

    else if (v61 == v62)
    {
      v29 = 0;
    }

    else
    {
      v29 = 0;
      v30 = v61;
      do
      {
        v32 = v30->n128_u64[0];
        v31 = v30->n128_i64[1];
        v30 += 5;
        v29 += (v31 - v32) >> 3;
      }

      while (v30 != v62);
    }

    if (v28 < 1)
    {
      v38 = 0;
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = v29;
      do
      {
        v41 = v27 + v36;
        v42 = ((*(v41 + 8) - *v41) >> 3) / v40;
        v43 = *(v41 + 64);
        v44 = v39 - v38;
        v45 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 3);
        v46 = v45 + 1;
        if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * (-v38 >> 3) > v46)
        {
          v46 = 0x5555555555555556 * (-v38 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v38 >> 3) >= 0x555555555555555)
        {
          v47 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v47 = v46;
        }

        if (v47)
        {
          if (v47 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1001D0818();
        }

        v48 = (24 * v45);
        *v48 = v42;
        v48[1] = v43;
        v48[2] = 1.0 - v43;
        v39 = 24 * v45 + 24;
        v49 = 24 * v45 + 24 * (v44 / -24);
        memcpy(&v48[3 * (v44 / -24)], v38, v44);
        if (v38)
        {
          operator delete(v38);
        }

        v38 = v49;
        ++v37;
        v27 = v61;
        v50 = -858993459 * ((v62 - v61) >> 4);
        if (v50 >= 25)
        {
          v50 = 25;
        }

        v36 += 80;
      }

      while (v37 < v50);
      if (v49 != v39)
      {
        v51 = 1.0;
        v52 = v49;
        do
        {
          v54 = *v52;
          v53 = *(v52 + 1);
          v52 += 3;
          v51 = v51 * pow(v53, v54);
        }

        while (v52 != v39);
        v55 = 1.0;
        v56 = v49;
        do
        {
          v57 = *(v56 + 2);
          v58 = *v56;
          v56 += 3;
          v55 = v55 * pow(v57, v58);
        }

        while (v56 != v39);
LABEL_61:
        v59 = exp(v51 * (1.0 / (v51 + v55)) * 11.1434693 + -4.35656828);
        v24 = v59 / (v59 + 1.0);
        if (v38)
        {
          operator delete(v38);
        }

        goto LABEL_63;
      }
    }

    v51 = 1.0;
    v55 = 1.0;
    goto LABEL_61;
  }

LABEL_63:
  v64 = &v61;
  sub_1000B8618(&v64);
  return v24;
}

void sub_1000B7304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  if (v12)
  {
    operator delete(v12);
  }

  a12 = &a9;
  sub_1000B8618(&a12);
  _Unwind_Resume(a1);
}

void sub_1000B7338(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (*(a1 + 378))
  {
    v19 = a1 + 384;
    v20 = *(a1 + 378) + *(a1 + 376) - 1;
    v21 = *(a1 + 380);
    if (v20 < v21)
    {
      v21 = 0;
    }

    v22 = (v19 + 16 * (v20 - v21));
    v23 = *v22;
    v24 = __sincos_stret(a4);
    v25 = v22[1] + v24.__sinval * a3;
    *&v87 = v23 + v24.__cosval * a3;
    *(&v87 + 1) = v25;
    sub_1000A3054((a1 + 376), &v87);
    if (a6 == 1.79769313e308 || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || a5 == 1.79769313e308 || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v32 = *(a1 + 512) + *(a1 + 514) - 1;
      v33 = *(a1 + 516);
      if (v32 < v33)
      {
        v33 = 0;
      }

      v34 = a1 + 16 * (v32 - v33);
      *&v87 = *(v34 + 520);
      v31 = *(v34 + 528);
    }

    else
    {
      v26 = *(a1 + 512) + *(a1 + 514) - 1;
      v27 = *(a1 + 516);
      if (v26 < v27)
      {
        v27 = 0;
      }

      v28 = a1 + 16 * (v26 - v27);
      v29 = *(v28 + 520);
      v30 = __sincos_stret(a6);
      *&v87 = v29 + v30.__cosval * a5;
      v31 = *(v28 + 528) + v30.__sinval * a5;
    }

    *(&v87 + 1) = v31;
    sub_1000A3054((a1 + 512), &v87);
    if (a2 && *(a1 + 1904) == 0.0)
    {
      *(a1 + 1904) = a9;
    }

    v35 = *(a1 + 1920);
    if (v35 == -1.79769313e308 || a10 - v35 <= 23.04)
    {
      *(a1 + 1936) = 0x7FF8000000000000;
    }

    else
    {
      sub_1000B869C(a1, (a1 + 376), 1, (a1 + 648), (a1 + 1936));
    }

    sub_1000B869C(a1, (a1 + 512), 0, (a1 + 720), (a1 + 1944));
    sub_1000B88A0(a1, a5, a6, a7, a8);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v38 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v39 = a1;
      if (*(a1 + 23) < 0)
      {
        v39 = *a1;
      }

      v40 = a5;
      if (a5 >= 9999.0)
      {
        v40 = 9999.0;
      }

      v41 = *(a1 + 792) + *(a1 + 794) - 1;
      v42 = *(a1 + 796);
      if (v41 < v42)
      {
        v42 = 0;
      }

      v43 = *(a1 + 8 * (v41 - v42) + 800);
      v44 = *(a1 + 1936);
      v45 = *(a1 + 1944);
      v46 = *(a1 + 1952);
      v47 = *(a1 + 376) + *(a1 + 378) - 1;
      v48 = *(a1 + 380);
      if (v47 < v48)
      {
        v48 = 0;
      }

      v49 = (v19 + 16 * (v47 - v48));
      v51 = *v49;
      v50 = v49[1];
      v52 = *(a1 + 512) + *(a1 + 514) - 1;
      v53 = *(a1 + 516);
      if (v52 < v53)
      {
        v53 = 0;
      }

      v54 = a1 + 16 * (v52 - v53);
      v55 = *(v54 + 520);
      v56 = *(v54 + 528);
      v57 = *(a1 + 1856);
      v58 = *(a1 + 1864);
      v59 = *(a1 + 1872);
      v60 = *(a1 + 1960);
      *buf = 136319490;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      v125 = 2048;
      v126 = a4;
      v127 = 2048;
      v128 = v40;
      v129 = 2048;
      v130 = a6;
      v131 = 2048;
      v132 = v43;
      v133 = 2048;
      v134 = v44;
      v135 = 2048;
      v136 = v45;
      v137 = 2048;
      v138 = v46;
      v139 = 2048;
      v140 = v51;
      v141 = 2048;
      v142 = v50;
      v143 = 2048;
      v144 = v55;
      v145 = 2048;
      v146 = v56;
      v147 = 2048;
      v148 = v57;
      v149 = 2048;
      v150 = v58;
      v151 = 2048;
      v152 = v59;
      v153 = 2048;
      v154 = a9;
      v155 = 1024;
      v156 = v60;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "in-out-metrics,context,%s,stepDeltaDistance,%f,gyroHeadingRadians,%f,gpsDeltaDistance,%f,gpsHeadingRadians,%f,bodySum,%f,fTurnEnv,%f,fGPSTurnEnv,%f,fResidScalar,%f,fIMUDistanceX,%f,fIMUDistanceY,%f,fGPSDistanceX,%f,fGPSDistanceY,%f,fGpsWanderLLRBufferSum,%f,fGpsLLRBufferSum,%f,fGpsFixBufferSum,%f,stepTimestamp,%f,fGpsState,%d", buf, 0xB2u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44D0 != -1)
      {
        sub_101AE36F4();
      }

      v61 = a1;
      if (*(a1 + 23) < 0)
      {
        v61 = *a1;
      }

      v62 = a5;
      if (a5 >= 9999.0)
      {
        v62 = 9999.0;
      }

      v63 = *(a1 + 792) + *(a1 + 794) - 1;
      v64 = *(a1 + 796);
      if (v63 < v64)
      {
        v64 = 0;
      }

      v65 = *(a1 + 8 * (v63 - v64) + 800);
      v66 = *(a1 + 1936);
      v67 = *(a1 + 1944);
      v68 = *(a1 + 1952);
      v69 = *(a1 + 376) + *(a1 + 378) - 1;
      v70 = *(a1 + 380);
      if (v69 < v70)
      {
        v70 = 0;
      }

      v71 = (v19 + 16 * (v69 - v70));
      v73 = *v71;
      v72 = v71[1];
      v74 = *(a1 + 512) + *(a1 + 514) - 1;
      v75 = *(a1 + 516);
      if (v74 < v75)
      {
        v75 = 0;
      }

      v76 = a1 + 16 * (v74 - v75);
      v77 = *(v76 + 520);
      v78 = *(v76 + 528);
      v79 = *(a1 + 1856);
      v80 = *(a1 + 1864);
      v81 = *(a1 + 1872);
      v82 = *(a1 + 1960);
      v88 = 136319490;
      v89 = v61;
      v90 = 2048;
      v91 = a3;
      v92 = 2048;
      v93 = a4;
      v94 = 2048;
      v95 = v62;
      v96 = 2048;
      v97 = a6;
      v98 = 2048;
      v99 = v65;
      v100 = 2048;
      v101 = v66;
      v102 = 2048;
      v103 = v67;
      v104 = 2048;
      v105 = v68;
      v106 = 2048;
      v107 = v73;
      v108 = 2048;
      v109 = v72;
      v110 = 2048;
      v111 = v77;
      v112 = 2048;
      v113 = v78;
      v114 = 2048;
      v115 = v79;
      v116 = 2048;
      v117 = v80;
      v118 = 2048;
      v119 = v81;
      v120 = 2048;
      v121 = a9;
      v122 = 1024;
      v123 = v82;
      v83 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLIndoorOutdoorGPSModel::processSamples(const double, const double, const double, const double, const double, const double, const CFAbsoluteTime, const CFAbsoluteTime, const uint32_t)", "%s\n", v83);
      if (v83 != buf)
      {
        free(v83);
      }
    }
  }

  else
  {
    v36 = __sincos_stret(a4);
    *buf = v36.__cosval * a3;
    *&buf[8] = v36.__sinval * a3;
    sub_1000A3054((a1 + 376), buf);
    if (a6 == 1.79769313e308 || a5 == 1.79769313e308)
    {
      *buf = 0;
      v85 = 0.0;
    }

    else
    {
      v84 = __sincos_stret(a6);
      *buf = v84.__cosval * a5;
      v85 = v84.__sinval * a5;
    }

    *&buf[8] = v85;
    sub_1000A3054((a1 + 512), buf);
  }

  ++*(a1 + 1880);
}

double sub_1000B79F8(uint64_t a1, unsigned __int16 *a2, unsigned int a3, uint64_t a4)
{
  if (a2[1] <= a3)
  {
    sub_101AE3880();
  }

  v4 = a4;
  if (!a4)
  {
    return 0.0;
  }

  v6 = a3 - a4;
  v7 = 0.0;
  do
  {
    v8 = *sub_1000B7CA0(a2, v6 + 1);
    v9 = *(sub_1000B7CA0(a2, v6 + 1) + 8);
    v10 = *sub_1000B7CA0(a2, v6);
    v11 = sub_1000B7CA0(a2, v6);
    v7 = v7 + sqrt((v8 - v10) * (v8 - v10) + (v9 - *(v11 + 8)) * (v9 - *(v11 + 8)));
    ++v6;
    --v4;
  }

  while (v4);
  return v7;
}

void sub_1000B7ACC(uint64_t *a1)
{
  a1[12] = 0xC08F380000000000;
  v1 = a1[3];
  for (i = a1[4]; v1 != i; v1 += 80)
  {
    v4 = (*(v1 + 8) - *v1) >> 3;
    if (v4 >= 2)
    {
      v5 = sub_1002ACA70(a1, (v1 + 32), 25.0);
      v7 = a1[6];
      v6 = a1[7];
      v8 = (*(*(v1 + 8) - 8) - **v1) / (*(v6 - 8) - *v7);
      v9 = v5;
      v10 = exp((v8 + -0.00137940772) / 0.998620592 * 5.78228066 + (v4 / ((v6 - v7) >> 3) + -0.0689655172) / 0.931034483 * 1.87654821 + (v5 + 99.25) / 71.25 * 1.10882815 + -5.98543736);
      *(v1 + 56) = v8;
      *(v1 + 64) = v10 / (v10 + 1.0);
      v11 = *(v1 + 32);
      v12 = *(v1 + 40);
      if (v11 != v12)
      {
        v13 = v11 + 1;
        if (v11 + 1 != v12)
        {
          v14 = *v11;
          v15 = v11 + 1;
          do
          {
            v17 = *v15++;
            v16 = v17;
            v18 = v14 < v17;
            if (v14 <= v17)
            {
              v14 = v16;
            }

            if (v18)
            {
              v11 = v13;
            }

            v13 = v15;
          }

          while (v15 != v12);
        }
      }

      *(v1 + 72) = *v11;
      if (v4 >= 7 && *(a1 + 12) < v9)
      {
        *(a1 + 12) = v9;
      }
    }
  }
}

uint64_t sub_1000B7CA0(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024C2428);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024C2428);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMVector<double, 2>>::operator[](const size_t) const [T = CMVector<double, 2>]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

double sub_1000B7E9C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 == -999.0)
  {
    return -1.0;
  }

  v3 = xmmword_101D25880;
  v5 = (v1 + 96.0) / 65.5;
  sub_10025BE14(&v5, v4, &v3, 2, 1);
  return v4[0];
}

BOOL sub_1000B7F44(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 1880) + 1) & 7;
  v3 = *(a2 + 232);
  if (v2 == v3)
  {
    v5 = *(a2 + 2);
    v6 = sub_1000B79F8(a1, (a1 + 376), *(a1 + 378) - 1, 7);
    v8 = sub_1000B79F8(v7, a2, v5 - 1, 7);
    if (v6 <= 12.207152)
    {
      v9 = NAN;
    }

    else
    {
      v9 = vabdd_f64(v8, v6) / v6;
    }

    *(a2 + 224) = v9;
    *(a2 + 240) = v6;
  }

  return v2 == v3;
}

uint64_t sub_1000B7FEC(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024C2428);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v11 = a2;
      v12 = 1024;
      v13 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_1024C2428);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLIndoorOutdoorGPSModel::GpsStepDistancePair>::operator[](const size_t) const [T = CLIndoorOutdoorGPSModel::GpsStepDistancePair]", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[8 * (v4 - v5) + 4];
}

uint64_t sub_1000B81E8(uint64_t a1, const __CFString *a2, void *a3, int a4)
{
  v9 = a1 + 128;
  v8 = *(a1 + 128);
  cf[1] = (a1 + 128);
  (*(v8 + 16))(a1 + 128);
  v15 = 256;
  cf[0] = 0;
  v10 = sub_10000554C(a1, a2, cf, a4);
  if (v10)
  {
    v11 = CFGetTypeID(cf[0]);
    if (v11 == CFArrayGetTypeID() || v11 == CFDictionaryGetTypeID())
    {
      *a3 = [cf[0] cl_deepCopy];
    }

    else
    {
      v12 = cf[0];
      *a3 = cf[0];
      CFRetain(v12);
    }

    CFRelease(cf[0]);
  }

  (*(*v9 + 24))(v9);
  return v10;
}

void sub_1000B82FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

BOOL sub_1000B8314(uint64_t a1, const void *a2, void *a3)
{
  v7 = a1 + 128;
  v6 = *(a1 + 128);
  cf[1] = (a1 + 128);
  (*(v6 + 16))(a1 + 128);
  v13 = 256;
  cf[0] = 0;
  v8 = sub_100006000(a1, a2, cf);
  if (v8)
  {
    v9 = CFGetTypeID(cf[0]);
    if (v9 == CFArrayGetTypeID() || v9 == CFDictionaryGetTypeID())
    {
      *a3 = [cf[0] cl_deepCopy];
    }

    else
    {
      v10 = cf[0];
      *a3 = cf[0];
      CFRetain(v10);
    }

    CFRelease(cf[0]);
  }

  (*(*v7 + 24))(v7);
  return v8;
}

void sub_1000B8418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000B8430(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFNumberGetTypeID())
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = 134349312;
      v9 = CFGetTypeID(a1);
      v10 = 2050;
      TypeID = CFNumberGetTypeID();
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "type IDs do not match - %{public}lu vs %{public}lu", &v8, 0x16u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_1018AA910();
    return 0;
  }

  if (CFNumberGetValue(a1, kCFNumberFloat64Type, a2))
  {
    return 1;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018A9CF4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "could not get value", &v8, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1018AAA08();
    return 0;
  }

  return result;
}

void sub_1000B85D0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1000B8618(void ***a1)
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
        v4 -= 80;
        sub_1002AD354(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1000B869C(uint64_t a1, unsigned __int16 *a2, int a3, unsigned __int16 *a4, double *a5)
{
  v5 = a2[1];
  if (v5 >= 7)
  {
    v11 = v5 - 1;
    if (sub_1000B79F8(a1, a2, v5 - 1, 6) > 7.62947002)
    {
      v12 = a2 + 4;
      v13 = a2[1];
      v14 = *a2 + v13 - 1;
      v15 = *(a2 + 1);
      if (v14 < v15)
      {
        v15 = 0;
      }

      v16 = *&v12[8 * (v14 - v15)];
      v17 = *sub_1000B7CA0(a2, v13 - 6);
      v18 = a2[1];
      v19 = *a2 + v18 - 1;
      v20 = *(a2 + 1);
      if (v19 < v20)
      {
        v20 = 0;
      }

      v21 = *&v12[8 * (v19 - v20) + 4];
      v22 = sub_1000B7CA0(a2, v18 - 6);
      v23 = *(v22 + 8);
      v24 = sub_1000B79F8(v22, a2, v11, 5);
      if (fabs(v24) > 0.0001)
      {
        v25 = sqrt((v16 - v17) * (v16 - v17) + (v21 - v23) * (v21 - v23)) / v24;
        v26 = a4[1];
        v27 = *(a4 + 1);
        v28 = *a4;
        if (v28 + v26 >= v27)
        {
          v29 = *(a4 + 1);
        }

        else
        {
          v29 = 0;
        }

        *&a4[4 * (v28 + v26 - v29) + 4] = v25;
        if (v27 <= v26)
        {
          if (v28 + 1 < v27)
          {
            LOWORD(v27) = 0;
          }

          *a4 = v28 + 1 - v27;
          if (!a3)
          {
            goto LABEL_13;
          }
        }

        else
        {
          a4[1] = v26 + 1;
          if (!a3)
          {
LABEL_13:
            v30 = 0;
            goto LABEL_18;
          }
        }

        v30 = sub_100F79F84((a1 + 792), sub_100F7A018, 0) >= 0.349065848;
LABEL_18:
        if (*(a1 + 1880) >= 9u && !v30)
        {
          v31 = sub_100F79F84(a4, sub_100F7A024, 0);
          v32 = acos(v31);
          *a5 = (v32 + v32) * 57.2957802;
        }
      }
    }
  }
}

void sub_1000B88A0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if (a2 == 1.79769313e308)
  {
    v7 = a1 + 1960;
    v8 = 992;
    do
    {
      v9 = *(v7 + 8) + *(v7 + 10);
      if (v9 - 1 >= *(v7 + 12))
      {
        v10 = *(v7 + 12);
      }

      else
      {
        v10 = 0;
      }

      sub_1000A3054((v7 + 8), (v7 - 16 * v10 + 16 * v9));
      v7 += 248;
      v8 -= 248;
    }

    while (v8);
  }

  else
  {
    for (i = 1968; i != 2960; i += 248)
    {
      sub_10030D2A0(a1, (a1 + i), a3, a4, a5, a2);
    }
  }

  if (*(a1 + 1880) < 9u)
  {
    return;
  }

  v15 = 0;
  v16 = -1;
  v17 = a1 + 1968;
  do
  {
    if (sub_1000B7F44(a1, v17))
    {
      if (v16 != -1)
      {
        sub_101AE3A14();
      }

      v16 = v15;
    }

    ++v15;
    v17 += 248;
  }

  while (v15 != 4);
  if (v16 == -1)
  {
    *(a1 + 1952) = 0x7FF8000000000000;
    return;
  }

  v18 = *(a1 + 1968 + 248 * v16 + 224);
  if (v18 > 1.0)
  {
    v18 = 1.0;
  }

  *(a1 + 1952) = v18;
  v19 = *(a1 + 1960) - 5;
  v20 = *(a1 + 1944) - *(a1 + 1936);
  v21 = COERCE__INT64(fabs(v20)) > 0x7FEFFFFFFFFFFFFFLL;
  if (v19 >= 0xFFFFFFFD && !v21)
  {
    sub_100F79E54(a1, v20);
    v23 = *(a1 + 866);
    v24 = *(a1 + 868);
    v25 = *(a1 + 864);
    if (v25 + v23 >= v24)
    {
      v26 = *(a1 + 868);
    }

    else
    {
      v26 = 0;
    }

    *(a1 + 8 * (v25 + v23 - v26) + 872) = v22;
    if (v24 <= v23)
    {
      if (v25 + 1 < v24)
      {
        LOWORD(v24) = 0;
      }

      *(a1 + 864) = v25 + 1 - v24;
    }

    else
    {
      *(a1 + 866) = v23 + 1;
    }
  }

  v27 = *(a1 + 1952);
  if (v19 < 0xFFFFFFFD || (*(a1 + 1952) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v34 = *(a1 + 938);
    v35 = *(a1 + 940);
    v36 = *(a1 + 936);
    if (v36 + v34 >= v35)
    {
      v38 = *(a1 + 940);
    }

    else
    {
      v38 = 0;
    }

    *(a1 + 8 * (v36 + v34 - v38) + 944) = 0;
  }

  else
  {
    v28 = exp(v27 * -10.0) * 10.0;
    v29 = *(a1 + 24);
    v30 = (1.0 - v27) * -10.0;
    v31 = v28 / v29;
    v32 = exp(v30);
    v33 = log10(v31 / (v32 * 10.0 / v29));
    if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v33 = 0.0;
    }

    v34 = *(a1 + 938);
    v35 = *(a1 + 940);
    v36 = *(a1 + 936);
    if (v36 + v34 >= v35)
    {
      v37 = *(a1 + 940);
    }

    else
    {
      v37 = 0;
    }

    *(a1 + 8 * (v36 + v34 - v37) + 944) = v33;
  }

  if (v35 <= v34)
  {
    if (v36 + 1 < v35)
    {
      LOWORD(v35) = 0;
    }

    *(a1 + 936) = v36 + 1 - v35;
  }

  else
  {
    *(a1 + 938) = v34 + 1;
  }

  v50[0] = a2 != 1.79769313e308 && *(a1 + 1912) != -1.79769313e308;
  sub_1000C42AC((a1 + 1008), v50);
  *(a1 + 1856) = sub_1000C4048((a1 + 864));
  *(a1 + 1864) = sub_1000C4048((a1 + 936));
  v39 = sub_1000C4304((a1 + 1008));
  *(a1 + 1872) = v39;
  v40 = *(a1 + 1960);
  if (!v40 && v39 < 6.0)
  {
    goto LABEL_53;
  }

  if (!v40 && v39 >= 6.0 || v40 == 1 && v39 >= 6.0)
  {
    goto LABEL_60;
  }

  if (v40 == 1)
  {
    if (*(a1 + 1928) <= 0x19u)
    {
      v41 = 1;
      goto LABEL_55;
    }

    v41 = 5;
LABEL_54:
    *(a1 + 1960) = v41;
LABEL_55:
    ++*(a1 + 1928);
    goto LABEL_63;
  }

  if (v40 == 2 && v39 < 6.0)
  {
    goto LABEL_53;
  }

  if (v40 == 2)
  {
    v49 = *(a1 + 1864);
    if (v49 <= -20.0)
    {
      v41 = 3;
    }

    else
    {
      if (v49 < 22.0 || *(a1 + 1856) < -5.0)
      {
        v41 = 2;
        goto LABEL_62;
      }

      v41 = 4;
    }

    goto LABEL_61;
  }

  if (v40 == 3 && v39 >= 6.0)
  {
    if (*(a1 + 1864) < 0.0 || *(a1 + 1856) < -5.0)
    {
      v41 = 3;
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (v40 == 4 && v39 < 6.0)
  {
LABEL_53:
    v41 = 1;
    goto LABEL_54;
  }

  if (v40 == 4)
  {
    if (*(a1 + 1864) > 0.0)
    {
      goto LABEL_96;
    }

LABEL_60:
    v41 = 2;
LABEL_61:
    *(a1 + 1960) = v41;
    goto LABEL_62;
  }

  if (v40 == 5 && v39 >= 6.0)
  {
    goto LABEL_60;
  }

LABEL_96:
  v41 = *(a1 + 1960);
  if (v40 == 5)
  {
    goto LABEL_55;
  }

LABEL_62:
  *(a1 + 1928) = 0;
LABEL_63:
  if (v40 != v41)
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v42 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEFAULT))
    {
      v43 = a1;
      if (*(a1 + 23) < 0)
      {
        v43 = *a1;
      }

      v44 = *(a1 + 1960);
      v45 = *(a1 + 1928);
      v46 = *(a1 + 1872);
      v47 = *(a1 + 1856);
      v48 = *(a1 + 1864);
      v50[0] = 68290818;
      v50[1] = 0;
      v51 = 2082;
      v52 = "";
      v53 = 2082;
      v54 = v43;
      v55 = 1026;
      v56 = v40;
      v57 = 1026;
      v58 = v44;
      v59 = 1026;
      v60 = v45;
      v61 = 2050;
      v62 = v46;
      v63 = 2050;
      v64 = v47;
      v65 = 2050;
      v66 = v48;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:IndoorOutdoorGpsChange, Context:%{public, location:escape_only}s, Old GPS State:%{public}d, New GPS State:%{public}d, Epochs No Fix:%{public}d, GPS fix buffer sum:%{public}.9f, GPS wander LLR sum:%{public}.9f, GPS LLR sum:%{public}.9f}", v50, 0x4Cu);
    }
  }
}

uint64_t *sub_1000B8E4C(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t *sub_1000B91DC(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t sub_1000B92AC(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1000B9370(uint64_t a1, const char *a2, void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_100023B78(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

uint64_t sub_1000B93E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v7 = -536870187;
    v16 = 256;
    v8 = (*(*v3 + 80))(v3, a2, a3, v21, &v16);
    if (v8 == -536870187)
    {
      while (*(a1 + 16) < 5u)
      {
        if (qword_1025D4210 != -1)
        {
          sub_101A09C90();
        }

        v9 = qword_1025D4218;
        if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
        {
          v10 = dword_101CEF3C0[*(a1 + 16)];
          *buf = 67109120;
          v20 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CMA busy. Waiting %d microseconds.", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A09CB8(&v17, (a1 + 16), v18);
        }

        usleep(dword_101CEF3C0[*(a1 + 16)]);
        ++*(a1 + 16);
        v16 = 256;
        v8 = (*(*v3 + 80))(v3, a2, a3, v21, &v16);
        if (v8 != -536870187)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v7 = v8;
      if (!v8)
      {
        *(a1 + 16) = 0;
        return 1;
      }
    }

    if (qword_1025D4210 != -1)
    {
      sub_101A09C90();
    }

    v11 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_FAULT))
    {
      v12 = mach_error_string(v7);
      v13 = *(a1 + 16);
      *v21 = 136446722;
      v22 = v12;
      v23 = 1026;
      v24 = v7;
      v25 = 1026;
      v26 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "sendCommandPayload() = %{public}s (0x%{public}x),fNumConsecutiveCMAFailures,%{public}d", v21, 0x18u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101A09DE8(v7, a1);
      return 0;
    }
  }

  else
  {
    if (qword_1025D4210 != -1)
    {
      sub_101A09F38();
    }

    v15 = qword_1025D4218;
    if (os_log_type_enabled(qword_1025D4218, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "cmaHidDriverInterface NULL", v21, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101A09F4C();
      return 0;
    }
  }

  return result;
}

void sub_1000B96B4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10014E54C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1000B9708(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1000B9760(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x79435E50D79435E5 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 152 * (26 * (v5 / 0x1A) - v5) + 3800;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 152 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

void *sub_1000B9814(void *result, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  if (a2 != a4)
  {
    while (*&a5 - *a2 <= *(a6 + 88))
    {
      a2 += 2;
      if ((a2 - *result) == 4096)
      {
        v6 = result[1];
        ++result;
        a2 = v6;
      }

      if (a2 == a4)
      {
        a2 = a4;
        break;
      }
    }
  }

  if (a2 != a4)
  {
    v7 = a2;
    v8 = result;
    while (1)
    {
      v7 += 2;
      if ((v7 - *v8) == 4096)
      {
        v9 = v8[1];
        ++v8;
        v7 = v9;
      }

      if (v7 == a4)
      {
        break;
      }

      if (*&a5 - *v7 <= *(a6 + 88))
      {
        v10 = v7[1];
        *a2 = *v7;
        a2[1] = v10;
        a2 += 2;
        if ((a2 - *result) == 4096)
        {
          v11 = result[1];
          ++result;
          a2 = v11;
        }
      }
    }
  }

  return result;
}

void *sub_1000B98C0(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 5) + 16 * (a4 - a2) - ((a3 - *a2) >> 5);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 7));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 32 * (a1[4] & 0x7FLL);
  }

  v33 = (v7 + 8 * (a1[4] >> 7));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 5) + 16 * (a2 - v8) - ((v9 - *v8) >> 5);
  }

  v11 = sub_1000B9AF8(&v33, v10);
  v32.n128_u64[0] = v11;
  v32.n128_u64[1] = v12;
  if (v6 >= 1)
  {
    if (v10 <= (a1[5] - v6) >> 1)
    {
      v19 = v11;
      v20 = v12;
      v21 = v33;
      v22 = v34;
      v23 = sub_1000B9AF8(&v32, v6);
      sub_100A3C7E8(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 32;
          v34 = v25;
          if (v25 - *v26 == 4096)
          {
            v27 = v26[1];
            ++v26;
            v25 = v27;
            v33 = v26;
            v34 = v27;
          }
        }

        while (v25 != v36);
      }

      v28 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v28;
        ;
      }
    }

    else
    {
      v13 = sub_1000B9AF8(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 7));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = &(*v17)[32 * (v15 & 0x7F)];
      }

      v35 = v32;
      sub_1000BFCAC(v13, v14, v17, v18, &v35);
      a1[5] -= v6;
        ;
      }
    }
  }

  v29 = a1[1];
  if (a1[2] == v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(v29 + 8 * (a1[4] >> 7)) + 32 * (a1[4] & 0x7FLL);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 7);
  v35.n128_u64[1] = v30;
  return sub_1000B9AF8(&v35, v10);
}

void *sub_1000B9AF8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 5);
    if (v4 < 1)
    {
      result -= (127 - v4) >> 7;
    }

    else
    {
      result += v4 >> 7;
    }
  }

  return result;
}

void sub_1000B9B5C(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *buf = xmmword_101D104D0;
  *&buf[16] = unk_101D104E0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  sub_1004579D4(&v126, buf, &buf[32], 8uLL);
  v86 = 0;
  __dst = xmmword_101C76220;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  memset(v85, 0, sizeof(v85));
  v87 = 0xBFF0000000000000;
  v88 = 0;
  memset(&v89[1], 0, 320);
  v89[0] = -1.0;
  v90 = -1.0;
  v91 = 0;
  v92 = 0xBFF0000000000000;
  v103 = 0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  memset(v102, 0, sizeof(v102));
  v104 = xmmword_101C76220;
  v105 = 0u;
  v106 = 0x80000000800000;
  v107 = 0u;
  v108 = xmmword_101C78410;
  v109 = 0x80000000800000;
  v110 = 0xBFF0000000000000;
  v111 = 0u;
  v112 = 0;
  v113 = -1.0;
  v114 = 0u;
  v115 = 0;
  v116 = -1.0;
  v117 = 0u;
  v118 = 0u;
  v119 = 0;
  v120 = -1.0;
  v121 = 0x600000006;
  v123 = 0;
  v122 = 0u;
  v124 = 0xBFF0000000000000;
  v125 = 0xBFF0000000000000;
  sub_1000BB0FC(*a1, &v126, &__dst, a3);
  if (qword_1025D4760 != -1)
  {
    sub_101ACF7EC();
  }

  v6 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219520;
    *&buf[4] = a3;
    *&buf[12] = 1024;
    *&buf[14] = v89[0] != -1.0;
    *&buf[18] = 1024;
    *&buf[20] = LODWORD(v89[4]);
    *&buf[24] = 2048;
    *&buf[26] = v89[0];
    *v138 = 1024;
    *&v138[2] = *(&__dst + 1) != -1.0;
    *&v138[6] = 1024;
    *&v138[8] = DWORD2(v78);
    *&v138[12] = 2048;
    *&v138[14] = *(&__dst + 1);
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Steps/activity sync, updateTime, %f, hasSteps, %d, stepCount, %d, stepStartTime, %f, hasActivity, %d, activityType, %d, activityStartTime, %f", buf, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ACF814(buf);
    *v129 = 134219520;
    *&v129[4] = a3;
    v130 = 1024;
    *v131 = v89[0] != -1.0;
    *&v131[4] = 1024;
    *&v131[6] = LODWORD(v89[4]);
    *v132 = 2048;
    *&v132[2] = v89[0];
    LOWORD(v133) = 1024;
    *(&v133 + 2) = *(&__dst + 1) != -1.0;
    HIWORD(v133) = 1024;
    LODWORD(v134) = DWORD2(v78);
    WORD2(v134) = 2048;
    *(&v134 + 6) = *(&__dst + 1);
    v53 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v53);
    if (v53 != buf)
    {
      free(v53);
    }
  }

  v7.n128_f64[0] = v90;
  if (v90 != -1.0)
  {
    sub_1001F1A2C(a1 + 3072, *&v91, *(&v91 + 1));
    sub_1002576A4((a1 + 3144), *&v91, *(&v91 + 1));
  }

  __p[0] = 0;
  __p[1] = 0;
  v76 = 0;
  v8 = (*(**(*a1 + 24) + 24))(*(*a1 + 24), v7);
  sub_1000BBBF8(v8, __p, *(a1 + 3200), a3);
  v9 = __p[1];
  v10 = __p[0];
  if (__p[0] == __p[1])
  {
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v11 = *(__p[1] - 2);
    do
    {
      *buf = *v10;
      sub_1000DA248(a1 + 3072, buf, a3);
      v12 = sub_1000D7654((a1 + 3144), buf, a3);
      ++v10;
    }

    while (v10 != v9);
    v13 = v12;
  }

  sub_1000BC774((a1 + 2968), *(a1 + 3208), *(a1 + 3472), a3);
  if (v89[0] != -1.0)
  {
    memcpy((a1 + 3208), v89, 0x148uLL);
  }

  v14 = sub_1000BC880(a1 + 3072, a3);
  v15 = sub_1000BCBB0(a1 + 2968, a3);
  sub_1000BCED8(a1 + 8, &v73, a3);
  if (qword_1025D4760 != -1)
  {
    sub_101ACF7EC();
  }

  v16 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    *&buf[22] = 2048;
    *&buf[24] = v73;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "CoreMotion model estimates, alsOutdoorProb, %f, wifiIndoorProb, %f, gpsOutdoorProb, %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ACF814(buf);
    *v129 = 134218496;
    *&v129[4] = v14;
    v130 = 2048;
    *v131 = v15;
    *&v131[8] = 2048;
    *v132 = v73;
    v54 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v54);
    if (v54 != buf)
    {
      free(v54);
    }
  }

  if ((*(a1 + 3776) & 1) == 0)
  {
    sub_101318918(a1 + 3536, a3);
    if (qword_1025D4760 != -1)
    {
      sub_101ACF7EC();
    }

    v17 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "CLOutdoorLabeler,CLOutdoorEstimator,Init,currentTime,%f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101ACF814(buf);
      *v129 = 134217984;
      *&v129[4] = a3;
      v63 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v63);
      if (v63 != buf)
      {
        free(v63);
      }
    }
  }

  v18 = *&v73 >= 0.0;
  if (*&v73 > 1.0)
  {
    v18 = 0;
  }

  v72 = v18;
  v19 = v15 > 1.0 || v15 < 0.0;
  v20 = !v19;
  v22 = v14 <= 1.0 && v14 >= 0.0;
  if (sub_1000BBD94(a1 + 3536, a3))
  {
    if (*(&__dst + 1) == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v23 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoMotionActivity,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v68 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v68);
        if (v68 != buf)
        {
          free(v68);
        }
      }
    }

    else
    {
      sub_1000AC874(a1 + 3536, SDWORD2(v78), a3);
    }

    if (v116 == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v27 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoGnssLeechLocation,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v69 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v69);
        if (v69 != buf)
        {
          free(v69);
        }
      }
    }

    else
    {
      memset(buf, 0, 24);
      v24 = (*(**(*a1 + 24) + 80))(*(*a1 + 24), v116);
      sub_100305B34(v24, buf, *(a1 + 3200), a3);
      v25 = *buf;
      v26 = *&buf[8];
      while (v25 != v26)
      {
        sub_10030B83C(a1 + 3536, v25, a3);
        v25 += 48;
      }

      *v129 = buf;
      sub_100306418(v129);
    }

    if (v113 == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v28 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoGnssAvailability,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v70 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v70);
        if (v70 != buf)
        {
          free(v70);
        }
      }
    }

    else
    {
      sub_1000CA2F4(a1 + 3536, &v114, a3);
    }

    if (v120 == -1.0)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v29 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_OutdoorNoMapMatchingRouteHint,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v71 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v71);
        if (v71 != buf)
        {
          free(v71);
        }
      }
    }

    else
    {
      sub_101185F8C(a1 + 3536, &v121, a3);
    }

    if (v72)
    {
      *&buf[8] = v73;
      *buf = 0;
      *&buf[24] = v74;
      sub_1000CF128(a1 + 3536, buf, a3);
    }

    else
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v30 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoCMGpsModelOutput,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v65 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v65);
        if (v65 != buf)
        {
          free(v65);
        }
      }
    }

    if (v20)
    {
      *buf = 0;
      *&buf[8] = v15;
      sub_1002AEA84(a1 + 3536, buf, a3);
    }

    else
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v31 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoCMWiFiModelOutput,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v66 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v66);
        if (v66 != buf)
        {
          free(v66);
        }
      }
    }

    if (v22)
    {
      *buf = 0;
      *&buf[8] = v14;
      sub_100143010(a1 + 3536, buf, a3);
    }

    else
    {
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v32 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoCMALSModelOutput,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v67 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v67);
        if (v67 != buf)
        {
          free(v67);
        }
      }
    }

    v33 = sub_1000C57A0(a1 + 3144);
    v34 = *(a1 + 3152);
    v35 = sub_1000CF2B0(a1 + 3144);
    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      if ((v13 - 1) >= 3)
      {
        goto LABEL_112;
      }
    }

    else if (v13 != 3)
    {
LABEL_112:
      if (qword_1025D4760 != -1)
      {
        sub_101ACF7EC();
      }

      v43 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_NoAlsEvidence,currentTime,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101ACF814(buf);
        *v129 = 134217984;
        *&v129[4] = a3;
        v64 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }
      }

      goto LABEL_117;
    }

    if (v34 > 0.0)
    {
      v36 = v33;
    }

    else
    {
      v36 = 0;
    }

    if (v36 != 1)
    {
      goto LABEL_112;
    }

    v37 = 750.0;
    if (v35 <= 750.0)
    {
      goto LABEL_112;
    }

    *&buf[8] = 0;
    v38 = 15000.0;
    if (v35 <= 15000.0)
    {
      v38 = v35;
    }

    if (v35 >= 750.0)
    {
      v37 = v38;
    }

    v39 = *(a1 + 3152);
    v40 = 90.0;
    if (v39 < 90.0)
    {
      v40 = *(a1 + 3152);
    }

    v41 = v40;
    v19 = v39 < 0.0;
    v42 = 0.0;
    if (!v19)
    {
      v42 = v41;
    }

    *&buf[16] = v37;
    *&buf[24] = v42;
    buf[32] = v33;
    *&v138[6] = v13;
    *buf = a3;
    sub_101186198(a1 + 3536, buf, a3);
  }

LABEL_117:
  *a2 = a3;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = v13;
  *(a2 + 48) = sub_1000C57A0(a1 + 3144);
  *(a2 + 52) = v11;
  sub_1000C57C8(a1 + 3536, a2);
  if (qword_1025D4760 != -1)
  {
    sub_101ACF7EC();
  }

  v44 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_INFO))
  {
    v45 = *a2;
    v46 = *(a2 + 8);
    v47 = *(a2 + 16);
    v48 = *(a2 + 24);
    v49 = *(a2 + 48);
    v50 = *(a2 + 32);
    v51 = *(a2 + 40);
    *buf = 134219521;
    *&buf[4] = v45;
    *&buf[12] = 2049;
    *&buf[14] = v46;
    *&buf[22] = 2049;
    *&buf[24] = v47;
    *&buf[32] = 2049;
    *v138 = v48;
    *&v138[8] = 2049;
    *&v138[10] = v50;
    *&v138[18] = 1025;
    *&v138[20] = v49;
    v139 = 2049;
    v140 = v51;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "CLOutdoorEstimator_HMM Estimate,startTime,%f,mctTimestampSec,%{private}f,type, %{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ACF814(buf);
    v55 = *a2;
    v56 = *(a2 + 8);
    v57 = *(a2 + 16);
    v58 = *(a2 + 24);
    v59 = *(a2 + 48);
    v60 = *(a2 + 32);
    v61 = *(a2 + 40);
    *v129 = 134219521;
    *&v129[4] = v55;
    v130 = 2049;
    *v131 = v56;
    *&v131[8] = 2049;
    *v132 = v57;
    *&v132[8] = 2049;
    v133 = v58;
    LOWORD(v134) = 2049;
    *(&v134 + 2) = v60;
    WORD5(v134) = 1025;
    HIDWORD(v134) = v59;
    v135 = 2049;
    v136 = v61;
    v62 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLOutdoor_Type::OutdoorUpdate CLOutdoorLabeler::update(CFAbsoluteTime)", "%s\n", v62);
    if (v62 != buf)
    {
      free(v62);
    }
  }

  v52 = *(a1 + 3804);
  if (v52 != 3)
  {
    *(a2 + 16) = v52;
  }

  *(a1 + 3200) = a3;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v122)
  {
    *(&v122 + 1) = v122;
    operator delete(v122);
  }

  if (v118)
  {
    *(&v118 + 1) = v118;
    operator delete(v118);
  }

  *buf = &v111;
  sub_1000B96B4(buf);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }
}

void sub_1000BB038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100A3AFA0(va);
  v12 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000BB0FC(uint64_t a1, int **a2, char *__dst, double a4)
{
  WORD4(v27[9]) = 0;
  v27[0] = xmmword_101C76220;
  memset(&v27[1], 0, 135);
  *&v27[10] = 0xBFF0000000000000;
  DWORD2(v27[10]) = 0;
  *(&v27[16] + 8) = 0u;
  *(&v27[17] + 8) = 0u;
  *(&v27[18] + 8) = 0u;
  *(&v27[19] + 8) = 0u;
  *(&v27[20] + 8) = 0u;
  *(&v27[21] + 8) = 0u;
  *(&v27[22] + 8) = 0u;
  *(&v27[23] + 8) = 0u;
  *(&v27[24] + 8) = 0u;
  *(&v27[25] + 8) = 0u;
  *(&v27[26] + 8) = 0u;
  *(&v27[27] + 8) = 0u;
  *(&v27[28] + 8) = 0u;
  *(&v27[29] + 8) = 0u;
  *(&v27[30] + 8) = 0u;
  *(&v27[11] + 8) = 0u;
  *(&v27[12] + 8) = 0u;
  *(&v27[13] + 8) = 0u;
  *(&v27[14] + 8) = 0u;
  *(&v27[15] + 8) = 0u;
  *&v27[11] = 0xBFF0000000000000;
  *(&v27[31] + 1) = 0xBFF0000000000000;
  *&v27[32] = 0;
  *(&v27[32] + 1) = 0xBFF0000000000000;
  DWORD2(v27[43]) = 0;
  memset(&v27[33], 0, 84);
  *(&v27[38] + 8) = 0u;
  *(&v27[39] + 8) = 0u;
  *(&v27[40] + 8) = 0u;
  *(&v27[41] + 8) = 0u;
  *(&v27[42] + 1) = 0u;
  v27[44] = xmmword_101C76220;
  v27[45] = 0u;
  *&v27[46] = 0x80000000800000;
  *(&v27[46] + 8) = 0u;
  *(&v27[47] + 8) = xmmword_101C78410;
  *(&v27[48] + 1) = 0x80000000800000;
  v28 = 0xBFF0000000000000;
  *v30 = 0xBFF0000000000000;
  memset(&v30[8], 0, 24);
  *v31 = 0xBFF0000000000000;
  *&v31[8] = 0u;
  v32 = 0u;
  v33 = 0;
  v34 = 0xBFF0000000000000;
  v35 = 0x600000006;
  v37 = 0;
  v36 = 0u;
  *&v38 = 0xBFF0000000000000;
  *(&v38 + 1) = 0xBFF0000000000000;
  memcpy(__dst, v27, 0x310uLL);
  *(__dst + 98) = 0xBFF0000000000000;
  sub_1000BB5F0(__dst + 99);
  *(__dst + 101) = 0;
  *(__dst + 792) = 0u;
  memset(v29, 0, sizeof(v29));
  v8 = *&v30[16];
  *(__dst + 51) = *v30;
  *(__dst + 52) = v8;
  *(__dst + 53) = *v31;
  *(__dst + 108) = *&v31[16];
  v9 = *(__dst + 109);
  if (v9)
  {
    *(__dst + 110) = v9;
    operator delete(v9);
  }

  *(__dst + 109) = 0;
  *(__dst + 110) = 0;
  *(__dst + 111) = 0;
  v33 = 0;
  v32 = 0uLL;
  *(__dst + 112) = 0xBFF0000000000000;
  *(__dst + 113) = v35;
  v10 = *(__dst + 114);
  if (v10)
  {
    *(__dst + 115) = v10;
    operator delete(v10);
  }

  *(__dst + 114) = 0;
  *(__dst + 115) = 0;
  *(__dst + 116) = 0;
  v37 = 0;
  v36 = 0uLL;
  *(__dst + 936) = v38;
  v39 = v29;
  sub_1000B96B4(&v39);
  v11 = *a2;
  v12 = a2[1];
  v13 = 1;
  while (v11 != v12)
  {
    v14 = *v11;
    if (*v11 > 4)
    {
      if (v14 <= 6)
      {
        if (v14 == 5)
        {
          v21 = (*(**(a1 + 24) + 136))(*(a1 + 24));
          v16 = sub_1000B6E08(v21, (__dst + 712), a4);
        }

        else
        {
          if (v14 != 6)
          {
            goto LABEL_31;
          }

          v19 = (*(**(a1 + 24) + 144))(*(a1 + 24));
          v16 = sub_1000BB754(v19, __dst + 98, a4);
        }
      }

      else
      {
        switch(v14)
        {
          case 7:
            v23 = (*(**(a1 + 24) + 152))(*(a1 + 24));
            v16 = sub_1000BB880(v23, __dst + 51, a4);
            break;
          case 8:
            v25 = (*(**(a1 + 24) + 160))(*(a1 + 24));
            v16 = sub_1000BB958(v25, (__dst + 848), a4);
            break;
          case 9:
            v17 = (*(**(a1 + 24) + 168))(*(a1 + 24));
            v16 = sub_1000BBAA0(v17, (__dst + 896), a4);
            break;
          default:
            goto LABEL_31;
        }
      }
    }

    else if (v14 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_31;
        }

        v18 = (*(**(a1 + 24) + 104))(*(a1 + 24));
        v16 = sub_1000BC56C(v18, __dst + 10, a4);
      }

      else
      {
        v20 = (*(**(a1 + 24) + 96))(*(a1 + 24));
        v16 = sub_1000BB630(v20, __dst, a4);
      }
    }

    else
    {
      switch(v14)
      {
        case 2:
          v22 = (*(**(a1 + 24) + 112))(*(a1 + 24));
          v16 = sub_1000BC63C(v22, __dst + 176, a4);
          break;
        case 3:
          v24 = (*(**(a1 + 24) + 128))(*(a1 + 24));
          v16 = sub_1000BC56C(v24, __dst + 504, a4);
          break;
        case 4:
          v15 = (*(**(a1 + 24) + 120))(*(a1 + 24));
          v16 = sub_1000B6BF0(v15, __dst + 520, a4);
          break;
        default:
          goto LABEL_31;
      }
    }

    v13 &= v16;
LABEL_31:
    ++v11;
  }

  return v13 & 1;
}

void sub_1000BB5F0(uint64_t *a1)
{
  if (*a1)
  {
    sub_10014E54C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1000BB630(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = ((v4 + v3) * 0x47AE147AE147AE15uLL) >> 64;
  v7 = (v6 + ((v5 - v6) >> 1)) >> 4;
  v8 = *(a1 + 24);
  v9 = (v8 + 8 * v7);
  if (*(a1 + 32) == v8)
  {
    v11 = 0;
    i = 0;
  }

  else
  {
    v10 = *(v8 + 8 * v7);
    v11 = v10 + 160 * (v5 - 25 * v7);
    for (i = *(v8 + 8 * (v4 / 0x19)) + 160 * (v4 % 0x19); i != v11; v11 -= 160)
    {
      v13 = v11;
      if (v11 == v10)
      {
        v13 = *(v9 - 1) + 4000;
      }

      v14 = *(v13 - 152);
      if (v14 <= a3 && v14 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v11 == v10)
      {
        v15 = *--v9;
        v10 = v15;
        v11 = v15 + 4000;
      }
    }
  }

  if (i == v11)
  {
    return 0;
  }

  if (v11 == *v9)
  {
    v11 = *(v9 - 1) + 4000;
  }

  v17 = *(v11 - 144);
  *a2 = *(v11 - 160);
  a2[1] = v17;
  v18 = *(v11 - 128);
  v19 = *(v11 - 112);
  v20 = *(v11 - 80);
  a2[4] = *(v11 - 96);
  a2[5] = v20;
  a2[2] = v18;
  a2[3] = v19;
  v21 = *(v11 - 64);
  v22 = *(v11 - 48);
  v23 = *(v11 - 16);
  a2[8] = *(v11 - 32);
  a2[9] = v23;
  a2[6] = v21;
  a2[7] = v22;
  return 1;
}

uint64_t sub_1000BB754(uint64_t a1, void *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * ((v4 + v3) >> 7));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *v7;
    v9 = *v7 + 32 * (v5 & 0x7F);
    for (i = *(v6 + ((*(a1 + 48) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 48) & 0x7FLL); i != v9; v9 -= 32)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4096;
      }

      v12 = *(v11 - 32);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4096;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4096;
  }

  *a2 = *(v9 - 32);
  if ((v9 - 32) != a2)
  {
    sub_100288978(a2 + 1, *(v9 - 24), *(v9 - 16), 0x2E8BA2E8BA2E8BA3 * ((*(v9 - 16) - *(v9 - 24)) >> 3));
  }

  return 1;
}

uint64_t sub_1000BB880(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * ((v4 + v3) >> 7));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *v7;
    v9 = *v7 + 32 * (v5 & 0x7F);
    for (i = *(v6 + ((*(a1 + 48) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 48) & 0x7FLL); i != v9; v9 -= 32)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4096;
      }

      v12 = *(v11 - 32);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4096;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4096;
  }

  v15 = *(v9 - 16);
  *a2 = *(v9 - 32);
  a2[1] = v15;
  return 1;
}

uint64_t sub_1000BB958(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = (v4 + v3) / 0x55;
  v7 = *(a1 + 24);
  v8 = (v7 + 8 * v6);
  if (*(a1 + 32) == v7)
  {
    v10 = 0;
    i = 0;
  }

  else
  {
    v9 = *(v7 + 8 * v6);
    v10 = v9 + 48 * (v5 - 85 * v6);
    for (i = *(v7 + 8 * (v4 / 0x55)) + 48 * (v4 % 0x55); i != v10; v10 -= 48)
    {
      v12 = v10;
      if (v10 == v9)
      {
        v12 = *(v8 - 1) + 4080;
      }

      v13 = *(v12 - 48);
      if (v13 <= a3 && v13 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v10 == v9)
      {
        v14 = *--v8;
        v9 = v14;
        v10 = v14 + 4080;
      }
    }
  }

  if (i == v10)
  {
    return 0;
  }

  if (v10 == *v8)
  {
    v10 = *(v8 - 1) + 4080;
  }

  v16 = *(v10 - 48);
  *(a2 + 16) = *(v10 - 32);
  *a2 = v16;
  if (v10 - 48 != a2)
  {
    sub_10028F1A8((a2 + 24), *(v10 - 24), *(v10 - 16), 0x6DB6DB6DB6DB6DB7 * ((*(v10 - 16) - *(v10 - 24)) >> 2));
  }

  return 1;
}

uint64_t sub_1000BBAA0(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v5 = *(a1 + 48);
  v6 = v5 + v3;
  v7 = (v5 + v3) / 0x49;
  v8 = *(a1 + 24);
  v9 = (v8 + 8 * v7);
  if (*(a1 + 32) == v8)
  {
    v11 = 0;
    i = 0;
  }

  else
  {
    v10 = *(v8 + 8 * v7);
    v11 = v10 + 56 * (v6 - 73 * v7);
    for (i = *(v8 + 8 * (v5 / 0x49)) + 56 * (v5 % 0x49); i != v11; v11 -= 56)
    {
      v13 = v11;
      if (v11 == v10)
      {
        v13 = *(v9 - 1) + 4088;
      }

      v14 = *(v13 - 56);
      if (v14 <= a3 && v14 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v11 == v10)
      {
        v15 = *--v9;
        v10 = v15;
        v11 = v15 + 4088;
      }
    }
  }

  if (i == v11)
  {
    return 0;
  }

  if (v11 == *v9)
  {
    v11 = *(v9 - 1) + 4088;
  }

  *a2 = *(v11 - 56);
  *(a2 + 8) = *(v11 - 48);
  if (v11 - 56 != a2)
  {
    sub_100306558((a2 + 16), *(v11 - 40), *(v11 - 32), 0xCCCCCCCCCCCCCCCDLL * ((*(v11 - 32) - *(v11 - 40)) >> 3));
  }

  *(a2 + 40) = *(v11 - 16);
  return 1;
}

void sub_1000BBBF8(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = a1[6];
  v8 = a1[3];
  v9 = a1[4];
  v10 = (v8 + 8 * (v7 >> 8));
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*v10 + 16 * v7);
  }

  v12 = a4 + 1.0e-13;
  while (1)
  {
    if (v9 == v8)
    {
      v14 = 0;
    }

    else
    {
      v13 = a1[7] + a1[6];
      v14 = *(v8 + ((v13 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v13;
    }

    if (v11 == v14)
    {
      break;
    }

    if (*v11 <= v12 && *v11 + 1.0e-13 > a3)
    {
      v17 = *(a2 + 8);
      v16 = *(a2 + 16);
      if (v17 >= v16)
      {
        v19 = (v17 - *a2) >> 4;
        v20 = v19 + 1;
        if ((v19 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v21 = v16 - *a2;
        if (v21 >> 3 > v20)
        {
          v20 = v21 >> 3;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          sub_1000D758C(a2, v22);
        }

        v23 = (16 * v19);
        *v23 = *v11;
        v18 = 16 * v19 + 16;
        v24 = *(a2 + 8) - *a2;
        v25 = 16 * v19 - v24;
        memcpy(v23 - v24, *a2, v24);
        v26 = *a2;
        *a2 = v25;
        *(a2 + 8) = v18;
        *(a2 + 16) = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v17 = *v11;
        v18 = (v17 + 1);
      }

      *(a2 + 8) = v18;
    }

    if ((++v11 - *v10) == 4096)
    {
      v27 = v10[1];
      ++v10;
      v11 = v27;
    }

    v8 = a1[3];
    v9 = a1[4];
  }
}

BOOL sub_1000BBD94(uint64_t a1, double a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,predict()", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB40D8();
  }

  if ((*(a1 + 240) & 1) == 0)
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,predict(),HMM Not initialized", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB41BC();
    }

    return 0;
  }

  if (vabdd_f64(a2, *(a1 + 248)) < 2.22044605e-16)
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,predict(),Estimator time equal to current time", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB44E0();
    }

    return 0;
  }

  v30 = a2;
  v29 = *(a1 + 144);
  if (qword_1025D4760 != -1)
  {
    sub_101BB14F4();
  }

  v9 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 144);
    v11 = *(a1 + 152);
    v12 = *(a1 + 248);
    *buf = 134284033;
    v38 = v10;
    v39 = 2049;
    v40 = v11;
    v41 = 2048;
    v42 = v12;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_TransitionProbability,transitionProbabilityIndoorGivenIndoor,%{private}f,transitionProbabilityOutdoorGivenOutdoor,%{private}f,EstimatorTimeCfaSec,%f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v25 = *(a1 + 144);
    v26 = *(a1 + 152);
    v27 = *(a1 + 248);
    v31 = 134284033;
    v32 = v25;
    v33 = 2049;
    v34 = v26;
    v35 = 2048;
    v36 = v27;
    v28 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLOutdoorEstimator::predict(const CFAbsoluteTime)", "%s\n", v28);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  v13 = sub_1000AB1E0(a1, sub_1000AB2E8, &v29);
  v7 = v13 == 0;
  if (v13)
  {
    v14 = v13;
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v15 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v38) = v14;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,predict(),Failed,%d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB4298(v14);
    }

    *(a1 + 144) = vdupq_n_s64(0x3FEE666666666666uLL);
  }

  else
  {
    *(a1 + 248) = a2;
    *(a1 + 144) = vdupq_n_s64(0x3FEE666666666666uLL);
    sub_1000AC4D8(a1);
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v16 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 184);
      v18 = *(a1 + 192);
      v19 = *(a1 + 200);
      v20 = *(a1 + 208);
      v21 = *(a1 + 232);
      v22 = *(a1 + 216);
      v23 = *(a1 + 224);
      v24 = *(a1 + 248);
      *buf = 134219777;
      v38 = v17;
      v39 = 2048;
      v40 = v18;
      v41 = 2049;
      v42 = v19;
      v43 = 2049;
      v44 = v20;
      v45 = 2049;
      v46 = v22;
      v47 = 1025;
      v48 = v21;
      v49 = 2049;
      v50 = v23;
      v51 = 2048;
      v52 = v24;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_predict,startTime,%f,mctTimestampSec,%f,type,%{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld,EstimatorTimeCfaSec,%f", buf, 0x4Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB4380(a1, (a1 + 248));
    }
  }

  return v7;
}

void sub_1000BC28C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 64;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3C74C(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA6C8();
        }

        return;
      }

      v10 = 128;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 7));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 7));
    }

    else
    {
      v15 = (*v14 + 32 * (v11 & 0x7F));
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 7));
      v19 = (*v18 + 32 * (v17 & 0x7F));
    }

    v23 = sub_1000B9814(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 7));
    v27 = *(a1 + 32) == v25 ? 0 : *v26 + 32 * (v24 & 0x7F);
    sub_1000B98C0((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

uint64_t sub_1000BC56C(uint64_t a1, _OWORD *a2, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = v4 + v3;
  v6 = *(a1 + 24);
  v7 = (v6 + 8 * ((v4 + v3) >> 8));
  if (*(a1 + 32) == v6)
  {
    v9 = 0;
    i = 0;
  }

  else
  {
    v8 = *v7;
    v9 = *v7 + 16 * v5;
    for (i = *(v6 + ((v4 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v4; i != v9; v9 -= 16)
    {
      v11 = v9;
      if (v9 == v8)
      {
        v11 = *(v7 - 1) + 4096;
      }

      v12 = *(v11 - 16);
      if (v12 <= a3 && v12 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v9 == v8)
      {
        v13 = *--v7;
        v8 = v13;
        v9 = v13 + 4096;
      }
    }
  }

  if (i == v9)
  {
    return 0;
  }

  if (v9 == *v7)
  {
    v9 = *(v7 - 1) + 4096;
  }

  *a2 = *(v9 - 16);
  return 1;
}

uint64_t sub_1000BC63C(uint64_t a1, void *__dst, double a3)
{
  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 48) + v3;
  v5 = *(a1 + 24);
  v6 = (v5 + 8 * (v4 >> 4));
  if (*(a1 + 32) == v5)
  {
    v8 = 0;
    i = 0;
  }

  else
  {
    v7 = *v6;
    v8 = *v6 + 328 * (v4 & 0xF);
    for (i = *(v5 + ((*(a1 + 48) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 328 * (*(a1 + 48) & 0xFLL); i != v8; v8 -= 328)
    {
      v10 = v8;
      if (v8 == v7)
      {
        v10 = *(v6 - 1) + 5248;
      }

      v11 = *(v10 - 328);
      if (v11 <= a3 && v11 > a3 - *(a1 + 80))
      {
        break;
      }

      if (v8 == v7)
      {
        v12 = *--v6;
        v7 = v12;
        v8 = v12 + 5248;
      }
    }
  }

  if (i == v8)
  {
    return 0;
  }

  if (v8 == *v6)
  {
    v8 = *(v6 - 1) + 5248;
  }

  memcpy(__dst, (v8 - 328), 0x148uLL);
  return 1;
}

void sub_1000BC774(void *a1, double a2, double a3, double a4)
{
  sub_1000B60F4(a1, a4);
  v7 = a1[9];
  v8 = a1[10];
  if (v7 == v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *(v8 - 1);
  }

  v10 = v9 + a3;
  v11 = a1[11];
  if (v8 >= v11)
  {
    v13 = v8 - v7;
    v14 = (v8 - v7) >> 4;
    v15 = v14 + 1;
    if ((v14 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v16 = v11 - v7;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      sub_1003E5FE8((a1 + 9), v15);
    }

    v17 = (16 * v14);
    *v17 = a2;
    v17[1] = v10;
    v12 = 16 * v14 + 16;
    memcpy(0, v7, v13);
    v18 = a1[9];
    a1[9] = 0;
    a1[10] = v12;
    a1[11] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v8 = a2;
    v8[1] = v10;
    v12 = (v8 + 2);
  }

  a1[10] = v12;
}

float sub_1000BC880(uint64_t a1, double a2)
{
  v3 = sub_1000B4ECC(a1, a2);
  v4 = *&v3;
  v6 = v5;
  v7 = HIDWORD(v3);
  v24 = 0xBA4F9E383FC07C8DLL;
  v23 = HIDWORD(v3);
  sub_1000B6D1C(&v23, &v57, &v24, 2, 1);
  v8 = v58;
  v9 = *(a1 + 56);
  v11 = v9 > 15.0 && v9 != -9999.0;
  if (v11 && v6 > 6)
  {
    v12 = v58;
  }

  else
  {
    v12 = -1.0;
  }

  if (qword_1025D44D0 != -1)
  {
    sub_1019220AC();
  }

  v13 = v4;
  v14 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v15 = a1;
    if (*(a1 + 23) < 0)
    {
      v15 = *a1;
    }

    v16 = *(a1 + 56);
    v17 = *(a1 + 48) != -9999.0 && *(a1 + 52) != -9999.0;
    *buf = 136316930;
    v42 = v15;
    v43 = 2050;
    v44 = v12;
    v45 = 2050;
    v46 = v8;
    v47 = 2050;
    v48 = *&v7;
    v49 = 2050;
    v50 = v13;
    v51 = 1026;
    v52 = v6;
    v53 = 2050;
    v54 = v16;
    v55 = 1026;
    v56 = v17;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "IndoorOutdoor,ALSResult,context,%s,outputProb,%{public}.2f,rawProb,%{public}.2f,meanLux,%{public}.2f,stdLux,%{public}.2f,n,%{public}d,elevation,%{public}.2f,hasLatLon,%{public}d", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_1019220AC();
    }

    v19 = a1;
    if (*(a1 + 23) < 0)
    {
      v19 = *a1;
    }

    v20 = *(a1 + 56);
    v21 = *(a1 + 48) != -9999.0 && *(a1 + 52) != -9999.0;
    v25 = 136316930;
    v26 = v19;
    v27 = 2050;
    v28 = v12;
    v29 = 2050;
    v30 = v8;
    v31 = 2050;
    v32 = *&v7;
    v33 = 2050;
    v34 = v13;
    v35 = 1026;
    v36 = v6;
    v37 = 2050;
    v38 = v20;
    v39 = 1026;
    v40 = v21;
    v22 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "float CLALSIndoorOutdoorDetector::computeOutdoorProbability(CFAbsoluteTime)", "%s\n", v22);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  return v12;
}

float sub_1000BCBB0(uint64_t a1, double a2)
{
  sub_1000B60F4(a1, a2);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = 0.0;
  v6 = 0.0;
  if (v3 != v4)
  {
    v6 = vabdd_f64(*(v4 - 1), *v3);
  }

  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  if (v7 != v8)
  {
    v5 = *(v8 - 8) - *(v7 + 8);
  }

  v10 = v6 <= 120.0 || v5 < 100.0 || 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 4) < 2;
  sub_1000B7ACC(a1);
  v11 = sub_1000B6F18(a1);
  v12 = sub_1000B7E9C(a1);
  if (qword_1025D44D0 != -1)
  {
    sub_101B77C74();
  }

  v13 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v14 = a1;
    if (*(a1 + 23) < 0)
    {
      v14 = *a1;
    }

    v15 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 32) - *(a1 + 24)) >> 4);
    *buf = 136316674;
    v19 = v14;
    v20 = 2050;
    v21 = v6;
    v22 = 2050;
    v23 = v5;
    v24 = 2050;
    v25 = v15;
    v26 = 1026;
    v27 = v10;
    v28 = 2050;
    v29 = v11;
    v30 = 2050;
    v31 = v12;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "IndoorOutdoor,WifiModel,context,%s,scanRange,%{public}f,distanceTraveled,%{public}f,numAps,%{public}zu,invalidResult,%{public}d,stationaryProbability,%{public}f,wifiRssiModelIndoorProbability,%{public}f", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101B77C88();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "float CLIndoorOutdoorWifiModel::computeProbability(CFAbsoluteTime)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  if (v10)
  {
    v11 = -1.0;
    if (v5 < 100.0)
    {
      return v12;
    }
  }

  return v11;
}

void sub_1000BCED8(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 1912) == -1.79769313e308 && *(a1 + 1880) >= 9u)
  {
    *(a1 + 1912) = a3;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 312);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0x80000000800000;
  v75 = 0;
  v76 = 0;
  v77 = xmmword_101C78410;
  v78 = 0x80000000800000;
  v8 = (*(**(a1 + 40) + 56))(*(a1 + 40));
  v9 = sub_1000B6E08(v8, &v71, v6 + -15.0);
  if (v9)
  {
    v10 = *(a1 + 794);
    v11 = *(a1 + 796);
    v12 = *(a1 + 792);
    if (v12 + v10 >= v11)
    {
      v13 = *(a1 + 796);
    }

    else
    {
      v13 = 0;
    }

    *(a1 + 8 * (v12 + v10 - v13) + 800) = *(&v77 + 2);
    if (v11 <= v10)
    {
      if (v12 + 1 < v11)
      {
        LOWORD(v11) = 0;
      }

      *(a1 + 792) = v12 + 1 - v11;
    }

    else
    {
      *(a1 + 794) = v10 + 1;
    }

    v18 = *(&v72 + 1);
    if (*(a1 + 1920) == -1.79769313e308)
    {
      *(a1 + 1920) = a3;
    }
  }

  else
  {
    v14 = *(a1 + 794);
    v15 = *(a1 + 796);
    v16 = *(a1 + 792);
    if (v16 + v14 >= v15)
    {
      v17 = *(a1 + 796);
    }

    else
    {
      v17 = 0;
    }

    *(a1 + 8 * (v16 + v14 - v17) + 800) = 0;
    if (v15 <= v14)
    {
      if (v16 + 1 < v15)
      {
        LOWORD(v15) = 0;
      }

      *(a1 + 792) = v16 + 1 - v15;
    }

    else
    {
      *(a1 + 794) = v14 + 1;
    }

    v18 = 0.0;
  }

  v19 = sub_1000B6460(a1, v6);
  v21 = v20;
  sub_1000B7338(a1, *(a1 + 80) - *(a1 + 1884), v7, v18, v19, v20, *(a1 + 1888), *(a1 + 1896), v6, a3);
  *(a1 + 1884) = *(a1 + 80);
  *(a1 + 1888) = v18;
  *(a1 + 1896) = v21;
  v22 = ((*(**(a1 + 40) + 32))(*(a1 + 40)) + 96);
  if (*v22 != -1.0)
  {
    memcpy((a1 + 48), v22, 0x148uLL);
  }

  if (qword_1025D44D0 != -1)
  {
    sub_101AE36F4();
  }

  v23 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
  {
    v24 = a1;
    if (*(a1 + 23) < 0)
    {
      v24 = *a1;
    }

    v25 = *(a1 + 1880);
    v26 = *(a1 + 48);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    *buf = 136316418;
    *&buf[4] = v24;
    *&buf[12] = 1024;
    *&buf[14] = v25;
    *&buf[18] = 2048;
    *&buf[20] = v26;
    *&buf[28] = 1024;
    *&buf[30] = v27;
    *&buf[34] = 2048;
    *&buf[36] = v28;
    *v100 = 2048;
    *&v100[2] = v29;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][step],startTime,%f,stepCount,%u,stepDistance,%f,rawStepDistance,%f,", buf, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v52 = a1;
    if (*(a1 + 23) < 0)
    {
      v52 = *a1;
    }

    v53 = *(a1 + 1880);
    v54 = *(a1 + 48);
    v55 = *(a1 + 80);
    v56 = *(a1 + 88);
    v57 = *(a1 + 96);
    v79 = 136316418;
    v80 = v52;
    v81 = 1024;
    *v82 = v53;
    *&v82[4] = 2048;
    *&v82[6] = v54;
    *&v82[14] = 1024;
    *&v82[16] = v55;
    *&v82[20] = 2048;
    *&v82[22] = v56;
    *v83 = 2048;
    *&v83[2] = v57;
    v58 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLIndoorOutdoorGPSModel::GpsModelResults CLIndoorOutdoorGPSModel::computeProbabilities(CFAbsoluteTime)", "%s\n", v58);
    if (v58 != buf)
    {
      free(v58);
    }
  }

  if (v9)
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v30 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v31 = a1;
      if (*(a1 + 23) < 0)
      {
        v31 = *a1;
      }

      v32 = *(a1 + 1880);
      *buf = 136315906;
      *&buf[4] = v31;
      *&buf[12] = 1024;
      *&buf[14] = v32;
      *&buf[18] = 2048;
      *&buf[20] = v71;
      *&buf[28] = 2048;
      *&buf[30] = *(&v72 + 1);
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s[%d][turn-recv],startTime,%f,gyroHeadingRad,%f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D44D0 != -1)
      {
        sub_101AE36F4();
      }

      v33 = a1;
      if (*(a1 + 23) < 0)
      {
        v33 = *a1;
      }

      v34 = *(a1 + 1880);
      v79 = 136315906;
      v80 = v33;
      v81 = 1024;
      *v82 = v34;
      *&v82[4] = 2048;
      *&v82[6] = v71;
      *&v82[14] = 2048;
      *&v82[16] = *(&v72 + 1);
      v35 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLIndoorOutdoorGPSModel::GpsModelResults CLIndoorOutdoorGPSModel::computeProbabilities(CFAbsoluteTime)", "%s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }

  else
  {
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v36 = qword_1025D44D8;
    if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_DEBUG))
    {
      v37 = a1;
      if (*(a1 + 23) < 0)
      {
        v37 = *a1;
      }

      v38 = *(a1 + 1880);
      *buf = 136315650;
      *&buf[4] = v37;
      *&buf[12] = 1024;
      *&buf[14] = v38;
      *&buf[18] = 2048;
      *&buf[20] = v6 + -15.0;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "IndoorOutdoor,context,%s,[%d][turn-none],requestedSampleTime,%f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AE371C(a1, v6 + -15.0);
    }
  }

  *buf = v19;
  *&buf[8] = v7;
  sub_1000A3054((a1 + 1048), buf);
  v39 = sub_1000BE7E4(a1);
  v69 = 0u;
  v70 = 0u;
  sub_1000BE658(a1, &v69);
  v40 = v69;
  *a2 = v39;
  *(a2 + 8) = v40;
  v41 = *(a1 + 1880);
  *(a2 + 16) = *(a1 + 1960);
  *(a2 + 20) = v41;
  if (qword_1025D44D0 != -1)
  {
    sub_101AE36F4();
  }

  v42 = qword_1025D44D8;
  if (os_log_type_enabled(qword_1025D44D8, OS_LOG_TYPE_INFO))
  {
    v43 = a1;
    if (*(a1 + 23) < 0)
    {
      v43 = *a1;
    }

    v44 = *&v19;
    v45 = *(a1 + 1952);
    if (v19 >= 9999.0)
    {
      v44 = 0x40C3878000000000;
    }

    v46 = *(a1 + 376) + *(a1 + 378) - 1;
    v47 = *(a1 + 380);
    if (v46 < v47)
    {
      v47 = 0;
    }

    v48 = a1 + 16 * (v46 - v47);
    v50 = *(v48 + 384);
    v49 = *(v48 + 392);
    v51 = *(a1 + 1960);
    *buf = 136318210;
    *&buf[4] = v43;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    *&buf[22] = 2048;
    *&buf[24] = v44;
    *&buf[32] = 2048;
    *&buf[34] = v45;
    *&buf[42] = 2048;
    *v100 = v50;
    *&v100[8] = 2048;
    v101 = v49;
    v102 = 2048;
    v103 = v6;
    v104 = 1024;
    v105 = v51;
    v106 = 2048;
    v107 = v40;
    v108 = 2048;
    v109 = *(&v69 + 1);
    v110 = 2048;
    v111 = *(&v70 + 1);
    v112 = 1024;
    v113 = v70;
    v114 = 2048;
    v115 = v39;
    _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "IndoorOutdoor,GPSResult,context,%s,stepDeltaDistance,%f,gpsDeltaDistance,%f,fResidScalar,%f,fIMUDistanceX,%f,fIMUDistanceY,%f,stepTimestamp,%f,fGpsState,%d,gpsDiscordanceProbability,%f,gpsDiscordanceRawProbability,%f,gpsDiscordance,%f,numValidDiscordanceSamples,%d,llrBufferSumProbability,%f", buf, 0x7Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D44D0 != -1)
    {
      sub_101AE36F4();
    }

    v59 = a1;
    if (*(a1 + 23) < 0)
    {
      v59 = *a1;
    }

    v60 = *&v19;
    v61 = *(a1 + 1952);
    if (v19 >= 9999.0)
    {
      v60 = 0x40C3878000000000;
    }

    v62 = *(a1 + 376) + *(a1 + 378) - 1;
    v63 = *(a1 + 380);
    if (v62 < v63)
    {
      v63 = 0;
    }

    v64 = a1 + 16 * (v62 - v63);
    v66 = *(v64 + 384);
    v65 = *(v64 + 392);
    v67 = *(a1 + 1960);
    v79 = 136318210;
    v80 = v59;
    v81 = 2048;
    *v82 = v7;
    *&v82[8] = 2048;
    *&v82[10] = v60;
    *&v82[18] = 2048;
    *&v82[20] = v61;
    *&v82[28] = 2048;
    *v83 = v66;
    *&v83[8] = 2048;
    v84 = v65;
    v85 = 2048;
    v86 = v6;
    v87 = 1024;
    v88 = v67;
    v89 = 2048;
    v90 = v69;
    v91 = 2048;
    v92 = *(&v69 + 1);
    v93 = 2048;
    v94 = *(&v70 + 1);
    v95 = 1024;
    v96 = v70;
    v97 = 2048;
    v98 = v39;
    v68 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLIndoorOutdoorGPSModel::GpsModelResults CLIndoorOutdoorGPSModel::computeProbabilities(CFAbsoluteTime)", "%s\n", v68);
    if (v68 != buf)
    {
      free(v68);
    }
  }
}

void sub_1000BD89C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 128;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3B318(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA1B4();
        }

        return;
      }

      v10 = 256;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 >> 8));
    if (v13 == v12)
    {
      v16 = 0;
      v19 = 0;
      v15 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) >> 8));
    }

    else
    {
      v15 = (a1 + 56);
      v16 = (*v14 + 16 * v11);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 >> 8));
      v19 = (*v18 + 16 * v17);
    }

    v23 = sub_1000B0920(v14, v16, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 >> 8));
    v27 = *(a1 + 32) == v25 ? 0 : *v26 + 16 * v24;
    sub_1000B3638((a1 + 16), v23, v22, v26, v27);
    if (!*v15)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

void sub_1000BDB68(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 28;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 96) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100A3B3B4(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_1019C9EAC();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019CA3AC();
        }

        return;
      }

      v10 = 56;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 96) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x38));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + 8 * ((*(a1 + 56) + v11) / 0x38));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x38)) + 72 * (v11 % 0x38);
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x38));
      v19 = *v18 + 72 * (v17 % 0x38);
    }

    v23 = sub_100A3B6BC(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x38));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 72 * (v24 % 0x38));
    sub_100A3B450((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 96) = 0xBFF0000000000000;
    }
  }
}

uint64_t sub_1000BDE7C(uint64_t result, double a2)
{
  v3 = *(result + 24);
  v2 = *(result + 32);
  if (v3 != v2)
  {
    while (vabdd_f64(a2, *v3) <= 150.0)
    {
      v3 += 2;
      if (v3 == v2)
      {
        return result;
      }
    }

    if (v3 != v2)
    {
      v4 = v3 + 2;
      if (v3 + 2 != v2)
      {
        do
        {
          if (vabdd_f64(a2, *v4) <= 150.0)
          {
            *v3 = *v4;
            v3 += 2;
          }

          v4 += 2;
        }

        while (v4 != v2);
        v2 = *(result + 32);
      }
    }
  }

  if (v3 != v2)
  {
    *(result + 32) = v3;
  }

  return result;
}

void sub_1000BDF40(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a1 + 64);
  a2.n128_u64[0] = *(a1 + 64);
  *(a1 + 64) = v2;
  if (*(a1 + 8) == 1 && *(a1 + 72) < v2)
  {
    *(a1 + 8) = 0;
    v5 = *(*a1 + 24);

    v5(a2);
    return;
  }

  if (a2.n128_f64[0] > v2)
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    *(a1 + 56) = 0;
    v8 = (v7 - v6) >> 3;
    if (v8 >= 3)
    {
      do
      {
        operator delete(*v6);
        v9 = *(a1 + 32);
        v6 = (*(a1 + 24) + 8);
        *(a1 + 24) = v6;
        v8 = (v9 - v6) >> 3;
      }

      while (v8 > 2);
    }

    if (v8 == 1)
    {
      v10 = 13;
    }

    else
    {
      if (v8 != 2)
      {
LABEL_17:
        *(a1 + 136) = 0xBFF0000000000000;
        if (*(a1 + 8) == 1)
        {
          sub_100F99158(a1);
        }

        if (qword_1025D4200 != -1)
        {
          sub_101AEC05C();
        }

        v20 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v21 = *v4;
          v28 = 134218240;
          v29 = v2;
          v30 = 2048;
          v31 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "time rollback on update, currentTime, %f, lastUpdateTime, %f", &v28, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEC55C();
        }

        return;
      }

      v10 = 26;
    }

    *(a1 + 48) = v10;
    goto LABEL_17;
  }

  if (*(a1 + 136) != -1.0)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v14 = (v12 + 8 * (v11 / 0x1A));
    if (v13 == v12)
    {
      v15 = 0;
      v19 = 0;
      v16 = (a1 + 56);
      v18 = (v12 + ((((*(a1 + 56) + v11) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
    }

    else
    {
      v15 = *(v12 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A);
      v16 = (a1 + 56);
      v17 = *(a1 + 56) + v11;
      v18 = (v12 + 8 * (v17 / 0x1A));
      v19 = *v18 + 152 * (v17 % 0x1A);
    }

    v23 = sub_100F9DE54(v14, v15, v18, v19, *&v2, a1);
    v24 = *(a1 + 48) + *(a1 + 56);
    v25 = *(a1 + 24);
    v26 = (v25 + 8 * (v24 / 0x1A));
    v27 = *(a1 + 32) == v25 ? 0 : (*v26 + 152 * (v24 % 0x1A));
    sub_1000C8D14((a1 + 16), v23, v22, v26, v27);
    if (!*v16)
    {
      *(a1 + 136) = 0xBFF0000000000000;
    }
  }
}