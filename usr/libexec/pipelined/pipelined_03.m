uint64_t sub_100039C9C(uint64_t result, char a2)
{
  if (*(result + 19) == 1 && *(result + 5552) == 1)
  {
    v2 = *(result + 4304);
    v4 = *(v2 + 8);
    v3 = *(v2 + 16);
    if (v4 != v3)
    {
      if ((a2 & 1) == 0)
      {
        v5 = result;
        result = sub_1000411A0(result + 40);
        if (result)
        {
          return result;
        }

        result = v5;
        v3 = *(*(v5 + 4304) + 16);
      }

      v26 = *(result + 5664);
      v27 = *(v3 - 1088);
      v6 = result;
      result = CNTimeSpan::operator-();
      if (fabs(v7 + result) <= 0.5)
      {
        v8 = *(v6 + 4304);
        v9 = *(v8 + 8);
        v10 = *(v8 + 16);
        v11 = v9;
        v12 = v10 - v9;
        if (v10 != v9)
        {
          v13 = *(v6 + 5664);
          v14 = *(v6 + 5672);
          v15 = 0x2FC962FC962FC963 * (v12 >> 4);
          if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL || v13 != 0)
          {
            v11 = v9;
            while (1)
            {
              v22 = v15 >> 1;
              v23 = v11 + 1200 * (v15 >> 1);
              v24 = *(v23 + 112);
              if (v24)
              {
                v25 = 1;
              }

              else
              {
                v25 = (*(v23 + 120) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
              }

              if (v25 && v24 != v13)
              {
                if (v24 >= v13)
                {
                  goto LABEL_26;
                }
              }

              else if (*(v23 + 120) >= v14)
              {
                goto LABEL_26;
              }

              v11 = v23 + 1200;
              v22 = v15 + ~v22;
LABEL_26:
              v15 = v22;
              if (!v22)
              {
                goto LABEL_19;
              }
            }
          }

          v11 = v9;
          do
          {
            v17 = v15 >> 1;
            v18 = v11 + 1200 * (v15 >> 1);
            v19 = *(v18 + 120);
            v20 = v18 + 1200;
            v15 += ~(v15 >> 1);
            if (v19 < v14)
            {
              v11 = v20;
            }

            else
            {
              v15 = v17;
            }
          }

          while (v15);
        }

LABEL_19:
        if (v11 == v10)
        {
          v9 += 1200 * (-1775253149 * (v12 >> 4) - 1);
          v21 = v9;
        }

        else
        {
          v21 = v9;
          if (v11 != v9)
          {
            v9 = v11 - 1200;
            v21 = v11;
          }
        }

        return sub_1000411A8(v6 + 40, v6 + 5560, (v9 + 112), (v21 + 112));
      }
    }
  }

  return result;
}

void sub_100039E8C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 19) == 1)
  {
    sub_1000443A4(a1 + 40, (a3 + 1), v15);
    if (v16 == 1)
    {
      v6 = (*(v15[0] + 16))(v15);
      v14 = *a3 + ((v7 + v6) * 1000000000.0);
      if ((v16 & 1) == 0)
      {
        sub_100031240();
      }

      sub_10002C6B4(v11, &v14, v15, (a1 + 7952));
      if (sub_10002C6B8(v11))
      {
        if (qword_10045B050 != -1)
        {
          sub_100382F88();
        }

        v8 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134545921;
          v18 = v13[1];
          v19 = 2053;
          v20 = v13[2];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Raising VIO-based position lat,lng (%{sensitive}.8f, %{sensitive}.8f) from VIO estimate", buf, 0x16u);
        }

        std::mutex::lock((a1 + 7864));
        v9 = *(a1 + 7928);
        for (i = *(a1 + 7936); v9 != i; ++v9)
        {
          (*(**v9 + 16))(*v9, a2, v11);
        }

        std::mutex::unlock((a1 + 7864));
      }

      nullsub_76(v13);
      cnframework::TimestampedEvent::~TimestampedEvent(&v12);
      if (v16)
      {
        cnframework::TimestampedEvent::~TimestampedEvent(v15);
      }
    }
  }
}

void sub_10003A0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nullsub_76(&a56);
  cnframework::TimestampedEvent::~TimestampedEvent(&a10);
  if (LOBYTE(STACK[0x338]) == 1)
  {
    cnframework::TimestampedEvent::~TimestampedEvent(&a67);
  }

  _Unwind_Resume(a1);
}

void sub_10003A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002CBB0(&v8);
  if ((sub_100032AB4(a3, a2, &v8) & 1) == 0)
  {
    if (qword_10045B050 == -1)
    {
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100382F88();
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }
    }

    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bad VL location; skip it", v7, 2u);
    goto LABEL_9;
  }

  if (*(a1 + 5552) == 1)
  {
    *(a1 + 5696) = v17;
    *(a1 + 5712) = v18;
    *(a1 + 5728) = v19;
    *(a1 + 5744) = v20;
    *(a1 + 5632) = v13;
    *(a1 + 5648) = v14;
    *(a1 + 5664) = v15;
    *(a1 + 5680) = v16;
    *(a1 + 5568) = v9;
    *(a1 + 5584) = v10;
    *(a1 + 5600) = v11;
    *(a1 + 5616) = v12;
    sub_10003412C(a1 + 5760, v21);
    sub_10003412C(a1 + 6200, v22);
    *(a1 + 6656) = v24;
    *(a1 + 6640) = v23;
  }

  else
  {
    *(a1 + 5560) = off_100433178;
    *(a1 + 5696) = v17;
    *(a1 + 5712) = v18;
    *(a1 + 5728) = v19;
    *(a1 + 5744) = v20;
    *(a1 + 5632) = v13;
    *(a1 + 5648) = v14;
    *(a1 + 5664) = v15;
    *(a1 + 5680) = v16;
    *(a1 + 5568) = v9;
    *(a1 + 5584) = v10;
    *(a1 + 5600) = v11;
    *(a1 + 5616) = v12;
    sub_10003E58C((a1 + 5760), v21);
    sub_10003E58C((a1 + 6200), v22);
    *(a1 + 6656) = v24;
    *(a1 + 6640) = v23;
    *(a1 + 5552) = 1;
  }

  sub_100039C9C(a1, 1);
LABEL_9:
  sub_100037BF8(&v8);
}

void sub_10003A364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v11[760] = off_100432BB8;
  v11[746] = off_100432BB8;
  v11[732] = off_100432BB8;
  v11[724] = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(v12);
  sub_100037BF8(&a11);
  _Unwind_Resume(a1);
}

void sub_10003A418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100037BF8(va);
  _Unwind_Resume(a1);
}

void sub_10003A42C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 4304);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  if (v4 == v5)
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = *a2;
    v9 = 0x2FC962FC962FC963 * ((v5 - v4) >> 4);
    while (1)
    {
      v10 = *(v3 + 8) + v6;
      v18 = *(v10 + 16);
      if (*v3 >= v8 - sub_10002BCA4(v10, &v18))
      {
        break;
      }

      ++v7;
      *(v3 + 32) = 2;
      v6 += 1200;
      if (v9 == v7)
      {
        goto LABEL_8;
      }
    }

    if (v9 != v7)
    {
      goto LABEL_9;
    }

LABEL_8:
    *(v3 + 32) = 1;
    v7 = v9;
LABEL_9:
    sub_10003F14C(v3, v7, &__p);
    v11 = __p;
    if (__p)
    {
      v12 = v16;
      v13 = __p;
      if (v16 != __p)
      {
        do
        {
          v14 = v12 - 1200;
          sub_100037984((v12 - 1192));
          v12 = v14;
        }

        while (v14 != v11);
        v13 = __p;
      }

      v16 = v11;
      operator delete(v13);
    }
  }

  if (((*(*a1 + 256))(a1) & 1) == 0 && *(a1 + 4320) == 1)
  {
    sub_100037984((a1 + 4336));
    *(a1 + 4320) = 0;
  }
}

void sub_10003A5BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!(*(*a1 + 256))(a1))
  {
    goto LABEL_17;
  }

  if ((*(a1 + 4320) & 1) == 0)
  {
    sub_10003A908((a1 + 4320), *(*(a1 + 4304) + 8));
  }

  v6 = *(*(a1 + 4304) + 16);
  sub_100039030(a1 + 4336, v6 - 1192, 0, v24);
  if (v24[0] != 1)
  {
LABEL_17:
    *a2 = 0;
    return;
  }

  v7 = v25;
  v8 = v26;
  if (v27 == 1)
  {
    v9 = v28;
    v10 = v29;
    v11 = *(a1 + 5528);
    if (v11 == 1)
    {
      v12 = v28 - *(a1 + 5536);
      if (v12 >= 0.0)
      {
        v13 = v28 - *(a1 + 5536);
      }

      else
      {
        v13 = v12 + 6.28318531;
      }

      v14 = *(a1 + 4448) + *(a1 + 4440);
      v15 = *(v6 - 1080) + *(v6 - 1088);
      v16 = vabdd_f64(v14, v15);
      if (v16 < 2.22044605e-16)
      {
        sub_100014A08(buf, "");
        sub_100040D4C("VIO-inferred speed is applicable but the interval is zero; something must be wrong!", &v34);
        sub_100382FC4(&v34, __p, buf);
        sub_10003F5D0(__p);
      }

      v17 = *(a1 + 5544);
      if (qword_10045B050 != -1)
      {
        sub_100382F88();
      }

      v2 = v13 / v16;
      v18 = qword_10045B058;
      v3 = (v10 + v17) / ((v14 - v15) * (v14 - v15));
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v31 = v2;
        v32 = 2050;
        v33 = v3;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "VIO inferred angular velocity, mean, %{public}f, var, %{public}f", buf, 0x16u);
      }
    }

    v19 = *(a1 + 5528);
    *(a1 + 5536) = v9;
    *(a1 + 5544) = v10;
    if ((v19 & 1) == 0)
    {
      *(a1 + 5528) = 1;
    }
  }

  else
  {
    v11 = 0;
    if (*(a1 + 5528) == 1)
    {
      *(a1 + 5528) = 0;
    }
  }

  sub_10003A908((a1 + 4320), *(*(a1 + 4304) + 16) - 1200);
  v20 = *(a1 + 16);
  if (!v11)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v21 = *(a1 + 17);
  if ((*(a1 + 18) & 1) == 0)
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v22 = 1;
LABEL_25:
  *(a2 + 8) = v7;
  *(a2 + 16) = v20;
  *(a2 + 24) = v8;
  *(a2 + 32) = v21;
  *(a2 + 40) = v2;
  *(a2 + 48) = v22;
  *(a2 + 56) = v3;
  *a2 = 1;
}

void sub_10003A8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_10003A908(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a1 + 1) = *a2;
  if (v4 == 1)
  {
    v5 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v5;
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    *(a1 + 104) = *(a2 + 96);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    v9 = *(a2 + 160);
    v10 = *(a2 + 176);
    v11 = *(a2 + 144);
    *(a1 + 136) = *(a2 + 128);
    *(a1 + 184) = v10;
    *(a1 + 168) = v9;
    *(a1 + 152) = v11;
    v12 = *(a2 + 224);
    v13 = *(a2 + 240);
    v14 = *(a2 + 208);
    *(a1 + 200) = *(a2 + 192);
    *(a1 + 248) = v13;
    *(a1 + 232) = v12;
    *(a1 + 216) = v14;
    v16 = *(a2 + 272);
    v15 = *(a2 + 288);
    v17 = *(a2 + 256);
    a1[312] = *(a2 + 304);
    *(a1 + 280) = v16;
    *(a1 + 296) = v15;
    *(a1 + 264) = v17;
    *(a1 + 120) = *(a2 + 112);
    sub_10003412C((a1 + 320), a2 + 312);
    sub_10003412C((a1 + 760), a2 + 752);
    v18 = *(a2 + 1194);
    *(a1 + 600) = *(a2 + 1192);
    a1[1202] = v18;
  }

  else
  {
    *(a1 + 2) = off_100433148;
    v20 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v20;
    v21 = *(a2 + 48);
    v22 = *(a2 + 64);
    v23 = *(a2 + 80);
    *(a1 + 104) = *(a2 + 96);
    *(a1 + 88) = v23;
    *(a1 + 72) = v22;
    *(a1 + 56) = v21;
    v24 = *(a2 + 160);
    v25 = *(a2 + 176);
    v26 = *(a2 + 144);
    *(a1 + 136) = *(a2 + 128);
    *(a1 + 184) = v25;
    *(a1 + 168) = v24;
    *(a1 + 152) = v26;
    v27 = *(a2 + 224);
    v28 = *(a2 + 240);
    v29 = *(a2 + 208);
    *(a1 + 200) = *(a2 + 192);
    *(a1 + 248) = v28;
    *(a1 + 232) = v27;
    *(a1 + 216) = v29;
    v31 = *(a2 + 272);
    v30 = *(a2 + 288);
    v32 = *(a2 + 256);
    a1[312] = *(a2 + 304);
    *(a1 + 280) = v31;
    *(a1 + 296) = v30;
    *(a1 + 264) = v32;
    *(a1 + 120) = *(a2 + 112);
    sub_10003E58C((a1 + 320), a2 + 312);
    sub_10003E58C((a1 + 760), a2 + 752);
    v33 = *(a2 + 1192);
    a1[1202] = *(a2 + 1194);
    *(a1 + 600) = v33;
    *a1 = 1;
  }

  return a1;
}

void sub_10003AAC8(_Unwind_Exception *a1)
{
  v1[80] = off_100432BB8;
  v1[66] = off_100432BB8;
  v1[52] = off_100432BB8;
  v1[44] = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(v2);
  _Unwind_Resume(a1);
}

void sub_10003AB70(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 7864));
  sub_10003ABD8(a1 + 7928, &v3);
  std::mutex::unlock((a1 + 7864));
}

void sub_10003ABD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_10000FC84();
  }

  v10 = v3 - v6;
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
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_10000D444();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_10003ACF0(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 7864));
  v4 = *(a1 + 7928);
  v5 = *(a1 + 7936);
  if (v4 != v5)
  {
    v6 = *(a1 + 7928);
    while (*v6 != a2)
    {
      v6 += 8;
      v4 += 8;
      if (v6 == v5)
      {
        v4 = *(a1 + 7936);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v7 = (v5 - (v4 + 8));
    if (v5 != v4 + 8)
    {
      memmove(v4, v4 + 8, v5 - (v4 + 8));
    }

    *(a1 + 7936) = &v7[v4];
  }

  std::mutex::unlock((a1 + 7864));
}

void sub_10003AEEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10003AF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    __cxa_free_exception(v17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10003AF44);
}

void sub_10003AF8C(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100433658;
  v11 = off_100433680;
  sub_10003D5C0(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_10003B590();
}

void sub_10003B2B0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10003B2D8(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_10003B370(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_1004336A0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_1004335B8;
  *(a1 + 16) = off_1004335F0;
  *(a1 + 56) = &off_100433628;
  return a1;
}

void *sub_10003B4A4(void *result)
{
  *result = off_100433458;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_10003B4FC(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_10003B82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_10003B840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10003B870(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_10003B91C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_10003BA94()
{
  v2 = *v1;
  if (*v1)
  {
    *(v0 + 16) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_10003BABC(void *a1)
{
  *a1 = off_100433458;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  operator delete();
}

void sub_10003BB30(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN10purpleslam13tag_backtraceE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v13;
  }

  else
  {
    v4.__i_ = v13.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v13, v4, 91);
  v14 = v13;
  memset(&v13, 0, sizeof(v13));
  v5 = std::string::append(&v14, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v17);
  sub_10010A9B0(&v17, a1 + 8);
  std::stringbuf::str();
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v12 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v11[1];
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v16, 10);
  *a2 = v16;
  memset(&v16, 0, sizeof(v16));
  if (v12 < 0)
  {
    operator delete(v11[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_10003BDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_10003BEA8(const char *a1@<X0>, _BYTE *a2@<X8>)
{
  status = 0;
  v9 = 0;
  v4 = __cxa_demangle(a1, 0, &v9, &status);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (v7)
  {
    memmove(a2, v6, v7);
  }

  a2[v8] = 0;
  free(v5);
}

uint64_t sub_10003BFA8(uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = v3;
  *(a1 + *(v3 - 24)) = v2;
  v4 = (a1 + *(*a1 - 24));
  std::ios_base::init(v4, (a1 + 8));
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 16));
  *(a1 + 72) = 0;
  v5 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v6 = *(a1 + 95);
  if (v6 < 0)
  {
    v6 = *(a1 + 80);
  }

  *(a1 + 48) = v5;
  *(a1 + 56) = v5;
  *(a1 + 64) = v5 + v6;
  return a1;
}

void sub_10003C174(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v2);
  }

  *(v1 + 8) = v3;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10003C1C4(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void *sub_10003C2E4(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v14 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_10003C490(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_10003C428(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x10003C408);
}

uint64_t sub_10003C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000D39C();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_10003C66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10003C774(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10003C7B8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10003C800(uint64_t a1, const char *a2)
{
  if (a2)
  {
    sub_10003BFA8(&v16);
    v4 = strlen(a2);
    sub_10003C2E4(&v16, a2, v4);
    v5 = *(a1 + 8);
    if (v5 != (a1 + 16))
    {
      do
      {
        (**v5[5])(__p);
        if (v15 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if (v15 >= 0)
        {
          v7 = HIBYTE(v15);
        }

        else
        {
          v7 = __p[1];
        }

        sub_10003C2E4(&v16, v6, v7);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
          v8 = v5[1];
          if (v8)
          {
            do
            {
LABEL_15:
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
            goto LABEL_4;
          }
        }

        else
        {
          v8 = v5[1];
          if (v8)
          {
            goto LABEL_15;
          }
        }

        do
        {
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
LABEL_4:
        v5 = v9;
      }

      while (v9 != (a1 + 16));
    }

    std::stringbuf::str();
    v11 = v15;
    v12 = *__p;
    *__p = *(a1 + 32);
    v15 = *(a1 + 48);
    *(a1 + 32) = v12;
    *(a1 + 48) = v11;
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    std::locale::~locale(v18);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  result = a1 + 32;
  if (*(a1 + 55) < 0)
  {
    return *result;
  }

  return result;
}

void sub_10003CA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003C1C4(va);
  _Unwind_Resume(a1);
}

void sub_10003CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10003C1C4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_10003CABC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = (result + 16);
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = *a2;
  v7 = (result + 16);
  do
  {
    while (1)
    {
      v8 = v5[4];
      if (v8 != v6)
      {
        break;
      }

      v7 = v5;
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    result = strcmp((*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
    if (result >= 0)
    {
      v7 = v5;
    }

    v5 = *(v5 + ((result >> 28) & 8));
  }

  while (v5);
LABEL_8:
  if (v7 == v4 || (v9 = v7[4], v6 != v9) && (result = strcmp((*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL)), (result & 0x80000000) != 0))
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v10 = v7[6];
    *a3 = v7[5];
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  return result;
}

void *sub_10003CBA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = sub_10003D00C(a1 + 8, a3);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  v8 = result[6];
  result[5] = v7;
  result[6] = v6;
  if (v8)
  {
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v8 + 16))(v8);
      if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
      {
        result = (*(*v8 + 24))(v8);
      }
    }
  }

  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }

  return result;
}

BOOL sub_10003CCD0(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  *(a1 + 56) = v1;
  if (a1 && !v1)
  {
    if (*(a1 + 55) < 0)
    {
      v2 = a1;
      operator delete(*(a1 + 32));
      a1 = v2;
    }

    sub_10003D160(a1 + 8, *(a1 + 16));
    operator delete();
  }

  return v1 == 0;
}

void sub_10003CFCC(_Unwind_Exception *a1)
{
  sub_10000E3A8((v2 + 8));
  sub_10000E098(v1);
  _Unwind_Resume(a1);
}

void sub_10003CFE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10003D514(va);
  sub_10003B870(va1);
  sub_10000E098(v2);
  _Unwind_Resume(a1);
}

void *sub_10003D00C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_9:
    operator new();
  }

  v3 = *a2;
  v4 = v2[4];
  if (*a2 == v4)
  {
    return v2;
  }

  v5 = *(v3 + 8);
  do
  {
    v7 = *(v4 + 8);
    if (strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (v7 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
    {
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((strcmp((v7 & 0x7FFFFFFFFFFFFFFFLL), (v5 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
      {
        return v2;
      }

      v6 = v2[1];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    v4 = v6[4];
    v2 = v6;
  }

  while (v3 != v4);
  return v6;
}

void sub_10003D160(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10003D160(a1, *a2);
    sub_10003D160(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }

    operator delete(a2);
  }
}

void sub_10003D32C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10003D370(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void *sub_10003D3B8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_9:
    operator new();
  }

  v3 = *a2;
  v4 = v2[4];
  if (*a2 == v4)
  {
    return v2;
  }

  v5 = *(v3 + 8);
  do
  {
    v7 = *(v4 + 8);
    if (strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), (v7 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
    {
      v6 = *v2;
      if (!*v2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if ((strcmp((v7 & 0x7FFFFFFFFFFFFFFFLL), (v5 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
      {
        return v2;
      }

      v6 = v2[1];
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    v4 = v6[4];
    v2 = v6;
  }

  while (v3 != v4);
  return v6;
}

uint64_t sub_10003D514(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_10003D5C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_1004336A0;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_1004335B8;
  *(a1 + 16) = off_1004335F0;
  *(a1 + 56) = &off_100433628;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10003D714(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_10003D7A8(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_10003D8C8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10003B370(exception, a1);
}

void sub_10003D924(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10003D9AC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_10003DADC(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10003B370(exception, a1 + v2);
}

void sub_10003DB50(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_10003DBF0(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_10003DCA4(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_10003DD44(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_10003DDCC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_10003DE68(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_10003DEA0(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_1004336A0;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_1004335B8;
  *(a1 + 16) = off_1004335F0;
  *(a1 + 56) = &off_100433628;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

uint64_t sub_10003DFF4(uint64_t result)
{
  *(result + 4128) = off_100432BB8;
  *(result + 4064) = off_100432BB8;
  *(result + 4000) = off_100432BB8;
  *(result + 3880) = off_100432BB8;
  *(result + 3768) = off_100432BB8;
  *(result + 3656) = off_100432BB8;
  *(result + 3592) = off_100432BB8;
  *(result + 3440) = off_100432BB8;
  *(result + 3328) = off_100432BB8;
  *(result + 3216) = off_100432BB8;
  *(result + 3152) = off_100432BB8;
  *(result + 3000) = off_100432BB8;
  *(result + 2888) = off_100432BB8;
  *(result + 2776) = off_100432BB8;
  *(result + 2712) = off_100432BB8;
  *(result + 2560) = off_100432BB8;
  *(result + 2448) = off_100432BB8;
  *(result + 2336) = off_100432BB8;
  *(result + 2272) = off_100432BB8;
  if (*(result + 2232) != 1)
  {
    if (*(result + 1136) != 1)
    {
      return result;
    }

LABEL_5:
    v1 = result;
    sub_100037BF8((result + 32));
    return v1;
  }

  *(result + 2104) = off_100432BB8;
  *(result + 1992) = off_100432BB8;
  *(result + 1880) = off_100432BB8;
  *(result + 1816) = off_100432BB8;
  *(result + 1664) = off_100432BB8;
  *(result + 1552) = off_100432BB8;
  *(result + 1440) = off_100432BB8;
  *(result + 1376) = off_100432BB8;
  if (*(result + 1136) == 1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10003E3B0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  CNTimeSpan::SetTimeSpan(a1, 0, 0.0);
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 24), 0, 0.0);
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 48), 0, 0.0);
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 72), 0, 0.0);
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 104) = 0;
  *(a1 + 96) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 96), 0, 0.0);
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 120), 0, 0.0);
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 144), 0, 0.0);
  *(a1 + 168) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  CNTimeSpan::SetTimeSpan((a1 + 168), 0, 0.0);
  *(a1 + 184) = 0x7FF8000000000000;
  *(a1 + 192) = 0;
  cntransformation::CNRigidTransformation::CNRigidTransformation((a1 + 200));
  cntransformation::CNRigidTransformation::CNRigidTransformation((a1 + 640));
  *(a1 + 1080) = 0;
  *(a1 + 1082) = 0;
  return a1;
}

void sub_10003E4D8(_Unwind_Exception *a1)
{
  v1[65] = off_100432BB8;
  v1[51] = off_100432BB8;
  v1[37] = off_100432BB8;
  v1[29] = off_100432BB8;
  _Unwind_Resume(a1);
}

__n128 sub_10003E58C(cnrotation::CNRotation *a1, uint64_t a2)
{
  v3 = cnrotation::CNRotation::CNRotation(a1, a2);
  *(v3 + 56) = 0x100000003;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = off_100432C88;
  v6 = *(a2 + 40);
  v5 = *(a2 + 44);
  *(v3 + 40) = v6;
  *(v3 + 44) = v5;
  v7 = (v5 * v6);
  *(v3 + 48) = v7;
  *(v3 + 52) = v6;
  *(v3 + 64) = v3 + 72;
  v8 = *(a2 + 48);
  if (v8 > 3)
  {
    v16 = *(a2 + 64);
    v17 = (v8 - 1) >> 1;
    v18 = v16;
    v19 = (v3 + 72);
    do
    {
      v20 = *v18++;
      *v19++ = v20;
      --v17;
    }

    while (v17);
    *(v3 + 72 + 8 * (v8 - 2)) = *(v16 + 8 * (v8 - 2));
  }

  else
  {
    if (v7 < 1)
    {
      goto LABEL_12;
    }

    v9 = *(a2 + 64);
    if (v7 < 6 || (v3 - v9 + 72) < 0x20)
    {
      v10 = 0;
LABEL_6:
      v11 = v7 - v10;
      v12 = 8 * v10;
      v13 = (8 * v10 + v3 + 72);
      v14 = (v9 + v12);
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v11;
      }

      while (v11);
      goto LABEL_12;
    }

    v10 = v7 & 0x7FFFFFFC;
    v70 = (v9 + 16);
    v71 = (v3 + 88);
    v72 = v10;
    do
    {
      v73 = *v70;
      *(v71 - 1) = *(v70 - 1);
      *v71 = v73;
      v70 += 2;
      v71 += 2;
      v72 -= 4;
    }

    while (v72);
    if (v10 != v7)
    {
      goto LABEL_6;
    }
  }

LABEL_12:
  *(v3 + 120) = 0x300000003;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 96) = off_100432B60;
  v22 = *(a2 + 104);
  v21 = *(a2 + 108);
  *(v3 + 104) = v22;
  *(v3 + 108) = v21;
  v23 = (v21 * v22);
  *(v3 + 112) = v23;
  *(v3 + 116) = v22;
  *(v3 + 128) = v3 + 136;
  v24 = *(a2 + 112);
  if (v24 > 3)
  {
    v32 = *(a2 + 128);
    v33 = (v24 - 1) >> 1;
    v34 = v32;
    v35 = (v3 + 136);
    do
    {
      v36 = *v34++;
      *v35++ = v36;
      --v33;
    }

    while (v33);
    *(v3 + 136 + 8 * (v24 - 2)) = *(v32 + 8 * (v24 - 2));
  }

  else
  {
    if (v23 < 1)
    {
      goto LABEL_23;
    }

    v25 = *(a2 + 128);
    if (v23 < 6 || (v3 - v25 + 136) < 0x20)
    {
      v26 = 0;
LABEL_17:
      v27 = v23 - v26;
      v28 = 8 * v26;
      v29 = (8 * v26 + v3 + 136);
      v30 = (v25 + v28);
      do
      {
        v31 = *v30++;
        *v29++ = v31;
        --v27;
      }

      while (v27);
      goto LABEL_23;
    }

    v26 = v23 & 0x7FFFFFFC;
    v74 = (v25 + 16);
    v75 = (v3 + 152);
    v76 = v26;
    do
    {
      v77 = *v74;
      *(v75 - 1) = *(v74 - 1);
      *v75 = v77;
      v74 += 2;
      v75 += 2;
      v76 -= 4;
    }

    while (v76);
    if (v26 != v23)
    {
      goto LABEL_17;
    }
  }

LABEL_23:
  *(v3 + 232) = 0x300000003;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  *(v3 + 208) = off_100432B60;
  v38 = *(a2 + 216);
  v37 = *(a2 + 220);
  *(v3 + 216) = v38;
  *(v3 + 220) = v37;
  v39 = (v37 * v38);
  *(v3 + 224) = v39;
  *(v3 + 228) = v38;
  *(v3 + 240) = v3 + 248;
  v40 = *(a2 + 224);
  if (v40 > 3)
  {
    v48 = *(a2 + 240);
    v49 = (v40 - 1) >> 1;
    v50 = v48;
    v51 = (v3 + 248);
    do
    {
      v52 = *v50++;
      *v51++ = v52;
      --v49;
    }

    while (v49);
    *(v3 + 248 + 8 * (v40 - 2)) = *(v48 + 8 * (v40 - 2));
  }

  else
  {
    if (v39 < 1)
    {
      goto LABEL_34;
    }

    v41 = *(a2 + 240);
    if (v39 < 6 || (v3 - v41 + 248) < 0x20)
    {
      v42 = 0;
LABEL_28:
      v43 = v39 - v42;
      v44 = 8 * v42;
      v45 = (8 * v42 + v3 + 248);
      v46 = (v41 + v44);
      do
      {
        v47 = *v46++;
        *v45++ = v47;
        --v43;
      }

      while (v43);
      goto LABEL_34;
    }

    v42 = v39 & 0x7FFFFFFC;
    v78 = (v41 + 16);
    v79 = v42;
    v80 = (v3 + 264);
    do
    {
      v81 = *v78;
      *(v80 - 1) = *(v78 - 1);
      *v80 = v81;
      v78 += 2;
      v80 += 2;
      v79 -= 4;
    }

    while (v79);
    if (v42 != v39)
    {
      goto LABEL_28;
    }
  }

LABEL_34:
  result.n128_u64[0] = 0x300000003;
  *(v3 + 344) = 0x300000003;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 320) = off_100432B60;
  v53 = *(a2 + 328);
  v54 = *(a2 + 332);
  *(v3 + 328) = v53;
  *(v3 + 332) = v54;
  v55 = (v54 * v53);
  *(v3 + 336) = v55;
  *(v3 + 340) = v53;
  *(v3 + 352) = v3 + 360;
  v56 = *(a2 + 336);
  if (v56 <= 3)
  {
    if (v55 >= 1)
    {
      v57 = *(a2 + 352);
      if (v55 >= 6 && (v3 - v57 + 360) >= 0x20)
      {
        v58 = v55 & 0x7FFFFFFC;
        v82 = v57 + 1;
        v83 = (v3 + 376);
        v84 = v58;
        do
        {
          result = v82[-1];
          v85 = *v82;
          v83[-1] = result;
          *v83 = v85;
          v82 += 2;
          v83 += 2;
          v84 -= 4;
        }

        while (v84);
        if (v58 == v55)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v58 = 0;
      }

      v59 = v55 - v58;
      v60 = v58;
      v61 = (v60 * 8 + v3 + 360);
      v62 = &v57->n128_u64[v60];
      do
      {
        v63 = *v62++;
        result.n128_u64[0] = v63;
        *v61++ = v63;
        --v59;
      }

      while (v59);
    }

LABEL_41:
    *(v3 + 432) = *(a2 + 432);
    return result;
  }

  v64 = *(a2 + 352);
  v65 = (v56 - 1) >> 1;
  v66 = v64;
  v67 = (v3 + 360);
  do
  {
    v68 = *v66++;
    *v67++ = v68;
    --v65;
  }

  while (v65);
  v69 = 8 * (v56 - 2);
  result = *(v64 + v69);
  *(v3 + 360 + v69) = result;
  *(v3 + 432) = *(a2 + 432);
  return result;
}

void sub_10003EA1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100433708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10003EA70(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v1)
    {
      do
      {
        v5 = v3 - 1200;
        sub_100037984((v3 - 1192));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v1;

    operator delete(v4);
  }
}

void sub_10003EAF4(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v3;
  if (v4 == 1200)
  {
    *(a1 + 32) = 1;
  }

  else
  {
    v5 = a2;
    if (0x2FC962FC962FC963 * (v4 >> 4) <= a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        v7 = v3 + 1200 * v5;
        v18 = *(v7 + 16);
        v8 = sub_10002BCA4(v7, &v18);
        if (v6 != v5)
        {
          v9 = v8;
          v10 = 1200 * v6;
          while (1)
          {
            v11 = *(a1 + 8) + v10;
            v18 = *(v11 + 16);
            if (*a1 >= v9 - sub_10002BCA4(v11, &v18))
            {
              break;
            }

            ++v6;
            *(a1 + 32) = 2;
            v10 += 1200;
            if (v5 == v6)
            {
              goto LABEL_5;
            }
          }
        }

        if (v6 == v5)
        {
LABEL_5:
          *(a1 + 32) = 1;
          v6 = v5;
        }

        ++v5;
        v3 = *(a1 + 8);
      }

      while (v5 < 0x2FC962FC962FC963 * ((*(a1 + 16) - v3) >> 4));
    }

    sub_10003F14C(a1, v6, &__p);
    v12 = __p;
    if (__p)
    {
      v13 = v17;
      v14 = __p;
      if (v17 != __p)
      {
        do
        {
          v15 = v13 - 1200;
          sub_100037984((v13 - 1192));
          v13 = v15;
        }

        while (v15 != v12);
        v14 = __p;
      }

      v17 = v12;
      operator delete(v14);
    }
  }
}

uint64_t sub_10003EC74(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2FC962FC962FC963 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x369D0369D0369DLL)
  {
    sub_10000FC84();
  }

  if (0x5F92C5F92C5F92C6 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5F92C5F92C5F92C6 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2FC962FC962FC963 * ((a1[2] - *a1) >> 4)) >= 0x1B4E81B4E81B4ELL)
  {
    v6 = 0x369D0369D0369DLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x369D0369D0369DLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v21 = 16 * ((a1[1] - *a1) >> 4);
  *v21 = *a2;
  *(v21 + 8) = off_100433148;
  v7 = *(a2 + 64);
  *(v21 + 48) = *(a2 + 48);
  *(v21 + 64) = v7;
  v8 = *(a2 + 96);
  *(v21 + 80) = *(a2 + 80);
  *(v21 + 96) = v8;
  v9 = *(a2 + 32);
  *(v21 + 16) = *(a2 + 16);
  *(v21 + 32) = v9;
  v10 = *(a2 + 160);
  *(v21 + 144) = *(a2 + 144);
  *(v21 + 160) = v10;
  v11 = *(a2 + 128);
  *(v21 + 112) = *(a2 + 112);
  *(v21 + 128) = v11;
  v12 = *(a2 + 224);
  *(v21 + 208) = *(a2 + 208);
  *(v21 + 224) = v12;
  v13 = *(a2 + 192);
  *(v21 + 176) = *(a2 + 176);
  *(v21 + 192) = v13;
  *(v21 + 304) = *(a2 + 304);
  v14 = *(a2 + 288);
  *(v21 + 272) = *(a2 + 272);
  *(v21 + 288) = v14;
  v15 = *(a2 + 256);
  *(v21 + 240) = *(a2 + 240);
  *(v21 + 256) = v15;
  sub_10003E58C((1200 * v2 + 312), a2 + 312);
  sub_10003E58C((1200 * v2 + 752), a2 + 752);
  *(v21 + 1192) = *(a2 + 1192);
  *(v21 + 1194) = *(a2 + 1194);
  v16 = 1200 * v2 + 1200;
  v17 = a1[1];
  v18 = 1200 * v2 + *a1 - v17;
  sub_10003EF18(a1, *a1, v17, v21 + *a1 - v17);
  v19 = *a1;
  *a1 = v18;
  a1[1] = v16;
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v16;
}

void sub_10003EE4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10003F0F4(va);
  _Unwind_Resume(a1);
}

void sub_10003EE60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v11[79] = off_100432BB8;
  v11[65] = off_100432BB8;
  v11[51] = off_100432BB8;
  v11[43] = off_100432BB8;
  cnframework::TimestampedEvent::~TimestampedEvent(v10);
  sub_10003F0F4(&a10);
  _Unwind_Resume(a1);
}

void sub_10003EEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  cnframework::TimestampedEvent::~TimestampedEvent(v10);
  sub_10003F0F4(&a10);
  _Unwind_Resume(a1);
}

void sub_10003EF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      *(v9 + 8) = off_100433148;
      v10 = *(v6 + v7 + 32);
      *(v9 + 16) = *(v6 + v7 + 16);
      *(v9 + 32) = v10;
      v11 = *(v6 + v7 + 48);
      v12 = *(v6 + v7 + 64);
      v13 = *(v6 + v7 + 96);
      *(v9 + 80) = *(v6 + v7 + 80);
      *(v9 + 96) = v13;
      *(v9 + 48) = v11;
      *(v9 + 64) = v12;
      v14 = *(v6 + v7 + 176);
      v16 = *(v6 + v7 + 128);
      v15 = *(v6 + v7 + 144);
      *(v9 + 160) = *(v6 + v7 + 160);
      *(v9 + 176) = v14;
      *(v9 + 128) = v16;
      *(v9 + 144) = v15;
      v17 = *(v6 + v7 + 240);
      v19 = *(v6 + v7 + 192);
      v18 = *(v6 + v7 + 208);
      *(v9 + 224) = *(v6 + v7 + 224);
      *(v9 + 240) = v17;
      *(v9 + 192) = v19;
      *(v9 + 208) = v18;
      v21 = *(v6 + v7 + 272);
      v20 = *(v6 + v7 + 288);
      v22 = *(v6 + v7 + 256);
      *(v9 + 304) = *(v6 + v7 + 304);
      *(v9 + 272) = v21;
      *(v9 + 288) = v20;
      *(v9 + 256) = v22;
      *(v9 + 112) = *(v6 + v7 + 112);
      sub_10003E58C((a4 + v7 + 312), v6 + v7 + 312);
      sub_10003E58C((a4 + v7 + 752), v6 + v7 + 752);
      v23 = a4 + v7;
      v24 = *(v6 + v7 + 1192);
      *(v23 + 1194) = *(v6 + v7 + 1194);
      *(v23 + 1192) = v24;
      v7 += 1200;
    }

    while (v8 + 1200 != a3);
    while (v6 != a3)
    {
      sub_100037984((v6 + 8));
      v6 += 1200;
    }
  }
}

void sub_10003F034(_Unwind_Exception *a1)
{
  v4 = v1 + v2;
  cnframework::TimestampedEvent::~TimestampedEvent((v1 + v2 + 8));
  if (v2)
  {
    v5 = -v2;
    v6 = (v4 - 1192);
    do
    {
      sub_100037984(v6);
      v6 = (v7 - 1200);
      v5 += 1200;
    }

    while (v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10003F0F4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1200;
    sub_100037984((i - 1192));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10003F14C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 8);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (a2)
  {
    if (a2 < 0x369D0369D0369ELL)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return result;
}

void sub_10003F2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10003F4EC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10003F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = a4 + v7;
      *v9 = *(a2 + v7);
      *(v9 + 8) = off_100433148;
      v10 = *(a2 + v7 + 32);
      *(v9 + 16) = *(a2 + v7 + 16);
      *(v9 + 32) = v10;
      v11 = *(a2 + v7 + 48);
      v12 = *(a2 + v7 + 64);
      v13 = *(a2 + v7 + 96);
      *(v9 + 80) = *(a2 + v7 + 80);
      *(v9 + 96) = v13;
      *(v9 + 48) = v11;
      *(v9 + 64) = v12;
      v14 = *(a2 + v7 + 176);
      v16 = *(a2 + v7 + 128);
      v15 = *(a2 + v7 + 144);
      *(v9 + 160) = *(a2 + v7 + 160);
      *(v9 + 176) = v14;
      *(v9 + 128) = v16;
      *(v9 + 144) = v15;
      v17 = *(a2 + v7 + 240);
      v19 = *(a2 + v7 + 192);
      v18 = *(a2 + v7 + 208);
      *(v9 + 224) = *(a2 + v7 + 224);
      *(v9 + 240) = v17;
      *(v9 + 192) = v19;
      *(v9 + 208) = v18;
      v21 = *(a2 + v7 + 272);
      v20 = *(a2 + v7 + 288);
      v22 = *(a2 + v7 + 256);
      *(v9 + 304) = *(a2 + v7 + 304);
      *(v9 + 272) = v21;
      *(v9 + 288) = v20;
      *(v9 + 256) = v22;
      *(v9 + 112) = *(a2 + v7 + 112);
      sub_10003E58C((a4 + v7 + 312), a2 + v7 + 312);
      sub_10003E58C((a4 + v7 + 752), a2 + v7 + 752);
      v23 = a4 + v7;
      v24 = *(a2 + v7 + 1192);
      *(v23 + 1194) = *(a2 + v7 + 1194);
      *(v23 + 1192) = v24;
      v7 += 1200;
    }

    while (v8 + 1200 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10003F42C(_Unwind_Exception *a1)
{
  v4 = v1 + v2;
  cnframework::TimestampedEvent::~TimestampedEvent((v1 + v2 + 8));
  if (v2)
  {
    v5 = -v2;
    v6 = (v4 - 1192);
    do
    {
      sub_100037984(v6);
      v6 = (v7 - 1200);
      v5 += 1200;
    }

    while (v5);
  }

  _Unwind_Resume(a1);
}

void ***sub_10003F4EC(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v6 = v4 - 1200;
          sub_100037984((v4 - 1192));
          v4 = v6;
        }

        while (v6 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void **sub_10003F568(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 1200;
        sub_100037984((v3 - 1192));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10003F5D0(uint64_t a1)
{
  v22 = 0;
  buf[0] = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_1000E661C(buf, &__p, 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v22 < 0)
  {
    operator delete(*buf);
  }

  v1 = rand();
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&qword_10045B050, &stru_1004336D8);
    v2 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      if (sub_1000E6528())
      {
        if (qword_10045B050 == -1)
        {
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        else
        {
          dispatch_once(&qword_10045B050, &stru_1004336D8);
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_22;
          }
        }

        sub_1000E0784(0);
        v4 = v15;
        if (v16 < 0)
        {
          v4 = v15[0];
        }

        if (v22 >= 0)
        {
          v5 = buf;
        }

        else
        {
          v5 = *buf;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
        *(__p.__r_.__value_.__r.__words + 4) = v4;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v5;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
        v18 = v1;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Precondition failure: %{private}s\n %s \n trace link nonce = %d", &__p, 0x1Cu);
        if (v22 < 0)
        {
          operator delete(*buf);
        }
      }

      if (qword_10045B050 != -1)
      {
        dispatch_once(&qword_10045B050, &stru_1004336D8);
        v6 = qword_10045B058;
        if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

LABEL_22:
      v6 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }

LABEL_23:
      v7 = v16;
      v8 = v15[0];
      sub_1000E0784(0);
      v9 = v15;
      if (v7 < 0)
      {
        v9 = v8;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136380931;
      *&buf[4] = v9;
      v20 = 2080;
      v21 = p_p;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Precondition failure: %{private}s\n %s \n", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_30:
      __cxa_allocate_exception(0x40uLL);
      if (v16 >= 0)
      {
        v11 = v15;
      }

      else
      {
        v11 = v15[0];
      }

      v12 = strlen(v11);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_10000D39C();
      }

      v13 = v12;
      if (v12 < 0x17)
      {
        *(&__p.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&__p, v11, v12);
        }

        __p.__r_.__value_.__s.__data_[v13] = 0;
        std::runtime_error::runtime_error(buf, &__p);
        *buf = &off_1004338D0;
        sub_10010A984(v14);
      }

      operator new();
    }
  }

  LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
  HIDWORD(__p.__r_.__value_.__r.__words[0]) = v1;
  _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Precondition failure. log link nonce = %d", &__p, 8u);
  goto LABEL_11;
}

void sub_10003F9CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::runtime_error a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a25);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  v30 = a1;
  if (a17 < 0)
  {
    operator delete(a12);
    v30 = a1;
  }

  _Unwind_Resume(v30);
}

void sub_10003FA8C(std::runtime_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::runtime_error::runtime_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100433888;
  v11 = off_1004338B0;
  sub_100040318(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_100040038();
}

void sub_10003FDB0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_10003FDD8(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_10003FE70(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2)->__vftable = &off_1004338D0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_1004337E8;
  *(a1 + 16) = off_100433820;
  *(a1 + 56) = &off_100433858;
  return a1;
}

void sub_10003FFA4(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_1000402D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1000402E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100040318(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_1004338D0;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_1004337E8;
  *(a1 + 16) = off_100433820;
  *(a1 + 56) = &off_100433858;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_10004046C(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

void sub_100040500(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_100040620(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10003FE70(exception, a1);
}

void sub_10004067C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_100040704(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_100040834(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10003FE70(exception, a1 + v2);
}

void sub_1000408A8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_100040948(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void sub_1000409FC(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_100040A9C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_100040B24(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_100040BC0(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_100040BF8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4->__vftable = &off_1004338D0;
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_1004337E8;
  *(a1 + 16) = off_100433820;
  *(a1 + 56) = &off_100433858;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

std::string *sub_100040D4C@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_100040D80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100040D9C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100040E0C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100040E7C(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 32) = 0;
  *a1 = v3;
  *(a1 + 1136) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 2232) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  cntransformation::CNRigidTransformation::CNRigidTransformation((a1 + 2240));
  cntransformation::CNRigidTransformation::CNRigidTransformation((a1 + 2680));
  cntransformation::CNRigidTransformation::CNRigidTransformation((a1 + 3120));
  cntransformation::CNRigidTransformation::CNRigidTransformation((a1 + 3560));
  *(a1 + 4024) = 0x100000003;
  *(a1 + 4000) = off_100432C88;
  *(a1 + 4032) = a1 + 4040;
  *(a1 + 4008) = xmmword_1003C6DC0;
  *(a1 + 4040) = 0;
  *(a1 + 4048) = 0u;
  *(a1 + 4088) = 0x100000003;
  *(a1 + 4064) = off_100432C88;
  *(a1 + 4096) = a1 + 4104;
  *(a1 + 4072) = xmmword_1003C6DC0;
  *(a1 + 4104) = 0;
  *(a1 + 4112) = 0u;
  *(a1 + 4152) = 0x300000003;
  *(a1 + 4128) = off_100432B60;
  *(a1 + 4160) = a1 + 4168;
  *(a1 + 4136) = xmmword_1003C6D30;
  *(a1 + 4256) = 0;
  *(a1 + 4168) = 0u;
  *(a1 + 4184) = 0u;
  *(a1 + 4200) = 0u;
  *(a1 + 4216) = 0u;
  *(a1 + 4225) = 0u;
  return a1;
}

void sub_100040FDC(_Unwind_Exception *a1)
{
  *(v1 + 3440) = off_100432BB8;
  *(v1 + 3328) = off_100432BB8;
  *(v1 + 3216) = off_100432BB8;
  *(v1 + 3152) = off_100432BB8;
  *(v1 + 3000) = off_100432BB8;
  *(v1 + 2888) = off_100432BB8;
  *(v1 + 2776) = off_100432BB8;
  *(v1 + 2712) = off_100432BB8;
  *(v1 + 2560) = off_100432BB8;
  *(v1 + 2448) = off_100432BB8;
  *(v1 + 2336) = off_100432BB8;
  *(v1 + 2272) = off_100432BB8;
  sub_100044E0C(v1 + 1144);
  if (*(v1 + 1136) == 1)
  {
    sub_100037BF8(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000411A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100041AB0(a1);
  if (*(a1 + 1136) == 1)
  {
    v8 = *(a2 + 8);
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    *(a1 + 88) = *(a2 + 56);
    *(a1 + 72) = v10;
    *(a1 + 56) = v9;
    *(a1 + 40) = v8;
    v11 = *(a2 + 72);
    v12 = *(a2 + 88);
    v13 = *(a2 + 104);
    *(a1 + 152) = *(a2 + 120);
    *(a1 + 136) = v13;
    *(a1 + 120) = v12;
    *(a1 + 104) = v11;
    v14 = *(a2 + 136);
    v15 = *(a2 + 152);
    v16 = *(a2 + 168);
    *(a1 + 216) = *(a2 + 184);
    *(a1 + 200) = v16;
    *(a1 + 184) = v15;
    *(a1 + 168) = v14;
    sub_10003412C(a1 + 232, a2 + 200);
    sub_10003412C(a1 + 672, a2 + 640);
    v17 = *(a2 + 1096);
    *(a1 + 1112) = *(a2 + 1080);
    *(a1 + 1128) = v17;
  }

  else
  {
    *(a1 + 32) = off_100433178;
    v18 = *(a2 + 8);
    v19 = *(a2 + 24);
    v20 = *(a2 + 40);
    *(a1 + 88) = *(a2 + 56);
    *(a1 + 72) = v20;
    *(a1 + 56) = v19;
    *(a1 + 40) = v18;
    v21 = *(a2 + 72);
    v22 = *(a2 + 88);
    v23 = *(a2 + 104);
    *(a1 + 152) = *(a2 + 120);
    *(a1 + 136) = v23;
    *(a1 + 120) = v22;
    *(a1 + 104) = v21;
    v24 = *(a2 + 136);
    v25 = *(a2 + 152);
    v26 = *(a2 + 168);
    *(a1 + 216) = *(a2 + 184);
    *(a1 + 200) = v26;
    *(a1 + 184) = v25;
    *(a1 + 168) = v24;
    sub_10003E58C((a1 + 232), a2 + 200);
    sub_10003E58C((a1 + 672), a2 + 640);
    v27 = *(a2 + 1080);
    *(a1 + 1128) = *(a2 + 1096);
    *(a1 + 1112) = v27;
    *(a1 + 1136) = 1;
  }

  v85 = *(a3 + 6);
  v68 = *(a4 + 6);
  v28 = CNTimeSpan::operator-();
  v30 = v29 + v28;
  memset(buf, 0, sizeof(buf));
  CNTimeSpan::SetTimeSpan(buf, 0, 0.0);
  if (v30 != *&buf[8] + *buf)
  {
    if (qword_10045B050 == -1)
    {
      v46 = qword_10045B058;
      result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      sub_100383040();
      v46 = qword_10045B058;
      result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Attempted VL synchronization with two VIO estimates from different sessions", buf, 2u);
    return 0;
  }

  sub_10003E3B0(buf);
  sub_10003E3B0(&v85);
  v31 = *a3;
  v32 = *a4;
  v33 = *(a4 + 1);
  if ((*a3 || (a3[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v32 || (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v31 != v32)
  {
    if (v31 < v32)
    {
      goto LABEL_11;
    }
  }

  else if (*(a3 + 1) < v33)
  {
LABEL_11:
    v34 = *(a3 + 11);
    v111 = *(a3 + 10);
    v112 = v34;
    v113 = *(a3 + 192);
    v35 = *(a3 + 7);
    v107 = *(a3 + 6);
    v108 = v35;
    v36 = *(a3 + 8);
    v110 = *(a3 + 9);
    v109 = v36;
    v37 = *(a3 + 3);
    v103 = *(a3 + 2);
    v104 = v37;
    v38 = *(a3 + 4);
    v106 = *(a3 + 5);
    v105 = v38;
    v39 = *a3;
    v102 = *(a3 + 1);
    *buf = v39;
    sub_10003412C(v114, (a3 + 25));
    sub_10003412C(v115, (a3 + 80));
    v116 = *(a3 + 540);
    v117 = *(a3 + 1082);
    v40 = *(a4 + 11);
    v95 = *(a4 + 10);
    v96 = v40;
    v97 = *(a4 + 192);
    v41 = *(a4 + 7);
    v91 = *(a4 + 6);
    v92 = v41;
    v42 = *(a4 + 8);
    v94 = *(a4 + 9);
    v93 = v42;
    v43 = *(a4 + 3);
    v87 = *(a4 + 2);
    v88 = v43;
    v44 = *(a4 + 4);
    v90 = *(a4 + 5);
    v89 = v44;
    v45 = *a4;
    v86 = *(a4 + 1);
    v85 = v45;
    sub_10003412C(v98, (a4 + 25));
    sub_10003412C(v99, (a4 + 80));
    goto LABEL_17;
  }

  v48 = *(a4 + 11);
  v111 = *(a4 + 10);
  v112 = v48;
  v113 = *(a4 + 192);
  v49 = *(a4 + 7);
  v107 = *(a4 + 6);
  v108 = v49;
  v50 = *(a4 + 8);
  v110 = *(a4 + 9);
  v109 = v50;
  v51 = *(a4 + 3);
  v103 = *(a4 + 2);
  v104 = v51;
  v52 = *(a4 + 4);
  v106 = *(a4 + 5);
  v105 = v52;
  v53 = *a4;
  v102 = *(a4 + 1);
  *buf = v53;
  sub_10003412C(v114, (a4 + 25));
  sub_10003412C(v115, (a4 + 80));
  v116 = *(a4 + 540);
  v117 = *(a4 + 1082);
  v54 = *(a3 + 11);
  v95 = *(a3 + 10);
  v96 = v54;
  v97 = *(a3 + 192);
  v55 = *(a3 + 7);
  v91 = *(a3 + 6);
  v92 = v55;
  v56 = *(a3 + 8);
  v94 = *(a3 + 9);
  v93 = v56;
  v57 = *(a3 + 3);
  v87 = *(a3 + 2);
  v88 = v57;
  v58 = *(a3 + 4);
  v90 = *(a3 + 5);
  v89 = v58;
  v59 = *a3;
  v86 = *(a3 + 1);
  v85 = v59;
  sub_10003412C(v98, (a3 + 25));
  sub_10003412C(v99, (a3 + 80));
  a4 = a3;
LABEL_17:
  v99[220] = *(a4 + 540);
  v100 = *(a4 + 1082);
  v84 = *(a2 + 104);
  sub_10003E3B0(&v68);
  v118 = *buf;
  v60 = CNTimeSpan::operator-();
  if (fabs(v61 + v60) <= 0.001)
  {
    result = sub_100041CC0(buf);
    if (!result)
    {
      return result;
    }

    v78 = v111;
    v79 = v112;
    v80 = v113;
    v74 = v107;
    v75 = v108;
    v76 = v109;
    v77 = v110;
    v70 = v103;
    v71 = v104;
    v72 = v105;
    v73 = v106;
    v68 = *buf;
    v69 = v102;
    sub_10003412C(v81, v114);
    sub_10003412C(v82, v115);
    v66 = buf;
LABEL_27:
    v67 = v66 + 1080;
    v82[220] = *v67;
    v83 = v67[2];
    goto LABEL_28;
  }

  v118 = v85;
  v62 = CNTimeSpan::operator-();
  if (fabs(v63 + v62) <= 0.001)
  {
    result = sub_100041CC0(&v85);
    if (!result)
    {
      return result;
    }

    v78 = v95;
    v79 = v96;
    v80 = v97;
    v74 = v91;
    v75 = v92;
    v76 = v93;
    v77 = v94;
    v70 = v87;
    v71 = v88;
    v72 = v89;
    v73 = v90;
    v68 = v85;
    v69 = v86;
    sub_10003412C(v81, v98);
    sub_10003412C(v82, v99);
    v66 = &v85;
    goto LABEL_27;
  }

  if (!v84)
  {
    v64 = *(&v84 + 1);
    if ((*(&v84 + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (*(&v84 + 1) >= *&buf[8])
      {
        v65 = *(&v85 + 1);
        goto LABEL_41;
      }

      return 0;
    }
  }

  if ((*buf || (*&buf[8] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v84 != *buf)
  {
    if (v84 < *buf)
    {
      return 0;
    }
  }

  else if (*(&v84 + 1) < *&buf[8])
  {
    return 0;
  }

  v65 = *(&v85 + 1);
  if (v84 || (v64 = *(&v84 + 1), (*(&v84 + 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
  {
    if ((v85 || (*(&v85 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v84 != v85)
    {
      if (v84 > v85)
      {
        return 0;
      }

      goto LABEL_45;
    }

    v64 = *(&v84 + 1);
  }

LABEL_41:
  if (v64 > v65)
  {
    return 0;
  }

LABEL_45:
  result = sub_100041CC0(buf);
  if (result)
  {
    result = sub_100041CC0(&v85);
    if (result)
    {
      if (!sub_100042544(&v84, buf, &v85, &v68))
      {
        return 0;
      }

LABEL_28:
      v122 = 0u;
      v123 = 0u;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      CNTimeSpan::SetTimeSpan(&v118, 0, 0.0);
      LOBYTE(v119) = 0;
      *(&v119 + 1) = 0;
      *&v120 = 0;
      CNTimeSpan::SetTimeSpan((&v119 + 8), 0, 0.0);
      BYTE8(v120) = 0;
      v121 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v121, 0, 0.0);
      LOBYTE(v122) = 0;
      *(&v122 + 1) = 0;
      *&v123 = 0;
      CNTimeSpan::SetTimeSpan((&v122 + 8), 0, 0.0);
      *(&v123 + 1) = 0x7FF8000000000000;
      v71 = v121;
      v72 = v122;
      v69 = v119;
      v73 = v123;
      v70 = v120;
      v68 = v84;
      v83 = 1;
      return sub_1000433C8(a1, &v68, a2);
    }
  }

  return result;
}

void sub_1000419A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000442A0(&a9);
  sub_1000442A0(&STACK[0x450]);
  sub_1000442A0(&STACK[0x890]);
  _Unwind_Resume(a1);
}

void sub_100041AB0(uint64_t a1)
{
  *(a1 + 28) = 0;
  *(a1 + 24) = 0;
  if (*(a1 + 1136) == 1)
  {
    sub_100037BF8((a1 + 32));
    *(a1 + 1136) = 0;
  }

  if (*(a1 + 2232) == 1)
  {
    *(a1 + 2104) = off_100432BB8;
    *(a1 + 1992) = off_100432BB8;
    *(a1 + 1880) = off_100432BB8;
    *(a1 + 1816) = off_100432BB8;
    *(a1 + 1664) = off_100432BB8;
    *(a1 + 1552) = off_100432BB8;
    *(a1 + 1440) = off_100432BB8;
    *(a1 + 1376) = off_100432BB8;
    *(a1 + 2232) = 0;
  }

  sub_100044884(a1 + 2240);
  sub_100044884(a1 + 2680);
  sub_100044884(a1 + 3120);
  sub_100044884(a1 + 3560);
  *(a1 + 4008) = xmmword_1003C6DC0;
  v2 = *(a1 + 4032);
  *v2 = 0;
  *(v2 + 8) = 0u;
  *(a1 + 4072) = xmmword_1003C6DC0;
  v3 = *(a1 + 4096);
  *v3 = 0;
  *(v3 + 8) = 0u;
  *(a1 + 4136) = xmmword_1003C6D30;
  v4 = *(a1 + 4160);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0uLL;
  *(v4 + 56) = 0uLL;
  if (*(a1 + 4256) == 1)
  {
    *(a1 + 4256) = 0;
  }
}

uint64_t sub_100041CC0(uint64_t a1)
{
  if (*(a1 + 1082))
  {
    return 1;
  }

  v127[13] = v1;
  v127[14] = v2;
  v124 = 0x300000003;
  v119 = off_100432B60;
  v5 = *(a1 + 416);
  v6 = *(a1 + 420);
  v120 = v5;
  v121 = v6;
  v7 = (v6 * v5);
  v122 = v6 * v5;
  v123 = v5;
  v125 = v126;
  v8 = *(a1 + 424);
  if (v8 > 3)
  {
    v16 = *(a1 + 440);
    v17 = (v8 - 1) >> 1;
    v18 = v16;
    v19 = v126;
    do
    {
      v20 = *v18++;
      *v19++ = v20;
      --v17;
    }

    while (v17);
    *&v126[v8 - 2] = *(v16 + 8 * (v8 - 2));
  }

  else
  {
    if (v7 < 1)
    {
      goto LABEL_14;
    }

    v9 = *(a1 + 440);
    if (v7 < 6 || &v119 - v9 + 40 < 0x20)
    {
      v10 = 0;
LABEL_8:
      v11 = v7 - v10;
      v12 = 8 * v10;
      v13 = &(&v119)[v10 + 5];
      v14 = (v9 + v12);
      do
      {
        v15 = *v14++;
        *v13++ = v15;
        --v11;
      }

      while (v11);
      goto LABEL_14;
    }

    v10 = v7 & 0x7FFFFFFC;
    v94 = (v9 + 16);
    v95 = v127;
    v96 = v10;
    do
    {
      v97 = *v94;
      *(v95 - 1) = *(v94 - 1);
      *v95 = v97;
      v94 += 2;
      v95 += 2;
      v96 -= 4;
    }

    while (v96);
    if (v10 != v7)
    {
      goto LABEL_8;
    }
  }

LABEL_14:
  if (v5 < 1)
  {
    v22 = 0.0;
    v26 = 4.0;
    if (fabs(0.0) >= 2.22044605e-16)
    {
LABEL_20:
      v26 = 1.0 / v22 * 4.0;
    }
  }

  else
  {
    v21 = v5 + 1;
    v22 = 0.0;
    v23 = 0;
    if (v5 == 1)
    {
      goto LABEL_16;
    }

    if (v21 < 0)
    {
      v28 = ~v5;
    }

    else
    {
      v28 = v5 + 1;
    }

    v29 = v28 * (v5 - 1);
    v30 = (v29 & 0x80000000) != 0;
    if (v21 < 0)
    {
      v30 = v29 > 0x80000000;
    }

    v31 = (v29 & 0xFFFFFFFF00000000) != 0;
    if (v30)
    {
      goto LABEL_16;
    }

    if (v31)
    {
      goto LABEL_16;
    }

    v32 = 0;
    v23 = v5 & 0x7FFFFFFE;
    v33 = v23;
    do
    {
      v22 = v22 + *&v126[v32] + *&v126[v21 + v32];
      v32 += 2 * v5 + 2;
      v33 -= 2;
    }

    while (v33);
    if (v23 != v5)
    {
LABEL_16:
      v24 = v5 - v23;
      v25 = v21 * v23;
      do
      {
        v22 = v22 + *&v126[v25];
        v25 += v21;
        --v24;
      }

      while (v24);
    }

    v26 = 4.0;
    if (v22 < 1.0)
    {
      v26 = 4.0;
      if (fabs(v22) >= 2.22044605e-16)
      {
        goto LABEL_20;
      }
    }
  }

  v115 = 0x300000003;
  v110 = off_100432B60;
  if (v7 <= 0)
  {
    v120 = v5;
    v121 = v6;
    v122 = v6 * v5;
    v123 = v5;
    result = cntransformation::CNRigidTransformation::SetPpp();
    if (!result)
    {
      return result;
    }

    goto LABEL_54;
  }

  if (v7 > 3)
  {
    v27 = v7 & 0x7FFFFFFC;
    v34 = v127;
    v35 = v118;
    v36 = v27;
    do
    {
      v37 = vmulq_n_f64(*v34, v26);
      v35[-1] = vmulq_n_f64(v34[-1], v26);
      *v35 = v37;
      v34 += 2;
      v35 += 2;
      v36 -= 4;
    }

    while (v36);
    if (v27 == v7)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = 0;
  }

  v38 = v7 - v27;
  v39 = 8 * v27 + 40;
  v40 = (&v110 + v39);
  v41 = (&v119 + v39);
  do
  {
    v42 = *v41++;
    *v40++ = v26 * v42;
    --v38;
  }

  while (v38);
LABEL_44:
  if (v7 > 3)
  {
    v43 = (v7 - 1) >> 1;
    v44 = v126;
    v45 = v117;
    do
    {
      v46 = *v44++;
      *v45++ = vmulq_n_f64(v46, v26);
      --v43;
    }

    while (v43);
    *&v117[(v7 - 2)] = vmulq_n_f64(*&v126[(v7 - 2)], v26);
  }

  else
  {
    v47 = (v6 * v5);
    v48 = v117;
    v49 = v126;
    do
    {
      v50 = *v49++;
      *v48++ = v26 * v50;
      --v47;
    }

    while (v47);
  }

  v120 = v5;
  v121 = v6;
  v122 = v6 * v5;
  v123 = v5;
  if (v7 > 3)
  {
    v51 = v7 - 2;
    memcpy(v126, v117, 16 * ((v7 - 1) >> 1));
    *&v126[v51] = *&v117[v51];
    result = cntransformation::CNRigidTransformation::SetPpp();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    memcpy(v126, v117, 8 * v7);
    result = cntransformation::CNRigidTransformation::SetPpp();
    if (!result)
    {
      return result;
    }
  }

LABEL_54:
  v115 = 0x300000003;
  v110 = off_100432B60;
  v52 = *(a1 + 304);
  v53 = *(a1 + 308);
  v111 = v52;
  v112 = v53;
  v54 = (v53 * v52);
  v113 = v53 * v52;
  v114 = v52;
  v116 = v117;
  v55 = *(a1 + 312);
  if (v55 > 3)
  {
    v63 = *(a1 + 328);
    v64 = (v55 - 1) >> 1;
    v65 = v63;
    v66 = v117;
    do
    {
      v67 = *v65++;
      *v66++ = v67;
      --v64;
    }

    while (v64);
    *&v117[v55 - 2] = *(v63 + 8 * (v55 - 2));
  }

  else
  {
    if (v54 < 1)
    {
      goto LABEL_65;
    }

    v56 = *(a1 + 328);
    if (v54 < 6 || &v110 - v56 + 40 < 0x20)
    {
      v57 = 0;
LABEL_59:
      v58 = v54 - v57;
      v59 = 8 * v57;
      v60 = &(&v110)[v57 + 5];
      v61 = (v56 + v59);
      do
      {
        v62 = *v61++;
        *v60++ = v62;
        --v58;
      }

      while (v58);
      goto LABEL_65;
    }

    v57 = v54 & 0x7FFFFFFC;
    v103 = (v56 + 16);
    v104 = v118;
    v105 = v57;
    do
    {
      v106 = *v103;
      *(v104 - 1) = *(v103 - 1);
      *v104 = v106;
      v103 += 2;
      v104 += 2;
      v105 -= 4;
    }

    while (v105);
    if (v57 != v54)
    {
      goto LABEL_59;
    }
  }

LABEL_65:
  if (v52 < 1)
  {
    v69 = 0.0;
    v73 = 16.0;
    if (fabs(0.0) >= 2.22044605e-16)
    {
LABEL_71:
      v73 = 0.00121846968 / v69 * 16.0;
    }
  }

  else
  {
    v68 = v52 + 1;
    v69 = 0.0;
    v70 = 0;
    if (v52 == 1)
    {
      goto LABEL_67;
    }

    if (v68 < 0)
    {
      v75 = ~v52;
    }

    else
    {
      v75 = v52 + 1;
    }

    v76 = v75 * (v52 - 1);
    v77 = (v76 & 0x80000000) != 0;
    if (v68 < 0)
    {
      v77 = v76 > 0x80000000;
    }

    v78 = (v76 & 0xFFFFFFFF00000000) != 0;
    if (v77)
    {
      goto LABEL_67;
    }

    if (v78)
    {
      goto LABEL_67;
    }

    v79 = 0;
    v70 = v52 & 0x7FFFFFFE;
    v80 = v70;
    do
    {
      v69 = v69 + *&v117[v79] + *&v117[v68 + v79];
      v79 += 2 * v52 + 2;
      v80 -= 2;
    }

    while (v80);
    if (v70 != v52)
    {
LABEL_67:
      v71 = v52 - v70;
      v72 = v68 * v70;
      do
      {
        v69 = v69 + *&v117[v72];
        v72 += v68;
        --v71;
      }

      while (v71);
    }

    v73 = 16.0;
    if (v69 < 0.00121846968)
    {
      v73 = 16.0;
      if (fabs(v69) >= 2.22044605e-16)
      {
        goto LABEL_71;
      }
    }
  }

  v107[3] = 0x300000003;
  v107[0] = off_100432B60;
  if (v54 <= 0)
  {
    v111 = v52;
    v112 = v53;
    v113 = v53 * v52;
    v114 = v52;
    result = cntransformation::CNRigidTransformation::SetPrr();
    if (!result)
    {
      return result;
    }

    goto LABEL_78;
  }

  if (v54 > 3)
  {
    v74 = v54 & 0x7FFFFFFC;
    v81 = v118;
    v82 = &v109;
    v83 = v74;
    do
    {
      v84 = vmulq_n_f64(*v81, v73);
      v82[-1] = vmulq_n_f64(v81[-1], v73);
      *v82 = v84;
      v81 += 2;
      v82 += 2;
      v83 -= 4;
    }

    while (v83);
    if (v74 == v54)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v74 = 0;
  }

  v85 = v54 - v74;
  v86 = 8 * v74 + 40;
  v87 = (v107 + v86);
  v88 = (&v110 + v86);
  do
  {
    v89 = *v88++;
    *v87++ = v73 * v89;
    --v85;
  }

  while (v85);
LABEL_96:
  if (v54 > 3)
  {
    v90 = (v54 - 1) >> 1;
    v91 = v117;
    v92 = v108;
    do
    {
      v93 = *v91++;
      *v92++ = vmulq_n_f64(v93, v73);
      --v90;
    }

    while (v90);
    *&v108[(v54 - 2)] = vmulq_n_f64(*&v117[(v54 - 2)], v73);
  }

  else
  {
    v98 = (v53 * v52);
    v99 = v108;
    v100 = v117;
    do
    {
      v101 = *v100++;
      *v99++ = v73 * v101;
      --v98;
    }

    while (v98);
  }

  v111 = v52;
  v112 = v53;
  v113 = v53 * v52;
  v114 = v52;
  if (v54 > 3)
  {
    v102 = v54 - 2;
    memcpy(v117, v108, 16 * ((v54 - 1) >> 1));
    *&v117[v102] = *&v108[v102];
    result = cntransformation::CNRigidTransformation::SetPrr();
    if (!result)
    {
      return result;
    }

LABEL_78:
    *(a1 + 1082) = 1;
    return result;
  }

  memcpy(v117, v108, 8 * v54);
  result = cntransformation::CNRigidTransformation::SetPrr();
  if (result)
  {
    goto LABEL_78;
  }

  return result;
}

BOOL sub_100042544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *a1;
  if (!*a1)
  {
    v10 = *(a1 + 8);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      if (v10 < v8)
      {
        return 0;
      }

      v11 = *a3;
      v12 = *(a3 + 8);
      goto LABEL_16;
    }
  }

  if (v7)
  {
    v13 = 1;
  }

  else
  {
    v13 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (v13 && v9 != v7)
  {
    if (v9 < v7)
    {
      return 0;
    }
  }

  else if (*(a1 + 8) < v8)
  {
    return 0;
  }

  v11 = *a3;
  v12 = *(a3 + 8);
  if (!v9)
  {
    v10 = *(a1 + 8);
    if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_16:
      v14 = v10 <= v12;
      goto LABEL_24;
    }
  }

  if (!v11 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    if (*(a1 + 8) > v12)
    {
      return 0;
    }

    v9 = 0;
    goto LABEL_26;
  }

  v14 = v9 <= v11;
  if (v9 == v11)
  {
    if (*(a1 + 8) > v12)
    {
      return 0;
    }

    goto LABEL_26;
  }

LABEL_24:
  v9 = v11;
  if (!v14)
  {
    return 0;
  }

LABEL_26:
  *v198 = v9;
  *&v198[8] = v12;
  v193 = v7;
  *&v194 = v8;
  v15 = CNTimeSpan::operator-();
  v17 = v16 + v15;
  if (fabs(v17) >= 2.22044605e-16)
  {
    v18 = *(a3 + 8);
    *v198 = *a3;
    *&v198[8] = v18;
    v19 = CNTimeSpan::operator-();
    v21.f64[0] = (v20 + v19) / v17;
    v179 = v21;
    *v198 = *a2;
    v22 = CNTimeSpan::operator-();
    v199 = 0x100000003;
    *v198 = off_100432C88;
    v25 = v201;
    v200 = v201;
    v26 = *(a2 + 240);
    v27 = *(a2 + 244);
    *&v198[8] = v26;
    *&v198[12] = v27;
    v28 = (v27 * v26);
    *&v198[16] = v28;
    *&v198[20] = v26;
    if (v28 > 3)
    {
      v33 = *(a2 + 264);
      v34 = (v28 - 1) >> 1;
      v35 = v33;
      v36 = v201;
      do
      {
        v37 = *v35++;
        *v36++ = vmulq_n_f64(v37, v179.f64[0]);
        --v34;
      }

      while (v34);
      *&v201[(v28 - 2)] = vmulq_n_f64(*(v33 + 8 * (v28 - 2)), v179.f64[0]);
    }

    else if (v28 >= 1)
    {
      v29 = *(a2 + 264);
      v30 = v201;
      v31 = (v27 * v26);
      do
      {
        v32 = *v29++;
        *v30++ = v179.f64[0] * v32;
        --v31;
      }

      while (v31);
    }

    v195 = 0x100000003;
    v24.f64[0] = (v23 + v22) / v17;
    v180 = v24;
    v193 = off_100432C88;
    v38 = v197;
    v196 = v197;
    v39 = *(a3 + 244);
    LODWORD(v194) = *(a3 + 240);
    DWORD1(v194) = v39;
    v40 = (v39 * v194);
    *(&v194 + 1) = __PAIR64__(v194, v40);
    if (v40 > 3)
    {
      v44 = (v40 - 2);
      v45 = *(a3 + 264);
      v46 = (v40 - 1) >> 1;
      v47 = v45;
      v48 = v197;
      do
      {
        v49 = *v47++;
        *v48++ = vmulq_n_f64(v49, v24.f64[0]);
        --v46;
      }

      while (v46);
      *&v197[v44] = vmulq_n_f64(*(v45 + 8 * v44), v24.f64[0]);
    }

    else if (v40 >= 1)
    {
      v41 = *(a3 + 264);
      v42 = v197;
      do
      {
        v43 = *v41++;
        *v42++ = v24.f64[0] * v43;
        --v40;
      }

      while (v40);
    }

    v209 = 0x100000003;
    v204 = off_100432C88;
    v50 = v211;
    v210 = v211;
    v205 = v26;
    v206 = v27;
    v207 = v27 * v26;
    v208 = v26;
    if (v28 > 3)
    {
      v56 = (v28 - 1) >> 1;
      v57 = v201;
      v58 = v197;
      v59 = v211;
      do
      {
        v60 = *v57++;
        v61 = v60;
        v62 = *v58++;
        *v59++ = vaddq_f64(v61, v62);
        --v56;
      }

      while (v56);
      *&v211[(v28 - 2)] = vaddq_f64(*&v201[(v28 - 2)], *&v197[(v28 - 2)]);
    }

    else if (v28 >= 1)
    {
      v51 = v211;
      v52 = (v27 * v26);
      do
      {
        v53 = *v25++;
        v54 = v53;
        v55 = *v38++;
        *v51++ = v54 + v55;
        --v52;
      }

      while (v52);
    }

    if ((a4 + 232) != &v204)
    {
      *(a4 + 240) = v26;
      *(a4 + 244) = v27;
      *(a4 + 248) = v28;
      *(a4 + 252) = v26;
      if (v28 > 3)
      {
        v65 = (v28 - 2);
        v66 = *(a4 + 264);
        v67 = (v28 - 1) >> 1;
        v68 = v211;
        v69 = v66;
        do
        {
          v70 = *v68++;
          *v69++ = v70;
          --v67;
        }

        while (v67);
        *(v66 + 8 * v65) = *&v211[v65];
      }

      else if (v28 >= 1)
      {
        v63 = *(a4 + 264);
        do
        {
          v64 = *v50++;
          *v63++ = v64;
          --v28;
        }

        while (v28);
      }
    }

    cnrotation::CNRotation::CNRotation(v203);
    if (!cnrotation::Slerp((a2 + 200), (a3 + 200), v203, v180.f64[0], 8, v71))
    {
      cnrotation::CNRotation::operator=();
      cnrotation::Inv(v198, (a2 + 200), v72);
      cnrotation::Cat(v202, (a4 + 200), v198, v73);
      cnrotation::CNRotation::RotationMatrix(&v190, v202);
      v195 = 0x300000003;
      v193 = off_100432B60;
      v75 = v197;
      v196 = v197;
      v76 = *(a2 + 304);
      v77 = v191;
      *&v194 = __PAIR64__(HIDWORD(v76), v191);
      v78 = HIDWORD(v76);
      DWORD2(v194) = HIDWORD(v76) * v191;
      HIDWORD(v194) = v191;
      v79.i64[0] = v76;
      v79.i64[1] = v191;
      v80 = v192;
      if (vmaxvq_u32(v79) > 5)
      {
        v177 = *(a2 + 328);
        cblas_dgemm_NEWLAPACK();
      }

      else if (v191 && HIDWORD(v76))
      {
        v81 = HIDWORD(v191);
        if (HIDWORD(v191))
        {
          v82 = *(a2 + 328);
          v83 = 8 * v191;
          if (HIDWORD(v191) >= 4)
          {
            v122 = 0;
            v123 = 8 * v76;
            v124 = (v82 + 2);
            do
            {
              v125 = &v197[v122 * v77];
              if (v77 == 1)
              {
                v126 = 0.0;
                v74 = v80 + 1;
                v127 = v124;
                v128 = v81 & 0xFFFFFFFC;
                do
                {
                  v129 = vmulq_f64(v74[-1], v127[-1]);
                  v130 = vmulq_f64(*v74, *v127);
                  v126 = v126 + v129.f64[0] + v129.f64[1] + v130.f64[0] + v130.f64[1];
                  v127 += 2;
                  v74 += 2;
                  v128 -= 4;
                }

                while (v128);
                if ((v81 & 0xFFFFFFFC) != v81)
                {
                  v74 = &v80[2 * (v81 >> 2)];
                  v131 = v81 & 0xFFFFFFFC;
                  do
                  {
                    v126 = v126 + v74->f64[0] * v82[v131++];
                    v74 = (v74 + v83);
                  }

                  while (v81 != v131);
                }

                *v125 = v126;
              }

              else
              {
                v74 = 0;
                v132 = v80;
                do
                {
                  v133 = 0.0;
                  v134 = v132;
                  v135 = v82;
                  v136 = v81;
                  do
                  {
                    v137 = *v135++;
                    v133 = v133 + *v134 * v137;
                    v134 = (v134 + v83);
                    --v136;
                  }

                  while (v136);
                  v125[v74] = v133;
                  v74 = (v74 + 1);
                  ++v132;
                }

                while (v74 != v77);
              }

              ++v122;
              v82 = (v82 + v123);
              v124 = (v124 + v123);
            }

            while (v122 != v78);
          }

          else
          {
            v84 = 0;
            do
            {
              v85 = &v82[v84 * v76];
              v86 = v80;
              v87 = v75;
              v88 = v77;
              do
              {
                v89 = *v86 * *v85 + 0.0;
                if (v81 != 1)
                {
                  v89 = v89 + v86[v77] * v85[1];
                  if (v81 != 2)
                  {
                    v89 = v89 + v86[2 * v77] * v85[2];
                  }
                }

                *v87++ = v89;
                ++v86;
                v88 = (v88 - 1);
              }

              while (v88);
              ++v84;
              v75 = (v75 + v83);
            }

            while (v84 != HIDWORD(v76));
          }
        }

        else
        {
          bzero(v197, 8 * v191 * HIDWORD(v76));
        }
      }

      cnrotation::Inv(v183, v202, v74);
      cnrotation::CNRotation::RotationMatrix(&v184, v183);
      v199 = 0x300000003;
      *v198 = off_100432B60;
      v90 = v201;
      v200 = v201;
      v91 = v194;
      *&v198[8] = __PAIR64__(DWORD1(v185), v194);
      v92 = DWORD1(v185);
      *&v198[16] = DWORD1(v185) * v194;
      *&v198[20] = v194;
      v93.i64[0] = v185;
      v93.i64[1] = v194;
      v94 = v196;
      if (vmaxvq_u32(v93) > 5)
      {
        cblas_dgemm_NEWLAPACK();
      }

      else if (v194 && DWORD1(v185))
      {
        v95 = DWORD1(v194);
        if (DWORD1(v194))
        {
          v96 = v187;
          v97 = v185;
          if (DWORD1(v194) >= 4)
          {
            v138 = 0;
            v139 = 8 * v185;
            v140 = 8 * v194;
            v141 = v187 + 1;
            do
            {
              v142 = &v201[v138 * v91];
              if (v91 == 1)
              {
                v143 = 0.0;
                v144 = v94 + 1;
                v145 = v141;
                v146 = v95 & 0xFFFFFFFC;
                do
                {
                  v147 = vmulq_f64(v144[-1], v145[-1]);
                  v148 = vmulq_f64(*v144, *v145);
                  v143 = v143 + v147.f64[0] + v147.f64[1] + v148.f64[0] + v148.f64[1];
                  v145 += 2;
                  v144 += 2;
                  v146 -= 4;
                }

                while (v146);
                if ((v95 & 0xFFFFFFFC) != v95)
                {
                  f64 = v94[2 * (v95 >> 2)].f64;
                  v150 = v95 & 0xFFFFFFFC;
                  do
                  {
                    v143 = v143 + *f64 * v96[v150++];
                    f64 = (f64 + v140);
                  }

                  while (v95 != v150);
                }

                *v142 = v143;
              }

              else
              {
                v151 = 0;
                v152 = v94;
                do
                {
                  v153 = 0.0;
                  v154 = v152;
                  v155 = v96;
                  v156 = v95;
                  do
                  {
                    v157 = *v155++;
                    v153 = v153 + *v154 * v157;
                    v154 = (v154 + v140);
                    --v156;
                  }

                  while (v156);
                  v142[v151++] = v153;
                  ++v152;
                }

                while (v151 != v91);
              }

              ++v138;
              v96 = (v96 + v139);
              v141 = (v141 + v139);
            }

            while (v138 != v92);
          }

          else
          {
            v98 = 0;
            v99 = 8 * v194;
            do
            {
              v100 = &v96[v98 * v97];
              v101 = v94;
              v102 = v90;
              v103 = v91;
              do
              {
                v104 = *v101 * *v100 + 0.0;
                if (v95 != 1)
                {
                  v104 = v104 + v101[v91] * v100[1];
                  if (v95 != 2)
                  {
                    v104 = v104 + v101[2 * v91] * v100[2];
                  }
                }

                *v102++ = v104;
                ++v101;
                --v103;
              }

              while (v103);
              ++v98;
              v90 = (v90 + v99);
            }

            while (v98 != v92);
          }
        }

        else
        {
          bzero(v201, 8 * v194 * DWORD1(v185));
        }
      }

      if (cntransformation::CNRigidTransformation::SetPrr())
      {
        cnrotation::CNRotation::RotationMatrix(&v193, v202);
        v199 = 0x300000003;
        *v198 = off_100432B60;
        v105 = v201;
        v200 = v201;
        v106 = *(a2 + 528);
        v107 = v194;
        *&v198[8] = __PAIR64__(HIDWORD(v106), v194);
        v108 = HIDWORD(v106);
        *&v198[16] = HIDWORD(v106) * v194;
        *&v198[20] = v194;
        v109.i64[0] = v106;
        v109.i64[1] = v194;
        v110 = v196;
        if (vmaxvq_u32(v109) > 5)
        {
          v178 = *(a2 + 552);
          cblas_dgemm_NEWLAPACK();
        }

        else if (v194 && HIDWORD(v106))
        {
          v111 = DWORD1(v194);
          if (DWORD1(v194))
          {
            v112 = *(a2 + 552);
            v113 = 8 * v194;
            if (DWORD1(v194) >= 4)
            {
              v158 = 0;
              v159 = 8 * v106;
              v160 = (v112 + 2);
              do
              {
                v161 = &v201[v158 * v107];
                if (v107 == 1)
                {
                  v162 = 0.0;
                  v163 = v110 + 1;
                  v164 = v160;
                  v165 = v111 & 0xFFFFFFFC;
                  do
                  {
                    v166 = vmulq_f64(v163[-1], v164[-1]);
                    v167 = vmulq_f64(*v163, *v164);
                    v162 = v162 + v166.f64[0] + v166.f64[1] + v167.f64[0] + v167.f64[1];
                    v164 += 2;
                    v163 += 2;
                    v165 -= 4;
                  }

                  while (v165);
                  if ((v111 & 0xFFFFFFFC) != v111)
                  {
                    v168 = v110[2 * (v111 >> 2)].f64;
                    v169 = v111 & 0xFFFFFFFC;
                    do
                    {
                      v162 = v162 + *v168 * v112[v169++];
                      v168 = (v168 + v113);
                    }

                    while (v111 != v169);
                  }

                  *v161 = v162;
                }

                else
                {
                  v170 = 0;
                  v171 = v110;
                  do
                  {
                    v172 = 0.0;
                    v173 = v171;
                    v174 = v112;
                    v175 = v111;
                    do
                    {
                      v176 = *v174++;
                      v172 = v172 + *v173 * v176;
                      v173 = (v173 + v113);
                      --v175;
                    }

                    while (v175);
                    v161[v170++] = v172;
                    ++v171;
                  }

                  while (v170 != v107);
                }

                ++v158;
                v112 = (v112 + v159);
                v160 = (v160 + v159);
              }

              while (v158 != v108);
            }

            else
            {
              v114 = 0;
              do
              {
                v115 = &v112[v114 * v106];
                v116 = v110;
                v117 = v105;
                v118 = v107;
                do
                {
                  v119 = *v116 * *v115 + 0.0;
                  if (v111 != 1)
                  {
                    v119 = v119 + v116[v107] * v115[1];
                    if (v111 != 2)
                    {
                      v119 = v119 + v116[2 * v107] * v115[2];
                    }
                  }

                  *v117++ = v119;
                  ++v116;
                  --v118;
                }

                while (v118);
                ++v114;
                v105 = (v105 + v113);
              }

              while (v114 != HIDWORD(v106));
            }
          }

          else
          {
            bzero(v201, 8 * v194 * HIDWORD(v106));
          }
        }

        cntransformation::CNRigidTransformation::SetPrp();
        v199 = 0x300000003;
        *v198 = off_100432B60;
        v200 = v201;
        *&v198[8] = xmmword_1003C6D30;
        memset(v201, 0, sizeof(v201));
        if (sub_100044AF8(a2 + 408, v198))
        {
          v195 = 0x300000003;
          v193 = off_100432B60;
          v196 = v197;
          v194 = xmmword_1003C6D30;
          memset(v197, 0, sizeof(v197));
          if (sub_100044AF8(a3 + 408, &v193))
          {
            sub_100044D64(v198, &v184, v179);
            sub_100044D64(&v193, v183, v180);
            sub_100044CA4(&v184, v183, &v190);
            v186 = 0x300000003;
            v184 = off_100432B60;
            v187 = v188;
            v185 = xmmword_1003C6D30;
            memset(v188, 0, sizeof(v188));
            v189 = 0;
            result = sub_100044AF8(&v190, &v184);
            if (!result)
            {
              return result;
            }

            if (cntransformation::CNRigidTransformation::SetPpp())
            {
              if (*(a2 + 1081) == 1 && *(a3 + 1081) == 1)
              {
                sub_100044A4C(a2 + 672, v182, v179);
                sub_100044A4C(a3 + 672, v181, v180);
                sub_100044988(v182, v181, v183);
                sub_100035430(a4 + 672, v183);
                cnrotation::CNRotation::CNRotation(v182);
                if (cnrotation::Slerp((a2 + 640), (a3 + 640), v182, v180.f64[0], 8, v121))
                {
                  return 0;
                }

                cnrotation::CNRotation::operator=();
              }

              return 1;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1000433C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cntransformation::Cat(v235, (a2 + 640), (a2 + 200), a3);
  cntransformation::CNRigidTransformation::CNRigidTransformation(v234);
  v227 = 0x300000003;
  v225 = off_100432B60;
  v228 = v229;
  v226 = xmmword_1003C6D30;
  v229[0] = 0;
  v231 = 0;
  *&v232[8] = 0u;
  v230 = 0u;
  v233 = 0;
  v229[1] = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *v232 = _Q0;
  sub_100036460(v224, &v225);
  cnrotation::CNRotation::operator=();
  cntransformation::Cat(v223, (a3 + 200), v234, v11);
  cntransformation::Cat(buf, v223, v235, v12);
  sub_10003412C(a1 + 2240, buf);
  *(a1 + 26) = 1;
  sub_10003E58C(buf, a2 + 640);
  cntransformation::Inv(&v236, buf, v13);
  if ((a1 + 4064) != &v240)
  {
    v15 = v241[0];
    v16 = v241[1];
    *(a1 + 4072) = v241[0];
    *(a1 + 4076) = v16;
    v17 = (v16 * v15);
    *(a1 + 4080) = v17;
    *(a1 + 4084) = v15;
    if (v242 > 3)
    {
      v30 = (v242 - 2);
      v31 = *(a1 + 4096);
      v32 = v243;
      v33 = (v242 - 1) >> 1;
      v34 = v243;
      v35 = v31;
      do
      {
        v36 = *v34++;
        *v35++ = v36;
        --v33;
      }

      while (v33);
      *(v31 + 8 * v30) = *(v32 + 8 * v30);
    }

    else if (v17 >= 1)
    {
      v18 = 0;
      v19 = v243;
      v20 = *(a1 + 4096);
      if (v17 < 4)
      {
        goto LABEL_9;
      }

      if ((v20 - v243) < 0x20)
      {
        goto LABEL_9;
      }

      v18 = v17 & 0x7FFFFFFC;
      v21 = v243 + 1;
      v22 = (v20 + 16);
      v23 = v18;
      do
      {
        v24 = *v21;
        *(v22 - 1) = *(v21 - 1);
        *v22 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 4;
      }

      while (v23);
      if (v18 != v17)
      {
LABEL_9:
        v25 = v17 - v18;
        v26 = 8 * v18;
        v27 = (v20 + v26);
        v28 = (v19 + v26);
        do
        {
          v29 = *v28++;
          *v27++ = v29;
          --v25;
        }

        while (v25);
      }
    }
  }

  v218 = 0x100000003;
  v216 = off_100432C88;
  v217 = xmmword_1003C6DC0;
  v219 = &v220;
  v220 = 0;
  v222 = 0;
  v221 = 0;
  v247 = xmmword_1003C6DC0;
  v37 = v248;
  *v248 = 0;
  v37[1] = v221;
  v37[2] = v222;
  cntransformation::Cat(&v209, v223, buf, v14);
  sub_10003412C(a1 + 3120, &v209);
  *(a1 + 28) = 1;
  v38 = *(a1 + 2280);
  v39 = *(a1 + 2284);
  *(a1 + 4008) = v38;
  *(a1 + 4012) = v39;
  v40 = (v39 * v38);
  *(a1 + 4016) = v40;
  *(a1 + 4020) = v38;
  v41 = *(a1 + 2288);
  if (v41 > 3)
  {
    v54 = (v41 - 2);
    v55 = *(a1 + 4032);
    v56 = *(a1 + 2304);
    v57 = (v41 - 1) >> 1;
    v58 = v56;
    v59 = v55;
    do
    {
      v60 = *v58++;
      *v59++ = v60;
      --v57;
    }

    while (v57);
    *(v55 + 8 * v54) = *(v56 + 8 * v54);
  }

  else if (v40 >= 1)
  {
    v42 = 0;
    v43 = *(a1 + 2304);
    v44 = *(a1 + 4032);
    if (v40 < 4)
    {
      goto LABEL_22;
    }

    if ((v44 - v43) < 0x20)
    {
      goto LABEL_22;
    }

    v42 = v40 & 0x7FFFFFFC;
    v45 = (v43 + 16);
    v46 = (v44 + 16);
    v47 = v42;
    do
    {
      v48 = *v45;
      *(v46 - 1) = *(v45 - 1);
      *v46 = v48;
      v45 += 2;
      v46 += 2;
      v47 -= 4;
    }

    while (v47);
    if (v42 != v40)
    {
LABEL_22:
      v49 = v40 - v42;
      v50 = 8 * v42;
      v51 = (v44 + v50);
      v52 = (v43 + v50);
      do
      {
        v53 = *v52++;
        *v51++ = v53;
        --v49;
      }

      while (v49);
    }
  }

  *(a1 + 24) = 1;
  v61 = *(a1 + 2304);
  v62 = *(v61 + 2);
  v213 = 0x300000003;
  v211 = off_100432B60;
  v212 = xmmword_1003C6D30;
  v214 = &v215;
  v210 = 0;
  v63 = *v61;
  v237 = 0.0;
  v236 = 0.0;
  v238 = 0;
  *buf = v63;
  *&buf[16] = v62;
  if (!cnnavigation::ECEFToLLA())
  {
    (v209[2])(&v209, v236, v237);
  }

  v64 = v210;
  if (v210)
  {
    if (&v211 != (a1 + 4128))
    {
      v66 = v212;
      v65 = DWORD1(v212);
      *(a1 + 4136) = v212;
      *(a1 + 4140) = v65;
      v67 = (v65 * v66);
      *(a1 + 4144) = v67;
      *(a1 + 4148) = v66;
      v68 = DWORD2(v212);
      if (SDWORD2(v212) > 3)
      {
        v85 = *(a1 + 4160);
        v86 = v214;
        v87 = (DWORD2(v212) - 1) >> 1;
        v88 = v214;
        v89 = v85;
        do
        {
          v90 = *v88++;
          *v89++ = v90;
          --v87;
        }

        while (v87);
        *(v85 + 8 * (v68 - 2)) = *&v86[v68 - 2];
      }

      else if (v67 >= 1)
      {
        v69 = 0;
        v70 = v214;
        v71 = *(a1 + 4160);
        if (v67 < 4)
        {
          goto LABEL_39;
        }

        if ((v71 - v214) < 0x20)
        {
          goto LABEL_39;
        }

        v69 = v67 & 0x7FFFFFFC;
        v72 = (v214 + 2);
        v73 = (v71 + 16);
        v74 = v69;
        do
        {
          v75 = *v72;
          *(v73 - 1) = *(v72 - 1);
          *v73 = v75;
          v72 += 2;
          v73 += 2;
          v74 -= 4;
        }

        while (v74);
        if (v69 != v67)
        {
LABEL_39:
          v76 = v67 - v69;
          v77 = v69;
          v78 = (v71 + v77 * 8);
          v79 = &v70[v77];
          do
          {
            v80 = *v79++;
            *v78++ = v80;
            --v76;
          }

          while (v76);
        }
      }
    }

    *(a1 + 25) = 1;
    v218 = 0x100000003;
    v216 = off_100432C88;
    v219 = &v220;
    v91 = *(a1 + 4136);
    v92 = *(a1 + 2280);
    v93 = HIDWORD(v92);
    *&v217 = __PAIR64__(HIDWORD(v92), v91);
    DWORD2(v217) = HIDWORD(v92) * v91;
    v94.i64[0] = v91;
    v94.i64[1] = v92;
    HIDWORD(v217) = v91;
    v95 = *(a1 + 4160);
    v96 = v92;
    if (vmaxvq_u32(v94) > 5)
    {
      v205 = *(a1 + 2304);
      cblas_dgemm_NEWLAPACK();
    }

    else if (v91 && HIDWORD(v92))
    {
      if (HIDWORD(v91))
      {
        v97 = 0;
        v98 = *(a1 + 2304);
        v99 = 8 * v92;
        v100 = 8 * v91;
        v101 = v98 + 1;
        v102 = &v220;
        v103 = v98;
        do
        {
          if (HIDWORD(v91) > 3)
          {
            v109 = (&v220 + v97 * v91);
            if (v91 == 1)
            {
              v110 = 0.0;
              v111 = v95 + 1;
              v112 = v101;
              v113 = HIDWORD(v91) & 0xFFFFFFFC;
              do
              {
                v114 = vmulq_f64(v111[-1], v112[-1]);
                v115 = vmulq_f64(*v111, *v112);
                v110 = v110 + v114.f64[0] + v114.f64[1] + v115.f64[0] + v115.f64[1];
                v112 += 2;
                v111 += 2;
                v113 -= 4;
              }

              while (v113);
              if ((HIDWORD(v91) & 0xFFFFFFFC) != HIDWORD(v91))
              {
                f64 = v95[2 * (HIDWORD(v91) >> 2)].f64;
                v117 = HIDWORD(v91) & 0xFFFFFFFC;
                do
                {
                  v110 = v110 + *f64 * v103[v117++];
                  f64 = (f64 + v100);
                }

                while (HIDWORD(v91) != v117);
              }

              *v109 = v110;
            }

            else
            {
              v118 = 0;
              v119 = v95;
              do
              {
                v120 = 0.0;
                v121 = v119;
                v122 = v103;
                v123 = HIDWORD(v91);
                do
                {
                  v124 = *v122++;
                  v120 = v120 + *v121 * v124;
                  v121 = (v121 + v100);
                  --v123;
                }

                while (v123);
                v109[v118++] = v120;
                ++v119;
              }

              while (v118 != v91);
            }
          }

          else
          {
            v104 = &v98->f64[v97 * v96];
            v105 = v95;
            v106 = v102;
            v107 = v91;
            do
            {
              v108 = *v105 * *v104 + 0.0;
              if (HIDWORD(v91) != 1)
              {
                v108 = v108 + v105[v91] * v104[1];
                if (HIDWORD(v91) != 2)
                {
                  v108 = v108 + v105[2 * v91] * v104[2];
                }
              }

              *v106++ = v108;
              ++v105;
              --v107;
            }

            while (v107);
          }

          ++v97;
          v103 = (v103 + v99);
          v101 = (v101 + v99);
          v102 = (v102 + v100);
        }

        while (v97 != v93);
      }

      else
      {
        bzero(&v220, 8 * v91 * HIDWORD(v92));
      }
    }

    sub_100036460(v208, a1 + 4128);
    cntransformation::CNRigidTransformation::CNRigidTransformation(buf);
    cnrotation::CNRotation::operator=();
    v126 = *(a1 + 4136);
    v127 = *(a1 + 2280);
    v128 = HIDWORD(v127);
    v129.i64[0] = v126;
    v129.i64[1] = v127;
    v130 = *(a1 + 4160);
    v131 = v127;
    if (vmaxvq_u32(v129) > 5)
    {
      v206 = *(a1 + 2304);
      cblas_dgemm_NEWLAPACK();
    }

    else if (*(a1 + 4136) && HIDWORD(v127))
    {
      if (HIDWORD(v126))
      {
        v132 = 0;
        v133 = *(a1 + 2304);
        v134 = 8 * v127;
        v135 = 8 * v126;
        v136 = v133 + 1;
        v125 = v207;
        v137 = v133;
        do
        {
          if (HIDWORD(v126) > 3)
          {
            v143 = &v207[v132 * v126];
            if (v126 == 1)
            {
              v144 = 0.0;
              v145 = v130 + 1;
              v146 = v136;
              v147 = HIDWORD(v126) & 0xFFFFFFFC;
              do
              {
                v148 = vmulq_f64(v145[-1], v146[-1]);
                v149 = vmulq_f64(*v145, *v146);
                v144 = v144 + v148.f64[0] + v148.f64[1] + v149.f64[0] + v149.f64[1];
                v146 += 2;
                v145 += 2;
                v147 -= 4;
              }

              while (v147);
              if ((HIDWORD(v126) & 0xFFFFFFFC) != HIDWORD(v126))
              {
                v150 = v130[2 * (HIDWORD(v126) >> 2)].f64;
                v151 = HIDWORD(v126) & 0xFFFFFFFC;
                do
                {
                  v144 = v144 + *v150 * v137[v151++];
                  v150 = (v150 + v135);
                }

                while (HIDWORD(v126) != v151);
              }

              *v143 = v144;
            }

            else
            {
              v152 = 0;
              v153 = v130;
              do
              {
                v154 = 0.0;
                v155 = v153;
                v156 = v137;
                v157 = HIDWORD(v126);
                do
                {
                  v158 = *v156++;
                  v154 = v154 + *v155 * v158;
                  v155 = (v155 + v135);
                  --v157;
                }

                while (v157);
                v143[v152++] = v154;
                ++v153;
              }

              while (v152 != v126);
            }
          }

          else
          {
            v138 = &v133->f64[v132 * v131];
            v139 = v130;
            v140 = v125;
            v141 = v126;
            do
            {
              v142 = *v139 * *v138 + 0.0;
              if (HIDWORD(v126) != 1)
              {
                v142 = v142 + v139[v126] * v138[1];
                if (HIDWORD(v126) != 2)
                {
                  v142 = v142 + v139[2 * v126] * v138[2];
                }
              }

              *v140++ = v142;
              ++v139;
              --v141;
            }

            while (v141);
          }

          ++v132;
          v137 = (v137 + v134);
          v136 = (v136 + v134);
          v125 = (v125 + v135);
        }

        while (v132 != v128);
      }

      else
      {
        bzero(v207, 8 * v126 * HIDWORD(v127));
      }
    }

    v239 = 0x100000003;
    v159 = v241;
    v240 = v241;
    v160 = v217;
    v161 = DWORD1(v217);
    v237 = *&v217;
    v162 = (DWORD1(v217) * v217);
    v238 = __PAIR64__(v217, v162);
    if (v162 > 3)
    {
      v172 = v219;
      v173 = (v162 - 1) >> 1;
      v174 = v219;
      v175 = v207;
      v176 = v241;
      do
      {
        v177 = *v174++;
        v178 = v177;
        v179 = *v175++;
        *v176++ = vsubq_f64(v178, v179);
        --v173;
      }

      while (v173);
      *&v241[2 * (v162 - 2)] = vsubq_f64(*&v172[(v162 - 2)], *&v207[(v162 - 2)]);
      *&v247 = __PAIR64__(v161, v160);
      *(&v247 + 1) = __PAIR64__(v160, v162);
      v180 = (v162 - 2);
      v181 = v248;
      v182 = (v162 - 1) >> 1;
      v183 = v241;
      v184 = v248;
      do
      {
        v185 = *v183++;
        *v184++ = v185;
        --v182;
      }

      while (v182);
      *&v181[v180] = *&v241[2 * v180];
    }

    else if (v162 <= 0)
    {
      *&v247 = v217;
      *(&v247 + 1) = __PAIR64__(v217, v162);
    }

    else
    {
      v163 = v219;
      v164 = v207;
      v165 = v241;
      v166 = (DWORD1(v217) * v217);
      do
      {
        v167 = *v163++;
        v168 = v167;
        v169 = *v164++;
        *v165++ = v168 - v169;
        --v166;
      }

      while (v166);
      *&v247 = __PAIR64__(v161, v160);
      *(&v247 + 1) = __PAIR64__(v160, v162);
      v170 = v248;
      do
      {
        v171 = *v159++;
        *v170++ = v171;
        --v162;
      }

      while (v162);
    }

    cntransformation::Cat(&v236, buf, (a1 + 2240), v125);
    sub_10003412C(a1 + 2680, &v236);
    *(a1 + 27) = 1;
    cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(&v209);
    v187 = (a2 + 232);
    v245 = 0x100000003;
    v188 = &v247;
    v246 = &v247;
    v190 = *(a2 + 240);
    v189 = *(a2 + 244);
    *&buf[8] = v190;
    *&buf[12] = v189;
    v191 = (v189 * v190);
    *&buf[16] = v191;
    *&buf[20] = v190;
    if (v191 > 3)
    {
      v195 = 0;
      v193 = *(a2 + 264);
      v196 = *(a1 + 4096);
      do
      {
        *(&v247 + v195) = vsubq_f64(*&v193[2 * v195], *(v196 + 16 * v195));
        ++v195;
      }

      while ((v191 - 1) >> 1 != v195);
      *(&v247 + 8 * (v191 - 2)) = vsubq_f64(*&v193[(v191 - 2)], *(v196 + 8 * (v191 - 2)));
      if (v187 == buf)
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v191 < 1)
      {
        if (v187 != buf)
        {
          *(a2 + 248) = v191;
          *(a2 + 252) = v190;
        }

        goto LABEL_132;
      }

      v192 = 0;
      v193 = *(a2 + 264);
      v194 = *(a1 + 4096);
      do
      {
        *(&v247 + v192 * 8) = *&v193[v192] - *(v194 + v192 * 8);
        ++v192;
      }

      while (v191 != v192);
      if (v187 == buf)
      {
LABEL_132:
        cntransformation::Inv(buf, (a2 + 200), v186);
        cntransformation::Cat(&v236, (a1 + 2680), buf, v203);
        sub_10003412C(a1 + 3560, &v236);
        return v64;
      }
    }

    *(a2 + 248) = v191;
    *(a2 + 252) = v190;
    if (v191 > 3)
    {
      v198 = (v191 - 2);
      v199 = (v191 - 1) >> 1;
      v200 = &v247;
      v201 = v193;
      do
      {
        v202 = *v200++;
        *v201++ = v202;
        --v199;
      }

      while (v199);
      *&v193[v198] = *(&v247 + 8 * v198);
    }

    else
    {
      do
      {
        v197 = *v188;
        v188 = (v188 + 8);
        *v193++ = v197;
        --v191;
      }

      while (v191);
    }

    goto LABEL_132;
  }

  if (qword_10045B050 != -1)
  {
    sub_100383040();
  }

  v81 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v82 = (*(*a3 + 16))(a3);
    v83 = *(a3 + 112) + *(a3 + 104);
    *buf = 134349312;
    *&buf[4] = v84 + v82;
    *&buf[12] = 2050;
    *&buf[14] = v83;
    _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "vio-vl-sync, vl_evt_t, %{public}.3lf, vl_app_t, %{public}.3lf, VLF position Jecef2enu computation failed.", buf, 0x16u);
  }

  cnnavigation::ECEFToENUJacobian::~ECEFToENUJacobian(&v209);
  return v64;
}

void *sub_1000442A0(void *result)
{
  result[120] = off_100432BB8;
  result[106] = off_100432BB8;
  result[92] = off_100432BB8;
  result[84] = off_100432BB8;
  result[65] = off_100432BB8;
  result[51] = off_100432BB8;
  result[37] = off_100432BB8;
  result[29] = off_100432BB8;
  return result;
}

void sub_1000443A4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a1 + 28) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(a1 + 1136) == 1)
  {
    *&v49 = (*(*a2 + 16))(a2);
    *(&v49 + 1) = v6;
    if ((*(a1 + 1136) & 1) == 0)
    {
      sub_100031240();
    }

    v38 = (*(*(a1 + 32) + 16))();
    v39 = v7;
    v8 = CNTimeSpan::operator-();
    if (v9 + v8 < *(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  v10 = *(a2 + 248);
  v61 = *(a2 + 296);
  v11 = *(a2 + 184);
  v12 = *(a2 + 216);
  v55 = *(a2 + 200);
  v56 = v12;
  v57 = *(a2 + 232);
  v58 = v10;
  v13 = *(a2 + 120);
  v14 = *(a2 + 152);
  v51 = *(a2 + 136);
  v52 = v14;
  v53 = *(a2 + 168);
  v54 = v11;
  v49 = *(a2 + 104);
  v50 = v13;
  v15 = *(a2 + 280);
  v59 = *(a2 + 264);
  v60 = v15;
  sub_10003E58C(v62, a2 + 304);
  sub_10003E58C(v67, a2 + 744);
  v67[220] = *(a2 + 1184);
  v68 = *(a2 + 1186);
  v48 = v49;
  if (*(a1 + 4256) == 1)
  {
    v16 = CNTimeSpan::operator-();
    if (v17 + v16 + (v17 + v16) * 0.05 <= *(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  if ((sub_100041CC0(&v49) & 1) == 0)
  {
LABEL_15:
    *a3 = 0;
    a3[360] = 0;
  }

  else
  {
    v42 = 0x100000003;
    v19 = v44;
    v43 = v44;
    v20 = v63;
    v39 = v63;
    v21 = (HIDWORD(v63) * v63);
    v40 = v21;
    v41 = v63;
    if (v21 > 3)
    {
      v26 = 0;
      v27 = v66;
      v28 = *(a1 + 4096);
      do
      {
        *&v44[16 * v26] = vsubq_f64(v27[v26], *(v28 + 16 * v26));
        ++v26;
      }

      while ((v21 - 1) >> 1 != v26);
      *&v44[8 * (v21 - 2)] = vsubq_f64(*(v27 + 8 * (v21 - 2)), *(v28 + 8 * (v21 - 2)));
      v64 = v21;
      v65 = v20;
      v29 = (v21 - 2);
      v30 = (v21 - 1) >> 1;
      v31 = v44;
      v32 = v27;
      do
      {
        v33 = *v31++;
        *v32++ = v33;
        --v30;
      }

      while (v30);
      *(v27 + 8 * v29) = *&v44[8 * v29];
    }

    else if (v21 <= 0)
    {
      v64 = HIDWORD(v63) * v63;
      v65 = v63;
    }

    else
    {
      v22 = 0;
      v23 = v66;
      v24 = *(a1 + 4096);
      do
      {
        *&v44[v22 * 8] = *&v23[v22] - *(v24 + v22 * 8);
        ++v22;
      }

      while (v21 != v22);
      v64 = v21;
      v65 = v20;
      do
      {
        v25 = *v19++;
        *v23++ = v25;
        --v21;
      }

      while (v21);
    }

    cntransformation::Cat(&v38, (a1 + 3120), v62, v18);
    memset(v37, 0, sizeof(v37));
    sub_10002CA50(v37);
    *&v37[88] = v54;
    *&v37[72] = v53;
    *&v37[56] = v52;
    *&v37[40] = v51;
    *&v37[8] = v49;
    *&v37[24] = v50;
    *&v37[184] = v54;
    *&v37[168] = v53;
    *&v37[152] = v52;
    *&v37[136] = v51;
    *&v37[104] = v49;
    *&v37[120] = v50;
    v37[200] = 15;
    *&v37[288] = *v45;
    *&v37[304] = *(v45 + 16);
    *&v37[312] = *v47;
    v34 = &v47[v46];
    *&v37[320] = *v34;
    v35 = &v47[2 * v46];
    *&v37[328] = *v35;
    *&v37[336] = v34[1];
    *&v37[344] = v47[(2 * v46) | 1];
    *&v37[352] = v35[2];
    v37[280] = 1;
    if (sub_10002CEF8(v37))
    {
      sub_10002D988(v37);
    }

    v36 = *(a1 + 4256);
    *(a1 + 4240) = v48;
    if ((v36 & 1) == 0)
    {
      *(a1 + 4256) = 1;
    }

    *a3 = &off_1004331A8;
    memcpy(a3 + 8, &v37[8], 0x160uLL);
    a3[360] = 1;
    cnframework::TimestampedEvent::~TimestampedEvent(v37);
  }
}

void sub_100044854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  cnframework::TimestampedEvent::~TimestampedEvent(&a9);
  sub_1000442A0(&STACK[0x330]);
  _Unwind_Resume(a1);
}

double sub_100044884(uint64_t a1)
{
  cnrotation::CNRotation::CNRotation(v10);
  cnrotation::CNRotation::operator=();
  *(a1 + 40) = xmmword_1003C6DC0;
  v2 = *(a1 + 64);
  *v2 = 0;
  *(v2 + 8) = 0u;
  memset(v10, 0, 24);
  *(a1 + 104) = xmmword_1003C6D30;
  v3 = *(a1 + 128);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = v10[0];
  v3[2] = 0u;
  v3[3] = v4;
  *(v3 + 56) = *(v10 + 8);
  memset(v10, 0, 24);
  *(a1 + 216) = xmmword_1003C6D30;
  v5 = *(a1 + 240);
  *v5 = 0u;
  v5[1] = 0u;
  v6 = v10[0];
  v5[2] = 0u;
  v5[3] = v6;
  *(v5 + 56) = *(v10 + 8);
  memset(v10, 0, 24);
  *(a1 + 328) = xmmword_1003C6D30;
  v7 = *(a1 + 352);
  *v7 = 0u;
  v7[1] = 0u;
  v8 = v10[0];
  v7[2] = 0u;
  v7[3] = v8;
  result = *(v10 + 1);
  *(v7 + 56) = *(v10 + 8);
  *(a1 + 432) = 0;
  return result;
}

float64x2_t sub_100044988@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&result.f64[0] = 0x100000003;
  *(a3 + 24) = 0x100000003;
  *a3 = off_100432C88;
  v4 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  *(a3 + 8) = v6;
  *(a3 + 12) = v5;
  v7 = (v5 * v6);
  *(a3 + 16) = v7;
  *(a3 + 20) = v6;
  if (v7 > 3)
  {
    v13 = (v7 - 2);
    v14 = *(a1 + 32);
    v15 = *(a2 + 32);
    v16 = (v15 + 8 * v13);
    v17 = (v7 - 1) >> 1;
    v18 = v14;
    v19 = v4;
    do
    {
      v20 = *v18++;
      v21 = v20;
      v22 = *v15++;
      *v19++ = vaddq_f64(v21, v22);
      --v17;
    }

    while (v17);
    result = vaddq_f64(*(v14 + 8 * v13), *v16);
    *&v4[v13] = result;
  }

  else if (v7 >= 1)
  {
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    do
    {
      v10 = *v8++;
      v11 = v10;
      v12 = *v9++;
      result.f64[0] = v11 + v12;
      *v4++ = result.f64[0];
      --v7;
    }

    while (v7);
  }

  return result;
}

float64x2_t sub_100044A4C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t result@<Q0>)
{
  *(a2 + 24) = 0x100000003;
  *a2 = off_100432C88;
  v3 = (a2 + 40);
  *(a2 + 32) = a2 + 40;
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  *(a2 + 8) = v5;
  *(a2 + 12) = v4;
  v6 = (v4 * v5);
  *(a2 + 16) = v6;
  *(a2 + 20) = v5;
  if (v6 > 3)
  {
    v9 = (v6 - 2);
    v10 = *(a1 + 32);
    v11 = (v10 + 8 * v9);
    v12 = (v6 - 1) >> 1;
    v13 = v3;
    do
    {
      v14 = *v10++;
      *v13++ = vmulq_n_f64(v14, result.f64[0]);
      --v12;
    }

    while (v12);
    result = vmulq_n_f64(*v11, result.f64[0]);
    *&v3[v9] = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    do
    {
      v8 = *v7++;
      *v3++ = v8 * result.f64[0];
      --v6;
    }

    while (v6);
  }

  return result;
}

BOOL sub_100044AF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 3 && *(a1 + 12) == 3)
  {
    *(a2 + 8) = xmmword_1003C6D30;
    v5 = *(a1 + 32);
    v6 = sqrt(*v5);
    v7 = *(a2 + 32);
    *v7 = v6;
    v8 = *(a1 + 20);
    v9 = &v5[v8];
    v10 = sqrt(v9[1]);
    v7[4] = v10;
    v11 = sqrt(v5[2 * v8 + 2]);
    v7[8] = v11;
    if (fabs(v6 * v10) >= 2.22044605e-16)
    {
      v12 = v5[1] / (v6 * v10);
      v7[1] = v12;
      v13 = v6 * v11;
      if (fabs(v13) >= 2.22044605e-16)
      {
        v14 = v5[2] / v13;
        v7[2] = v14;
        v15 = v10 * v11;
        if (fabs(v15) >= 2.22044605e-16)
        {
          v16 = v9[2];
          v7[3] = v12;
          v17 = v16 / v15;
          v7[5] = v17;
          v7[6] = v14;
          v7[7] = v17;
          return 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_10045B050 == -1)
    {
      v3 = qword_10045B058;
      result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      sub_100383068();
      v3 = qword_10045B058;
      result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Input variance-covariance matrix has wrong dimensions, expected 3x3", v18, 2u);
    return 0;
  }
}

float64x2_t sub_100044CA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&result.f64[0] = 0x300000003;
  *(a3 + 24) = 0x300000003;
  *a3 = off_100432B60;
  v4 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  v6 = *(a1 + 8);
  v5 = *(a1 + 12);
  *(a3 + 8) = v6;
  *(a3 + 12) = v5;
  v7 = (v5 * v6);
  *(a3 + 16) = v7;
  *(a3 + 20) = v6;
  if (v7 > 3)
  {
    v13 = (v7 - 2);
    v14 = *(a1 + 32);
    v15 = *(a2 + 32);
    v16 = (v15 + 8 * v13);
    v17 = (v7 - 1) >> 1;
    v18 = v14;
    v19 = v4;
    do
    {
      v20 = *v18++;
      v21 = v20;
      v22 = *v15++;
      *v19++ = vaddq_f64(v21, v22);
      --v17;
    }

    while (v17);
    result = vaddq_f64(*(v14 + 8 * v13), *v16);
    *&v4[v13] = result;
  }

  else if (v7 >= 1)
  {
    v8 = *(a1 + 32);
    v9 = *(a2 + 32);
    do
    {
      v10 = *v8++;
      v11 = v10;
      v12 = *v9++;
      result.f64[0] = v11 + v12;
      *v4++ = result.f64[0];
      --v7;
    }

    while (v7);
  }

  return result;
}

float64x2_t sub_100044D64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t result@<Q0>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = off_100432B60;
  v3 = (a2 + 40);
  *(a2 + 32) = a2 + 40;
  v5 = *(a1 + 8);
  v4 = *(a1 + 12);
  *(a2 + 8) = v5;
  *(a2 + 12) = v4;
  v6 = (v4 * v5);
  *(a2 + 16) = v6;
  *(a2 + 20) = v5;
  if (v6 > 3)
  {
    v9 = (v6 - 2);
    v10 = *(a1 + 32);
    v11 = (v10 + 8 * v9);
    v12 = (v6 - 1) >> 1;
    v13 = v3;
    do
    {
      v14 = *v10++;
      *v13++ = vmulq_n_f64(v14, result.f64[0]);
      --v12;
    }

    while (v12);
    result = vmulq_n_f64(*v11, result.f64[0]);
    *&v3[v9] = result;
  }

  else if (v6 >= 1)
  {
    v7 = *(a1 + 32);
    do
    {
      v8 = *v7++;
      *v3++ = v8 * result.f64[0];
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_100044E0C(uint64_t result)
{
  if (*(result + 1088) == 1)
  {
    *(result + 960) = off_100432BB8;
    *(result + 848) = off_100432BB8;
    *(result + 736) = off_100432BB8;
    *(result + 672) = off_100432BB8;
    *(result + 520) = off_100432BB8;
    *(result + 408) = off_100432BB8;
    *(result + 296) = off_100432BB8;
    *(result + 232) = off_100432BB8;
  }

  return result;
}

void sub_100044F4C(uint64_t a1, __int128 *a2)
{
  *a1 = off_100433938;
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 6);
  v5 = a2[2];
  *(a1 + 96) = 850045863;
  *(a1 + 40) = v5;
  *(a1 + 56) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  if (*(a1 + 42) == 1)
  {
    operator new();
  }

  operator new();
}

void sub_10004521C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v5);
  operator delete(v7);
  v8 = *(v1 + 160);
  if (v8)
  {
    *(v1 + 168) = v8;
    operator delete(v8);
  }

  std::mutex::~mutex(v3);
  sub_10002BB1C(v4);
  sub_10002BB1C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100045278(uint64_t a1)
{
  *a1 = off_100433938;
  v2 = *(a1 + 160);
  if (v2)
  {
    *(a1 + 168) = v2;
    operator delete(v2);
  }

  std::mutex::~mutex((a1 + 96));
  v3 = *(a1 + 88);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 72);
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_100045374(uint64_t a1)
{
  sub_100045278(a1);

  operator delete();
}

void sub_1000453FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 64) + 216))(*(a1 + 64));
  if (*(a1 + 40) == 1)
  {
    sub_10002C524(v8, a2, a3, (a1 + 80));
    if (sub_10002C6B8(v8))
    {
      std::mutex::lock((a1 + 96));
      v6 = *(a1 + 160);
      for (i = *(a1 + 168); v6 != i; ++v6)
      {
        (*(**v6 + 16))(*v6, *(a2 + 40), v8);
      }

      std::mutex::unlock((a1 + 96));
    }

    nullsub_76(&v10);
    cnframework::TimestampedEvent::~TimestampedEvent(&v9);
  }
}

void sub_1000454FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  nullsub_76(&a57);
  cnframework::TimestampedEvent::~TimestampedEvent(&a11);
  _Unwind_Resume(a1);
}

double sub_100045558@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  (*(**(a1 + 64) + 264))(&v5);
  if (v5 == 1)
  {
    v4 = v7;
    *(a2 + 8) = v6;
    *(a2 + 24) = v4;
    result = *&v8;
    *(a2 + 40) = v8;
    *(a2 + 56) = v9;
    *a2 = 1;
  }

  return result;
}

void sub_100045618(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 96));
  sub_10003ABD8(a1 + 160, &v3);
  (*(**(a1 + 64) + 272))(*(a1 + 64), v3);
  std::mutex::unlock((a1 + 96));
}

void sub_1000456A8(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 96));
  (*(**(a1 + 64) + 280))(*(a1 + 64), a2);
  v5 = *(a1 + 160);
  v4 = *(a1 + 168);
  if (v5 != v4)
  {
    v6 = *(a1 + 160);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 168);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 168) = &v7[v5];
  }

  std::mutex::unlock((a1 + 96));
}

uint64_t sub_100045790(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_10004585C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100433A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000458F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100433AA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000459C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100433B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100045A5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100433B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100045B18()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100045B88()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_100045C70(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 104) == 1)
    {
      *(v1 + 104) = 0;
    }

    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 32);
    if (v3)
    {
      *(v1 + 40) = v3;
      operator delete(v3);
    }

    operator delete();
  }

  return result;
}

void sub_100045CE8(uint64_t *a1, uint64_t a2, float a3, float a4, float a5)
{
  v6 = sqrtf(1.0 / (((a4 * a4) + (a3 * a3)) + (a5 * a5)));
  sub_100045EB0(*a1, a2, a3 * v6, a4 * v6, a5 * v6);
  v7 = *a1;
  if (*(*a1 + 56) != 2 || *(v7 + 96) != 2)
  {
    goto LABEL_20;
  }

  v9 = *(v7 + 32);
  v8 = *(v7 + 40);
  if (v9 == v8)
  {
    v14 = NAN;
    v15 = *(v7 + 72);
    v16 = *(v7 + 80);
    if (v15 != v16)
    {
      goto LABEL_13;
    }

LABEL_7:
    v17 = 0.0;
    goto LABEL_19;
  }

  v10 = v8 - v9;
  v11 = v8 - v9 - 16;
  if (v11 < 0x10)
  {
    v12 = 0.0;
    v13 = *(v7 + 32);
    do
    {
LABEL_11:
      v12 = v12 + *(v13 + 8);
      v13 += 16;
    }

    while (v13 != v8);
    goto LABEL_12;
  }

  v18 = (v11 >> 4) + 1;
  v13 = v9 + 16 * (v18 & 0x1FFFFFFFFFFFFFFELL);
  v19 = (v9 + 24);
  v12 = 0.0;
  v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v21 = *(v19 - 2);
    v22 = *v19;
    v19 += 4;
    v12 = v12 + v21 + v22;
    v20 -= 2;
  }

  while (v20);
  if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_11;
  }

LABEL_12:
  v14 = v12 / (v10 >> 4);
  v15 = *(v7 + 72);
  v16 = *(v7 + 80);
  if (v15 == v16)
  {
    goto LABEL_7;
  }

LABEL_13:
  v23 = v16 - v15 - 16;
  if (v23 < 0x10)
  {
    v17 = 0.0;
    v24 = v15;
    do
    {
LABEL_18:
      v17 = v17 + *(v24 + 8);
      v24 += 16;
    }

    while (v24 != v16);
    goto LABEL_19;
  }

  v25 = (v23 >> 4) + 1;
  v24 = v15 + 16 * (v25 & 0x1FFFFFFFFFFFFFFELL);
  v26 = (v15 + 24);
  v17 = 0.0;
  v27 = v25 & 0x1FFFFFFFFFFFFFFELL;
  do
  {
    v28 = *(v26 - 2);
    v29 = *v26;
    v26 += 4;
    v17 = v17 + v28 + v29;
    v27 -= 2;
  }

  while (v27);
  if (v25 != (v25 & 0x1FFFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

LABEL_19:
  if (fabs(v14) - fabs(v17 / ((v16 - v15) >> 4)) > *(v7 + 16))
  {
LABEL_20:
    *(v7 + 136) = 0;
    return;
  }

  ++*(v7 + 136);
}

void sub_100045EB0(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  sub_100046160(a1, a2);
  if (*(a1 + 104) != 1)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 112);
  v11 = a2 - v10;
  if (a2 != v10)
  {
    v12 = sqrt((a4 - *(a1 + 124)) * (a4 - *(a1 + 124)) + (a3 - *(a1 + 120)) * (a3 - *(a1 + 120)) + (a5 - *(a1 + 128)) * (a5 - *(a1 + 128)));
    if (v12 <= 1.0)
    {
      v14 = asin(v12);
      v13 = v14 + v14;
    }

    else
    {
      v13 = 3.14159265;
    }

    *&v15 = a2;
    *(&v15 + 1) = v13 / (v11 * 0.000000001);
    sub_1000277F8(a1 + 32, &v15);
    sub_1000462CC((a1 + 24), ((*(a1 + 40) - *(a1 + 32)) >> 4) - 1);
    if ((*(a1 + 104) & 1) == 0)
    {
LABEL_7:
      *(a1 + 104) = 1;
    }
  }

  *(a1 + 112) = a2;
  *(a1 + 120) = a3;
  *(a1 + 124) = a4;
  *(a1 + 128) = a5;
}

uint64_t sub_100045FC8(uint64_t *a1, uint64_t a2)
{
  sub_100046160(*a1, a2);
  v3 = *a1;
  if (*(*a1 + 56) != 2 || *(v3 + 96) != 2)
  {
    return 2;
  }

  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  if (v5 != v4)
  {
    v6 = v4 - v5;
    v7 = v4 - v5 - 16;
    if (v7 >= 0x10)
    {
      v15 = (v7 >> 4) + 1;
      v9 = v5 + 16 * (v15 & 0x1FFFFFFFFFFFFFFELL);
      v16 = (v5 + 24);
      v8 = 0.0;
      v17 = v15 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v18 = *(v16 - 2);
        v19 = *v16;
        v16 += 4;
        v8 = v8 + v18 + v19;
        v17 -= 2;
      }

      while (v17);
      if (v15 == (v15 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_13:
        v11 = v8 / (v6 >> 4);
        v12 = *(v3 + 72);
        v13 = *(v3 + 80);
        if (v12 != v13)
        {
          goto LABEL_14;
        }

LABEL_8:
        v14 = 0.0;
        return fabs(v11) - fabs(v14 / ((v13 - v12) >> 4)) > *(v3 + 16);
      }
    }

    else
    {
      v8 = 0.0;
      v9 = *(v3 + 32);
    }

    do
    {
      v8 = v8 + *(v9 + 8);
      v9 += 16;
    }

    while (v9 != v4);
    goto LABEL_13;
  }

  v11 = NAN;
  v12 = *(v3 + 72);
  v13 = *(v3 + 80);
  if (v12 == v13)
  {
    goto LABEL_8;
  }

LABEL_14:
  v20 = v13 - v12 - 16;
  if (v20 >= 0x10)
  {
    v22 = (v20 >> 4) + 1;
    v21 = v12 + 16 * (v22 & 0x1FFFFFFFFFFFFFFELL);
    v23 = (v12 + 24);
    v14 = 0.0;
    v24 = v22 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      v25 = *(v23 - 2);
      v26 = *v23;
      v23 += 4;
      v14 = v14 + v25 + v26;
      v24 -= 2;
    }

    while (v24);
    if (v22 == (v22 & 0x1FFFFFFFFFFFFFFELL))
    {
      return fabs(v11) - fabs(v14 / ((v13 - v12) >> 4)) > *(v3 + 16);
    }
  }

  else
  {
    v14 = 0.0;
    v21 = v12;
  }

  do
  {
    v14 = v14 + *(v21 + 8);
    v21 += 16;
  }

  while (v21 != v13);
  return fabs(v11) - fabs(v14 / ((v13 - v12) >> 4)) > *(v3 + 16);
}

void sub_100046160(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v4 != v3)
  {
    v5 = 0;
    v6 = (v3 - v4) >> 4;
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      if (v7 >= a2 - v9)
      {
        break;
      }

      ++v5;
      *(a1 + 56) = 2;
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 != v5)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 56) = 1;
    v5 = v6;
LABEL_8:
    if (v5)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  sub_100046404(a1 + 72, v10, 0, 0, 0);
  sub_1000462CC((a1 + 64), &v10[-v11] >> 4);
}

void sub_1000462B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1000462CC(uint64_t *result, unint64_t a2)
{
  v2 = result[1];
  v3 = result[2] - v2;
  if (v3 == 16)
  {
    *(result + 8) = 1;
  }

  else
  {
    v4 = v3 >> 4;
    if (v3 >> 4 > a2)
    {
      v5 = 0;
      do
      {
        if (v5 != a2)
        {
          v6 = *(v2 + 16 * a2);
          v7 = *result;
          v8 = (v2 + 16 * v5);
          while (1)
          {
            v9 = *v8;
            v8 += 2;
            if (v7 >= v6 - v9)
            {
              break;
            }

            ++v5;
            *(result + 8) = 2;
            if (a2 == v5)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 == a2)
        {
LABEL_5:
          *(result + 8) = 1;
          v5 = a2;
        }

        ++a2;
      }

      while (a2 != v4);
      if (v5)
      {
        if ((v5 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_10000FC84();
      }
    }
  }

  return result;
}

char *sub_100046404(uint64_t a1, char *__dst, __int128 *__src, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 <= (v6 - v7) >> 4)
  {
    v12 = v7 - __dst;
    v13 = (v7 - __dst) >> 4;
    if (v13 >= a5)
    {
      v12 = 16 * a5;
      v25 = &__dst[16 * a5];
      v26 = &v7[-a5];
      for (i = *(a1 + 8); v26 < v7; ++i)
      {
        v28 = *v26++;
        *i = v28;
      }

      *(a1 + 8) = i;
      if (v7 != v25)
      {
        v29 = __src;
        memmove(v25, __dst, v7 - v25);
        __src = v29;
      }

      v23 = __dst;
      v24 = __src;
    }

    else
    {
      v14 = (__src + v12);
      v15 = *(a1 + 8);
      for (j = v15; v14 != a4; v15 += 16)
      {
        v17 = *v14++;
        *j = v17;
        j += 16;
      }

      *(a1 + 8) = v15;
      if (v13 < 1)
      {
        return __dst;
      }

      v18 = &__dst[16 * a5];
      v19 = &v15[-16 * a5];
      v20 = __src;
      for (k = v15; v19 < v7; k += 16)
      {
        v22 = *v19++;
        *k = v22;
      }

      *(a1 + 8) = k;
      if (j != v18)
      {
        memmove(&__dst[16 * a5], __dst, v15 - v18);
      }

      if (v7 == __dst)
      {
        return __dst;
      }

      v23 = __dst;
      v24 = v20;
    }

    memmove(v23, v24, v12);
    return __dst;
  }

  v8 = *a1;
  v9 = a5 + ((v7 - *a1) >> 4);
  if (v9 >> 60)
  {
    sub_10000FC84();
  }

  v10 = v6 - v8;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_10000D444();
  }

  v31 = 16 * ((__dst - v8) >> 4);
  v32 = 16 * a5;
  v33 = v31 + 16 * a5;
  v34 = v31;
  do
  {
    v35 = *__src++;
    *v34++ = v35;
    v32 -= 16;
  }

  while (v32);
  v36 = *(a1 + 8) - __dst;
  memcpy((v31 + 16 * a5), __dst, v36);
  v38 = v33 + v36;
  *(a1 + 8) = __dst;
  v39 = *a1;
  v40 = &__dst[-*a1];
  v41 = v31 - v40;
  memcpy((v31 - v40), *a1, v40);
  *a1 = v41;
  *(a1 + 8) = v38;
  *(a1 + 16) = 0;
  if (v39)
  {
    operator delete(v39);
  }

  return v31;
}

uint64_t *sub_100046734(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    operator delete();
  }

  return result;
}

float sub_100046780(uint64_t *a1, double a2, float a3, float a4, float a5)
{
  v7 = a3;
  v8 = *a1;
  v9 = *(*a1 + 56);
  if (v9)
  {
    v10 = *(v8 + 16);
    v11 = a2 - *(v8 + 32);
    *(v8 + 32) = a2;
    *(v8 + 16) = a2;
    v12 = *v8;
    if (*(v8 + 64))
    {
      v13 = (a2 - v10) * *(v8 + 52);
      v14 = __sincosf_stret(v13);
      v16 = *(v8 + 44);
      v15 = *(v8 + 48);
      v18 = *(v8 + 4);
      v17 = *(v8 + 8);
      v19 = *(v8 + 40);
      v20 = (v15 * v12) - (v19 * v17);
      v21 = (v19 * v18) - (v16 * v12);
      v22 = (1.0 - v14.__cosval) * (((v16 * v18) + (v19 * v12)) + (v15 * v17));
      v12 = (v14.__cosval * v12) + ((v19 * v22) + (((v16 * v17) - (v15 * v18)) * v14.__sinval));
      v23 = (v18 * v14.__cosval) + ((v16 * v22) + (v20 * v14.__sinval));
      v24 = (v17 * v14.__cosval) + ((v15 * v22) + (v21 * v14.__sinval));
    }

    else
    {
      v23 = *(v8 + 4);
      v24 = *(v8 + 8);
    }

    v26 = exp(v11 / -5.0);
    v27 = 1.0 - v26;
    v7 = v12 + (v27 * (v7 - v12));
    *v8 = v7;
    *(v8 + 4) = v23 + (v27 * (a4 - v23));
    *(v8 + 8) = v24 + (v27 * (a5 - v24));
    v25 = v9 + 1;
  }

  else
  {
    *(v8 + 32) = a2;
    *v8 = a3;
    *(v8 + 4) = a4;
    *(v8 + 8) = a5;
    v25 = 1;
    *(v8 + 16) = a2;
  }

  *(v8 + 56) = v25;
  return v7;
}

void sub_1000468E4(uint64_t *a1, double a2, float32_t a3, float32_t a4, float a5)
{
  v5.f32[0] = a3;
  v7 = *a1;
  if (*(*a1 + 56))
  {
    v8 = *(v7 + 64);
    if (v8)
    {
      v9 = a2 - *(v7 + 24);
      v10 = a2 - *(v7 + 16);
      v11 = v9 * 0.5;
      if (v9 * 0.5 >= v10)
      {
        v50 = sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
        *(v7 + 52) = v50;
        v51 = 0.0;
        v52 = 0.0;
        v53 = 0.0;
        if (v50 > 0.0)
        {
          v51 = -(v5.f32[0] * (1.0 / v50));
          v52 = -(a4 * (1.0 / v50));
          v53 = -(a5 * (1.0 / v50));
        }

        *(v7 + 40) = v51;
        *(v7 + 44) = v52;
        *(v7 + 48) = v53;
        v54 = v10 * v50;
        v55 = __sincosf_stret(v54);
        v57 = *(v7 + 4);
        v56 = *(v7 + 8);
        v58 = (v53 * *v7) - (v51 * v56);
        v59 = (v51 * v57) - (v52 * *v7);
        v60 = (1.0 - v55.__cosval) * (((v52 * v57) + (v51 * *v7)) + (v53 * v56));
        *v7 = (v55.__cosval * *v7) + ((v51 * v60) + (((v52 * v56) - (v53 * v57)) * v55.__sinval));
        *(v7 + 4) = (v55.__cosval * v57) + ((v52 * v60) + (v58 * v55.__sinval));
        v32 = (v55.__cosval * v56) + ((v53 * v60) + (v59 * v55.__sinval));
      }

      else
      {
        v12 = (v10 - v11) * *(v7 + 52);
        v14 = __sincosf_stret(v12);
        v16 = *(v7 + 4);
        v15 = *(v7 + 8);
        v18 = *(v7 + 44);
        v17 = *(v7 + 48);
        v19 = *(v7 + 40);
        v20 = (1.0 - v14.__cosval) * (((v18 * v16) + (v19 * *v7)) + (v17 * v15));
        v21 = (v14.__cosval * *v7) + ((v19 * v20) + (((v18 * v15) - (v17 * v16)) * v14.__sinval));
        v22 = (v16 * v14.__cosval) + ((v18 * v20) + (((v17 * *v7) - (v19 * v15)) * v14.__sinval));
        v23 = (v15 * v14.__cosval) + ((v17 * v20) + (((v19 * v16) - (v18 * *v7)) * v14.__sinval));
        v24 = sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
        v25 = -(a5 * (1.0 / v24));
        if (v24 > 0.0)
        {
          v26 = -(a3 * (1.0 / v24));
        }

        else
        {
          v26 = 0.0;
        }

        if (v24 > 0.0)
        {
          v27 = -(a4 * (1.0 / v24));
        }

        else
        {
          v27 = 0.0;
        }

        if (v24 > 0.0)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0.0;
        }

        *(v7 + 40) = v26;
        *(v7 + 44) = v27;
        *(v7 + 48) = v28;
        *(v7 + 52) = v24;
        v29 = v11 * v24;
        v30 = __sincosf_stret(v29);
        v31 = (1.0 - v30.__cosval) * (((v22 * v27) + (v26 * v21)) + (v28 * v23));
        *v7 = (v30.__cosval * v21) + ((v26 * v31) + (((v27 * v23) - (v28 * v22)) * v30.__sinval));
        *(v7 + 4) = (v30.__cosval * v22) + ((v27 * v31) + (((v28 * v21) - (v26 * v23)) * v30.__sinval));
        v32 = (v30.__cosval * v23) + ((v28 * v31) + (((v26 * v22) - (v27 * v21)) * v30.__sinval));
      }

      *(v7 + 8) = v32;
      *(v7 + 16) = a2;
      *(v7 + 24) = a2;
      v49 = v8 + 1;
    }

    else
    {
      v37 = a2 - *(v7 + 16);
      v38 = sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
      *(v7 + 52) = v38;
      v39 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      if (v38 > 0.0)
      {
        v39 = -(v5.f32[0] * (1.0 / v38));
        v40 = -(a4 * (1.0 / v38));
        v41 = -(a5 * (1.0 / v38));
      }

      *(v7 + 40) = v39;
      *(v7 + 44) = v40;
      *(v7 + 48) = v41;
      v42 = v37 * v38;
      v43 = __sincosf_stret(v42);
      v45 = *(v7 + 4);
      v44 = *(v7 + 8);
      v46 = (v41 * *v7) - (v39 * v44);
      v47 = (v39 * v45) - (v40 * *v7);
      v48 = (1.0 - v43.__cosval) * (((v40 * v45) + (v39 * *v7)) + (v41 * v44));
      *v7 = (v43.__cosval * *v7) + ((v39 * v48) + (((v40 * v44) - (v41 * v45)) * v43.__sinval));
      *(v7 + 4) = (v43.__cosval * v45) + ((v40 * v48) + (v46 * v43.__sinval));
      *(v7 + 8) = (v43.__cosval * v44) + ((v41 * v48) + (v47 * v43.__sinval));
      *(v7 + 16) = a2;
      *(v7 + 24) = a2;
      v49 = 1;
    }

    *(v7 + 64) = v49;
  }

  else
  {
    v33 = sqrtf(((a4 * a4) + (a3 * a3)) + (a5 * a5));
    *(v7 + 52) = v33;
    if (v33 <= 0.0)
    {
      v35 = 0;
      v36 = 0.0;
    }

    else
    {
      v34 = 1.0 / v33;
      v5.f32[1] = a4;
      v35 = vmul_n_f32(vneg_f32(v5), 1.0 / v33);
      v36 = -(a5 * v34);
    }

    *(v7 + 40) = v35;
    *(v7 + 48) = v36;
    *(v7 + 24) = a2;
    ++*(v7 + 64);
    v61 = *v7;
    v62 = *(v7 + 4);
    v63 = *(v7 + 8);
  }
}

void sub_100046D94()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100046DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 16);
  }

  sub_10004E8C8(a1, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 24) = *a3;
  v6 = *(a3 + 8);
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *(a3 + 16);
  sub_100002F5C(a2, 0, &v13);
  if (LODWORD(v13.__r_.__value_.__l.__data_) != 3)
  {
    sub_1000474A4(v11, "");
    sub_100049000(a2, &v13);
    sub_10004A7B0(" isn't a valid directory", &v14);
    sub_1000E661C(v11, &v13, 2);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_12:
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

LABEL_16:
        operator delete(v11[0]);
LABEL_13:
        sub_10003F5D0(&v10);
      }
    }

    else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(v13.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  return a1;
}

void sub_100046F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10002BB1C(v33);
  if (*(v32 + 23) < 0)
  {
    operator delete(*v32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100046FE4(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a4;
  sub_100046DBC(a1, a2, v7);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_100047090(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000470A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = off_10043A548;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 68) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 225) = 0u;
  *(a2 + 248) = off_10043A508;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) &= 0xF0u;
  v4 = (a2 + 304);
  *v4 = 0;
  *(a2 + 312) = 0;
  *(a2 + 288) = off_10043A528;
  *(a2 + 296) = v4;
  *(a2 + 328) = 0;
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  *(a2 + 320) = 0;
  *(a2 + 348) &= 0xF8u;
  *(a2 + 368) = 0;
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 376) = 0;
  *(a2 + 400) = 0;
  *(a2 + 402) = *(a2 + 402) & 0xFC | 1;
  HIBYTE(__p[2]) = 20;
  strcpy(__p, "datarun_metadata.bin");
  sub_10004E914(a1, __p, &v18);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100002F5C(&v18, 0, __p);
  if (LODWORD(__p[0]) >= 2)
  {
    sub_10004755C(__p);
  }

  (*(**(a1 + 24) + 16))(__p);
  if (*(a2 + 215) < 0)
  {
    operator delete(*(a2 + 192));
  }

  *(a2 + 192) = *__p;
  *(a2 + 208) = __p[2];
  v13 = 1;
  LOWORD(v12) = 10;
  sub_1002CB374(&v12, __p);
  (*(**(a1 + 24) + 24))(&v10);
  v19 = 0;
  v20 = v11;
  sub_10004D890(__p, &v20, &v19);
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  HIBYTE(v15) = 0;
  LOBYTE(v14) = 0;
  v5 = v11;
  if (v11)
  {
    do
    {
      v6 = v5;
      v5 = *v5;
      v7 = v6[3];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        v6 = v8;
      }

      operator delete(v6);
    }

    while (v5);
  }

  v9 = v10;
  v10 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (v17 < 0)
  {
    operator delete(__p[3]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((v13 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  else if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(__p[0]);
  if ((v13 & 0x80000000) == 0)
  {
LABEL_20:
    *(a2 + 80) = *(a1 + 40);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_25:
    operator delete(v18.__r_.__value_.__l.__data_);
    return;
  }

LABEL_24:
  operator delete(v12);
  *(a2 + 80) = *(a1 + 40);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_25;
  }
}

void sub_10004741C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000E2BFC(&a24);
  if (*(v25 - 81) < 0)
  {
    operator delete(*(v25 - 104));
  }

  sub_1000E2BFC(v24);
  _Unwind_Resume(a1);
}

void sub_100047490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x10004747CLL);
  }

  JUMPOUT(0x100047480);
}

_BYTE *sub_1000474A4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_10004755C(uint64_t a1)
{
  *a1 = off_10043A548;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 225) = 0u;
  *(a1 + 248) = off_10043A508;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) &= 0xF0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 288) = off_10043A528;
  *(a1 + 296) = a1 + 304;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = 0;
  *(a1 + 348) &= 0xF8u;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 400) = 0;
  *(a1 + 402) = *(a1 + 402) & 0xFC | 1;
  sub_1000ED7A4();
}

void sub_100047954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10004D6EC(va);
  sub_10004A800(v5 - 48);
  sub_10002BB1C(v5 - 32);
  sub_1000E2BFC(v4);
  _Unwind_Resume(a1);
}

int *sub_1000479B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1000EC3E0(a1, &v5);
  wireless_diagnostics::google::protobuf::io::FileInputStream::FileInputStream(v4, v5, -1);
  sub_1000A825C(a2);
  sub_10004DEA4(a2);
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(v4);
  return sub_1000ED500(&v5);
}

void sub_100047A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(v9);
  wireless_diagnostics::google::protobuf::io::FileInputStream::~FileInputStream(&a9);
  sub_1000ED500((v10 - 20));
  _Unwind_Resume(a1);
}

void sub_100047A58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_1002B68D0(a3, &__p, a1, *(a2 + 8), 0xFFFFFFFFLL);
  v3 = __p;
  if (__p)
  {
    v4 = v8;
    v5 = __p;
    if (v8 != __p)
    {
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }
        }

        v4 -= 16;
      }

      while (v4 != v3);
      v5 = __p;
    }

    v8 = v3;
    operator delete(v5);
  }
}

void sub_100047B24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100048F1C(va);
  _Unwind_Resume(a1);
}

void sub_100047B44(std::logic_error *a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  std::logic_error::logic_error(&v10, a1);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = -1;
  v10.__vftable = &off_100433E48;
  v11 = &off_100433E70;
  sub_100048520(&v16, &v10);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v9 = a5[1] - *a5;
  if (v9)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_100048148();
}

void sub_100047E68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_100047E90(std::invalid_argument *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::invalid_argument::~invalid_argument(a1);
}

uint64_t sub_100047F24(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_100047F80(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_100433DA8;
  *(a1 + 16) = off_100433DE0;
  *(a1 + 56) = &off_100433E18;
  return a1;
}

void sub_1000480B4(std::invalid_argument *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::invalid_argument::~invalid_argument(a1);
}

void sub_1000483E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1000483F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100048428(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  v4 = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = a2;
  if ((a2 & 8) != 0)
  {
    *(a1 + 88) = v4;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4;
  }

  if ((a2 & 0x10) != 0)
  {
    *(a1 + 88) = v4;
    std::string::resize((a1 + 64), 0x16uLL, 0);
    v5 = *(a1 + 87);
    if (v5 < 0)
    {
      v5 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v5;
  }

  return a1;
}

void sub_1000484F8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_100048520(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::logic_error::logic_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100433DA8;
  *(a1 + 16) = off_100433DE0;
  *(a1 + 56) = &off_100433E18;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void sub_100048674(std::invalid_argument *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::invalid_argument::~invalid_argument(a1);
}

void sub_100048708(std::invalid_argument *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(this);

  operator delete();
}

void sub_100048828(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100047F80(exception, a1);
}

void sub_100048884(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);
}

void sub_10004890C(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);

  operator delete();
}

void sub_100048A3C(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100047F80(exception, a1 + v2);
}

void sub_100048AB0(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(v1);
}

void sub_100048B50(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(v1);

  operator delete();
}

void sub_100048C04(std::invalid_argument *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(this);

  operator delete();
}

void sub_100048CA4(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);
}

void sub_100048D2C(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);

  operator delete();
}

uint64_t sub_100048DC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::logic_error::logic_error(a1, a2);
  v5 = &v4[1];
  v6 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v7;
  *a1 = &off_100433DA8;
  *(a1 + 16) = off_100433DE0;
  *(a1 + 56) = &off_100433E18;
  sub_10000D87C(v5, a2 + 16);
  return a1;
}

void **sub_100048F1C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_100049000@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1000490B0(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_100049084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000490B0(uint64_t a1, std::string *a2)
{
  v29 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  std::locale::locale(&v24);
  v26 = 0uLL;
  __p[0] = 0;
  __p[1] = 0;
  v28 = 0uLL;
  DWORD2(v29) = 24;
  *(&v24 + 1) = &__p[1];
  *&v25 = &__p[1];
  *(&v25 + 1) = &__p[1];
  *&v29 = &__p[1];
  std::string::resize(&__p[1], 0x16uLL, 0);
  v4 = HIBYTE(v28);
  if (v28 < 0)
  {
    v4 = v28;
  }

  *&v26 = &__p[1];
  *(&v26 + 1) = &__p[1];
  __p[0] = &__p[1] + v4;
  v25 = 0uLL;
  *(&v24 + 1) = 0;
  v23 = off_100433ED0;
  v31.__loc_ = 0;
  std::ios_base::init(&v31, &v23);
  v32 = 0;
  v33 = -1;
  v35 = &v34;
  v36 = &v34 + 2;
  sub_100049618(&v23, a1);
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = v35;
  v7 = v36;
  v9 = v36 - v35;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v11 = a2;
    if (v9 <= 0x16)
    {
      goto LABEL_14;
    }

    v12 = 22;
    goto LABEL_9;
  }

  v13 = a2->__r_.__value_.__r.__words[2];
  v12 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 < v9)
  {
    size = a2->__r_.__value_.__l.__size_;
LABEL_9:
    std::string::__grow_by(a2, v12, v9 - v12, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v14) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_11;
  }

  v14 = HIBYTE(v13);
LABEL_11:
  if ((v14 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2->__r_.__value_.__r.__words[0];
  }

LABEL_14:
  if (v8 == v7)
  {
    v15 = v11;
  }

  else
  {
    if (v9 < 0x20 || (v11 - v8) < 0x20)
    {
      v15 = v11;
      v16 = v8;
    }

    else
    {
      v15 = (v11 + (v9 & 0xFFFFFFFFFFFFFFE0));
      v16 = &v8[v9 & 0xFFFFFFFFFFFFFFE0];
      v17 = (v8 + 16);
      v18 = &v11->__r_.__value_.__r.__words[2];
      v19 = v9 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 4;
        v19 -= 32;
      }

      while (v19);
      if (v9 == (v9 & 0xFFFFFFFFFFFFFFE0))
      {
        goto LABEL_24;
      }
    }

    do
    {
      v21 = *v16++;
      v15->__r_.__value_.__s.__data_[0] = v21;
      v15 = (v15 + 1);
    }

    while (v16 != v7);
  }

LABEL_24:
  v15->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v9;
    std::ostream::~ostream();
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(&a2->__r_.__value_.__s + 23) = v9 & 0x7F;
LABEL_26:
  std::ostream::~ostream();
  if (SHIBYTE(v28) < 0)
  {
LABEL_27:
    operator delete(__p[1]);
  }

LABEL_28:
  std::locale::~locale(&v24);
  return v6;
}

void sub_1000493E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v22 + 1);
  sub_10000D388(a1);
}

uint64_t sub_100049408(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_10004947C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::locale::~locale((a1 + 8));

  operator delete();
}

void *sub_100049510(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

double sub_100049520@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1000495D0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

__n128 sub_100049618(__n128 *a1, uint64_t a2)
{
  v4 = &a1[6].n128_u64[1];
  v5 = &a1[6].n128_i8[*(a1[6].n128_u64[1] - 24) + 8];
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  if (*(a2 + 23) < 0)
  {
    sub_100003228(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  v6 = sub_100049770(v4, __p, 0x26u, 0x22u);
  if (SHIBYTE(v11) < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  v8 = (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
  result = *(*(v4 + *(a1[6].n128_u64[1] - 24) + 40) + 40);
  a1[17] = result;
  return result;
}

uint64_t sub_10004971C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2 != 1)
  {
    _Unwind_Resume(exception_object);
  }

  __cxa_begin_catch(exception_object);
  __cxa_end_catch();
  return 0;
}

void *sub_100049770(void *a1, unsigned __int8 *a2, unsigned int a3, unsigned int a4)
{
  std::ostream::sentry::sentry();
  if (v39 != 1)
  {
    goto LABEL_30;
  }

  v8 = a2[23];
  if ((v8 & 0x8000000000000000) != 0)
  {
    v11 = a2;
    a2 = *a2;
    v8 = *(v11 + 1);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 2;
    goto LABEL_18;
  }

  if (!a2[23])
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v8 < 4)
  {
    v9 = 2;
    v10 = a2;
    do
    {
LABEL_11:
      v26 = *v10++;
      v25 = v26;
      if (v26 == a4 || v25 == a3)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v9 += v28;
    }

    while (v10 != &a2[v8]);
    goto LABEL_18;
  }

  v10 = &a2[v8 & 0xFFFFFFFFFFFFFFFCLL];
  v12 = xmmword_1003C74E0;
  v13 = a2 + 2;
  v14 = 0uLL;
  v15 = vand_s8(vdup_n_s32(a3), 0xFF000000FFLL);
  v16 = vand_s8(vdup_n_s32(a4), 0xFF000000FFLL);
  v17 = vdupq_n_s64(2uLL);
  v18 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v19.i32[0] = *(v13 - 2);
    v19.i32[1] = *(v13 - 1);
    v20.i32[0] = *v13;
    v20.i32[1] = v13[1];
    v21 = vorr_s8(vceq_s32(v19, v15), vceq_s32(v19, v16));
    v22.i64[0] = v21.i32[0];
    v22.i64[1] = v21.i32[1];
    v23 = v22;
    v24 = vorr_s8(vceq_s32(v20, v15), vceq_s32(v20, v16));
    v22.i64[0] = v24.i32[0];
    v22.i64[1] = v24.i32[1];
    v12 = vaddq_s64(vsubq_s64(vandq_s8(v23, v17), vmvnq_s8(v23)), v12);
    v14 = vaddq_s64(vsubq_s64(vandq_s8(v22, v17), vmvnq_s8(v22)), v14);
    v13 += 4;
    v18 -= 4;
  }

  while (v18);
  v9 = vaddvq_s64(vaddq_s64(v14, v12));
  if (v8 != (v8 & 0xFFFFFFFFFFFFFFFCLL))
  {
    goto LABEL_11;
  }

LABEL_18:
  v29 = a1 + *(*a1 - 24);
  v30 = *(v29 + 5);
  v31 = *(v29 + 3);
  v32 = v31 - v9;
  if (v31 <= v9)
  {
    if (!sub_100049C88(*(v29 + 5), a2, v8, v9, a3, a4))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v29 + 2) & 0xB0) == 0x20)
  {
    if (!sub_100049C88(*(v29 + 5), a2, v8, v9, a3, a4))
    {
      goto LABEL_37;
    }

    v33 = a1 + *(*a1 - 24);
    v34 = *(v33 + 36);
    if (v34 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v35 = std::locale::use_facet(&v40, &std::ctype<char>::id);
      v34 = (v35->__vftable[2].~facet_0)(v35, 32);
      std::locale::~locale(&v40);
      *(v33 + 36) = v34;
    }

    v40.__locale_ = (0x101010101010101 * v34);
    if (v32 >= 9)
    {
      while ((*(*v30 + 96))(v30, &v40, 8) == 8)
      {
        v32 -= 8;
        if (v32 <= 8)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_37;
    }

LABEL_26:
    if ((*(*v30 + 96))(v30, &v40, v32) != v32)
    {
LABEL_37:
      std::ostream::sentry::~sentry();
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 1);
      return a1;
    }
  }

  else
  {
    if (*(v29 + 36) == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v37 = std::locale::use_facet(&v40, &std::ctype<char>::id);
      v38 = (v37->__vftable[2].~facet_0)(v37, 32);
      std::locale::~locale(&v40);
      *(v29 + 36) = v38;
      v40.__locale_ = (0x101010101010101 * v38);
      if (v32 >= 9)
      {
LABEL_33:
        while ((*(*v30 + 96))(v30, &v40, 8) == 8)
        {
          v32 -= 8;
          if (v32 <= 8)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_37;
      }
    }

    else
    {
      v40.__locale_ = (0x101010101010101 * *(v29 + 36));
      if (v32 >= 9)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    if ((*(*v30 + 96))(v30, &v40, v32) != v32 || !sub_100049C88(v30, a2, v8, v9, a3, a4))
    {
      goto LABEL_37;
    }
  }

  *(a1 + *(*a1 - 24) + 24) = 0;
LABEL_30:
  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100049C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::locale a13)
{
  std::locale::~locale(&a13);
  std::ostream::sentry::~sentry();
  sub_100049EB4(&a12);
  _Unwind_Resume(a1);
}

BOOL sub_100049C88(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6)
{
  v12 = a6;
  v13 = a1[6];
  if (v13 == a1[7])
  {
    if ((*(*a1 + 104))(a1, a6) == -1)
    {
      return 0;
    }
  }

  else
  {
    a1[6] = v13 + 1;
    *v13 = a6;
  }

  if (a3 == a4)
  {
    if ((*(*a1 + 96))(a1, a2, a3) != a3)
    {
      return 0;
    }
  }

  else
  {
    for (; a3; --a3)
    {
      v15 = *a2;
      if (v15 == a5 || v15 == v12)
      {
        v17 = a1[6];
        if (v17 == a1[7])
        {
          if ((*(*a1 + 104))(a1, a5) == -1)
          {
            return 0;
          }
        }

        else
        {
          a1[6] = v17 + 1;
          *v17 = a5;
        }
      }

      v14 = a1[6];
      if (v14 == a1[7])
      {
        if ((*(*a1 + 104))(a1, v15) == -1)
        {
          return 0;
        }
      }

      else
      {
        a1[6] = v14 + 1;
        *v14 = v15;
      }

      ++a2;
    }
  }

  v19 = a1[6];
  if (v19 == a1[7])
  {
    return (*(*a1 + 104))(a1, a6) != -1;
  }

  a1[6] = v19 + 1;
  *v19 = v12;
  return 1;
}

void *sub_100049EB4(void *result)
{
  if (*result)
  {
    v1 = result;
    std::ios_base::clear((*result + *(**result - 24)), *(*result + *(**result - 24) + 32) | 1);
    return v1;
  }

  return result;
}

uint64_t sub_100049F0C(uint64_t a1)
{
  std::ostream::~ostream();
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_100049F88(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_100049FE8(exception, a1);
}

__n128 sub_100049FE8(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100434090;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &off_100434018;
  a1->n128_u64[1] = off_100434048;
  a1[2].n128_u64[0] = off_100434070;
  a1[2].n128_u64[1] = 0;
  return result;
}

std::bad_cast *sub_10004A094(std::bad_cast *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);
  return a1;
}

void sub_10004A2C0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_10004A674(exception, a1);
}

void sub_10004A31C(std::bad_cast *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);

  operator delete();
}

void sub_10004A3C0(std::bad_cast *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);
}

void sub_10004A454(std::bad_cast *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);

  operator delete();
}

void sub_10004A510(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 3);
}

void sub_10004A598(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 3);

  operator delete();
}

void sub_10004A63C(std::bad_cast *a1)
{
  std::bad_cast::~bad_cast(a1);

  operator delete();
}

__n128 sub_10004A674(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  *(a1 + 8) = &off_100434090;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &off_100434018;
  *(a1 + 8) = off_100434048;
  *(a1 + 32) = off_100434070;
  return result;
}

std::string *sub_10004A7B0@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10004A7E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10004A800(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_10004A9F0(uint64_t result)
{
  *result = off_1004340B8;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (**(result + 32))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_10004AA70(uint64_t a1)
{
  *a1 = off_1004340B8;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (**(a1 + 32))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_10004AB0C(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (**(result + 32))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_10004AB64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterIN6apache6thrift9transport21TInputStreamTransportEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterIN6apache6thrift9transport21TInputStreamTransportEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterIN6apache6thrift9transport21TInputStreamTransportEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterIN6apache6thrift9transport21TInputStreamTransportEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

void *sub_10004ABE0(void *result)
{
  *result = off_100434118;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_10004AC74(void *a1)
{
  *a1 = off_100434118;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10004AE28(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  __cxa_free_exception(v1);
  _Unwind_Resume(a1);
}

void sub_10004AE60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = **v1;
    if (v3)
    {
      v4 = v3;
      if (!std::filebuf::close())
      {
        v5 = (v4 + *(*v4 - 24));
        v6 = v5->__rdstate_ | 4;

        std::ios_base::clear(v5, v6);
      }
    }
  }
}

uint64_t sub_10004AF14(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::istream::read();
  return *(*(a1 + 8) + 8);
}

void sub_10004B078(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  __cxa_free_exception(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B0B0(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = &off_1004341F8;
  v5 = a1 + 8;
  if (*(a3 + 23) < 0)
  {
    sub_100003228(v5, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(v5 + 16) = *(a3 + 2);
    *v5 = v6;
  }

  *a1 = &off_10044A810;
  *(a1 + 32) = a2;
  return a1;
}

void sub_10004B14C(uint64_t a1)
{
  *a1 = &off_1004341F8;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

void sub_10004B1C0(uint64_t a1)
{
  *a1 = &off_1004341F8;
  if (*(a1 + 31) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 8));
    a1 = v2;
  }

  std::exception::~exception(a1);
}

void sub_10004B234(std::exception *this)
{
  this->__vftable = &off_1004341F8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete();
}

const char *sub_10004B2A8(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16))
    {
      return *(a1 + 8);
    }

    else
    {
      return "Default TException.";
    }
  }

  else if (*(a1 + 31))
  {
    return (a1 + 8);
  }

  else
  {
    return "Default TException.";
  }
}

uint64_t sub_10004B2E4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = *(a1 + 8);
  do
  {
    std::istream::read();
    v7 = *(*(a1 + 8) + 8);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      sub_1000474A4(&v10, "No more data to read.");
      sub_10004B0B0(exception, 3, &v10);
    }

    v5 = (v5 + v7);
  }

  while (v5 < a3);
  return v5;
}

void sub_10004B3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_10004B4DC(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  __cxa_free_exception(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10004B514(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  sub_10004B63C(a1, &v7);
  v5 = v8;
  if (v8)
  {
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
      if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 24))(v5);
      }
    }
  }

  *a1 = off_100434238;
  *(a1 + 32) = *a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 256;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void *sub_10004B63C(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = sub_10004C1AC(a1, &v7);
  v5 = v8;
  if (v8)
  {
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5, v4);
      if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 24))(v5);
      }
    }
  }

  *a1 = off_100434408;
  return a1;
}

uint64_t sub_10004B740(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void sub_10004B7EC(uint64_t a1)
{
  *a1 = off_100434238;
  v2 = *(a1 + 56);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  *a1 = off_1004346F8;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete();
}

void sub_10004BC50(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8) >> 31)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      exception[2] = 0;
      exception[3] = 0;
      *exception = &off_100434888;
      exception[1] = 0;
      *(exception + 8) = 3;
    }
  }

  v2 = *(a1 + 32);
  sub_10004B3FC();
}

void sub_10004BD20(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8) >> 31)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      exception[2] = 0;
      exception[3] = 0;
      *exception = &off_100434888;
      exception[1] = 0;
      *(exception + 8) = 3;
    }
  }

  v2 = *(a1 + 32);
  sub_10004B3FC();
}

uint64_t sub_10004BE2C(uint64_t a1, uint64_t a2, _DWORD *a3, _WORD *a4)
{
  v7 = 1;
  sub_10004B2E4(*(a1 + 32), &v10, 1u);
  v8 = v10;
  *a3 = v10;
  if (v8)
  {
    sub_10004B2E4(*(a1 + 32), &v11, 2u);
    v8 = bswap32(v11) >> 16;
    v7 = 3;
  }

  *a4 = v8;
  return v7;
}

uint64_t sub_10004BED8(uint64_t a1, BOOL *a2)
{
  sub_10004B2E4(*(a1 + 32), &v4, 1u);
  *a2 = v4 != 0;
  return 1;
}

uint64_t sub_10004BF24(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_10004B2E4(*(a1 + 32), &v7, 1u);
  if (v7)
  {
    v5 = *a2 | a3;
  }

  else
  {
    v5 = *a2 & ~a3;
  }

  *a2 = v5;
  return 1;
}

uint64_t sub_10004BF98(uint64_t a1, _BYTE *a2)
{
  sub_10004B2E4(*(a1 + 32), &v4, 1u);
  *a2 = v4;
  return 1;
}

uint64_t sub_10004BFDC(uint64_t a1, _WORD *a2)
{
  sub_10004B2E4(*(a1 + 32), &v4, 2u);
  *a2 = bswap32(v4) >> 16;
  return 2;
}