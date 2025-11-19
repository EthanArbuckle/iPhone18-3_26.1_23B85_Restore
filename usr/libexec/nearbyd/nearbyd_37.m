void sub_10026BC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10026BCAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026BCF8(uint64_t a1)
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

uint64_t sub_10026BE00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100426398(a2);
  v6 = sub_10042640C(a2);
  if (v5 || v6 != 5)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B4D4C();
    }

    return 1;
  }

  if (sub_100462E10(a3))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B4CD8();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10026BEB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_10026BF14(uint64_t a1)
{
  v2 = atomic_load((a1 + 1240));

  return sub_10025911C(a1, v2);
}

const char *sub_10026BF3C(unsigned int *a1)
{
  v2 = atomic_load(a1);

  return sub_10025911C(a1, v2);
}

void sub_10026BF54()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F2630 = os_log_create("com.apple.nearbyd", "Driver");

  objc_autoreleasePoolPop(v0);
}

double sub_10026BFA8(void *a1)
{
  v3[2] = xmmword_1005685F0;
  v3[3] = unk_100568600;
  v3[4] = xmmword_100568610;
  v3[0] = xmmword_1005685D0;
  v3[1] = unk_1005685E0;
  v1 = sub_10026CF28(a1, v3, 5);
  v1[4] = 0;
  v1[3] = v1 + 4;
  v1[5] = 0;
  v1[6] = 0;
  *(v1 + 56) = 0;
  *(v1 + 108) = 0;
  result = 0.0;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 89) = 0u;
  return result;
}

void sub_10026C044(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_10026C054(uint64_t a1, unint64_t a2, int a3, double a4)
{
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B4DBC();
    }

    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v8 = v10;
    if (v10)
    {
      v11 = v9;
      do
      {
        v12 = *(v8 + 32);
        v13 = v12 >= a2;
        v14 = v12 < a2;
        if (v13)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * v14);
      }

      while (v8);
      if (v11 != v9 && *(v11 + 32) <= a2)
      {
        sub_100330834((v11 + 40), a3, a4);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4D88();
  }
}

void sub_10026C12C(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v7 = a3;
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B4E70();
    }

    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v8 = v10;
    if (v10)
    {
      v11 = v9;
      do
      {
        v12 = *(v8 + 32);
        v13 = v12 >= a2;
        v14 = v12 < a2;
        if (v13)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * v14);
      }

      while (v8);
      if (v11 != v9 && *(v11 + 32) <= a2)
      {
        sub_1003313C4(v11 + 40, v7, a4);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4E3C();
  }
}

double sub_10026C214(uint64_t a1, double a2)
{
  if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B4EDC();
  }

  v4 = *(a1 + 40);
  if (v4 >= 4)
  {
    v4 = 4;
  }

  v8 = v4;
  v5 = a2 - *(a1 + 88);
  v9 = &v8;
  v6 = sub_10026D1E8(a1, &v8);
  result = v5 + *(v6 + 5);
  *(v6 + 5) = result;
  *(a1 + 88) = a2;
  return result;
}

void sub_10026C2C0(uint64_t a1, unint64_t a2, int a3, double a4)
{
  v41[0] = a2;
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B4F7C();
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = a1 + 32;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 == a1 + 32 || *(v9 + 32) > a2)
    {
LABEL_12:
      v13 = a1 + 24;
      if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B4FE8();
      }

      sub_10026C214(a1, a4);
      sub_100330574(v30);
      v41[2] = v41;
      v14 = sub_10026D2BC(v13, v41);
      v15 = *&v31[9];
      v17 = v30[3];
      v16 = *v31;
      *(v14 + 9) = v30[2];
      *(v14 + 11) = v17;
      *(v14 + 13) = v16;
      *(v14 + 113) = v15;
      v18 = v30[1];
      *(v14 + 5) = v30[0];
      *(v14 + 7) = v18;
      v19 = v14 + 18;
      sub_10002074C((v14 + 17), v14[18]);
      v20 = v33;
      v14[17] = v32;
      v14[18] = v20;
      v21 = v34;
      v14[19] = v34;
      if (v21)
      {
        v20[2] = v19;
        v32 = &v33;
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v14[17] = v19;
      }

      v22 = v14 + 21;
      sub_10002074C((v14 + 20), v14[21]);
      v23 = v36;
      v14[20] = v35;
      v14[21] = v23;
      v24 = v37;
      v14[22] = v37;
      if (v24)
      {
        v23[2] = v22;
        v35 = &v36;
        v36 = 0;
        v37 = 0;
      }

      else
      {
        v14[20] = v22;
      }

      v26 = v14[24];
      v25 = v14 + 24;
      sub_1001B93C0((v25 - 1), v26);
      v27 = v39;
      *(v25 - 1) = v38;
      *v25 = v27;
      v28 = v40;
      v25[1] = v40;
      if (v28)
      {
        *(v27 + 16) = v25;
        v38 = &v39;
        v39 = 0;
        v40 = 0;
        v27 = 0;
      }

      else
      {
        *(v25 - 1) = v25;
      }

      sub_1001B93C0(&v38, v27);
      sub_10002074C(&v35, v36);
      sub_10002074C(&v32, v33);
      *&v30[0] = v41;
      v29 = sub_10026D2BC(v13, v41);
      sub_100330578((v29 + 5), a3, *(a1 + 48), *(a1 + 104), a4);
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4F48();
  }
}

void sub_10026C570(uint64_t a1, unint64_t a2, double a3)
{
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B5088();
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = a1 + 32;
      do
      {
        v8 = *(v6 + 32);
        v9 = v8 >= a2;
        v10 = v8 < a2;
        if (v9)
        {
          v7 = v6;
        }

        v6 = *(v6 + 8 * v10);
      }

      while (v6);
      if (v7 != a1 + 32 && *(v7 + 32) <= a2)
      {
        if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
        {
          sub_1004B50F4();
        }

        sub_10026C214(a1, a3);
        sub_100330944(v7 + 40, a3);
        *(a1 + 80) = *(v7 + 48) + *(a1 + 80);
        sub_10026D3E4((a1 + 24), v7);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B5054();
  }
}

void sub_10026C698(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((a1 + 48), a2);
  *(a1 + 104) = a3;
  *(a1 + 108) = 1;
}

void sub_10026C6D0(uint64_t a1, double a2)
{
  if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B5160();
  }

  *(a1 + 64) = a2;
  *(a1 + 56) = 1;
}

void sub_10026C730(uint64_t a1, double a2)
{
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B5200();
    }

    v4 = *(a1 + 24);
    if (v4 != (a1 + 32))
    {
      do
      {
        v5 = v4[1];
        v6 = v4;
        if (v5)
        {
          do
          {
            v7 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = *v7 == v6;
            v6 = v7;
          }

          while (!v8);
        }

        v9 = qword_1009F2638;
        if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134217984;
          v14 = a2;
          _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "#handoffca removedDevice() called within sessionEnded(), monotonicTimeSeconds: %f, s", buf, 0xCu);
        }

        sub_10026C570(a1, v4[4], a2);
        v4 = v7;
      }

      while (v7 != (a1 + 32));
    }

    *(a1 + 72) = a2 - *(a1 + 64);
    v10 = qword_1009F2638;
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      *buf = 134218496;
      v14 = a2;
      v15 = 2048;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "#handoffca no objects in session. Calling resetStatistics within removedDevice() monotonicTimeSeconds: %f s, fSessionStartTime: %f s, fSessionDuration: %f s", buf, 0x20u);
    }

    *(a1 + 96) = *(a1 + 80) + *(a1 + 72) / 3600.0 * 12.65;
    sub_10026C950(a1);
    sub_10026CE08(a1);
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B51CC();
  }
}

void sub_10026C950(uint64_t a1)
{
  v2 = qword_1009F2638;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 96);
    v4 = *(a1 + 72);
    v5 = sub_10026D1E8(a1, &dword_100568620)[5];
    v6 = sub_10026D1E8(a1, &dword_100568624)[5];
    v7 = sub_10026D1E8(a1, &dword_100568628)[5];
    v8 = sub_10026D1E8(a1, &dword_10056862C)[5];
    *buf = 134219520;
    *&buf[4] = v3;
    v22 = 1024;
    v23 = 1;
    v24 = 2048;
    v25 = v4;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    v30 = 2048;
    v31 = v7;
    v32 = 2048;
    v33 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#handoffca Handoff ranging session report: {\nEnergyExpendedPerSession:%f mWh,\nNumberOfSessions %d,\nSessionDuration %f s,\nTimeSpentRanging1Device %f s,\nTimeSpentRanging2Device %f s,\nTimeSpentRanging3Device %f s,\nTimeSpentRanging4OrMoreDevice %f s}", buf, 0x44u);
  }

  v19[0] = @"energyExpendedPerSession";
  v9 = [NSNumber numberWithDouble:*(a1 + 96)];
  v20[0] = v9;
  v19[1] = @"numberOfSessions";
  v10 = [NSNumber numberWithInt:1];
  v20[1] = v10;
  v19[2] = @"sessionDuration";
  v11 = [NSNumber numberWithDouble:*(a1 + 72)];
  v20[2] = v11;
  v19[3] = @"timeSpentRanging1Device";
  *buf = &dword_100568620;
  v12 = [NSNumber numberWithDouble:*(sub_10026D1E8(a1, &dword_100568620) + 5)];
  v20[3] = v12;
  v19[4] = @"timeSpentRanging2Device";
  *buf = &dword_100568624;
  v13 = [NSNumber numberWithDouble:*(sub_10026D1E8(a1, &dword_100568624) + 5)];
  v20[4] = v13;
  v19[5] = @"timeSpentRanging3Device";
  *buf = &dword_100568628;
  v14 = [NSNumber numberWithDouble:*(sub_10026D1E8(a1, &dword_100568628) + 5)];
  v20[5] = v14;
  v19[6] = @"timeSpentRanging4OrMoreDevice";
  *buf = &dword_10056862C;
  v15 = [NSNumber numberWithDouble:*(sub_10026D1E8(a1, &dword_10056862C) + 5)];
  v20[6] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];

  v17 = v16;
  AnalyticsSendEventLazy();
  v18 = qword_1009F2638;
  if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#handoffca Uploaded ranging session information through AnalyticsSendEventLazy", buf, 2u);
  }
}

double sub_10026CE08(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B526C();
  }

  v5[2] = xmmword_1005685F0;
  v5[3] = unk_100568600;
  v5[4] = xmmword_100568610;
  v5[0] = xmmword_1005685D0;
  v5[1] = unk_1005685E0;
  sub_10026D430(a1, v5, &v6);
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  sub_10023D254(v2 - 8, v3);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = 0;
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  return result;
}

uint64_t sub_10026CEE0(uint64_t a1)
{
  sub_1001B93C0(a1 + 144, *(a1 + 152));
  sub_10002074C(a1 + 120, *(a1 + 128));
  sub_10002074C(a1 + 96, *(a1 + 104));
  return a1;
}

void *sub_10026CF28(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10026CFA8(a1, v4, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10026CFA8(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_10026D040(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *sub_10026D1E8(uint64_t a1, int *a2)
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

void *sub_10026D2BC(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void sub_10026D394(uint64_t a1, uint64_t a2)
{
  sub_1001B93C0(a2 + 152, *(a2 + 160));
  sub_10002074C(a2 + 128, *(a2 + 136));
  v3 = *(a2 + 112);

  sub_10002074C(a2 + 104, v3);
}

uint64_t *sub_10026D3E4(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_100037488(a1, a2);
  sub_10026D394(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

uint64_t **sub_10026D430(uint64_t **result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_10018A270(v8);
      while (a2 != a3)
      {
        sub_10026D538(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 4;
            break;
          }

          v11 = sub_10018A270(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 4;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10018A2C4(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10026D5D0(v5, a2);
    a2 += 4;
  }

  return result;
}

void sub_10026D524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10026D538(uint64_t **a1, int *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 8);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v6;
    *(a3 + 40) = *(a2 + 1);
    sub_100036FC8(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *sub_10026D5D0(uint64_t a1, int *a2)
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

void sub_10026D69C()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F2638 = os_log_create("com.apple.nearbyd", "Analytics");

  objc_autoreleasePoolPop(v0);
}

void sub_10026D864(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initPrivate];
  v2 = qword_1009F2640;
  qword_1009F2640 = v1;
}

void sub_10026DA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_unfair_lock_s *a10)
{
  os_unfair_lock_unlock(a10 + 2);

  _Unwind_Resume(a1);
}

void sub_10026DB14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 2);

  _Unwind_Resume(a1);
}

BOOL sub_10026DBDC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v33 = a1;
  v34 = 0;
  v5 = *(a2 + 16);
  if (*(a2 + 160))
  {
    v5 |= 8u;
  }

  v6 = *(a2 + 112);
  if (*(a2 + 72) == 1)
  {
    if (*(a2 + 112))
    {
      v7 = qword_1009F9820;
      result = os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT);
      if (result)
      {
        sub_1004B537C(v7);
        return 0;
      }

      return result;
    }

    v9 = v5 | 2;
  }

  else if (*(a2 + 112))
  {
    v9 = v5 | 4;
  }

  else
  {
    v9 = v5;
  }

  sub_100004A08(__p, "measurement type");
  sub_10026E3B4(&v33, 4u, v9);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 16) == 1)
  {
    v10 = *a2;
    sub_100004A08(__p, "bounded displacement enter timestamp");
    sub_10026E4A8(&v33, 0xCu, 0.0, 409.5, 0.1, v10);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_91;
    }

    v11 = *(a2 + 8);
    if (v11)
    {
      if (v11 == 1)
      {
        sub_100004A08(__p, "bounded displacement category::slowly_moving");
        sub_10026E3B4(&v33, 2u, 1u);
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_25;
        }

        sub_100004A08(__p, "bounded displacement category::walking_or_unknown");
        sub_10026E3B4(&v33, 2u, 2u);
      }
    }

    else
    {
      sub_100004A08(__p, "bounded displacement category::static");
      sub_10026E3B4(&v33, 2u, 0);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_25:
  if (*(a2 + 72) == 1)
  {
    v12 = *(a2 + 24);
    sub_100004A08(__p, "measured displacement enter timestamp");
    sub_10026E4A8(&v33, 0xCu, 0.0, 409.5, 0.1, v12);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v13 = *(a2 + 32);
    sub_100004A08(__p, "measured displacement applicability timestamp");
    sub_10026E4A8(&v33, 6u, 0.0, 6.3, 0.1, v13);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *(a2 + 40);
    if (v14)
    {
      if (v14 != 1)
      {
LABEL_44:
        v19 = *(a2 + 48);
        sub_100004A08(__p, "measured displacement h1");
        sub_10026E4A8(&v33, 0xDu, -409.6, 409.5, 0.1, v19);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        v20 = *(a2 + 56);
        sub_100004A08(__p, "measured displacement h2");
        sub_10026E4A8(&v33, 0xDu, -409.6, 409.5, 0.1, v20);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        v21 = *(a2 + 64);
        sub_100004A08(__p, "measured displacement v");
        sub_10026E4A8(&v33, 9u, -25.6, 25.5, 0.1, v21);
        goto LABEL_49;
      }

      sub_100004A08(__p, "measured displacement source::INERTIAL");
      sub_10026E3B4(&v33, 1u, 1u);
    }

    else
    {
      sub_100004A08(__p, "measured displacement source::VIO");
      sub_10026E3B4(&v33, 1u, 0);
    }

    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_44;
  }

  if (*(a2 + 112) != 1)
  {
    goto LABEL_51;
  }

  v15 = *(a2 + 80);
  sub_100004A08(__p, "measured velocity enter timestamp");
  sub_10026E4A8(&v33, 0xCu, 0.0, 409.5, 0.1, v15);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = *(a2 + 88);
  sub_100004A08(__p, "measured velocity applicability timestamp");
  sub_10026E4A8(&v33, 6u, 0.0, 6.3, 0.1, v16);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a2 + 96);
  sub_100004A08(__p, "measured velocity change h1");
  sub_10026E4A8(&v33, 8u, -6.4, 6.35, 0.05, v17);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = *(a2 + 104);
  sub_100004A08(__p, "measured velocity change h2");
  sub_10026E4A8(&v33, 8u, -6.4, 6.35, 0.05, v18);
LABEL_49:
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_51:
  if (*(a2 + 160) == 1)
  {
    v22 = *(a2 + 136);
    sub_100004A08(__p, "northerly offset");
    sub_10026E4A8(&v33, 0xAu, -512.0, 511.0, 1.0, v22);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a2 + 160))
    {
      v23 = *(a2 + 144);
      sub_100004A08(__p, "easterly offset");
      sub_10026E4A8(&v33, 0xAu, -512.0, 511.0, 1.0, v23);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a2 + 160))
      {
        v24 = *(a2 + 152);
        sub_100004A08(__p, "location data uncertainty");
        sub_10026E3B4(&v33, 4u, v24);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_60;
      }
    }

LABEL_91:
    sub_1000195BC();
  }

LABEL_60:
  if (a3[1])
  {
    v25 = *a3;
  }

  else
  {
    v25 = 0;
  }

  sub_100004A08(__p, "hangup bit");
  sub_10026E3B4(&v33, 1u, v25);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (a3[3])
  {
    v26 = a3[2];
  }

  else
  {
    v26 = 0;
  }

  sub_100004A08(__p, "finder_gone bit");
  sub_10026E3B4(&v33, 1u, v26);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (a3[5])
  {
    v27 = a3[4];
  }

  else
  {
    v27 = 0;
  }

  sub_100004A08(__p, "findee_gone bit");
  sub_10026E3B4(&v33, 1u, v27);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (a3[7])
  {
    v28 = a3[6];
  }

  else
  {
    v28 = 0;
  }

  sub_100004A08(__p, "finder_wants_updates bit");
  sub_10026E3B4(&v33, 1u, v28);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v29 = a3[8];
  sub_100004A08(__p, "finder_isPhone bit");
  sub_10026E3B4(&v33, 1u, v29);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 169))
  {
    v30 = *(a2 + 168);
  }

  else
  {
    v30 = 0;
  }

  sub_100004A08(__p, "findee_is_in_good_gnss_conditions bit");
  sub_10026E3B4(&v33, 1u, v30);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100004A08(__p, "finding_data_reserved");
  sub_10026E3B4(&v33, 7u, 0);
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_10026E334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026E3B4(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 8);
    v9[0] = 67109632;
    v9[1] = v8;
    v10 = 1024;
    v11 = a2;
    v12 = 1024;
    v13 = a3;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "FindingFrame,writing unsigned curPos=%i, bitLen=%i, bitContents=%x", v9, 0x14u);
  }

  sub_10026F1A8(a1, *(a1 + 8), a2, a3);
  *(a1 + 8) += a2;
  return 1;
}

uint64_t sub_10026E4A8(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  if (a6 < a3 || a6 > a4)
  {
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004B53C0(v12);
    }
  }

  v13 = vcvtad_u64_f64((a6 - a3) / a5);
  v14 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 8);
    v17[0] = 67109888;
    v17[1] = v16;
    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = v13;
    v22 = 2048;
    v23 = a6;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "FindingFrame,writing double curPos=%i, bitLen=%i, bitContents=%x, contents=%lf", v17, 0x1Eu);
  }

  sub_10026F1A8(a1, *(a1 + 8), a2, v13);
  *(a1 + 8) += a2;
  return 1;
}

uint64_t sub_10026E5F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(&__p[7], 0, 17);
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 112) = 0;
  *(a2 + 113) = *__p;
  *(a2 + 129) = *&__p[16];
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  memset(__p, 0, sizeof(__p));
  sub_100009A48(__p, *a1, a1[1], a1[1] - *a1);
  v56 = 0;
  v54 = 0;
  v5 = sub_10026EB78(__p, 4u, &v54);
  v6 = v54;
  if (v54)
  {
    v53 = 0;
    v7 = sub_10026EC7C(__p, 0xCu, &v53, 0.0, 0.1);
    v8 = sub_10026EB78(__p, 2u, &v54 + 1);
    if (v5)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    if (HIDWORD(v54) != 2)
    {
      if (HIDWORD(v54) == 1)
      {
        v11 = *(a2 + 16);
        *a2 = v53;
        *(a2 + 8) = 1;
        if (v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (HIDWORD(v54))
        {
          goto LABEL_67;
        }

        v10 = *(a2 + 16);
        *a2 = v53;
        *(a2 + 8) = 0;
        if (v10)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_14;
    }

    v42 = *(a2 + 16);
    *a2 = v53;
    *(a2 + 8) = 2;
    if ((v42 & 1) == 0)
    {
LABEL_14:
      *(a2 + 16) = 1;
    }
  }

LABEL_15:
  if ((v6 & 2) != 0)
  {
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0.0;
    v48 = 0;
    v49 = 0;
    v26 = sub_10026EC7C(__p, 0xCu, &v53, 0.0, 0.1);
    v27 = sub_10026EC7C(__p, 6u, &v51, 0.0, 0.1);
    v28 = sub_10026EB78(__p, 1u, &v52);
    v29 = v52;
    if (v52 > 1)
    {
      goto LABEL_67;
    }

    if (v28)
    {
      v30 = v5 & (v26 && v27);
    }

    else
    {
      v30 = 0;
    }

    v31 = sub_10026EC7C(__p, 0xDu, &v50, -409.6, 0.1);
    v32 = sub_10026EC7C(__p, 0xDu, &v49, -409.6, 0.1);
    v33 = sub_10026EC7C(__p, 9u, &v48, -25.6, 0.1);
    v35 = v50;
    v34 = v51;
    v5 = v30 & (v31 && v32 && v33);
    v37 = v48;
    v36 = v49;
    v38 = *(a2 + 72);
    *(a2 + 24) = v53;
    *(a2 + 32) = v34;
    *(a2 + 40) = v29;
    *(a2 + 48) = v35;
    *(a2 + 56) = v36;
    *(a2 + 64) = v37;
    if ((v38 & 1) == 0)
    {
      *(a2 + 72) = 1;
    }
  }

  if ((v6 & 4) != 0)
  {
    v53 = 0;
    v50 = 0;
    v51 = 0.0;
    v49 = 0;
    v12 = sub_10026EC7C(__p, 0xCu, &v53, 0.0, 0.1);
    v13 = sub_10026EC7C(__p, 6u, &v51, 0.0, 0.1);
    v14 = sub_10026EC7C(__p, 8u, &v50, -6.4, 0.05);
    v5 &= (v12 && v13) & v14 & sub_10026EC7C(__p, 8u, &v49, -6.4, 0.05);
    v16 = v50;
    v15 = v51;
    v17 = v49;
    v18 = *(a2 + 112);
    *(a2 + 80) = v53;
    *(a2 + 88) = v15;
    *(a2 + 96) = v16;
    *(a2 + 104) = v17;
    if ((v18 & 1) == 0)
    {
      *(a2 + 112) = 1;
    }
  }

  if ((v6 & 8) != 0)
  {
    v53 = 0;
    v51 = 0.0;
    LODWORD(v50) = 0;
    v19 = sub_10026EC7C(__p, 0xAu, &v53, -512.0, 1.0);
    v20 = sub_10026EC7C(__p, 0xAu, &v51, -512.0, 1.0);
    if (sub_10026EB78(__p, 4u, &v50))
    {
      v5 &= v19 && v20;
    }

    else
    {
      v5 = 0;
    }

    v21 = v53;
    v22 = v51;
    v23 = v50;
    if ((*(a2 + 160) & 1) == 0)
    {
      *(a2 + 160) = 1;
    }

    *(a2 + 136) = v21;
    *(a2 + 144) = v22;
    *(a2 + 152) = v23;
  }

  v24 = sub_10026EB78(__p, 1u, &v54 + 1) != 0;
  if (HIDWORD(v54) == 1)
  {
    v25 = 257;
  }

  else
  {
    if (HIDWORD(v54))
    {
      goto LABEL_67;
    }

    v25 = 256;
  }

  v39 = v5 & v24;
  *a3 = v25;
  if (!sub_10026EB78(__p, 1u, &v54 + 1))
  {
    v39 = 0;
  }

  if (HIDWORD(v54) == 1)
  {
    v40 = 257;
  }

  else
  {
    if (HIDWORD(v54))
    {
      goto LABEL_67;
    }

    v40 = 256;
  }

  *(a3 + 2) = v40;
  if (!sub_10026EB78(__p, 1u, &v54 + 1))
  {
    v39 = 0;
  }

  if (HIDWORD(v54) == 1)
  {
    v41 = 257;
  }

  else
  {
    if (HIDWORD(v54))
    {
      goto LABEL_67;
    }

    v41 = 256;
  }

  *(a3 + 4) = v41;
  if (!sub_10026EB78(__p, 1u, &v54 + 1))
  {
    v39 = 0;
  }

  if (HIDWORD(v54) == 1)
  {
    v43 = 257;
  }

  else
  {
    if (HIDWORD(v54))
    {
      goto LABEL_67;
    }

    v43 = 256;
  }

  *(a3 + 6) = v43;
  v44 = 1;
  if (!sub_10026EB78(__p, 1u, &v54 + 1))
  {
    v39 = 0;
  }

  if (HIDWORD(v54) != 1)
  {
    if (HIDWORD(v54))
    {
      goto LABEL_67;
    }

    v44 = 0;
  }

  *(a3 + 8) = v44;
  if (sub_10026EB78(__p, 1u, &v54 + 1))
  {
    v45 = v39;
  }

  else
  {
    v45 = 0;
  }

  if (!HIDWORD(v54))
  {
    v46 = 256;
    goto LABEL_72;
  }

  if (HIDWORD(v54) != 1)
  {
LABEL_67:
    v45 = 0;
    goto LABEL_68;
  }

  v46 = 257;
LABEL_72:
  *(a2 + 168) = v46;
LABEL_68:
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  return v45;
}

uint64_t sub_10026EB78(uint64_t a1, unsigned int a2, int *a3)
{
  *a3 = 0;
  v6 = sub_10026F278(a1, *(a1 + 24), a2, a3);
  result = 0;
  if (v6)
  {
    v8 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 24);
      v10 = *a3;
      v11[0] = 67109632;
      v11[1] = v9;
      v12 = 1024;
      v13 = a2;
      v14 = 1024;
      v15 = v10;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "FindingFrame,reading unsigned curPos=%i, bitLen=%i, retVal=%x", v11, 0x14u);
    }

    *(a1 + 24) += a2;
    return 1;
  }

  return result;
}

BOOL sub_10026EC7C(uint64_t a1, unsigned int a2, double *a3, double a4, double a5)
{
  v16 = 0;
  v10 = sub_10026F278(a1, *(a1 + 24), a2, &v16);
  if (v10)
  {
    v11 = v16;
    *a3 = a4 + v16 * a5;
    v12 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 24);
      v15 = *a3;
      *buf = 67109888;
      v18 = v14;
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = v11;
      v23 = 2048;
      v24 = v15;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "FindingFrame,reading double curPos=%i, bitLen=%i, extractedVal=%x, retVal=%lf", buf, 0x1Eu);
    }

    *(a1 + 24) += a2;
  }

  return v10;
}

uint64_t sub_10026EDAC(uint64_t **a1, unsigned __int8 **a2)
{
  sub_100193120(v20);
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v5 = *v3;
      v6 = v21;
      v7 = v21;
      *(&v23[-1].__locale_ + *(v21 - 24)) |= 0x4000u;
      v8 = (&v21 + *(v7 - 24));
      if (v8[1].__fmtflags_ == -1)
      {
        std::ios_base::getloc(v8);
        v9 = std::locale::use_facet(&v18, &std::ctype<char>::id);
        (v9->__vftable[2].~facet_0)(v9, 32);
        std::locale::~locale(&v18);
        v6 = v21;
      }

      v8[1].__fmtflags_ = 48;
      *(&v23[1].__locale_ + *(v6 - 24)) = 2;
      *(&v23[-1].__locale_ + *(v6 - 24)) = *(&v23[-1].__locale_ + *(v6 - 24)) & 0xFFFFFFB5 | 8;
      std::ostream::operator<<();
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = qword_1009F9820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 23);
    v14 = *a1;
    std::stringbuf::str();
    v15 = (v13 >= 0 ? a1 : v14);
    v16 = v19 >= 0 ? &v18 : v18.__locale_;
    *buf = 136315394;
    v26 = v15;
    v27 = 2080;
    v28 = v16;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "FindingFrame,dataFrame [%s]: %s", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(v18.__locale_);
    }
  }

  v21 = v11;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10026F158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, uint64_t a12, uint64_t a13, char a14)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10026F1A8(char ***a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = a2;
      v8 = a2 >> 3;
      v9 = a2 & 7;
      if (v5 >= 8 - (a2 & 7))
      {
        v10 = 8 - (a2 & 7);
      }

      else
      {
        v10 = v5;
      }

      v11 = **a1;
      v12 = (*a1)[1] - v11;
      if (v12 <= a2 >> 3)
      {
        sub_100009838(*a1, (v8 + 1) - v12);
        v11 = **a1;
        v12 = (*a1)[1] - v11;
      }

      if (v12 <= v8)
      {
        sub_10026F2F4();
      }

      v11[v8] |= (a4 & ~(-1 << v10)) << v9;
      a4 >>= v10;
      a2 = v10 + v7;
      v5 -= v10;
    }

    while (v5);
  }

  return 1;
}

BOOL sub_10026F278(uint64_t *a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 1;
  }

  v4 = 0;
  v5 = 0;
  v6 = *a1;
  v7 = a1[1] - *a1;
  do
  {
    result = v7 > a2 >> 3;
    if (v7 <= a2 >> 3)
    {
      break;
    }

    v9 = 8 - (a2 & 7);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v5 |= ((*(v6 + (a2 >> 3)) >> (a2 & 7)) & ~(-1 << v9)) << v4;
    *a4 = v5;
    a2 += v9;
    v4 += v9;
    a3 -= v9;
  }

  while (a3);
  return result;
}

void sub_100270070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = NIServerSessionLifeCycleManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_100270318(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100270330(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100270448(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "runWithConfigurationCalled");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v5[17];
    if ([v5 timeoutOnPeerInactivity])
    {
      v7 = "Y";
    }

    else
    {
      v7 = "N";
    }

    [*(a1 + 32) maxInactivityBeforeTrackingBeganSeconds];
    v9 = v8;
    [*(a1 + 32) maxInactivityAfterTrackingBeganSeconds];
    *__p = 138413314;
    *&__p[4] = @"runWithConfigurationCalled";
    v12 = 2112;
    v13 = v6;
    v14 = 2080;
    v15 = v7;
    v16 = 2048;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@ [timeoutOnInactivity: %s, maxInactivityBeforeTracking: %0.1f s, maxInactivityAfterTracking: %0.1f s]", __p, 0x34u);
  }

  *(*(a1 + 32) + 49) = 1;
}

void sub_1002705D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_10027067C(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "pauseCalled");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"pauseCalled";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  result = [*(a1 + 32) _removeAllPeers];
  *(*(a1 + 32) + 49) = 0;
  return result;
}

void sub_1002707A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100270840(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "invalidateCalled");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"invalidateCalled";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  result = [*(a1 + 32) _removeAllPeers];
  *(*(a1 + 32) + 52) = 1;
  return result;
}

void sub_100270970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100270A08(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "failedToRemovePeer");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"failedToRemovePeer";
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }
}

void sub_100270B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100270BE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "startedDiscoveringPeersWithTokens");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"startedDiscoveringPeersWithTokens";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  *(*(a1 + 32) + 48) = 1;
  return [*(a1 + 32) _startMonitoringPeersActivity:*(a1 + 40)];
}

void sub_100270D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100270DCC(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "stoppedDiscoveringPeersWithTokens");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 136);
    *__p = 138412802;
    *&__p[4] = @"stoppedDiscoveringPeersWithTokens";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ %@ for session identifier: %@", __p, 0x20u);
  }

  [*(*(a1 + 32) + 8) removeObjectsForKeys:*(a1 + 40)];
  if (![*(*(a1 + 32) + 8) count])
  {
    *(*(a1 + 32) + 48) = 0;
    v7 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 136);
      *__p = 138412546;
      *&__p[4] = @"removed all peers, discovery is inactive.";
      v10 = 2112;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
    }
  }
}

void sub_100270F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100271014(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "stoppedDiscoveringAllPeers");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"stoppedDiscoveringAllPeers";
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  *(*(a1 + 32) + 48) = 0;
  return [*(a1 + 32) _removeAllPeers];
}

void sub_100271140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002711FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "peerLostCallbackReceived");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"peerLostCallbackReceived";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  v6 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v7 = v6;
  if (v6)
  {
    [v6 setPeerLostCallbackReceived:1];
    [*(*(a1 + 32) + 8) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }
}

void sub_100271350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002713F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "positioningSensorSessionStarted");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"positioningSensorSessionStarted";
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  *(*(a1 + 32) + 50) = 1;
}

void sub_10027151C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002715B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "positioningSensorSessionStopped");
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  v4 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 136);
    *__p = 138412546;
    *&__p[4] = @"positioningSensorSessionStopped";
    v7 = 2112;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#lifecycle,%@ for session identifier: %@", __p, 0x16u);
  }

  *(*(a1 + 32) + 50) = 0;
}

void sub_1002716D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002717A4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v3 = *(a1 + 32);
    sub_100004A08(__p, "measurementReceivedForToken");
    v7 = __p;
    v4 = sub_100014680((v3 + 56), __p);
    v4[5] = v4[5] + 1;
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    [v2 setLatestActivityTimestamp:*(a1 + 48)];
    [v2 setLatestActivityType:1];
  }
}

void sub_10027185C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_100271920(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_100004A08(__p, "peerHangupReceived");
  v7 = __p;
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
}

void sub_1002719B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100271A98(void *a1)
{
  v2 = a1[4];
  sub_100004A08(__p, "isTrackingPeer:");
  v7 = __p;
  v3 = sub_100014680((v2 + 56), __p);
  v3[5] = v3[5] + 1;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = [*(a1[4] + 8) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 24) = v4 != 0;
}

void sub_100271B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100271DEC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained lifecycleTimeoutBeforeTrackingForDiscoveryToken:*(a1 + 40)];
}

void sub_100271E60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 96));
  [WeakRetained lifecycleTimeoutAfterTrackingForDiscoveryToken:*(a1 + 40)];
}

void sub_1002729B0(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _initInternal];
  v2 = qword_1009F2650;
  qword_1009F2650 = v1;
}

void sub_100273354(id a1)
{
  v1 = [[NIServerDLTDOAService alloc] _initInternal];
  v2 = qword_1009F2738;
  qword_1009F2738 = v1;
}

uint64_t sub_100273528(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100273540(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;
}

void sub_100273684(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1002736A0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    while (*(WeakRetained + 7) >= 0xAuLL)
    {
      sub_1002737C4(WeakRetained + 2);
    }

    v3 = *(a1 + 56);
    v6 = *(a1 + 40);
    *v7 = v3;
    *&v7[9] = *(a1 + 65);
    if (*(a1 + 111) < 0)
    {
      sub_1000056BC(__p, *(a1 + 88), *(a1 + 96));
    }

    else
    {
      *__p = *(a1 + 88);
      v9 = *(a1 + 104);
    }

    v4 = [NSDate now:v6];
    [v4 timeIntervalSince1970];
    *&v7[16] = v5;
    v7[24] = 1;

    sub_100273854(WeakRetained + 16, &v6);
    ++*(WeakRetained + 8);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1002737C4(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0x38)) + 72 * (v2 % 0x38);
  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_10027C03C(a1, 1);
}

char *sub_100273854(char *result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 2);
  v6 = *(result + 1);
  v7 = 56 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(result + 5) + *(result + 4);
  if (v7 == v8)
  {
    result = sub_10027C09C(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  v9 = *(v6 + 8 * (v8 / 0x38)) + 72 * (v8 % 0x38);
  v10 = *a2;
  v11 = a2[1];
  *(v9 + 25) = *(a2 + 25);
  *v9 = v10;
  *(v9 + 16) = v11;
  if (*(a2 + 71) < 0)
  {
    result = sub_1000056BC((v9 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v12 = a2[3];
    *(v9 + 64) = *(a2 + 8);
    *(v9 + 48) = v12;
  }

  ++v3[5];
  return result;
}

char *sub_100273934(char *result, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  *(result + 65) = *(a2 + 65);
  *(result + 56) = v3;
  *(result + 40) = v2;
  if (*(a2 + 111) < 0)
  {
    return sub_1000056BC(result + 88, *(a2 + 88), *(a2 + 96));
  }

  v4 = *(a2 + 88);
  *(result + 13) = *(a2 + 104);
  *(result + 88) = v4;
  return result;
}

void sub_100273978(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }
}

char *sub_100273AE4(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"DL-TDOA Service", v1);

  return v2;
}

void sub_100273C2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id sub_100273EF4(uint64_t a1)
{
  v3 = a1 + 48;
  v2 = *(a1 + 48);
  v4 = *(a1 + 8);
  v5 = *(a1 + 32) - v4;
  if (*(a1 + 40))
  {
    v6 = *(a1 + 32) - v4;
  }

  else
  {
    v6 = 0.0;
  }

  if (*(a1 + 71) >= 0)
  {
    v7 = a1 + 48;
  }

  else
  {
    v7 = *(a1 + 48);
  }

  v8 = *(a1 + 4);
  v9 = [NSDate dateWithTimeIntervalSince1970:?];
  v10 = *(v3 - 8);
  if (v10 == 1)
  {
    v11 = [NSDate dateWithTimeIntervalSince1970:*(a1 + 32)];
  }

  else
  {
    v11 = 0;
  }

  v12 = [NSString stringWithFormat:@" - Client Name: [%s], initiator_addr: [%u], start_TS: [%@], end_TS: [%@], total_duration: [%.4f s], initiator_mac_addr: [0x%02x]\n                Session Updates:  raw_measurement: [%u], vio_input_count: [%u], pdr_input_count: [%u]", v7, v8, v9, v11, *&v6, *(a1 + 4), *(a1 + 16), *(a1 + 20), *(a1 + 24)];
  if (v10)
  {
  }

  return v12;
}

void sub_100274600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_10000AD84(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100274AB0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 112)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void sub_1002750D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1002750FC(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _didUpdateWifiEvent:v5];
  }
}

void sub_1002758B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a14)
  {
    sub_10000AD84(a14);
  }

  if (a29 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void sub_100275C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100275C38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_26;
  }

  if (!v6 || !os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_25:
    v29 = WeakRetained[11];
    LOBYTE(v30[0]) = 0;
    v31 = 0;
    [v29 acceptPositionDisplacement:v30];
    goto LABEL_26;
  }

  sub_1004B5900();
  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_5:
  [v5 timestamp];
  v9 = sub_1002FE75C((WeakRetained + 40), v8);
  v11 = v10;
  v12 = [v5 deltaPositionX];

  if (v12)
  {
    v13 = [v5 deltaPositionX];
    [v13 doubleValue];
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v5 deltaPositionY];

  if (v16)
  {
    v17 = [v5 deltaPositionY];
    [v17 doubleValue];
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = [v5 deltaPositionZ];

  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = [v5 deltaPositionZ];
  [v21 doubleValue];
  v23 = v22;

  if (!v12 || (v11 & 1) == 0 || !v16)
  {
    goto LABEL_25;
  }

  v24 = WeakRetained[51];
  if (v24 != WeakRetained + 52)
  {
    do
    {
      ++*(v24 + 16);
      v25 = v24[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v24[2];
          v27 = *v26 == v24;
          v24 = v26;
        }

        while (!v27);
      }

      v24 = v26;
    }

    while (v26 != WeakRetained + 52);
  }

  v28 = WeakRetained[11];
  v30[0] = v9;
  v30[1] = v15;
  v30[2] = v19;
  v30[3] = v23;
  v31 = 1;
  [v28 acceptPositionDisplacement:v30];
LABEL_26:
}

void sub_100275FA4(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerDLTDOASession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateNICoordinates:*(a1 + 40)];
}

void sub_1002760F8(uint64_t a1)
{
  v4.receiver = *(a1 + 32);
  v4.super_class = NIServerDLTDOASession;
  v2 = objc_msgSendSuper2(&v4, "resourcesManager");
  v3 = [v2 remote];
  [v3 didUpdateDLTDOAMeasurements:*(a1 + 40)];
}

uint64_t sub_100276ADC(uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10027E184(a1, a2);
  }

  else
  {
    sub_10027E010(a1, a2);
    result = v3 + 1688;
  }

  a1[1] = result;
  return result;
}

std::string *sub_100277E4C@<X0>(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  sub_100004A08(a2, "OOB payload: {");
  if (a1[52] == 1)
  {
    std::to_string(&v146, *(a1 + 12));
    v4 = std::string::insert(&v146, 0, "UWB_session_id: [");
    v5 = *&v4->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v147, "] ");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v149 = v6->__r_.__value_.__r.__words[2];
    v148 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v8 = &v148;
    }

    else
    {
      v8 = v148;
    }

    if (v149 >= 0)
    {
      v9 = HIBYTE(v149);
    }

    else
    {
      v9 = *(&v148 + 1);
    }

    std::string::append(a2, v8, v9);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[1] == 1)
  {
    std::to_string(&v146, *a1);
    v10 = std::string::insert(&v146, 0, "Channel_number: [");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    v12 = std::string::append(&v147, "] ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v149 = v12->__r_.__value_.__r.__words[2];
    v148 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v14 = &v148;
    }

    else
    {
      v14 = v148;
    }

    if (v149 >= 0)
    {
      v15 = HIBYTE(v149);
    }

    else
    {
      v15 = *(&v148 + 1);
    }

    std::string::append(a2, v14, v15);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[4] == 1)
  {
    std::to_string(&v146, *(a1 + 1));
    v16 = std::string::insert(&v146, 0, "Mac_address: [");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v147, "] ");
    v19 = *&v18->__r_.__value_.__l.__data_;
    v149 = v18->__r_.__value_.__r.__words[2];
    v148 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v20 = &v148;
    }

    else
    {
      v20 = v148;
    }

    if (v149 >= 0)
    {
      v21 = HIBYTE(v149);
    }

    else
    {
      v21 = *(&v148 + 1);
    }

    std::string::append(a2, v20, v21);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[8] == 1)
  {
    std::to_string(&v146, *(a1 + 3));
    v22 = std::string::insert(&v146, 0, "Slot_duration: [");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v147, "] ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v149 = v24->__r_.__value_.__r.__words[2];
    v148 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v26 = &v148;
    }

    else
    {
      v26 = v148;
    }

    if (v149 >= 0)
    {
      v27 = HIBYTE(v149);
    }

    else
    {
      v27 = *(&v148 + 1);
    }

    std::string::append(a2, v26, v27);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[16] == 1)
  {
    std::to_string(&v146, *(a1 + 3));
    v28 = std::string::insert(&v146, 0, "Ranging_duration: [");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v147, "] ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v149 = v30->__r_.__value_.__r.__words[2];
    v148 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v32 = &v148;
    }

    else
    {
      v32 = v148;
    }

    if (v149 >= 0)
    {
      v33 = HIBYTE(v149);
    }

    else
    {
      v33 = *(&v148 + 1);
    }

    std::string::append(a2, v32, v33);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[21] == 1)
  {
    std::to_string(&v146, a1[20]);
    v34 = std::string::insert(&v146, 0, "Preamble_code_index: [");
    v35 = *&v34->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v147, "] ");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v149 = v36->__r_.__value_.__r.__words[2];
    v148 = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v38 = &v148;
    }

    else
    {
      v38 = v148;
    }

    if (v149 >= 0)
    {
      v39 = HIBYTE(v149);
    }

    else
    {
      v39 = *(&v148 + 1);
    }

    std::string::append(a2, v38, v39);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[23] == 1)
  {
    std::to_string(&v146, a1[22]);
    v40 = std::string::insert(&v146, 0, "Sfd_id: [");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v147, "] ");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v149 = v42->__r_.__value_.__r.__words[2];
    v148 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v44 = &v148;
    }

    else
    {
      v44 = v148;
    }

    if (v149 >= 0)
    {
      v45 = HIBYTE(v149);
    }

    else
    {
      v45 = *(&v148 + 1);
    }

    std::string::append(a2, v44, v45);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[25] == 1)
  {
    std::to_string(&v146, a1[24]);
    v46 = std::string::insert(&v146, 0, "Preamble_duration: [");
    v47 = *&v46->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v147, "] ");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v149 = v48->__r_.__value_.__r.__words[2];
    v148 = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v50 = &v148;
    }

    else
    {
      v50 = v148;
    }

    if (v149 >= 0)
    {
      v51 = HIBYTE(v149);
    }

    else
    {
      v51 = *(&v148 + 1);
    }

    std::string::append(a2, v50, v51);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[27] == 1)
  {
    std::to_string(&v146, a1[26]);
    v52 = std::string::insert(&v146, 0, "Slot_per_rr: [");
    v53 = *&v52->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v147, "] ");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v149 = v54->__r_.__value_.__r.__words[2];
    v148 = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v56 = &v148;
    }

    else
    {
      v56 = v148;
    }

    if (v149 >= 0)
    {
      v57 = HIBYTE(v149);
    }

    else
    {
      v57 = *(&v148 + 1);
    }

    std::string::append(a2, v56, v57);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[29] == 1)
  {
    std::to_string(&v146, a1[28]);
    v58 = std::string::insert(&v146, 0, "Prf_mode: [");
    v59 = *&v58->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    v60 = std::string::append(&v147, "] ");
    v61 = *&v60->__r_.__value_.__l.__data_;
    v149 = v60->__r_.__value_.__r.__words[2];
    v148 = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v62 = &v148;
    }

    else
    {
      v62 = v148;
    }

    if (v149 >= 0)
    {
      v63 = HIBYTE(v149);
    }

    else
    {
      v63 = *(&v148 + 1);
    }

    std::string::append(a2, v62, v63);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[31] == 1)
  {
    std::to_string(&v146, a1[30]);
    v64 = std::string::insert(&v146, 0, "Mac_address_mode: [");
    v65 = *&v64->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v147, "] ");
    v67 = *&v66->__r_.__value_.__l.__data_;
    v149 = v66->__r_.__value_.__r.__words[2];
    v148 = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v68 = &v148;
    }

    else
    {
      v68 = v148;
    }

    if (v149 >= 0)
    {
      v69 = HIBYTE(v149);
    }

    else
    {
      v69 = *(&v148 + 1);
    }

    std::string::append(a2, v68, v69);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[34] == 1)
  {
    std::to_string(&v146, *(a1 + 16));
    v70 = std::string::insert(&v146, 0, "Vendor_id: [");
    v71 = *&v70->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v147, "] ");
    v73 = *&v72->__r_.__value_.__l.__data_;
    v149 = v72->__r_.__value_.__r.__words[2];
    v148 = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v74 = &v148;
    }

    else
    {
      v74 = v148;
    }

    if (v149 >= 0)
    {
      v75 = HIBYTE(v149);
    }

    else
    {
      v75 = *(&v148 + 1);
    }

    std::string::append(a2, v74, v75);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[43] == 1)
  {
    std::to_string(&v146, a1[42]);
    v76 = std::string::insert(&v146, 0, "Sts_length: [");
    v77 = *&v76->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v147, "] ");
    v79 = *&v78->__r_.__value_.__l.__data_;
    v149 = v78->__r_.__value_.__r.__words[2];
    v148 = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v80 = &v148;
    }

    else
    {
      v80 = v148;
    }

    if (v149 >= 0)
    {
      v81 = HIBYTE(v149);
    }

    else
    {
      v81 = *(&v148 + 1);
    }

    std::string::append(a2, v80, v81);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[45] == 1)
  {
    std::to_string(&v146, a1[44]);
    v82 = std::string::insert(&v146, 0, "Ranging_method: [");
    v83 = *&v82->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    v84 = std::string::append(&v147, "] ");
    v85 = *&v84->__r_.__value_.__l.__data_;
    v149 = v84->__r_.__value_.__r.__words[2];
    v148 = v85;
    v84->__r_.__value_.__l.__size_ = 0;
    v84->__r_.__value_.__r.__words[2] = 0;
    v84->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v86 = &v148;
    }

    else
    {
      v86 = v148;
    }

    if (v149 >= 0)
    {
      v87 = HIBYTE(v149);
    }

    else
    {
      v87 = *(&v148 + 1);
    }

    std::string::append(a2, v86, v87);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  if (a1[47] == 1)
  {
    std::to_string(&v146, a1[46]);
    v88 = std::string::insert(&v146, 0, "BPRF_phr_data_rate: [");
    v89 = *&v88->__r_.__value_.__l.__data_;
    v147.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
    *&v147.__r_.__value_.__l.__data_ = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = std::string::append(&v147, "] ");
    v91 = *&v90->__r_.__value_.__l.__data_;
    v149 = v90->__r_.__value_.__r.__words[2];
    v148 = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    if (v149 >= 0)
    {
      v92 = &v148;
    }

    else
    {
      v92 = v148;
    }

    if (v149 >= 0)
    {
      v93 = HIBYTE(v149);
    }

    else
    {
      v93 = *(&v148 + 1);
    }

    std::string::append(a2, v92, v93);
    if (SHIBYTE(v149) < 0)
    {
      operator delete(v148);
    }

    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v147.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v146.__r_.__value_.__l.__data_);
    }
  }

  std::to_string(&v136, a1[36]);
  v94 = std::string::insert(&v136, 0, "Static_sts_iv: [");
  v95 = *&v94->__r_.__value_.__l.__data_;
  v137.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
  *&v137.__r_.__value_.__l.__data_ = v95;
  v94->__r_.__value_.__l.__size_ = 0;
  v94->__r_.__value_.__r.__words[2] = 0;
  v94->__r_.__value_.__r.__words[0] = 0;
  v96 = std::string::append(&v137, " ");
  v97 = *&v96->__r_.__value_.__l.__data_;
  v138.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
  *&v138.__r_.__value_.__l.__data_ = v97;
  v96->__r_.__value_.__l.__size_ = 0;
  v96->__r_.__value_.__r.__words[2] = 0;
  v96->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v135, a1[37]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = &v135;
  }

  else
  {
    v98 = v135.__r_.__value_.__r.__words[0];
  }

  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v135.__r_.__value_.__l.__size_;
  }

  v100 = std::string::append(&v138, v98, size);
  v101 = *&v100->__r_.__value_.__l.__data_;
  v139.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
  *&v139.__r_.__value_.__l.__data_ = v101;
  v100->__r_.__value_.__l.__size_ = 0;
  v100->__r_.__value_.__r.__words[2] = 0;
  v100->__r_.__value_.__r.__words[0] = 0;
  v102 = std::string::append(&v139, " ");
  v103 = *&v102->__r_.__value_.__l.__data_;
  v140.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
  *&v140.__r_.__value_.__l.__data_ = v103;
  v102->__r_.__value_.__l.__size_ = 0;
  v102->__r_.__value_.__r.__words[2] = 0;
  v102->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v134, a1[38]);
  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v104 = &v134;
  }

  else
  {
    v104 = v134.__r_.__value_.__r.__words[0];
  }

  if ((v134.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v105 = HIBYTE(v134.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v105 = v134.__r_.__value_.__l.__size_;
  }

  v106 = std::string::append(&v140, v104, v105);
  v107 = *&v106->__r_.__value_.__l.__data_;
  v141.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
  *&v141.__r_.__value_.__l.__data_ = v107;
  v106->__r_.__value_.__l.__size_ = 0;
  v106->__r_.__value_.__r.__words[2] = 0;
  v106->__r_.__value_.__r.__words[0] = 0;
  v108 = std::string::append(&v141, " ");
  v109 = *&v108->__r_.__value_.__l.__data_;
  v142.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
  *&v142.__r_.__value_.__l.__data_ = v109;
  v108->__r_.__value_.__l.__size_ = 0;
  v108->__r_.__value_.__r.__words[2] = 0;
  v108->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v133, a1[39]);
  if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v110 = &v133;
  }

  else
  {
    v110 = v133.__r_.__value_.__r.__words[0];
  }

  if ((v133.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = HIBYTE(v133.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v111 = v133.__r_.__value_.__l.__size_;
  }

  v112 = std::string::append(&v142, v110, v111);
  v113 = *&v112->__r_.__value_.__l.__data_;
  v143.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
  *&v143.__r_.__value_.__l.__data_ = v113;
  v112->__r_.__value_.__l.__size_ = 0;
  v112->__r_.__value_.__r.__words[2] = 0;
  v112->__r_.__value_.__r.__words[0] = 0;
  v114 = std::string::append(&v143, " ");
  v115 = *&v114->__r_.__value_.__l.__data_;
  v144.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
  *&v144.__r_.__value_.__l.__data_ = v115;
  v114->__r_.__value_.__l.__size_ = 0;
  v114->__r_.__value_.__r.__words[2] = 0;
  v114->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v132, a1[40]);
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v116 = &v132;
  }

  else
  {
    v116 = v132.__r_.__value_.__r.__words[0];
  }

  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v117 = HIBYTE(v132.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v117 = v132.__r_.__value_.__l.__size_;
  }

  v118 = std::string::append(&v144, v116, v117);
  v119 = *&v118->__r_.__value_.__l.__data_;
  v145.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
  *&v145.__r_.__value_.__l.__data_ = v119;
  v118->__r_.__value_.__l.__size_ = 0;
  v118->__r_.__value_.__r.__words[2] = 0;
  v118->__r_.__value_.__r.__words[0] = 0;
  v120 = std::string::append(&v145, " ");
  v121 = *&v120->__r_.__value_.__l.__data_;
  v146.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
  *&v146.__r_.__value_.__l.__data_ = v121;
  v120->__r_.__value_.__l.__size_ = 0;
  v120->__r_.__value_.__r.__words[2] = 0;
  v120->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1[41]);
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
    v123 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v123 = __p.__r_.__value_.__l.__size_;
  }

  v124 = std::string::append(&v146, p_p, v123);
  v125 = *&v124->__r_.__value_.__l.__data_;
  v147.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
  *&v147.__r_.__value_.__l.__data_ = v125;
  v124->__r_.__value_.__l.__size_ = 0;
  v124->__r_.__value_.__r.__words[2] = 0;
  v124->__r_.__value_.__r.__words[0] = 0;
  v126 = std::string::append(&v147, "] ");
  v127 = *&v126->__r_.__value_.__l.__data_;
  v149 = v126->__r_.__value_.__r.__words[2];
  v148 = v127;
  v126->__r_.__value_.__l.__size_ = 0;
  v126->__r_.__value_.__r.__words[2] = 0;
  v126->__r_.__value_.__r.__words[0] = 0;
  if (v149 >= 0)
  {
    v128 = &v148;
  }

  else
  {
    v128 = v148;
  }

  if (v149 >= 0)
  {
    v129 = HIBYTE(v149);
  }

  else
  {
    v129 = *(&v148 + 1);
  }

  std::string::append(a2, v128, v129);
  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148);
  }

  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v147.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v146.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v144.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v143.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v133.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v142.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v142.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v134.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v134.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v140.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v139.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, "}.");
}

void sub_100278DB4(_Unwind_Exception *a1)
{
  if (*(v2 - 41) < 0)
  {
    operator delete(*(v2 - 64));
  }

  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
  }

  if (*(v2 - 105) < 0)
  {
    operator delete(*(v2 - 128));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_100279F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14)
{
  v15 = STACK[0x208];
  if (STACK[0x208])
  {
    STACK[0x210] = v15;
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void sub_10027A1A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (!v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5E4C();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10027A248(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (!v7)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004B5EC0();
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10027A2EC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_100019B38();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_10027BFE4(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void sub_10027AB84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a11)
  {
    sub_10000AD84(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10027B244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained _watchdogLoop];
  }
}

void sub_10027B5EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10027BF1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10027BF98(result, a4);
  }

  return result;
}

void sub_10027BF7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027BF98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_10027BFE4(a1, a2);
  }

  sub_100019B38();
}

void sub_10027BFE4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10027C03C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x38)
  {
    a2 = 1;
  }

  if (v2 < 0x70)
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
    *(a1 + 32) -= 56;
  }

  return v4 ^ 1u;
}

void *sub_10027C09C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x38;
  v3 = v1 - 56;
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
    sub_10016F098(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_10016EC70(a1, &v10);
}

void sub_10027C224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10027C270(void *a1)
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
    v6 = &v2[v5 / 0x38];
    v7 = *v6;
    v8 = *v6 + 72 * (v5 % 0x38);
    v9 = v2[(a1[5] + v5) / 0x38] + 72 * ((a1[5] + v5) % 0x38);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 71) < 0)
        {
          operator delete(*(v8 + 48));
          v7 = *v6;
        }

        v8 += 72;
        if (v8 - v7 == 4032)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 28;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 56;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10004EE68(a1);
}

void sub_10027C3D4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_10027C558(a1);
    if (a4 <= 0x249249249249249)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
      {
        v10 = 0x249249249249249;
      }

      else
      {
        v10 = v9;
      }

      sub_10027C598(a1, v10);
    }

    sub_100019B38();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 4) >= a4)
  {
    sub_10027C748(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 32);
        if (v15)
        {
          *(v14 - 24) = v15;
          operator delete(v15);
        }

        v14 -= 112;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_10027C748(&v16, a2, a2 + v11, v8);
    a1[1] = sub_10027C5E8(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_10027C558(uint64_t *a1)
{
  if (*a1)
  {
    sub_100274AB0(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10027C598(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_10027C958(a1, a2);
  }

  sub_100019B38();
}

uint64_t sub_10027C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      *(v4 + 48) = *(v6 + 48);
      *(v4 + 64) = v9;
      *(v4 + 16) = v7;
      *(v4 + 32) = v8;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      *(v4 + 96) = 0;
      sub_10027BF1C(v4 + 80, *(v6 + 80), *(v6 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 88) - *(v6 + 80)) >> 4));
      *(v4 + 104) = *(v6 + 104);
      v6 += 112;
      v4 = v14 + 112;
      v14 += 112;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_10027C6C8(v11);
  return v4;
}

uint64_t sub_10027C6C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10027C700(a1);
  }

  return a1;
}

void sub_10027C700(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 112;
  }
}

uint64_t sub_10027C748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 88;
    do
    {
      v8 = v7 - 88;
      *a4 = *(v7 - 88);
      v9 = *(v7 - 72);
      v10 = *(v7 - 56);
      v11 = *(v7 - 24);
      *(a4 + 48) = *(v7 - 40);
      *(a4 + 64) = v11;
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      if (a4 != v7 - 88)
      {
        sub_10027C7FC((a4 + 80), *(v7 - 8), *v7, 0xAAAAAAAAAAAAAAABLL * ((*v7 - *(v7 - 8)) >> 4));
      }

      *(a4 + 104) = *(v7 + 16);
      a4 += 112;
      v7 += 112;
    }

    while (v8 + 112 != a3);
    return a3;
  }

  return result;
}

void *sub_10027C7FC(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      sub_10027BF98(v6, v11);
    }

    sub_100019B38();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
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

void sub_10027C958(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t **sub_10027C9B4(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_10018A270(v8);
      while (a2 != a3)
      {
        sub_10027CABC(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 20;
            break;
          }

          v11 = sub_10018A270(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 20;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10018A2C4(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10027CB5C(v5, a2);
    a2 += 20;
  }

  return result;
}

void sub_10027CAA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10027CABC(uint64_t **a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 16);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v6;
    v9 = *(a2 + 4);
    *(a3 + 56) = *(a2 + 12);
    *(a3 + 40) = v9;
    sub_100036FC8(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *sub_10027CB5C(uint64_t a1, unsigned __int16 *a2)
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

uint64_t **sub_10027CC30(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_10018A270(v8);
      while (a2 != a3)
      {
        sub_10027CD38(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 12;
            break;
          }

          v11 = sub_10018A270(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 12;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10018A2C4(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10027CDD0(v5, a2);
    a2 += 12;
  }

  return result;
}

void sub_10027CD24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10027CD38(uint64_t **a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 16);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v6;
    *(a3 + 40) = *(a2 + 4);
    sub_100036FC8(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *sub_10027CDD0(uint64_t a1, unsigned __int16 *a2)
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

uint64_t **sub_10027CEA4(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_10018A270(v8);
      while (a2 != a3)
      {
        sub_10027CFAC(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            ++a2;
            break;
          }

          v11 = sub_10018A270(v11);
        }

        else
        {
          v8 = v12;
        }

        ++a2;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10018A2C4(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10027D03C(v5, a2++);
  }

  return result;
}

void sub_10027CF98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_10027CFAC(uint64_t **a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = a1 + 1;
  v5 = a1[1];
  v6 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v7 = v5;
        v8 = *(v5 + 13);
        if (v6 >= v8)
        {
          break;
        }

        v5 = *v7;
        v4 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (v8 >= v6)
      {
        return v7;
      }

      v5 = v7[1];
      if (!v5)
      {
        v4 = v7 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = a1 + 1;
LABEL_9:
    *(a3 + 26) = v6;
    sub_100036FC8(a1, v7, v4, a3);
  }

  return a3;
}

uint64_t *sub_10027D03C(uint64_t a1, unsigned __int16 *a2)
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
      v5 = *(v2 + 26);
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

void sub_10027D108(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10027D15C(a1, i))
  {
    i -= 1688;
  }

  *(a1 + 8) = a2;
}

void sub_10027D15C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1680) == 1)
  {
    v3 = *(a2 + 1656);
    if (v3)
    {
      *(a2 + 1664) = v3;
      operator delete(v3);
    }
  }

  if (*(a2 + 872) == 1)
  {
    v4 = *(a2 + 832);
    if (v4)
    {
      *(a2 + 840) = v4;
      operator delete(v4);
    }
  }

  if (*(a2 + 752) == 1)
  {
    sub_10002074C(a2 + 624, *(a2 + 632));
  }

  if (*(a2 + 600) == 1)
  {
    v5 = *(a2 + 184);
    if (v5)
    {
      *(a2 + 192) = v5;
      operator delete(v5);
    }

    v6 = *(a2 + 120);
    if (v6)
    {
      *(a2 + 128) = v6;

      operator delete(v6);
    }
  }
}

uint64_t **sub_10027D210(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_10018A270(v8);
      while (a2 != a3)
      {
        sub_10027D318(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 12;
            break;
          }

          v11 = sub_10018A270(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 12;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10027D428(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10027D4E0(v5, a2);
    a2 += 12;
  }

  return result;
}

void sub_10027D304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027D428(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10027D318(uint64_t **a1, unsigned __int16 *a2, uint64_t *a3)
{
  v3 = a3;
  v6 = a1 + 1;
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 16);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_10:
    v11[0] = a3 + 4;
    v11[1] = a3 + 5;
    sub_10027D3D4(v11, a2);
    sub_100036FC8(a1, v8, v6, v3);
  }

  return v3;
}

uint64_t sub_10027D3D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  **a1 = *a2;
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = v3[1];
  *v3 = v5;
  v3[1] = v4;
  if (v6)
  {
    sub_10000AD84(v6);
  }

  return a1;
}

uint64_t sub_10027D428(uint64_t a1)
{
  sub_10027D480(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10027D480(*a1, v2);
  }

  return a1;
}

void sub_10027D480(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10027D480(a1, *a2);
    sub_10027D480(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      sub_10000AD84(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_10027D4E0(uint64_t a1, unsigned __int16 *a2)
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

uint64_t **sub_10027D5C4(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v10 = result;
    v11 = v8;
    v12 = v8;
    if (v8)
    {
      v11 = sub_10018A270(v8);
      while (a2 != a3)
      {
        sub_10027D6CC(v5, a2, v8);
        if (v9)
        {
          v8 = v11;
          v12 = v11;
          if (!v11)
          {
            a2 += 40;
            break;
          }

          v11 = sub_10018A270(v11);
        }

        else
        {
          v8 = v12;
        }

        a2 += 40;
        if (!v8)
        {
          break;
        }
      }
    }

    result = sub_10027D794(&v10);
  }

  while (a2 != a3)
  {
    result = sub_10027D850(v5, a2);
    a2 += 40;
  }

  return result;
}

void sub_10027D6B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027D794(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10027D6CC(uint64_t **a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a1 + 1;
  v5 = a1[1];
  v7 = *a2;
  if (v5)
  {
    while (1)
    {
      while (1)
      {
        v8 = v5;
        v9 = *(v5 + 16);
        if (v7 >= v9)
        {
          break;
        }

        v5 = *v8;
        v6 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (v9 >= v7)
      {
        return v8;
      }

      v5 = v8[1];
      if (!v5)
      {
        v6 = v8 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = a1 + 1;
LABEL_9:
    *(a3 + 32) = v7;
    v10 = *(a2 + 4);
    v11 = *(a2 + 12);
    *(a3 + 65) = *(a2 + 33);
    *(a3 + 56) = v11;
    *(a3 + 40) = v10;
    std::string::operator=((a3 + 88), (a2 + 28));
    sub_100036FC8(a1, v8, v6, v3);
  }

  return v3;
}

uint64_t sub_10027D794(uint64_t a1)
{
  sub_10027D7EC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10027D7EC(*a1, v2);
  }

  return a1;
}

void sub_10027D7EC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10027D7EC(a1, *a2);
    sub_10027D7EC(a1, *(a2 + 1));
    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    operator delete(a2);
  }
}

uint64_t *sub_10027D850(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10027D904();
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

void sub_10027D97C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10027DA08(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10027D998(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  if (*(a2 + 79) < 0)
  {
    sub_1000056BC((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  return a1;
}

void sub_10027DA08(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 111) < 0)
    {
      operator delete(__p[11]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_10027DA6C(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *sub_10027DB40(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *sub_10027DC44(uint64_t a1, unsigned __int16 *a2)
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

uint64_t sub_10027DD18(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10027DD88(a1, v4);
  return 1;
}

uint64_t *sub_10027DD88(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_100037488(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_10000AD84(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_10027DDC8(uint64_t a1, unsigned __int16 *a2)
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

uint64_t *sub_10027DEA4(uint64_t a1, unsigned __int16 *a2)
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

uint64_t sub_10027DF8C(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 26);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 26))
  {
    return 0;
  }

  sub_100037488(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_10027E010(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  sub_100020458(v4 + 48, (a2 + 3));
  sub_1000206E0((v4 + 608), (a2 + 38));
  sub_1000207A0(v4 + 760, a2 + 95);
  result = memcpy((v4 + 880), a2 + 55, 0x239uLL);
  *(v4 + 1456) = 0;
  *(v4 + 1680) = 0;
  if (*(a2 + 1680) == 1)
  {
    v8 = a2[91];
    *(v4 + 1466) = *(a2 + 1466);
    *(v4 + 1456) = v8;
    v9 = a2[94];
    v10 = a2[95];
    *(v4 + 1488) = a2[93];
    *(v4 + 1520) = v10;
    *(v4 + 1504) = v9;
    v11 = a2[96];
    v12 = a2[97];
    v13 = a2[98];
    *(v4 + 1584) = a2[99];
    *(v4 + 1568) = v13;
    *(v4 + 1552) = v12;
    *(v4 + 1536) = v11;
    v14 = a2[100];
    v15 = a2[101];
    v16 = a2[102];
    *(v4 + 1648) = *(a2 + 1648);
    *(v4 + 1632) = v16;
    *(v4 + 1616) = v15;
    *(v4 + 1600) = v14;
    *(v4 + 1672) = 0;
    *(v4 + 1656) = 0u;
    *(v4 + 1656) = *(a2 + 207);
    *(v4 + 1664) = a2[104];
    *(a2 + 209) = 0;
    *(a2 + 1656) = 0u;
    *(v4 + 1680) = 1;
  }

  *(a1 + 8) = v4 + 1688;
  return result;
}

void sub_10027E144(_Unwind_Exception *a1)
{
  if (*(v2 + 752) == 1)
  {
    sub_10002074C(v2 + 624, *(v2 + 632));
  }

  sub_100020B80(v2 + 48);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_10027E184(uint64_t *a1, __int128 *a2)
{
  v2 = 0xC0E8F2A76E68575BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x26D31BE7BC0E8FLL)
  {
    sub_100019B38();
  }

  if (0x81D1E54EDCD0AEB6 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x81D1E54EDCD0AEB6 * ((a1[2] - *a1) >> 3);
  }

  if (0xC0E8F2A76E68575BLL * ((a1[2] - *a1) >> 3) >= 0x13698DF3DE0747)
  {
    v6 = 0x26D31BE7BC0E8FLL;
  }

  else
  {
    v6 = v3;
  }

  v28 = a1;
  if (v6)
  {
    sub_10027E3EC(a1, v6);
  }

  v7 = 1688 * v2;
  v25 = 0;
  v26 = v7;
  v27 = v7;
  v8 = *a2;
  v9 = a2[2];
  *(v7 + 16) = a2[1];
  *(v7 + 32) = v9;
  *v7 = v8;
  sub_100020458(v7 + 48, (a2 + 3));
  sub_1000206E0((v7 + 608), (a2 + 38));
  sub_1000207A0(v7 + 760, a2 + 95);
  memcpy((v7 + 880), a2 + 55, 0x239uLL);
  *(v7 + 1456) = 0;
  *(v7 + 1680) = 0;
  if (*(a2 + 1680) == 1)
  {
    v10 = a2[91];
    *(v7 + 1466) = *(a2 + 1466);
    *(v7 + 1456) = v10;
    v11 = a2[94];
    v12 = a2[95];
    *(v7 + 1488) = a2[93];
    *(v7 + 1520) = v12;
    *(v7 + 1504) = v11;
    v13 = a2[96];
    v14 = a2[97];
    v15 = a2[98];
    *(v7 + 1584) = a2[99];
    *(v7 + 1568) = v15;
    *(v7 + 1552) = v14;
    *(v7 + 1536) = v13;
    v16 = a2[100];
    v17 = a2[101];
    v18 = a2[102];
    *(v7 + 1648) = *(a2 + 1648);
    *(v7 + 1632) = v18;
    *(v7 + 1616) = v17;
    *(v7 + 1600) = v16;
    *(v7 + 1672) = 0;
    *(v7 + 1656) = 0u;
    *(v7 + 1656) = *(a2 + 207);
    *(v7 + 1664) = a2[104];
    *(a2 + 209) = 0;
    *(a2 + 1656) = 0u;
    *(v7 + 1680) = 1;
  }

  *&v27 = v27 + 1688;
  v19 = a1[1];
  v20 = v26 + *a1 - v19;
  sub_10027E448(a1, *a1, v19, v20);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  v24 = v27;
  *(a1 + 1) = v27;
  *&v27 = v21;
  *(&v27 + 1) = v22;
  v25 = v21;
  v26 = v21;
  sub_10027E644(&v25);
  return v24;
}

void sub_10027E3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (*(v4 + 752) == 1)
  {
    sub_10002074C(v4 + 624, *(v4 + 632));
  }

  sub_100020B80(v4 + 48);
  sub_10027E644(va);
  _Unwind_Resume(a1);
}

void sub_10027E3EC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x26D31BE7BC0E90)
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10027E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v10 = *(v8 + 32);
      *(v4 + 16) = *(v8 + 16);
      *(v4 + 32) = v10;
      *v4 = v9;
      sub_100020458(v4 + 48, v8 + 48);
      sub_1000206E0((v4 + 608), v8 + 608);
      sub_1000207A0(v4 + 760, (v8 + 760));
      memcpy((v4 + 880), (v8 + 880), 0x239uLL);
      sub_10002096C(v4 + 1456, (v8 + 1456));
      v8 += 1688;
      v4 = v15 + 1688;
      v15 += 1688;
    }

    while (v8 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      sub_10027D15C(a1, v6);
      v6 += 1688;
    }
  }

  return sub_10027E5B8(v12);
}

uint64_t sub_10027E5B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10027E5F0(a1);
  }

  return a1;
}

void sub_10027E5F0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 1688;
      sub_10027D15C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10027E644(uint64_t a1)
{
  sub_10027E67C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027E67C(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 1688;
    sub_10027D15C(v5, v4 - 1688);
  }
}

uint64_t sub_10027E6C4(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_10027E794(a1, a2);
  }

  else
  {
    sub_10027E708(a1, a2);
    v4 = v3 + 112;
  }

  a1[1] = v4;
  return v4 - 112;
}

uint64_t sub_10027E708(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 64);
  *(v4 + 48) = *(a2 + 48);
  *(v4 + 64) = v7;
  *(v4 + 16) = v5;
  *(v4 + 32) = v6;
  *v4 = *a2;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 80) = 0;
  result = sub_10027BF1C(v4 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  *(v4 + 104) = *(a2 + 104);
  *(a1 + 8) = v4 + 112;
  return result;
}

uint64_t sub_10027E794(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    sub_100019B38();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v6 = 0x249249249249249;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10027C958(a1, v6);
  }

  v7 = 112 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = *(a2 + 64);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 64) = v10;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  *v7 = *a2;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 80) = 0;
  sub_10027BF1C(v7 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 4));
  *(v7 + 104) = *(a2 + 104);
  *&v19 = v19 + 112;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  sub_10027E918(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10027E9F4(&v17);
  return v16;
}

void sub_10027E904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027E9F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10027E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      v9 = *(v6 + 64);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 64) = v9;
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = 0;
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(a4 + 104) = *(v6 + 104);
      v6 += 112;
      a4 += 112;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      v10 = *(v5 + 80);
      if (v10)
      {
        *(v5 + 88) = v10;
        operator delete(v10);
      }

      v5 += 112;
    }
  }

  return sub_10027C6C8(v12);
}

uint64_t sub_10027E9F4(uint64_t a1)
{
  sub_10027EA2C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027EA2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 112;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 112;
    }
  }
}

void sub_10027EA8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013B04();
}

void sub_10027EAD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100274AB0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *sub_10027EB28(uint64_t a1, unsigned __int16 *a2)
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

void sub_10027EC24(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A1550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10027ECCC(uint64_t a1)
{

  operator delete();
}

id sub_10027ED80(uint64_t a1, void *a2)
{
  *a2 = off_1009A15A0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10027EDD0(id *a1)
{

  operator delete(a1);
}

void sub_10027EE0C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) serviceRequestDidUpdateStatus:{*a3, *(a3 + 8)}];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10027EE8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027EEA4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1600))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10027EF1C(uint64_t a1)
{

  operator delete();
}

id sub_10027EFD0(uint64_t a1, void *a2)
{
  *a2 = off_1009A1620;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10027F020(id *a1)
{

  operator delete(a1);
}

void sub_10027F05C(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v6 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  v7 = *(a1 + 8);
  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [v7 roseSession:&v8 invalidatedWithReason:v6];
  if (v9)
  {
    sub_10000AD84(v9);
  }

  if (v4)
  {
    sub_10000AD84(v4);
  }
}

void sub_10027F0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000AD84(a10);
  }

  if (v10)
  {
    sub_10000AD84(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027F114(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1680))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10027F18C(uint64_t a1)
{

  operator delete();
}

id sub_10027F240(uint64_t a1, void *a2)
{
  *a2 = off_1009A16A0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10027F290(id *a1)
{

  operator delete(a1);
}

void sub_10027F2CC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10027F348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027F360(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1700))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10027F3D8(uint64_t a1)
{

  operator delete();
}

id sub_10027F48C(uint64_t a1, void *a2)
{
  *a2 = off_1009A1720;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10027F4DC(id *a1)
{

  operator delete(a1);
}

void sub_10027F518(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 56));
  [*(a1 + 8) didReceiveNewSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_10027F594(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027F5AC(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1780))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027F5F8(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10027F668(a1, v4);
  return 1;
}

uint64_t *sub_10027F668(uint64_t **a1, uint64_t a2)
{
  v3 = sub_100037488(a1, a2);
  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  operator delete(a2);
  return v3;
}

void sub_10027F6AC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10027D108(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10027F700()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(byte_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, byte_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_10027F7B0()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_10027F860()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_10027F910()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(byte_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, byte_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_10027F9C0()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(byte_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, byte_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_10027FA70()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(byte_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, byte_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_10027FB20()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_10027FBD0()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(byte_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, byte_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_10027FC80()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100568690;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_10027FD74()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC();
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F2670 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F2660 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2660, &_mh_execute_header);
  sub_10041C9CC();
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F2688 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F2678 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2678, &_mh_execute_header);
  sub_10041C9CC();
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F26A0 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F2690 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2690, &_mh_execute_header);
  sub_10041C9CC();
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F26B8 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F26A8 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F26A8, &_mh_execute_header);
  sub_10041C9CC();
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F26D0 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F26C0 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F26C0, &_mh_execute_header);
  sub_10041C9CC();
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F26E8 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F26D8 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F26D8, &_mh_execute_header);
  sub_10041C9CC();
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F2700 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F26F0 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F26F0, &_mh_execute_header);
  sub_10041C9CC();
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F2718 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F2708 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2708, &_mh_execute_header);
  sub_10041C9CC();
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F2730 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F2720 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2720, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1002803B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002821D8(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/Frameworks/NearbyInteraction.framework"];
  v1 = [NSBundle bundleWithURL:v3];
  v2 = qword_1009F2748;
  qword_1009F2748 = v1;
}

double sub_100282734(uint64_t a1)
{
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  return result;
}

std::string *sub_100282780(std::string *this, const std::string *__str, double a3)
{
  *&this[12].__r_.__value_.__r.__words[2] = a3;
  *&this[16].__r_.__value_.__r.__words[2] = a3;
  return std::string::operator=(this, __str);
}

__n128 sub_10028278C(__n128 *a1, __n128 result, double a3)
{
  v3 = a1[18].n128_u8[8];
  if ((v3 & 1) == 0)
  {
    v3 = 1;
    a1[18].n128_u8[8] = 1;
  }

  a1[17].n128_f64[1] = a3;
  a1[18].n128_u32[0] = result.n128_u32[0];
  v4 = a1[17].n128_u8[0];
  if (v4 != v3 && (v4 & 1) == 0)
  {
    result = *(a1 + 280);
    a1[16] = result;
    a1[17].n128_u8[0] = 1;
  }

  return result;
}

uint64_t sub_1002827CC(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v4 = 376;
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_12;
      }

      v4 = 384;
    }

LABEL_11:
    *(result + v4) = *(result + v4) + a4 - *(result + 400);
LABEL_12:
    if (a2 >= a3)
    {
      ++*(result + 348);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_12;
    }

    v4 = 368;
    goto LABEL_11;
  }

  *(result + 392) = *(result + 392) + a4 - *(result + 304);
  if (a2 < 0)
  {
LABEL_13:
    ++*(result + 344);
  }

LABEL_15:
  if (a2 == 1 && *(result + 360) == 0.0)
  {
    *(result + 360) = a4 - *(result + 304);
  }

  *(result + 352) = a2;
  *(result + 400) = a4;
  return result;
}

void sub_100282884(uint64_t a1, double a2)
{
  v3 = *(a1 + 352);
  if (v3 <= 5 && ((0x33u >> v3) & 1) != 0)
  {
    *(a1 + qword_100568B30[v3]) = *(a1 + qword_100568B30[v3]) + a2 - *(a1 + 400);
  }

  *(a1 + 312) = a2;
  sub_1002828FC(a1);

  sub_100282DF8(a1);
}

void sub_1002828FC(uint64_t a1)
{
  v2 = [qword_1009FA010 mutableCopy];
  if (*(a1 + 296) == 1 && *(a1 + 272) == 1)
  {
    LODWORD(v3) = *(a1 + 288);
    v4 = [NSNumber numberWithFloat:v3];
    [v2 setObject:v4 forKeyedSubscript:@"endingBRRMeasurement"];

    if ((*(a1 + 272) & 1) == 0)
    {
      sub_1000195BC();
    }

    LODWORD(v5) = *(a1 + 264);
    v6 = [NSNumber numberWithFloat:v5];
    [v2 setObject:v6 forKeyedSubscript:@"firstBRRMeasurement"];
  }

  v7 = [NSNumber numberWithInt:*(a1 + 344)];
  [v2 setObject:v7 forKeyedSubscript:@"numberOfGotCloserRegionTransitions"];

  v8 = [NSNumber numberWithInt:*(a1 + 348)];
  [v2 setObject:v8 forKeyedSubscript:@"numberOfGotFartherRegionTransitions"];

  v9 = [NSNumber numberWithDouble:*(a1 + 312) - *(a1 + 304)];
  [v2 setObject:v9 forKeyedSubscript:@"sessionDuration"];

  v10 = [NSNumber numberWithDouble:*(a1 + 392)];
  [v2 setObject:v10 forKeyedSubscript:@"timeSpentInSearching"];

  v11 = [NSNumber numberWithDouble:*(a1 + 384)];
  [v2 setObject:v11 forKeyedSubscript:@"timeSpentInFar"];

  v12 = [NSNumber numberWithDouble:*(a1 + 368)];
  [v2 setObject:v12 forKeyedSubscript:@"timeSpentInHere"];

  v13 = [NSNumber numberWithDouble:*(a1 + 376)];
  [v2 setObject:v13 forKeyedSubscript:@"timeSpentInNear"];

  if (*(a1 + 272) == 1)
  {
    v14 = [NSNumber numberWithDouble:*(a1 + 256) - *(a1 + 304)];
    [v2 setObject:v14 forKeyedSubscript:@"timeToFirstBRRMeasurement"];
  }

  if (*(a1 + 248) == 1)
  {
    v15 = [NSNumber numberWithDouble:*(a1 + 152) - *(a1 + 304)];
    [v2 setObject:v15 forKeyedSubscript:@"timeToFirstBTSample"];
  }

  v16 = [NSNumber numberWithDouble:*(a1 + 360)];
  [v2 setObject:v16 forKeyedSubscript:@"timeToHere"];

  v17 = (a1 + 24);
  v18 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v18 = *v17;
  }

  v19 = [NSString stringWithUTF8String:v18];
  v20 = [&off_1009C43D8 objectForKeyedSubscript:v19];
  [v2 setObject:v20 forKeyedSubscript:@"advertiserEnum"];

  if (*(a1 + 47) < 0)
  {
    v17 = *v17;
  }

  v21 = [NSString stringWithUTF8String:v17];
  [v2 setObject:v21 forKeyedSubscript:@"advertiserString"];

  v22 = v2;
  v26 = v22;
  AnalyticsSendEventLazy();
  v23 = qword_1009F2A70;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [NSString stringWithFormat:@"%@", v22, _NSConcreteStackBlock, 3221225472, sub_100282EE4, &unk_1009A1968, v22];
    v25 = v24;
    *buf = 136315138;
    v28 = [v24 UTF8String];
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ni-ca-devicepresence submitting %s", buf, 0xCu);
  }
}

void sub_100282DF8(uint64_t a1)
{
  v9 = 0;
  v10 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v23 = 0;
  *v1 = 0u;
  *v2 = 0u;
  v3 = 0u;
  v4 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_100282EEC(a1, v1);
  if (v15 == 1)
  {
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }
  }

  if (v9 == 1)
  {
    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }

    if (v6 < 0)
    {
      operator delete(v5);
    }
  }

  if (SHIBYTE(v3) < 0)
  {
    operator delete(v2[1]);
  }

  if (SHIBYTE(v2[0]) < 0)
  {
    operator delete(v1[0]);
  }
}

uint64_t sub_100282EEC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  sub_100283078(a1 + 48, a2 + 3);
  sub_100283078(a1 + 152, (a2 + 152));
  if (*(a1 + 272) == *(a2 + 272))
  {
    if (*(a1 + 272))
    {
      *(a1 + 256) = *(a2 + 32);
      *(a1 + 264) = *(a2 + 66);
    }
  }

  else if (*(a1 + 272))
  {
    *(a1 + 272) = 0;
  }

  else
  {
    *(a1 + 256) = a2[16];
    *(a1 + 272) = 1;
  }

  if (*(a1 + 296) == *(a2 + 296))
  {
    if (*(a1 + 296))
    {
      *(a1 + 280) = *(a2 + 35);
      *(a1 + 288) = *(a2 + 72);
    }
  }

  else if (*(a1 + 296))
  {
    *(a1 + 296) = 0;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = 1;
  }

  *(a1 + 304) = a2[19];
  if (*(a1 + 336) == *(a2 + 336))
  {
    if (*(a1 + 336))
    {
      *(a1 + 320) = *(a2 + 40);
      *(a1 + 328) = *(a2 + 82);
    }
  }

  else if (*(a1 + 336))
  {
    *(a1 + 336) = 0;
  }

  else
  {
    *(a1 + 320) = a2[20];
    *(a1 + 336) = 1;
  }

  v6 = *(a2 + 344);
  v7 = *(a2 + 360);
  v8 = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 392) = v8;
  *(a1 + 344) = v6;
  *(a1 + 360) = v7;
  return a1;
}

__n128 sub_100283078(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 4);
      *a1 = v4;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      sub_10016D9A8(a1 + 48, a2 + 3);
      result = *(a2 + 72);
      *(a1 + 85) = *(a2 + 85);
      *(a1 + 72) = result;
    }
  }

  else if (*(a1 + 96))
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      *(a1 + 56) = v7;
      operator delete(v7);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 96) = 0;
  }

  else
  {
    v8 = *a2;
    *(a1 + 16) = *(a2 + 4);
    *a1 = v8;
    v9 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v9;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a2 + 6) = 0;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    result = *(a2 + 72);
    *(a1 + 85) = *(a2 + 85);
    *(a1 + 72) = result;
    *(a1 + 96) = 1;
  }

  return result;
}

void sub_100283194()
{
  v0 = objc_autoreleasePoolPush();
  v13 = xmmword_100568AC0;
  v14 = unk_100568AD0;
  sub_1001BD0B0(qword_1009F2758, &v13, 4);
  xmmword_1009F2770 = xmmword_100563BD0;
  unk_1009F2780 = xmmword_100563BE0;
  qword_1009F2798 = 0;
  unk_1009F27A0 = 0;
  qword_1009F2790 = 0x3FD999999999999ALL;
  unk_1009F27A8 = xmmword_100563BF0;
  dword_1009F27B8 = 5;
  qword_1009F27C0 = 0x4000000000000000;
  dword_1009F27C8 = 5;
  byte_1009F27D0 = 0;
  *&algn_1009F27D1[3] = 0x30000000ALL;
  xmmword_1009F27E0 = xmmword_100563C00;
  unk_1009F27F0 = xmmword_100563C10;
  xmmword_1009F2800 = xmmword_100563C20;
  qword_1009F2810 = 0x3FE3333333333333;
  dword_1009F2818 = 3;
  xmmword_1009F2820 = xmmword_100563C30;
  unk_1009F2830 = xmmword_100563C10;
  xmmword_1009F2840 = xmmword_100563C00;
  qword_1009F2850 = 0x3FE3333333333333;
  byte_1009F2858 = 0;
  xmmword_1009F2860 = xmmword_100563C40;
  unk_1009F2870 = xmmword_100563C50;
  __asm { FMOV            V0.2D, #1.0 }

  v11 = _Q0;
  xmmword_1009F2880 = _Q0;
  qword_1009F2890 = 0xBFD3333333333333;
  xmmword_1009F2898 = xmmword_100563C60;
  qword_1009F28A8 = 0x3E99999A40000000;
  xmmword_1009F28B0 = xmmword_100563BE0;
  qword_1009F28C8 = 0;
  unk_1009F28D0 = 0;
  qword_1009F28C0 = 0x3FD999999999999ALL;
  xmmword_1009F28D8 = xmmword_100563BF0;
  dword_1009F28E8 = 5;
  qword_1009F28F0 = 0x4000000000000000;
  dword_1009F28F8 = 4;
  qword_1009F2900 = 0x300000008;
  qword_1009F2908 = 0xC04E800000000000;
  v12[0] = -61.0;
  sub_1001BD370(qword_1009F2910, v12, 1);
  xmmword_1009F2928 = xmmword_100563C70;
  qword_1009F2938 = 0x4024000000000000;
  dword_1009F2940 = 45;
  byte_1009F2948 = 0;
  byte_1009F2960 = 0;
  qword_1009F2968 = 0;
  byte_1009F2970 = 0;
  dword_1009F2974 = 1;
  byte_1009F2978 = 1;
  xmmword_1009F2980 = xmmword_100563C80;
  xmmword_1009F2990 = xmmword_100563C90;
  xmmword_1009F29A0 = v11;
  qword_1009F29B0 = 0xC059000000000000;
  xmmword_1009F29B8 = xmmword_100563CA0;
  qword_1009F29C8 = vdup_n_s32(0x3DCCCCCDu);
  xmmword_1009F29D0 = xmmword_100563BE0;
  qword_1009F29E0 = 0x3FD999999999999ALL;
  xmmword_1009F29E8 = 0u;
  unk_1009F29F8 = xmmword_100563BF0;
  dword_1009F2A08 = 5;
  qword_1009F2A10 = 0x4000000000000000;
  dword_1009F2A18 = 10;
  qword_1009F2A20 = 0x4034000000000000;
  dword_1009F2A28 = 3;
  xmmword_1009F2A30 = xmmword_100563CB0;
  __cxa_atexit(sub_1001BB564, qword_1009F2758, &_mh_execute_header);
  __cxa_atexit(nullsub_73, off_1009EBCC8, &_mh_execute_header);
  __cxa_atexit(nullsub_74, &off_1009EBCD0, &_mh_execute_header);
  v13 = xmmword_100568AE0;
  v14 = unk_100568AF0;
  v15 = xmmword_100568B00;
  v16 = unk_100568B10;
  qword_1009F2A48 = 0;
  unk_1009F2A50 = 0;
  qword_1009F2A40 = 0;
  sub_10004EEB8(&qword_1009F2A40, &v13, v17, 4uLL);
  __cxa_atexit(sub_100045220, &qword_1009F2A40, &_mh_execute_header);
  v13 = xmmword_100568B20;
  qword_1009F2A60 = 0;
  unk_1009F2A68 = 0;
  qword_1009F2A58 = 0;
  sub_10004EEB8(&qword_1009F2A58, &v13, &v14, 1uLL);
  __cxa_atexit(sub_100045220, &qword_1009F2A58, &_mh_execute_header);
  qword_1009F2A70 = os_log_create("com.apple.nearbyd", "Analytics");
  *&v12[0] = @"endingBRRMeasurement";
  v6 = +[NSNull null];
  *&v13 = v6;
  *&v12[1] = @"firstBRRMeasurement";
  v7 = +[NSNull null];
  *(&v13 + 1) = v7;
  *&v12[2] = @"numberOfGotCloserRegionTransitions";
  *&v12[3] = @"numberOfGotFartherRegionTransitions";
  *&v14 = &off_1009C4040;
  *(&v14 + 1) = &off_1009C4040;
  *&v12[4] = @"sessionDuration";
  v8 = +[NSNull null];
  *&v15 = v8;
  *(&v15 + 1) = &off_1009C4040;
  *&v12[5] = @"timeSpentInFar";
  *&v12[6] = @"timeSpentInHere";
  *&v16 = &off_1009C4040;
  *(&v16 + 1) = &off_1009C4040;
  *&v12[7] = @"timeSpentInNear";
  *&v12[8] = @"timeSpentInSearching";
  v17[0] = &off_1009C4040;
  v17[1] = &off_1009C4040;
  *&v12[9] = @"timeToFirstBRRMeasurement";
  *&v12[10] = @"timeToFirstBTSample";
  v17[2] = &off_1009C4040;
  v17[3] = &off_1009C4040;
  *&v12[11] = @"timeToHere";
  *&v12[12] = @"advertiserEnum";
  v9 = +[NSNull null];
  v17[4] = v9;
  *&v12[13] = @"advertiserString";
  v10 = +[NSNull null];
  v17[5] = v10;
  qword_1009FA010 = [NSDictionary dictionaryWithObjects:&v13 forKeys:v12 count:14];

  objc_autoreleasePoolPop(v0);
}

void sub_100283A48(uint64_t a1)
{
  if (qword_1009EBD40 != -1)
  {
    sub_1004B6208();
  }

  *a1 = byte_1009EBD48;
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  *(a1 + 24) = 0;
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;

  *(a1 + 48) = 0;
}

void sub_100284804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_10000AD84(a22);
  }

  _Unwind_Resume(a1);
}

void sub_100285074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000AD84(a14);
  }

  _Unwind_Resume(a1);
}

NSString *sub_100285534(uint64_t a1)
{
  if (*(a1 + 84))
  {
    v1 = *(a1 + 82);
  }

  else
  {
    v1 = 0xFFFFLL;
  }

  if (*(a1 + 81))
  {
    v2 = *(a1 + 80);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 92))
  {
    v3 = *(a1 + 88);
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 100))
  {
    v4 = *(a1 + 96);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 104) * 100.0;
  if (!*(a1 + 108))
  {
    v5 = 0.0;
  }

  return [NSString stringWithFormat:@"<offsetUs: %llu, nbBch: %d, primary: [intervalUs %d, dutyCycle %0.1f, ditherMs: %d], secondary: [delayUs %d, intervalUs %d, dutyCycle %0.1f]>", *(a1 + 48), v1, *(a1 + 64), *(a1 + 68) * 100.0, v2, v3, v4, *&v5];
}

void sub_1002856B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002856D8(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_100019B38();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_10004F51C(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_100285B9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 40));

  _Unwind_Resume(a1);
}

void sub_100285BB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didFailMutualAuthWithToken:WeakRetained[38]];
  }
}

void sub_100285C24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didFailMutualAuthWithToken:WeakRetained[139]];
  }
}

id sub_1002861A4(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [NSString stringWithFormat:@"Unknown [%d]", a1];
  }

  else
  {
    v2 = *(&off_1009A2058 + a1);
  }

  return v2;
}

void sub_1002864D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_100286568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 9);
  if (*(a1 + 9))
  {
    if (*(a2 + 9))
    {
      if (*(a1 + 1))
      {
        v3 = a1;
      }

      else
      {
        v3 = a2;
      }

      LOWORD(v3) = *v3;
      if (*(a1 + 3))
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      LOWORD(v5) = *(v4 + 2);
      if (*(a1 + 5))
      {
        v6 = a1;
      }

      else
      {
        v6 = a2;
      }

      LOWORD(v6) = *(v6 + 4);
      if (*(a1 + 7))
      {
        v7 = a1;
      }

      else
      {
        v7 = a2;
      }

      v8 = *(v7 + 6);
    }

    else
    {
      v3 = *a1;
      v5 = *a1 >> 16;
      v6 = HIDWORD(*a1);
      v8 = HIWORD(*a1);
      v10 = *(a1 + 8);
    }
  }

  else if (*(a2 + 9))
  {
    v3 = *a2;
    v5 = *a2 >> 16;
    v6 = HIDWORD(*a2);
    v8 = HIWORD(*a2);
    v9 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
    LOWORD(v6) = 0;
    LOWORD(v5) = 0;
    LOWORD(v3) = 0;
  }

  return (v8 << 48) | (v6 << 32) | (v5 << 16) | v3;
}

void sub_1002869A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&location);

  v72 = *(v70 - 88);
  if (v72)
  {
    *(v70 - 80) = v72;
    operator delete(v72);
  }

  _Unwind_Resume(a1);
}

void sub_1002869F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNbammsPeerAlgorithmAidingData:a1 + 48 signallingData:a1 + 224 token:WeakRetained[38]];
  }
}

void sub_100286A68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNbammsPeerAlgorithmAidingData:a1 + 48 signallingData:a1 + 224 token:WeakRetained[139]];
  }
}

void sub_100287280(_BYTE *a1@<X0>, std::string *a2@<X8>)
{
  if (a1[1] == 1)
  {
    if (*a1)
    {
      v4 = "Hng:Y";
    }

    else
    {
      v4 = "Hng:N";
    }
  }

  else
  {
    v4 = "Hng:-";
  }

  sub_100004A08(&v44, v4);
  v5 = std::string::insert(&v44, 0, "[ ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v45, " | ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (a1[3] == 1)
  {
    if (a1[2])
    {
      v9 = "FrG:Y";
    }

    else
    {
      v9 = "FrG:N";
    }
  }

  else
  {
    v9 = "FrG:-";
  }

  sub_100004A08(v42, v9);
  if ((v43 & 0x80u) == 0)
  {
    v10 = v42;
  }

  else
  {
    v10 = v42[0];
  }

  if ((v43 & 0x80u) == 0)
  {
    v11 = v43;
  }

  else
  {
    v11 = v42[1];
  }

  v12 = std::string::append(&v46, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v47, " | ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (a1[5] == 1)
  {
    if (a1[4])
    {
      v16 = "FeG:Y";
    }

    else
    {
      v16 = "FeG:N";
    }
  }

  else
  {
    v16 = "FeG:-";
  }

  sub_100004A08(v40, v16);
  if ((v41 & 0x80u) == 0)
  {
    v17 = v40;
  }

  else
  {
    v17 = v40[0];
  }

  if ((v41 & 0x80u) == 0)
  {
    v18 = v41;
  }

  else
  {
    v18 = v40[1];
  }

  v19 = std::string::append(&v48, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  v21 = std::string::append(&v49, " | ");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (a1[7] == 1)
  {
    if (a1[6])
    {
      v23 = "FrU:Y";
    }

    else
    {
      v23 = "FrU:N";
    }
  }

  else
  {
    v23 = "FrU:-";
  }

  sub_100004A08(v38, v23);
  if ((v39 & 0x80u) == 0)
  {
    v24 = v38;
  }

  else
  {
    v24 = v38[0];
  }

  if ((v39 & 0x80u) == 0)
  {
    v25 = v39;
  }

  else
  {
    v25 = v38[1];
  }

  v26 = std::string::append(&v50, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v51, " | ");
  v29 = *&v28->__r_.__value_.__l.__data_;
  v52.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v52.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (a1[8])
  {
    v30 = "DT:P";
  }

  else
  {
    v30 = "DT:W";
  }

  sub_100004A08(__p, v30);
  if ((v37 & 0x80u) == 0)
  {
    v31 = __p;
  }

  else
  {
    v31 = __p[0];
  }

  if ((v37 & 0x80u) == 0)
  {
    v32 = v37;
  }

  else
  {
    v32 = __p[1];
  }

  v33 = std::string::append(&v52, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v53, " ]");
  *a2 = *v35;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (v41 < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_100287698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (*(v66 - 57) < 0)
  {
    operator delete(*(v66 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v66 - 89) < 0)
  {
    operator delete(*(v66 - 112));
  }

  if (*(v66 - 121) < 0)
  {
    operator delete(*(v66 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v66 - 153) < 0)
  {
    operator delete(*(v66 - 176));
  }

  if (*(v66 - 185) < 0)
  {
    operator delete(*(v66 - 208));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

id sub_1002877EC(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 < 0xC && ((0xC7Fu >> v2) & 1) != 0)
  {
    v17 = *(&off_1009A2078 + *a1);
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Unknown [%d]", *a1];
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    v4 = *(a1 + 1);
    v18 = CUPrintNSObjectMasked();
  }

  else
  {
    v18 = @"---------";
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = *(a1 + 2);
    v7 = CUPrintNSObjectMasked();
  }

  else
  {
    v7 = @"---------";
  }

  if (a1[24] >= 3u)
  {
    v8 = [NSString stringWithFormat:@"Unknown [%d]", a1[24]];
  }

  else
  {
    v8 = *(&off_1009A20D8 + a1[24]);
  }

  v9 = *(a1 + 4);
  if (v9)
  {
    v10 = *(a1 + 4);
    v11 = CUPrintNSObjectMasked();
  }

  else
  {
    v11 = @"---------";
  }

  v12 = *(a1 + 5);
  if (v12)
  {
    v13 = *(a1 + 5);
    v14 = CUPrintNSObjectMasked();
  }

  else
  {
    v14 = @"---------";
  }

  v15 = [NSString stringWithFormat:@"[ Out:%@ C:%@ R:%@ | In:%@ C:%@ R:%@ | Missed:%-3d ]", v17, v18, v7, v8, v11, v14, *(a1 + 12)];
  if (v12)
  {
  }

  if (v9)
  {
  }

  if (v5)
  {
  }

  if (v3)
  {
  }

  return v15;
}

void sub_1002879C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  if (v19)
  {
  }

  if (v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_100287C1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 72));

  _Unwind_Resume(a1);
}

void sub_100287C34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNbammsSessionStatusUpdate:a1 + 48 token:WeakRetained[38]];
  }
}

void sub_100287CA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNbammsSessionStatusUpdate:a1 + 48 token:WeakRetained[139]];
  }
}

void sub_1002882F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{
  if (LOBYTE(STACK[0x3A8]) == 1)
  {
    v19 = STACK[0x380];
    if (STACK[0x380])
    {
      STACK[0x388] = v19;
      operator delete(v19);
    }
  }

  if (LOBYTE(STACK[0x330]) == 1)
  {
    sub_10002074C(&STACK[0x2B0], STACK[0x2B8]);
  }

  sub_100020B80(v17 + 96);

  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  sub_10001EEE4(&STACK[0xDA0]);

  _Unwind_Resume(a1);
}

void sub_10028845C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNewNbammsSolution:a1 + 48 token:WeakRetained[38]];
  }
}

uint64_t sub_1002884D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 48) = v4;
  sub_100020458(a1 + 96, a2 + 96);
  sub_1000206E0((a1 + 656), a2 + 656);
  sub_1000207A0(a1 + 808, (a2 + 808));
  memcpy((a1 + 928), (a2 + 928), 0x239uLL);
  return sub_10002096C(a1 + 1504, (a2 + 1504));
}

void sub_100288544(_Unwind_Exception *a1)
{
  if (*(v1 + 920) == 1)
  {
    v3 = *(v1 + 880);
    if (v3)
    {
      *(v1 + 888) = v3;
      operator delete(v3);
    }
  }

  if (*(v1 + 800) == 1)
  {
    sub_10002074C(v1 + 672, *(v1 + 680));
  }

  sub_100020B80(v1 + 96);
  _Unwind_Resume(a1);
}

void sub_10028859C(uint64_t a1)
{
  if (*(a1 + 1728) == 1)
  {
    v2 = *(a1 + 1704);
    if (v2)
    {
      *(a1 + 1712) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 920) == 1)
  {
    v3 = *(a1 + 880);
    if (v3)
    {
      *(a1 + 888) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 800) == 1)
  {
    sub_10002074C(a1 + 672, *(a1 + 680));
  }

  if (*(a1 + 648) == 1)
  {
    v4 = *(a1 + 232);
    if (v4)
    {
      *(a1 + 240) = v4;
      operator delete(v4);
    }

    v5 = *(a1 + 168);
    if (v5)
    {
      *(a1 + 176) = v5;

      operator delete(v5);
    }
  }
}

void sub_100288650(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNewNbammsSolution:a1 + 48 token:WeakRetained[139]];
  }
}

void sub_100288C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15)
{
  if (LOBYTE(STACK[0x3A8]) == 1)
  {
    v19 = STACK[0x380];
    if (STACK[0x380])
    {
      STACK[0x388] = v19;
      operator delete(v19);
    }
  }

  if (LOBYTE(STACK[0x330]) == 1)
  {
    sub_10002074C(&STACK[0x2B0], STACK[0x2B8]);
  }

  sub_100020B80(v17 + 96);

  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  sub_10001EEE4(&STACK[0xDA0]);

  _Unwind_Resume(a1);
}

void sub_100288D7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveUnsuccessfulNbammsSolution:a1 + 48 token:WeakRetained[38]];
  }
}

void sub_100288DF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveUnsuccessfulNbammsSolution:a1 + 48 token:WeakRetained[139]];
  }
}

void sub_100289640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 176));

  _Unwind_Resume(a1);
}

void sub_100289660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNbammsPeerAlgorithmAidingData:a1 + 48 signallingData:a1 + 224 token:WeakRetained[38]];
  }
}

void sub_1002896D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didReceiveNbammsPeerAlgorithmAidingData:a1 + 48 signallingData:a1 + 224 token:WeakRetained[139]];
  }
}

void sub_100289928(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 72));

  _Unwind_Resume(a1);
}

void sub_100289940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didInvalidateNbammsSessionWithReason:*(a1 + 48) token:WeakRetained[38]];
  }
}

void sub_1002899B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didInvalidateNbammsSessionWithReason:*(a1 + 48) token:WeakRetained[139]];
  }
}

void sub_10028A2BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a18)
  {
    sub_10000AD84(a18);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10028A880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028B2C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 - 56));

  _Unwind_Resume(a1);
}

void sub_10028B2F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didFailCryptoWithToken:WeakRetained[38]];
  }
}

void sub_10028B360(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) didFailCryptoWithToken:WeakRetained[139]];
  }
}

void sub_10028B460(uint64_t a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    byte_1009F2B58 = [v2 BOOLForKey:@"FindingDisableCrypto"];

    v3 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(a1 + 32) + 16);
      v5[0] = 67109378;
      v5[1] = byte_1009F2B58;
      v6 = 2112;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#find-range,#crypto Disable crypto: %d, %@", v5, 0x12u);
    }
  }

  else
  {
    byte_1009F2B58 = 0;
  }
}

void sub_10028BFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10028C040(uint64_t a1)
{
  v2 = NSRandomData();
  v3 = *(a1 + 8);
  *(a1 + 8) = v2;
}

void sub_10028C268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_10028C448(&a9);
  sub_10028C448(&a17);
  _Unwind_Resume(a1);
}

void sub_10028C2A0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v22 = 0uLL;
  v24 = 0uLL;
  sub_100283A48(v21);
  v6 = a2 == 0;
  if (a2)
  {
    v7 = 5;
  }

  else
  {
    v7 = 15;
  }

  v8 = 12;
  if (!v6)
  {
    v8 = 2;
  }

  v9 = (a1 + 11);
  if (!v6)
  {
    v9 = (a1 + 1);
  }

  v10 = *v9;
  v11 = v10 >> 4;
  v21[0] = v10 >> 4;
  v12 = v10 & 0xF;
  v23 = v12;
  if (v11 > 0xB)
  {
    goto LABEL_17;
  }

  if (((1 << v11) & 0xC03) != 0)
  {
    if (v12 < 3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((1 << v11) & 0x38) != 0)
    {
      v13 = 1;
LABEL_16:
      if (v12 > 2)
      {
        goto LABEL_17;
      }

      v15 = [NSData dataWithBytes:a1 + v8 length:3];
      v16 = v22;
      *&v22 = v15;

      if (v13)
      {
        v17 = [NSData dataWithBytes:a1 + v7 length:6];
        v18 = *(&v22 + 1);
        *(&v22 + 1) = v17;
      }

LABEL_20:
      v14 = 0;
      *a3 = v21[0];
      *(a3 + 24) = v23;
      *(a3 + 48) = v25;
      *(a3 + 56) = 1;
      v19 = v22;
      v22 = 0u;
      *(a3 + 8) = v19;
      v20 = v24;
      v24 = 0u;
      *(a3 + 32) = v20;
      goto LABEL_21;
    }

    if (((1 << v11) & 0x44) != 0)
    {
      v13 = 0;
      goto LABEL_16;
    }
  }

LABEL_17:
  *a3 = 0;
  *(a3 + 56) = 0;
  v14 = *(&v24 + 1);
LABEL_21:
}

void sub_10028C434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028CD58(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028C448(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
  }

  return a1;
}

void sub_10028C8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_10028CD58(va);
  _Unwind_Resume(a1);
}

void sub_10028C900(char *a1)
{
  v1 = *a1;
  if (v1 >= 7)
  {
    if (v1 == 10)
    {
      v3 = 11;
    }

    else
    {
      if (v1 != 11)
      {
        return;
      }

      sub_10028C040(a1);
      v3 = 2;
    }

    *a1 = v3;
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B6DC0();
  }
}

void sub_10028C97C(uint64_t a1, unsigned int a2)
{
  if (a2 >= 7)
  {
    if (a2 - 10 < 2)
    {
      *a1 = a2;
      v3 = *(a1 + 8);
      *(a1 + 8) = 0;

      v4 = *(a1 + 16);
      *(a1 + 16) = 0;

      *(a1 + 24) = 0;
      v5 = *(a1 + 32);
      *(a1 + 32) = 0;

      v6 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004B6DF4();
  }
}

void sub_10028CA28(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[1];
  if (v4 && a1[4])
  {
    v5 = [v4 mutableCopy];
    [v5 appendData:a1[4]];
    v6 = [v3 getIRK];
    [v6 bytes];
    [v5 bytes];
    [v5 length];
    v7 = SipHash();

    v10 = v7;
    v8 = [NSData dataWithBytes:&v10 length:6];
    v9 = a1[2];
    a1[2] = v8;
  }
}

id sub_10028CB30(void *a1, void *a2)
{
  v3 = a2;
  if (a1[1] && (v4 = a1[4]) != 0 && a1[5])
  {
    v5 = [v4 mutableCopy];
    [v5 appendData:a1[1]];
    v6 = [v3 getIRK];
    [v6 bytes];
    [v5 bytes];
    [v5 length];
    v7 = SipHash();

    v11 = v7;
    v8 = [NSData dataWithBytes:&v11 length:6];
    v9 = [v8 isEqualToData:a1[5]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL sub_10028CC5C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 1);
  if (v4 | *(a2 + 1))
  {
    v5 = [v4 isEqualToData:?] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 2);
  if (v6 | *(a2 + 2))
  {
    v7 = [v6 isEqualToData:?] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 4);
  if (v8 | *(a2 + 4))
  {
    v9 = [v8 isEqualToData:?] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 5);
  v11 = v10 | *(a2 + 5);
  if (v11)
  {
    LODWORD(v11) = [v10 isEqualToData:?] ^ 1;
  }

  return !((*a1 != *a2) | (v5 | v7) & 1) && !((a1[24] != a2[24]) | (v9 | v11) & 1) && *(a1 + 12) == *(a2 + 12);
}

void sub_10028D05C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 30);

    if (v4)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v3[2];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,Finder mutual-auth timer fires, failed mutual-auth, session %@", &v8, 0xCu);
      }

      *(v3 + 74) = 50;
      *(v3 + 248) = 6;
      v7 = v3[256];
      if (v7)
      {
        (*(v7 + 2))(v7, v3, v3[38], *(a1 + 40), 0);
      }
    }
  }
}

void sub_10028D180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(WeakRetained + 131);

    if (v4)
    {
      v5 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v3[2];
        v8 = 138412290;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#find-range,Findee mutual-auth timer fires, failed mutual-auth, session %@", &v8, 0xCu);
      }

      *(v3 + 276) = 50;
      *(v3 + 1056) = 6;
      v7 = v3[256];
      if (v7)
      {
        (*(v7 + 2))(v7, v3, v3[139], *(a1 + 40), 0);
      }
    }
  }
}

void sub_10028D6DC(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[5];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10028D7A8;
    block[3] = &unk_1009A1A18;
    v10 = WeakRetained;
    v11 = v5;
    v12 = a3;
    dispatch_async(v8, block);
  }
}

void sub_10028D7B8(uint64_t a1, void *a2, void *a3, char a4, char a5)
{
  v9 = a2;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = WeakRetained[5];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10028D8B4;
    v14[3] = &unk_1009A1A68;
    v15 = WeakRetained;
    v16 = v9;
    v17 = v10;
    v18 = a4;
    v19 = a5;
    dispatch_async(v13, v14);
  }
}

void sub_10028D96C(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1009F2B60;
  qword_1009F2B60 = v1;
}

uint64_t sub_10028DC50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10028DC68(uint64_t a1)
{
  if ([*(*(a1 + 32) + 8) sessionRegistered] & 1) != 0 || (objc_msgSend(*(*(a1 + 32) + 16), "sessionRegistered"))
  {
    v2 = [*(*(a1 + 32) + 8) sessionRegistered];
    if (v2 != [*(*(a1 + 32) + 16) sessionRegistered])
    {
      v3 = [*(*(a1 + 32) + 8) sessionRegistered];
      v4 = 16;
      if (v3)
      {
        v4 = 8;
      }

      v5 = *(*(a1 + 32) + v4);
      v6 = [*(*(a1 + 32) + 8) sessionRegistered];
      v7 = 8;
      if (v6)
      {
        v7 = 16;
      }

      v8 = *(*(a1 + 32) + v7);
      if ([v5 sharedProtocol])
      {
        if ([v5 sharedProtocol] != 1 && objc_msgSend(v5, "sharedProtocol") != 2)
        {
LABEL_39:

          return;
        }

        v9 = *(a1 + 80);
        if ((v9 - 1) >= 2)
        {
          if (!v9)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004B6E28((a1 + 80));
            }

            v52 = NSLocalizedFailureReasonErrorKey;
            v53 = @"protocol version does not support group finding";
            v10 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
            v11 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v10];
            v12 = *(*(a1 + 56) + 8);
            v13 = *(v12 + 40);
            *(v12 + 40) = v11;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v23 = *(a1 + 80);
        if ((v23 - 1) >= 2)
        {
          if (!v23)
          {
            v31 = [v5 registerNBAMMSSessionWithToken:*(a1 + 40) isFinder:*(a1 + 84) client:*(a1 + 48) serviceRequest:*(a1 + 64) startRangingOptions:*(a1 + 72) sharedProtocol:?];
            v32 = *(*(a1 + 56) + 8);
            v33 = *(v32 + 40);
            *(v32 + 40) = v31;

            v34 = objc_opt_new();
            [v34 addObject:*(*(a1 + 32) + 8)];
            [*(*(a1 + 32) + 32) setObject:v34 forKey:*(a1 + 40)];
          }

          goto LABEL_39;
        }
      }

      v24 = [v8 registerNBAMMSSessionWithToken:*(a1 + 40) isFinder:*(a1 + 84) client:*(a1 + 48) serviceRequest:*(a1 + 64) startRangingOptions:*(a1 + 72) sharedProtocol:?];
      v25 = *(*(a1 + 56) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = v24;

      if (([*(a1 + 32) _isReciprocalFindingPossibleRoleIsFinder:*(a1 + 84) rangingSession:v5] & 1) == 0)
      {
        [*(a1 + 32) _updateAnalyticsWithSuccessfulRangingRequest];
      }

      goto LABEL_39;
    }

    v14 = objc_opt_new();
    v15 = *(a1 + 80);
    if (v15 != [*(*(a1 + 32) + 8) sharedProtocol])
    {
      v22 = 0;
      goto LABEL_43;
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 8);
    if (v17)
    {
      [v17 attachedRoles];
      v16 = *(a1 + 32);
    }

    else
    {
      __p = 0;
      v48 = 0;
      v49 = 0;
    }

    v27 = [*(v16 + 8) sessionState];
    v28 = __p;
    v29 = v48 - __p == 4 && v27 == 2;
    v22 = v29;
    if (v29)
    {
      v30 = *(a1 + 84);
      if (v30 == (*__p == 0))
      {
        v22 = 0;
LABEL_42:
        v48 = v28;
        operator delete(v28);
LABEL_43:
        v36 = *(a1 + 80);
        if (v36 != [*(*(a1 + 32) + 16) sharedProtocol])
        {
          if (!v22)
          {
LABEL_56:
            v42 = qword_1009F9820;
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p) = 0;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#find-range,Reached maximum NMI sessions", &__p, 2u);
            }

            v50 = NSLocalizedFailureReasonErrorKey;
            v51 = @"Reached maximum NMI sessions";
            v43 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            v44 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10020 userInfo:v43];
            v45 = *(*(a1 + 56) + 8);
            v46 = *(v45 + 40);
            *(v45 + 40) = v44;

            [*(a1 + 32) _updateAnalyticsWithFailedRangingRequestToken:*(a1 + 40) isFinder:*(a1 + 84)];
            goto LABEL_59;
          }

LABEL_47:
          [*(*(a1 + 32) + 32) setObject:v14 forKey:*(a1 + 40)];
LABEL_59:

          return;
        }

        v37 = *(*(a1 + 32) + 16);
        if (v37)
        {
          [v37 attachedRoles];
          v37 = *(*(a1 + 32) + 16);
        }

        else
        {
          __p = 0;
          v48 = 0;
          v49 = 0;
        }

        v38 = [v37 sessionState];
        v39 = __p;
        if (v48 - __p == 4 && v38 == 2)
        {
          v40 = *(a1 + 84);
          if (v40 == (*__p == 0))
          {
LABEL_54:
            v48 = v39;
            operator delete(v39);
LABEL_55:
            if ((v22 & 1) == 0)
            {
              goto LABEL_56;
            }

            goto LABEL_47;
          }

          v41 = [*(*(a1 + 32) + 16) registerNBAMMSSessionWithToken:*(a1 + 40) isFinder:v40 client:*(a1 + 48) serviceRequest:*(a1 + 64) startRangingOptions:*(a1 + 72) sharedProtocol:*(a1 + 80)];
          [v14 addObject:*(*(a1 + 32) + 16)];
          LOBYTE(v22) = 1;
          v39 = __p;
        }

        if (!v39)
        {
          goto LABEL_55;
        }

        goto LABEL_54;
      }

      v35 = [*(*(a1 + 32) + 8) registerNBAMMSSessionWithToken:*(a1 + 40) isFinder:v30 client:*(a1 + 48) serviceRequest:*(a1 + 64) startRangingOptions:*(a1 + 72) sharedProtocol:*(a1 + 80)];
      [v14 addObject:*(*(a1 + 32) + 8)];
      v28 = __p;
    }

    if (!v28)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v18 = [*(*(a1 + 32) + 8) registerNBAMMSSessionWithToken:*(a1 + 40) isFinder:*(a1 + 84) client:*(a1 + 48) serviceRequest:*(a1 + 64) startRangingOptions:*(a1 + 72) sharedProtocol:*(a1 + 80)];
  v19 = *(*(a1 + 56) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;

  v21 = *(a1 + 32);

  [v21 _updateAnalyticsWithSuccessfulRangingRequest];
}