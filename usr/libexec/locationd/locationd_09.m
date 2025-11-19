void sub_1000A0150(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x567]) < 0)
  {
    operator delete(STACK[0x550]);
  }

  (*(*v1 + 8))(v1);
  sub_10156F414(&STACK[0x2D0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A0224(uint64_t result)
{
  *(result + 392) = 0;
  *(result + 400) = 8;
  return result;
}

BOOL sub_1000A0234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v3 = (a2 + 16);
  v6 = *(a3 + 24);
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1047552999 * ((v5 - *v4) >> 3) + 2 * (v4 - *(a3 + 16)) + 1047552999 * ((v6 - **(a3 + 16)) >> 3);
  }

  if (v7 >= 5)
  {
    v7 = 5;
  }

  v16 = *v3;
  sub_1000A2AE4(&v16, -v7);
  if (*(&v16 + 1) == v5)
  {
    return 0;
  }

  v9 = 0;
  v10 = *v4;
  do
  {
    v11 = v5;
    if (v5 == v10)
    {
      v11 = *(v4 - 1) + 5248;
    }

    v12 = *(v11 - 104);
    v13 = *(v11 - 160) & 0xFD;
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13 == 1;
    }

    if (v14)
    {
      ++v9;
    }

    if (v5 == v10)
    {
      v15 = *--v4;
      v10 = v15;
      v5 = v15 + 5248;
    }

    v5 -= 328;
  }

  while (*(&v16 + 1) != v5);
  return v9 > 2;
}

id sub_1000A0344(uint64_t a1, int a2, void *a3)
{
  result = sub_100099750(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

void *sub_1000A0394(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = a1[56];
  if (v3)
  {
    (*(*v3 + 48))(v3, __dst);
  }

  v4 = a1[7];
  if (v4)
  {
    v5 = v4 + a1[6] - 1;
    v6 = a1[3];
    v7 = (*(v6 + ((v5 >> 1) & 0x7FFFFFFFFFFFFFF8)))[41 * (v5 & 0xF)];
    if (v7 > __dst[0])
    {
      v8 = a1[4];
      a1[7] = 0;
      v9 = (v8 - v6) >> 3;
      if (v9 >= 3)
      {
        do
        {
          operator delete(*v6);
          v10 = a1[4];
          v6 = (a1[3] + 8);
          a1[3] = v6;
          v9 = (v10 - v6) >> 3;
        }

        while (v9 > 2);
      }

      if (v9 == 1)
      {
        v11 = 8;
      }

      else
      {
        if (v9 != 2)
        {
LABEL_12:
          if (qword_1025D4200 != -1)
          {
            sub_101903090();
          }

          v12 = qword_1025D4208;
          if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v16 = __dst[0];
            v17 = 2048;
            v18 = v7;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101903ABC();
          }

          goto LABEL_18;
        }

        v11 = 16;
      }

      a1[6] = v11;
      goto LABEL_12;
    }
  }

LABEL_18:
  sub_10009DA24(a1 + 2, __dst);
  return memcpy(a1 + 12, __dst, 0x148uLL);
}

BOOL sub_1000A0588(uint64_t a1, double *a2, double a3)
{
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = sub_1000A09A8(*(a1 + 640), &v32, &v30, a3);
  if (result)
  {
    v6 = *(&v33 + 1);
    v7 = *v33;
    v8 = *(&v33 + 1) - *v33;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 6);
    v10 = v9 - 1;
    if (v8 < 193)
    {
      v14 = ((21 - v9) * 0x8618618618618619) >> 64;
      v15 = v14 + ((21 - v9 - v14) >> 1);
      v12 = *(v33 - 8 * (v15 >> 4));
      v13 = v12 + 192 * (v9 - 21 + 21 * (v15 >> 4)) + 3840;
      if (*(&v31 + 1) == v13)
      {
        return 0;
      }

      v11 = -(v15 >> 4);
    }

    else
    {
      v11 = v10 / 0x15;
      v12 = *(v33 + 8 * (v10 / 0x15));
      v13 = v12 + 192 * (v10 % 0x15);
      if (*(&v31 + 1) == v13)
      {
        return 0;
      }
    }

    if (v13 == v12)
    {
      v13 = *(v33 + 8 * v11 - 8) + 4032;
    }

    if (*(v13 - 192) > a3)
    {
      return 0;
    }

    v16 = *(&v33 + 1);
    if (*(&v33 + 1) == v7)
    {
      v16 = *(v33 - 8) + 4032;
    }

    if (*(v16 - 192) <= a3)
    {
      return 0;
    }

    if (v8 < 193)
    {
      v20 = ((21 - v9) * 0x8618618618618619) >> 64;
      v21 = (v20 + ((21 - v9 - v20) >> 1)) >> 4;
      v17 = -v21;
      v18 = *(v33 - 8 * v21);
      v19 = v18 + 192 * (v9 - 21 + 21 * v21) + 3840;
    }

    else
    {
      v17 = v10 / 0x15;
      v18 = *(v33 + 8 * (v10 / 0x15));
      v19 = v18 + 192 * (v10 % 0x15);
    }

    if (v19 == v18)
    {
      v19 = *(v33 + 8 * v17 - 8) + 4032;
    }

    if (v8 < 193)
    {
      v25 = 21 - v9;
      v26 = ((21 - v9) * 0x8618618618618619) >> 64;
      v27 = (v26 + ((v25 - v26) >> 1)) >> 4;
      v22 = -v27;
      v23 = *(v33 - 8 * v27);
      v24 = v23 + 192 * (21 * v27 - v25) + 3840;
    }

    else
    {
      v22 = v10 / 0x15;
      v23 = *(v33 + 8 * (v10 / 0x15));
      v24 = v23 + 192 * (v10 % 0x15);
    }

    if (v24 == v23)
    {
      v24 = *(v33 + 8 * v22 - 8) + 4032;
    }

    if (*(&v33 + 1) == v7)
    {
      v29 = *(v33 - 8);
      v28 = (v29 + 3840);
      v6 = v29 + 4032;
    }

    else
    {
      v28 = (*(&v33 + 1) - 192);
    }

    *a2 = sub_1000A1DCC(*(v19 - 192), *(v24 - 144), *v28, *(v6 - 144), a3);
    return 1;
  }

  return result;
}

uint64_t sub_1000A085C(uint64_t a1, double *a2, double a3, double a4)
{
  v10 = 0.0;
  v11 = 0.0;
  *a2 = 0.0;
  if (a3 <= a4)
  {
    if (a3 != a4)
    {
      result = sub_1000A0588(a1, &v11, a3);
      if (!result)
      {
        return result;
      }

      result = sub_1000A0588(a1, &v10, a4);
      if (!result)
      {
        return result;
      }

      *a2 = v10 - v11;
    }

    return 1;
  }

  if (qword_1025D4270 != -1)
  {
    sub_101A3472C();
  }

  v6 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v13 = a3;
    v14 = 2050;
    v15 = a4;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Time rolled back! t1,%{public}f,t2,%{public}f", buf, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A355C4();
    return 0;
  }

  return result;
}

BOOL sub_1000A09A8(void *a1, uint64_t a2, void *a3, double a4)
{
  v6 = a1[7];
  v7 = a1[4];
  v8 = (v7 + 8 * (v6 / 0x15));
  if (a1[5] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 192 * (v6 % 0x15);
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v8;
  a3[3] = v9;
  v10 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v10;
  v11 = a1[8];
  if (!v11)
  {
    return 0;
  }

  v12 = a1[7] + v11;
  v13 = ((v12 - 1) * 0x8618618618618619) >> 64;
  v14 = (v13 + ((v12 - 1 - v13) >> 1)) >> 4;
  v15 = a1[4];
  v16 = a1[5];
  v17 = (v15 + 8 * (v12 / 0x15));
  if (*(*(v15 + 8 * v14) + 192 * (v12 - 1 - 21 * v14)) >= a4)
  {
    if (v16 == v15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *v17 + 192 * (v12 % 0x15);
    }

    v21 = a3[3];
    if (v21 != v20)
    {
      v22 = *v17;
      v23 = v20;
      v24 = v17;
      while (1)
      {
        if (v23 == v22)
        {
          v22 = *(v24 - 1);
          if (*(v22 + 3840) <= a4)
          {
LABEL_23:
            v26.n128_u64[0] = v17;
            v26.n128_u64[1] = v20;
            v27 = v24;
            v28 = v23;
            sub_100A5E074(&v26, v29);
            v25 = v29[1];
            *a2 = v29[0];
            *(a2 + 16) = v25;
            v20 = a3[3];
            return *(a2 + 24) != v20;
          }

          v23 = v22 + 4032;
          --v24;
        }

        else if (*(v23 - 192) <= a4)
        {
          goto LABEL_23;
        }

        v23 -= 192;
        if (v21 == v23)
        {
          v20 = a3[3];
          return *(a2 + 24) != v20;
        }
      }
    }

    return *(a2 + 24) != v20;
  }

  else
  {
    if (v16 == v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = *v17 + 192 * (v12 % 0x15);
    }

    result = 0;
    *a2 = v17;
    *(a2 + 8) = v18;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
  }

  return result;
}

void sub_1000A0B7C(uint64_t a1, double *a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    sub_10009AA90(v4, a2);
    if (sub_10009B650(a1 + 168))
    {
      v5 = *(a1 + 160);
      v6 = *(v5 + 480);
      v26 = *(v5 + 464);
      v27 = v6;
      v28 = *(v5 + 496);
      v29 = *(v5 + 512);
      v7 = *(v5 + 416);
      v22 = *(v5 + 400);
      v23 = v7;
      v8 = *(v5 + 448);
      v24 = *(v5 + 432);
      v25 = v8;
      v9 = *(v5 + 352);
      v18 = *(v5 + 336);
      v19 = v9;
      v10 = *(v5 + 384);
      v20 = *(v5 + 368);
      v21 = v10;
      if (*(a1 + 416) && *(a1 + 425) == 1)
      {
        if (BYTE8(v19) == 1)
        {
          v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:*a2];
          [*(a1 + 416) writeToHealthRunningSpeed:v11 startDate:v11 endDate:*&v19];
        }

        else
        {
          if (qword_1025D4270 != -1)
          {
            sub_101AD126C();
          }

          v12 = qword_1025D4278;
          if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "[PaceController] Not writing to HK, invalid running speed", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AD1280();
          }
        }
      }

      if (*(a1 + 424) == 1)
      {
        sub_10068011C(&v18, buf);
        if (qword_102637F48 != -1)
        {
          sub_101AD136C();
        }

        if (qword_102637F50)
        {
          operator new();
        }

        PB::Base::~Base(buf);
      }

      if (qword_1025D4270 != -1)
      {
        sub_101AD1394();
      }

      v13 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134223872;
        v31 = v18.i64[0];
        v32 = 2048;
        v33 = v18.i64[1];
        v34 = 2048;
        v35 = v19;
        v36 = 2048;
        v37 = *(&v21 + 1);
        v38 = 2048;
        v39 = *(&v22 + 1);
        v40 = 2048;
        v41 = v23;
        v42 = 2048;
        v43 = *(&v23 + 1);
        v44 = 2048;
        v45 = v20;
        v46 = 2048;
        v47 = *(&v20 + 1);
        v48 = 2048;
        v49 = v24;
        v50 = 2048;
        v51 = *(&v24 + 1);
        v52 = 1026;
        v53 = BYTE1(v21);
        v54 = 1026;
        v55 = v21;
        v56 = 2048;
        v57 = v25;
        v58 = 2048;
        v59 = *(&v25 + 1);
        v60 = 2048;
        v61 = *(&v26 + 1);
        v62 = 2048;
        v63 = v26;
        v64 = 1026;
        v65 = BYTE8(v19);
        v66 = 2048;
        v67 = v22;
        v68 = 2048;
        v69 = v27;
        v70 = 2048;
        v71 = *(&v27 + 1);
        v72 = 2048;
        v73 = v28;
        v74 = 2048;
        v75 = *(&v28 + 1);
        v76 = 1026;
        v77 = HIBYTE(v29);
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "[RunningSpeedKF],startTime,%.2f,endTime,%.2f,runningSpeed,%.2f,deltaPedDist,%.2f,deltaOdoDist,%.2f,deltaPedTime,%.2f,deltaOdoTime,%.2f,pedSpeed,%.2f,odoSpeed,%.2f,algDelay,%.2f,biasFactor,%.2f,isValidPedometerSpeed,%{public}d,isValidOdometerSpeed,%{public}d,stateCovariance,%.2f,processNoise,%.2f,epsPed,%.2f,epsOdo,%.2f,isValidRunningSpeed,%{public}d,deltaCalPedDist,%.2f,measNoiseOdo,%.3f,measNoisePed,%.3f,kalmanGainOdo,%.2f,kalmanGainPed,%.2f,isTrackRunOdometer,%{public}d", buf, 0xE2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AD13BC(v18.i64);
      }
    }
  }

  v14 = *a2;
  v15 = *(a1 + 408);
  v16 = sub_1000A0200((a2 + 1));
  sub_10009B69C((a1 + 8), a2, v15, v16, v14);
  *(a1 + 384) = v17;
}

double sub_1000A0FB0(void *a1)
{
  v1 = a1[85];
  if (v1)
  {
    v3 = v1;
    v4 = a1[84];
    v5 = a1[81];
    v6 = (*(v5 + 8 * ((v1 + v4 - 1) / 0xAA)) + 24 * ((v1 + v4 - 1) % 0xAA));
    v7 = (*(v5 + 8 * (v4 / 0xAA)) + 24 * (v4 % 0xAA));
    v8 = *v6 - *v7 + 2.56;
    if (v3 * 2.56 / v8 >= 0.5)
    {
      v12 = v6[1] - v7[1];
      v13 = v6[2] - v7[2];
      if (v13 <= 0.0 || v12 <= 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10032515C();
        }

        v14 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v21 = v12;
          v22 = 2048;
          v23 = v13;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "[RunningSpeedKF] calcBiasFactor - invalid (ped, ref) buffer distance: %.2f, %.2f", buf, 0x16u);
        }

        v10 = 0.0;
        if (sub_10000A100(121, 0))
        {
          sub_101B00CB4();
        }
      }

      else if (v13 <= 20.0 || v12 <= 0.0)
      {
        if (qword_1025D4270 != -1)
        {
          sub_10032515C();
        }

        v15 = qword_1025D4278;
        if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
        {
          v16 = a1[85] + a1[84] - 1;
          v17 = *(*(a1[81] + 8 * (v16 / 0xAA)) + 24 * (v16 % 0xAA));
          *buf = 134218496;
          v21 = v17;
          v22 = 2048;
          v23 = v12;
          v24 = 2048;
          v25 = v13;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "[RunningSpeedKF] calcBiasFactor - insufficient distance (latest time, ped, odo): %.2f, %.2f, %.2f", buf, 0x20u);
        }

        v10 = 0.0;
        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4270 != -1)
          {
            sub_101B0048C();
          }

          v19 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "double CLPedometer::RunningSpeedKF::calcBiasFactor() const", "%s\n", v19);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        return v13 / v12;
      }
    }

    else
    {
      if (qword_1025D4270 != -1)
      {
        sub_10032515C();
      }

      v9 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v21 = v3;
        v22 = 2048;
        v23 = v8;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[RunningSpeedKF] calcBiasFactor - fDistanceBuffer has too many gaps (buffer size, buffer duration): %.2f, %.2f", buf, 0x16u);
      }

      v10 = 0.0;
      if (sub_10000A100(121, 2))
      {
        sub_101B00DB4();
      }
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_10032515C();
    }

    v11 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "[RunningSpeedKF] calcBiasFactor - empty distance buffer", buf, 2u);
    }

    v10 = 0.0;
    if (sub_10000A100(121, 2))
    {
      sub_101B00EB4();
    }
  }

  return v10;
}

uint64_t sub_1000A144C(uint64_t a1, uint64_t a2, int a3)
{
  if (*a2 != 1)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  if (v3 >= 0.0 && v3 <= 13.0)
  {
    return a3 ^ 1u;
  }

  if (qword_1025D4270 != -1)
  {
    sub_10032515C();
  }

  v5 = qword_1025D4278;
  if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "[RunningSpeedKF] Running speed out of range %.2f", &v7, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B010A0();
    return 0;
  }

  return result;
}

uint64_t sub_1000A154C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0xA)
  {
    return 0;
  }

  else
  {
    return dword_101D076A8[v1];
  }
}

BOOL sub_1000A1570(double a1, uint64_t a2, void *a3, double *a4)
{
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  result = sub_1000A09A8(a3, &v33, &v31, a1);
  if (result)
  {
    v7 = *(&v34 + 1);
    v8 = *v34;
    v9 = *(&v34 + 1) - *v34;
    v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 6);
    v11 = v10 - 1;
    if (v9 < 193)
    {
      v15 = ((21 - v10) * 0x8618618618618619) >> 64;
      v16 = v15 + ((21 - v10 - v15) >> 1);
      v13 = *(v34 - 8 * (v16 >> 4));
      v14 = v13 + 192 * (v10 - 21 + 21 * (v16 >> 4)) + 3840;
      if (*(&v32 + 1) == v14)
      {
        return 0;
      }

      v12 = -(v16 >> 4);
    }

    else
    {
      v12 = v11 / 0x15;
      v13 = *(v34 + 8 * (v11 / 0x15));
      v14 = v13 + 192 * (v11 % 0x15);
      if (*(&v32 + 1) == v14)
      {
        return 0;
      }
    }

    if (v14 == v13)
    {
      v14 = *(v34 + 8 * v12 - 8) + 4032;
    }

    if (*(v14 - 192) > a1)
    {
      return 0;
    }

    v17 = *(&v34 + 1);
    if (*(&v34 + 1) == v8)
    {
      v17 = *(v34 - 8) + 4032;
    }

    if (*(v17 - 192) <= a1)
    {
      return 0;
    }

    if (v9 < 193)
    {
      v21 = ((21 - v10) * 0x8618618618618619) >> 64;
      v22 = (v21 + ((21 - v10 - v21) >> 1)) >> 4;
      v18 = -v22;
      v19 = *(v34 - 8 * v22);
      v20 = v19 + 192 * (v10 - 21 + 21 * v22) + 3840;
    }

    else
    {
      v18 = v11 / 0x15;
      v19 = *(v34 + 8 * (v11 / 0x15));
      v20 = v19 + 192 * (v11 % 0x15);
    }

    if (v20 == v19)
    {
      v20 = *(v34 + 8 * v18 - 8) + 4032;
    }

    if (v9 < 193)
    {
      v26 = 21 - v10;
      v27 = ((21 - v10) * 0x8618618618618619) >> 64;
      v28 = (v27 + ((v26 - v27) >> 1)) >> 4;
      v23 = -v28;
      v24 = *(v34 - 8 * v28);
      v25 = v24 + 192 * (21 * v28 - v26) + 3840;
    }

    else
    {
      v23 = v11 / 0x15;
      v24 = *(v34 + 8 * (v11 / 0x15));
      v25 = v24 + 192 * (v11 % 0x15);
    }

    if (v25 == v24)
    {
      v25 = *(v34 + 8 * v23 - 8) + 4032;
    }

    if (*(&v34 + 1) == v8)
    {
      v30 = *(v34 - 8);
      v29 = (v30 + 3840);
      v7 = v30 + 4032;
    }

    else
    {
      v29 = (*(&v34 + 1) - 192);
    }

    *a4 = sub_1000A1DCC(*(v20 - 192), *(v25 - 144), *v29, *(v7 - 144), a1);
    return 1;
  }

  return result;
}

double sub_1000A1844(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  memset(v4, 0, sizeof(v4));
  v1 = sub_1000A09A8(*a1, &v5, v4, *(a1 + 32) + 5.0);
  result = -1.0;
  if (v1)
  {
    v3 = *(&v6 + 1);
    if (*(&v6 + 1) == *v6)
    {
      v3 = *(v6 - 8) + 4032;
    }

    return *(v3 - 192);
  }

  return result;
}

void *sub_1000A18B0(void *result, int a2, double a3)
{
  if (a2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    result = sub_1000A09A8(result[80], &v23, &v21, a3);
    if (result)
    {
      v4 = *(&v24 + 1);
      v5 = *(&v24 + 1) - *v24;
      v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 6);
      if (v5 < 193)
      {
        v10 = ((21 - v6) * 0x8618618618618619) >> 64;
        v11 = (v10 + ((21 - v6 - v10) >> 1)) >> 4;
        v9 = *(v24 - 8 * v11) + 192 * (v6 - 21 + 21 * v11) + 3840;
      }

      else
      {
        v7 = ((v6 - 1) * 0x8618618618618619) >> 64;
        v8 = (v7 + ((v6 - 1 - v7) >> 1)) >> 4;
        v9 = *(v24 + 8 * v8) + 192 * (v6 - 1 - 21 * v8);
      }

      if (*(&v22 + 1) != v9)
      {
        if (v5 < 385)
        {
          v15 = ((22 - v6) * 0x8618618618618619) >> 64;
          v16 = (v15 + ((22 - v6 - v15) >> 1)) >> 4;
          v14 = *(v24 - 8 * v16) + 192 * (v6 - 22 + 21 * v16) + 3840;
        }

        else
        {
          v12 = ((v6 - 2) * 0x8618618618618619) >> 64;
          v13 = (v12 + ((v6 - 2 - v12) >> 1)) >> 4;
          v14 = *(v24 + 8 * v13) + 192 * (v6 - 2 - 21 * v13);
        }

        if (*(&v22 + 1) != v14)
        {
          v17 = v5 < 577 ? *(v24 - 8 * ((23 - v6) / 0x15)) + 192 * (21 * ((23 - v6) / 0x15) - (23 - v6)) + 3840 : *(v24 + 8 * ((v6 - 3) / 0x15)) + 192 * ((v6 - 3) % 0x15);
          if (*(&v22 + 1) != v17)
          {
            if (*(&v24 + 1) == *v24)
            {
              v4 = *(v24 - 8) + 4032;
            }

            if (*(v4 - 192) > a3)
            {
              v18 = v23;
              v19[0] = v24;
              sub_10009A4A0(v19, -1);
              v19[1] = v18;
              v20 = v19[0];
              sub_10009A4A0(v19, -1);
              if (*(&v19[0] + 1) != *(&v22 + 1))
              {
                v19[0] = v20;
                sub_10009A4A0(v19, -1);
              }

              v19[0] = v20;
              result = sub_10009A4A0(v19, -2);
              if (*(&v19[0] + 1) != *(&v22 + 1))
              {
                v19[0] = v20;
                return sub_10009A4A0(v19, -2);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000A1C28(uint64_t a1)
{
  if (*(a1 + 160) && sub_10009B650(a1 + 168))
  {
    return 3;
  }

  if (*(a1 + 148) < 1)
  {
    return 1;
  }

  return 2;
}

double sub_1000A1C74(uint64_t a1)
{
  if (!*(a1 + 160) || !sub_10009B650(a1 + 168))
  {
    return *(a1 + 384);
  }

  v2 = *(a1 + 160);
  if (v2)
  {
    if (*(v2 + 360))
    {
      v3 = *(v2 + 352);
      v4 = 1.0 / v3;
      v5 = v3 == 0.0;
      result = 0.0;
      if (!v5)
      {
        return v4;
      }

      return result;
    }

    if (qword_1025D4270 != -1)
    {
      sub_101AD126C();
    }

    v9 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[PaceController] getPace - RunningSpeedKF pace invalid", v11, 2u);
    }

    v10 = sub_10000A100(121, 2);
    result = 0.0;
    if (v10)
    {
      sub_101AD1720();
      return 0.0;
    }
  }

  else
  {
    if (qword_1025D4270 != -1)
    {
      sub_101AD126C();
    }

    v7 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "[PaceController] getPace - invalid output configuration!", buf, 2u);
    }

    v8 = sub_10000A100(121, 0);
    result = 0.0;
    if (v8)
    {
      sub_101AD1808();
      return 0.0;
    }
  }

  return result;
}

void sub_1000A1DEC(uint64_t a1, int a2, int a3, double a4, double a5, double a6, double a7, float64_t a8, float64_t a9)
{
  std::mutex::lock(a1);
  if (*(a1 + 208) == 1)
  {
    if (*(a1 + 200) < 0.0)
    {
      *(a1 + 200) = CFAbsoluteTimeGetCurrent();
      *(a1 + 216) = a4;
      *(a1 + 232) = a5;
      *(a1 + 248) = a6;
      *(a1 + 264) = a7;
      *(a1 + 280) = a2;
      if (qword_1025D4270 != -1)
      {
        sub_101A6FE6C();
      }

      v16 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        v17 = *(a1 + 200);
        *buf = 134217984;
        v23 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLWorkoutDistanceCoreAnalyzer::collectCoreAnalytics: Initializing core analytics time: %f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A6FE80(buf);
        v19 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLWorkoutDistanceCoreAnalyzer::collectCoreAnalytics(double, double, double, double, double, double, int, BOOL)", "%s\n", v19);
        if (v19 != buf)
        {
          free(v19);
        }
      }
    }

    *(a1 + 224) = a4;
    *(a1 + 240) = a5;
    *(a1 + 256) = a6;
    *(a1 + 272) = a7;
    *(a1 + 284) = a2;
    v18.f64[0] = a8;
    v18.f64[1] = a9;
    *(a1 + 296) = vaddq_f64(*(a1 + 296), v18);
    *(a1 + 288) += a3;
    *(a1 + 292) += a3 ^ 1;
    ++*(a1 + 212);
  }

  std::mutex::unlock(a1);
}

void sub_1000A2048(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_1000A20A4(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101B2A6DC();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 104);
      v8 = *(a1 + 121);
      *buf = 134218752;
      v22 = v7 - v4;
      v23 = 2048;
      v24 = v4;
      v25 = 2048;
      v26 = v7;
      v27 = 1024;
      v28 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, elevation, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101B2A268();
      }

      v20 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLElevationChangeEntry>::update(CFAbsoluteTime)", "%s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = (v10 + 8 * (v9 >> 6));
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12 + ((*(a1 + 56) & 0x3FLL) << 6);
  }

  v14 = v10 + 8 * (v9 >> 6);
LABEL_19:
  v15 = v13;
  while (1)
  {
    v16 = v11 == v10 ? 0 : *(v10 + (((*(a1 + 64) + v9) >> 3) & 0x1FFFFFFFFFFFFFF8)) + (((*(a1 + 64) + v9) & 0x3F) << 6);
    if (v15 == v16 || *(a1 + 104) + -1200.0 <= *(v15 + 8))
    {
      break;
    }

    v13 += 64;
    v15 += 64;
    if (*v14 + 4096 == v13)
    {
      v17 = *(v14 + 8);
      v14 += 8;
      v13 = v17;
      goto LABEL_19;
    }
  }

  if (v11 == v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = *v12 + ((*(a1 + 56) & 0x3FLL) << 6);
  }

  return sub_1000A2D90((a1 + 24), v12, v18, v14, v13);
}

uint64_t sub_1000A23E0()
{
  if (qword_10265EF48 != -1)
  {
    sub_101A926F8();
  }

  return qword_102637F38;
}

unint64_t sub_1000A2418(uint64_t a1, double a2)
{
  v4 = *(a1 + 104);
  *(a1 + 104) = a2;
  v5 = a2 > 0.0;
  if (v4 <= a2)
  {
    v5 = 0;
  }

  *(a1 + 120) = v5;
  if (v5)
  {
    if (qword_1025D4230 != -1)
    {
      sub_101A35BA4();
    }

    v6 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 8);
      v8 = *(a1 + 104);
      v9 = *(a1 + 121);
      *buf = 136316162;
      v23 = v7;
      v24 = 2048;
      v25 = v8 - v4;
      v26 = 2048;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Input, %s, time rolled back. Delta %f, Previous Time %f, Current Time %f, Always Active %d.", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101A35CA8();
      }

      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNatalieInput<CLMotionStateMediator_Type::MediatedMotionActivity>::update(CFAbsoluteTime) [T = CLMotionStateMediator_Type::MediatedMotionActivity]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }

  if (*(a1 + 80) == 1 && (*(a1 + 121) & 1) == 0 && (*(a1 + 88) < a2 || *(a1 + 120) == 1) && (*(*a1 + 72))(a1))
  {
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = (v11 + 8 * (v10 / 0x11));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*v13 + 232 * (v10 % 0x11));
  }

  v15 = (v11 + 8 * (v10 / 0x11));
LABEL_19:
  v16 = v14;
  while (1)
  {
    v17 = v12 == v11 ? 0 : *(*(a1 + 32) + 8 * ((*(a1 + 64) + v10) / 0x11)) + 232 * ((*(a1 + 64) + v10) % 0x11);
    if (v16 == v17 || vabdd_f64(*(a1 + 104), *v16) <= 1200.0)
    {
      break;
    }

    v16 += 29;
    v14 += 232;
    if ((*v15 + 3944) == v14)
    {
      v18 = *(v15 + 1);
      v15 += 8;
      v14 = v18;
      goto LABEL_19;
    }
  }

  if (v12 == v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = (*v13 + 232 * (v10 % 0x11));
  }

  return sub_100C4ACDC((a1 + 24), v13, v19, v15, v14);
}

uint64_t sub_1000A2798(uint64_t a1, uint64_t a2)
{
  *(a2 + 224) = 0;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = (*(*a1 + 16))(a1, &v18, &v16);
  if (result)
  {
    v4 = *(&v19 + 1);
    if (*(&v19 + 1) == *(&v17 + 1))
    {
      return 0;
    }

    else
    {
      if (*v19 == *(&v19 + 1))
      {
        v4 = *(v19 - 8) + 3944;
      }

      v5 = *(v4 - 232);
      v6 = *(v4 - 200);
      *(a2 + 16) = *(v4 - 216);
      *(a2 + 32) = v6;
      *a2 = v5;
      v7 = *(v4 - 184);
      v8 = *(v4 - 168);
      v9 = *(v4 - 136);
      *(a2 + 80) = *(v4 - 152);
      *(a2 + 96) = v9;
      *(a2 + 48) = v7;
      *(a2 + 64) = v8;
      v10 = *(v4 - 120);
      v11 = *(v4 - 104);
      v12 = *(v4 - 72);
      *(a2 + 144) = *(v4 - 88);
      *(a2 + 160) = v12;
      *(a2 + 112) = v10;
      *(a2 + 128) = v11;
      v13 = *(v4 - 56);
      v14 = *(v4 - 40);
      v15 = *(v4 - 24);
      *(a2 + 224) = *(v4 - 8);
      *(a2 + 192) = v14;
      *(a2 + 208) = v15;
      *(a2 + 176) = v13;
      return 1;
    }
  }

  return result;
}

unint64_t sub_1000A28B0(void *a1, char *a2, char *a3, char *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x8F9C18F9C18F9C19 * (&a5[-*a4] >> 3) + 2 * (a4 - a2) + 0x7063E7063E7063E7 * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 >> 4));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = &(*v9)[328 * (a1[4] & 0xFLL)];
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x8F9C18F9C18F9C19 * (&a3[-*a2] >> 3) + 2 * (a2 - v9) + 0x7063E7063E7063E7 * ((v10 - *v9) >> 3);
  }

  v22[0].n128_u64[0] = v8 + 8 * (v7 >> 4);
  v22[0].n128_u64[1] = v10;
  sub_1000A2AE4(v22, v11);
  if (v6 >= 1)
  {
    v12 = v22[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_1000A2AE4(v22, v6);
      sub_1000AA884(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v22[0].n128_u64[0], v22[0].n128_u64[1], v22);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_1000A2AE4(v22, v6);
      v13 = v22[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 >> 4));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = &(*v16)[328 * (v14 & 0xF)];
      }

      v22[0] = v12;
      sub_1000AAFA4(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v22);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[1];
  if (a1[2] == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v19 + 8 * (a1[4] >> 4)) + 328 * (a1[4] & 0xFLL);
  }

  v22[0].n128_u64[0] = v19 + 8 * (a1[4] >> 4);
  v22[0].n128_u64[1] = v20;
  sub_1000A2AE4(v22, v11);
  return v22[0].n128_u64[0];
}

uint64_t **sub_1000A2AE4(uint64_t **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x7063E7063E7063E7 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v7 = 15 - v3;
      v8 = &v2[-(v7 >> 4)];
      *result = v8;
      v5 = *v8;
      v6 = ~v7 & 0xF;
    }

    else
    {
      v4 = (v2 + ((v3 >> 1) & 0x7FFFFFFFFFFFFFF8));
      *result = v4;
      v5 = *v4;
      v6 = v3 & 0xF;
    }

    result[1] = (v5 + 328 * v6);
  }

  return result;
}

double sub_1000A2B60(void *a1, double *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  if (v6 == v8)
  {
    sub_1005A8588(a1);
    v5 = a1[1];
    v7 = a1[5];
    v8 = a1[4] + v7;
  }

  result = *a2;
  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  a1[5] = v7 + 1;
  return result;
}

uint64_t sub_1000A2BE8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

BOOL sub_1000A2C48(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = (v5 + 8 * (v4 / 0x11));
  if (*(a1 + 40) == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 232 * (v4 % 0x11);
  }

  *a3 = v6;
  a3[1] = v7;
  a3[2] = v6;
  a3[3] = v7;
  v8 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v8;
  v9 = *(a1 + 56) + *(a1 + 64);
  v10 = *(a1 + 32);
  v11 = (v10 + 8 * (v9 / 0x11));
  if (*(a1 + 40) == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11 + 232 * (v9 % 0x11);
  }

  if (a3[3] != v12)
  {
    v13 = *v11;
    v14 = 1.79769313e308;
    v15 = v12;
    v16 = v11;
    while (1)
    {
      v17 = v15;
      if (v15 == v13)
      {
        v17 = *(v16 - 1) + 3944;
      }

      v18 = vabdd_f64(*(v17 - 232), a4);
      if (v18 < v14 && v18 < *(a1 + 16))
      {
        *a2 = v11;
        *(a2 + 8) = v12;
        *(a2 + 16) = v16;
        *(a2 + 24) = v15;
        v13 = *v16;
        v19 = v15;
        if (v15 == *v16)
        {
          v19 = *(v16 - 1) + 3944;
        }

        v14 = v18;
        if (*(v19 - 232) == a4)
        {
          break;
        }
      }

      if (v15 == v13)
      {
        v20 = *--v16;
        v13 = v20;
        v15 = v20 + 3944;
      }

      v15 -= 232;
      if (a3[3] == v15)
      {
        v12 = v15;
        return *(a2 + 24) != v12;
      }
    }

    v12 = a3[3];
  }

  return *(a2 + 24) != v12;
}

void *sub_1000A2D90(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((a5 - *a4) >> 6) + 8 * (a4 - a2) - ((a3 - *a2) >> 6);
  }

  v7 = a1[1];
  v8 = (v7 + 8 * (a1[4] >> 6));
  if (a1[2] == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + ((a1[4] & 0x3FLL) << 6);
  }

  v33 = (v7 + 8 * (a1[4] >> 6));
  v34 = v9;
  if (a3 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((a3 - *a2) >> 6) + 8 * (a2 - v8) - ((v9 - *v8) >> 6);
  }

  v11 = sub_1000A2FC8(&v33, v10);
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
      v23 = sub_1000A2FC8(&v32, v6);
      sub_1000AAB24(v21, v22, v19, v20, v23, v24, &v35);
      v25 = v34;
      if (v34 != v36)
      {
        v26 = v33;
        do
        {
          v25 += 64;
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
      v13 = sub_1000A2FC8(&v32, v6);
      v15 = a1[4] + a1[5];
      v16 = a1[1];
      v17 = (v16 + 8 * (v15 >> 6));
      if (a1[2] == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = &(*v17)[64 * (v15 & 0x3F)];
      }

      v35 = v32;
      sub_1000A7478(v13, v14, v17, v18, &v35);
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
    v30 = *(v29 + 8 * (a1[4] >> 6)) + ((a1[4] & 0x3FLL) << 6);
  }

  v35.n128_u64[0] = v29 + 8 * (a1[4] >> 6);
  v35.n128_u64[1] = v30;
  return sub_1000A2FC8(&v35, v10);
}

void *sub_1000A2FC8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 6);
    if (v4 < 1)
    {
      result -= (63 - v4) >> 6;
    }

    else
    {
      result += v4 >> 6;
    }
  }

  return result;
}

uint64_t sub_1000A302C(void *a1)
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

unsigned __int16 *sub_1000A3054(unsigned __int16 *result, _OWORD *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  *&result[8 * (v3 - v2) + 4] = *a2;
  v4 = result[1];
  v5 = *(result + 1);
  if (v5 <= v4)
  {
    v6 = *result + 1;
    if (v6 < v5)
    {
      LOWORD(v5) = 0;
    }

    *result = v6 - v5;
  }

  else
  {
    result[1] = v4 + 1;
  }

  return result;
}

BOOL sub_1000A31D0(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v4 = *(a1 + 32);
  v5 = (v4 + 8 * (*(a1 + 56) >> 4));
  if (*(a1 + 40) == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 + 328 * (*(a1 + 56) & 0xFLL);
  }

  *a3 = v5;
  a3[1] = v6;
  a3[2] = v5;
  a3[3] = v6;
  v7 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 16) = v7;
  v8 = *(a1 + 56) + *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = (v9 + 8 * (v8 >> 4));
  if (*(a1 + 40) == v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10 + 328 * (v8 & 0xF);
  }

  if (a3[3] != v11)
  {
    v12 = *v10;
    v13 = 1.79769313e308;
    v14 = v11;
    v15 = v10;
    while (1)
    {
      v16 = v14;
      if (v14 == v12)
      {
        v16 = *(v15 - 1) + 5248;
      }

      v17 = vabdd_f64(*(v16 - 328), a4);
      if (v17 < v13 && v17 < *(a1 + 16))
      {
        *a2 = v10;
        *(a2 + 8) = v11;
        *(a2 + 16) = v15;
        *(a2 + 24) = v14;
        v12 = *v15;
        v18 = v14;
        if (v14 == *v15)
        {
          v18 = *(v15 - 1) + 5248;
        }

        v13 = v17;
        if (*(v18 - 328) == a4)
        {
          break;
        }
      }

      if (v14 == v12)
      {
        v19 = *--v15;
        v12 = v19;
        v14 = v19 + 5248;
      }

      v14 -= 328;
      if (a3[3] == v14)
      {
        v11 = v14;
        return *(a2 + 24) != v11;
      }
    }

    v11 = a3[3];
  }

  return *(a2 + 24) != v11;
}

id *sub_1000A330C(uint64_t a1, __int128 *a2, char a3)
{
  v36[0] = os_transaction_create();
  v36[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v36);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v6 = (*(*a1 + 104))(a1, v34);
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
        sub_101BD1FE0();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BD2008(buf);
        LOWORD(v37) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 1);
    v8 = v35;
    v9 = v7 - v35;
    if (v7 - v35 < 0.0)
    {
      v9 = -(v7 - v35);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101BD1FE0();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 1);
        *buf = 134349312;
        v42 = v35;
        v43 = 2050;
        v44 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD2008(buf);
        v29 = *(a2 + 1);
        v37 = 134349312;
        v38 = v35;
        v39 = 2050;
        v40 = v29;
        v30 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v30);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 1);
      v8 = v35;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101BD1FE0();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 1);
          *buf = 134217984;
          v42 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD2008(buf);
          v31 = *(a2 + 1);
          v37 = 134217984;
          v38 = v31;
          v32 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v32);
          if (v32 != buf)
          {
            free(v32);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101BD1FE0();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v42 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD2008(buf);
        v37 = 134217984;
        v38 = v17;
        v33 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLStepCountEntry>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLStepCountEntry, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v33);
        if (v33 != buf)
        {
          free(v33);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, v34, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[3];
  *(a1 + 256) = a2[2];
  *(a1 + 272) = v21;
  *(a1 + 224) = v19;
  *(a1 + 240) = v20;
  v22 = a2[4];
  v23 = a2[5];
  v24 = a2[7];
  *(a1 + 320) = a2[6];
  *(a1 + 336) = v24;
  *(a1 + 288) = v22;
  *(a1 + 304) = v23;
  v25 = a2[8];
  v26 = a2[9];
  v27 = a2[10];
  *(a1 + 400) = *(a2 + 22);
  *(a1 + 368) = v26;
  *(a1 + 384) = v27;
  *(a1 + 352) = v25;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v36);
}

__n128 sub_1000A3B08(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a2 + 96) = a3[6];
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  result = a3[8];
  v10 = a3[9];
  v11 = a3[10];
  *(a2 + 176) = *(a3 + 22);
  *(a2 + 144) = v10;
  *(a2 + 160) = v11;
  *(a2 + 128) = result;
  return result;
}

void sub_1000A3B44(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_1000A3B54(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void sub_1000A40C4(uint64_t a1, int *a2, uint64_t a3, int a4)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *a2;
    v6 = a1 + 64;
    do
    {
      if (*(v4 + 32) >= v5)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v5));
    }

    while (v4);
    if (v6 == a1 + 64 || v5 < *(v6 + 32))
    {
LABEL_9:
      v9 = v10;
      memset(v10, 0, 32);
      sub_100248B84(buf, a2, &v9);
      sub_10047D8C8();
    }

    if (a4)
    {
      operator new();
    }

    v7 = *(v6 + 72);
    *(v6 + 64) = 0;
    *(v6 + 72) = 0;
    if (v7)
    {
      sub_100008080(v7);
    }

    if (*(v6 + 56))
    {
      sub_1000A4758();
    }
  }
}

void sub_1000A45D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

uint64_t sub_1000A4600(uint64_t result, __int128 ***a2)
{
  v2 = **a2;
  if (v2 != (*a2)[1])
  {
    v4 = result;
    do
    {
      memset(&v9[4], 0, 128);
      v5 = *v2;
      v6 = v2[1];
      v7 = v2[3];
      v9[2] = v2[2];
      v9[3] = v7;
      v9[0] = v5;
      v9[1] = v6;
      v8 = 8;
      result = (*(*v4 + 152))(v4, &v8, v9, 0, 0xFFFFFFFFLL, 0);
      v2 += 4;
    }

    while (v2 != (*a2)[1]);
  }

  return result;
}

void sub_1000A46CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[0] = *(a1 + 40);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000A4600(v2, v4);
  if (v3)
  {

    sub_100008080(v3);
  }
}

void sub_1000A4740(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1000A482C(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1004D4538(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1000A4D94(a1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1000A48C8(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v37 = v9;
        v10 = sub_1000A482C(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v36 = v16;
              sub_1000A4C84(a1, &v36, &v37, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v37 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v36 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_10189A8F8();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v43 = v19;
                v44 = 1026;
                v45 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10189A8F8();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v38 = 136446466;
                v39 = v33;
                v40 = 1026;
                v41 = v34;
                v35 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLOdometerNotifier_Type::Notification, CLOdometerNotifier_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLOdometerNotifier_Type::Notification, NotificationData_T = CLOdometerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v35 != buf)
                {
                  free(v35);
                }
              }
            }
          }

          while (v11 != (v37 + 48));
        }
      }
    }
  }
}

_BYTE *sub_1000A4C84(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1000A482C(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

void sub_1000A4D7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

id sub_1000A4D94(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10189B1DC();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D342 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189B400();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_10189B1DC();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C8D342 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10189B508();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

void sub_1000A4F98(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_1000A4FAC(uint64_t a1, int *a2, const void *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onStepCountNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onStepCountNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000A5178(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1000A5178(uint64_t a1, uint64_t a2, int *a3, const void *a4)
{
  if (*a3 == 5)
  {
    v5 = a1 + 6648;

    sub_100D35F40(v5, a4);
  }

  else if (*a3 == 1)
  {
    v4 = (a1 + 4608);

    sub_1000A0394(v4, a4);
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v8 = *a3;
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "MotionStateMediator received unhandled step count notification, %d", v9, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019039C8(a3);
    }
  }
}

id sub_1000A52EC(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onOdometerNotification:v4 data:v12];
}

id sub_1000A534C(uint64_t a1, int a2, void *a3)
{
  result = sub_1000A482C(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_1000A53A4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[57] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

void *sub_1000A5420(void *result, uint64_t a2, _DWORD *a3, const void *a4)
{
  if (*a3 == 1)
  {
    return sub_1000A0394(result, a4);
  }

  return result;
}

void sub_1000A5444(uint64_t *a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9E4C();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v4 = a1[40];
    v5 = a1[27];
    v6 = *(a1 + 56);
    v7 = a1[30];
    v8 = a1[31];
    v9 = 134219264;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    v13 = 2048;
    v14 = v7;
    v15 = 2048;
    v16 = v5;
    v17 = 1024;
    v18 = v6;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "ExtendedSteps,%f,firstStepTime,%f,lastStepTime,%f,rawPace,%f,incrementalSteps,%u,odometerSpeed,%f", &v9, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEB358(a1);
  }
}

uint64_t sub_1000A555C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000A589C(unsigned __int16 *a1, unsigned int a2, unsigned int a3, int a4, int a5, double a6)
{
  v9 = (a6 * 1000000.0);
  v64[1] = 0.0;
  v65 = v9;
  v64[0] = (a2 - a3) / 100.0;
  v61[0] = 0;
  v62 = 0u;
  v63 = 0;
  v61[1] = v9;
  if (*(a1 + 672) != a5)
  {
    if (*(a1 + 656) == 1)
    {
      v11 = -0.00355555548;
      if (a5)
      {
        v11 = -0.0127999997;
      }

      v12 = exp(v11);
      *(a1 + 142) = 0;
      *(a1 + 72) = 1.0 - v12;
      *(a1 + 73) = 0;
    }

    else
    {
      v13 = -0.00355555548;
      if (a5)
      {
        v13 = -0.0127999997;
      }

      *(a1 + 72) = 1.0 - exp(v13);
      *(a1 + 142) = 3;
    }

    *(a1 + 592) = 0;
    if (qword_1025D4410 != -1)
    {
      sub_10195AF44();
    }

    v14 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 656);
      *buf = 67109376;
      *&buf[4] = a5;
      *&buf[8] = 1024;
      *&buf[10] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "significant elevation break frequency change, inVisit, %d, resetCheck, %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10195AF58(a1 + 328);
    }

    *(a1 + 672) = a5;
  }

  sub_1000A60FC(a1 + 24, v64, v61);
  v16 = a1[1];
  v17 = *(a1 + 1);
  v18 = a1 + 4;
  v19 = *a1;
  if (v19 + v16 >= v17)
  {
    v20 = *(a1 + 1);
  }

  else
  {
    v20 = 0;
  }

  *&v18[4 * (v19 + v16 - v20)] = v9;
  if (v17 <= v16)
  {
    v21 = v19 + 1;
    if (v21 < v17)
    {
      LOWORD(v17) = 0;
    }

    *a1 = v21 - v17;
  }

  else
  {
    LOWORD(v16) = v16 + 1;
    a1[1] = v16;
  }

  if (*(a1 + 656) == 1)
  {
    v22 = *(a1 + 79) + v64[0];
  }

  else
  {
    v22 = *(a1 + 80);
  }

  *(a1 + 80) = v22;
  v60 = 0.0;
  if (v16)
  {
    v23 = (a1 + 340);
    while (1)
    {
      if (!sub_1000A68A8((a1 + 24), *&v18[4 * *a1], &v60))
      {
        return;
      }

      v24 = *&v18[4 * *a1] * 0.000001;
      *buf = v60;
      sub_1000A6810((a1 + 284), buf);
      v25 = *(a1 + 73);
      *(a1 + 80) = v25 + *(a1 + 79);
      *(a1 + 656) = 0;
      v26 = *(a1 + 156);
      v27 = v60;
      if (v26 == -1)
      {
        if (v25 + -0.25 > v27)
        {
          goto LABEL_37;
        }

        if (v25 < v27)
        {
          v28 = *(a1 + 75);
          if (v28 != 0.0)
          {
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else
      {
        if (v26 == 1)
        {
          if (v25 + 0.25 >= v27)
          {
            if (v25 > v27)
            {
              v28 = *(a1 + 75);
              if (v28 != 0.0)
              {
                goto LABEL_47;
              }

              goto LABEL_48;
            }

            goto LABEL_43;
          }

LABEL_37:
          sub_10085C124(a1, v24, v60);
          goto LABEL_43;
        }

        if (vabdd_f64(v27, v25) > 2.0)
        {
          sub_10085C564(a1, v24, v27 - v25);
          *(a1 + 79) = *(a1 + 79) - (v27 - *(a1 + 73));
          *(a1 + 73) = v27;
          *(a1 + 142) = 3;
        }
      }

LABEL_43:
      v28 = *(a1 + 75);
      v29 = *(a1 + 152);
      if (v28 != 0.0)
      {
        *(a1 + 152) = ++v29;
      }

      if (v29 < 12)
      {
        goto LABEL_49;
      }

      if (v28 != 0.0)
      {
LABEL_47:
        sub_10085C564(a1, *(a1 + 77), v28);
      }

LABEL_48:
      *(a1 + 75) = 0;
      *(a1 + 152) = 0;
      *(a1 + 156) = 0;
LABEL_49:
      if (qword_1025D4310 != -1)
      {
        sub_10195AF1C();
      }

      v30 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
      {
        v31 = a1 + 340;
        if (*(a1 + 703) < 0)
        {
          v31 = *v23;
        }

        v32 = *(a1 + 73);
        v33 = *(a1 + 66);
        v34 = *(a1 + 67);
        v35 = *(a1 + 136);
        v36 = *(a1 + 137);
        v37 = *(a1 + 75);
        v38 = *(a1 + 77);
        v39 = *(a1 + 156);
        v40 = *(a1 + 79);
        v41 = *(a1 + 80);
        v42 = *(a1 + 83);
        *buf = 134221826;
        *&buf[4] = v60;
        *&buf[12] = 2048;
        v99 = v32;
        v100 = 2048;
        v101 = v33;
        v102 = 2048;
        v103 = v34;
        v104 = 2048;
        v105 = v35;
        v106 = 2048;
        v107 = v36;
        v108 = 2048;
        v109 = v37;
        v110 = 2048;
        v111 = v38;
        v112 = 2048;
        v113 = v39;
        v114 = 1024;
        v115 = a4;
        v116 = 2080;
        v117 = v31;
        v118 = 2048;
        v119 = v24;
        v120 = 2048;
        v121 = a6;
        v122 = 2048;
        v123 = v40;
        v124 = 2048;
        v125 = v41;
        v126 = 2048;
        v127 = v42;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "Altitude,%f,ReferenceAltitude,%f,ElevationStartTime,%f,ElevationEndTime,%f,AscendedElevation,%f,DescendedElevation,%f,BufferedAscendedElevation,%f,BufferedTimeStamp,%f,AscendingState,%f,ElevationDeviceSource,%d,ElevationLabel,%s,EpochTime,%f,UpdateTime,%f,cumulativeAltitudeFilterResetChange,%f,weatherChangeEstimate,%f,weatherBias,%f", buf, 0x9Eu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4310 != -1)
        {
          sub_10195AF1C();
        }

        v47 = *(a1 + 73);
        v48 = *(a1 + 66);
        v49 = *(a1 + 67);
        v50 = *(a1 + 75);
        v51 = *(a1 + 77);
        v52 = *(a1 + 156);
        v53 = a1 + 340;
        if (*(a1 + 703) < 0)
        {
          v53 = *v23;
        }

        v54 = *(a1 + 79);
        v55 = *(a1 + 136);
        v56 = *(a1 + 80);
        v57 = *(a1 + 83);
        v58 = *(a1 + 137);
        v66 = 134221826;
        v67 = v60;
        v68 = 2048;
        v69 = v47;
        v70 = 2048;
        v71 = v48;
        v72 = 2048;
        v73 = v49;
        v74 = 2048;
        v75 = v55;
        v76 = 2048;
        v77 = v58;
        v78 = 2048;
        v79 = v50;
        v80 = 2048;
        v81 = v51;
        v82 = 2048;
        v83 = v52;
        v84 = 1024;
        v85 = a4;
        v86 = 2080;
        v87 = v53;
        v88 = 2048;
        v89 = v24;
        v90 = 2048;
        v91 = a6;
        v92 = 2048;
        v93 = v54;
        v94 = 2048;
        v95 = v56;
        v96 = 2048;
        v97 = v57;
        v59 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLSignificantElevationEstimator::updateWithVisit(CFAbsoluteTime, uint32_t, uint32_t, CLElevationSource, BOOL)", "%s\n", v59);
        if (v59 != buf)
        {
          free(v59);
        }
      }

      v43 = a1[1];
      if (v43)
      {
        v44 = *a1 + 1;
        v45 = *(a1 + 1);
        if (v44 < v45)
        {
          LOWORD(v45) = 0;
        }

        *a1 = v44 - v45;
        v46 = v43 - 1;
        a1[1] = v46;
        if (v46)
        {
          continue;
        }
      }

      return;
    }
  }
}

unsigned __int16 *sub_1000A60FC(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  if ((a1[224] & 1) == 0)
  {
    v6 = (a2 + 8);
    v7 = *a1 + a1[1] - 1;
    v8 = *(a1 + 1);
    if (v7 < v8)
    {
      v8 = 0;
    }

    if (*(a2 + 8) > *&a1[8 * (v7 - v8) + 8])
    {
      goto LABEL_12;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101AE92B8();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *v6;
      LODWORD(v29) = 134217984;
      *(&v29 + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "fElevationBuffer timestamp did not move forward, timestamp, %llu", &v29, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AE92CC((a2 + 8));
    }

    sub_100F96FE0(a1);
    if ((a1[224] & 1) == 0)
    {
LABEL_12:
      v11 = a1[80] + a1[81] - 1;
      v12 = *(a1 + 41);
      if (v11 < v12)
      {
        v12 = 0;
      }

      if (*(a3 + 8) <= *&a1[20 * (v11 - v12) + 88])
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101AE93DC();
        }

        v13 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a3 + 8);
          LODWORD(v29) = 134217984;
          *(&v29 + 4) = v14;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "fStepHistory timestamp did not move forward, timestamp, %llu", &v29, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AE9404((a3 + 8));
        }

        sub_100F96FE0(a1);
      }
    }
  }

  sub_1000A6408(a1 + 80, a3);
  result = sub_1000A3054(a1, a2);
  *(a1 + 448) = 0;
  if (*(a1 + 1) == a1[1])
  {
    v16 = sub_1000A6478(a1, 0);
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = sub_1000A6478(a1, 1uLL);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = sub_1000A6478(a1, 2uLL);
    if (*(a1 + 449) == 1)
    {
      v23 = (v17 + v20) * 0.5;
      v24 = (v21 + v18) >> 1;
    }

    else
    {
      v25 = a1[36] + a1[37] - 1;
      v26 = *(a1 + 19);
      if (v25 < v26)
      {
        v26 = 0;
      }

      v27 = &a1[8 * (v25 - v26)];
      v23 = *(v27 + 20);
      v24 = *(v27 + 11);
    }

    v28 = (*(v22 + 8) + v21) >> 1;
    *&v29 = v23 + (((sub_1000A6674(a1) - v23) * (v21 - v24)) / (v28 - v24));
    *(&v29 + 1) = v21;
    result = sub_1000A3054(a1 + 36, &v29);
    *(a1 + 449) = 0;
  }

  return result;
}

unsigned __int16 *sub_1000A6408(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[20 * (v3 - v2)];
  v6 = *a2;
  v5 = a2[1];
  *(v4 + 5) = *(a2 + 4);
  *(v4 + 4) = v6;
  *(v4 + 12) = v5;
  v7 = result[1];
  v8 = *(result + 1);
  if (v8 <= v7)
  {
    v9 = *result + 1;
    if (v9 < v8)
    {
      LOWORD(v8) = 0;
    }

    *result = v9 - v8;
  }

  else
  {
    result[1] = v7 + 1;
  }

  return result;
}

uint64_t sub_1000A6478(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_1024C2A50);
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
        dispatch_once(&qword_1025D48A0, &stru_1024C2A50);
      }

      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMElevationSample>::operator[](const size_t) const [T = CMElevationSample]", "%s\n", v9);
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

float sub_1000A6674(unsigned __int16 *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (v3 >= 3 || (v5 = 0.0, !sub_101AE9514(v2)))
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v5 = v5 + *sub_1000A6478(a1, v4++);
    }

    while (v4 < a1[1]);
  }

  v6 = v5 - COERCE_FLOAT(sub_1000A673C(a1, sub_1000A67E8, 0));
  return (v6 - COERCE_FLOAT(sub_1000A673C(a1, sub_1000A67FC, 0))) / (a1[1] - 2);
}

uint64_t sub_1000A673C(unsigned __int16 *a1, unsigned int (*a2)(void, uint64_t, uint64_t, uint64_t), unint64_t a3)
{
  v6 = a1[1];
  if (!a1[1])
  {
    sub_101AE96C4();
  }

  v7 = sub_1000A6478(a1, a3);
  v8 = *v7;
  v9 = v7[1];
  if (v6 > a3)
  {
    do
    {
      v10 = sub_1000A6478(a1, a3);
      v11 = *v10;
      v12 = v10[1];
      if (a2(*v10, v12, v8, v9))
      {
        v8 = v11;
        v9 = v12;
      }

      ++a3;
    }

    while (v6 != a3);
  }

  return v8;
}

uint64_t sub_1000A6810(uint64_t result, double *a2)
{
  v2 = *result;
  v3 = *result + 1;
  *result = v3;
  if (*(result + 24) == 1)
  {
    v4 = (1.0 / v3);
    if (!v3)
    {
      v4 = 1.0;
    }

    if (*(result + 8) >= v4)
    {
      v4 = *(result + 8);
    }

    v5 = *(result + 16) - v4 * (*(result + 16) - *a2);
  }

  else if (v2 > 2)
  {
    v5 = *(result + 16) - *(result + 8) * (*(result + 16) - *a2);
  }

  else
  {
    v5 = (*a2 + *(result + 16) * v2) * (1.0 / v3);
  }

  *(result + 16) = v5;
  return result;
}

uint64_t sub_1000A68A8(uint64_t a1, unint64_t a2, float *a3)
{
  if (!*(a1 + 74))
  {
    return 0;
  }

  v5 = a1 + 80;
  v6 = *(a1 + 72);
  v7 = *(a1 + 74) + v6 - 1;
  v8 = *(a1 + 76);
  if (v7 < v8)
  {
    v8 = 0;
  }

  v9 = v5 + 16 * (v7 - v8);
  v10 = *(v9 + 8);
  if (v10 + 500000 < a2)
  {
    return 0;
  }

  if (v10 <= a2)
  {
    v19 = *v9;
  }

  else
  {
    v13 = v5 + 16 * v6;
    if (*(v13 + 8) < a2)
    {
      v14 = 0;
      while (v14 < *(a1 + 74) - 1)
      {
        v15 = sub_1000A6478((a1 + 72), v14 + 1);
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = sub_1000A6478((a1 + 72), v14++);
        if (v17 > a2)
        {
          v19 = *v18 + (((v16 - *v18) * (a2 - *(v18 + 8))) / (v17 - *(v18 + 8)));
          goto LABEL_15;
        }
      }

      return 1;
    }

    v19 = *v13;
  }

LABEL_15:
  *a3 = v19;
  return 1;
}

uint64_t sub_1000A69D8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  *a3 = result + 24;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_1000A69EC(uint64_t a1)
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

uint64_t sub_1000A6A6C(uint64_t a1, int a2)
{
  v3 = a2;
  sub_1003DD9F8(a1 + 24, &v3);
  return 1;
}

double sub_1000A6AF8(uint64_t a1, int a2)
{
  if (a2)
  {
    return CFAbsoluteTimeGetCurrent();
  }

  else
  {
    return sub_1000137E0();
  }
}

uint64_t sub_1000A6B04(uint64_t a1, int a2, int a3)
{
  v8 = a2;
  v9[0] = off_1024629A0;
  v9[3] = v9;
  v5 = sub_1000A6A6C(a1, a2);
  sub_1000A69EC(v9);
  if (v5)
  {
    if (a3 == 1)
    {
      v6 = *(sub_1003DD9F8(a1 + 24, &v8) + 33);
    }

    else if (!a3)
    {
      v6 = *(sub_1003DD9F8(a1 + 24, &v8) + 32);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

float sub_1000A6C9C(float a1)
{
  v1 = a1 / 101320.0;
  v2 = powf(a1 / 101320.0, -0.66338) * -0.077464;
  return v2 + (powf(v1, -0.80974) * 0.083241);
}

id sub_1000A6D00(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[9];
  v12[8] = a3[8];
  v12[9] = v5;
  v6 = a3[11];
  v12[10] = a3[10];
  v12[11] = v6;
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  return [a4 onOdometerNotificationSourcePressure:v4 data:v12];
}

uint64_t sub_1000A6D68(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000A6DC8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1000A6DE8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*a3 == 7)
  {
    v6 = sub_1000081AC();
    v38 = v6;
    if (*(a1 + 528))
    {
      v7 = *(a4 + 8);
      v8 = v7 & 0x7FFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v10 = v7 < 0;
      v11 = v7 < 0 && ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (!v10)
      {
        v9 = 0;
      }

      v12 = v8 <= 0x7FF0000000000000;
      v13 = v8 == 0x7FF0000000000000 || v9;
      if (!v12)
      {
        v13 = 1;
      }

      if ((v13 | v11) == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10023A174();
        }

        v14 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v15 = *(a4 + 8);
          v16 = *(a4 + 16);
          v17 = *(a4 + 20);
          *buf = 134349568;
          v48 = v15;
          v49 = 1026;
          *v50 = v16;
          *&v50[4] = 1026;
          *&v50[6] = v17;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,received invalid elevation entry,startTime,%{public}lf,elevationAscended,%{public}u,elevationDescended,%{public}u", buf, 0x18u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10174A5D0();
        }
      }

      else
      {
        v22 = v6;
        v23 = v6 - *(a1 + 1240);
        *(a1 + 1240) = v6;
        if (v23 < 0.0 || v23 > 43200.0)
        {
          sub_10085BC68(a1 + 536);
          if (qword_1025D4600 != -1)
          {
            sub_10023A174();
          }

          v30 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *buf = 134218240;
            v48 = v23;
            v49 = 2050;
            *v50 = v22;
            _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "BaroAlt,reset fSignificantElevationEstimator for invalid %.lf s gap in odometer feed,now,%{public}.lf", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10174A4C0(v23);
          }

          *(a1 + 480) = xmmword_101C76220;
          *(a1 + 496) = 0;
        }

        else
        {
          sub_1000A745C((a1 + 536), *(a4 + 16), *(a4 + 20), 0, *(a4 + 8));
          v26 = *(a1 + 176);
          if (v26 && *a1)
          {
            LODWORD(v24) = *(a4 + 16);
            LODWORD(v25) = *(a4 + 20);
            *(v26 + 248) = (v24 - v25) / 100.0;
            *(v26 + 256) = 1;
            v27 = sub_100020640(*a1, &v38);
            v28 = *(a1 + 176);
            *(v28 + 264) = v27;
            *(v28 + 272) = 1;
            v29 = *(a1 + 176);
            if (*(v29 + 280) == 1)
            {
              if ((*(v29 + 272) & 1) == 0 || (*(v29 + 256) & 1) == 0)
              {
                sub_100173BA0();
              }

              sub_10173E9BC(v29, *(v29 + 264), *(v29 + 248));
            }

            else
            {
              sub_1000AFF84(v29);
            }
          }

          v31 = *(a1 + 1064);
          v32 = *(a1 + 1072);
          v33 = *(a1 + 1080);
          v34 = *(a1 + 1084);
          if (qword_1025D4600 != -1)
          {
            sub_100312410();
          }

          v35 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *buf = 134349824;
            v48 = v31;
            v49 = 2050;
            *v50 = v32;
            *&v50[8] = 1026;
            v51 = v33;
            v52 = 1026;
            v53 = v34;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "BaroAlt,newSigElvRelAlt,startTime,%{public}.3f,endTime,%{public}.3f,ascended,%{public}d,descended,%{public}d", buf, 0x22u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_100312410();
            }

            v39 = 134349824;
            v40 = v31;
            v41 = 2050;
            v42 = v32;
            v43 = 1026;
            v44 = v33;
            v45 = 1026;
            v46 = v34;
            v37 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::onOdometerUpdate(int, const CLOdometerNotifier_Type::Notification &, const CLOdometerNotifier_Type::NotificationData &)", "%s\n", v37);
            if (v37 != buf)
            {
              free(v37);
            }
          }

          if (fabs(v31) < 2.22044605e-16 || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || fabs(v32) < 2.22044605e-16 || (*&v32 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            if (qword_1025D4600 != -1)
            {
              sub_100312410();
            }

            v36 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "BaroAlt,lastRelAlt,uninitialized significant elevation data received", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10174A3E4();
            }
          }

          else if (v32 > 0.0 && v32 - *(a1 + 1248) > 2.22044605e-16)
          {
            *(a1 + 1256) = (v33 - v34) / 100.0;
          }
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023A174();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,do not expect to receive kNotificationOdometerUpdateElevationSpectator", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174A308();
      }

      sub_1017363F0(a1);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a3;
      *buf = 67240192;
      LODWORD(v48) = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "BaroAlt,received other odometer notification,type,%{public}d,", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174A21C(a3);
    }
  }
}

double sub_1000A7478(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000A753C(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000A753C(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1000A753C(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1000A753C@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a3 - v9) >> 6 >= v11 >> 6 ? v11 >> 6 : (a3 - v9) >> 6;
      if (v12)
      {
        __src = memmove(__dst, v9, v12 << 6);
      }

      v9 += 64 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 64 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1000A7610(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4410 != -1)
  {
    sub_10189A674();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 16);
    v7 = *(a2 + 20);
    v8 = *(a2 + 40);
    v10 = 134218752;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    v14 = 1024;
    v15 = v7;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "notifying odometer elevation update clients,timestamp,%f,ascended,%u,descended,%u,source,%u", &v10, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10189A688();
  }

  v10 = 7;
  return (*(*a1 + 152))(a1, &v10, a2, 0, 0xFFFFFFFFLL, 0);
}

uint64_t sub_1000A775C(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[48] assertInside];
  v8 = *(*a4 + 12);

  return v8(a4, a1, a2, a3);
}

uint64_t sub_1000A77D8(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (qword_1025D4230 != -1)
  {
    sub_101AA5784();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 1);
    v8 = *(a2 + 4);
    v9 = *(a2 + 5);
    v10 = *(a2 + 10);
    v11 = *(a2 + 60);
    *buf = 68290307;
    *v233 = 0;
    *&v233[4] = 2082;
    *&v233[6] = "";
    *&v233[14] = 2050;
    *&v233[16] = v7;
    *&v233[24] = 1025;
    *&v233[26] = v8;
    *&v233[30] = 1025;
    *&v233[32] = v9;
    *&v233[36] = 1026;
    *&v233[38] = v10;
    *&v233[42] = 1026;
    *v234 = v11;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Input, Elevation,, startTime:%{public}.2f, elevationAscended:%{private}d, elevationDescended:%{private}d, source:%{public}d, isWorkoutElevationFusion:%{public}hhd}", buf, 0x34u);
  }

  if (*(a2 + 10) == 1000)
  {
    return 0;
  }

  v12 = *(a2 + 1);
  v13 = *(a1 + 8);
  v14 = vabdd_f64(v12, v13);
  v15 = *(a2 + 60);
  v16 = *(a1 + 60);
  if (v14 > 30.0 || (v13 >= 0.0 ? (v17 = v15 == v16) : (v17 = 0), !v17))
  {
    if (qword_1025D4230 != -1)
    {
      sub_101AA5798();
    }

    v29 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v30 = *(a1 + 8);
      *buf = 68289794;
      *v233 = 0;
      *&v233[4] = 2082;
      *&v233[6] = "";
      *&v233[14] = 1026;
      *&v233[16] = v14 > 30.0;
      *&v233[20] = 1026;
      *&v233[22] = v30 < 0.0;
      *&v233[26] = 1026;
      *&v233[28] = v15 == v16;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Input, Elevation, Reset, isTimeout:%{public}hhd, isUninitialized:%{public}hhd, isSameFusionMode:%{public}hhd}", buf, 0x24u);
    }

    v31 = a2[2];
    v32 = a2[3];
    v33 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v33;
    *(a1 + 32) = v31;
    *(a1 + 48) = v32;
    *&v31 = (*(a1 + 16) - *(a1 + 20)) * 0.01;
    *(a1 + 72) = v31;
    *(a1 + 64) = *(a1 + 8);
    v34 = *(a1 + 168);
    v35 = *(a1 + 176);
    *(a1 + 200) = 0;
    v36 = (v35 - v34) >> 3;
    if (v36 >= 3)
    {
      do
      {
        operator delete(*v34);
        v37 = *(a1 + 176);
        v34 = (*(a1 + 168) + 8);
        *(a1 + 168) = v34;
        v36 = (v37 - v34) >> 3;
      }

      while (v36 > 2);
    }

    if (v36 == 1)
    {
      v38 = 512;
    }

    else
    {
      if (v36 != 2)
      {
        goto LABEL_40;
      }

      v38 = 1024;
    }

    *(a1 + 192) = v38;
LABEL_40:
    v48 = *(a1 + 216);
    v49 = *(a1 + 224);
    *(a1 + 248) = 0;
    v50 = (v49 - v48) >> 3;
    if (v50 >= 3)
    {
      do
      {
        operator delete(*v48);
        v51 = *(a1 + 224);
        v48 = (*(a1 + 216) + 8);
        *(a1 + 216) = v48;
        v50 = (v51 - v48) >> 3;
      }

      while (v50 > 2);
    }

    if (v50 == 1)
    {
      v52 = 512;
    }

    else
    {
      if (v50 != 2)
      {
LABEL_47:
        *buf = 0;
        sub_100023E4C((a1 + 160), buf);
        *buf = 0;
        sub_100023E4C((a1 + 208), buf);
        return 0;
      }

      v52 = 1024;
    }

    *(a1 + 240) = v52;
    goto LABEL_47;
  }

  v213 = a3;
  v18 = -(*(a1 + 72) - (*(a2 + 4) - *(a2 + 5)) * 0.01);
  v19 = v12 - *(a1 + 64);
  v216 = v19;
  v217 = v18;
  sub_100023E4C((a1 + 160), &v216);
  sub_100023E4C((a1 + 208), &v217);
  v20 = *(a1 + 192);
  v21 = *(a1 + 200);
  v22 = *(a1 + 168);
  v23 = *(*(v22 + (((v21 + v20 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v21 + v20 - 1) & 0x3FF)) - *(*(v22 + ((v20 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v20 & 0x3FF));
  if (v23 > 120.0)
  {
    while (v21 >= 2)
    {
      if (qword_1025D4230 != -1)
      {
        sub_101AA5798();
      }

      v24 = v23;
      v25 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
      {
        v26 = *(a1 + 200);
        *buf = 134218240;
        *v233 = v26;
        *&v233[8] = 2048;
        *&v233[10] = v24;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Input, Elevation, beyond time window, buffer size, %lu, deltaTime, %f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4230 != -1)
        {
          sub_101AA5798();
        }

        v27 = *(a1 + 200);
        v218 = 134218240;
        *v219 = v27;
        *&v219[8] = 2048;
        *&v219[10] = v24;
        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLElevationGradeEstimator::estimateGrade(const CLElevationChangeEntry &, CLElevationChangeEntry &)", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      *(a1 + 192) = vaddq_s64(*(a1 + 192), xmmword_101C66230);
      sub_1000A6D68(a1 + 160, 1);
      *(a1 + 240) = vaddq_s64(*(a1 + 240), xmmword_101C66230);
      sub_1000A6D68(a1 + 208, 1);
      v21 = *(a1 + 200);
      v20 = *(a1 + 192);
      v22 = *(a1 + 168);
      v23 = *(*(v22 + (((v21 + v20 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v21 + v20 - 1) & 0x3FF)) - *(*(v22 + ((v20 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v20 & 0x3FF));
      if (v23 <= 120.0)
      {
        goto LABEL_34;
      }
    }

    return 0;
  }

LABEL_34:
  if (v21 < 2)
  {
    return 0;
  }

  v39 = *(a1 + 248);
  if (v39 < 2)
  {
    return 0;
  }

  v40 = v21 + v20 - 1;
  v41 = *(v22 + ((v40 >> 7) & 0x1FFFFFFFFFFFFF8));
  v42 = *(a1 + 88);
  v43 = v40 & 0x3FF;
  v44 = *(a1 + 240);
  v45 = v39 + v44 - 1;
  v46 = *(a1 + 216);
  v47 = *(a1 + 176);
  v210 = (v22 + 8 * (v20 >> 10));
  if (v47 == v22)
  {
    v215 = 0;
  }

  else
  {
    v215 = *(v22 + 8 * (v20 >> 10)) + 4 * (v20 & 0x3FF);
  }

  v54 = *(v41 + 4 * v43);
  v55 = *v42;
  v56 = v42[1];
  v212 = *(a1 + 88);
  v57 = *(v46 + ((v45 >> 7) & 0x1FFFFFFFFFFFFF8));
  v58 = v45 & 0x3FF;
  v59 = *(a1 + 144);
  v60 = v59 + *(a1 + 152);
  v61 = *(a1 + 120);
  v62 = *(a1 + 128);
  v63 = (v61 + 8 * (v60 >> 10));
  if (v62 == v61)
  {
    v64 = 0;
  }

  else
  {
    v64 = *v63 + 4 * (v60 & 0x3FF);
  }

  v65 = *(v57 + 4 * v58);
  v66 = v56 + (v55 * v54);
  v67 = v44 + v39;
  v68 = (v46 + 8 * ((v44 + v39) >> 10));
  if (*(a1 + 224) == v46)
  {
    v69 = 0;
  }

  else
  {
    v69 = *v68 + 4 * (v67 & 0x3FF);
  }

  v70 = v66 - v65;
  v208 = v20 + v21;
  v209 = *(a1 + 176);
  v211 = (v22 + 8 * ((v20 + v21) >> 10));
  if (v47 == v22)
  {
    v71 = 0;
  }

  else
  {
    v71 = *(v22 + 8 * ((v20 + v21) >> 10)) + 4 * ((v20 + v21) & 0x3FF);
  }

  v72 = v70 * v70;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v77 = 0.0;
  if (v215 != v71)
  {
    v214 = v59 >> 10;
    v78 = (v22 + 8 * ((v20 + v21) >> 10));
    do
    {
      if (v62 == v61)
      {
        v79 = 0;
      }

      else
      {
        v79 = *(v61 + 8 * v214) + 4 * (*(a1 + 144) & 0x3FFLL);
      }

      if (v79 == v64)
      {
        break;
      }

      v80 = *v63;
      if (v64 == *v63)
      {
        v83 = *(v63 - 1);
        v81 = (v83 + 4092);
        v82 = v83 + 4096;
      }

      else
      {
        v81 = (v64 - 4);
        v82 = v64;
      }

      v84 = *v68;
      v85 = v69;
      if (v69 == *v68)
      {
        v85 = *(v68 - 1) + 4096;
      }

      v86 = *v78;
      v87 = v71;
      if (v71 == *v78)
      {
        v87 = *(v78 - 1) + 4096;
      }

      v88 = v64;
      if (v64 == v80)
      {
        v88 = *(v63 - 1) + 4096;
      }

      v89 = v71;
      if (v71 == v86)
      {
        v89 = *(v78 - 1) + 4096;
      }

      v90 = v64;
      if (v64 == v80)
      {
        v90 = *(v63 - 1) + 4096;
      }

      v91 = v69;
      if (v69 == v84)
      {
        v91 = *(v68 - 1) + 4096;
      }

      v92 = v64;
      if (v64 == v80)
      {
        v92 = *(v63 - 1) + 4096;
      }

      if (v71 == v86)
      {
        v95 = *(v78 - 1);
        v93 = (v95 + 4092);
        v94 = v95 + 4096;
      }

      else
      {
        v93 = (v71 - 4);
        v94 = v71;
      }

      if (v64 == v80)
      {
        v96 = *--v63;
        v64 = v96 + 4096;
      }

      if (v69 == v84)
      {
        v97 = *--v68;
        v69 = v97 + 4096;
      }

      if (v71 == v86)
      {
        v98 = *--v78;
        v71 = v98 + 4096;
      }

      v77 = v77 + *v81;
      v76 = v76 + ((*(v82 - 4) * *(v85 - 4)) * *(v87 - 4));
      v75 = v75 + (*(v88 - 4) * *(v89 - 4));
      v74 = v74 + (*(v90 - 4) * *(v91 - 4));
      v73 = v73 + ((*(v92 - 4) * *v93) * *(v94 - 4));
      v64 -= 4;
      v69 -= 4;
      v71 -= 4;
    }

    while (v215 != v71);
  }

  v99 = ((v77 * v76) - (v75 * v74));
  v100 = (v73 * v77) - v75 * v75;
  *&v99 = v99 / v100;
  v101 = ((v73 * v74) - (v75 * v76)) / v100;
  *v212 = LODWORD(v99);
  *(v212 + 4) = v101;
  if (v72 > 2.0)
  {
    v102 = *v211;
    if (v209 == v22)
    {
      v104 = 0;
      v105 = 0;
      v103 = v210;
    }

    else
    {
      v103 = (v22 + 8 * (v20 >> 10));
      v104 = *v210 + 4 * (v20 & 0x3FF);
      v105 = v102 + 4 * (v208 & 0x3FF);
    }

    v106 = (v105 - v102) >> 2;
    if (v106 < 3)
    {
      v110 = 1025 - v106;
      v108 = &v211[-(v110 >> 10)];
      v109 = *v108 + 4 * (~v110 & 0x3FF);
    }

    else
    {
      v107 = v106 - 2;
      v108 = &v211[v107 >> 10];
      v109 = *v108 + 4 * (v107 & 0x3FF);
    }

    sub_100E45610((a1 + 160), v103, v104, v108, v109);
    v111 = *(a1 + 240);
    v112 = *(a1 + 216);
    v113 = (v112 + 8 * (v111 >> 10));
    if (*(a1 + 224) == v112)
    {
      v114 = 0;
      v118 = 0;
      v116 = (v112 + 8 * ((*(a1 + 248) + v111) >> 10));
      v117 = *v116;
    }

    else
    {
      v114 = *v113 + 4 * (*(a1 + 240) & 0x3FFLL);
      v115 = *(a1 + 248) + v111;
      v116 = (v112 + 8 * (v115 >> 10));
      v117 = *v116;
      v118 = *v116 + 4 * (v115 & 0x3FF);
    }

    v119 = (v118 - v117) >> 2;
    if (v119 < 3)
    {
      v124 = 1025 - v119;
      v121 = &v116[-(v124 >> 10)];
      v122 = *v121;
      v123 = ~v124 & 0x3FFLL;
    }

    else
    {
      v120 = v119 - 2;
      v121 = &v116[v120 >> 10];
      v122 = *v121;
      v123 = v120 & 0x3FF;
    }

    sub_100E45610((a1 + 208), v113, v114, v121, v122 + 4 * v123);
    v125 = *(a1 + 192);
    v126 = v125 >> 10;
    v127 = *(a1 + 168);
    v128 = *(a1 + 176);
    if (v128 == v127)
    {
      v129 = 0;
    }

    else
    {
      v129 = *(v127 + 8 * v126) + 4 * (*(a1 + 192) & 0x3FFLL);
    }

    v130 = *(a1 + 240);
    v131 = v130 + *(a1 + 248);
    v132 = *(a1 + 216);
    v133 = (v132 + 8 * (v131 >> 10));
    if (*(a1 + 224) == v132)
    {
      v134 = 0;
    }

    else
    {
      v134 = *v133 + 4 * (v131 & 0x3FF);
    }

    v135 = *(a1 + 200) + v125;
    v136 = (v127 + 8 * (v135 >> 10));
    if (v128 == v127)
    {
      v137 = 0;
    }

    else
    {
      v137 = *v136 + 4 * (v135 & 0x3FF);
    }

    v138 = *(a1 + 8);
    v139 = (*(a1 + 16) - *(a1 + 20)) * 0.01;
    if (v129 == v137)
    {
      v140 = v138;
    }

    else
    {
      v141 = *(a1 + 64);
      v140 = v138;
      v142 = *v136;
      do
      {
        if (v137 == v142)
        {
          v145 = *(v136 - 1);
          v143 = (v145 + 4092);
          v144 = v145 + 4096;
        }

        else
        {
          v143 = (v137 - 4);
          v144 = v137;
        }

        v146 = v141 + *v143 - v140;
        *(v144 - 4) = v146;
        if (v134 == *v133)
        {
          v147 = *--v133;
          *(v147 + 4092) = (*(v147 + 4092) + *(a1 + 72)) - v139;
          v134 = v147 + 4096;
        }

        else
        {
          *(v134 - 4) = (*(v134 - 4) + *(a1 + 72)) - v139;
        }

        if (v137 == v142)
        {
          v148 = *--v136;
          v142 = v148;
          v137 = v148 + 4096;
        }

        v134 -= 4;
        v137 -= 4;
      }

      while (v129 != v137);
    }

    *(a1 + 64) = v140;
    *(a1 + 72) = v139;
    v149 = *(*(v132 + (((v130 + 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v130 + 1) & 0x3FF));
    v150 = *(v132 + ((v130 >> 7) & 0x1FFFFFFFFFFFFF8));
    v151 = v130 & 0x3FF;
    v152 = *(v127 + (((v125 + 1) >> 7) & 0x1FFFFFFFFFFFFF8));
    v153 = (v125 + 1) & 0x3FF;
    v154 = *(v127 + 8 * v126);
    v155 = v125 & 0x3FF;
    v156 = (v149 - *(v150 + 4 * v151)) / (*(v152 + 4 * v153) - *(v154 + 4 * v155));
    v157 = *(a1 + 88);
    *v157 = v156;
    v157[1] = *(v150 + 4 * v151) - (v156 * *(v154 + 4 * v155));
    if (qword_1025D4230 != -1)
    {
      sub_101AA5798();
    }

    v158 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
    {
      v159 = *(a2 + 1);
      v160 = *(a2 + 4);
      v161 = *(a2 + 5);
      *buf = 134219008;
      *v233 = v159;
      *&v233[8] = 1024;
      *&v233[10] = v160;
      *&v233[14] = 1024;
      *&v233[16] = v161;
      *&v233[20] = 2048;
      *&v233[22] = v217;
      *&v233[30] = 2048;
      *&v233[32] = v72;
      _os_log_impl(dword_100000000, v158, OS_LOG_TYPE_DEBUG, "Input, Elevation, Online grade estimation regime change, time start, %.2lf, elevationAscended, %d, elevationDescended, %d,input_altitude, %.4f, Prediction Error, %.4f", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_101AA5798();
      }

      v204 = *(a2 + 1);
      v205 = *(a2 + 4);
      v206 = *(a2 + 5);
      v218 = 134219008;
      *v219 = v204;
      *&v219[8] = 1024;
      *&v219[10] = v205;
      *&v219[14] = 1024;
      *&v219[16] = v206;
      *&v219[20] = 2048;
      *&v219[22] = v217;
      *&v219[30] = 2048;
      *&v219[32] = v72;
      v207 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLElevationGradeEstimator::estimateGrade(const CLElevationChangeEntry &, CLElevationChangeEntry &)", "%s\n", v207);
      if (v207 != buf)
      {
        free(v207);
      }
    }
  }

  v162 = *(a1 + 192);
  v163 = **(a1 + 88);
  v164 = v163 * (*(*(*(a1 + 168) + (((*(a1 + 200) + v162 - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 200) + v162 - 1) & 0x3FF)) - *(*(*(a1 + 168) + ((v162 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v162 & 0x3FF)));
  v165 = *(a2 + 1);
  if (v165 - *(a1 + 80) > 15.0)
  {
    *(a1 + 76) = 0;
    *(a1 + 80) = 0xBFF0000000000000;
  }

  if (v164 <= 2.0)
  {
    if (v164 >= -2.0)
    {
      v166 = *(a1 + 76);
      if (v166)
      {
        v167 = 3;
      }

      else
      {
        v167 = 2;
      }
    }

    else
    {
      *(a1 + 80) = v165;
      v166 = 1;
      *(a1 + 76) = 1;
      v167 = 3;
    }
  }

  else
  {
    *(a1 + 76) = 0;
    v166 = 1;
    v167 = 1;
  }

  sub_10001A3E8();
  v168 = sub_100023B30();
  v169 = v163;
  v170 = *(a2 + 10);
  if ((v168 & 0x2000000000) != 0)
  {
    v17 = v170 == 3;
    v172 = v213;
    if (!v17)
    {
      goto LABEL_150;
    }
  }

  else
  {
    if (v170 == 1)
    {
      v171 = v166;
    }

    else
    {
      v171 = 0;
    }

    v17 = v170 == 3;
    v172 = v213;
    if (!v17 && (v171 & 1) == 0)
    {
      goto LABEL_150;
    }
  }

  v167 = 0;
LABEL_150:
  v173 = a2[3];
  v174 = *a2;
  v175 = a2[1];
  v172[2] = a2[2];
  v172[3] = v173;
  *v172 = v174;
  v172[1] = v175;
  *(v172 + 6) = v167;
  v176 = v172 + 6;
  *(v172 + 4) = v169;
  if (qword_1025D4230 != -1)
  {
    sub_101AA5798();
  }

  v177 = v164;
  v178 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v179 = *v176;
    v180 = *(a2 + 1);
    v181 = *(a1 + 88);
    v182 = *v181;
    v183 = v181[1];
    v184 = *(a1 + 168);
    v185 = *(*(v184 + (((*(a1 + 200) + *(a1 + 192) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 200) + *(a1 + 192) - 1) & 0x3FF));
    v186 = *(*(v184 + ((*(a1 + 192) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 192) & 0x3FFLL));
    LODWORD(v181) = *(a2 + 4);
    v187 = *(a2 + 5);
    *buf = 67111680;
    *v233 = v179;
    *&v233[4] = 2048;
    *&v233[6] = v180;
    *&v233[14] = 2048;
    *&v233[16] = v177;
    *&v233[24] = 2048;
    *&v233[26] = v169;
    *&v233[34] = 2048;
    *&v233[36] = v182;
    *v234 = 2048;
    *&v234[2] = v183;
    v235 = 2048;
    v236 = v185;
    v237 = 2048;
    v238 = v186;
    v239 = 1024;
    v240 = v181;
    v241 = 1024;
    v242 = v187;
    v243 = 2048;
    v244 = v217;
    _os_log_impl(dword_100000000, v178, OS_LOG_TYPE_DEBUG, "Input, Elevation, Online grade estimation, gradeType, %d, time start, %.2lf, altitude delta, %.2f, vspeed, %.2f, fParam_m, %f, fParam_b, %f,fTimeBufferFront, %f,fTimeBufferBack, %f, elevationAscended, %d, elevationDescended, %d, input_altitude, %.4f", buf, 0x64u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101AA5798();
    }

    v194 = *v176;
    v195 = *(a2 + 1);
    v196 = *(a1 + 88);
    v197 = *v196;
    v198 = v196[1];
    v199 = *(a1 + 168);
    v200 = *(*(v199 + (((*(a1 + 200) + *(a1 + 192) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((*(a1 + 200) + *(a1 + 192) - 1) & 0x3FF));
    v201 = *(*(v199 + ((*(a1 + 192) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 192) & 0x3FFLL));
    LODWORD(v196) = *(a2 + 4);
    v202 = *(a2 + 5);
    v218 = 67111680;
    *v219 = v194;
    *&v219[4] = 2048;
    *&v219[6] = v195;
    *&v219[14] = 2048;
    *&v219[16] = v177;
    *&v219[24] = 2048;
    *&v219[26] = v169;
    *&v219[34] = 2048;
    *&v219[36] = v197;
    v220 = 2048;
    v221 = v198;
    v222 = 2048;
    v223 = v200;
    v224 = 2048;
    v225 = v201;
    v226 = 1024;
    v227 = v196;
    v228 = 1024;
    v229 = v202;
    v230 = 2048;
    v231 = v217;
    v203 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLElevationGradeEstimator::estimateGrade(const CLElevationChangeEntry &, CLElevationChangeEntry &)", "%s\n", v203);
    if (v203 != buf)
    {
      free(v203);
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_101AA5798();
  }

  v188 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v189 = *v176;
    v190 = *(v213 + 4);
    *buf = 67109376;
    *v233 = v189;
    *&v233[4] = 2048;
    *&v233[6] = v190;
    _os_log_impl(dword_100000000, v188, OS_LOG_TYPE_DEBUG, "Input, Elevation, Hardware gradeTypeFilter, gradeType, %d, vspeed, %.4f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AA57C0(v176, v213 + 4);
  }

  v191 = *v213;
  v192 = v213[1];
  v193 = v213[3];
  *(a1 + 32) = v213[2];
  *(a1 + 48) = v193;
  *a1 = v191;
  *(a1 + 16) = v192;
  return 1;
}

double sub_1000A8A00(uint64_t a1, __int128 *a2)
{
  if (sub_1000A77D8(a1 + 128, a2, v10))
  {
    v5 = *(a1 + 64);
    v4 = (a1 + 64);
    v6 = v5 % 0x64;
    if (v5 >= 0x5DC && v6 == 0)
    {
      if (qword_1025D4230 != -1)
      {
        sub_101B819D8();
      }

      v8 = qword_1025D4238;
      if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v4;
        *buf = 134217984;
        v12 = v9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Extremely large CLNatalieInput<CLElevationChangeEntry>, size, %lu", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B82020();
      }
    }

    *&result = sub_1000A8B70(v4 - 5, v10).n128_u64[0];
  }

  return result;
}

uint64_t sub_1000A8B34(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if ((*a3 | 4) == 7)
  {
    return (*(*result + 32))(result, a4);
  }

  return result;
}

__n128 sub_1000A8B70(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 8 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100232B00(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v7 & 0x3F) << 6);
  result = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v11;
  *v8 = result;
  *(v8 + 16) = v10;
  ++a1[5];
  return result;
}

void sub_1000A8C08(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 512) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101745F84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBarometricAltimeter::onOdometerUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101745F98();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBarometricAltimeter::onOdometerUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000A6DE8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1000A8DD4(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  [a4[56] assertInside];
  v8 = *(*a4 + 4);

  return v8(a4, a1, a2, a3);
}

void sub_1000A8E50(uint64_t a1, __int128 *a2)
{
  if (sub_1000A77D8(a1 + 8, a2, v15))
  {
    v3 = *(a1 + 440);
    if (v3)
    {
      (*(*v3 + 48))(v3, v15);
    }

    v4 = *(a1 + 312);
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4 + *(a1 + 304) - 1;
    v6 = *(a1 + 280);
    v7 = (*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)))[8 * (v5 & 0x3F) + 1];
    if (v7 <= *(v15 + 1))
    {
      goto LABEL_19;
    }

    v8 = *(a1 + 288);
    *(a1 + 312) = 0;
    v9 = (v8 - v6) >> 3;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v6);
        v10 = *(a1 + 288);
        v6 = (*(a1 + 280) + 8);
        *(a1 + 280) = v6;
        v9 = (v10 - v6) >> 3;
      }

      while (v9 > 2);
    }

    if (v9 == 1)
    {
      v11 = 32;
    }

    else
    {
      if (v9 != 2)
      {
LABEL_13:
        if (qword_1025D4200 != -1)
        {
          sub_101903090();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          v17 = *(&v15[0] + 1);
          v18 = 2048;
          v19 = v7;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "time rollback on add, newItemTime, %f, lastItemTime, %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101905ACC();
        }

LABEL_19:
        sub_1000A8B70((a1 + 272), v15);
        v13 = v15[1];
        *(a1 + 352) = v15[0];
        *(a1 + 368) = v13;
        v14 = v15[3];
        *(a1 + 384) = v15[2];
        *(a1 + 400) = v14;
        return;
      }

      v11 = 64;
    }

    *(a1 + 304) = v11;
    goto LABEL_13;
  }
}

void sub_1000A903C(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if ((*a3 | 4) == 7)
  {
    sub_1000A8E50(a1, a4);
  }
}

void sub_1000A9058(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101AE9E4C();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = *(a1 + 20);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134219520;
    v10 = v3;
    v11 = 1024;
    v12 = v4;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    v19 = 2048;
    v20 = v3;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Elevation,%f,ascended,%d,descended,%d,gradeType,%d,verticalSpeed,%f,startTime,%f,source,%d", &v9, 0x38u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AEAECC(a1);
  }
}

uint64_t sub_1000A9180()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = *(v0 + 352);
  if (*(v0 + 653) == 1 && (*(v0 + 652) & 1) == 0)
  {
    sub_10026D1A4(v0);
    *(v3 + 653) = 0;
  }

  v5 = v4 + *(v3 + 664);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = 0.0;
  v9 = 0.0;
  _CF = v7 >= v6;
  v11 = v7 - v6;
  if (_CF && v11 <= 0x7FFFFFFE)
  {
    v9 = v11 / 1000000.0;
  }

  v187 = 0u;
  memset(v186, 0, sizeof(v186));
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  *v180.i64 = *(v3 + 352) - v9;
  *&v180.i64[1] = v5 - v9;
  v12 = *(v2 + 68);
  if (v12)
  {
    v8 = v5 - ((v6 - v12) / 0xF4240);
  }

  v175 = v3;
  *&v181 = v8;
  DWORD2(v181) = *(v2 + 4);
  BYTE12(v181) = *(v2 + 1);
  *(&v181 + 13) = *(v2 + 2);
  HIBYTE(v181) = *(v2 + 8);
  LOBYTE(v182) = *(v2 + 9) != 0;
  BYTE1(v182) = *(v2 + 10) != 0;
  BYTE3(v182) = *(v2 + 11);
  *(&v182 + 1) = v6;
  LODWORD(v183) = *(v2 + 32);
  BYTE5(v183) = *(v2 + 36);
  v13 = *(v2 + 37);
  BYTE12(v183) = *(v2 + 37);
  BYTE13(v183) = *(v2 + 88);
  BYTE14(v183) = *(v2 + 97);
  LODWORD(v184) = 0;
  WORD2(v184) = 0;
  WORD3(v184) = *(v2 + 103);
  WORD5(v184) = 0;
  LODWORD(v185) = *(v2 + 84);
  v14 = *(v2 + 76);
  *(&v185 + 1) = v12;
  *&v186[0] = v14;
  LODWORD(v14) = *(v2 + 89);
  LODWORD(v15) = *(v2 + 93);
  DWORD1(v15) = *(v2 + 40);
  *(&v15 + 1) = *(v2 + 44);
  *(v186 + 12) = v15;
  *(&v186[1] + 12) = *(v2 + 52);
  v16 = *(v2 + 38);
  DWORD2(v186[0]) = v14;
  HIDWORD(v186[2]) = v16;
  LOBYTE(v187) = *(v2 + 39) != 0;
  WORD2(v187) = *(v2 + 98);
  BYTE6(v187) = *(v2 + 100);
  WORD4(v187) = *(v2 + 101);
  if (qword_1025D4200 != -1)
  {
    sub_101AD9AD8();
  }

  v17 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    v18 = *(v2 + 4);
    v19 = *(v2 + 2);
    v170 = *(v2 + 3);
    v172 = *(v2 + 1);
    v160 = *(v2 + 11);
    v162 = *(v2 + 9);
    v166 = *(v2 + 10);
    v168 = *(v2 + 8);
    v164 = *(v2 + 12);
    sub_1000AA228(v18, v275);
    v173 = v13;
    v20 = SHIBYTE(v277);
    v21 = *v275;
    v22 = v180.i64[1];
    v150 = v180.i64[0];
    v151 = *(v2 + 24);
    v152 = *(v2 + 16);
    v154 = *(v2 + 38);
    v23 = *(v2 + 56);
    v24 = *(v2 + 60);
    v25 = *(v2 + 64);
    v27 = *(v2 + 40);
    v26 = *(v2 + 44);
    v29 = *(v2 + 48);
    v28 = *(v2 + 52);
    v30 = *(v2 + 32);
    v156 = *(v2 + 39);
    v158 = *(v2 + 36);
    sub_1000AA228(v30, __p);
    *&buf[4] = "MotionCoprocessor";
    *&v189[2] = v18;
    v31 = v275;
    if (v20 < 0)
    {
      v31 = v21;
    }

    v193 = v19;
    v197 = v160;
    v201 = v162;
    v205 = v164;
    v207 = v31;
    v209 = v22;
    v32 = __p;
    if (v179 < 0)
    {
      v32 = __p[0];
    }

    v191 = v172;
    v195 = v170;
    v199 = v168;
    v203 = v166;
    v211 = v150;
    v213 = v151;
    v215 = v152;
    v217 = v154;
    v221 = v156;
    v235 = v30;
    v237 = v158;
    v206 = 2080;
    v238 = 2080;
    v239 = v32;
    v13 = v173;
    v243 = v173 & 1;
    v245 = (v173 >> 1) & 1;
    v247 = (v173 >> 2) & 1;
    v249 = (v173 >> 3) & 1;
    v196 = 1024;
    v198 = 1024;
    v200 = 1024;
    v202 = 1024;
    v204 = 1024;
    v216 = 1024;
    v220 = 1024;
    v242 = 1024;
    v244 = 1024;
    v246 = 1024;
    v248 = 1024;
    v250 = 1024;
    v251 = (v173 >> 4) & 1;
    v253 = *(v2 + 84);
    v208 = 2050;
    v254 = 2050;
    v255 = v181;
    v257 = *(v2 + 88);
    v259 = *(v2 + 68);
    v261 = *(v2 + 76);
    v263 = *(v2 + 89);
    v265 = *(v2 + 90);
    v267 = *(v2 + 91);
    *v189 = 1026;
    v190 = 1026;
    v192 = 1026;
    v194 = 1026;
    v234 = 1026;
    v236 = 1026;
    v240 = 1026;
    v252 = 1026;
    v256 = 1026;
    v262 = 1026;
    v264 = 1026;
    v266 = 1026;
    v268 = 1026;
    v269 = *(v2 + 97);
    v210 = 2048;
    v212 = 2048;
    v214 = 2048;
    v218 = 2048;
    v222 = 2048;
    v224 = 2048;
    v226 = 2048;
    v228 = 2048;
    v230 = 2048;
    v232 = 2048;
    v258 = 2048;
    v260 = 2048;
    v270 = 2048;
    _H1 = *(v2 + 103);
    __asm { FCVT            D1, H1 }

    v271 = _D1;
    *buf = 136325890;
    v219 = v26;
    v223 = v28;
    v225 = v23;
    v227 = v24;
    v229 = v25;
    v231 = v27;
    v233 = v29;
    v241 = v173;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Type,%s,motionStateUpdate:Motion,%{public}d,conf,%{public}d,Mounted,%{public}d,MountedConf,%{public}d,exitState,%d,turn,%d,isVehicular,%d,isMoving,%d,seq,%d,motionTypeString,%s,startTime,%{public}f,timestamp,%f,startTimeUL,%lld,nowUL,%lld -- caltype,%d,vm,%f,standing,%d,machinefrequency,%f,strokefrequency,%f,strokeAmplitude,%f,strokepower,%f,meanAngleX,%f,pushVectorMagnitude,%f,rawMotionType,%{public}d,rawConf,%{public}d,rawMotionTypeString,%s,vehicularFlags:%{public}d,motionHint,%d,gpsHint,%d,basebandHint,%d,wifiHint,%d,btHint,%d,workoutDetectionType,%{public}d,workoutDetectionTime,%{public}f,vehicularConfidence,%{public}d,workoutDetectionTimeUL,%lld,workoutEscalationTime,%lld,MotionYouth,%{public}d,YouthClassificationReason,%{public}d,averageALSLux,%{public}d,vehicleType,%{public}d,vehicleShortTermMean,%f", buf, 0x14Cu);
    if (v179 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v277) < 0)
    {
      operator delete(*v275);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADB540(buf);
    v131 = *(v2 + 4);
    v132 = *(v2 + 1);
    v133 = *(v2 + 2);
    v134 = *(v2 + 3);
    v163 = *(v2 + 11);
    v165 = *(v2 + 8);
    v167 = *(v2 + 9);
    v169 = *(v2 + 10);
    v171 = *(v2 + 12);
    sub_1000AA228(v131, __p);
    v174 = v13;
    v135 = v179;
    v136 = __p[0];
    v137 = v180;
    v153 = *(v2 + 24);
    v155 = *(v2 + 16);
    v157 = *(v2 + 38);
    v159 = *(v2 + 39);
    v138 = *(v2 + 56);
    v139 = *(v2 + 60);
    v140 = *(v2 + 64);
    v142 = *(v2 + 40);
    v141 = *(v2 + 44);
    v144 = *(v2 + 48);
    v143 = *(v2 + 52);
    v13 = *(v2 + 32);
    v161 = *(v2 + 36);
    sub_1000AA228(v13, v176);
    *&v275[4] = "MotionCoprocessor";
    v145 = __p;
    if (v135 < 0)
    {
      v145 = v136;
    }

    v146 = v176[0];
    if (v177 >= 0)
    {
      v146 = v176;
    }

    *&v275[14] = v131;
    v277 = v132;
    *(&v278 + 2) = v133;
    v279 = v134;
    *v281 = v163;
    *&v281[6] = v165;
    *&v281[12] = v167;
    *v282 = v169;
    *&v282[6] = v171;
    *&v282[12] = v145;
    *&v283[2] = v137.i64[1];
    *&v283[12] = v137.i64[0];
    *&v283[22] = v153;
    v285 = v155;
    v287 = v157;
    v291 = v159;
    v305 = v13;
    v307 = v161;
    *&v282[10] = 2080;
    v308 = 2080;
    v309 = v146;
    LOBYTE(v13) = v174;
    v313 = v174 & 1;
    v315 = (v174 >> 1) & 1;
    v317 = (v174 >> 2) & 1;
    v319 = (v174 >> 3) & 1;
    v280 = 1024;
    *&v281[4] = 1024;
    *&v281[10] = 1024;
    *&v281[16] = 1024;
    *&v282[4] = 1024;
    v286 = 1024;
    v290 = 1024;
    v312 = 1024;
    v314 = 1024;
    v316 = 1024;
    v318 = 1024;
    v320 = 1024;
    v321 = (v174 >> 4) & 1;
    v323 = *(v2 + 84);
    *v283 = 2050;
    v324 = 2050;
    v325 = v181;
    v327 = *(v2 + 88);
    v329 = *(v2 + 68);
    v331 = *(v2 + 76);
    v333 = *(v2 + 89);
    v335 = *(v2 + 90);
    v337 = *(v2 + 91);
    *&v275[12] = 1026;
    v276 = 1026;
    LOWORD(v278) = 1026;
    HIWORD(v278) = 1026;
    v304 = 1026;
    v306 = 1026;
    v310 = 1026;
    v322 = 1026;
    v326 = 1026;
    v332 = 1026;
    v334 = 1026;
    v336 = 1026;
    v338 = 1026;
    v339 = *(v2 + 97);
    *&v283[10] = 2048;
    *&v283[20] = 2048;
    v284 = 2048;
    v288 = 2048;
    v292 = 2048;
    v294 = 2048;
    v296 = 2048;
    v298 = 2048;
    v300 = 2048;
    v302 = 2048;
    v328 = 2048;
    v330 = 2048;
    v340 = 2048;
    _H1 = *(v2 + 103);
    __asm { FCVT            D1, H1 }

    v341 = _D1;
    *v275 = 136325890;
    v289 = v141;
    v293 = v143;
    v295 = v138;
    v297 = v139;
    v299 = v140;
    v301 = v142;
    v303 = v144;
    v311 = v174;
    v149 = _os_log_send_and_compose_impl();
    if (v177 < 0)
    {
      operator delete(v176[0]);
    }

    if (v179 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitMotionStateUpdate(const CMMotionCoprocessorReply::MotionStateUpdate *)", "%s\n", v149);
    if (v149 != buf)
    {
      free(v149);
    }
  }

  v38 = v175;
  if (*(v175 + 868) == 1)
  {
    *v275 = off_1024912B0;
    Current = CFAbsoluteTimeGetCurrent();
    *&v275[8] = Current;
    v277 = *(v2 + 4);
    LOBYTE(v278) = *(v2 + 1);
    *(&v278 + 1) = *(v2 + 2);
    LODWORD(Current) = *(v2 + 8);
    v40 = vmovl_u8(*&Current).u64[0];
    v41 = vext_s8(v40, v40, 6uLL);
    *(&v278 + 3) = vuzp1_s8(v41, v41).u32[0];
    v279 = *(v2 + 12);
    *&v281[2] = vextq_s8(v180, v180, 8uLL);
    *v282 = vextq_s8(*(v2 + 16), *(v2 + 16), 8uLL);
    v282[16] = *(v2 + 38);
    *v283 = *(v2 + 44);
    v283[4] = *(v2 + 39);
    *&v283[8] = *(v2 + 52);
    v42 = sub_10015ADF4();
    sub_1010CF5BC(v42, v275);
    sub_10152D354(buf);
    sub_1015557F4(buf);
    v274 |= 1u;
    v272 = *&v275[8];
    v43 = v273;
    v44 = *(v2 + 4);
    *(v273 + 192) |= 0x8000uLL;
    *(v43 + 100) = v44;
    v45 = v273;
    v46 = *(v2 + 1);
    *(v273 + 192) |= 0x100uLL;
    *(v45 + 72) = v46;
    v47 = v273;
    v48 = *(v2 + 2);
    *(v273 + 192) |= 0x10000uLL;
    *(v47 + 104) = v48;
    v49 = v273;
    v50 = *(v2 + 3);
    *(v273 + 192) |= 0x20000uLL;
    *(v49 + 108) = v50;
    v51 = v273;
    v52 = *(v2 + 11);
    *(v273 + 192) |= 0x800uLL;
    *(v51 + 84) = v52;
    v53 = v273;
    v54 = *(v2 + 8);
    *(v273 + 192) |= 0x8000000uLL;
    *(v53 + 148) = v54;
    v55 = v273;
    v56 = *(v2 + 9);
    *(v273 + 192) |= 0x2000uLL;
    *(v55 + 92) = v56;
    v57 = v273;
    v58 = *(v2 + 10);
    *(v273 + 192) |= 0x1000uLL;
    *(v57 + 88) = v58;
    v59 = v273;
    v60 = *(v2 + 12);
    *(v273 + 192) |= 0x1000000uLL;
    *(v59 + 136) = v60;
    v61 = v273;
    v62 = v180.i64[0];
    *(v273 + 40) = v180.i64[1];
    *(v61 + 192) |= 8uLL;
    v63 = v273;
    *(v273 + 192) |= 1uLL;
    *(v63 + 8) = v62;
    v64 = v273;
    v65 = *(v2 + 24);
    *(v273 + 192) |= 4uLL;
    *(v64 + 24) = v65;
    v66 = v273;
    v67 = *(v2 + 16);
    *(v273 + 192) |= 2uLL;
    *(v66 + 16) = v67;
    v68 = v273;
    LODWORD(v67) = *(v2 + 38);
    *(v273 + 192) |= 0x80uLL;
    *(v68 + 68) = v67;
    v69 = v273;
    v70 = *(v2 + 44);
    *(v273 + 192) |= 0x20000000uLL;
    *(v69 + 156) = v70;
    v71 = v273;
    LODWORD(v67) = *(v2 + 39);
    *(v273 + 192) |= 0x4000000uLL;
    *(v71 + 144) = v67;
    v72 = v273;
    v73 = *(v2 + 52);
    *(v273 + 192) |= 0x4000uLL;
    *(v72 + 96) = v73;
    v74 = v273;
    v75 = *(v2 + 56);
    *(v273 + 192) |= 0x400000uLL;
    *(v74 + 128) = v75;
    v76 = v273;
    v77 = *(v2 + 60);
    *(v273 + 192) |= 0x200000uLL;
    *(v76 + 124) = v77;
    v78 = v273;
    v79 = *(v2 + 64);
    *(v273 + 192) |= 0x800000uLL;
    *(v78 + 132) = v79;
    v80 = v273;
    LODWORD(v67) = *(v2 + 88);
    *(v273 + 192) |= 0x800000000uLL;
    *(v80 + 180) = v67;
    if (qword_102637F48 != -1)
    {
      sub_101ADAB10();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
    v38 = v175;
  }

  v81 = v186[1];
  *(v38 + 776) = v186[0];
  *(v38 + 792) = v81;
  v82 = v187;
  *(v38 + 808) = v186[2];
  *(v38 + 824) = v82;
  v83 = v183;
  *(v38 + 712) = v182;
  *(v38 + 728) = v83;
  v84 = v185;
  *(v38 + 744) = v184;
  *(v38 + 760) = v84;
  v85 = v181;
  *(v38 + 680) = v180;
  *(v38 + 696) = v85;
  *(v38 + 576) = v13;
  v86 = *(v38 + 408);
  v87 = *(v38 + 416);
  if (v86 >= v87)
  {
    v96 = *(v38 + 400);
    v97 = 0xCCCCCCCCCCCCCCCDLL * ((v86 - v96) >> 5);
    v98 = v97 + 1;
    if (v97 + 1 > 0x199999999999999)
    {
      sub_10028C64C();
    }

    v99 = 0xCCCCCCCCCCCCCCCDLL * ((v87 - v96) >> 5);
    if (2 * v99 > v98)
    {
      v98 = 2 * v99;
    }

    if (v99 >= 0xCCCCCCCCCCCCCCLL)
    {
      v100 = 0x199999999999999;
    }

    else
    {
      v100 = v98;
    }

    if (v100)
    {
      sub_10051A070(v38 + 400, v100);
    }

    v101 = 160 * v97;
    v102 = v181;
    *v101 = v180;
    *(v101 + 16) = v102;
    v103 = v182;
    v104 = v183;
    v105 = v185;
    *(v101 + 64) = v184;
    *(v101 + 80) = v105;
    *(v101 + 32) = v103;
    *(v101 + 48) = v104;
    v106 = v186[0];
    v107 = v186[1];
    v108 = v187;
    *(v101 + 128) = v186[2];
    *(v101 + 144) = v108;
    *(v101 + 96) = v106;
    *(v101 + 112) = v107;
    v95 = 160 * v97 + 160;
    v109 = *(v38 + 400);
    v110 = *(v38 + 408) - v109;
    v111 = v101 - v110;
    memcpy((v101 - v110), v109, v110);
    v112 = *(v38 + 400);
    *(v38 + 400) = v111;
    *(v38 + 408) = v95;
    *(v38 + 416) = 0;
    if (v112)
    {
      operator delete(v112);
    }
  }

  else
  {
    v88 = v181;
    *v86 = v180;
    *(v86 + 16) = v88;
    v89 = v182;
    v90 = v183;
    v91 = v185;
    *(v86 + 64) = v184;
    *(v86 + 80) = v91;
    *(v86 + 32) = v89;
    *(v86 + 48) = v90;
    v92 = v186[0];
    v93 = v186[1];
    v94 = v187;
    *(v86 + 128) = v186[2];
    *(v86 + 144) = v94;
    *(v86 + 96) = v92;
    *(v86 + 112) = v93;
    v95 = v86 + 160;
  }

  *(v38 + 408) = v95;
  v113 = *(v38 + 536);
  if (v113 >= 0x64)
  {
    v114 = *(v38 + 528);
    *(v38 + 536) = v113 - 1;
    *(v38 + 528) = v114 + 1;
    sub_1000AA818(v38 + 496, 1);
    v38 = v175;
  }

  sub_1000B1980((v38 + 496), &v180);
  result = v175;
  v116 = (BYTE9(v181) & 0x73) != 0;
  if (*(v175 + 1418) != v116)
  {
    *(v175 + 1418) = v116;
    v117 = *(v175 + 504);
    if (*(v175 + 512) != v117)
    {
      v118 = *(v175 + 528);
      v119 = *(v117 + 8 * (v118 / 0x19)) + 160 * (v118 % 0x19);
      v120 = *(v117 + 8 * ((*(v175 + 536) + v118) / 0x19)) + 160 * ((*(v175 + 536) + v118) % 0x19);
      if (v119 != v120)
      {
        v121 = (v117 + 8 * (v118 / 0x19));
        do
        {
          v122 = *(v119 + 8);
          v123 = *(v119 + 29);
          v124 = *(v119 + 30);
          v125 = *(v119 + 48);
          v126 = *(v119 + 53);
          if (qword_1025D4250 != -1)
          {
            sub_100325134();
          }

          v127 = qword_1025D4258;
          if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134350080;
            *&buf[4] = v122;
            *v189 = 1026;
            *&v189[2] = v125;
            v190 = 1026;
            v191 = v126;
            v192 = 1026;
            v193 = v123;
            v194 = 1026;
            v195 = v124;
            _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEBUG, "After vehicular transition, startTime, %{public}f, rawMotionType, %{public}d, rawConfidence, %{public}d, mounted, %{public}d, mountedConfidence, %{public}d", buf, 0x24u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4250 != -1)
            {
              sub_100325134();
            }

            *v275 = 134350080;
            *&v275[4] = v122;
            *&v275[12] = 1026;
            *&v275[14] = v125;
            v276 = 1026;
            v277 = v126;
            LOWORD(v278) = 1026;
            *(&v278 + 2) = v123;
            HIWORD(v278) = 1026;
            v279 = v124;
            v129 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "virtual void CLMotionCoprocessor::visitMotionStateUpdate(const CMMotionCoprocessorReply::MotionStateUpdate *)", "%s\n", v129);
            if (v129 != buf)
            {
              free(v129);
            }
          }

          v119 += 160;
          if (v119 - *v121 == 4000)
          {
            v128 = v121[1];
            ++v121;
            v119 = v128;
          }

          result = v175;
        }

        while (v119 != v120);
      }
    }
  }

  v130 = *(v2 + 91);
  if (v130 != 0xFFFF)
  {
    *v189 = 0;
    *buf = v5;
    *&buf[8] = v130;
    sub_100013B00(result, 31, buf, 16);
    return sub_100013B00(v175, 32, buf, 16);
  }

  return result;
}

void sub_1000AA1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1000AA228@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result < 0x8000)
  {
    if (result > 127)
    {
      if (result > 4127)
      {
        if (result >= 12288)
        {
          if (result == 12288)
          {
            v3 = 17;
            *(a2 + 23) = 17;
            *(a2 + 16) = 114;
            v5 = "kTypeDrivingOther";
          }

          else
          {
            if (result != 0x4000)
            {
              goto LABEL_87;
            }

            v3 = 19;
            *(a2 + 23) = 19;
            *(a2 + 15) = 1684370542;
            v5 = "kTypeDrivingMounted";
          }
        }

        else
        {
          if (result == 4128)
          {
            v7 = "kTypeDrivingOrWalkingSlow";
            return sub_100006BE0(a2, v7, 0x19uLL);
          }

          if (result != 0x2000)
          {
            goto LABEL_87;
          }

          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1684955464;
          v5 = "kTypeVehicularInHand";
        }

        goto LABEL_84;
      }

      if (result > 511)
      {
        if (result == 512)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1667855457;
          v5 = "kTypeInVehicleStatic";
          goto LABEL_84;
        }

        if (result == 4096)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289206;
          v4 = "kTypeDriving";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 128)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289196;
          v4 = "kTypeCycling";
          goto LABEL_75;
        }

        if (result == 256)
        {
          v3 = 20;
          *(a2 + 23) = 20;
          *(a2 + 16) = 1852144239;
          v5 = "kTypeInVehicleFrozen";
          goto LABEL_84;
        }
      }
    }

    else if (result > 11)
    {
      if (result > 31)
      {
        if (result == 32)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeWalkingSlow";
          goto LABEL_84;
        }

        if (result == 64)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289198;
          v4 = "kTypeRunning";
          goto LABEL_75;
        }
      }

      else
      {
        if (result == 12)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 2037539182;
          v5 = "kTypeSemiStationary";
          goto LABEL_84;
        }

        if (result == 16)
        {
          v3 = 12;
          *(a2 + 23) = 12;
          *(a2 + 8) = 1735289195;
          v4 = "kTypeWalking";
          goto LABEL_75;
        }
      }
    }

    else if (result > 1)
    {
      if (result == 2)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1667855457;
        v4 = "kTypeStatic";
        goto LABEL_75;
      }

      if (result == 4)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1735289206;
        v4 = "kTypeMoving";
        goto LABEL_75;
      }
    }

    else
    {
      if (!result)
      {
        v3 = 12;
        *(a2 + 23) = 12;
        *(a2 + 8) = 1853321070;
        v4 = "kTypeUnknown";
        goto LABEL_75;
      }

      if (result == 1)
      {
        v3 = 11;
        *(a2 + 23) = 11;
        *(a2 + 7) = 1852144239;
        v4 = "kTypeFrozen";
        goto LABEL_75;
      }
    }

LABEL_87:
    v3 = 5;
    *(a2 + 23) = 5;
    *a2 = 1330795077;
    *(a2 + 4) = 82;
    goto LABEL_85;
  }

  if (result < 528384)
  {
    if (result > 262271)
    {
      if (result >= 397312)
      {
        if (result == 397312)
        {
          v3 = 16;
          *(a2 + 23) = 16;
          v5 = "kTypeDrivingSeat";
          goto LABEL_84;
        }

        if (result != 462848)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeDrivingArm";
        goto LABEL_81;
      }

      if (result == 262272)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingArm";
        goto LABEL_81;
      }

      if (result != 327808)
      {
        goto LABEL_87;
      }

      v3 = 17;
      *(a2 + 23) = 17;
      *(a2 + 16) = 111;
      v5 = "kTypeCyclingTorso";
    }

    else
    {
      if (result > 131199)
      {
        if (result == 131200)
        {
          v3 = 19;
          *(a2 + 23) = 19;
          *(a2 + 15) = 1936290675;
          v5 = "kTypeCyclingChassis";
          goto LABEL_84;
        }

        if (result != 196608)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeCyclingLeg";
        goto LABEL_81;
      }

      if (result == 0x8000)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeMotorcycle";
        goto LABEL_81;
      }

      if (result != 65664)
      {
        goto LABEL_87;
      }

      v3 = 16;
      *(a2 + 23) = 16;
      v5 = "kTypeCyclingSeat";
    }

LABEL_84:
    *a2 = *v5;
    goto LABEL_85;
  }

  if (result <= 786447)
  {
    if (result > 655423)
    {
      if (result == 655424)
      {
        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeRunningArm";
      }

      else
      {
        if (result != 720912)
        {
          goto LABEL_87;
        }

        v3 = 15;
        *(a2 + 23) = 15;
        v6 = "kTypeWalkingLeg";
      }

      goto LABEL_81;
    }

    if (result != 528384)
    {
      if (result != 589888)
      {
        goto LABEL_87;
      }

      v3 = 15;
      *(a2 + 23) = 15;
      v6 = "kTypeRunningLeg";
      goto LABEL_81;
    }

    v3 = 18;
    *(a2 + 23) = 18;
    *(a2 + 16) = 25701;
    v5 = "kTypeDrivingStowed";
    goto LABEL_84;
  }

  if (result <= 917515)
  {
    if (result != 786448)
    {
      if (result != 851980)
      {
        goto LABEL_87;
      }

      v7 = "kTypeSemiStationaryPocket";
      return sub_100006BE0(a2, v7, 0x19uLL);
    }

    v3 = 15;
    *(a2 + 23) = 15;
    v6 = "kTypeWalkingArm";
LABEL_81:
    *a2 = *v6;
    *(a2 + 7) = *(v6 + 7);
    goto LABEL_85;
  }

  if (result == 917516)
  {
    v3 = 22;
    *(a2 + 23) = 22;
    qmemcpy(a2, "kTypeSemiStationaryArm", 22);
    goto LABEL_85;
  }

  if (result == 0x100000)
  {
    v3 = 19;
    *(a2 + 23) = 19;
    *(a2 + 15) = 1953853291;
    v5 = "kTypeMachineWorkout";
    goto LABEL_84;
  }

  if (result != 0x200000)
  {
    goto LABEL_87;
  }

  v3 = 12;
  *(a2 + 23) = 12;
  *(a2 + 8) = 1953853291;
  v4 = "kTypeWorkout";
LABEL_75:
  *a2 = *v4;
LABEL_85:
  *(a2 + v3) = 0;
  return result;
}

void sub_1000AA7FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000AA818(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x19)
  {
    a2 = 1;
  }

  if (v2 < 0x32)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 25;
  }

  return v4 ^ 1u;
}

__n128 sub_1000AA884@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    i = a5;
    v14 = a6;
  }

  else
  {
    v16 = a3 - 1;
    sub_1000AA970(*a3, a4, a5, a6, &v19);
    v14 = v20.n128_u64[1];
    for (i = v20.n128_u64[0]; v16 != a1; i = v20.n128_u64[0])
    {
      v17 = *v16--;
      sub_1000AA970(v17, v17 + 5248, i, v14, &v19);
      v14 = v20.n128_u64[1];
    }

    v12 = *v16 + 5248;
    v11 = a2;
  }

  sub_1000AA970(v11, v12, i, v14, &v19);
  result = v20;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1000AA970@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
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
      v12 = 0x8F9C18F9C18F9C19 * (&a4[-v10] >> 3);
      if ((0x8F9C18F9C18F9C19 * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x8F9C18F9C18F9C19 * ((v11 - a1) >> 3);
      }

      v11 -= 328 * v12;
      a4 -= 328 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 328 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a4 = (v14 + 5248);
    }

    if ((*v6 + 5248) == a4)
    {
      v15 = v6[1];
      ++v6;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

uint64_t sub_1000AAA64(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x10)
  {
    a2 = 1;
  }

  if (v2 < 0x20)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000AAAC4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x12)
  {
    a2 = 1;
  }

  if (v2 < 0x24)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 18;
  }

  return v4 ^ 1u;
}

__n128 sub_1000AAB24@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
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
      sub_1000AABF4(v16, v18, v13, v14, &v21);
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

  sub_1000AABF4(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_1000AABF4@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
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
      if ((v11 - a1) >> 6 >= v12 >> 6)
      {
        v13 = v12 >> 6;
      }

      else
      {
        v13 = (v11 - a1) >> 6;
      }

      v11 -= 64 * v13;
      a4 -= 64 * v13;
      if (v13)
      {
        result = memmove(a4, v11, v13 << 6);
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

uint64_t sub_1000AACB0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x40)
  {
    a2 = 1;
  }

  if (v2 < 0x80)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 64;
  }

  return v4 ^ 1u;
}

uint64_t sub_1000AAD18(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 8 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x40)
  {
    a2 = 1;
  }

  if (v5 < 0x80)
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

double sub_1000AAD88(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000AAE4C(__src, *(a5 + 8), *a1 + 4000, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1000AAE4C(v13, *(a5 + 8), v13 + 4000, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1000AAE4C(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1000AAE4C@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - __dst + 4000) >> 5);
      if ((0xCCCCCCCCCCCCCCCDLL * ((a3 - v9) >> 5)) < v11)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((a3 - v9) >> 5);
      }

      v12 = 5 * v11;
      v13 = 160 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 160 * v11);
      }

      v9 += 32 * v12;
      if (v9 == a3)
      {
        break;
      }

      v14 = *v6++;
      v10 = v14;
      __dst = v14;
    }

    __dst += v13;
    if (*(v6 - 1) + 4000 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1000AAF2C(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 25 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x19)
  {
    a2 = 1;
  }

  if (v5 < 0x32)
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

double sub_1000AAFA4(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1000AB078(__src, *(a5 + 8), *a1 + 5248, *a5, &v14);
    for (*a5 = v15; v11 != a3; *a5 = v15)
    {
      v12 = *v11++;
      sub_1000AB078(v12, *(a5 + 8), v12 + 5248, *a5, &v14);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1000AB078(v9, v8, a4, v7, &v14);
  result = *&v15;
  *a5 = v15;
  return result;
}

char *sub_1000AB078@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
{
  v6 = a4;
  if (__src != a3)
  {
    v9 = __src;
    v6 = a4 + 1;
    v10 = *a4;
    while (1)
    {
      v11 = 0x8F9C18F9C18F9C19 * ((v10 - __dst + 5248) >> 3);
      if ((0x8F9C18F9C18F9C19 * ((a3 - v9) >> 3)) < v11)
      {
        v11 = 0x8F9C18F9C18F9C19 * ((a3 - v9) >> 3);
      }

      v12 = 328 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 328 * v11);
      }

      v9 += v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 5248 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a5 = a3;
  a5[1] = v6;
  a5[2] = __dst;
  return __src;
}

uint64_t sub_1000AB170(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x10)
  {
    a2 = 1;
  }

  if (v5 < 0x20)
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

uint64_t sub_1000AB1E0(_DWORD *a1, unsigned int (*a2)(uint64_t, uint64_t (***)()), uint64_t a3)
{
  if (!a1[30])
  {
    sub_1000AC16C((a1 + 16), (a1 + 2));
  }

  v6 = a1[18];
  v7 = a1[19];
  if (v6 <= v7)
  {
    v8 = a1[19];
  }

  else
  {
    v8 = a1[18];
  }

  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return sub_1000AB784(a1, v10, (a1 + 16), a2, a3);
}

double sub_1000AB25C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101BB49B4();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_101BB4988();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101BB495C();
  }

  return *(v2 + 8 * a2);
}

_DWORD *sub_1000AB298(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    sub_101A26874();
  }

  if (result[6] < a2)
  {
    sub_101A26848();
  }

  if (a3 < 0)
  {
    sub_101A2681C();
  }

  if (result[7] < a3)
  {
    sub_101A267F0();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t sub_1000AB2E8(double *a1, _DWORD *a2)
{
  v2 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v2 >= 0.0 ? (v3 = v2 <= 1.0) : (v3 = 0), !v3))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "OutdoorEstimatorTransitionProbability,Invalid Indoor Given Indoor Probability", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB46A0();
    }

    return 0xFFFFFFFFLL;
  }

  v6 = a1[1];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v6 >= 0.0 ? (v7 = v6 <= 1.0) : (v7 = 0), !v7))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v8 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "OutdoorEstimatorTransitionProbability,Invalid Outdoor Given Outdoor Probability", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB45C4();
    }

    return 0xFFFFFFFFLL;
  }

  sub_1000AC264(a2, 2u, 2u);
  *sub_1000AC220(a2, 0, 0) = v2;
  *sub_1000AC220(a2, 0, 1) = 1.0 - v6;
  *sub_1000AC220(a2, 1, 0) = 1.0 - v2;
  v10 = sub_1000AC220(a2, 1, 1);
  result = 0;
  *v10 = v6;
  return result;
}

double sub_1000AB4C0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A269A8();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A2697C();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A26950();
  }

  return *(v3 + 8 * v4);
}

float64x2_t sub_1000AB504(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == a2)
  {
    sub_101AF2B04();
  }

  sub_1000AB298(a2, *(a1 + 8), *(a1 + 12));
  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v10 = *(a1 + 32);
    v11 = *(a2 + 32);
    v12 = (v10 + 8 * (v6 - 2));
    v13 = (v11 + 8 * (v6 - 2));
    v14 = (v6 - 1) >> 1;
    do
    {
      v15 = *v10++;
      *v11++ = vmulq_n_f64(v15, a3);
      --v14;
    }

    while (v14);
    result = vmulq_n_f64(*v12, a3);
    *v13 = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = *v7++;
      result.f64[0] = v9 * a3;
      *v8++ = v9 * a3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1000AB5C4(uint64_t a1, int a2)
{
  if (a2 <= 127)
  {
    if (a2 > 31)
    {
      if (a2 != 32)
      {
        if (a2 == 64)
        {
          return 3;
        }

        return 0;
      }
    }

    else
    {
      if (a2 == 4)
      {
        return 1;
      }

      if (a2 != 16)
      {
        return 0;
      }
    }

    return 2;
  }

  if (a2 >= 0x2000)
  {
    if (a2 != 0x2000 && a2 != 12288 && a2 != 0x4000)
    {
      return 0;
    }

    return 5;
  }

  if (a2 == 128)
  {
    return 4;
  }

  if (a2 == 4096)
  {
    return 5;
  }

  return 0;
}

uint64_t sub_1000AB658(uint64_t a1, int a2, unsigned int a3, double *a4)
{
  v5 = a3;
  if (a3 < 8)
  {
    v9 = sub_1000AB5C4(a1, a2);
    result = 0;
    v7 = dbl_101D7F420[v9] * dbl_101D7F3B0[2 * v5 + 1];
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BAFA70();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupActivityStateProbabilityGivenIndoor(),latent probability index out of bound,%lu", &v10, 0xCu);
    }

    v7 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BB00B4();
    }

    result = 0xFFFFFFFFLL;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1000AB784(uint64_t a1, int a2, uint64_t a3, unsigned int (*a4)(uint64_t, uint64_t (***)()), uint64_t a5)
{
  if (a2 <= 0)
  {
    sub_101BB4CCC();
  }

  v10 = *(a1 + 128);
  v11 = *(a3 + 8);
  v12 = *(a3 + 12);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (v11 <= v12)
    {
      v11 = *(a3 + 12);
    }

    if (v11 != a2)
    {
      sub_101BB4C48();
    }

    for (i = 0; i != a2; ++i)
    {
      v15 = sub_1000AB25C(a3, i);
      if (v15 < 0.0 || v15 > 1.0)
      {
        sub_101BB4C74();
      }
    }

    v11 = *(a3 + 8);
    v12 = *(a3 + 12);
  }

  if (v11)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    sub_10131AD8C(&v33, a2, 1u);
    if (v35 < a2)
    {
      sub_101BB2528(2708, "nr <= O.MaxNumRows()");
    }

    if (!HIDWORD(v35))
    {
      sub_101BB2528(2709, "nc <= O.MaxNumCols()");
    }

    sub_1000AB298(&v33, a2, 1);
    sub_100323BB4(&v33, 1.0);
    v30 = 0x100000002;
    v28 = off_1024DFF00;
    v29 = xmmword_101D7F650;
    v31 = v32;
    sub_1000AB504(&v33, &v28, 1.0 / a2);
    sub_1000AC16C(a1 + 64, &v28);
  }

  else
  {
    v30 = 0x100000002;
    v28 = off_1024DFF00;
    v29 = xmmword_101D7F650;
    v31 = v32;
    v18 = sub_1000ABE20(a3, 1, &v28);
    if (DWORD2(v29) != 1)
    {
      sub_101BB1720();
    }

    v19 = *v31;
    if (*v31 <= 0.0)
    {
      sub_101BB4CA0();
    }

    if (fabs(v19 + -1.0) <= v10)
    {
      sub_1000ABF7C(&v28, a3);
      sub_1000AC10C(&v28, a2, 1);
      sub_1000AC16C(a1 + 64, &v28);
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
      {
        LOWORD(v28) = 2;
        LOBYTE(v33) = 1;
        cnprint::CNPrinter::Print();
      }

      sub_1000ABF7C(&v33, a3);
      sub_1000AC10C(&v33, a2, 1);
      v30 = 0x100000002;
      v28 = off_1024DFF00;
      v29 = xmmword_101D7F650;
      v31 = v32;
      sub_1000AB504(&v33, &v28, 1.0 / v19);
      sub_1000AC16C(a1 + 64, &v28);
    }
  }

  *(a1 + 120) = 1;
  v30 = 0x200000002;
  v28 = off_1024E00E8;
  v29 = xmmword_101D7F660;
  v31 = v32;
  if (a4(a5, &v28))
  {
    LOWORD(v33) = 2;
    LOBYTE(v23) = 4;
    cnprint::CNPrinter::Print();
    return 27;
  }

  else
  {
    v21 = sub_1000AC2A4(a1, a2, &v28);
    if (v21)
    {
      v35 = 0x100000002;
      v34 = xmmword_101D7F650;
      v33 = off_1024DFF00;
      v36 = v37;
      sub_1000AC374(&v28, a1 + 64, &v33);
      sub_1000AC16C(a1 + 8, &v33);
      v25 = 0x100000002;
      v23 = off_1024DFF00;
      v24 = xmmword_101D7F650;
      v26 = &v27;
      sub_1000ABE20(a1 + 8, 1, &v23);
      if (DWORD2(v24) != 1)
      {
        __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
      }

      v22 = 1.0 / *v26;
      v35 = 0x100000002;
      v34 = xmmword_101D7F650;
      v33 = off_1024DFF00;
      v36 = v37;
      sub_1000AB504(a1 + 8, &v33, v22);
      sub_1000AC16C(a1 + 8, &v33);
      result = 0;
      *(a1 + 120) = 0;
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(v21) <= 1)
      {
        LOWORD(v33) = 2;
        LOBYTE(v23) = 1;
        cnprint::CNPrinter::Print();
      }

      return 28;
    }
  }

  return result;
}

double sub_1000ABCB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000002;
  *a2 = off_1024DFF00;
  *(a2 + 8) = xmmword_101D7F650;
  *(a2 + 32) = a2 + 40;
  v3 = 64;
  if (!*(a1 + 120))
  {
    v3 = 8;
  }

  *&result = sub_1000AC16C(a2, a1 + v3).n128_u64[0];
  return result;
}

double sub_1000ABD54(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 240))
  {
    sub_1000ABCB8(a1, v6);
    return *sub_1000AC838(v6, *a2);
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,getStateProbability(),HMM Not initialized", v6, 2u);
    }

    v3 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BB1778();
    }
  }

  return v3;
}

_DWORD *sub_1000ABE20(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_101BB4A38();
  }

  if (a2 == 1)
  {
    v5 = *(a3 + 28);
    v6 = *(a1 + 12);
    if (v5 < v6)
    {
      sub_101BB4A0C();
    }

    result = sub_1000AB298(a3, 1, v6);
    v8 = *(a1 + 12);
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 8);
      v11 = *(a1 + 32);
      v12 = *(a3 + 32);
      v13 = 1;
      do
      {
        v14 = *(v11 + 8 * (v10 * v9));
        v15 = v10 - 1;
        v16 = v13;
        if (v10 >= 2)
        {
          do
          {
            v14 = v14 + *(v11 + 8 * v16++);
            --v15;
          }

          while (v15);
        }

        *(v12 + 8 * v9++) = v14;
        v13 += v10;
      }

      while (v9 != v8);
    }
  }

  else
  {
    v17 = *(a1 + 8);
    if (*(a3 + 24) < v17)
    {
      sub_101BB49E0();
    }

    result = sub_1000AB298(a3, v17, 1);
    v18 = *(a1 + 8);
    if (v18)
    {
      v19 = *(a1 + 32);
      v20 = *(a3 + 32);
      v21 = *(a1 + 8);
      do
      {
        v22 = *v19++;
        *v20++ = v22;
        --v21;
      }

      while (v21);
    }

    v23 = *(a1 + 12);
    if (v23 >= 2)
    {
      v24 = *(a1 + 32);
      v25 = *(a3 + 32);
      v26 = 1;
      v27 = v18;
      do
      {
        v28 = v18;
        v29 = v27;
        v30 = v25;
        if (v18)
        {
          do
          {
            *v30 = *(v24 + 8 * v29) + *v30;
            ++v30;
            ++v29;
            --v28;
          }

          while (v28);
        }

        ++v26;
        v27 += v18;
      }

      while (v26 != v23);
    }
  }

  return result;
}

__n128 sub_1000ABF7C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024DFF00;
  if (a1 == a2)
  {
    v16 = "this != &(A)";
    v17 = 603;
LABEL_21:
    v18 = "cnmatrix.h";
    v19 = "CNMatrix";
LABEL_22:
    __assert_rtn(v19, v18, v17, v16);
  }

  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v16 = "this->max_num_rows_ >= num_rows";
    v17 = 422;
LABEL_18:
    v18 = "cnmatrixbase.h";
    v19 = "SetMatrixSize";
    goto LABEL_22;
  }

  v4 = *(a2 + 12);
  if (v4 >= 2)
  {
    v16 = "this->max_num_cols_ >= num_cols";
    v17 = 423;
    goto LABEL_18;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  v5 = v4 * v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v16 = "this->max_num_rows_ >= A.num_rows_";
    v17 = 616;
    goto LABEL_21;
  }

  if (*(a2 + 12) > 1u)
  {
    v16 = "this->max_num_cols_ >= A.num_cols_";
    v17 = 617;
    goto LABEL_21;
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v6 + 8 * v10);
    v13 = (v7 - 1) >> 1;
    v14 = v11;
    do
    {
      v15 = *v14++;
      *v6++ = v15;
      --v13;
    }

    while (v13);
    result = *(v11 + 8 * v10);
    *v12 = result;
  }

  else if (v5)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6 = v9;
      v6 = (v6 + 8);
      --v5;
    }

    while (v5);
  }

  return result;
}

_DWORD *sub_1000AC10C(_DWORD *result, int a2, int a3)
{
  if (a2 < 0)
  {
    sub_101BB4B14();
  }

  if (a3 < 0)
  {
    sub_101BB4AE8();
  }

  if (a3 * a2 != result[4])
  {
    sub_101BB4A64();
  }

  if (result[6] < a2)
  {
    sub_101BB4ABC();
  }

  if (result[7] < a3)
  {
    sub_101BB4A90();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

__n128 sub_1000AC16C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 24) < v2)
    {
      sub_101A267C4();
    }

    v3 = *(a2 + 12);
    if (*(a1 + 28) < v3)
    {
      sub_101A26798();
    }

    *(a1 + 8) = v2;
    *(a1 + 12) = v3;
    v4 = v3 * v2;
    *(a1 + 16) = v4;
    *(a1 + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = (v10 + 8 * (v5 - 2));
      v13 = (v11 + 8 * (v5 - 2));
      v14 = (v5 - 1) >> 1;
      do
      {
        v15 = *v11++;
        *v10++ = v15;
        --v14;
      }

      while (v14);
      result = *v13;
      *v12 = *v13;
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 32);
      v7 = *(a1 + 32);
      do
      {
        v8 = *v6++;
        result.n128_u64[0] = v8;
        *v7++ = v8;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t sub_1000AC220(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    sub_101A26A2C();
  }

  v4 = a2 + *(a1 + 20) * a3;
  if ((v4 & 0x80000000) != 0)
  {
    sub_101A26A00();
  }

  if (v4 >= *(a1 + 16))
  {
    sub_101A269D4();
  }

  return v3 + 8 * v4;
}

_DWORD *sub_1000AC264(_DWORD *result, unsigned int a2, unsigned int a3)
{
  if (result[6] < a2)
  {
    sub_101AF29FC();
  }

  if (result[7] < a3)
  {
    sub_101AF29D0();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

BOOL sub_1000AC2A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    sub_101BB4D24();
  }

  if (*(a3 + 8) != a2 || *(a3 + 12) != a2)
  {
    sub_101BB4CF8();
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 128);
LABEL_8:
  v9 = 0;
  v10 = 0.0;
  while (1)
  {
    v11 = sub_1000AB4C0(a3, v9, v7);
    if (v11 < 0.0 || v11 > 1.0)
    {
      return v6;
    }

    v10 = v10 + v11;
    if (a2 == ++v9)
    {
      if (fabs(v10 + -1.0) <= v8)
      {
        v6 = ++v7 >= a2;
        if (v7 != a2)
        {
          goto LABEL_8;
        }
      }

      return v6;
    }
  }
}

double *sub_1000AC374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 12);
  if (v3 != *(a2 + 8))
  {
    sub_101A268A0();
  }

  if (a1 == a3)
  {
    sub_101A268F8();
  }

  if (a2 == a3)
  {
    sub_101A268CC();
  }

  v7 = *(a1 + 8);
  v8 = *(a2 + 12);
  result = sub_1000AB298(a3, *(a1 + 8), *(a2 + 12));
  if (v3 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  if (v10 <= v7)
  {
    v10 = v7;
  }

  v11 = *(a1 + 32);
  if (v10 > 5)
  {
    return cblas_dgemm_NEWLAPACK();
  }

  if (v8)
  {
    v12 = 0;
    v13 = *(a2 + 32);
    v14 = *(a3 + 32);
    do
    {
      if (v7)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          v17 = 0.0;
          if (v3)
          {
            v18 = v3;
            v19 = v13;
            result = v16;
            do
            {
              v20 = *v19++;
              v17 = v17 + *result * v20;
              result += v7;
              --v18;
            }

            while (v18);
          }

          *(v14 + 8 * v12 * v7 + 8 * v15++) = v17;
          ++v16;
        }

        while (v15 != v7);
      }

      ++v12;
      v13 += v3;
    }

    while (v12 != v8);
  }

  return result;
}

void sub_1000AC4D8(uint64_t a1)
{
  *(a1 + 184) = *(a1 + 248);
  *(a1 + 192) = sub_1000081AC();
  *buf = 1;
  v2 = sub_1000ABD54(a1, buf);
  *(a1 + 200) = 0;
  *(a1 + 216) = v2;
  *(a1 + 208) = 0;
  if (v2 > 0.525 && v2 <= 0.7)
  {
    v3 = xmmword_101CEFBC0;
LABEL_16:
    *(a1 + 200) = v3;
    goto LABEL_17;
  }

  if (v2 > 0.7 && v2 <= 0.9)
  {
    v4 = 2;
LABEL_7:
    v3 = vdupq_n_s64(v4);
    goto LABEL_16;
  }

  if (v2 > 0.9 && v2 <= 1.0)
  {
    v3 = xmmword_101C65490;
    goto LABEL_16;
  }

  if (v2 > 0.3 && v2 <= 0.45)
  {
    v4 = 1;
    goto LABEL_7;
  }

  if (v2 > 0.1 && v2 <= 0.3)
  {
    v3 = xmmword_101D17760;
    goto LABEL_16;
  }

  v15 = v2 > 0.1 || v2 <= 0.0;
  v16 = fabs(v2);
  if (!v15 || v16 < 2.22044605e-16)
  {
    v3 = xmmword_101D17750;
    goto LABEL_16;
  }

LABEL_17:
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v6 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 184);
    v8 = *(a1 + 192);
    v9 = *(a1 + 200);
    v10 = *(a1 + 208);
    v11 = *(a1 + 232);
    v12 = *(a1 + 216);
    v13 = *(a1 + 224);
    v14 = *(a1 + 248);
    *buf = 134219777;
    v20 = v7;
    v21 = 2048;
    v22 = v8;
    v23 = 2049;
    v24 = v9;
    v25 = 2049;
    v26 = v10;
    v27 = 2049;
    v28 = v12;
    v29 = 1025;
    v30 = v11;
    v31 = 2049;
    v32 = v13;
    v33 = 2048;
    v34 = v14;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_updateOutdoorEstimate,startTime,%f,mctTimestampSec,%f,type,%{private}ld,confidence,%{private}ld,estimatedStateProbabilityOutdoor,%{private}f,isAstronomicalDaytime,%{private}d,daylightConfidence,%{private}ld,EstimatorTimeCfaSec,%f", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorEstimator::updateOutdoorEstimate()", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

uint64_t sub_1000AC838(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101AF2C38();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_101AF2C0C();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101AF2BE0();
  }

  return v2 + 8 * a2;
}

void sub_1000AC874(uint64_t a1, int a2, double a3)
{
  if (*(a1 + 257))
  {
    v6 = a3;
    v7 = 1;
    v8 = a2;
    sub_1000AC9F4(a1, &v6);
    if (qword_1025D4760 != -1)
    {
      sub_101B52FC8();
    }

    v4 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174913;
      v10 = v8;
      v11 = 2048;
      v12 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController_feedMotionActivity,activityStateEvidence,%{private}d,currentTime,%f", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B532B0();
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101B52ED8();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimatorController,CLOutdoorEstimatorTurnOffMotionActivity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B531DC();
    }
  }
}

void sub_1000AC9F4(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4760 != -1)
  {
    sub_10030C654();
  }

  v4 = qword_1025D4768;
  if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator,processEvidence(),Process ActivityState", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB2BF8();
  }

  *(a1 + 168) = *(a2 + 3);
  *(a1 + 176) = *a2;
  if (*(a1 + 240))
  {
    v38 = 0x100000001;
    *&v5 = 0x100000001;
    *(&v5 + 1) = 0x100000001;
    v37 = v5;
    v36 = off_1024E0058;
    v39 = &v40;
    *sub_1000AC220(&v36, 0, 0) = sub_1000ADBE8;
    v33 = 0x100000001;
    v31 = off_1024E00A0;
    *&v6 = 0x100000001;
    *(&v6 + 1) = 0x100000001;
    v32 = v6;
    v34 = &v35;
    __asm { FMOV            V0.2D, #-1.0 }

    v29 = _Q0;
    v30 = *a2;
    v28 = -1.0;
    if (sub_1000AD0C0(a1 + 136, *(a2 + 3), *(a1 + 160), &v28))
    {
      if (qword_1025D4760 != -1)
      {
        sub_101BB14F4();
      }

      v12 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenOutdoor failed", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BB2DC8();
      }
    }

    else if (v28 < 0.0 || v28 > 1.0 || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (qword_1025D4760 != -1)
      {
        sub_101BB14F4();
      }

      v15 = qword_1025D4768;
      if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenOutdoor returned invalid probability", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BB2EAC();
      }
    }

    else
    {
      *(&v29 + 1) = v28;
      v28 = -1.0;
      if (sub_1000AB658(a1 + 136, *(a2 + 3), *(a1 + 160), &v28))
      {
        if (qword_1025D4760 != -1)
        {
          sub_101BB14F4();
        }

        v14 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenIndoor failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101BB2F90();
        }
      }

      else if (v28 < 0.0 || v28 > 1.0 || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        if (qword_1025D4760 != -1)
        {
          sub_101BB14F4();
        }

        v18 = qword_1025D4768;
        if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,lookupActivityStateProbabilityGivenIndoor returned invalid probability", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101BB3074();
        }
      }

      else
      {
        *&v29 = v28;
        *sub_1000AC220(&v31, 0, 0) = &v29;
        sub_1000ABCB8(a1, buf);
        sub_1000AD1EC(&v51, &v36);
        sub_1000AD380(v27, &v31);
        v16 = sub_1000AD4D8(a1, 2, buf, 1, &v51, v27);
        if (v16)
        {
          if (qword_1025D4760 != -1)
          {
            sub_101BB14F4();
          }

          v17 = qword_1025D4768;
          if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v42) = v16;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,HMM update failed,%d", buf, 8u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101BB3158();
          }
        }

        else
        {
          if (qword_1025D4760 != -1)
          {
            sub_101BB14F4();
          }

          v19 = qword_1025D4768;
          if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_DEBUG))
          {
            v20 = *a2;
            v21 = *(a2 + 3);
            v22 = *(a1 + 248);
            *buf = 134219009;
            v42 = v20;
            v43 = 1025;
            v44 = v21;
            v45 = 2048;
            v46 = v22;
            v47 = 2049;
            v48 = *(&v29 + 1);
            v49 = 2049;
            v50 = v29;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "CLOutdoorEstimator_ActivityState,evidenceCfatSec,%f,motionActivityType,%{private}d,EstimatorTimeCfaSec,%f,likelihoodObservationGivenOutdoor,%{private}f,likelihoodObservationGivenIndoor,%{private}f", buf, 0x30u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4760 != -1)
            {
              sub_101BB14F4();
            }

            v23 = *a2;
            v24 = *(a2 + 3);
            v25 = *(a1 + 248);
            v51 = 134219009;
            v52 = v23;
            v53 = 1025;
            v54 = v24;
            v55 = 2048;
            v56 = v25;
            v57 = 2049;
            v58 = *(&v29 + 1);
            v59 = 2049;
            v60 = v29;
            v26 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "void CLOutdoorEstimator::processEvidence(const CLOutdoorEstimator_Type::ActivityStateEvidence &)", "%s\n", v26);
            if (v26 != buf)
            {
              free(v26);
            }
          }

          sub_1000AC4D8(a1);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BB14F4();
    }

    v13 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,processEvidence(),ActivityState,HMM Not initialized", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB2CE4();
    }
  }
}

uint64_t sub_1000AD0C0(uint64_t a1, int a2, unsigned int a3, double *a4)
{
  v5 = a3;
  if (a3 < 8)
  {
    v9 = sub_1000AB5C4(a1, a2);
    result = 0;
    v7 = dbl_101D7F380[v9] * dbl_101D7F3B0[2 * v5 + 1];
  }

  else
  {
    if (qword_1025D4760 != -1)
    {
      sub_101BAFA70();
    }

    v6 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "CLOutdoorEstimator,lookupActivityStateProbabilityGivenOutdoor(),latent probability index out of bound,%lu", &v10, 0xCu);
    }

    v7 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101BAFFD4();
    }

    result = 0xFFFFFFFFLL;
  }

  *a4 = v7;
  return result;
}

uint64_t sub_1000AD1EC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024DFF48;
  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v9 = "this->max_num_rows_ >= num_rows";
    v10 = 422;
LABEL_11:
    v11 = "cnmatrixbase.h";
    v12 = "SetMatrixSize";
    goto LABEL_15;
  }

  v5 = *(a2 + 12);
  if (v5 >= 2)
  {
    v9 = "this->max_num_cols_ >= num_cols";
    v10 = 423;
    goto LABEL_11;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v5;
  v6 = v5 * v3;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
LABEL_14:
    v11 = "cnmatrix.h";
    v12 = "CNMatrix";
LABEL_15:
    __assert_rtn(v12, v11, v10, v9);
  }

  if (*(a2 + 12) > 1u)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      *(*(a1 + 32) + 8 * v7) = sub_1000AD344(a2, v7);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  return a1;
}

uint64_t sub_1000AD344(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101BB4C1C();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_101BB4BF0();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101BB4BC4();
  }

  return *(v2 + 8 * a2);
}

uint64_t sub_1000AD380(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1024DFFD0;
  v3 = *(a2 + 8);
  if (v3 > 2)
  {
    v9 = "this->max_num_rows_ >= num_rows";
    v10 = 422;
LABEL_11:
    v11 = "cnmatrixbase.h";
    v12 = "SetMatrixSize";
    goto LABEL_15;
  }

  v5 = *(a2 + 12);
  if (v5 >= 2)
  {
    v9 = "this->max_num_cols_ >= num_cols";
    v10 = 423;
    goto LABEL_11;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = v5;
  v6 = v5 * v3;
  *(a1 + 16) = v6;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (*(a2 + 8) > 2u)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
LABEL_14:
    v11 = "cnmatrix.h";
    v12 = "CNMatrix";
LABEL_15:
    __assert_rtn(v12, v11, v10, v9);
  }

  if (*(a2 + 12) > 1u)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      *(*(a1 + 32) + 8 * v7) = sub_1000AD344(a2, v7);
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  return a1;
}

uint64_t sub_1000AD4D8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a2 <= 0)
  {
    sub_101BB257C();
  }

  v12 = *(a1 + 128);
  v13 = *(a3 + 8);
  v14 = *(a3 + 12);
  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    if (v13 <= v14)
    {
      v13 = *(a3 + 12);
    }

    if (v13 != a2)
    {
      sub_101BB244C();
    }

    for (i = 0; i != a2; ++i)
    {
      v17 = sub_1000AB25C(a3, i);
      if (v17 < 0.0 || v17 > 1.0)
      {
        sub_101BB2478();
      }
    }
  }

  if (a4 <= 0)
  {
    sub_101BB2550();
  }

  v19 = *(a5 + 8);
  v20 = *(a5 + 12);
  if (v19 <= v20)
  {
    v21 = *(a5 + 12);
  }

  else
  {
    v21 = *(a5 + 8);
  }

  if (v20)
  {
    v22 = v19 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v21;
  }

  if (v23 != a4)
  {
    sub_101BB24A4();
  }

  v24 = *(a6 + 8);
  v25 = *(a6 + 12);
  if (v24 <= v25)
  {
    v26 = *(a6 + 12);
  }

  else
  {
    v26 = *(a6 + 8);
  }

  if (v25)
  {
    v27 = v24 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  if (v28 != a4)
  {
    sub_101BB24D0();
  }

  if (*(a3 + 8) && *(a3 + 12))
  {
    v57 = 0x100000002;
    v56 = xmmword_101D7F650;
    v55 = off_1024DFF00;
    v58 = v59;
    v29 = sub_1000ABE20(a3, 1, &v55);
    if (DWORD2(v56) != 1)
    {
      sub_101BB1720();
    }

    v30 = *v58;
    if (*v58 <= 0.0)
    {
      sub_101BB24FC();
    }

    if (fabs(v30 + -1.0) <= v12)
    {
      sub_1000ABF7C(&v55, a3);
      sub_1000AC10C(&v55, a2, 1);
      sub_1000AC16C(a1 + 8, &v55);
    }

    else
    {
      if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
      {
        LOWORD(v55) = 2;
        LOBYTE(v50) = 1;
        cnprint::CNPrinter::Print();
      }

      sub_1000ABF7C(&v50, a3);
      sub_1000AC10C(&v50, a2, 1);
      v57 = 0x100000002;
      v56 = xmmword_101D7F650;
      v55 = off_1024DFF00;
      v58 = v59;
      sub_1000AB504(&v50, &v55, 1.0 / v30);
      sub_1000AC16C(a1 + 8, &v55);
    }
  }

  else
  {
    sub_10131AD8C(&v50, a2, 1u);
    if (v52 < a2)
    {
      sub_101BB2528(2708, "nr <= O.MaxNumRows()");
    }

    if (!HIDWORD(v52))
    {
      sub_101BB2528(2709, "nc <= O.MaxNumCols()");
    }

    sub_1000AB298(&v50, a2, 1);
    sub_100323BB4(&v50, 1.0);
    v57 = 0x100000002;
    v56 = xmmword_101D7F650;
    v55 = off_1024DFF00;
    v58 = v59;
    sub_1000AB504(&v50, &v55, 1.0 / a2);
    sub_1000AC16C(a1 + 8, &v55);
  }

  sub_1000ABF7C(&v55, a1 + 8);
  v31 = 0;
  while (1)
  {
    v32 = sub_1000ADBAC(a5, v31);
    v52 = 0x100000002;
    v50 = off_1024DFF00;
    v51 = xmmword_101D7F650;
    v53 = &v54;
    v33 = sub_1000ADBAC(a6, v31);
    if (v32(v33, &v50))
    {
      break;
    }

    v34 = 0;
    v35 = 0.0;
    do
    {
      v36 = *sub_1000AC838(&v50, v34);
      if (v36 < 0.0 || v36 > 1.0)
      {
        goto LABEL_55;
      }

      v35 = v35 + v36;
      ++v34;
    }

    while (a2 != v34);
    if (fabs(v35) <= v12)
    {
LABEL_55:
      LOWORD(v44) = 2;
      v49 = 4;
      cnprint::CNPrinter::Print();
      return 30;
    }

    v38 = 0;
    do
    {
      v39 = *sub_1000AC838(&v50, v38);
      v40 = sub_1000AC838(&v55, v38);
      *v40 = v39 * *v40;
      ++v38;
    }

    while (a2 != v38);
    v46 = 0x100000002;
    v44 = off_1024DFF00;
    v45 = xmmword_101D7F650;
    v47 = v48;
    v41 = sub_1000ABE20(&v55, 1, &v44);
    if (DWORD2(v45) != 1)
    {
      __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
    }

    v42 = *v47;
    if (fabs(*v47) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v41) <= 1)
      {
        LOWORD(v44) = 2;
        v49 = 1;
        cnprint::CNPrinter::Print();
      }

      sub_1000AC16C(&v55, a1 + 8);
      v46 = 0x100000002;
      v44 = off_1024DFF00;
      v45 = xmmword_101D7F650;
      v47 = v48;
      sub_1000ABE20(&v55, 1, &v44);
      if (DWORD2(v45) != 1)
      {
        __assert_rtn("operator double", "cnmatrixbase.h", 979, "num_elements_ == 1");
      }

      v42 = *v47;
    }

    v46 = 0x100000002;
    v44 = off_1024DFF00;
    v45 = xmmword_101D7F650;
    v47 = v48;
    sub_1000AB504(&v55, &v44, 1.0 / v42);
    sub_1000AC16C(&v55, &v44);
    if (++v31 == a4)
    {
      sub_1000AC16C(a1 + 64, &v55);
      result = 0;
      *(a1 + 120) = 1;
      return result;
    }
  }

  LOWORD(v44) = 2;
  v49 = 4;
  cnprint::CNPrinter::Print();
  return 29;
}

uint64_t sub_1000ADBAC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_101BB49B4();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_101BB4988();
  }

  if (*(a1 + 16) <= a2)
  {
    sub_101BB495C();
  }

  return *(v2 + 8 * a2);
}

uint64_t sub_1000ADBE8(uint64_t a1, _DWORD *a2)
{
  v3 = *a1;
  if ((*a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v3 >= 0.0 ? (v4 = v3 <= 1.0) : (v4 = 0), !v4))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v5 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      v17 = 134217984;
      v18 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "OutdoorEstimatorEmissionLikelihood,Invalid Likelihood Observation Given Indoor,likelihoodObservationGivenIndoor,%f", &v17, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB235C(a1);
    }

    return 0xFFFFFFFFLL;
  }

  v8 = (a1 + 8);
  v9 = *(a1 + 8);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v9 >= 0.0 ? (v10 = v9 <= 1.0) : (v10 = 0), !v10))
  {
    if (qword_1025D4760 != -1)
    {
      sub_10030C654();
    }

    v11 = qword_1025D4768;
    if (os_log_type_enabled(qword_1025D4768, OS_LOG_TYPE_ERROR))
    {
      v12 = *v8;
      v17 = 134217984;
      v18 = *&v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "OutdoorEstimatorEmissionLikelihood,Invalid Likelihood Observation Given Outdoor,likelihoodObservationGivenOutdoor,%f", &v17, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101BB226C(v8);
    }

    return 0xFFFFFFFFLL;
  }

  sub_1000ADDF4(a2, 2u, 1);
  v14 = *a1;
  *sub_1000AC220(a2, 0, 0) = v14;
  v15 = *(a1 + 8);
  v16 = sub_1000AC220(a2, 1, 0);
  result = 0;
  *v16 = v15;
  return result;
}

_DWORD *sub_1000ADDF4(_DWORD *result, unsigned int a2, int a3)
{
  if (result[6] < a2)
  {
    sub_101BB4B98();
  }

  if (a3 < 0)
  {
    sub_101BB4B6C();
  }

  if (result[7] < a3)
  {
    sub_101BB4B40();
  }

  result[2] = a2;
  result[3] = a3;
  result[4] = a3 * a2;
  result[5] = a2;
  return result;
}

uint64_t sub_1000ADE3C(uint64_t a1, _DWORD *a2, double a3, double a4)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  if (*(a1 + 8) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v12 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 56);
      v14 = *(a1 + 8);
      *buf = 67240448;
      *v18 = v13;
      *&v18[4] = 2050;
      *&v18[6] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "KFCV:#Error,updateAltitudeRate,failed with invalid var,initialized,%{public}d,altVar,%{public}.2f", buf, 0x12u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101912E28(buf);
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::updateAltitudeRate(const double, const double, const LCFusionDynamicsMode &)", "%s\n", v11);
      if (v11 == buf)
      {
        return 0;
      }

LABEL_20:
      free(v11);
      return 0;
    }
  }

  else
  {
    if (a4 <= 0.0)
    {
      goto LABEL_7;
    }

    v7 = *a2 - 1;
    v8 = 4.0;
    if (v7 <= 9)
    {
      v8 = dbl_101C89760[v7];
    }

    if (v8 >= a4)
    {
      if (v7 > 9)
      {
        v15 = 1600.0;
      }

      else
      {
        v15 = dbl_101C897B0[v7];
      }

      if (a3 * a3 <= v15)
      {
        *(a1 + 16) = a3;
        *(a1 + 24) = a4 * a4;
        *(a1 + 40) = a3;
        return 1;
      }

      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v16 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v18 = a3;
        *&v18[8] = 2050;
        *&v18[10] = a4;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRate,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
LABEL_12:
        sub_101912E28(buf);
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::updateAltitudeRate(const double, const double, const LCFusionDynamicsMode &)", "%s\n", v11);
        if (v11 == buf)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
LABEL_7:
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v9 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        *v18 = a3;
        *&v18[8] = 2050;
        *&v18[10] = a4;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRateUnc,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x16u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_1000AE2A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t *sub_1000AE2AC(uint64_t a1, unsigned int *a2)
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

BOOL sub_1000AE380(uint64_t a1, double *a2, double a3)
{
  v5 = *a2;
  v6 = *(a1 + 368);
  if (a3 < 0.0 || v5 >= v6)
  {
LABEL_14:
    *buf = v5;
    *v21 = 0;
    *&v21[8] = 0;
    *&v21[16] = vdupq_n_s64(0x3F847AE147AE147CuLL);
    v22 = 0;
    v11 = sub_1000AE5EC(a1, buf, *&v21[16]);
    if (*(a1 + 352) == 1)
    {
      v16 = v5;
      *v17 = xmmword_101C89500;
      return v11 & sub_1000AF298(a1, &v16);
    }

    return v11;
  }

  if (v6 - v5 <= a3)
  {
    v5 = v6 + 0.001;
    goto LABEL_14;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v8 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 596);
    v10 = *(a1 + 368);
    *buf = 67240960;
    *&buf[4] = v9;
    *v21 = 2050;
    *&v21[2] = v10;
    *&v21[10] = 2050;
    *&v21[12] = v10 - v5;
    *&v21[20] = 2050;
    *&v21[22] = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,time-lagged zupt is ignored,filter mct,%{public}.3f,zupt timelag,%{public}.3f,tolerance,%{public}.3f", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912E28(buf);
    v13 = *(a1 + 596);
    v14 = *(a1 + 368);
    LODWORD(v16) = 67240960;
    HIDWORD(v16) = v13;
    *v17 = 2050;
    *&v17[2] = v14;
    *&v17[10] = 2050;
    *&v17[12] = v14 - v5;
    v18 = 2050;
    v19 = a3;
    v15 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::zupt(const CFTimeInterval &, const double)", "%s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  return 0;
}

void sub_1000AE5E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_1000AE5EC(uint64_t a1, uint64_t a2, int8x16_t a3)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v22 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 596);
      v24 = *a2;
      *buf = 67240448;
      v81 = v23;
      v82 = 2050;
      v83 = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initializedm, ENVelMeas Meas ignored,mct,%{public}.3f", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v68 = *(a1 + 596);
    v69 = *a2;
    *v76 = 67240448;
    *&v76[4] = v68;
    *&v76[8] = 2050;
    *&v76[10] = v69;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v21);
    goto LABEL_69;
  }

  if (*a2 <= 0.0 || *(a2 + 24) <= 0.0 || (v5 = *(a2 + 32), v5 <= 0.0) || fabs(*(a2 + 8)) > 70.0 || fabs(*(a2 + 16)) > 70.0 || *(a2 + 40) > 0.616850275)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v6 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 596);
      v8 = *a2;
      v9 = *(a2 + 8);
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = *(a2 + 32);
      v13 = *(a2 + 40);
      *buf = 67241729;
      v81 = v7;
      v82 = 2050;
      v83 = v8;
      v84 = 2049;
      v85 = v9;
      v86 = 2049;
      v87 = v10;
      v88 = 2050;
      v89 = v11;
      v90 = 2050;
      v91 = v12;
      v92 = 2050;
      v93 = v13;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,invalid/out-of-range ENVel Meas ignored,timetagMCT,%{public}.3f,VEmps,%{private}.2f,VNmps,%{private}.2f,VEvar,%{public}.2f,VNvar,%{public}.2f,DOTvar,%{public}.2f", buf, 0x44u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v14 = *(a1 + 596);
    v15 = *a2;
    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    v19 = *(a2 + 32);
    v20 = *(a2 + 40);
    *v76 = 67241729;
    *&v76[4] = v14;
    *&v76[8] = 2050;
    *&v76[10] = v15;
    *&v76[18] = 2049;
    *&v76[20] = v16;
    *&v76[28] = 2049;
    *&v76[30] = v17;
    *&v76[38] = 2050;
    *&v76[40] = v18;
    *v77 = 2050;
    *&v77[2] = v19;
    *&v77[10] = 2050;
    *&v77[12] = v20;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v21);
LABEL_69:
    if (v21 == buf)
    {
      return 0;
    }

LABEL_70:
    free(v21);
    return 0;
  }

  if (*a2 < *(a1 + 368))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v27 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(a1 + 596);
      v29 = *(a1 + 368);
      v30 = *a2;
      *buf = 67240704;
      v81 = v28;
      v82 = 2050;
      v83 = v29;
      v84 = 2050;
      v85 = *&v30;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,old ENVel Meas ignored,filterMCT,%{public}.3f,ENVelMeasMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_27;
  }

  if ((*(a1 + 592) & 1) == 0)
  {
    if (!sub_10002980C(a1, a2))
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v51 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v52 = *(a1 + 596);
        v53 = *(a1 + 368);
        v54 = *a2;
        *buf = 67240704;
        v81 = v52;
        v82 = 2050;
        v83 = v53;
        v84 = 2050;
        v85 = *&v54;
        _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter time-update failed ENVel Meas ignored,filterMCT,%{public}.3f,ENVelMeasMCT,%{public}.3f", buf, 0x1Cu);
      }

      if (!sub_10000A100(121, 2))
      {
        return 0;
      }

LABEL_27:
      sub_101912E28(buf);
      v31 = *(a1 + 596);
      v32 = *(a1 + 368);
      v33 = *a2;
      *v76 = 67240704;
      *&v76[4] = v31;
      *&v76[8] = 2050;
      *&v76[10] = v32;
      *&v76[18] = 2050;
      *&v76[20] = v33;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v21);
      goto LABEL_69;
    }

    v5 = *(a2 + 32);
  }

  v34 = *(a1 + 168);
  v35 = *(a1 + 192);
  v78 = *(a1 + 176);
  v79 = v35;
  v36 = *(a1 + 208);
  v37 = *(a1 + 264);
  v38 = *(a1 + 280);
  *&v76[32] = *(a1 + 248);
  *v77 = v37;
  v39 = *(a1 + 232);
  *&v77[16] = v38;
  v40 = *(a1 + 216);
  *v76 = v40;
  *&v76[16] = v39;
  v40.i64[0] = *(a1 + 248);
  v41 = *v40.i64 + v5;
  if (*v40.i64 + v5 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v48 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v49 = *(a1 + 596);
      *buf = 67240192;
      v81 = v49;
      _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,ENVelMeas velN innovation_var <= 0", buf, 8u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    sub_101912E28(buf);
    v50 = *(a1 + 596);
    LODWORD(v73.f64[0]) = 67240192;
    HIDWORD(v73.f64[0]) = v50;
    v21 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v21);
    if (v21 == buf)
    {
      return 0;
    }

    goto LABEL_70;
  }

  v42 = *(a1 + 216) / v41;
  v73.f64[0] = *(a1 + 184) / v41;
  v73.f64[1] = v42;
  v43 = *v40.i64 / v41;
  v44 = *(a1 + 280) / v41;
  v74 = v43;
  v75 = v44;
  *a3.i64 = *(a2 + 16) - *(a1 + 24);
  v45 = *a3.i64 * *a3.i64 / v41;
  v25 = v45 <= 100.0;
  if (v45 > 100.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v55 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 596);
      *buf = 67240704;
      v81 = v56;
      v82 = 2050;
      v83 = v45;
      v84 = 2050;
      v85 = 0x4059000000000000;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,ENVelMeas velN innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v70 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v70);
      if (v70 != buf)
      {
        free(v70);
      }
    }
  }

  else
  {
    *v40.i64 = *a3.i64 * *a3.i64;
    sub_1000AF8CC(a1, v73.f64, a3, 100.0, v40);
    sub_1000AFBD0(a1, &v73, 2, 1.0);
  }

  v57 = *(a1 + 288);
  v58 = v57 + *(a2 + 24);
  if (v58 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_101912E6C();
    }

    v63 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      v64 = *(a1 + 596);
      *buf = 67240192;
      v81 = v64;
      _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,ENVelMeas velE innovation_var <= 0", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101912E28(buf);
      v71 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v71);
      if (v71 != buf)
      {
        free(v71);
      }
    }

    v25 = 0;
    *(a1 + 168) = v34;
    v65 = v79;
    *(a1 + 176) = v78;
    *(a1 + 192) = v65;
    *(a1 + 208) = v36;
    v66 = *v77;
    *(a1 + 248) = *&v76[32];
    *(a1 + 264) = v66;
    *(a1 + 280) = *&v77[16];
    v67 = *&v76[16];
    *(a1 + 216) = *v76;
    *(a1 + 232) = v67;
  }

  else
  {
    v59 = *(a1 + 224) / v58;
    v73.f64[0] = *(a1 + 192) / v58;
    v73.f64[1] = v59;
    v74 = *(a1 + 256) / v58;
    v75 = v57 / v58;
    *v46.i64 = *(a2 + 8) - *(a1 + 32);
    v60 = *v46.i64 * *v46.i64 / v58;
    if (v60 <= 100.0)
    {
      *v47.i64 = *v46.i64 * *v46.i64;
      sub_1000AF8CC(a1, v73.f64, v46, 100.0, v47);
      sub_1000AFBD0(a1, &v73, 3, 1.0);
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_101912E6C();
      }

      v61 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v62 = *(a1 + 596);
        *buf = 67240704;
        v81 = v62;
        v82 = 2050;
        v83 = v60;
        v84 = 2050;
        v85 = 0x4059000000000000;
        _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,ENVelMeas velE innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101912E28(buf);
        v72 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithEastingNorthingVelocity(const EastNorthVelocityMeasurement &)", "%s\n", v72);
        if (v72 != buf)
        {
          free(v72);
        }
      }

      v25 = 0;
    }

    *(a1 + 168) = v34;
    *(a1 + 208) = v36;
    *(a1 + 592) = 0;
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = 0;
  }

  return v25;
}

void sub_1000AF28C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1000AF298(uint64_t a1, double *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 596);
      v13 = *a2;
      *buf = 67240448;
      v28 = v12;
      v29 = 2050;
      v30 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized VVel Meas ignored,mct,%{public}.3f", buf, 0x12u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

LABEL_52:
    sub_101912E28(buf);
    v26 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithVerticalVelocity(const VerticalVelocityMeasurement &)", "%s\n", v26);
    if (v26 != buf)
    {
      free(v26);
    }

    return 0;
  }

  if (*(a1 + 352) != 1)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 <= 0.0 || (v5 = a2[2], v5 <= 0.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v15 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a1 + 596);
      v17 = *a2;
      v18 = a2[1];
      v19 = *(a2 + 2);
      *buf = 67240961;
      v28 = v16;
      v29 = 2050;
      v30 = v17;
      v31 = 2049;
      v32 = v18;
      v33 = 2050;
      v34 = v19;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,invalid VVel Meas ignored,timetagMCT,%{public}.3f,VVel_mps,%{private}.2f,VVelVar,%{public}.2f", buf, 0x26u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_52;
  }

  v6 = *(a1 + 368);
  if (v4 < v6)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 596);
      v9 = *(a1 + 368);
      v10 = *a2;
      *buf = 67240704;
      v28 = v8;
      v29 = 2050;
      v30 = v9;
      v31 = 2050;
      v32 = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,old VVel Meas ignored,filterMCT,%{public}.3f,VVelMCT,%{public}.3f", buf, 0x1Cu);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    goto LABEL_52;
  }

  if (v4 > *(a1 + 344) + 0.001)
  {
    v20 = *(a1 + 360);
    v21 = (v4 - v6) * (v4 - v6);
    v22 = v21 * 0.5 * (v21 * 0.5);
    v23 = 9.0;
    v24 = 0.00694444444;
    if (v20 > 5)
    {
      if (v20 <= 7)
      {
        if (v20 == 6)
        {
          v22 = v22 * 0.100489;
          v23 = 4.0;
          v24 = 0.01;
        }

        goto LABEL_48;
      }

      switch(v20)
      {
        case 8:
          v23 = 25.0;
          v24 = 0.0625;
          goto LABEL_48;
        case 9:
          v22 = v22 * 9.0;
          v24 = 0.5;
          v23 = 225.0;
          goto LABEL_48;
        case 10:
          v22 = v22 * 1.0e10;
          v24 = 1.0;
          v23 = 1000000.0;
LABEL_48:
          sub_100028AA0(a1 + 296, v4, v22, v21 * (v23 * v24));
          v5 = a2[2];
          goto LABEL_49;
      }

      goto LABEL_39;
    }

    if (v20 > 3)
    {
      if (v20 != 4)
      {
        v22 = v22 * 0.04;
        v24 = 0.0144927536;
        v23 = 0.49;
        goto LABEL_48;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_48;
      }

      if (v20 != 3)
      {
LABEL_39:
        v23 = 0.0;
        v22 = v22 * 0.0;
        v24 = 0.00694444444;
        if (v20 == 1)
        {
          v24 = 1.0;
        }

        if (v20 == 2)
        {
          v24 = 1.0;
        }

        goto LABEL_48;
      }
    }

    v22 = v22 * 0.04;
    v23 = 0.25;
    v24 = 0.0204081633;
    goto LABEL_48;
  }

LABEL_49:
  v25 = a2[1];

  return sub_1000ADE3C(a1 + 296, (a1 + 360), v25, v5);
}