void sub_1003F75D4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v3)
  {
    sub_100008080(*v3);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F7600(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1003F764C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1003F764C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_1003F76F8(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102450690;
  sub_100D4DDE0(a1 + 3, *a2);
  return a1;
}

void sub_1003F7778(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102450690;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1003F7860(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024506E0;
  sub_1003F7958((a1 + 3), a2);
  return a1;
}

void sub_1003F78DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024506E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003F7958(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  sub_10000EC00(__p, "");
  sub_100970160(a1, v3, __p, 0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1003F79BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003F79D8(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_10187F61C();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F630();
    }
  }

  return v7;
}

void sub_1003F7ADC(uint64_t a1@<X8>)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 2050;
  *(v2 + 14) = a1;
}

uint64_t sub_1003F7B10(uint64_t a1, unsigned int a2, char a3)
{
  *a1 = a2;
  *(a1 + 4) = 1092616192;
  *(a1 + 8) = 0x3FD3333340000000;
  *(a1 + 16) = 0;
  *(a1 + 17) = a3;
  v4 = (a1 + 24);
  *(a1 + 24) = off_102450010;
  *(a1 + 32) = 0;
  *(a1 + 40) = off_102450040;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = off_102450040;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = off_102450040;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 256) = off_102450010;
  *(a1 + 264) = 0;
  *(a1 + 272) = off_102450040;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = off_102450040;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = off_102450040;
  v5 = (a1 + 488);
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = off_102450010;
  *(a1 + 496) = 0;
  *(a1 + 504) = off_102450040;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 576) = off_102450040;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 648) = off_102450040;
  v6 = (a1 + 720);
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 720) = off_102450010;
  *(a1 + 728) = 0;
  *(a1 + 736) = off_102450040;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 808) = off_102450040;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 880) = off_102450040;
  *(a1 + 949) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 965) = 1;
  *(a1 + 968) = 0xBFF0000000000000;
  *(a1 + 976) = 0x3EE6666600000000;
  *(a1 + 984) = 7;
  *(a1 + 992) = 0xBFF0000000000000;
  *(a1 + 1000) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 1008) = _Q0;
  *(a1 + 1024) = 0x3D23D70A3C23D70ALL;
  *(a1 + 1032) = 0;
  *(a1 + 1036) = 0;
  *(a1 + 1040) = 0;
  if (a2 >= 2)
  {
    *(a1 + 4) = 1103626240;
    *(a1 + 8) = 0x3FC99999A0000000;
    *(a1 + 16) = 1;
    sub_1003ECC28((a1 + 256), 5);
    sub_1003ECC28(v5, 3);
    sub_1003ECC28(v6, 5);
    if (qword_1025D4280 != -1)
    {
      sub_10187F70C();
    }

    v12 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134219008;
      v19 = 0x4034000000000000;
      v20 = 1024;
      v21 = 5;
      v22 = 1024;
      v23 = 3;
      v24 = 1024;
      v25 = 5;
      v26 = 1024;
      v27 = 3;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "gyroFrequency,%.3f,gyroBufferSize,%d,gyroMeanBufferSize,%d,zRotBufferSize,%d,minRequiredZrots,%d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F720(buf);
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLOrientationDetector::CLOrientationDetector(FormFactor, BOOL)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    *(a1 + 1024) = *(a1 + 1024) * 0.8;
    *(a1 + 1028) = 1023745720;
  }

  v13 = llround(*(a1 + 8) * *(a1 + 4));
  sub_1003ECC28(v4, v13);
  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v14 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v19) = v13;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "accelBufferSize,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187F720(buf);
    v16 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLOrientationDetector::CLOrientationDetector(FormFactor, BOOL)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return a1;
}

void sub_1003F8180(_Unwind_Exception *a1)
{
  sub_1003EE27C(v4);
  sub_1003EE27C(v3);
  sub_1003EE27C(v2);
  sub_1003EE27C(v1);
  _Unwind_Resume(a1);
}

void sub_1003F81C4(uint64_t a1, float *a2, double *a3)
{
  v6 = *(a1 + 1008);
  if (v6 < 0.0 || *a3 >= v6 && *a3 - v6 <= 2.0 / *(a1 + 4))
  {
    sub_1000423D4(a1 + 40, a2);
    sub_1000423D4(a1 + 112, a2 + 1);
    sub_1000423D4(a1 + 184, a2 + 2);
    *(a1 + 1008) = *a3;
    if (qword_1025D4280 != -1)
    {
      sub_10187F70C();
    }

    v7 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[2];
      v11 = *a3;
      *buf = 134218752;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = v11;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "accel, %.3f, %.3f, %.3f, timestamp, %.20f", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationDetector::addAccSample(const CLMotionTypeAcceleration &, const CFAbsoluteTime &)", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    if (*(a1 + 965) == 1)
    {
      *(a1 + 968) = *a3;
    }
  }

  else
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187F70C();
    }

    v12 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a3 - *(a1 + 1008);
      *buf = 134349056;
      v16 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Accelerometer samples data gap or out of order! deltaInterval=%{public}.4f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187F78C(a3, (a1 + 1008));
    }

    sub_1003F84E4((a1 + 24));
    *(a1 + 1008) = 0xBFF0000000000000;
  }
}

void sub_1003F84E4(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  a1[10] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[7];
      v2 = (a1[6] + 8);
      a1[6] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = 1024;
  }

  a1[9] = v6;
LABEL_8:
  a1[4] = 0;
  v7 = a1[15];
  v8 = a1[16];
  a1[19] = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = a1[16];
      v7 = (a1[15] + 8);
      a1[15] = v7;
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

  a1[18] = v11;
LABEL_15:
  a1[13] = 0;
  v12 = a1[24];
  v13 = a1[25];
  a1[28] = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = a1[25];
      v12 = (a1[24] + 8);
      a1[24] = v12;
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
    a1[27] = v16;
  }

  a1[22] = 0;
}

void sub_1003F8624(uint64_t a1, float *a2, double *a3)
{
  if (*(a1 + 16) == 1)
  {
    v6 = (a1 + 1016);
    v7 = *(a1 + 1016);
    if (v7 >= 0.0)
    {
      v8 = *a3 - v7;
      if (v8 < 0.0 || v8 * 20.0 > 2.5)
      {
        if (qword_1025D4280 != -1)
        {
          sub_10187F70C();
        }

        v10 = qword_1025D4288;
        if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *a3 - *v6;
          *buf = 134349056;
          v55 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "Gyro samples data gap or out of order! deltaInterval=%{public}.4f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187F894(a3, v6);
        }

        if (fabs(v8) * 20.0 > 4.0)
        {
          sub_1003F84E4((a1 + 256));
          v12 = -1.0;
LABEL_30:
          *v6 = v12;
          return;
        }

        if (v8 < 0.0)
        {
          return;
        }
      }

      sub_1000423D4(a1 + 272, a2);
      sub_1000423D4(a1 + 344, a2 + 1);
      sub_1000423D4(a1 + 416, a2 + 2);
      v13 = *(a1 + 336);
      v14 = 0.0;
      v15 = 0.0;
      if (v13)
      {
        v15 = *(a1 + 288) / v13;
      }

      v16 = *(a1 + 408);
      if (v16)
      {
        v14 = *(a1 + 360) / v16;
      }

      v17 = *(a1 + 480);
      if (v17)
      {
        v18 = *(a1 + 432) / v17;
      }

      else
      {
        v18 = 0.0;
      }

      v33 = off_102450790;
      v34 = v15;
      v35 = v14;
      v36[0] = v18;
      sub_1000423D4(a1 + 504, &v34);
      sub_1000423D4(a1 + 576, &v35);
      sub_1000423D4(a1 + 648, v36);
      sub_1003F8B34(a1, a2, &v33);
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v19 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        v20 = *a2;
        v21 = a2[1];
        v22 = a2[2];
        v23 = *(a1 + 1004);
        v24 = *(a1 + 960);
        v25 = *a3;
        *buf = 134220032;
        v55 = v20;
        v56 = 2048;
        v57 = v21;
        v58 = 2048;
        v59 = v22;
        v60 = 2048;
        v61 = v34;
        v62 = 2048;
        v63 = v35;
        v64 = 2048;
        v65 = v36[0];
        v66 = 1024;
        v67 = v23;
        v68 = 1024;
        v69 = v24;
        v70 = 2048;
        v71 = v25;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "gyro, %.3f, %.3f, %.3f, gyroMean, %.3f, %.3f, %.3f, fLastDetection,%d,fStartZrot,%d, timestamp, %.10f", buf, 0x54u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4280 != -1)
        {
          sub_10187F764();
        }

        v26 = *a2;
        v27 = a2[1];
        v28 = a2[2];
        v29 = *(a1 + 1004);
        v30 = *(a1 + 960);
        v31 = *a3;
        v36[2] = 3.8529e-34;
        v37 = v26;
        v38 = 2048;
        v39 = v27;
        v40 = 2048;
        v41 = v28;
        v42 = 2048;
        v43 = v34;
        v44 = 2048;
        v45 = v35;
        v46 = 2048;
        v47 = v36[0];
        v48 = 1024;
        v49 = v29;
        v50 = 1024;
        v51 = v30;
        v52 = 2048;
        v53 = v31;
        v32 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationDetector::addGyroSample(const CLMotionTypeRotationRate &, const CFAbsoluteTime &)", "%s\n", v32);
        if (v32 != buf)
        {
          free(v32);
        }
      }
    }

    else
    {
      sub_1000423D4(a1 + 272, a2);
      sub_1000423D4(a1 + 344, a2 + 1);
      sub_1000423D4(a1 + 416, a2 + 2);
    }

    sub_1003F9304(a1);
    v12 = *a3;
    goto LABEL_30;
  }
}

uint64_t sub_1003F8AC0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 80);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = *(result + 32) / v2;
  }

  v5 = *(result + 152);
  if (v5)
  {
    v3 = *(result + 104) / v5;
  }

  v6 = *(result + 224);
  if (v6)
  {
    v7 = *(result + 176) / v6;
  }

  else
  {
    v7 = 0.0;
  }

  *a2 = off_102450790;
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  *(a2 + 16) = v7;
  return result;
}

void sub_1003F8B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 960);
  if ((v5 & 1) == 0 && !*(a1 + 1004))
  {
    return;
  }

  v7 = *(a3 + 16);
  v6 = (a3 + 16);
  v8 = v7;
  v9 = fabsf(*(v6 - 2));
  v10 = fabsf(*(v6 - 1));
  if (v9 < v10)
  {
    v9 = v10;
  }

  v81 = v9;
  v11 = fabsf(v8);
  if (v5)
  {
    *buf = v11 - v9;
    sub_1000423D4(a1 + 736, v6);
    sub_1000423D4(a1 + 808, buf);
    sub_1000423D4(a1 + 880, &v81);
    if ((*(a1 + 960) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v54 = *(a2 + 8);
    v55 = fabsf((v8 + v54) * 0.5);
    if (v9 >= 90.0 || v55 <= ((v9 + 30.0) * 1.25))
    {
      return;
    }

    v57 = fabsf(v54);
    if (v11 <= 45.0 && v57 <= 75.0)
    {
      return;
    }

    *buf = v11 - v9;
    sub_1000423D4(a1 + 736, v6);
    sub_1000423D4(a1 + 808, buf);
    sub_1000423D4(a1 + 880, &v81);
    *(a1 + 960) = 1;
    *(a1 + 952) = (*(a1 + 952) + 1);
    *(a1 + 1032) = 0;
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v12 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(a1 + 800);
    v14 = 0.0;
    v15 = 0.0;
    if (v13)
    {
      v15 = *(a1 + 752) / v13;
    }

    v16 = *(a1 + 872);
    if (v16)
    {
      v14 = *(a1 + 824) / v16;
    }

    v17 = *(a1 + 944);
    v18 = 0.0;
    v19 = 0.0;
    if (v17)
    {
      v19 = *(a1 + 896) / v17;
    }

    v20 = *(a2 + 8);
    *v82 = off_102450790;
    *&v82[8] = v15;
    *v83 = v14;
    *&v83[4] = v19;
    if (v13)
    {
      v18 = *(a1 + 752) / v13;
    }

    v21 = 0.0;
    v22 = 0.0;
    if (v16)
    {
      v22 = *(a1 + 824) / v16;
    }

    if (v17)
    {
      v21 = *(a1 + 896) / v17;
    }

    v77 = off_102450790;
    v78 = v18;
    v79 = v22;
    v80 = v21;
    v23 = 0.0;
    v24 = 0.0;
    if (v13)
    {
      v24 = *(a1 + 752) / v13;
    }

    if (v16)
    {
      v23 = *(a1 + 824) / v16;
    }

    v25 = 0.0;
    v26 = 0.0;
    if (v17)
    {
      v26 = *(a1 + 896) / v17;
    }

    v73 = off_102450790;
    v74 = v24;
    v75 = v23;
    v76 = v26;
    if (v13 >= 2)
    {
      v27 = (v13 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
      if (v27 >= 0.0)
      {
        v25 = v27 / ((v13 - 1) * v13);
      }
    }

    v28 = 0.0;
    v29 = 0.0;
    if (v16 >= 2)
    {
      v30 = (v16 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
      v29 = 0.0;
      if (v30 >= 0.0)
      {
        v29 = v30 / ((v16 - 1) * v16);
      }
    }

    if (v17 >= 2)
    {
      v31 = (v17 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
      if (v31 >= 0.0)
      {
        v28 = v31 / ((v17 - 1) * v17);
      }
    }

    v69 = off_102450790;
    v70 = v25;
    v71 = v29;
    v72 = v28;
    v32 = 0.0;
    v33 = 0.0;
    if (v13 >= 2)
    {
      v34 = (v13 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
      v33 = 0.0;
      if (v34 >= 0.0)
      {
        v33 = v34 / ((v13 - 1) * v13);
      }
    }

    if (v16 >= 2)
    {
      v35 = (v16 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
      if (v35 >= 0.0)
      {
        v32 = v35 / ((v16 - 1) * v16);
      }
    }

    v36 = 0.0;
    v37 = 0.0;
    if (v17 >= 2)
    {
      v38 = (v17 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
      v37 = 0.0;
      if (v38 >= 0.0)
      {
        v37 = v38 / ((v17 - 1) * v17);
      }
    }

    v65 = off_102450790;
    v66 = v33;
    v67 = v32;
    v68 = v37;
    if (v13 >= 2)
    {
      v39 = (v13 * *(a1 + 756)) - (*(a1 + 752) * *(a1 + 752));
      if (v39 >= 0.0)
      {
        v36 = v39 / ((v13 - 1) * v13);
      }
    }

    v40 = 0.0;
    v41 = 0.0;
    if (v16 >= 2)
    {
      v42 = (v16 * *(a1 + 828)) - (*(a1 + 824) * *(a1 + 824));
      v41 = 0.0;
      if (v42 >= 0.0)
      {
        v41 = v42 / ((v16 - 1) * v16);
      }
    }

    v43 = v20;
    v44 = v22;
    if (v17 >= 2)
    {
      v45 = (v17 * *(a1 + 900)) - (*(a1 + 896) * *(a1 + 896));
      if (v45 >= 0.0)
      {
        v40 = v45 / ((v17 - 1) * v17);
      }
    }

    v61 = off_102450790;
    v62 = v36;
    v63 = v41;
    v64 = v40;
    *buf = 3.8529e-34;
    v99 = v43;
    v100 = 2048;
    v101 = (v11 - v81);
    v102 = 2048;
    v103 = v81;
    v104 = 2048;
    v105 = v15;
    v106 = 2048;
    v107 = v44;
    v108 = 2048;
    v109 = v26;
    v110 = 2048;
    v111 = v25;
    v112 = 2048;
    v113 = v32;
    v114 = 2048;
    v115 = v40;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "zRot (%.3f, %.3f, %.3f), mean(%.3f, %.3f, %.3f), var(%.3f, %.3f, %.3f)", buf, 0x5Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v46 = *(a2 + 8);
    v47 = v81;
    sub_1003F8AC0(a1 + 720, &v77);
    v48 = v78;
    sub_1003F8AC0(a1 + 720, &v73);
    v49 = v75;
    sub_1003F8AC0(a1 + 720, &v69);
    v50 = v72;
    sub_1003F97A0(a1 + 720, &v65);
    v51 = v66;
    sub_1003F97A0(a1 + 720, &v61);
    v52 = v63;
    sub_1003F97A0(a1 + 720, v59);
    *v82 = 134220032;
    *&v82[4] = v46;
    *v83 = 2048;
    *&v83[2] = (v11 - v47);
    v84 = 2048;
    v85 = v47;
    v86 = 2048;
    v87 = v48;
    v88 = 2048;
    v89 = v49;
    v90 = 2048;
    v91 = v50;
    v92 = 2048;
    v93 = v51;
    v94 = 2048;
    v95 = v52;
    v96 = 2048;
    v97 = v60;
    v53 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationDetector::fillZRotBuffer(const CLMotionTypeRotationRate &, const CLVector3d<float> &)", "%s\n", v53);
    if (v53 != buf)
    {
      free(v53);
    }
  }
}

void sub_1003F9304(uint64_t a1)
{
  *(a1 + 963) = 0;
  v2 = *(a1 + 336);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = *(*(*(a1 + 304) + (((v2 + *(a1 + 328) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v2 + *(a1 + 328) - 1) & 0x3FF));
  }

  v5 = *(a1 + 408);
  if (v5)
  {
    v3 = *(*(*(a1 + 376) + (((v5 + *(a1 + 400) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + *(a1 + 400) - 1) & 0x3FF));
  }

  v6 = *(a1 + 480);
  if (v6)
  {
    v7 = *(*(*(a1 + 448) + (((v6 + *(a1 + 472) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v6 + *(a1 + 472) - 1) & 0x3FF));
  }

  else
  {
    v7 = 0.0;
  }

  v35 = off_102450790;
  v36 = v4;
  v37 = v3;
  v38 = v7;
  if (*(a1 + 960) != 1)
  {
    goto LABEL_25;
  }

  v8 = *(a1 + 104);
  v9 = 0.0;
  v10 = 0.0;
  if (v8)
  {
    v10 = *(a1 + 56) / v8;
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    v9 = *(a1 + 128) / v11;
  }

  v12 = *(a1 + 248);
  if (v12)
  {
    v13 = *(a1 + 200) / v12;
  }

  else
  {
    v13 = 0.0;
  }

  *buf = off_102450790;
  *&buf[8] = v10;
  v40 = v9;
  v41 = v13;
  v14 = (((v9 * v9) + (v10 * v10)) + (v13 * v13)) + -1.0;
  if (fabsf(v14) < 0.3 && fabsf(v13) > 0.9)
  {
    *(a1 + 1032) = 0;
    *(a1 + 952) = 0;
    *(a1 + 960) = 0;
    sub_1003F84E4((a1 + 720));
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v15 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      *v34 = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "SCREEN FLAT. NOT FILLING UP ZROT BUFFER.", v34, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10187FA88();
    }

LABEL_24:
    v4 = v36;
    v3 = v37;
    v7 = v38;
LABEL_25:
    v16 = fabsf(v4);
    v17 = fabsf(v3);
    v18 = fabsf(v7);
    if (v16 >= v17)
    {
      v17 = v16;
    }

    if (v17 >= v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (v19 > 60.0)
    {
      *(a1 + 964) = 1;
      if (v19 > 195.0)
      {
        v20 = *(a1 + 976);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a1 + 976) = v22;
        }
      }

      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v23 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        *&buf[4] = v19;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Rotating! Current max gyro rate %.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187FB6C();
      }
    }

    return;
  }

  v24 = *(a1 + 800);
  if (v24)
  {
    v25 = *(a1 + 752) / v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = (v7 / 20.0) + *(a1 + 956);
  *(a1 + 956) = v26;
  v27 = fabsf(v26);
  v28 = 2.0;
  if (v27 > 75.0)
  {
    v28 = 15.0;
  }

  if ((v7 < v28 || v25 >= -30.0) && (v7 > -v28 || v25 <= 30.0))
  {
    if (v24)
    {
      v31 = *(*(*(a1 + 768) + (((v24 + *(a1 + 792) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v24 + *(a1 + 792) - 1) & 0x3FF));
    }

    else
    {
      v31 = 0.0;
    }

    v33 = sub_100269990(a1, fabsf((v7 + v31) * 0.5), v14, v27);
    *(a1 + 963) = v33;
    if (v33)
    {
      return;
    }

    goto LABEL_24;
  }

  *(a1 + 1032) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  sub_1003F84E4((a1 + 720));
  *(a1 + 964) = 1;
  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v32 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    *v34 = 0;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Transient!", v34, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187F9A4();
  }
}

uint64_t sub_1003F97A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 80);
  v3 = 0.0;
  v4 = 0.0;
  if (v2 >= 2)
  {
    v5 = (v2 * *(result + 36)) - (*(result + 32) * *(result + 32));
    v4 = 0.0;
    if (v5 >= 0.0)
    {
      v4 = v5 / ((v2 - 1) * v2);
    }
  }

  v6 = *(result + 152);
  if (v6 >= 2)
  {
    v7 = (v6 * *(result + 108)) - (*(result + 104) * *(result + 104));
    if (v7 >= 0.0)
    {
      v3 = v7 / ((v6 - 1) * v6);
    }
  }

  v8 = *(result + 224);
  v9 = 0.0;
  if (v8 >= 2)
  {
    v10 = (v8 * *(result + 180)) - (*(result + 176) * *(result + 176));
    if (v10 >= 0.0)
    {
      v9 = v10 / ((v8 - 1) * v8);
    }
  }

  *a2 = off_102450790;
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  *(a2 + 16) = v9;
  return result;
}

void *sub_1003F9874@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[10];
  v3 = 0;
  v4 = 0;
  if (v2)
  {
    v4 = *(*(result[6] + (((v2 + result[9] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v2 + result[9] - 1) & 0x3FF));
  }

  v5 = result[19];
  if (v5)
  {
    v3 = *(*(result[15] + (((v5 + result[18] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + result[18] - 1) & 0x3FF));
  }

  v6 = result[28];
  if (v6)
  {
    v7 = *(*(result[24] + (((v6 + result[27] - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v6 + result[27] - 1) & 0x3FF));
  }

  else
  {
    v7 = 0;
  }

  *a2 = off_102450790;
  *(a2 + 8) = v4;
  *(a2 + 12) = v3;
  *(a2 + 16) = v7;
  return result;
}

void sub_1003F9930(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (*(a1 + 80) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101880054();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Index out of bound.", v11, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101880068();
    }

    *a3 = off_102450790;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    v4 = *(a1 + 72) + a2;
    v5 = *(*(a1 + 48) + ((v4 >> 7) & 0x1FFFFFFFFFFFFF8));
    v6 = *(a1 + 144) + a2;
    v7 = *(*(a1 + 120) + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8));
    v8 = *(a1 + 216) + a2;
    v9 = *(*(a1 + 192) + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8));
    *a3 = off_102450790;
    *(a3 + 8) = *(v5 + 4 * (v4 & 0x3FF));
    *(a3 + 12) = *(v7 + 4 * (v6 & 0x3FF));
    *(a3 + 16) = *(v9 + 4 * (v8 & 0x3FF));
  }
}

void sub_1003F9A80(uint64_t a1, float a2, float a3)
{
  if (*(a1 + 1028) > a2)
  {
    v8 = v3;
    v9 = v4;
    if (a3 < 0.85 && *(a1 + 1004) == 0)
    {
      *(a1 + 1004) = 1;
      if (qword_1025D4280 != -1)
      {
        sub_10187F70C();
      }

      v6 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Setting lastPrimaryOrientation.", v7, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101880150();
      }
    }

    else if (a3 > 0.9)
    {
      *(a1 + 1004) = 0;
    }
  }
}

void sub_1003F9B5C(uint64_t a1, float a2, float a3, float a4)
{
  if (a4 > 0.925)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 1028) * 3.5) < a2)
  {
    goto LABEL_7;
  }

  v4 = 0.0;
  if (fabsf(*(a1 + 956)) > 80.0)
  {
    v4 = 1.0;
  }

  if (((v4 * 0.1) + 0.3) < a3)
  {
LABEL_7:
    v5 = *(a1 + 872);
    if (!v5 || *(*(*(a1 + 840) + (((v5 + *(a1 + 864) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + *(a1 + 864) - 1) & 0x3FF)) < 90.0)
    {
LABEL_8:
      *(a1 + 963) = 256;
      v6 = *(a1 + 956) * 0.8;
      *(a1 + 956) = v6;
      --*(a1 + 952);
      if (qword_1025D4280 != -1)
      {
        sub_10187F70C();
      }

      v7 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Nixed rotationAroundZ state.", v8, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10188022C();
      }
    }
  }
}

void sub_1003F9CC0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 336);
  v5 = 0;
  v6 = 0;
  if (v4)
  {
    v6 = *(*(*(a1 + 304) + (((v4 + *(a1 + 328) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v4 + *(a1 + 328) - 1) & 0x3FF));
  }

  v7 = *(a1 + 408);
  if (v7)
  {
    v5 = *(*(*(a1 + 376) + (((v7 + *(a1 + 400) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v7 + *(a1 + 400) - 1) & 0x3FF));
  }

  v8 = *(a1 + 480);
  if (v8)
  {
    v9 = *(*(*(a1 + 448) + (((v8 + *(a1 + 472) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v8 + *(a1 + 472) - 1) & 0x3FF));
  }

  else
  {
    v9 = 0.0;
  }

  v22 = v2;
  v23 = v3;
  v18 = off_102450790;
  v19 = v6;
  v20 = v5;
  v21 = v9;
  if (fabsf(v9) > 30.0)
  {
    v10 = *(a1 + 248);
    v11 = v10 ? *(*(*(a1 + 216) + (((v10 + *(a1 + 240) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + *(a1 + 240) - 1) & 0x3FF)) : 0.0;
    if (fabsf(v11) < 0.9)
    {
      v12 = *(a1 + 104);
      v13 = *(a1 + 176);
      v14 = 0;
      v15 = 0;
      if (v12)
      {
        v15 = *(*(*(a1 + 72) + (((v12 + *(a1 + 96) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v12 + *(a1 + 96) - 1) & 0x3FF));
      }

      if (v13)
      {
        v14 = *(*(*(a1 + 144) + (((v13 + *(a1 + 168) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v13 + *(a1 + 168) - 1) & 0x3FF));
      }

      if (v10)
      {
        v16 = *(*(*(a1 + 216) + (((v10 + *(a1 + 240) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v10 + *(a1 + 240) - 1) & 0x3FF));
      }

      else
      {
        v16 = 0;
      }

      a2[2] = v15;
      a2[3] = v14;
      a2[4] = v16;
      *(a1 + 962) = 0;
      *(a1 + 980) = 1055286886;
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v17 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v18) = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Ready for orientation change via rotation", &v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101880308();
      }
    }
  }
}

uint64_t sub_1003F9F10(uint64_t result, _BYTE *a2, float a3, float a4)
{
  if (*(result + 16) == 1)
  {
    v40 = v7;
    v41 = v6;
    v42 = v4;
    v43 = v5;
    v8 = result;
    if (*(result + 336) >= *(result + 280))
    {
      v9 = *(result + 568);
      if (v9 >= *(result + 512) && *(result + 961) == 1 && *(result + 976) < (4 * (*(result + 4) / 10.0)))
      {
        v11 = 0.0;
        v12 = 0.0;
        if (v9 >= 2)
        {
          v13 = (v9 * *(result + 524)) - (*(result + 520) * *(result + 520));
          v12 = 0.0;
          if (v13 >= 0.0)
          {
            v12 = v13 / ((v9 - 1) * v9);
          }
        }

        v14 = *(result + 640);
        if (v14 >= 2)
        {
          v15 = (v14 * *(result + 596)) - (*(result + 592) * *(result + 592));
          if (v15 >= 0.0)
          {
            v11 = v15 / ((v14 - 1) * v14);
          }
        }

        v16 = *(result + 712);
        v17 = 0.0;
        if (v16 >= 2)
        {
          v18 = (v16 * *(result + 668)) - (*(result + 664) * *(result + 664));
          if (v18 >= 0.0)
          {
            v17 = v18 / ((v16 - 1) * v16);
          }
        }

        v36 = off_102450790;
        v37 = v12;
        v38 = v11;
        v39 = v17;
        if (v12 >= v11)
        {
          v11 = v12;
        }

        if (v11 >= v17)
        {
          v19 = v11;
        }

        else
        {
          v19 = v17;
        }

        if (a3 < 0.45 && (*(result + 1028) * 4.0) > a4 && v19 < 2000.0)
        {
          result = sub_1003F8AC0(result + 488, v32);
          v21 = fabsf(v33);
          v22 = fabsf(v34);
          v23 = fabsf(v35);
          if (v21 < v22)
          {
            v21 = v22;
          }

          if (v21 < v23)
          {
            v21 = v23;
          }

          if (v21 < 30.0 || (v19 < 800.0 ? (v24 = v21 < 60.0) : (v24 = 0), v24))
          {
            *a2 = 0;
            result = sub_1003F9874((v8 + 256), v28);
            v25 = fabsf(v29);
            v26 = fabsf(v30);
            v27 = fabsf(v31);
            if (v25 < v26)
            {
              v25 = v26;
            }

            if (v25 < v27)
            {
              v25 = v27;
            }

            if (*(v8 + 964) != 1 || v25 < 175.0)
            {
              *(v8 + 976) += 2;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1003FA16C(uint64_t a1, float a2, float a3)
{
  if (*(a1 + 1024) > a2)
  {
    v5 = *(a1 + 568);
    v6 = 0.0;
    v7 = 0.0;
    if (v5)
    {
      v7 = *(a1 + 520) / v5;
    }

    v8 = *(a1 + 640);
    if (v8)
    {
      v6 = *(a1 + 592) / v8;
    }

    v9 = *(a1 + 712);
    if (v9)
    {
      v10 = *(a1 + 664) / v9;
    }

    else
    {
      v10 = 0.0;
    }

    v21 = v3;
    v22 = v4;
    v17 = off_102450790;
    v18 = v7;
    v19 = v6;
    v20 = v10;
    v11 = fabsf(v10);
    v12 = fabsf(v7);
    v13 = fabsf(v6);
    if (v12 >= v13)
    {
      v13 = v12;
    }

    if (v11 >= v13)
    {
      v13 = v11;
    }

    if ((*(a1 + 952) < 2 || *(a1 + 1000) == *(a1 + 984)) && (a3 > 0.85 || v13 < 30.0))
    {
      *(a1 + 1032) = 0;
      *(a1 + 952) = 0;
      *(a1 + 960) = 0;
      sub_1003F84E4((a1 + 720));
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v15 = qword_1025D4288;
      if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Not filling Zrot buffer.", v16, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018803EC();
      }
    }
  }
}

float sub_1003FA2EC(uint64_t a1, float *a2, float *a3)
{
  *a3 = 3.4028e38;
  v5 = *(a1 + 104);
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v7 = *(a1 + 56) / v5;
  }

  v8 = *(a1 + 176);
  if (v8)
  {
    v6 = *(a1 + 128) / v8;
  }

  v9 = *(a1 + 248);
  if (v9)
  {
    v10 = *(a1 + 200) / v9;
  }

  else
  {
    v10 = 0.0;
  }

  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v10;
  v11 = ((v6 * v6) + (v7 * v7)) + (v10 * v10);
  if (v5 >= *(a1 + 48))
  {
    v12 = 0.0;
    v13 = 0.0;
    if (v5 >= 2)
    {
      v14 = (v5 * *(a1 + 60)) - (*(a1 + 56) * *(a1 + 56));
      v13 = 0.0;
      if (v14 >= 0.0)
      {
        v13 = v14 / ((v5 - 1) * v5);
      }
    }

    if (v8 >= 2)
    {
      v15 = (v8 * *(a1 + 132)) - (*(a1 + 128) * *(a1 + 128));
      if (v15 >= 0.0)
      {
        v12 = v15 / ((v8 - 1) * v8);
      }
    }

    v16 = 0.0;
    if (v9 >= 2)
    {
      v17 = (v9 * *(a1 + 204)) - (*(a1 + 200) * *(a1 + 200));
      if (v17 >= 0.0)
      {
        v16 = v17 / ((v9 - 1) * v9);
      }
    }

    v25 = v13;
    v26 = v12;
    v27 = v16;
    if (v13 >= v12)
    {
      v12 = v13;
    }

    if (v12 < v16)
    {
      v12 = v16;
    }

    *a3 = v12;
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v18 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      v19 = a2[2];
      v20 = a2[3];
      v21 = a2[4];
      v22 = *a3;
      *buf = 134219776;
      v29 = v25;
      v30 = 2048;
      v31 = v26;
      v32 = 2048;
      v33 = v27;
      v34 = 2048;
      v35 = v19;
      v36 = 2048;
      v37 = v20;
      v38 = 2048;
      v39 = v21;
      v40 = 2048;
      v41 = v22;
      v42 = 2048;
      v43 = v11;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "acc variance, %.3f, %.3f, %.3f, acc mean, %.3f, %.3f, %.3f, maxVar, %.3f, mag2,%.3f", buf, 0x52u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v24 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "float CLOrientationDetector::getAccStats(CLVector3d<float> &, float &)", "%s\n", v24);
      if (v24 != buf)
      {
        free(v24);
      }
    }
  }

  return fabsf(v11 + -1.0);
}

uint64_t sub_1003FA6C0(uint64_t a1, float *a2, float a3, float a4)
{
  *(a1 + 961) = 1;
  v14 = 1;
  v7 = 1.0;
  v8 = 1.5;
  if (*a1)
  {
    v8 = 1.0;
  }

  if ((*(a1 + 963) & 1) == 0)
  {
    if (!*a1)
    {
      v7 = 2.25;
    }

    if ((v7 * *(a1 + 1024)) <= a3 || (v8 * 0.15) <= a4)
    {
      if ((v8 * 0.3) <= a4)
      {
        goto LABEL_18;
      }

      v10 = v7 * *(a1 + 1028);
      if (v10 <= a3)
      {
        if (*(a1 + 104) < *(a1 + 48) || fabsf(a2[4]) >= 0.95 || fabsf(a2[2]) <= 0.45 && fabsf(a2[3]) <= 0.45 || v10 * 4.0 <= a3)
        {
          goto LABEL_18;
        }

        v14 = 0;
      }

      else
      {
        v14 = 0;
        if (*(a1 + 964))
        {
          goto LABEL_18;
        }
      }

      ++*(a1 + 976);
      goto LABEL_18;
    }
  }

  if ((*(a1 + 964) & 1) == 0)
  {
    *(a1 + 961) = 0;
    *(a1 + 976) = 0;
  }

  v14 = 0;
LABEL_18:
  sub_1003F9F10(a1, &v14, a4, a3);
  if (v14 == 1)
  {
    *(a1 + 976) = 0;
    if (qword_1025D4280 != -1)
    {
      sub_10187F70C();
    }

    v11 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "Resetting stable count", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018804D0();
    }
  }

  return *(a1 + 961);
}

uint64_t sub_1003FA89C(int a1, int a2, int a3, float a4)
{
  v4 = &unk_101C76948;
  v5 = 320;
  while (1)
  {
    if (*(v4 - 8) == a1 && *(v4 + 5) == a3 && (*(v4 + 4) != 1 || a2 != 0))
    {
      v7 = *(v4 - 1);
      v8 = *v4;
      if (vabds_f32(a4, v7) <= *v4)
      {
        break;
      }
    }

    v4 += 4;
    v5 -= 16;
    if (!v5)
    {
      return 0;
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F70C();
  }

  v10 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218240;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Within magic angle limits: Threshold %.4f, Delta %.4f", &v11, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018805AC(v7, v8);
  }

  return 1;
}

BOOL sub_1003FA9E8(double *a1, uint64_t a2, float a3, float a4, float a5)
{
  v7 = a1[126] - a1[121];
  v8 = 0;
  if (a3 < 0.05)
  {
    v9 = *(a2 + 20);
    if (v9 > 0.9 && v9 < 1.1)
    {
      v8 = sub_1003FA89C(*a1, v7 < 5.0, *(a1 + 1036), a4);
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F70C();
  }

  v10 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a1;
    v12 = a1[126] - a1[121];
    *buf = 67109632;
    v20 = v11;
    v21 = 1024;
    v22 = v7 < 5.0;
    v23 = 2048;
    *v24 = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Ipad %d: screenJustTurnedOn, %d, deltaTime %.5f", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v17 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLOrientationDetector::atMagicCoverRestingAngle(const float *, float, float, float)", "%s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v13 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(a1 + 962);
    *buf = 67110144;
    v20 = v7 < 5.0;
    v21 = 1024;
    v22 = 0;
    v23 = 1024;
    *v24 = v8;
    *&v24[4] = 1024;
    *&v24[6] = v14;
    v25 = 2048;
    v26 = a5;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "allowShallow, %d, magicCaseRest, %d, tiltIn, %d, wasMoving, %d, maxVar, %.5f", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v18 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLOrientationDetector::atMagicCoverRestingAngle(const float *, float, float, float)", "%s\n", v18);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if (!v8 || (*(a1 + 962) & 1) != 0 || (*(a1 + 256) * 0.025) <= a5)
  {
    result = 0;
    if (a1[124] > 0.0)
    {
      a1[124] = -1.0;
    }
  }

  else
  {
    v15 = a1[124];
    if (v15 < 0.0)
    {
      v15 = a1[126];
      a1[124] = v15;
    }

    return (*(a1 + 965) & 1) != 0 || *(a1 + 246) == 4 || a1[126] - v15 > dbl_101C76930[*a1 == 2];
  }

  return result;
}

void sub_1003FAE84(unsigned __int8 *a1)
{
  *(a1 + 250) = 0;
  v2 = *(a1 + 13);
  v3 = 0.0;
  v4 = 0.0;
  if (v2)
  {
    v4 = *(*(*(a1 + 9) + (((v2 + *(a1 + 12) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v2 + *(a1 + 12) - 1) & 0x3FF));
  }

  v5 = *(a1 + 22);
  if (v5)
  {
    v3 = *(*(*(a1 + 18) + (((v5 + *(a1 + 21) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v5 + *(a1 + 21) - 1) & 0x3FF));
  }

  v6 = *(a1 + 31);
  if (v6)
  {
    v7 = *(*(*(a1 + 27) + (((v6 + *(a1 + 30) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v6 + *(a1 + 30) - 1) & 0x3FF));
  }

  else
  {
    v7 = 0.0;
  }

  v59 = off_102450790;
  v60 = v4;
  v61 = v3;
  v62 = v7;
  v58 = 0.0;
  if (a1[965] == 1 && *(a1 + 126) > 0.0)
  {
    a1[961] = 0;
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v8 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218496;
      v91 = v60;
      v92 = 2048;
      v93 = v61;
      v94 = 2048;
      v95 = v62;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "onStartup, x, %.3f, y, %.3f, z, %.3f", buf, 0x20u);
    }

    v9 = 0.0;
    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      v63 = 134218496;
      v64 = v60;
      v65 = 2048;
      v66 = v61;
      v67 = 2048;
      v68 = v62;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationDetector::calcCurrentOrientation()", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  else
  {
    v11 = sub_1003FA2EC(a1, &v59, &v58);
    if (a1[16])
    {
      v12 = fabsf(v62);
      v9 = v58;
      if (a1[963])
      {
        sub_1003F9B5C(a1, v58, v11, v12);
        sub_1003F9CC0(a1, &v59);
      }

      else
      {
        sub_1003F9A80(a1, v58, v12);
      }
    }

    else
    {
      v9 = v58;
    }

    v13 = sub_1003FA6C0(a1, &v59, v9, v11);
    a1[961] = v13;
    if (v13)
    {
      a1[962] = 1;
      if (*(a1 + 244) < (4 * (*(a1 + 1) / 10.0)))
      {
        return;
      }
    }
  }

  v89[0] = 0;
  v14 = v60;
  v15 = v61;
  v16 = -v61;
  *&v89[1] = -v61;
  *&v89[2] = v61;
  v17 = -v60;
  *&v89[3] = -v60;
  *&v89[4] = v60;
  v18 = v62;
  v19 = -v62;
  *&v89[5] = -v62;
  *&v89[6] = v62;
  v20 = *a1;
  if (*a1)
  {
    v21 = 0.45;
    if (a1[962])
    {
      v21 = 0.5;
    }

    v22 = *(a1 + 245);
    if (v22 <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = (v22 + v21) * 0.5;
    }

    *(a1 + 245) = v23;
    v24 = 0.35;
  }

  else
  {
    v23 = 0.5;
    v24 = 0.4;
  }

  if (v15 < 0.0)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  if (v15 <= 0.0)
  {
    v26 = v16;
  }

  else
  {
    v26 = v15;
  }

  if (v14 < 0.0)
  {
    v27 = 3;
  }

  else
  {
    v27 = 4;
  }

  if (v14 <= 0.0)
  {
    v28 = v17;
  }

  else
  {
    v28 = v14;
  }

  if (v26 <= v28)
  {
    if (!a1[963] || v26 >= 0.5 || (a1[961] & 1) != 0 || v18 <= -0.85)
    {
      if (v26 <= 0.15 && v18 >= -0.8)
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 0.0;
      v24 = 0.4;
      v23 = 0.5;
    }

    if (v14 >= 0.0 && v20 >= 2 && a1[17] == 1 && sub_1003FA9E8(a1, v89, v26, v28, v9))
    {
      *(a1 + 250) = 4;
      *(a1 + 124) = 0xBFF0000000000000;
    }

    else
    {
      v32 = (v28 - v23) <= 0.0 || (v28 - v26) <= v24;
      if (v32 || *a1 < 2u && ((v28 - v23) <= 0.15 || (v35 = *(a1 + 260) + 1, *(a1 + 260) = v35, v35 < (*(a1 + 1) * 0.3))))
      {
        v29 = v23;
        goto LABEL_88;
      }

      *(a1 + 250) = v27;
    }

    v29 = v23;
    goto LABEL_117;
  }

  if (!a1[963] || (v29 = 0.5, v28 >= 0.5) || (a1[961] & 1) != 0 || v18 <= -0.85)
  {
    if (v28 <= 0.15 && v18 >= -0.8)
    {
      v28 = 0.0;
    }

    if (v20 < 2 || v15 < 0.0)
    {
      v29 = v23;
    }

    else
    {
      v24 = v24 + 0.15;
      v29 = v23 + 0.15;
    }
  }

  else
  {
    v28 = 0.0;
    v24 = 0.4;
  }

  if (v26 <= v29 || (v26 - v28) <= v24)
  {
LABEL_88:
    if (*(a1 + 250))
    {
      goto LABEL_117;
    }

    if (a1[16] == 1 && a1[963] == 1)
    {
      v33 = *(a1 + 60);
      v34 = v33 ? *(*(*(a1 + 56) + (((v33 + *(a1 + 59) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v33 + *(a1 + 59) - 1) & 0x3FF)) : 0.0;
      if (fabsf(v34) > 60.0)
      {
        goto LABEL_117;
      }
    }

    if (v26 >= v28)
    {
      v36 = v26;
    }

    else
    {
      v36 = v28;
    }

    if (v18 <= 0.0)
    {
      if (v18 >= -0.5 || (v19 - v36) <= 0.4)
      {
        goto LABEL_109;
      }

      v37 = 5;
    }

    else
    {
      if (v18 <= 0.5 || (v18 - v36) <= 0.4)
      {
        goto LABEL_109;
      }

      v37 = 6;
    }

    *(a1 + 250) = v37;
LABEL_109:
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v38 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
    {
      if (v18 <= 0.0)
      {
        v39 = v19;
      }

      else
      {
        v39 = v18;
      }

      v40 = *(a1 + 250);
      *buf = 134218496;
      v91 = v39;
      v92 = 2048;
      v93 = v36;
      v94 = 1024;
      LODWORD(v95) = v40;
      _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEBUG, "FaceUp/Down: maxWeight,%.3f, 2ndWeight,%.3f, orientation,%d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4280 != -1)
      {
        sub_10187F764();
      }

      if (v18 <= 0.0)
      {
        v55 = v19;
      }

      else
      {
        v55 = v18;
      }

      v56 = *(a1 + 250);
      v63 = 134218496;
      v64 = v55;
      v65 = 2048;
      v66 = v36;
      v67 = 1024;
      LODWORD(v68) = v56;
      v57 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationDetector::calcCurrentOrientation()", "%s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }
    }

    goto LABEL_117;
  }

  *(a1 + 250) = v25;
LABEL_117:
  a1[965] = 0;
  if ((a1[961] & 1) == 0)
  {
    a1[962] = 0;
    if (a1[16] == 1 && *a1 >= 2u)
    {
      sub_1003FA16C(a1, v9, fabsf(v62));
    }
  }

  if (qword_1025D4280 != -1)
  {
    sub_10187F764();
  }

  v41 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEBUG))
  {
    v42 = *(a1 + 250);
    v43 = a1[961];
    v44 = a1[962];
    v45 = *(a1 + 246);
    v46 = *(a1 + 244);
    v47 = *(a1 + 126);
    *buf = 134221056;
    v91 = v24;
    v92 = 2048;
    v93 = v29;
    v94 = 2048;
    v95 = v60;
    v96 = 2048;
    v97 = v61;
    v98 = 2048;
    v99 = v62;
    v100 = 2048;
    v101 = (v26 - v28);
    v102 = 2048;
    v103 = v26;
    v104 = 1024;
    v105 = v42;
    v106 = 1024;
    v107 = v43;
    v108 = 1024;
    v109 = v44;
    v110 = 1024;
    v111 = v45;
    v112 = 1024;
    v113 = v46;
    v114 = 2048;
    v115 = v47;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "deltaWeightThreshold, %.3f, tiltWeightTheshold, %.3f, currAcc, %.3f, %.3f, %.3f, deltaWeight, %.3f, tilt, %.3f, fCurrentOrientation, %d, isMoving, %d, wasMoving, %d, fLastClearOrientation, %d, fStableCount, %d, DetectionTime, %f", buf, 0x70u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4280 != -1)
    {
      sub_10187F764();
    }

    v48 = *(a1 + 250);
    v49 = a1[961];
    v50 = a1[962];
    v51 = *(a1 + 246);
    v52 = *(a1 + 244);
    v53 = *(a1 + 126);
    v63 = 134221056;
    v64 = v24;
    v65 = 2048;
    v66 = v29;
    v67 = 2048;
    v68 = v60;
    v69 = 2048;
    v70 = v61;
    v71 = 2048;
    v72 = v62;
    v73 = 2048;
    v74 = (v26 - v28);
    v75 = 2048;
    v76 = v26;
    v77 = 1024;
    v78 = v48;
    v79 = 1024;
    v80 = v49;
    v81 = 1024;
    v82 = v50;
    v83 = 1024;
    v84 = v51;
    v85 = 1024;
    v86 = v52;
    v87 = 2048;
    v88 = v53;
    v54 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLOrientationDetector::calcCurrentOrientation()", "%s\n", v54);
    if (v54 != buf)
    {
      free(v54);
    }
  }
}

BOOL sub_1003FB948(uint64_t a1, unsigned int *a2, void *a3)
{
  sub_1003FAE84(a1);
  v6 = *(a1 + 1000);
  *a2 = v6;
  if (v6)
  {
    *(a1 + 1040) = 0;
  }

  else
  {
    v6 = *(a1 + 984);
    if (v6)
    {
      v7 = v6 == 7;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v6 = 0;
    }

    else
    {
      *a2 = v6;
    }
  }

  v8 = *(a1 + 984);
  *a3 = *(a1 + 1008);
  if (v6 != v8)
  {
    if (qword_1025D4280 != -1)
    {
      sub_10187F70C();
    }

    v9 = qword_1025D4288;
    if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1003FBAF4(*(a1 + 984));
      v11 = sub_1003FBAF4(*a2);
      v14 = 136446466;
      v15 = v10;
      v16 = 2082;
      v17 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "Notify from, %{public}s -> %{public}s ", &v14, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018806C8((a1 + 984), a2);
    }

    *(a1 + 984) = *(a1 + 1000);
    *(a1 + 980) = 1055286886;
    *(a1 + 962) = 0;
    *(a1 + 1032) = 0;
    *(a1 + 952) = 0;
    *(a1 + 960) = 0;
    sub_1003F84E4((a1 + 720));
    v12 = *(a1 + 1000);
    if ((v12 - 5) < 2)
    {
      v12 = 0;
    }

    *(a1 + 1004) = v12;
  }

  return v6 != v8;
}

const char *sub_1003FBAF4(unsigned int a1)
{
  if (a1 > 6)
  {
    return "Unexpected";
  }

  else
  {
    return off_1024507D0[a1];
  }
}

void sub_1003FBB18(uint64_t a1)
{
  if (qword_1025D4280 != -1)
  {
    sub_10187F70C();
  }

  v2 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Disabling gyro.", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018807F4();
  }

  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 0;
    sub_1003F84E4((a1 + 256));
    sub_1003F84E4((a1 + 488));
    *(a1 + 1032) = 0;
    *(a1 + 952) = 0;
    *(a1 + 960) = 0;
    sub_1003F84E4((a1 + 720));
  }
}

void sub_1003FBBE4(uint64_t a1)
{
  if (qword_1025D4280 != -1)
  {
    sub_10187F70C();
  }

  v2 = qword_1025D4288;
  if (os_log_type_enabled(qword_1025D4288, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "Enabling gyro.", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018808D0();
  }

  *(a1 + 1016) = 0xBFF0000000000000;
  *(a1 + 16) = 1;
}

void sub_1003FBCD0(int a1@<W8>, double a2@<D0>, float a3@<S1>)
{
  *(v4 - 80) = a3;
  *(v3 + 4) = a2;
  *(v4 - 68) = 1024;
  *(v3 + 14) = a1;
}

uint64_t sub_1003FBD0C(unsigned int a1)
{
  if (a1 > 4)
  {
    return 25;
  }

  else
  {
    return qword_101C76AB0[a1];
  }
}

void *sub_1003FBFF0(void *a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_1003FC0D0(a1, "VO2MaxRetrocomputeBodyMetricsHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102450888;
  a1[9] = off_102450938;
  sub_1003FCA90(a1);
  return a1;
}

uint64_t sub_1003FC0D0(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102450C98;
  sub_1003FFA38((a1 + 8));
  *v12 = &off_102450CC8;
  *a1 = off_102450BA0;
  *(a1 + 72) = off_102450C48;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_102450BA0;
  *(a1 + 72) = off_102450C48;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 4;
  *(a1 + 252) = 0;
  *(a1 + 244) = 0;
  *(a1 + 264) = 12000;
  *(a1 + 272) = off_102450C98;
  sub_1003FFA38((a1 + 280));
  *(a1 + 280) = &off_102450CC8;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
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

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_1003FC4BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_1003FFD68(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_1003FC564(void *a1)
{
  *a1 = off_102450BA0;
  v2 = (a1 + 9);
  a1[9] = off_102450C48;
  sub_1003FFE14(a1, 0, 0);
  a1[34] = off_102450C98;
  sub_1003FFCFC(a1 + 35);
  sub_1003FFD68(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102450C98;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1003FC640(void *a1)
{
  sub_1003FC564(a1);

  operator delete();
}

void sub_1003FC678(uint64_t a1)
{
  sub_1003FC564((a1 - 72));

  operator delete();
}

uint64_t sub_1003FC6DC(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "DELETE FROM VO2MaxRetrocomputeBodyMetricsHistory WHERE algorithmVersion = ?");
  }

  return result;
}

void sub_1003FC8D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FC91C(uint64_t a1)
{
  if (sub_100099160(a1 + 72))
  {
    sub_1000388D8(*(a1 + 80), "SELECT * FROM VO2MaxRetrocomputeBodyMetricsHistory WHERE algorithmVersion = ? LIMIT 1");
  }

  return 109;
}

void sub_1003FCA78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FCA90(uint64_t a1)
{
  result = sub_100023B68(*(a1 + 80));
  if (result)
  {
    sub_10026A908(a1);
    v3 = *(a1 + 80);

    return sub_100608EC8(v3, "VO2MaxRetrocomputeBodyMetricsHistory", &off_102450A10, &off_1025D5618, 0);
  }

  return result;
}

uint64_t sub_1003FCB00(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_1000388D8(*(a1 + 80), "DELETE FROM VO2MaxRetrocomputeBodyMetricsHistory");
  }

  return result;
}

void sub_1003FCBB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003FCBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100400510(v6, a3);
  sub_10040017C(a1 + 8, a2, v6);
  return sub_1003FFC7C(v6);
}

void sub_1003FCC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003FFC7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FCC78(void *a1, void *a2)
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
      sub_101880AE8();
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
        sub_101880AE8();
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
        sub_101880AE8();
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

void sub_1003FD2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  sub_10026C504(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FD328(void *a1)
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
      sub_101880AE8();
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
        sub_101880AE8();
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
        sub_101880AE8();
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

void sub_1003FD994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FDA1C(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_1004005A8(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_101880BF4();
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
      sub_101880AE8();
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
      sub_101880B10(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<VO2MaxRetrocomputeBodyMetrics, CLActivityDB::ClassBDataProtectionPolicy>::setDatabaseAccessible() [T = VO2MaxRetrocomputeBodyMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_1003FE0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1003FE144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

id *sub_1003FE158(uint64_t a1, __int128 *a2, char a3)
{
  v32[0] = os_transaction_create();
  v32[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v32);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v27 = 0;
  v28 = 0.0;
  v29 = 4;
  v31 = 0;
  v30 = 0;
  v6 = (*(*a1 + 104))(a1, &v27);
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
        sub_101880AE8();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101880B10(buf);
        LOWORD(v33) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeBodyMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeBodyMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 1);
    v8 = v28;
    v9 = v7 - v28;
    if (v7 - v28 < 0.0)
    {
      v9 = -(v7 - v28);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101880AE8();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 1);
        *buf = 134349312;
        v38 = v28;
        v39 = 2050;
        v40 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101880B10(buf);
        v22 = *(a2 + 1);
        v33 = 134349312;
        v34 = v28;
        v35 = 2050;
        v36 = v22;
        v23 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeBodyMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeBodyMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 1);
      v8 = v28;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101880AE8();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 1);
          *buf = 134217984;
          v38 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101880B10(buf);
          v24 = *(a2 + 1);
          v33 = 134217984;
          v34 = v24;
          v25 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeBodyMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeBodyMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v25);
          if (v25 != buf)
          {
            free(v25);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101880AE8();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v38 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101880B10(buf);
        v33 = 134217984;
        v34 = v17;
        v26 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<VO2MaxRetrocomputeBodyMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = VO2MaxRetrocomputeBodyMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v26);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, &v27, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *a2;
  v20 = a2[1];
  *(a1 + 256) = *(a2 + 8);
  *(a1 + 224) = v19;
  *(a1 + 240) = v20;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v32);
}

void sub_1003FE894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FE8C8(void *a1, uint64_t a2)
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
      sub_101880AE8();
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
        sub_101880AE8();
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
        sub_101880AE8();
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

void sub_1003FEE28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FEE7C(void *a1)
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
      sub_101880AE8();
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
        sub_101880AE8();
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
        sub_101880AE8();
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

void sub_1003FF39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1003FF3F0(void *a1)
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
      sub_101880AE8();
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
        sub_101880AE8();
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
        sub_101880AE8();
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

void sub_1003FF8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

void *sub_1003FF990(void *a1)
{
  *a1 = off_102450C98;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1003FF9D4(void *a1)
{
  *a1 = off_102450C98;
  sub_1003FFCFC(a1 + 1);

  operator delete();
}

void *sub_1003FFA38(void *a1)
{
  *a1 = &off_102450D10;
  a1[1] = 0;
  a1[5] = 0;
  v2 = a1 + 6;
  sub_100536F74(a1 + 6, "BasicDataProtectionPolicy", 0, 1);
  (*(*v2 + 16))(v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_1003FFBA4, @"com.apple.mobile.keybagd.lock_status", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  (*(*v2 + 24))(v2);
  return a1;
}

void sub_1003FFB34(_Unwind_Exception *a1)
{
  sub_10053700C(v2);
  sub_1003FFC7C(v1 + 16);
  _Unwind_Resume(a1);
}

void sub_1003FFB6C(void *a1)
{
  sub_1003FFCFC(a1);

  operator delete();
}

void sub_1003FFBA4(uint64_t a1, void *a2)
{
  v3 = MKBGetDeviceLockState();
  if (a2[5])
  {
    v4 = a2[1];
    if (v4)
    {
      if (sub_1003FFC20((a2 + 2), v4, v3 == 0))
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

        CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a2, @"com.apple.mobile.keybagd.lock_status", 0);
      }
    }
  }
}

uint64_t sub_1003FFC20(uint64_t a1, uint64_t a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1003FFC7C(uint64_t a1)
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

void *sub_1003FFCFC(void *a1)
{
  *a1 = &off_102450D10;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.mobile.keybagd.lock_status", 0);
  sub_10053700C(a1 + 6);
  sub_1003FFC7C((a1 + 2));
  return a1;
}

uint64_t sub_1003FFD68(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 51;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 102;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_1003FFE14(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_101880BF4();
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
    sub_101880D98(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101880AE8();
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
      sub_101880EEC(a1);
    }
  }

  *(a1 + 344) = a2;
  v10 = *(a1 + 352);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 352) = _Block_copy(a3);
  }
}

__n128 sub_100400060@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_1004000C0@<X0>(char *__s@<X1>, const void **a2@<X0>, void **a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = sub_100070148(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t sub_10040017C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 48;
  (*(*(a1 + 48) + 16))(a1 + 48);
  *(v5 - 40) = a2;
  sub_100400238((v5 - 32), a3);
  return (*(*v5 + 24))(v5);
}

void sub_100400224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void *sub_100400238(void *a1, uint64_t a2)
{
  sub_100400510(v4, a2);
  sub_1004002AC(v4, a1);
  sub_1003FFC7C(v4);
  return a1;
}

void *sub_1004002AC(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100400504(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100400510(uint64_t a1, uint64_t a2)
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

void sub_100400624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100400670(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_100400700(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1004007D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_102450D70;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x40D5180000000000;
  v3 = (a1 + 32);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  sub_10001CAF4(buf);
  sub_1000B9370(*buf, "CleanupInterval", v3);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_1007A98FC();
}

void sub_100400CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  v28 = v25[9];
  v25[9] = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = v25[8];
  v25[8] = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v30 = v25[7];
  v25[7] = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = v25[6];
  v25[6] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  v32 = *v26;
  *v26 = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_100400E40(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018810AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCoarseCellTilesManager::onClientNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018810C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCoarseCellTilesManager::onClientNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100C21584(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10040101C(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018810AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCoarseCellTilesManager::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018810C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCoarseCellTilesManager::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100C20F98(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1004011F8(uint64_t a1, int *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018810AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCoarseCellTilesManager::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018810C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCoarseCellTilesManager::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100C21C70(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1004013D4(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018810AC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCoarseCellTilesManager::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018810C0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCoarseCellTilesManager::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100C213F4(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1004015BC(uint64_t a1)
{
  *a1 = off_102450D70;
  [*(a1 + 24) invalidate];

  *(a1 + 24) = 0;
  v2 = *(a1 + 80);
  if (v2)
  {

    *(a1 + 80) = 0;
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  return a1;
}

void sub_100401718(uint64_t a1)
{
  sub_1004015BC(a1);

  operator delete();
}

uint64_t sub_100401754()
{
  sub_10001A3E8();

  return sub_10001CF3C();
}

id sub_10040179C(void *a1)
{
  v2 = a1[10];
  if (!v2)
  {
    v3 = [CLTileDownloadSchedulingClient alloc];
    v4 = a1[1];
    if (v4)
    {
      v5 = v4 + 112;
    }

    else
    {
      v5 = 0;
    }

    v2 = [(CLTileDownloadSchedulingClient *)v3 initWithUniverse:a1[2] andDelegate:v5];
    a1[10] = v2;
  }

  return [(CLTileDownloadSchedulingClient *)v2 scheduleTileDownloadIfNecessary];
}

id sub_1004017F8(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 16) "vendor")];
  v2 = [NSString stringWithUTF8String:"CoarseCellTilesManager"];

  return [v1 resetNotificationConsumedForIdentifier:v2];
}

uint64_t sub_100401954(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = a4[1];
  v39 = *a4;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  v37 = *a5;
  v38 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  v35 = *a6;
  v36 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34[0] = xmmword_102656288;
  v34[1] = unk_102656298;
  v34[2] = xmmword_1026562A8;
  sub_100C72EC8(a1, a2, 9, &v39, &v37, &v35, a8, a7, v34);
  if (v36)
  {
    sub_100008080(v36);
  }

  if (v38)
  {
    sub_100008080(v38);
  }

  if (v40)
  {
    sub_100008080(v40);
  }

  *a1 = off_102450E20;
  *(a1 + 352) = *a3;
  v14 = a3[1];
  *(a1 + 360) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 400) = 0;
  v15 = (a1 + 440);
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 432) = a1 + 440;
  *(a1 + 464) = 0;
  sub_10001CAF4(v34);
  v16 = sub_1000B9370(*&v34[0], "PoiHarvestScanInterval", (a1 + 392));
  if (*(&v34[0] + 1))
  {
    sub_100008080(*(&v34[0] + 1));
  }

  if ((v16 & 1) == 0)
  {
    *(a1 + 392) = 0x4014000000000000;
  }

  *(a1 + 368) = [*(a1 + 72) classifyingStoreForHarvester:9];
  *(a1 + 456) = objc_opt_new();
  *(a1 + 416) = objc_opt_new();
  *(a1 + 408) = objc_opt_new();
  *(a1 + 472) = objc_opt_new();
  *(a1 + 424) = objc_opt_new();
  *(a1 + 384) = [[CLAbsoluteAltitudeSubHarvesterPoiClientLocal alloc] initWithElevationSubscription:a1];
  v17 = [objc_msgSend(a2 "vendor")];
  *(a1 + 376) = v17;
  [v17 registerDelegate:*(a1 + 384) inSilo:{objc_msgSend(a2, "silo")}];
  [*(a1 + 376) setDelegateEntityName:"CLHarvestController"];
  [*(a1 + 376) registerClient:*(a1 + 384) forNotification:1];
  v34[0] = 0uLL;
  sub_10001CAF4(&v33);
  v18 = sub_1000B9370(v33, "PoiHarvestPassbookBefore", v34);
  if (*(&v33 + 1))
  {
    sub_100008080(*(&v33 + 1));
  }

  if ((v18 & 1) == 0)
  {
    *&v34[0] = 0x403E000000000000;
  }

  sub_10001CAF4(&v33);
  v19 = sub_1000B9370(v33, "PoiHarvestPassbookAfter", v34 + 8);
  if (*(&v33 + 1))
  {
    sub_100008080(*(&v33 + 1));
  }

  if ((v19 & 1) == 0)
  {
    *(&v34[0] + 1) = 0x403E000000000000;
  }

  if (*v34 < 0.0)
  {
    sub_101881514(&v33, *v34);
LABEL_53:
    result = abort_report_np();
LABEL_57:
    __break(1u);
    return result;
  }

  if (*(v34 + 1) < 0.0)
  {
    sub_1018813B0(&v33, *(v34 + 1));
    goto LABEL_53;
  }

  LODWORD(v31) = 1;
  *&v33 = &v31;
  v20 = sub_100403DD0(a1 + 432, &v31);
  *(v20 + 5) = v34[0];
  v33 = 0uLL;
  sub_10001CAF4(&v31);
  v21 = sub_1000B9370(v31, "PoiHarvestVisitBefore", &v33);
  if (v32)
  {
    sub_100008080(v32);
  }

  if ((v21 & 1) == 0)
  {
    *&v33 = 0x403E000000000000;
  }

  sub_10001CAF4(&v31);
  v22 = sub_1000B9370(v31, "PoiHarvestVisitAfter", &v33 + 8);
  if (v32)
  {
    sub_100008080(v32);
  }

  if ((v22 & 1) == 0)
  {
    *(&v33 + 1) = 0x4066800000000000;
  }

  if (*&v33 < 0.0)
  {
    sub_10188124C(&v31, *&v33);
LABEL_56:
    result = abort_report_np();
    goto LABEL_57;
  }

  if (*(&v33 + 1) < 0.0)
  {
    sub_1018810E8(&v31, *(&v33 + 1));
    goto LABEL_56;
  }

  v30 = 2;
  v31 = &v30;
  v23 = sub_100403DD0(a1 + 432, &v30);
  *(v23 + 5) = v33;
  v24 = *(a1 + 432);
  if (v24 != v15)
  {
    v25 = *(a1 + 464);
    do
    {
      if (v25 <= v24[5])
      {
        v25 = v24[5];
      }

      v26 = *(v24 + 1);
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = *(v24 + 2);
          v28 = *v27 == v24;
          v24 = v27;
        }

        while (!v28);
      }

      v24 = v27;
    }

    while (v27 != v15);
    *(a1 + 464) = v25;
  }

  return a1;
}

void sub_100401E20(_Unwind_Exception *a1)
{
  sub_1003C93BC(v1 + 432, *(v1 + 440));
  v3 = *(v1 + 360);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_100401ED8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100401ED8(uint64_t a1)
{
  *a1 = off_1024A2A08;
  v2 = *(a1 + 240);
  if (v2)
  {
    *(a1 + 248) = v2;
    operator delete(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    sub_100008080(v5);
  }

  return a1;
}

uint64_t sub_100401F70(uint64_t a1)
{
  *a1 = off_102450E20;

  *(a1 + 472) = 0;
  *(a1 + 408) = 0;

  *(a1 + 416) = 0;
  *(a1 + 424) = 0;

  *(a1 + 456) = 0;
  *(a1 + 376) = 0;

  *(a1 + 384) = 0;
  sub_1003C93BC(a1 + 432, *(a1 + 440));
  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_100401ED8(a1);
}

void sub_100402034(uint64_t a1)
{
  sub_100401F70(a1);

  operator delete();
}

id sub_10040206C(uint64_t a1)
{
  if (qword_1025D47D0 != -1)
  {
    sub_101881678();
  }

  v2 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2050;
    v8 = 9;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:shutdown, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v4, 0x1Cu);
  }

  return [*(a1 + 472) removeAllObjects];
}

uint64_t sub_100402150(uint64_t a1, uint64_t a2)
{
  sub_10004FD18(v11);
  v4 = (a1 + 280);
  v5 = unk_102656298;
  *v4 = xmmword_102656288;
  v4[1] = v5;
  *(v4 + 25) = unk_1026562A1;
  if (sub_100185ADC(a2, "Poi", v11))
  {
    sub_1010FCEEC(v4, v11);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1002E8D80();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    sub_1010FCB7C(__p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = 9;
    v18 = 2081;
    v19 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:harvest-apply-rules, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, rules:%{private, location:escape_only}s}", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100005DA4(v11);
}

void sub_1004022C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005DA4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004022E8(uint64_t a1)
{
  if (((*(**(a1 + 56) + 72))(*(a1 + 56)) & 2) != 0)
  {
    return ((*(**(a1 + 56) + 72))(*(a1 + 56)) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100402368(uint64_t a1)
{
  v9 = objc_alloc_init(CLPPoiCollectionRequest);
  [v9 setMeta:{+[CLPMeta meta](CLPMeta, "meta")}];
  v2 = [*(a1 + 368) homeArchive];
  if ([v2 count])
  {
    [v2 overwritePrimaryObject:v9];
    v3 = [[CLHUploadRequest alloc] initWithArchive:v2];
    -[CLHUploadRequest setEndpoint:](v3, "setEndpoint:", [objc_msgSend(*(a1 + 80) "endpointSelector")]);
    [*(a1 + 80) submitRequest:v3];
  }

  v4 = [*(a1 + 368) workArchive];
  if ([v4 count])
  {
    [v4 overwritePrimaryObject:v9];
    v5 = [[CLHUploadRequest alloc] initWithArchive:v4];
    -[CLHUploadRequest setEndpoint:](v5, "setEndpoint:", [objc_msgSend(*(a1 + 80) "endpointSelector")]);
    [*(a1 + 80) submitRequest:v5];
  }

  v6 = [*(a1 + 368) mainArchive];
  if ([v6 count])
  {
    [v6 overwritePrimaryObject:v9];
    v7 = [[CLHUploadRequest alloc] initWithArchive:v6];
    -[CLHUploadRequest setEndpoint:](v7, "setEndpoint:", [objc_msgSend(*(a1 + 80) "endpointSelector")]);
    [*(a1 + 80) submitRequest:v7];
  }

  return _objc_release_x1();
}

BOOL sub_1004024F0(uint64_t a1)
{
  v1 = [*(a1 + 456) count];
  if (v1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101881678();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2050;
      v8 = 9;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:not ready to upload: still has active transactions., subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v4, 0x1Cu);
    }
  }

  return v1 == 0;
}

void sub_1004025E4(uint64_t a1, void *a2)
{
  [*(a1 + 368) writeSecondaryObject:a2 collectedAt:objc_msgSend(objc_msgSend(a2 toField:{"locations"), "firstObject"), 2}];
  ++*(a1 + 208);
  if (qword_1025D47D0 != -1)
  {
    sub_101881678();
  }

  v4 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289539;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2050;
    v9 = 9;
    v10 = 2113;
    v11 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:persisting poi harvest, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvest:%{private, location:escape_only}@}", v5, 0x26u);
  }
}

uint64_t sub_100402708(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 24))(v2, v3, 7);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  (*(*v4 + 24))(v4, v5, 6);
  v6 = *(a1 + 56);
  v7 = sub_1000183C0(a1);
  (*(*v6 + 24))(v6, v7, 1);
  v8 = *(a1 + 56);
  v9 = sub_1000183C0(a1);
  (*(*v8 + 24))(v8, v9, 8);
  return 1;
}

uint64_t sub_100402818(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 32))(v2, v3, 7);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  (*(*v4 + 32))(v4, v5, 6);
  v6 = *(a1 + 56);
  v7 = sub_1000183C0(a1);
  (*(*v6 + 32))(v6, v7, 1);
  v8 = *(a1 + 56);
  v9 = sub_1000183C0(a1);
  v10 = *(*v8 + 32);

  return v10(v8, v9, 8);
}

id sub_100402938(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v3 = v2 - (*(*a1 + 192))(a1);
  v4 = *(a1 + 368);

  return [v4 pruneSecondaryDataOlderThan:v3];
}

void sub_1004029D8(uint64_t a1)
{
  v2 = sub_100244E28(a1);
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = *(a1 + 424);
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 timestamp];
        if (v10 < v2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v25 count:16];
    }

    while (v6);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1002E8D80();
  }

  v11 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 count];
    *buf = 68289539;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = 9;
    v23 = 2049;
    v24 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Pruning altitudes, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, prunedAltitudeCount:%{private}lu}", buf, 0x26u);
  }

  [*(a1 + 424) removeObjectsInArray:v3];
}

void sub_100402BAC(uint64_t a1, void *a2)
{
  if ([a2 triggerType])
  {
    v50 = [a2 triggerType];
    *buf = &v50;
    v4 = sub_100403DD0(a1 + 432, &v50);
    v5 = *(v4 + 5);
    v6 = *(v4 + 6);
    [a2 triggerTimestamp];
    v8 = v7 - v5;
    [a2 triggerTimestamp];
    v10 = v6 + v9;
    v40 = objc_alloc_init(CLPPoiHarvest);
    [v40 setTriggerEvent:a2];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v39 = a1;
    v11 = *(a1 + 416);
    v12 = [v11 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = v12;
    v14 = *v47;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v46 + 1) + 8 * v15);
        [v16 timestamp];
        if (v17 >= v8 && ([v16 timestamp], v18 <= v10))
        {
          [v40 addLocations:v16];
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v22 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            v52 = 2082;
            v53 = "";
            v54 = 2050;
            v55 = 9;
            v20 = v22;
            v21 = "{msg%{public}.0s:adding location within start/end range to harvest, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
            goto LABEL_17;
          }
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v19 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289282;
            *&buf[4] = 0;
            v52 = 2082;
            v53 = "";
            v54 = 2050;
            v55 = 9;
            v20 = v19;
            v21 = "{msg%{public}.0s:skipping location outside start/end range, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_17:
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0x1Cu);
          }
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (!v13)
      {
LABEL_20:
        v23 = *(v39 + 408);
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_100403220;
        v45[3] = &unk_102450F20;
        *&v45[5] = v8;
        *&v45[6] = v10;
        v45[4] = v40;
        [v23 enumerateKeysAndObjectsUsingBlock:v45];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v24 = *(v39 + 424);
        v25 = [v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
        if (!v25)
        {
          goto LABEL_38;
        }

        v26 = v25;
        v27 = *v42;
        while (1)
        {
          v28 = 0;
          do
          {
            if (*v42 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v41 + 1) + 8 * v28);
            [v29 timestamp];
            if (v30 >= v8 && ([v29 timestamp], v31 <= v10))
            {
              [v40 addAbsoluteAltitudes:v29];
              if (qword_1025D47D0 != -1)
              {
                sub_1002E8D80();
              }

              v35 = qword_1025D47D8;
              if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 68289282;
                *&buf[4] = 0;
                v52 = 2082;
                v53 = "";
                v54 = 2050;
                v55 = 9;
                v33 = v35;
                v34 = "{msg%{public}.0s:adding altitude within start/end range to harvest, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
                goto LABEL_35;
              }
            }

            else
            {
              if (qword_1025D47D0 != -1)
              {
                sub_1002E8D80();
              }

              v32 = qword_1025D47D8;
              if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 68289282;
                *&buf[4] = 0;
                v52 = 2082;
                v53 = "";
                v54 = 2050;
                v55 = 9;
                v33 = v32;
                v34 = "{msg%{public}.0s:skipping altitude outside start/end range, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_35:
                _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, v34, buf, 0x1Cu);
              }
            }

            v28 = v28 + 1;
          }

          while (v26 != v28);
          v26 = [v24 countByEnumeratingWithState:&v41 objects:v58 count:16];
          if (!v26)
          {
LABEL_38:
            if (qword_1025D47D0 != -1)
            {
              sub_1002E8D80();
            }

            v36 = qword_1025D47D8;
            if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68289539;
              *&buf[4] = 0;
              v52 = 2082;
              v53 = "";
              v54 = 2050;
              v55 = 9;
              v56 = 2113;
              v57 = v40;
              _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvest-Collect, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, harvestData:%{private, location:escape_only}@}", buf, 0x26u);
            }

            sub_1004025E4(v39, v40);

            return;
          }
        }
      }
    }
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101881678();
  }

  v37 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v52 = 2082;
    v53 = "";
    v54 = 2050;
    v55 = 9;
    _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Found a trigger transaction of type None, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
    if (qword_1025D47D0 != -1)
    {
      sub_1002E8D80();
    }
  }

  v38 = qword_1025D47D8;
  if (os_signpost_enabled(qword_1025D47D8))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v52 = 2082;
    v53 = "";
    v54 = 2050;
    v55 = 9;
    _os_signpost_emit_with_name_impl(dword_100000000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Found a trigger transaction of type None", "{msg%{public}.0s:Found a trigger transaction of type None, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
  }
}

void sub_100403220(uint64_t a1, void *a2, void *a3)
{
  [a2 doubleValue];
  if (v6 >= *(a1 + 40) && ([a2 doubleValue], v7 <= *(a1 + 48)))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v9)
    {
      v11 = v9;
      v12 = *v17;
      *&v10 = 68289282;
      v15 = v10;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(a3);
          }

          [*(a1 + 32) addAccessPoints:{*(*(&v16 + 1) + 8 * v13), v15}];
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v14 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v15;
            v21 = 0;
            v22 = 2082;
            v23 = "";
            v24 = 2050;
            v25 = 9;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:adding wifi within start/end range to harvest, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [a3 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v11);
    }
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101881678();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2050;
      v25 = 9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:skipping location outside start/end range, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
    }
  }
}

uint64_t sub_100403470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ++*(a1 + 204);
  v10 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v11 = objc_alloc_init(CLPPoiTriggerEvent);
  [v11 setTriggerTimestamp:v10];
  [v11 setTriggerType:a2];
  [v11 setTriggerSubType:a3];
  [v11 setMuid:a4];
  [v11 setProviderIdentifier:a5];
  [*(a1 + 456) addObject:v11];

  if (qword_1025D47D0 != -1)
  {
    sub_101881678();
  }

  v12 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 68289539;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = 9;
    v23 = 2113;
    v24 = v11;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:registered trigger event, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, triggerEvent:%{private, location:escape_only}@}", &v17, 0x26u);
    if (qword_1025D47D0 != -1)
    {
      sub_1002E8D80();
    }
  }

  v13 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 68289282;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = 9;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:starting wifi scan, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v17, 0x1Cu);
  }

  v14 = *(a1 + 352);
  v15 = sub_100244E28(a1);
  return (*(*v14 + 16))(v14, v10 - v15);
}

void sub_1004036C0(uint64_t a1, int a2, uint64_t *a3)
{
  if (!a2)
  {
    v5 = *a3;
    v4 = a3[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (sub_1002DCBD4(v5) && (sub_100050B40(v5) & 1) != 0)
    {
      v6 = sub_100743BF0(v5);
      v7 = sub_1003C7890(v5);
      sub_100403470(a1, 1, 1, v6, v7);
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101881678();
      }

      v8 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        v9[0] = 68289282;
        v9[1] = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2050;
        v13 = 9;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:ignoring PassKit payment trigger without MUID data, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v9, 0x1Cu);
      }
    }

    if (v4)
    {
      sub_100008080(v4);
    }
  }
}

void sub_100403830(uint64_t a1, void *a2, void *a3)
{
  if (!a3 || [a3 type])
  {
    [a2 coordinate];
    v19 = v6;
    v20 = v7;
    if (qword_1025D47D0 != -1)
    {
      sub_101881678();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1;
      v10 = LocationLogEncryptionDataSize();
      v11 = LocationLogEncryptionEncryptData();
      v12 = LocationLogEncryptionDataSize();
      v13 = LocationLogEncryptionEncryptData();
      [a2 horizontalAccuracy];
      *buf = 68291331;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2050;
      v26 = 9;
      v27 = 1040;
      v28 = v10;
      a1 = v9;
      v29 = 2098;
      v30 = v11;
      v31 = 1040;
      v32 = v12;
      v33 = 2098;
      v34 = v13;
      v35 = 2050;
      v36 = v14;
      v37 = 2113;
      v38 = [a2 arrivalDate];
      v39 = 2113;
      v40 = [a2 departureDate];
      v41 = 2117;
      v42 = [a2 _placeInference];
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:received leeched visit notification, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, visit.coordinate.latitude:%{public, location:Encrypted_latitude}.*P, visit.coordinate.longitude:%{public, location:Encrypted_longitude}.*P, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@}", buf, 0x64u);
    }

    v15 = [a3 mapItem];
    if ([v15 validMUID])
    {
      if ([a2 hasDepartureDate])
      {
        if (qword_1025D47D0 != -1)
        {
          sub_1002E8D80();
        }

        v16 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
        {
          *buf = 68289282;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          v25 = 2050;
          v26 = 9;
          v17 = "{msg%{public}.0s:ignoring non-arrival visit, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_17:
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, v17, buf, 0x1Cu);
        }
      }

      else
      {
        v18 = [v15 source];
        sub_100403470(a1, 2, v18 & 1 | (((v18 >> 1) & 1) << 7) | (v18 >> 1) & 0xE | (v18 >> 2) & 0x70 | (v18 >> 1) & 0x7F00, [v15 muid], objc_msgSend(v15, "resultProviderID"));
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_1002E8D80();
      }

      v16 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289282;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2050;
        v26 = 9;
        v17 = "{msg%{public}.0s:ignoring Visit trigger without MUID data, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
        goto LABEL_17;
      }
    }
  }
}

void sub_100403B90(uint64_t a1, void *a2)
{
  v4 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  [a2 timestamp];
  if (v4 - v5 <= *(a1 + 464))
  {
    [a2 accuracy];
    if (v6 >= 0.0)
    {
      v8 = objc_alloc_init(CLPCMAbsoluteAltitude);
      [a2 timestamp];
      [v8 setTimestamp:?];
      [a2 altitude];
      [v8 setAltitude:?];
      [a2 accuracy];
      [v8 setAccuracy:?];
      [a2 precision];
      [v8 setPrecision:?];
      [a2 filteredPressure];
      [v8 setFilteredPressure:?];
      [v8 setStatusInfo:{objc_msgSend(a2, "statusInfo")}];
      [*(a1 + 424) addObject:v8];

      sub_1002448F8(a1);
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101881678();
      }

      v7 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 68289282;
        v9[1] = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2050;
        v13 = 9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ignoring invalid altitude, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v9, 0x1Cu);
      }
    }
  }
}

uint64_t *sub_100403DD0(uint64_t a1, int *a2)
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

void *sub_100403EFC(void *result, uint64_t a2)
{
  *result = off_102450F88;
  result[1] = a2;
  result[2] = 0;
  return result;
}

id sub_100403F20(uint64_t a1, double a2)
{
  v4 = 0;
  v34 = 0;
  v35 = 0;
  v5 = 1;
  v36 = 0;
  do
  {
    if (v4 >= v36)
    {
      v6 = v34;
      v7 = v4 - v34;
      v8 = v4 - v34;
      v9 = v8 + 1;
      if ((v8 + 1) >> 62)
      {
        sub_10028C64C();
      }

      v10 = v36 - v34;
      if ((v36 - v34) >> 1 > v9)
      {
        v9 = v10 >> 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        sub_1000B85D0(&v34, v11);
      }

      v12 = v8;
      v13 = (4 * v8);
      v14 = &v13[-v12];
      *v13 = v5;
      v4 = v13 + 1;
      memcpy(v14, v6, v7);
      v15 = v34;
      v34 = v14;
      v35 = v4;
      v36 = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v4++ = v5;
    }

    v35 = v4;
    ++v5;
  }

  while (v5 != 14);
  v27 = 0;
  v28 = 0;
  v26 = 0;
  sub_10038EB38(&v26, v34, v4, v4 - v34);
  v25 = 10;
  strcpy(__p, "poiharvest");
  sub_100E43E00(v29, 2, 2, 0, &v26, 110, a2, 1, 0, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  v16 = [objc_msgSend(*(a1 + 8) "vendor")];
  sub_1002D98B4(v19, v29);
  v17 = [v16 syncgetStartScanWithParameters:sub_1004041C8(v19)];
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v17;
}

void sub_10040415C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    operator delete(a30);
  }

  v35 = *(v33 - 104);
  if (v35)
  {
    *(v33 - 96) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

id sub_1004041C8(uint64_t *a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_10040436C;
  v3[3] = &unk_102450FC8;
  sub_1002D98B4(&v4, a1);
  v1 = [v3 copy];
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return v1;
}

void *sub_100404284(void *a1)
{
  *a1 = off_102450F88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    sub_101365C08();
    operator delete();
  }

  return a1;
}

void sub_1004042E8(void *a1)
{
  *a1 = off_102450F88;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    sub_101365C08();
    operator delete();
  }

  operator delete();
}

void sub_100404384(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;

    operator delete(v2);
  }
}

uint64_t sub_1004043DC()
{
  if (qword_102636B60)
  {
    (*(*qword_102636B60 + 8))(qword_102636B60);
  }

  if (qword_102636B68)
  {
    (*(*qword_102636B68 + 8))(qword_102636B68);
  }

  if (qword_102636B70)
  {
    (*(*qword_102636B70 + 8))(qword_102636B70);
  }

  if (qword_102636B78)
  {
    (*(*qword_102636B78 + 8))(qword_102636B78);
  }

  if (qword_102636B80)
  {
    (*(*qword_102636B80 + 8))(qword_102636B80);
  }

  if (qword_102636B88)
  {
    (*(*qword_102636B88 + 8))(qword_102636B88);
  }

  if (qword_102636B90)
  {
    (*(*qword_102636B90 + 8))(qword_102636B90);
  }

  if (qword_102636B98)
  {
    (*(*qword_102636B98 + 8))(qword_102636B98);
  }

  if (qword_102636BA0)
  {
    (*(*qword_102636BA0 + 8))(qword_102636BA0);
  }

  if (qword_102636BA8)
  {
    (*(*qword_102636BA8 + 8))(qword_102636BA8);
  }

  if (qword_102636BB0)
  {
    (*(*qword_102636BB0 + 8))(qword_102636BB0);
  }

  if (qword_102636BB8)
  {
    (*(*qword_102636BB8 + 8))(qword_102636BB8);
  }

  if (qword_102636BC0)
  {
    (*(*qword_102636BC0 + 8))(qword_102636BC0);
  }

  if (qword_102636BC8)
  {
    (*(*qword_102636BC8 + 8))(qword_102636BC8);
  }

  if (qword_102636BD0)
  {
    (*(*qword_102636BD0 + 8))(qword_102636BD0);
  }

  if (qword_102636BD8)
  {
    (*(*qword_102636BD8 + 8))(qword_102636BD8);
  }

  if (qword_102636BE0)
  {
    (*(*qword_102636BE0 + 8))(qword_102636BE0);
  }

  if (qword_102636BE8)
  {
    (*(*qword_102636BE8 + 8))(qword_102636BE8);
  }

  result = qword_102636BF0;
  if (qword_102636BF0)
  {
    v1 = *(*qword_102636BF0 + 8);

    return v1();
  }

  return result;
}

void sub_100404794(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_1026562B8 & 1) == 0)
  {
    byte_1026562B8 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/CLPRavenOutput.pb.cc", a4);
    operator new();
  }
}

double sub_1004050FC(uint64_t a1)
{
  *a1 = off_102451008;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_100405130(uint64_t result)
{
  v1 = result;
  v2 = qword_102636B88;
  if (!qword_102636B88)
  {
    result = sub_100404794();
    v2 = qword_102636B88;
  }

  v1[1] = v2;
  v3 = qword_102636B90;
  if (!qword_102636B90)
  {
    result = sub_100404794();
    v3 = qword_102636B90;
  }

  v1[2] = v3;
  v4 = qword_102636BA8;
  if (!qword_102636BA8)
  {
    result = sub_100404794();
    v4 = qword_102636BA8;
  }

  v1[3] = v4;
  v5 = qword_102636B98;
  if (!qword_102636B98)
  {
    result = sub_100404794();
    v5 = qword_102636B98;
  }

  v1[4] = v5;
  v6 = qword_102636BA0;
  if (!qword_102636BA0)
  {
    result = sub_100404794();
    v6 = qword_102636BA0;
  }

  v1[5] = v6;
  v7 = qword_102636B80;
  if (!qword_102636B80)
  {
    result = sub_100404794();
    v7 = qword_102636B80;
  }

  v1[6] = v7;
  return result;
}

uint64_t sub_1004051E0(uint64_t result)
{
  v1 = result;
  v2 = qword_102636B68;
  if (qword_102636B68)
  {
    *(result + 8) = qword_102636B68;
LABEL_4:
    v1[2] = v2;
LABEL_5:
    v1[3] = v2;
    goto LABEL_6;
  }

  result = (sub_100404794)();
  v2 = qword_102636B68;
  v1[1] = qword_102636B68;
  if (v2)
  {
    goto LABEL_4;
  }

  result = sub_100404794(result);
  v2 = qword_102636B68;
  v1[2] = qword_102636B68;
  if (v2)
  {
    goto LABEL_5;
  }

  result = sub_100404794(result);
  v2 = qword_102636B68;
  v1[3] = qword_102636B68;
  if (!v2)
  {
    result = sub_100404794(result);
    v2 = qword_102636B68;
  }

LABEL_6:
  v1[4] = v2;
  return result;
}

uint64_t sub_10040525C(uint64_t result)
{
  v1 = result;
  v2 = qword_102636B70;
  if (!qword_102636B70)
  {
    result = sub_100404794(result);
    v2 = qword_102636B70;
  }

  v1[1] = v2;
  v3 = qword_102636BB0;
  if (!qword_102636BB0)
  {
    result = sub_100404794(result);
    v3 = qword_102636BB0;
  }

  v1[2] = v3;
  v4 = qword_102636BB8;
  if (!qword_102636BB8)
  {
    result = sub_100404794(result);
    v4 = qword_102636BB8;
  }

  v1[3] = v4;
  v5 = qword_102636BC0;
  if (!qword_102636BC0)
  {
    result = sub_100404794(result);
    v5 = qword_102636BC0;
  }

  v1[4] = v5;
  v6 = qword_102636BC8;
  if (!qword_102636BC8)
  {
    result = sub_100404794(result);
    v6 = qword_102636BC8;
  }

  v1[5] = v6;
  v7 = qword_102636BD0;
  if (!qword_102636BD0)
  {
    result = sub_100404794(result);
    v7 = qword_102636BD0;
  }

  v1[6] = v7;
  v8 = qword_102636BD8;
  if (!qword_102636BD8)
  {
    result = sub_100404794(result);
    v8 = qword_102636BD8;
  }

  v1[7] = v8;
  v9 = qword_102636BE0;
  if (!qword_102636BE0)
  {
    result = sub_100404794(result);
    v9 = qword_102636BE0;
  }

  v1[8] = v9;
  v10 = qword_102636BE8;
  if (!qword_102636BE8)
  {
    result = sub_100404794(result);
    v10 = qword_102636BE8;
  }

  v1[9] = v10;
  v11 = qword_102636BF0;
  if (!qword_102636BF0)
  {
    result = sub_100404794(result);
    v11 = qword_102636BF0;
  }

  v1[10] = v11;
  return result;
}

void sub_10040536C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
  }

  LOBYTE(v4) = *(a2 + 60);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 60))
  {
    *(a1 + 60) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636B60 + 8);
    }

    sub_100406B20(v5, v6);
    v4 = *(a2 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 60) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 60) |= 2u;
  v7 = *(a1 + 16);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 16);
  if (!v8)
  {
    v8 = *(qword_102636B60 + 16);
  }

  sub_100406EB4(v7, v8);
  v4 = *(a2 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    *(a1 + 60) |= 8u;
    v11 = *(a1 + 32);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 32);
    if (!v12)
    {
      v12 = *(qword_102636B60 + 32);
    }

    sub_1004079B4(v11, v12);
    v4 = *(a2 + 60);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_21:
  *(a1 + 60) |= 4u;
  v9 = *(a1 + 24);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 24);
  if (!v10)
  {
    v10 = *(qword_102636B60 + 24);
  }

  sub_1004073B0(v9, v10);
  v4 = *(a2 + 60);
  if ((v4 & 8) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v4 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_31:
  *(a1 + 60) |= 0x10u;
  v13 = *(a1 + 40);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 40);
  if (!v14)
  {
    v14 = *(qword_102636B60 + 40);
  }

  sub_100407D34(v13, v14);
  if ((*(a2 + 60) & 0x20) != 0)
  {
LABEL_36:
    *(a1 + 60) |= 0x20u;
    v15 = *(a1 + 48);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 48);
    if (!v16)
    {
      v16 = *(qword_102636B60 + 48);
    }

    sub_100407FAC(v15, v16);
  }
}

void sub_1004057B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_1004057C8(void *result)
{
  if (qword_102636B60 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[6];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

void sub_100405918(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451008;
  sub_1004057C8(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10040596C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451008;
  sub_1004057C8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1004059D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102636B60;
  if (!qword_102636B60)
  {
    sub_100404794(0, a2, a3, a4);
    return qword_102636B60;
  }

  return result;
}

uint64_t sub_100405A60(uint64_t result)
{
  v1 = result;
  LOBYTE(v2) = *(result + 60);
  if (v2)
  {
    if (*(result + 60))
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100405B00(result);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_100405BA4(result);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_100405C4C(result);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100405D48(result);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_100405DCC(result);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_100405E34(result);
      }
    }
  }

  *(v1 + 60) = 0;
  return result;
}

uint64_t sub_100405B00(uint64_t a1)
{
  v2 = *(a1 + 292);
  if (v2)
  {
    if (v2)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        sub_100408B60(v3);
        v2 = *(a1 + 292);
      }
    }

    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(a1 + 160) = 0u;
    *(a1 + 176) = 0u;
  }

  sub_1003C79DC(a1 + 112);
  sub_1003C79DC(a1 + 136);
  sub_1003C79DC(a1 + 192);
  sub_1003C79DC(a1 + 216);
  sub_1003C79DC(a1 + 240);
  result = sub_1003C79DC(a1 + 264);
  *(a1 + 292) = 0;
  return result;
}

uint64_t sub_100405BA4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 228);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 228);
      }
    }

    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 136) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 112) = 0;
    *(v1 + 120) = 0;
    *(v1 + 128) = 0;
    *(v1 + 144) = 0u;
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 140) = 0;
    *(v1 + 184) = 0u;
    *(v1 + 200) = 0u;
    *(v1 + 216) = 0;
  }

  *(v1 + 228) = 0;
  return result;
}

uint64_t sub_100405C4C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 92);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 2) != 0)
    {
      result = *(v1 + 16);
      if (result)
      {
        result = sub_10040FA88(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 4) != 0)
    {
      result = *(v1 + 24);
      if (result)
      {
        result = sub_10040FAE8(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 8) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_10040FB58(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_10040FBB8(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 48);
      if (result)
      {
        result = sub_10040FC18(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_10040FC88(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_10040FCE8(result);
        v2 = *(v1 + 92);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 72);
      if (result)
      {
        result = sub_10040FD48(result);
        v2 = *(v1 + 92);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_10040FDA8(result);
      }
    }
  }

  *(v1 + 92) = 0;
  return result;
}

uint64_t sub_100405D48(uint64_t result)
{
  v1 = result;
  v2 = *(result + 160);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 160);
      }
    }

    *(v1 + 152) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 104) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 136) = 0u;
    *(v1 + 120) = 0u;
  }

  *(v1 + 160) = 0;
  return result;
}

uint64_t sub_100405DCC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 96);
  if (v2)
  {
    if (v2)
    {
      result = *(result + 8);
      if (result)
      {
        result = sub_100408B60(result);
        v2 = *(v1 + 96);
      }
    }

    *(v1 + 88) = 0;
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 72) = 0u;
    *(v1 + 56) = 0u;
  }

  *(v1 + 96) = 0;
  return result;
}

uint64_t sub_100405E34(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    if (v2)
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        sub_100408B60(v3);
        v2 = *(a1 + 168);
      }
    }

    *(a1 + 44) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  if ((v2 & 0x3FC00) != 0)
  {
    *(a1 + 60) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    *(a1 + 160) = 0;
  }

  sub_1003C79DC(a1 + 64);
  sub_1003C79DC(a1 + 88);
  result = sub_1003C79DC(a1 + 112);
  *(a1 + 168) = 0;
  return result;
}

uint64_t sub_100405EB4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(this + 1);
          if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            *(this + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = TagFallback;
            *(this + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_68;
            }

            goto LABEL_28;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_28;
            }

LABEL_82:
            *(a1 + 60) |= 0x10u;
            v46 = *(a1 + 40);
            if (!v46)
            {
              operator new();
            }

            v64 = 0;
            v47 = *(this + 1);
            if (v47 >= *(this + 2) || *v47 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
              {
                return 0;
              }
            }

            else
            {
              v64 = *v47;
              *(this + 1) = v47 + 1;
            }

            v48 = *(this + 14);
            v49 = *(this + 15);
            *(this + 14) = v48 + 1;
            if (v48 >= v49)
            {
              return 0;
            }

            v50 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
            if (!sub_10040EDF4(v46, this, v51) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v50);
            v52 = *(this + 14);
            v16 = __OFSUB__(v52, 1);
            v53 = v52 - 1;
            if (v53 < 0 == v16)
            {
              *(this + 14) = v53;
            }

            v54 = *(this + 1);
            if (v54 < *(this + 2) && *v54 == 50)
            {
              *(this + 1) = v54 + 1;
              goto LABEL_96;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_28;
            }

LABEL_96:
            *(a1 + 60) |= 0x20u;
            v55 = *(a1 + 48);
            if (!v55)
            {
              operator new();
            }

            v64 = 0;
            v56 = *(this + 1);
            if (v56 >= *(this + 2) || *v56 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
              {
                return 0;
              }
            }

            else
            {
              v64 = *v56;
              *(this + 1) = v56 + 1;
            }

            v57 = *(this + 14);
            v58 = *(this + 15);
            *(this + 14) = v57 + 1;
            if (v57 >= v58)
            {
              return 0;
            }

            v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
            if (!sub_100409C60(v55, this, v60) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
            v61 = *(this + 14);
            v16 = __OFSUB__(v61, 1);
            v62 = v61 - 1;
            if (v62 < 0 == v16)
            {
              *(this + 14) = v62;
            }

            if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_28;
        }

        *(a1 + 60) |= 1u;
        v9 = *(a1 + 8);
        if (!v9)
        {
          operator new();
        }

        v64 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
          {
            return 0;
          }
        }

        else
        {
          v64 = *v10;
          *(this + 1) = v10 + 1;
        }

        v11 = *(this + 14);
        v12 = *(this + 15);
        *(this + 14) = v11 + 1;
        if (v11 >= v12)
        {
          return 0;
        }

        v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
        if (!sub_10040AE14(v9, this, v14) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
        v15 = *(this + 14);
        v16 = __OFSUB__(v15, 1);
        v17 = v15 - 1;
        if (v17 < 0 == v16)
        {
          *(this + 14) = v17;
        }

        v18 = *(this + 1);
        if (v18 < *(this + 2) && *v18 == 18)
        {
          *(this + 1) = v18 + 1;
          goto LABEL_40;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_28;
      }

LABEL_40:
      *(a1 + 60) |= 2u;
      v19 = *(a1 + 16);
      if (!v19)
      {
        operator new();
      }

      v64 = 0;
      v20 = *(this + 1);
      if (v20 >= *(this + 2) || *v20 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
        {
          return 0;
        }
      }

      else
      {
        v64 = *v20;
        *(this + 1) = v20 + 1;
      }

      v21 = *(this + 14);
      v22 = *(this + 15);
      *(this + 14) = v21 + 1;
      if (v21 >= v22)
      {
        return 0;
      }

      v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
      if (!sub_10040C8F8(v19, this, v24) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
      v25 = *(this + 14);
      v16 = __OFSUB__(v25, 1);
      v26 = v25 - 1;
      if (v26 < 0 == v16)
      {
        *(this + 14) = v26;
      }

      v27 = *(this + 1);
      if (v27 < *(this + 2) && *v27 == 26)
      {
        *(this + 1) = v27 + 1;
LABEL_54:
        *(a1 + 60) |= 4u;
        v28 = *(a1 + 24);
        if (!v28)
        {
          operator new();
        }

        v64 = 0;
        v29 = *(this + 1);
        if (v29 >= *(this + 2) || *v29 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
          {
            return 0;
          }
        }

        else
        {
          v64 = *v29;
          *(this + 1) = v29 + 1;
        }

        v30 = *(this + 14);
        v31 = *(this + 15);
        *(this + 14) = v30 + 1;
        if (v30 >= v31)
        {
          return 0;
        }

        v32 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
        if (!sub_10040FDF0(v28, this, v33) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v32);
        v34 = *(this + 14);
        v16 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v16)
        {
          *(this + 14) = v35;
        }

        v36 = *(this + 1);
        if (v36 < *(this + 2) && *v36 == 34)
        {
          *(this + 1) = v36 + 1;
LABEL_68:
          *(a1 + 60) |= 8u;
          v37 = *(a1 + 32);
          if (!v37)
          {
            operator new();
          }

          v64 = 0;
          v38 = *(this + 1);
          if (v38 >= *(this + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v64))
            {
              return 0;
            }
          }

          else
          {
            v64 = *v38;
            *(this + 1) = v38 + 1;
          }

          v39 = *(this + 14);
          v40 = *(this + 15);
          *(this + 14) = v39 + 1;
          if (v39 >= v40)
          {
            return 0;
          }

          v41 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v64);
          if (!sub_10040DF4C(v37, this, v42) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v41);
          v43 = *(this + 14);
          v16 = __OFSUB__(v43, 1);
          v44 = v43 - 1;
          if (v44 < 0 == v16)
          {
            *(this + 14) = v44;
          }

          v45 = *(this + 1);
          if (v45 < *(this + 2) && *v45 == 42)
          {
            *(this + 1) = v45 + 1;
            goto LABEL_82;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_54;
    }

LABEL_28:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100406754(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636B60 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636B60 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636B60 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636B60 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_20:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102636B60 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  if ((*(v5 + 60) & 0x20) != 0)
  {
LABEL_23:
    v12 = *(v5 + 48);
    if (!v12)
    {
      v12 = *(qword_102636B60 + 48);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  }

  return result;
}

uint64_t sub_100406894(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_47;
  }

  if ((*(a1 + 60) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 60) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102636B60 + 8);
  }

  v6 = sub_10040C31C(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 60);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102636B60 + 16);
    }

    v10 = sub_10040DA80(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 60);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102636B60 + 24);
    }

    v14 = sub_100410C7C(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 60);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_102636B60 + 32);
  }

  v18 = sub_10040EAAC(v17, a2);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 60);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

LABEL_35:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_102636B60 + 40);
  }

  v22 = sub_10040F5BC(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  if ((*(a1 + 60) & 0x20) != 0)
  {
LABEL_41:
    v25 = *(a1 + 48);
    if (!v25)
    {
      v25 = *(qword_102636B60 + 48);
    }

    v26 = sub_10040A904(v25, a2);
    v28 = v26;
    if (v26 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, v27);
    }

    else
    {
      v29 = 1;
    }

    v4 = (v4 + v28 + v29 + 1);
  }

LABEL_47:
  *(a1 + 56) = v4;
  return v4;
}

void sub_100406A98(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10040536C(a1, lpsrc);
}

double sub_100406B20(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  sub_100417B10((a1 + 112), a2 + 112);
  sub_100417B10((a1 + 136), a2 + 136);
  sub_100417B10((a1 + 192), a2 + 192);
  sub_100417B10((a1 + 216), a2 + 216);
  sub_100417B10((a1 + 240), a2 + 240);
  sub_100417B10((a1 + 264), a2 + 264);
  v5 = *(a2 + 292);
  if (!v5)
  {
    goto LABEL_22;
  }

  if (v5)
  {
    *(a1 + 292) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636B88 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 292);
  }

  if ((v5 & 2) != 0)
  {
    v8 = *(a2 + 16);
    if (v8 >= 7)
    {
      sub_10188168C();
    }

    *(a1 + 292) |= 2u;
    *(a1 + 16) = v8;
    v5 = *(a2 + 292);
  }

  if ((v5 & 4) != 0)
  {
    v9 = *(a2 + 20);
    if (v9 >= 4)
    {
      sub_1018816B8();
    }

    *(a1 + 292) |= 4u;
    *(a1 + 20) = v9;
    v5 = *(a2 + 292);
  }

  if ((v5 & 8) != 0)
  {
    result = *(a2 + 24);
    *(a1 + 292) |= 8u;
    *(a1 + 24) = result;
    v5 = *(a2 + 292);
    if ((v5 & 0x10) == 0)
    {
LABEL_18:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_19;
      }

LABEL_49:
      v12 = *(a2 + 40);
      *(a1 + 292) |= 0x20u;
      *(a1 + 40) = v12;
      v5 = *(a2 + 292);
      if ((v5 & 0x40) == 0)
      {
LABEL_20:
        if ((v5 & 0x80) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_18;
  }

  result = *(a2 + 32);
  *(a1 + 292) |= 0x10u;
  *(a1 + 32) = result;
  v5 = *(a2 + 292);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_19:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_50:
  v13 = *(a2 + 48);
  *(a1 + 292) |= 0x40u;
  *(a1 + 48) = v13;
  v5 = *(a2 + 292);
  if ((v5 & 0x80) != 0)
  {
LABEL_21:
    v10 = *(a2 + 56);
    *(a1 + 292) |= 0x80u;
    *(a1 + 56) = v10;
    v5 = *(a2 + 292);
  }

LABEL_22:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_30;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 64);
    *(a1 + 292) |= 0x100u;
    *(a1 + 64) = result;
    v5 = *(a2 + 292);
    if ((v5 & 0x200) == 0)
    {
LABEL_25:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  result = *(a2 + 72);
  *(a1 + 292) |= 0x200u;
  *(a1 + 72) = result;
  v5 = *(a2 + 292);
  if ((v5 & 0x400) == 0)
  {
LABEL_26:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = *(a2 + 80);
  *(a1 + 292) |= 0x400u;
  *(a1 + 80) = result;
  v5 = *(a2 + 292);
  if ((v5 & 0x800) == 0)
  {
LABEL_27:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = *(a2 + 88);
  *(a1 + 292) |= 0x800u;
  *(a1 + 88) = result;
  v5 = *(a2 + 292);
  if ((v5 & 0x1000) == 0)
  {
LABEL_28:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_41:
  result = *(a2 + 96);
  *(a1 + 292) |= 0x1000u;
  *(a1 + 96) = result;
  v5 = *(a2 + 292);
  if ((v5 & 0x2000) != 0)
  {
LABEL_29:
    result = *(a2 + 104);
    *(a1 + 292) |= 0x2000u;
    *(a1 + 104) = result;
    v5 = *(a2 + 292);
  }

LABEL_30:
  if ((v5 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = *(a2 + 160);
    *(a1 + 292) |= 0x10000u;
    *(a1 + 160) = result;
    v5 = *(a2 + 292);
    if ((v5 & 0x20000) == 0)
    {
LABEL_33:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_33;
  }

  result = *(a2 + 168);
  *(a1 + 292) |= 0x20000u;
  *(a1 + 168) = result;
  v5 = *(a2 + 292);
  if ((v5 & 0x40000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_35;
  }

LABEL_45:
  result = *(a2 + 176);
  *(a1 + 292) |= 0x40000u;
  *(a1 + 176) = result;
  if ((*(a2 + 292) & 0x80000) != 0)
  {
LABEL_35:
    v11 = *(a2 + 184);
    *(a1 + 292) |= 0x80000u;
    *(a1 + 184) = v11;
  }

  return result;
}

void sub_100406E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100406EB4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v36);
  }

  v4 = *(a2 + 228);
  if (!v4)
  {
    goto LABEL_29;
  }

  if (v4)
  {
    *(a1 + 228) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636B90 + 8);
    }

    sub_1004086D8(v5, v6);
    v4 = *(a2 + 228);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 24);
    if (v7 >= 0xA)
    {
      sub_1018816E4();
    }

    *(a1 + 228) |= 2u;
    *(a1 + 24) = v7;
    v4 = *(a2 + 228);
  }

  if ((v4 & 4) != 0)
  {
    v8 = *(a2 + 16);
    *(a1 + 228) |= 4u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 228);
  }

  if ((v4 & 8) != 0)
  {
    v9 = *(a2 + 28);
    if (v9 >= 4)
    {
      sub_101881710();
    }

    *(a1 + 228) |= 8u;
    *(a1 + 28) = v9;
    v4 = *(a2 + 228);
  }

  if ((v4 & 0x10) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v11 = *(a2 + 40);
    *(a1 + 228) |= 0x20u;
    *(a1 + 40) = v11;
    v4 = *(a2 + 228);
    if ((v4 & 0x40) == 0)
    {
LABEL_21:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v10 = *(a2 + 32);
  *(a1 + 228) |= 0x10u;
  *(a1 + 32) = v10;
  v4 = *(a2 + 228);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_25:
  v12 = *(a2 + 48);
  if (v12 >= 0xA)
  {
    sub_10188173C();
  }

  *(a1 + 228) |= 0x40u;
  *(a1 + 48) = v12;
  v4 = *(a2 + 228);
  if ((v4 & 0x80) != 0)
  {
LABEL_27:
    v13 = *(a2 + 52);
    if (v13 >= 4)
    {
      sub_101881768();
    }

    *(a1 + 228) |= 0x80u;
    *(a1 + 52) = v13;
    v4 = *(a2 + 228);
  }

LABEL_29:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v4 & 0x100) != 0)
  {
    v14 = *(a2 + 136);
    if (v14 >= 3)
    {
      sub_101881794();
    }

    *(a1 + 228) |= 0x100u;
    *(a1 + 136) = v14;
    v4 = *(a2 + 228);
  }

  if ((v4 & 0x200) != 0)
  {
    v24 = *(a2 + 56);
    *(a1 + 228) |= 0x200u;
    *(a1 + 56) = v24;
    v4 = *(a2 + 228);
    if ((v4 & 0x400) == 0)
    {
LABEL_35:
      if ((v4 & 0x800) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_69;
    }
  }

  else if ((v4 & 0x400) == 0)
  {
    goto LABEL_35;
  }

  v25 = *(a2 + 64);
  *(a1 + 228) |= 0x400u;
  *(a1 + 64) = v25;
  v4 = *(a2 + 228);
  if ((v4 & 0x800) == 0)
  {
LABEL_36:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_70;
  }

LABEL_69:
  v26 = *(a2 + 72);
  *(a1 + 228) |= 0x800u;
  *(a1 + 72) = v26;
  v4 = *(a2 + 228);
  if ((v4 & 0x1000) == 0)
  {
LABEL_37:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_71;
  }

LABEL_70:
  v27 = *(a2 + 80);
  *(a1 + 228) |= 0x1000u;
  *(a1 + 80) = v27;
  v4 = *(a2 + 228);
  if ((v4 & 0x2000) == 0)
  {
LABEL_38:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_72;
  }

LABEL_71:
  v28 = *(a2 + 88);
  *(a1 + 228) |= 0x2000u;
  *(a1 + 88) = v28;
  v4 = *(a2 + 228);
  if ((v4 & 0x4000) == 0)
  {
LABEL_39:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_72:
  v29 = *(a2 + 96);
  *(a1 + 228) |= 0x4000u;
  *(a1 + 96) = v29;
  v4 = *(a2 + 228);
  if ((v4 & 0x8000) != 0)
  {
LABEL_40:
    v15 = *(a2 + 104);
    *(a1 + 228) |= 0x8000u;
    *(a1 + 104) = v15;
    v4 = *(a2 + 228);
  }

LABEL_41:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_51;
  }

  if ((v4 & 0x10000) != 0)
  {
    v17 = *(a2 + 112);
    *(a1 + 228) |= 0x10000u;
    *(a1 + 112) = v17;
    v4 = *(a2 + 228);
    if ((v4 & 0x20000) == 0)
    {
LABEL_44:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_44;
  }

  v18 = *(a2 + 120);
  *(a1 + 228) |= 0x20000u;
  *(a1 + 120) = v18;
  v4 = *(a2 + 228);
  if ((v4 & 0x40000) == 0)
  {
LABEL_45:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_62;
  }

LABEL_61:
  v19 = *(a2 + 128);
  *(a1 + 228) |= 0x40000u;
  *(a1 + 128) = v19;
  v4 = *(a2 + 228);
  if ((v4 & 0x80000) == 0)
  {
LABEL_46:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_63;
  }

LABEL_62:
  v20 = *(a2 + 144);
  *(a1 + 228) |= 0x80000u;
  *(a1 + 144) = v20;
  v4 = *(a2 + 228);
  if ((v4 & 0x100000) == 0)
  {
LABEL_47:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_64;
  }

LABEL_63:
  v21 = *(a2 + 152);
  *(a1 + 228) |= 0x100000u;
  *(a1 + 152) = v21;
  v4 = *(a2 + 228);
  if ((v4 & 0x200000) == 0)
  {
LABEL_48:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_65;
  }

LABEL_64:
  v22 = *(a2 + 160);
  *(a1 + 228) |= 0x200000u;
  *(a1 + 160) = v22;
  v4 = *(a2 + 228);
  if ((v4 & 0x400000) == 0)
  {
LABEL_49:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_65:
  v23 = *(a2 + 168);
  *(a1 + 228) |= 0x400000u;
  *(a1 + 168) = v23;
  v4 = *(a2 + 228);
  if ((v4 & 0x800000) != 0)
  {
LABEL_50:
    v16 = *(a2 + 176);
    *(a1 + 228) |= 0x800000u;
    *(a1 + 176) = v16;
    v4 = *(a2 + 228);
  }

LABEL_51:
  if (!HIBYTE(v4))
  {
    return;
  }

  if ((v4 & 0x1000000) != 0)
  {
    v30 = *(a2 + 184);
    *(a1 + 228) |= 0x1000000u;
    *(a1 + 184) = v30;
    v4 = *(a2 + 228);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_54:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_76;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_54;
  }

  v31 = *(a2 + 192);
  *(a1 + 228) |= 0x2000000u;
  *(a1 + 192) = v31;
  v4 = *(a2 + 228);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_55:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_77;
  }

LABEL_76:
  v32 = *(a2 + 200);
  *(a1 + 228) |= 0x4000000u;
  *(a1 + 200) = v32;
  v4 = *(a2 + 228);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_56:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_78:
    v34 = *(a2 + 216);
    *(a1 + 228) |= 0x10000000u;
    *(a1 + 216) = v34;
    if ((*(a2 + 228) & 0x20000000) == 0)
    {
      return;
    }

    goto LABEL_79;
  }

LABEL_77:
  v33 = *(a2 + 208);
  *(a1 + 228) |= 0x8000000u;
  *(a1 + 208) = v33;
  v4 = *(a2 + 228);
  if ((v4 & 0x10000000) != 0)
  {
    goto LABEL_78;
  }

LABEL_57:
  if ((v4 & 0x20000000) == 0)
  {
    return;
  }

LABEL_79:
  v35 = *(a2 + 140);
  if (v35 >= 8)
  {
    sub_1018817C0();
  }

  *(a1 + 228) |= 0x20000000u;
  *(a1 + 140) = v35;
}

void sub_100407398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_1004073B0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
  }

  v5 = *(a2 + 92);
  if (!v5)
  {
    goto LABEL_53;
  }

  if (v5)
  {
    *(a1 + 92) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BA8 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 92);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(a1 + 92) |= 2u;
  v8 = *(a1 + 16);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 16);
  if (!v9)
  {
    v9 = *(qword_102636BA8 + 16);
  }

  result = sub_10041103C(v8, v9);
  v5 = *(a2 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(a1 + 92) |= 4u;
  v10 = *(a1 + 24);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 24);
  if (!v11)
  {
    v11 = *(qword_102636BA8 + 24);
  }

  result = sub_10041126C(v10, v11);
  v5 = *(a2 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(a1 + 92) |= 8u;
  v12 = *(a1 + 32);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 32);
  if (!v13)
  {
    v13 = *(qword_102636BA8 + 32);
  }

  result = sub_100411544(v12, v13);
  v5 = *(a2 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(a1 + 92) |= 0x20u;
    v16 = *(a1 + 48);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 48);
    if (!v17)
    {
      v17 = *(qword_102636BA8 + 48);
    }

    result = sub_1004119A4(v16, v17);
    v5 = *(a2 + 92);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_33:
  *(a1 + 92) |= 0x10u;
  v14 = *(a1 + 40);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 40);
  if (!v15)
  {
    v15 = *(qword_102636BA8 + 40);
  }

  result = sub_100411774(v14, v15);
  v5 = *(a2 + 92);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  *(a1 + 92) |= 0x40u;
  v18 = *(a1 + 56);
  if (!v18)
  {
    operator new();
  }

  v19 = *(a2 + 56);
  if (!v19)
  {
    v19 = *(qword_102636BA8 + 56);
  }

  result = sub_100411C7C(v18, v19);
  v5 = *(a2 + 92);
  if ((v5 & 0x80) != 0)
  {
LABEL_48:
    *(a1 + 92) |= 0x80u;
    v20 = *(a1 + 64);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 64);
    if (!v21)
    {
      v21 = *(qword_102636BA8 + 64);
    }

    result = sub_100411EAC(v20, v21);
    v5 = *(a2 + 92);
  }

LABEL_53:
  if ((v5 & 0xFF00) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(a1 + 92) |= 0x100u;
      v22 = *(a1 + 72);
      if (!v22)
      {
        operator new();
      }

      v23 = *(a2 + 72);
      if (!v23)
      {
        v23 = *(qword_102636BA8 + 72);
      }

      result = sub_1004120DC(v22, v23);
      v5 = *(a2 + 92);
    }

    if ((v5 & 0x200) != 0)
    {
      *(a1 + 92) |= 0x200u;
      v24 = *(a1 + 80);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 80);
      if (!v25)
      {
        v25 = *(qword_102636BA8 + 80);
      }

      return sub_10041230C(v24, v25);
    }
  }

  return result;
}

void sub_10040799C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_1004079B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 160);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 160) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636B98 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 160);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  result = *(a2 + 16);
  *(a1 + 160) |= 2u;
  *(a1 + 16) = result;
  v5 = *(a2 + 160);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = *(a2 + 24);
  *(a1 + 160) |= 4u;
  *(a1 + 24) = result;
  v5 = *(a2 + 160);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = *(a2 + 32);
  *(a1 + 160) |= 8u;
  *(a1 + 32) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    v9 = *(a2 + 153);
    *(a1 + 160) |= 0x20u;
    *(a1 + 153) = v9;
    v5 = *(a2 + 160);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_38:
  v8 = *(a2 + 152);
  *(a1 + 160) |= 0x10u;
  *(a1 + 152) = v8;
  v5 = *(a2 + 160);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_40:
  result = *(a2 + 40);
  *(a1 + 160) |= 0x40u;
  *(a1 + 40) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 48);
    *(a1 + 160) |= 0x80u;
    *(a1 + 48) = result;
    v5 = *(a2 + 160);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 56);
    *(a1 + 160) |= 0x100u;
    *(a1 + 56) = result;
    v5 = *(a2 + 160);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_44;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 64);
  *(a1 + 160) |= 0x200u;
  *(a1 + 64) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = *(a2 + 72);
  *(a1 + 160) |= 0x400u;
  *(a1 + 72) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = *(a2 + 80);
  *(a1 + 160) |= 0x800u;
  *(a1 + 80) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = *(a2 + 88);
  *(a1 + 160) |= 0x1000u;
  *(a1 + 88) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = *(a2 + 96);
  *(a1 + 160) |= 0x2000u;
  *(a1 + 96) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x4000) == 0)
  {
LABEL_21:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_48:
  result = *(a2 + 104);
  *(a1 + 160) |= 0x4000u;
  *(a1 + 104) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x8000) != 0)
  {
LABEL_22:
    result = *(a2 + 112);
    *(a1 + 160) |= 0x8000u;
    *(a1 + 112) = result;
    v5 = *(a2 + 160);
  }

LABEL_23:
  if ((v5 & 0xFF0000) == 0)
  {
    return result;
  }

  if ((v5 & 0x10000) != 0)
  {
    result = *(a2 + 120);
    *(a1 + 160) |= 0x10000u;
    *(a1 + 120) = result;
    v5 = *(a2 + 160);
    if ((v5 & 0x20000) == 0)
    {
LABEL_26:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  result = *(a2 + 128);
  *(a1 + 160) |= 0x20000u;
  *(a1 + 128) = result;
  v5 = *(a2 + 160);
  if ((v5 & 0x40000) == 0)
  {
LABEL_27:
    if ((v5 & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_28;
  }

LABEL_52:
  result = *(a2 + 136);
  *(a1 + 160) |= 0x40000u;
  *(a1 + 136) = result;
  if ((*(a2 + 160) & 0x80000) == 0)
  {
    return result;
  }

LABEL_28:
  result = *(a2 + 144);
  *(a1 + 160) |= 0x80000u;
  *(a1 + 144) = result;
  return result;
}

void sub_100407D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100407D34(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v5 = *(a2 + 96);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    *(a1 + 96) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_102636BA0 + 8);
    }

    result = sub_1004086D8(v6, v7);
    v5 = *(a2 + 96);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 88);
  *(a1 + 96) |= 2u;
  *(a1 + 88) = v8;
  v5 = *(a2 + 96);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  v9 = *(a2 + 89);
  *(a1 + 96) |= 4u;
  *(a1 + 89) = v9;
  v5 = *(a2 + 96);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = *(a2 + 16);
  *(a1 + 96) |= 8u;
  *(a1 + 16) = result;
  v5 = *(a2 + 96);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_29:
    result = *(a2 + 32);
    *(a1 + 96) |= 0x20u;
    *(a1 + 32) = result;
    v5 = *(a2 + 96);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_28:
  result = *(a2 + 24);
  *(a1 + 96) |= 0x10u;
  *(a1 + 24) = result;
  v5 = *(a2 + 96);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_30:
  result = *(a2 + 40);
  *(a1 + 96) |= 0x40u;
  *(a1 + 40) = result;
  v5 = *(a2 + 96);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    result = *(a2 + 48);
    *(a1 + 96) |= 0x80u;
    *(a1 + 48) = result;
    v5 = *(a2 + 96);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    result = *(a2 + 56);
    *(a1 + 96) |= 0x100u;
    *(a1 + 56) = result;
    v5 = *(a2 + 96);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  result = *(a2 + 64);
  *(a1 + 96) |= 0x200u;
  *(a1 + 64) = result;
  v5 = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

LABEL_34:
  result = *(a2 + 72);
  *(a1 + 96) |= 0x400u;
  *(a1 + 72) = result;
  if ((*(a2 + 96) & 0x800) == 0)
  {
    return result;
  }

LABEL_18:
  result = *(a2 + 80);
  *(a1 + 96) |= 0x800u;
  *(a1 + 80) = result;
  return result;
}

void sub_100407F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100407FAC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  sub_100417B10((a1 + 64), a2 + 64);
  sub_100417B10((a1 + 88), a2 + 88);
  sub_100417B10((a1 + 112), a2 + 112);
  v4 = *(a2 + 168);
  if (!v4)
  {
    goto LABEL_19;
  }

  if (v4)
  {
    *(a1 + 168) |= 1u;
    v5 = *(a1 + 8);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 8);
    if (!v6)
    {
      v6 = *(qword_102636B80 + 8);
    }

    sub_1004086D8(v5, v6);
    v4 = *(a2 + 168);
  }

  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 56);
    if (v7 >= 4)
    {
      sub_1018817EC();
    }

    *(a1 + 168) |= 2u;
    *(a1 + 56) = v7;
    v4 = *(a2 + 168);
  }

  if ((v4 & 4) != 0)
  {
    v14 = *(a2 + 16);
    *(a1 + 168) |= 4u;
    *(a1 + 16) = v14;
    v4 = *(a2 + 168);
    if ((v4 & 8) == 0)
    {
LABEL_15:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_34:
      v16 = *(a2 + 32);
      *(a1 + 168) |= 0x10u;
      *(a1 + 32) = v16;
      v4 = *(a2 + 168);
      if ((v4 & 0x20) == 0)
      {
LABEL_17:
        if ((v4 & 0x40) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_15;
  }

  v15 = *(a2 + 24);
  *(a1 + 168) |= 8u;
  *(a1 + 24) = v15;
  v4 = *(a2 + 168);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  v17 = *(a2 + 40);
  *(a1 + 168) |= 0x20u;
  *(a1 + 40) = v17;
  v4 = *(a2 + 168);
  if ((v4 & 0x40) != 0)
  {
LABEL_18:
    v8 = *(a2 + 48);
    *(a1 + 168) |= 0x40u;
    *(a1 + 48) = v8;
    v4 = *(a2 + 168);
  }

LABEL_19:
  if ((v4 & 0x3FC00) == 0)
  {
    return;
  }

  if ((v4 & 0x400) != 0)
  {
    v10 = *(a2 + 136);
    *(a1 + 168) |= 0x400u;
    *(a1 + 136) = v10;
    v4 = *(a2 + 168);
    if ((v4 & 0x800) == 0)
    {
LABEL_22:
      if ((v4 & 0x1000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }
  }

  else if ((v4 & 0x800) == 0)
  {
    goto LABEL_22;
  }

  v11 = *(a2 + 144);
  *(a1 + 168) |= 0x800u;
  *(a1 + 144) = v11;
  v4 = *(a2 + 168);
  if ((v4 & 0x1000) == 0)
  {
LABEL_23:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_29:
  v12 = *(a2 + 60);
  *(a1 + 168) |= 0x1000u;
  *(a1 + 60) = v12;
  v4 = *(a2 + 168);
  if ((v4 & 0x2000) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_30:
  v13 = *(a2 + 160);
  *(a1 + 168) |= 0x2000u;
  *(a1 + 160) = v13;
  if ((*(a2 + 168) & 0x4000) != 0)
  {
LABEL_25:
    v9 = *(a2 + 152);
    *(a1 + 168) |= 0x4000u;
    *(a1 + 152) = v9;
  }
}

void sub_100408234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_100408264(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = v6;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_100408310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100408348(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102451080;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1004083E8(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_1004083FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v13 = 0;
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 8) = v10;
      *(a1 + 28) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_100408570(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, v4, v7, a3);
  }

  return result;
}

uint64_t sub_1004085DC(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (v3)
  {
    if (*(a1 + 28))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 28);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
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

  *(a1 + 24) = result;
  return result;
}