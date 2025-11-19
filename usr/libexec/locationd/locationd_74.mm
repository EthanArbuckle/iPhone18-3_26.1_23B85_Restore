uint64_t sub_100512DD0(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_10245BC50;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_10051212C(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 5);
  return a1;
}

void sub_100512E68(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245BC50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100512EBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

uint64_t sub_100512ED8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

id sub_100512F3C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_100512F9C(a1);
}

id sub_100512F9C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B1194();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7CF4ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B11A8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B1194();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C7CF4ELL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B12B0();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_1005131D0(uint64_t a1, double *a2)
{
  v5 = a1 + 112;
  v4 = *(a1 + 112);
  v6 = a1 + 72;
  *&v18[1] = a1 + 112;
  (*(v4 + 16))(a1 + 112);
  v19 = 256;
  v18[0] = *a2;
  if (sub_10009CB48(v6, v18))
  {
    if (sub_100099160(v6))
    {
      (*(*a1 + 80))(a1, a2, 0);
    }

    else if ((*(a1 + 128) & 1) == 0)
    {
      v12 = *(a1 + 216);
      if (v12 > *(a1 + 256))
      {
        ++*(a1 + 208);
        *(a1 + 216) = v12 - 1;
        sub_10051373C(a1 + 176, 1);
        if (qword_1025D4200 != -1)
        {
          sub_1018AFA78();
        }

        v13 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Maximum number of entries exceeded, throwing out oldest entry.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B0B20(buf);
          v17 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSedentaryAlarmData>::addSuspectRecord(const T &) [T = CLSedentaryAlarmData, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v17);
          if (v17 != buf)
          {
            free(v17);
          }
        }
      }

      if (qword_1025D4270 != -1)
      {
        sub_1018B13B8();
      }

      v14 = qword_1025D4278;
      if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Buffer was added to since db was inaccesible.", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B13E0(buf);
        v16 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "void CLActivityRecorderDb<CLSedentaryAlarmData>::addSuspectRecord(const T &) [T = CLSedentaryAlarmData, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v16);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      v7 = sub_1005136AC((a1 + 176), a2);
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018AFA78();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      v9 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v9 = *v9;
      }

      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18[0];
      v26 = 2082;
      v27 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
      if (qword_1025D4200 != -1)
      {
        sub_1018AFA78();
      }
    }

    v10 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      v11 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v11 = *v11;
      }

      *buf = 68289538;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v18[0];
      v26 = 2082;
      v27 = v11;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CL database error, record contains invalid time", "{msg%{public}.0s:CL database error, record contains invalid time, invalid time:%{public}d, name:%{public, location:escape_only}s}", buf, 0x22u);
    }
  }

  return (*(*v5 + 24))(v5, v7);
}

void sub_100513678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_1005136AC(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1005137CC(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  ++a1[5];
  return result;
}

uint64_t sub_10051373C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
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
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

void *sub_1005137CC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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

void sub_100513954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005139A0(uint64_t a1)
{
  *a1 = &off_10245BCE0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

uint64_t sub_100513AF4(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_100513B58(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
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

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1005121A8(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_100513C84()
{
  sub_10000EC00(byte_1026568B8, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_1026568B8, dword_100000000);
  qword_1026568D0 = off_10245B8D8;
  qword_1026568E8 = &qword_1026568D0;
  __cxa_atexit(sub_1003EE78C, &qword_1026568D0, dword_100000000);
  qword_1026568F0 = off_10245B958;
  qword_102656908 = &qword_1026568F0;
  __cxa_atexit(sub_1003EE78C, &qword_1026568F0, dword_100000000);
  qword_102656910 = off_10245B9D8;
  qword_102656928 = &qword_102656910;
  __cxa_atexit(sub_1003EE790, &qword_102656910, dword_100000000);
  qword_102656930 = off_10245BA58;
  qword_102656948 = &qword_102656930;

  return __cxa_atexit(sub_1003EE790, &qword_102656930, dword_100000000);
}

void sub_10051513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051515C(const char *a1, float *a2)
{
  sub_10001CAF4(&v7);
  v4 = sub_1004FBE40(v7, a1, a2);
  if (*v8)
  {
    sub_100008080(*v8);
  }

  if (v4)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = 68289538;
      *v8 = 2082;
      *&v8[2] = "";
      v9 = 2082;
      v10 = a1;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", &v7, 0x22u);
    }
  }
}

void sub_100515280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005152A0(const char *a1, int *a2)
{
  sub_10001CAF4(&v7);
  v4 = sub_10005BBE4(v7, a1, a2);
  if (*v8)
  {
    sub_100008080(*v8);
  }

  if (v4)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = 68289538;
      *v8 = 2082;
      *&v8[2] = "";
      v9 = 2082;
      v10 = a1;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", &v7, 0x22u);
    }
  }
}

void sub_1005153C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005153E0(const char *a1, uint64_t *a2)
{
  sub_10001CAF4(&v7);
  v4 = sub_1004FBB50(v7, a1, a2);
  if (*v8)
  {
    sub_100008080(*v8);
  }

  if (v4)
  {
    if (qword_1025D4330 != -1)
    {
      sub_1018B1424();
    }

    v5 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
    {
      v6 = *a2;
      v7 = 68289538;
      *v8 = 2082;
      *&v8[2] = "";
      v9 = 2082;
      v10 = a1;
      v11 = 1026;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Overriding behavior feature, key:%{public, location:escape_only}s, value:%{public}d}", &v7, 0x22u);
    }
  }
}

void sub_100515500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100515940(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = *(a2 + 16);
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  *(a1 + 52) = *(a2 + 52);
  result = *(a2 + 68);
  *(a1 + 68) = result;
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  return result;
}

double sub_1005159E8(uint64_t a1)
{
  *a1 = xmmword_101C7CFD0;
  *(a1 + 16) = xmmword_101C7CFF0;
  *(a1 + 32) = 0x4100000041A00000;
  *(a1 + 40) = 0xA00000018;
  *(a1 + 48) = xmmword_101C7D000;
  *(a1 + 64) = 1110704128;
  *&result = 0x200000008;
  *(a1 + 68) = xmmword_101C7D010;
  *(a1 + 84) = 0;
  *(a1 + 87) = 0;
  return result;
}

unint64_t sub_100515A3C(unsigned __int16 *a1, float a2)
{
  v3 = 0;
  __p = 0;
  v41 = 0;
  v42 = 0;
  v4 = vcvts_n_f32_u32(a1[2], 8uLL);
  v5 = vcvts_n_f32_u32(a1[3], 8uLL);
  v6 = 10;
  v7 = vcvts_n_f32_u32(a1[1], 8uLL);
  do
  {
    v8 = a1[v6];
    if (v8 != 0x8000 && v4 <= 60.0)
    {
      a2 = vcvts_n_f32_s32(v8, 6uLL);
      v10 = a2 + (v7 * 1000.0);
      if (v3 >= v42)
      {
        v11 = (v3 - __p) >> 3;
        if ((v11 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v12 = (v42 - __p) >> 2;
        if (v12 <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        if (v42 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (v13)
        {
          sub_1000B9708(&__p, v13);
        }

        v14 = (8 * v11);
        *v14 = v4;
        v14[1] = v10;
        v3 = (8 * v11 + 8);
        memcpy((8 * v11 - (v41 - __p)), __p, v41 - __p);
        v15 = __p;
        __p = (8 * v11 - (v41 - __p));
        v41 = v3;
        v42 = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v3 = v4;
        v3[1] = v10;
        v3 += 2;
      }

      v41 = v3;
    }

    ++v6;
    v4 = v5 + v4;
  }

  while (v6 != 110);
  v16 = __p;
  if (__p == v3)
  {
    v35 = 14;
    if (!__p)
    {
      return v35;
    }

    goto LABEL_48;
  }

  __src = 0;
  v38 = 0;
  v39 = 0;
  v17 = v3 - 2;
  if (__p == v3 - 2)
  {
    v34 = 0.0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = v16 + 2;
      v20 = v41;
      if (v41 != v16 + 2)
      {
        v21 = v16 + 2;
        do
        {
          a2 = v21[1] - v16[1];
          v22 = a2 / (*v21 - *v16);
          if (v18 >= v39)
          {
            v23 = __src;
            v24 = v18 - __src;
            v25 = (v18 - __src) >> 2;
            v26 = v25 + 1;
            if ((v25 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v27 = v39 - __src;
            if ((v39 - __src) >> 1 > v26)
            {
              v26 = v27 >> 1;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v28 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              sub_1000B85D0(&__src, v28);
            }

            v29 = v25;
            v30 = (4 * v25);
            v31 = &v30[-v29];
            *v30 = v22;
            v18 = v30 + 1;
            memcpy(v31, v23, v24);
            v32 = __src;
            __src = v31;
            v38 = v18;
            v39 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v18++ = v22;
          }

          v38 = v18;
          v21 += 2;
        }

        while (v21 != v20);
      }

      v16 += 2;
    }

    while (v19 != v17);
    v33 = __src;
    if (__src == v18)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = sub_100515D80(__src, v18, a2);
      v33 = __src;
    }

    if (v33)
    {
      v38 = v33;
      operator delete(v33);
    }
  }

  v35 = (LODWORD(v34) << 32) | 0xE;
  v16 = __p;
  if (__p)
  {
LABEL_48:
    v41 = v16;
    operator delete(v16);
  }

  return v35;
}

void sub_100515D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

float sub_100515D80(float *a1, float *a2, float a3)
{
  v3 = a2 - a1;
  if (a2 - a1 <= 3)
  {
    sub_1018B144C();
  }

  v4 = a1;
  v5 = (v3 >> 1) & 0x3FFFFFFFFFFFFFFCLL;
  v6 = (a1 + v5);
  if ((a1 + v5) != a2)
  {
    sub_100515E40(a1, (a1 + v5), a2, a3);
  }

  if ((v3 & 4) != 0)
  {
    return *v6;
  }

  if (v5)
  {
    v7 = v4 + 1;
    if (v4 + 1 != v6)
    {
      v8 = *v4;
      v9 = v4 + 1;
      do
      {
        v10 = *v9++;
        v11 = v10;
        if (v8 < v10)
        {
          v8 = v11;
          v4 = v7;
        }

        v7 = v9;
      }

      while (v9 != v6);
    }
  }

  return *v4 + ((*v6 - *v4) * 0.5);
}

void sub_100515E40(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      sub_10051610C(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float sub_10051610C(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

uint64_t sub_100516180(uint64_t a1, int a2)
{
  sub_10000EC00(__p, "");
  sub_100516338(a1, "CLMotionStateRecorderDb", a2, __p, 1, 4.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_10245BD98;
  *(a1 + 72) = off_10245BE48;
  sub_100DD42E4((a1 + 480), 0, 0);
  sub_100DD42E4((a1 + 496), 0, 0);
  sub_100DD42E4((a1 + 512), 0, 0);
  sub_100DD42E4((a1 + 528), 0, 0);
  sub_100DD42E4((a1 + 544), 0, 0);
  sub_100DD42E4((a1 + 560), 0, 0);
  sub_100DD42E4((a1 + 576), 0, 0);
  sub_100DD42E4((a1 + 592), 0, 0);
  sub_100DD42E4((a1 + 608), 0, 0);
  sub_100DD42E4((a1 + 624), 0, 0);
  sub_100DD42E4((a1 + 640), 0, 0);
  *(a1 + 656) = 0u;
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_10051630C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100516338(uint64_t a1, char *a2, int a3, uint64_t a4, int a5, float a6)
{
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102456270;
  sub_1003FFA38((a1 + 8));
  *v12 = off_1024562B8;
  *a1 = off_10245BF28;
  *(a1 + 72) = off_10245BFD0;
  sub_101052EEC(a1 + 72, a2, a3, a1, a6, a4, a5, 0);
  *a1 = off_10245BF28;
  *(a1 + 72) = off_10245BFD0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 384) = 12000;
  *(a1 + 392) = off_102456270;
  sub_1003FFA38((a1 + 400));
  *(a1 + 400) = off_1024562B8;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
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

void sub_100516710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1017EC98C(&a19);
  *a11 = v29;
  sub_1003FFCFC(v30);
  sub_10051B848(v28);
  sub_1010532A4(v27);
  *v25 = a12;
  sub_1003FFCFC(v26);
  _Unwind_Resume(a1);
}

void *sub_1005167B8(void *a1)
{
  *a1 = off_10245BF28;
  v2 = (a1 + 9);
  a1[9] = off_10245BFD0;
  sub_10051B984(a1, 0, 0);
  a1[49] = off_102456270;
  sub_1003FFCFC(a1 + 50);
  sub_10051B848(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102456270;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void *sub_100516888(void *a1)
{
  *a1 = off_10245BD98;
  a1[9] = off_10245BE48;
  sub_100516908(a1, 0, 0);

  return sub_1005167B8(a1);
}

void sub_100516908(uint64_t a1, void *a2, const void *a3)
{
  if ((a2 != 0) != (a3 != 0))
  {
    sub_1018B14E4();
  }

  *(a1 + 656) = a2;
  v6 = *(a1 + 664);
  if (v6)
  {
    _Block_release(v6);
  }

  if (a3)
  {
    *(a1 + 664) = _Block_copy(a3);
  }
}

void sub_10051698C(void *a1)
{
  sub_100516888(a1);

  operator delete();
}

void sub_1005169C4(uint64_t a1)
{
  sub_100516888((a1 - 72));

  operator delete();
}

uint64_t sub_100516A00(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 + 112;
  (*(*(a1 + 112) + 16))(a1 + 112);
  if (*(*(a2 + 8) - 16) != 1.79769313e308)
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018B16B4();
    }

    v12 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Programmer error, we expect an expiration record!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B16C8(buf);
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual long CLMotionStateRecorderDb::aggregateRecords(const CLAggregationRules &)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    goto LABEL_19;
  }

  if (!sub_100099160(v3 + 72))
  {
    goto LABEL_19;
  }

  sub_100144CA0((v3 + 512), buf);
  v5 = sub_100008880(*buf);
  Current = CFAbsoluteTimeGetCurrent();
  v7 = sub_1001A3BD4(v5, 1, Current - *(*(a2 + 8) - 24));
  v8 = v7;
  v9 = *(v3 + 80);
  if (v7)
  {
    v10 = sub_100008880(*buf);
    sub_1001A3DEC(v9, v10);
    v11 = sub_100516CEC(v3);
    *(v3 + 132) = v11;
    v3 = v11;
  }

  else
  {
    v14 = *(v9 + 88) <= 0 ? 0x7FFFFFFFFFFFFFFFLL : *(v9 + 88);
    sub_1001B16EC(*(v3 + 80), v14);
  }

  v15 = *buf;
  *buf = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  if (!v8)
  {
LABEL_19:
    v3 = -1;
  }

  (*(*v4 + 24))(v4);
  return v3;
}

void sub_100516CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100516CEC(uint64_t a1)
{
  if (!sub_100099160(a1 + 72))
  {
    return 0xFFFFFFFFLL;
  }

  sub_100144CA0((a1 + 480), &v8);
  v3 = sub_100008880(v8);
  v4 = sqlite3_step(v3);
  if (v4 == 100)
  {
    v5 = sub_100008880(v8);
    v1 = sqlite3_column_int(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v4 != 100)
  {
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_100516D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100516DE0(void *a1, void *a2, double a3, double a4)
{
  v8 = a1[14];
  v7 = a1 + 14;
  v9 = v7 - 5;
  v95 = v7;
  (*(v8 + 16))();
  v97 = 256;
  if ((sub_100099160(v9) & 1) == 0)
  {
    v41 = a2;
    v39 = *a2;
    v40 = v41[1];
LABEL_40:
    if (v97)
    {
      pthread_mutex_unlock(v96);
    }

    else
    {
      (*(*v95 + 24))(v95);
    }

    return 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 5);
  }

  sub_100144CA0(a1 + 80, &v94);
  v79 = a2;
  v10 = sub_100008880(v94);
  if (sub_1001A3BD4(v10, 1, a3))
  {
    while (!sub_10051749C(&v94, v81))
    {
      v11 = v82;
      v12 = v83;
      v13 = v84;
      v14 = v85;
      v15 = v86;
      v16 = v87;
      v17 = v88;
      v18 = v89;
      v19 = v92;
      v20 = v93;
      v21 = *(v79 + 8);
      v22 = *(v79 + 16);
      if (v21 >= v22)
      {
        v28 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - *v79) >> 5);
        v29 = v28 + 1;
        if (v28 + 1 > 0x199999999999999)
        {
          sub_10028C64C();
        }

        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v22 - *v79) >> 5);
        if (2 * v30 > v29)
        {
          v29 = 2 * v30;
        }

        if (v30 >= 0xCCCCCCCCCCCCCCLL)
        {
          v31 = 0x199999999999999;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          sub_10051A070(v79, v31);
        }

        v32 = 160 * v28;
        *v32 = v90;
        *(v32 + 8) = a3;
        *(v32 + 24) = v11;
        *(v32 + 28) = v12;
        *(v32 + 29) = v13;
        *(v32 + 30) = v14;
        *(v32 + 31) = v15;
        *(v32 + 32) = v16;
        *(v32 + 33) = v17;
        *(v32 + 35) = v18;
        *(v32 + 36) = v103;
        *(v32 + 52) = v104;
        *(v32 + 60) = v19;
        *(v32 + 62) = v20;
        v33 = v101;
        v34 = *v102;
        *(v32 + 88) = *&v102[9];
        *(v32 + 79) = v34;
        *(v32 + 63) = v33;
        *(v32 + 104) = 0;
        v35 = v99;
        *(v32 + 105) = v98;
        *(v32 + 121) = v35;
        *(v32 + 137) = *v100;
        *(v32 + 152) = *&v100[15];
        v26 = 160 * v28 + 160;
        v27 = v79;
        v36 = *(v79 + 8) - *v79;
        v37 = (160 * v28 - v36);
        memcpy(v37, *v79, v36);
        v38 = *v79;
        *v79 = v37;
        *(v79 + 8) = v26;
        *(v79 + 16) = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v21 = v90;
        *(v21 + 8) = a3;
        *(v21 + 24) = v11;
        *(v21 + 28) = v12;
        *(v21 + 29) = v13;
        *(v21 + 30) = v14;
        *(v21 + 31) = v15;
        *(v21 + 32) = v16;
        *(v21 + 33) = v17;
        *(v21 + 35) = v18;
        *(v21 + 36) = v103;
        *(v21 + 52) = v104;
        *(v21 + 60) = v19;
        *(v21 + 62) = v20;
        v23 = v101;
        v24 = *v102;
        *(v21 + 88) = *&v102[9];
        *(v21 + 79) = v24;
        *(v21 + 63) = v23;
        *(v21 + 104) = 0;
        v25 = v99;
        *(v21 + 105) = v98;
        *(v21 + 121) = v25;
        *(v21 + 137) = *v100;
        v26 = v21 + 160;
        *(v21 + 152) = *&v100[15];
        v27 = v79;
      }

      *(v27 + 8) = v26;
    }
  }

  sub_100144CA0(a1 + 76, &v80);
  v42 = sub_100008880(v80);
  v43 = v79;
  if (sub_1001A3BD4(v42, 1, a3))
  {
    v44 = sub_100008880(v80);
    if (sub_1001A3BD4(v44, 2, a4))
    {
      while (!sub_10051749C(&v80, v81))
      {
        v45 = v91;
        v46 = v82;
        v47 = v83;
        v48 = v84;
        v49 = v85;
        v50 = v86;
        v51 = v87;
        v52 = v88;
        v53 = v89;
        v54 = v92;
        v55 = v93;
        v56 = v79;
        v57 = *(v79 + 8);
        v58 = *(v79 + 16);
        if (v57 >= v58)
        {
          v63 = 0xCCCCCCCCCCCCCCCDLL * ((v57 - *v79) >> 5);
          v64 = v63 + 1;
          if (v63 + 1 > 0x199999999999999)
          {
            sub_10028C64C();
          }

          v65 = 0xCCCCCCCCCCCCCCCDLL * ((v58 - *v79) >> 5);
          if (2 * v65 > v64)
          {
            v64 = 2 * v65;
          }

          if (v65 >= 0xCCCCCCCCCCCCCCLL)
          {
            v66 = 0x199999999999999;
          }

          else
          {
            v66 = v64;
          }

          if (v66)
          {
            sub_10051A070(v79, v66);
          }

          v67 = 160 * v63;
          *v67 = v90;
          *(v67 + 8) = v45;
          *(v67 + 24) = v46;
          *(v67 + 28) = v47;
          *(v67 + 29) = v48;
          *(v67 + 30) = v49;
          *(v67 + 31) = v50;
          *(v67 + 32) = v51;
          *(v67 + 33) = v52;
          *(v67 + 35) = v53;
          *(v67 + 36) = v103;
          *(v67 + 52) = v104;
          *(v67 + 60) = v54;
          *(v67 + 62) = v55;
          v68 = v101;
          v69 = *v102;
          *(v67 + 88) = *&v102[9];
          *(v67 + 79) = v69;
          *(v67 + 63) = v68;
          *(v67 + 104) = 0;
          v70 = v99;
          *(v67 + 105) = v98;
          *(v67 + 121) = v70;
          *(v67 + 137) = *v100;
          *(v67 + 152) = *&v100[15];
          v62 = 160 * v63 + 160;
          v71 = *(v79 + 8) - *v79;
          v72 = (160 * v63 - v71);
          memcpy(v72, *v79, v71);
          v73 = *v79;
          *v79 = v72;
          *(v79 + 8) = v62;
          *(v79 + 16) = 0;
          v56 = v79;
          if (v73)
          {
            operator delete(v73);
          }
        }

        else
        {
          *v57 = v90;
          *(v57 + 8) = v45;
          *(v57 + 24) = v46;
          *(v57 + 28) = v47;
          *(v57 + 29) = v48;
          *(v57 + 30) = v49;
          *(v57 + 31) = v50;
          *(v57 + 32) = v51;
          *(v57 + 33) = v52;
          *(v57 + 35) = v53;
          *(v57 + 36) = v103;
          *(v57 + 52) = v104;
          *(v57 + 60) = v54;
          *(v57 + 62) = v55;
          v59 = v101;
          v60 = *v102;
          *(v57 + 88) = *&v102[9];
          *(v57 + 79) = v60;
          *(v57 + 63) = v59;
          *(v57 + 104) = 0;
          v61 = v99;
          *(v57 + 105) = v98;
          *(v57 + 121) = v61;
          *(v57 + 137) = *v100;
          v62 = v57 + 160;
          *(v57 + 152) = *&v100[15];
        }

        *(v56 + 8) = v62;
      }

      v43 = v79;
    }
  }

  v74 = v80;
  v80 = 0;
  if (v74)
  {
    (*(*v74 + 8))(v74);
  }

  v75 = v94;
  v94 = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = v43;
  v39 = *v43;
  v40 = v76[1];
  if ((v97 & 0x100) != 0)
  {
    goto LABEL_40;
  }

  return 0xCCCCCCCCCCCCCCCDLL * ((v40 - v39) >> 5);
}

void sub_1005173F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10051749C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  v6 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v6, 0);
  v7 = sub_100008880(*a1);
  *(a2 + 24) = sqlite3_column_double(v7, 1);
  v8 = sub_100008880(*a1);
  *(a2 + 16) = sqlite3_column_double(v8, 2);
  v9 = sub_100008880(*a1);
  *(a2 + 4) = sqlite3_column_int(v9, 3);
  v10 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_int(v10, 4);
  v11 = sub_100008880(*a1);
  *(a2 + 9) = sqlite3_column_int(v11, 5);
  v12 = sub_100008880(*a1);
  *(a2 + 10) = sqlite3_column_int(v12, 6);
  v13 = sub_100008880(*a1);
  *(a2 + 11) = sqlite3_column_int(v13, 7);
  v14 = sub_100008880(*a1);
  *(a2 + 12) = sqlite3_column_int(v14, 8) != 0;
  v15 = sub_100008880(*a1);
  *(a2 + 13) = sqlite3_column_int(v15, 9) != 0;
  v16 = sub_100008880(*a1);
  *(a2 + 14) = sqlite3_column_int(v16, 10);
  v17 = sub_100008880(*a1);
  *(a2 + 32) = sqlite3_column_int(v17, 11);
  v18 = sub_100008880(*a1);
  v19 = sqlite3_column_int(v18, 12);
  result = 0;
  *(a2 + 33) = v19;
  return result;
}

void sub_100517608(uint64_t a1)
{
  if (sub_100023B68(*(a1 + 80)))
  {
    sub_1005177E8(a1);
    sub_100608EC8(*(a1 + 80), "MotionStateHistory", &qword_102656988, &qword_102656C28, 0);
    *(a1 + 480) = sub_100614C1C(*(a1 + 80), "SELECT COUNT(*) FROM MotionStateHistory");
    *(a1 + 488) = v2;
    *(a1 + 496) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory ORDER BY startTime ASC");
    *(a1 + 504) = v3;
    *(a1 + 512) = sub_100614C1C(*(a1 + 80), "DELETE FROM MotionStateHistory WHERE startTime < ?");
    *(a1 + 520) = v4;
    *(a1 + 528) = sub_100614C1C(*(a1 + 80), "DELETE FROM MotionStateHistory WHERE startTime > ?");
    *(a1 + 536) = v5;
    *(a1 + 544) = sub_100614C1C(*(a1 + 80), "DELETE FROM MotionStateHistory");
    *(a1 + 552) = v6;
    *(a1 + 560) = sub_100614C1C(*(a1 + 80), "INSERT INTO MotionStateHistory (startTime, timestamp, type, confidence, mounted, mountedConfidence, turn, isVehicular, isMoving, vehicleExitState, vehicularFlagsData, vehicleType) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    *(a1 + 568) = v7;
    *(a1 + 576) = sub_100614C1C(*(a1 + 80), "UPDATE MotionStateHistory SET startTime = startTime + ?");
    *(a1 + 584) = v8;
    *(a1 + 592) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory ORDER BY startTime DESC LIMIT 1");
    *(a1 + 600) = v9;
    *(a1 + 608) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory WHERE ? <= startTime AND startTime <= ? ORDER BY startTime ASC");
    *(a1 + 616) = v10;
    *(a1 + 624) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory WHERE startTime >= ? and startTime < ? ORDER BY startTime ASC");
    *(a1 + 632) = v11;
    *(a1 + 640) = sub_100614C1C(*(a1 + 80), "SELECT * FROM MotionStateHistory WHERE startTime < ?  ORDER BY startTime DESC LIMIT 1");
    *(a1 + 648) = v12;
    *(a1 + 132) = sub_100516CEC(a1);
  }

  else
  {
    if (qword_1025D4250 != -1)
    {
      sub_1018B16B4();
    }

    v13 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "Device is locked and we are unable to open the database", v14, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B170C();
    }
  }
}

void sub_1005177E8(uint64_t a1)
{
  if (sub_10060A6D8(*(a1 + 80), "MotionStateHistory"))
  {
    v4 = "id";
    v5 = 5;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_100611268(*(a1 + 80), "MotionStateHistory", "id", &v4);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018B1800();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateHistory table doesn't even exist", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B1814();
  }
}

void sub_100517D98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
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

uint64_t sub_100517E40(uint64_t a1)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 544), &v7);
    v3 = *(a1 + 80);
    v4 = sub_100008880(v7);
    sub_1001A3DEC(v3, v4);
    v5 = *(a1 + 80);
    if (*(v5 + 88) <= 0)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = *(v5 + 88);
    }

    sub_1001B16EC(v5, v6);
    *(a1 + 132) = 0;
    result = v7;
    v7 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100517EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100517F08(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_100144CA0((a1 + 528), &v12);
    v5 = sub_100008880(v12);
    if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
    {
      v6 = *(a1 + 80);
      v7 = sub_100008880(v12);
      sub_1001A3DEC(v6, v7);
      *(a1 + 132) = sub_100516CEC(a1);
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018B190C();
      }

      v8 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Failed to delete records", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B16C8(buf);
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLMotionStateRecorderDb::deleteRecordsAfterInsertUL(const CLMotionCoprocessorInterface::MotionState &)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    v9 = *(a1 + 80);
    if (*(v9 + 88) <= 0)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = *(v9 + 88);
    }

    sub_1001B16EC(v9, v10);
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100518130(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100518178(uint64_t a1, double a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 576), &v10);
    v5 = sub_100008880(v10);
    if (sub_1001A3BD4(v5, 1, a2))
    {
      v6 = *(a1 + 80);
      v7 = sub_100008880(v10);
      sub_1001A3DEC(v6, v7);
    }

    else
    {
      if (qword_1025D4250 != -1)
      {
        sub_1018B190C();
      }

      v8 = qword_1025D4258;
      if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Failed to shift records", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B16C8(buf);
        v9 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLMotionStateRecorderDb::shiftRecordsByUL(CFTimeInterval)", "%s\n", v9);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    result = v10;
    v10 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100518354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051839C(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 560), &v19);
    v5 = sub_100008880(v19);
    if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
    {
      v6 = sub_100008880(v19);
      if (sub_1001A3BD4(v6, 2, *a2))
      {
        v7 = sub_100008880(v19);
        if (sub_100073700(v7, 3, *(a2 + 24)))
        {
          v8 = sub_100008880(v19);
          if (sub_100073700(v8, 4, *(a2 + 28)))
          {
            v9 = sub_100008880(v19);
            if (sub_100073700(v9, 5, *(a2 + 29)))
            {
              v10 = sub_100008880(v19);
              if (sub_100073700(v10, 6, *(a2 + 30)))
              {
                v11 = sub_100008880(v19);
                if (sub_100073700(v11, 7, *(a2 + 31)))
                {
                  v12 = sub_100008880(v19);
                  if (sub_100073700(v12, 8, *(a2 + 32)))
                  {
                    v13 = sub_100008880(v19);
                    if (sub_100073700(v13, 9, *(a2 + 33)))
                    {
                      v14 = sub_100008880(v19);
                      if (sub_100073700(v14, 10, *(a2 + 35)))
                      {
                        v15 = sub_100008880(v19);
                        if (sub_100073700(v15, 11, *(a2 + 60)))
                        {
                          v16 = sub_100008880(v19);
                          if (sub_100073700(v16, 12, *(a2 + 62)))
                          {
                            v17 = *(a1 + 80);
                            v18 = sub_100008880(v19);
                            sub_1001A3DEC(v17, v18);
                            ++*(a1 + 132);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100518554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100518570(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

uint64_t sub_10051857C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 24);
  v4 = *(a3 + 24);
  if (v3 == v4 && *(a2 + 28) >= *(a3 + 28) && *(a2 + 60) == *(a3 + 60))
  {
    return 1;
  }

  result = 1;
  if (v4 != 2 && v4 != 512)
  {
    v6 = v3 == 4 && v4 == 12;
    if (!v6 && (v3 != 16 || v4 != 32))
    {
      v7 = (v4 & 0xFFFFEFFF) == 0x2000;
      return v3 == 4096 && v7;
    }
  }

  return result;
}

uint64_t sub_100518600(uint64_t a1, uint64_t a2)
{
  if (!sub_100099160(a1 + 72))
  {
    return 2;
  }

  sub_100144CA0((a1 + 592), &v13);
  v4 = sub_10051749C(&v13, v7);
  if (!v4)
  {
    *a2 = v10;
    *(a2 + 24) = v7[1];
    *(a2 + 28) = v7[2];
    *(a2 + 32) = v8;
    *(a2 + 35) = v9;
    *(a2 + 60) = v11;
    *(a2 + 62) = v12;
    *(a2 + 104) = 0;
  }

  v5 = v13;
  v13 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v4;
}

void sub_1005186D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  *(v1 - 24) = 0;
  if (v3)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005186EC(uint64_t a1, const void **a2)
{
  v5 = *(a1 + 112);
  v4 = a1 + 112;
  v6 = v4 - 40;
  v51 = v4;
  (*(v5 + 16))();
  v53 = 256;
  if (!sub_100099160(v6))
  {
    goto LABEL_20;
  }

  sub_100144CA0((a1 + 496), &v50);
  while (!sub_10051749C(&v50, v37))
  {
    v7 = v47;
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
    v13 = v43;
    v14 = v44;
    v15 = v45;
    v16 = v48;
    v17 = v49;
    v18 = a2[1];
    v19 = a2[2];
    if (v18 >= v19)
    {
      v24 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - *a2) >> 5);
      v25 = v24 + 1;
      if (v24 + 1 > 0x199999999999999)
      {
        sub_10028C64C();
      }

      v26 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - *a2) >> 5);
      if (2 * v26 > v25)
      {
        v25 = 2 * v26;
      }

      if (v26 >= 0xCCCCCCCCCCCCCCLL)
      {
        v27 = 0x199999999999999;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        sub_10051A070(a2, v27);
      }

      v28 = 160 * v24;
      *v28 = v46;
      *(v28 + 8) = v7;
      *(v28 + 24) = v8;
      *(v28 + 28) = v9;
      *(v28 + 29) = v10;
      *(v28 + 30) = v11;
      *(v28 + 31) = v12;
      *(v28 + 32) = v13;
      *(v28 + 33) = v14;
      *(v28 + 35) = v15;
      *(v28 + 36) = v59;
      *(v28 + 52) = v60;
      *(v28 + 60) = v16;
      *(v28 + 62) = v17;
      v29 = v57;
      v30 = *v58;
      *(v28 + 88) = *&v58[9];
      *(v28 + 79) = v30;
      *(v28 + 63) = v29;
      v31 = v55;
      *(v28 + 105) = v54;
      *(v28 + 121) = v31;
      *(v28 + 137) = *v56;
      *(v28 + 152) = *&v56[15];
      v23 = 160 * v24 + 160;
      v32 = *a2;
      v33 = a2[1] - *a2;
      v34 = (160 * v24 - v33);
      *(v28 + 104) = 0;
      memcpy(v34, v32, v33);
      v35 = *a2;
      *a2 = v34;
      a2[1] = v23;
      a2[2] = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      *v18 = v46;
      *(v18 + 1) = v7;
      *(v18 + 6) = v8;
      v18[28] = v9;
      v18[29] = v10;
      v18[30] = v11;
      v18[31] = v12;
      v18[32] = v13;
      v18[33] = v14;
      v18[35] = v15;
      *(v18 + 36) = v59;
      *(v18 + 52) = v60;
      v18[60] = v16;
      v18[62] = v17;
      v20 = v57;
      v21 = *v58;
      *(v18 + 88) = *&v58[9];
      *(v18 + 79) = v21;
      *(v18 + 63) = v20;
      v18[104] = 0;
      v22 = v55;
      *(v18 + 105) = v54;
      *(v18 + 121) = v22;
      *(v18 + 137) = *v56;
      v23 = (v18 + 160);
      *(v18 + 19) = *&v56[15];
    }

    a2[1] = v23;
  }

  result = v50;
  v50 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if ((v53 & 0x100) != 0)
  {
LABEL_20:
    if (v53)
    {
      return pthread_mutex_unlock(v52);
    }

    else
    {
      return (*(*v51 + 24))(v51);
    }
  }

  return result;
}

void sub_100518A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100518A90(void *a1)
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
      sub_1018B1478();
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
        sub_1018B1478();
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
        sub_1018B1478();
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
    sub_100038730(v5, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
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

void sub_100519114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10051919C(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v11 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_10051BBD0(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_1018B1800();
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
      sub_1018B1478();
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
      sub_1018B14A0(buf);
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::setDatabaseAccessible() [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }
  }

  (*(*v11 + 24))(v11);
  return 1;
}

void sub_100519888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id *sub_1005198C4(uint64_t a1, uint64_t a2, char a3)
{
  v34[0] = os_transaction_create();
  v34[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v34);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v6 = (*(*a1 + 104))(a1, v32);
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
        sub_1018B1478();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018B14A0(buf);
        LOWORD(v35) = 0;
        v15 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 8);
    v8 = v33;
    v9 = v7 - v33;
    if (v7 - v33 < 0.0)
    {
      v9 = -(v7 - v33);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 8);
        *buf = 134349312;
        v40 = v33;
        v41 = 2050;
        v42 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B14A0(buf);
        v27 = *(a2 + 8);
        v35 = 134349312;
        v36 = v33;
        v37 = 2050;
        v38 = v27;
        v28 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v28);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 8);
      v8 = v33;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_1018B1478();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 8);
          *buf = 134217984;
          v40 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018B14A0(buf);
          v29 = *(a2 + 8);
          v35 = 134217984;
          v36 = v29;
          v30 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v30);
          if (v30 != buf)
          {
            free(v30);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v16 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_1018B1478();
      }

      v17 = v7 - v8 - v16;
      v18 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v40 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B14A0(buf);
        v35 = 134217984;
        v36 = v17;
        v31 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMotionCoprocessorInterface::MotionState>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMotionCoprocessorInterface::MotionState, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v31);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      (*(*a1 + 96))(a1, v17);
    }

    (*(*a1 + 144))(a1, v32, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v19 = *(a2 + 16);
  *(a1 + 224) = *a2;
  *(a1 + 240) = v19;
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  v22 = *(a2 + 80);
  *(a1 + 288) = *(a2 + 64);
  *(a1 + 304) = v22;
  *(a1 + 256) = v20;
  *(a1 + 272) = v21;
  v23 = *(a2 + 96);
  v24 = *(a2 + 112);
  v25 = *(a2 + 144);
  *(a1 + 352) = *(a2 + 128);
  *(a1 + 368) = v25;
  *(a1 + 320) = v23;
  *(a1 + 336) = v24;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v34);
}

void sub_10051A070(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10051A0C8(void *a1, void *a2)
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
      sub_1018B1478();
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
        sub_1018B1478();
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
        sub_1018B1478();
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
    sub_100038730(v8, " ORDER BY id ASC", 16);
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

void sub_10051A708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  sub_10026C504(&a38);
  _Unwind_Resume(a1);
}

__n128 sub_10051A790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(a2 + 64) = *(a3 + 64);
  *(a2 + 80) = v6;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  result = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 144);
  *(a2 + 128) = *(a3 + 128);
  *(a2 + 144) = v9;
  *(a2 + 96) = result;
  *(a2 + 112) = v8;
  return result;
}

uint64_t sub_10051A7BC(void *a1, uint64_t a2)
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
      sub_1018B1478();
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
        sub_1018B1478();
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
        sub_1018B1478();
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

void sub_10051AD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10051AD70(void *a1)
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
      sub_1018B1478();
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
        sub_1018B1478();
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
        sub_1018B1478();
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

void sub_10051B290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10051B2E4(void *a1)
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
      sub_1018B1478();
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
        sub_1018B1478();
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
        sub_1018B1478();
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

void sub_10051B7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10051B848(void *a1)
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
    v5 = 12;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 25;
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

uint64_t sub_10051B8F4(uint64_t a1, uint64_t *a2, uint64_t a3)
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

void sub_10051B984(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018B1800();
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
    sub_1018B19A0(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B1478();
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
      sub_1018B1AE8(a1);
    }
  }

  *(a1 + 464) = a2;
  v10 = *(a1 + 472);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 472) = _Block_copy(a3);
  }
}

void sub_10051BC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051BC98()
{
  qword_102656988 = "id";
  dword_102656990 = 1;
  word_102656994 = 1;
  byte_102656998 = 0;
  byte_1026569B0 = 0;
  qword_1026569B8 = "startTime";
  dword_1026569C0 = 2;
  word_1026569C4 = 0;
  byte_1026569C8 = 0;
  byte_1026569E0 = 0;
  qword_1026569E8 = "timestamp";
  dword_1026569F0 = 2;
  word_1026569F4 = 0;
  byte_1026569F8 = 0;
  byte_102656A10 = 0;
  qword_102656A18 = "type";
  dword_102656A20 = 1;
  word_102656A24 = 0;
  byte_102656A28 = 0;
  byte_102656A40 = 0;
  qword_102656A48 = "confidence";
  dword_102656A50 = 1;
  word_102656A54 = 0;
  byte_102656A58 = 0;
  byte_102656A70 = 0;
  qword_102656A78 = "mounted";
  dword_102656A80 = 1;
  word_102656A84 = 0;
  byte_102656A88 = 0;
  byte_102656AA0 = 0;
  qword_102656AA8 = "mountedConfidence";
  dword_102656AB0 = 1;
  word_102656AB4 = 0;
  byte_102656AB8 = 0;
  byte_102656AD0 = 0;
  qword_102656AD8 = "turn";
  dword_102656AE0 = 1;
  word_102656AE4 = 0;
  byte_102656AE8 = 0;
  byte_102656B00 = 0;
  qword_102656B08 = "isVehicular";
  dword_102656B10 = 1;
  word_102656B14 = 0;
  byte_102656B18 = 0;
  byte_102656B30 = 0;
  qword_102656B38 = "isMoving";
  dword_102656B40 = 1;
  word_102656B44 = 0;
  byte_102656B48 = 0;
  byte_102656B60 = 0;
  qword_102656B68 = "vehicleExitState";
  dword_102656B70 = 1;
  word_102656B74 = 0;
  byte_102656B78 = 0;
  byte_102656B90 = 0;
  qword_102656B98 = "vehicularFlagsData";
  dword_102656BA0 = 1;
  word_102656BA4 = 0;
  byte_102656BA8 = 0;
  byte_102656BC0 = 0;
  qword_102656BC8 = "vehicleType";
  dword_102656BD0 = 1;
  word_102656BD4 = 0;
  byte_102656BD8 = 0;
  byte_102656BF0 = 0;
  qword_102656BF8 = 0;
  dword_102656C00 = 5;
  word_102656C04 = 0;
  byte_102656C08 = 0;
  byte_102656C20 = 0;
  qword_102656C28 = "startTime";
  unk_102656C30 = 0;
}

void sub_10051BE3C(uint64_t a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = xmmword_101C7D210;
  *(a1 + 40) = 0x4024000000000000;
  v22[0] = 0;
  sub_100126E84(&v24, "EnableMultiSportSimulation", v22, 0);
  v6 = v25;
  *a1 = v25;
  if (v6 == 1)
  {
    *buf = 0;
    sub_10183A3AC(v22, "MultiSportSimulatedPauseTime", buf, 0);
    if (v22[0] == 1)
    {
      v7 = v23;
      _NF = v23 < 10.0;
      if (v23 < 10.0)
      {
        v7 = 10.0;
      }

      *(a1 + 8) = v7;
      if (_NF)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v9 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *&buf[4] = v23;
          *&buf[12] = 2048;
          *&buf[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to set pause time %f, min time is %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1C64();
        }
      }
    }

    *v31 = 0;
    sub_10183A3AC(buf, "MultiSportSimulatedTransitionTime", v31, 0);
    if (buf[0] == 1)
    {
      v10 = v23;
      v11 = v23 < 10.0;
      if (v23 < 10.0)
      {
        v10 = 10.0;
      }

      *(a1 + 16) = v10;
      if (v11)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v12 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v31 = 134218240;
          *&v31[4] = *&buf[8];
          *&v31[12] = 2048;
          *&v31[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to set transition time %f, min time is %f", v31, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1D50();
        }
      }
    }

    *v30 = 0;
    sub_10183A3AC(v31, "MultiSportSimulatedLegTime", v30, 0);
    if (v31[0] == 1)
    {
      v13 = *&v31[8];
      v14 = *&v31[8] < 10.0;
      if (*&v31[8] < 10.0)
      {
        v13 = 20.0;
      }

      *(a1 + 24) = v13;
      if (v14)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v15 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v30 = 134218240;
          *&v30[4] = *&v31[8];
          *&v30[12] = 2048;
          *&v30[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to set leg time %f, min time is %f", v30, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1E3C();
        }
      }
    }

    *v29 = 0;
    sub_10183A3AC(v30, "MultiSportSimulatedSwimmingPrewarm", v29, 0);
    if (v30[0] == 1)
    {
      v16 = *&v30[8];
      v17 = *&v30[8] <= 0.0;
      if (*&v30[8] >= 10.0)
      {
        v17 = 1;
      }

      if (!v17)
      {
        v16 = 15.0;
      }

      *(a1 + 32) = v16;
      if (!v17)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v18 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v29 = 134218240;
          *&v29[4] = *&v30[8];
          *&v29[12] = 2048;
          *&v29[14] = 0x4024000000000000;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to swim prewarm time %f, value must be <= 0 (disable prewarm) or > %f", v29, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1F28();
        }
      }
    }

    *v26 = 0;
    sub_10183A3AC(v29, "MultiSportSimulatedOutdoorCyclingPrewarm", v26, 0);
    if (v29[0] == 1)
    {
      v19 = *&v29[8];
      v20 = *&v29[8] <= 0.0;
      if (*&v29[8] >= 10.0)
      {
        v20 = 1;
      }

      if (!v20)
      {
        v19 = 10.0;
      }

      *(a1 + 40) = v19;
      if (!v20)
      {
        if (qword_1025D43F0 != -1)
        {
          sub_1018B1C3C();
        }

        v21 = qword_1025D43F8;
        if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
        {
          *v26 = 134218240;
          *&v26[4] = *&v29[8];
          v27 = 2048;
          v28 = 0x4024000000000000;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "MultiSportSim, failed to swim prewarm time %f, value must be <= 0 (disable prewarm) or > %f", v26, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018B1F28();
        }
      }
    }
  }
}

void sub_10051C3B4(_Unwind_Exception *a1)
{
  sub_1000F8B58(v2);
  sub_10051C8C8(v1);
  _Unwind_Resume(a1);
}

void sub_10051C3D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 480);
  v5 = *(a1 + 488);
  *(a1 + 512) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v7 = *(a1 + 488);
      v4 = (*(a1 + 480) + 8);
      *(a1 + 480) = v4;
      v6 = (v7 - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 85;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 170;
  }

  *(a1 + 504) = v8;
LABEL_8:
  v9 = *(a1 + 464);
  v35 = 1;
  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10 || (v11 = *(a1 + 80), v12 = *(v10 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A), v13 = *(v10 + 8 * ((*(a1 + 88) + v11) / 0x1A)) + 152 * ((*(a1 + 88) + v11) % 0x1A), v12 == v13))
  {
LABEL_29:
    if (qword_1025D43F0 != -1)
    {
      sub_1018B1C3C();
    }

    v22 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      v25 = *(a2 + 24);
      v26 = *(a2 + 32);
      v27 = *(a2 + 40);
      *__p = 134219008;
      *&__p[4] = v23;
      *&__p[12] = 2048;
      *&__p[14] = v24;
      *&__p[22] = 2048;
      *&__p[24] = v25;
      v37 = 2048;
      v38 = v26;
      v39 = 2048;
      v40 = v27;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "MultiSportSimParams,pauseTime,%f,transistionTime,%f,legTime,%f,swimPrewarmTime,%f,outdoorCyclingPrewarmTime,%f", __p, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B2118(a2);
    }

    return;
  }

  v14 = v9 + 5.0;
  v15 = (v10 + 8 * (v11 / 0x1A));
  while (1)
  {
    v17 = (v12 + 32);
    v16 = *(v12 + 32);
    if (v16 > 16)
    {
      break;
    }

    if (v16 == 2)
    {
      goto LABEL_17;
    }

    if (v16 != 4)
    {
      if (v16 != 5)
      {
        goto LABEL_36;
      }

      *__p = xmmword_101C7D260;
      *&__p[16] = unk_101C7D270;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      sub_10051EDB8(&v41, __p, &v37, 2uLL);
      v18 = sub_10051C968(a1, *v17, a2, &v41, &v35, v14, 0.0);
LABEL_18:
      v14 = v18;
      v19 = v41;
      if (v41)
      {
        v42 = v41;
LABEL_25:
        operator delete(v19);
        goto LABEL_26;
      }

      goto LABEL_26;
    }

    v41 = 19;
    v42 = 0x500000004;
    memset(__p, 0, 24);
    sub_10051EDB8(__p, &v41, &v43, 1uLL);
    v20 = sub_10051C968(a1, *v17, a2, __p, &v35, v14, *(a2 + 40));
LABEL_23:
    v14 = v20;
    v19 = *__p;
    if (*__p)
    {
      *&__p[8] = *__p;
      goto LABEL_25;
    }

LABEL_26:
    v12 += 152;
    if (v12 - *v15 == 3952)
    {
      v21 = v15[1];
      ++v15;
      v12 = v21;
    }

    if (v12 == v13)
    {
      goto LABEL_29;
    }
  }

  if ((v16 - 17) < 2)
  {
LABEL_17:
    *__p = xmmword_101C7D240;
    *&__p[16] = unk_101C7D250;
    v42 = 0;
    v43 = 0;
    v41 = 0;
    sub_10051EDB8(&v41, __p, &v37, 2uLL);
    v18 = sub_10051C968(a1, *v17, a2, &v41, &v35, v14, 0.0);
    goto LABEL_18;
  }

  if (v16 == 19)
  {
    v41 = 4;
    v42 = dword_100000000;
    memset(__p, 0, 24);
    sub_10051EDB8(__p, &v41, &v43, 1uLL);
    v20 = sub_10051C968(a1, *v17, a2, __p, &v35, v14, *(a2 + 32));
    goto LABEL_23;
  }

LABEL_36:
  if (qword_1025D43F0 != -1)
  {
    sub_1018B1C3C();
  }

  v28 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
  {
    v29 = *v17;
    *__p = 134217984;
    *&__p[4] = v29;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "MultiSportSim,Unsported WorkoutType: %ld! nothing will be simulated", __p, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018B2014();
  }

  v30 = *(a1 + 480);
  v31 = *(a1 + 488);
  *(a1 + 512) = 0;
  v32 = (v31 - v30) >> 3;
  if (v32 >= 3)
  {
    do
    {
      operator delete(*v30);
      v33 = *(a1 + 488);
      v30 = (*(a1 + 480) + 8);
      *(a1 + 480) = v30;
      v32 = (v33 - v30) >> 3;
    }

    while (v32 > 2);
  }

  if (v32 == 1)
  {
    v34 = 85;
LABEL_48:
    *(a1 + 504) = v34;
  }

  else if (v32 == 2)
  {
    v34 = 170;
    goto LABEL_48;
  }
}

void sub_10051C888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051C8C8(uint64_t a1)
{
  *a1 = off_1024AF190;
  v3 = (a1 + 112);
  sub_10051D6DC(&v3);
  sub_100106180((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

double sub_10051C93C(unsigned int a1, uint64_t a2)
{
  if (a1 <= 7)
  {
    return *(a2 + *&asc_101C7D2A0[8 * a1]) + dbl_101C7D2E0[a1];
  }

  return result;
}

double sub_10051C968(uint64_t a1, uint64_t a2, double *a3, uint64_t **a4, _BYTE *a5, double a6, double a7)
{
  __p = 0;
  v101 = 0;
  v102 = 0;
  memset(&v99[7], 0, 7);
  v13 = a7 > 0.0;
  if (a7 > 0.0)
  {
    v14 = a3[3];
    v86 = a6 + a7;
    v85 = a6 + a7 + v14 * 0.5 + a3[1];
    v89 = v85 + a7;
    v90 = a6 + a7 + v14 * 0.5;
    v88 = v85 + a7 + v14 * 0.5;
    v87 = a3[2] + v88;
    if ((*a5 & 1) == 0)
    {
      sub_1001AB518(&__p, 1uLL);
    }

    goto LABEL_6;
  }

  v15 = a3[3];
  v89 = a6 + v15 * 0.5 + a3[1];
  v90 = a6 + v15 * 0.5;
  v88 = v89 + v15 * 0.5;
  v87 = a3[2] + v88;
  if (*a5)
  {
    v85 = 0.0;
    v86 = a6;
    a6 = 0.0;
LABEL_6:
    v16 = 0;
    v17 = 0;
    *a5 = 0;
    goto LABEL_18;
  }

  v85 = 0.0;
  v86 = a6;
  a6 = 0.0;
  v18 = __p;
  v19 = -__p;
  v20 = 0xAAAAAAAAAAAAAAABLL * (-__p >> 3);
  v21 = v20 + 1;
  if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * (-__p >> 3) > v21)
  {
    v21 = 0x5555555555555556 * (-__p >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * (-__p >> 3) >= 0x555555555555555)
  {
    v21 = 0xAAAAAAAAAAAAAAALL;
  }

  if (v21)
  {
    sub_1001AB518(&__p, v21);
  }

  v22 = 8 * (-__p >> 3);
  v17 = 0;
  *v22 = v86;
  *(v22 + 8) = a2;
  *(v22 + 16) = 2;
  v16 = 24 * v20 + 24;
  v23 = (24 * v20 - v19);
  memcpy(v23, v18, v19);
  v25 = __p;
  __p = v23;
  v101 = v16;
  v102 = 0;
  if (v25)
  {
    operator delete(v25);
    v17 = v102;
  }

  v101 = (24 * v20 + 24);
  *a5 = 0;
  if (v16 < v17)
  {
    *(24 * v20 + 0x18) = v90;
    *(24 * v20 + 0x20) = a2;
    *(24 * v20 + 0x28) = 1;
    v26 = 24 * v20 + 48;
    goto LABEL_27;
  }

LABEL_18:
  v27 = __p;
  v28 = v16 - __p;
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v16 - __p) >> 3);
  v30 = v29 + 1;
  if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((v17 - __p) >> 3) > v30)
  {
    v30 = 0x5555555555555556 * ((v17 - __p) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
  {
    v30 = 0xAAAAAAAAAAAAAAALL;
  }

  if (v30)
  {
    sub_1001AB518(&__p, v30);
  }

  v31 = 8 * ((v16 - __p) >> 3);
  v17 = 0;
  *v31 = v90;
  *(v31 + 8) = a2;
  *(v31 + 16) = 1;
  v26 = 24 * v29 + 24;
  v32 = (24 * v29 - v28);
  memcpy(v32, v27, v28);
  v33 = __p;
  __p = v32;
  v101 = v26;
  v102 = 0;
  if (v33)
  {
    operator delete(v33);
    v17 = v102;
  }

LABEL_27:
  v101 = v26;
  if (a7 > 0.0)
  {
    if (v26 >= v17)
    {
      v34 = __p;
      v35 = v26 - __p;
      v36 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3);
      v37 = v36 + 1;
      if (v36 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_10028C64C();
      }

      if (0x5555555555555556 * ((v17 - __p) >> 3) > v37)
      {
        v37 = 0x5555555555555556 * ((v17 - __p) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      if (v37)
      {
        sub_1001AB518(&__p, v37);
      }

      v38 = 8 * ((v26 - __p) >> 3);
      v17 = 0;
      *v38 = v85;
      *(v38 + 8) = a2;
      *(v38 + 16) = 0x200000000;
      v26 = 24 * v36 + 24;
      v39 = (24 * v36 - v35);
      memcpy(v39, v34, v35);
      v40 = __p;
      __p = v39;
      v101 = v26;
      v102 = 0;
      if (v40)
      {
        operator delete(v40);
        v17 = v102;
      }
    }

    else
    {
      *v26 = v85;
      *(v26 + 8) = a2;
      *(v26 + 16) = 0x200000000;
      v26 += 24;
    }

    v101 = v26;
  }

  if (v26 >= v17)
  {
    v42 = __p;
    v43 = v26 - __p;
    v44 = 0xAAAAAAAAAAAAAAABLL * ((v26 - __p) >> 3);
    v45 = v44 + 1;
    if (v44 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    if (0x5555555555555556 * ((v17 - __p) >> 3) > v45)
    {
      v45 = 0x5555555555555556 * ((v17 - __p) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
    {
      v45 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v45)
    {
      sub_1001AB518(&__p, v45);
    }

    v46 = 8 * ((v26 - __p) >> 3);
    v17 = 0;
    *v46 = v89;
    *(v46 + 8) = a2;
    *(v46 + 16) = 2;
    v41 = 24 * v44 + 24;
    v47 = (v46 - v43);
    memcpy((v46 - v43), v42, v43);
    v48 = __p;
    __p = v47;
    v101 = v41;
    v102 = 0;
    if (v48)
    {
      operator delete(v48);
      v17 = v102;
    }
  }

  else
  {
    *v26 = v89;
    *(v26 + 8) = a2;
    *(v26 + 16) = 2;
    v41 = v26 + 24;
  }

  v101 = v41;
  if (v41 >= v17)
  {
    v50 = __p;
    v51 = v41 - __p;
    v52 = 0xAAAAAAAAAAAAAAABLL * ((v41 - __p) >> 3);
    v53 = v52 + 1;
    if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10028C64C();
    }

    if (0x5555555555555556 * ((v17 - __p) >> 3) > v53)
    {
      v53 = 0x5555555555555556 * ((v17 - __p) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v17 - __p) >> 3) >= 0x555555555555555)
    {
      v53 = 0xAAAAAAAAAAAAAAALL;
    }

    if (v53)
    {
      sub_1001AB518(&__p, v53);
    }

    v54 = 24 * v52;
    *v54 = v88;
    *(v54 + 8) = a2;
    *(v54 + 16) = 1;
    v49 = (24 * v52 + 24);
    v55 = (24 * v52 - v51);
    memcpy(v55, v50, v51);
    v56 = __p;
    __p = v55;
    v101 = v49;
    v102 = 0;
    if (v56)
    {
      operator delete(v56);
    }
  }

  else
  {
    *v41 = v88;
    *(v41 + 8) = a2;
    v24.n128_u64[0] = 1;
    *(v41 + 16) = 1;
    v49 = (v41 + 24);
  }

  v101 = v49;
  v57 = *a4;
  v58 = a4[1];
  if (*a4 != v58)
  {
    do
    {
      v59 = *v57;
      v60 = *(v57 + 2);
      v61 = *(v57 + 3);
      v91 = a6;
      v92 = v86;
      v93 = v90;
      v94 = v85;
      v95 = v89;
      v96 = v88;
      v97 = v87;
      v98 = v13;
      *v99 = *&v99[7];
      *&v99[3] = *&v99[10];
      v62 = sub_10051C93C(v60, &v91);
      v91 = a6;
      v92 = v86;
      v93 = v90;
      v94 = v85;
      v95 = v89;
      v96 = v88;
      v97 = v87;
      v98 = v13;
      *v99 = *&v99[7];
      *&v99[3] = *&v99[10];
      v63 = sub_10051C93C(v61, &v91);
      v24.n128_f64[0] = v63 - v62;
      if (v63 - v62 > 3.84)
      {
        v64 = v102;
        if (v49 >= v102)
        {
          v66 = __p;
          v67 = v49 - __p;
          v68 = 0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 3);
          v69 = v68 + 1;
          if (v68 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v102 - __p) >> 3) > v69)
          {
            v69 = 0x5555555555555556 * ((v102 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v102 - __p) >> 3) >= 0x555555555555555)
          {
            v69 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v69)
          {
            sub_1001AB518(&__p, v69);
          }

          v70 = 8 * ((v49 - __p) >> 3);
          *v70 = v62;
          v64 = 0;
          *(v70 + 8) = v59;
          *(v70 + 16) = 0x200000000;
          v65 = 24 * v68 + 24;
          v71 = (24 * v68 - v67);
          memcpy((v70 - v67), v66, v67);
          v72 = __p;
          __p = v71;
          v101 = v65;
          v102 = 0;
          if (v72)
          {
            operator delete(v72);
            v64 = v102;
          }
        }

        else
        {
          *v49 = v62;
          *(v49 + 1) = v59;
          v65 = (v49 + 3);
          *(v49 + 2) = 0x200000000;
        }

        v101 = v65;
        if (v65 >= v64)
        {
          v73 = __p;
          v74 = v65 - __p;
          v75 = 0xAAAAAAAAAAAAAAABLL * ((v65 - __p) >> 3);
          v76 = v75 + 1;
          if (v75 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v64 - __p) >> 3) > v76)
          {
            v76 = 0x5555555555555556 * ((v64 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v64 - __p) >> 3) >= 0x555555555555555)
          {
            v76 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v76)
          {
            sub_1001AB518(&__p, v76);
          }

          v77 = 8 * ((v65 - __p) >> 3);
          *v77 = v63;
          *(v77 + 8) = v59;
          *(v77 + 16) = dword_100000000;
          v49 = (24 * v75 + 24);
          v78 = (24 * v75 - v74);
          memcpy((v77 - v74), v73, v74);
          v79 = __p;
          __p = v78;
          v101 = v49;
          v102 = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v65 = v63;
          *(v65 + 8) = v59;
          v49 = (v65 + 24);
          v24.n128_u64[0] = dword_100000000;
          *(v65 + 16) = dword_100000000;
        }

        v101 = v49;
      }

      v57 += 2;
    }

    while (v57 != v58);
  }

  v80 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v49 - __p) >> 3));
  if (v49 == __p)
  {
    v81 = 0;
  }

  else
  {
    v81 = v80;
  }

  sub_10051D79C(__p, v49, v81, 1, v24);
  v83 = __p;
  v82 = v101;
  if (__p != v101)
  {
    do
    {
      sub_10051D35C((a1 + 472), v83);
      v83 = (v83 + 24);
    }

    while (v83 != v82);
    v83 = __p;
  }

  if (v83)
  {
    v101 = v83;
    operator delete(v83);
  }

  return v87 + 2.56;
}

void sub_10051D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10051D35C(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 170 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10051EE2C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  result = *a2;
  v8[1].n128_u64[0] = a2[1].n128_u64[0];
  *v8 = result;
  ++a1[5];
  return result;
}

uint64_t sub_10051D40C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v4 = result;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = (result + 504);
  while (v4[64])
  {
    v7 = *(v4[60] + 8 * (v4[63] / 0xAAuLL)) + 24 * (v4[63] % 0xAAuLL);
    v8 = *v7;
    if (*v7 > *(a2 + 296))
    {
      break;
    }

    v9 = v8 + -5.0;
    v11 = *(v7 + 16);
    v10 = *(v7 + 20);
    v12 = *(v7 + 8);
    v13 = a3[1];
    v14 = a3[2];
    if (v13 >= v14)
    {
      v16 = *a3;
      v17 = v13 - *a3;
      v18 = v17 >> 5;
      v19 = (v17 >> 5) + 1;
      if (v19 >> 59)
      {
        sub_10028C64C();
      }

      v20 = v14 - v16;
      if (v20 >> 4 > v19)
      {
        v19 = v20 >> 4;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        sub_1003F6B14(a3, v19);
      }

      v21 = 32 * v18;
      *v21 = v8;
      *(v21 + 8) = v9;
      *(v21 + 16) = v11;
      *(v21 + 20) = v10;
      *(v21 + 24) = v12;
      v15 = 32 * v18 + 32;
      v22 = (v21 - 32 * (v17 >> 5));
      memcpy(v22, v16, v17);
      v23 = *a3;
      *a3 = v22;
      a3[1] = v15;
      a3[2] = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v13 = v8;
      v13[1] = v9;
      *(v13 + 4) = v11;
      *(v13 + 5) = v10;
      v15 = (v13 + 4);
      *(v13 + 3) = v12;
    }

    a3[1] = v15;
    *v6 = vaddq_s64(*v6, xmmword_101C66230);
    result = sub_10027E208((v4 + 59), 1);
  }

  return result;
}

void sub_10051D5C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10051D5E8(void *a1)
{
  *a1 = off_10245C040;
  sub_1000F8B58(a1 + 59);

  return sub_10051C8C8(a1);
}

void sub_10051D640(void *a1)
{
  *a1 = off_10245C040;
  sub_1000F8B58(a1 + 59);
  sub_10051C8C8(a1);

  operator delete();
}

void sub_10051D6DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10051D730(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_10051D730(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 32))(result);
    }
  }

  v1[1] = v2;
  return result;
}

__n128 sub_10051D79C(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = *(a2 - 24);
        v89 = (a2 - 24);
        result.n128_f64[0] = v90;
        if (v90 >= *v12)
        {
          return result;
        }

LABEL_106:
        v198 = *(v12 + 16);
        v169 = *v12;
        v94 = *v89;
        *(v12 + 16) = v89[1].n128_u64[0];
        *v12 = v94;
        result = v169;
        v89[1].n128_u64[0] = v198;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v138 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v138;
          if (*(v12 + 24) < *v12)
          {
            v201 = *(v12 + 16);
            v174 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v174.n128_u64[1];
            *v91 = v174;
            *(v12 + 40) = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = *(v12 + 16);
          v170 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v170.n128_u64[1];
          *v96 = v170;
          v98 = v199;
          goto LABEL_177;
        }

        v203 = *(v12 + 16);
        v177 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        *v91 = v177;
        *(v12 + 40) = v203;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_177:
          *(v12 + 64) = v98;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v96->n128_f64[0])
      {
        return result;
      }

      result = *v96;
      v144 = *(v12 + 64);
      v145 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v145;
      *(a2 - 8) = v144;
      *v9 = result;
      result.n128_u64[0] = v96->n128_u64[0];
      if (v96->n128_f64[0] >= v91->n128_f64[0])
      {
        return result;
      }

      v146 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v146;
LABEL_181:
      result.n128_u64[0] = *(v12 + 24);
      if (result.n128_f64[0] < *v12)
      {
        v204 = *(v12 + 16);
        v178 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v178;
        *v91 = v178;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_10051E704(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            result.n128_u64[0] = v103[1].n128_u64[1];
            if (result.n128_f64[0] < v103->n128_f64[0])
            {
              v171 = v103[2];
              v105 = v102;
              while (1)
              {
                v106 = v12 + v105;
                *(v106 + 24) = *(v12 + v105);
                *(v106 + 40) = *(v12 + v105 + 16);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (result.n128_f64[0] >= *(v106 - 24))
                {
                  v107 = v12 + v105 + 24;
                  goto LABEL_126;
                }
              }

              v107 = v12;
LABEL_126:
              *v107 = result.n128_u64[0];
              result = v171;
              *(v107 + 8) = v171;
            }

            v99 = &v104[1].n128_u64[1];
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v139 = v99;
          result.n128_u64[0] = *(a1 + 24);
          if (result.n128_f64[0] < *a1)
          {
            v175 = *(a1 + 32);
            v140 = v99;
            do
            {
              *v140 = *(v140 - 24);
              *(v140 + 16) = *(v140 - 8);
              v141 = *(v140 - 48);
              v140 -= 24;
            }

            while (result.n128_f64[0] < v141);
            *v140 = result.n128_u64[0];
            result = v175;
            *(v140 + 8) = v175;
          }

          v99 += 24;
          a1 = v139;
        }

        while (v139 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v12 + 24 * v111;
            if (2 * v110 + 2 < v14 && *v112 < *(v112 + 24))
            {
              v112 += 24;
              v111 = 2 * v110 + 2;
            }

            v113 = v12 + 24 * v110;
            v114 = *v113;
            if (*v112 >= *v113)
            {
              v172 = *(v113 + 8);
              do
              {
                v115 = v113;
                v113 = v112;
                v116 = *v112;
                *(v115 + 16) = *(v112 + 16);
                *v115 = v116;
                if (v108 < v111)
                {
                  break;
                }

                v117 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = v12 + 24 * v111;
                v118 = v117 + 2;
                if (v118 < v14 && *v112 < *(v112 + 24))
                {
                  v112 += 24;
                  v111 = v118;
                }
              }

              while (*v112 >= v114);
              *v113 = v114;
              *(v113 + 8) = v172;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v119 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v120 = 0;
          v200 = *(v12 + 16);
          v173 = *v12;
          v121 = v12;
          do
          {
            v122 = v121;
            v123 = v121 + 24 * v120;
            v121 = v123 + 24;
            v124 = 2 * v120;
            v120 = (2 * v120) | 1;
            v125 = v124 + 2;
            if (v125 < v119)
            {
              v127 = *(v123 + 48);
              v126 = v123 + 48;
              if (*(v126 - 24) < v127)
              {
                v121 = v126;
                v120 = v125;
              }
            }

            v128 = *v121;
            v122[1].n128_u64[0] = *(v121 + 16);
            *v122 = v128;
          }

          while (v120 <= ((v119 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v173;
            *(v121 + 16) = v200;
            *v121 = v173;
          }

          else
          {
            v129 = *a2;
            *(v121 + 16) = *(a2 + 16);
            *v121 = v129;
            result = v173;
            *(a2 + 16) = v200;
            *a2 = v173;
            v130 = v121 - v12 + 24;
            if (v130 >= 25)
            {
              v131 = (-2 - 0x5555555555555555 * (v130 >> 3)) >> 1;
              v132 = v12 + 24 * v131;
              result.n128_u64[0] = *v121;
              if (*v132 < *v121)
              {
                v149 = *(v121 + 8);
                do
                {
                  v133 = v121;
                  v121 = v132;
                  v134 = *v132;
                  *(v133 + 16) = *(v132 + 16);
                  *v133 = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = v12 + 24 * v131;
                }

                while (*v132 < result.n128_f64[0]);
                *v121 = result.n128_u64[0];
                result = v149;
                *(v121 + 8) = v149;
              }
            }
          }
        }

        while (v119-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] >= *v12)
      {
        if (v17 < v18)
        {
          v181 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v181;
          *v9 = v152;
          if (v16->n128_f64[0] < *v12)
          {
            v182 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v182;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v179 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v185 = *(v12 + 16);
        v156 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v185;
        *v16 = v156;
        if (*v9 < v16->n128_f64[0])
        {
          v179 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v179;
          *v9 = v150;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v31 = *(v29 - 24);
      v30 = (v29 - 24);
      v32 = v31;
      v33 = *v10;
      if (v31 >= *(v12 + 24))
      {
        if (v33 < v32)
        {
          v186 = v30[1].n128_i64[0];
          v157 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v186;
          *v10 = v157;
          if (v30->n128_f64[0] < v28->n128_f64[0])
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = v30[1].n128_i64[0];
            *v28 = *v30;
            *(v12 + 40) = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = v30[1].n128_i64[0];
        *v28 = *v30;
        *(v12 + 40) = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (*v10 < v30->n128_f64[0])
        {
          v188 = v30[1].n128_i64[0];
          v159 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v46;
          v34 = v159;
          *(a2 - 32) = v188;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v50 = *(v48 + 24);
      v49 = (v48 + 24);
      v51 = v50;
      v52 = *v11;
      if (v50 >= *(v12 + 48))
      {
        if (v52 < v51)
        {
          v189 = v49[1].n128_i64[0];
          v160 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v189;
          *v11 = v160;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 64) = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 64) = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_f64[0])
        {
          v190 = v49[1].n128_i64[0];
          v161 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v63;
          v53 = v161;
          *(a2 - 56) = v190;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_f64[0];
      v65 = v49->n128_f64[0];
      if (v16->n128_f64[0] >= v30->n128_f64[0])
      {
        if (v65 < v64)
        {
          v192 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v192;
          *v49 = v163;
          if (v16->n128_f64[0] < v30->n128_f64[0])
          {
            v193 = v30[1].n128_u64[0];
            v164 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v193;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v191 = v30[1].n128_u64[0];
          v162 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v194 = v30[1].n128_u64[0];
        v165 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (v49->n128_f64[0] < v16->n128_f64[0])
        {
          v191 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v191;
          *v49 = v162;
        }
      }

      v195 = *(v12 + 16);
      v166 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v195;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= v16->n128_f64[0])
    {
      if (v17 < v20)
      {
        v183 = *(v12 + 16);
        v154 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v183;
        *v9 = v154;
        if (*v12 < v16->n128_f64[0])
        {
          v184 = v16[1].n128_u64[0];
          v155 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v184;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v187 = v16[1].n128_u64[0];
      v158 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v187;
      *v12 = v158;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v180 = *(v12 + 16);
      v151 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v180 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v180;
    *v9 = v151;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v147 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v196 = *(v12 + 16);
          v167 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v196;
          *v74 = v167;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v147;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      v79 = sub_10051E94C(a1, v12 - 24, v147);
      if (sub_10051E94C(v12, a2, v80))
      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        sub_10051D79C(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v148 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v197 = *(v12 + 16);
        v168 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v197;
        *v83 = v168;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v148;
      *(v12 - 16) = v148;
    }
  }

  v91 = (v12 + 24);
  result.n128_u64[0] = *(v12 + 24);
  v92 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v92;
  if (result.n128_f64[0] >= *v12)
  {
    if (v93 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v91;
    v136 = *(v12 + 40);
    v137 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v137;
    v89[1].n128_u64[0] = v136;
    *v89 = result;
    goto LABEL_181;
  }

  if (v93 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v202 = *(v12 + 16);
  v176 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v176.n128_u64[1];
  *v91 = v176;
  *(v12 + 40) = v202;
  result.n128_u64[0] = v89->n128_u64[0];
  if (v89->n128_f64[0] < *(v12 + 24))
  {
    result = *v91;
    v142 = *(v12 + 40);
    v143 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v143;
    v89[1].n128_u64[0] = v142;
    goto LABEL_107;
  }

  return result;
}

__n128 sub_10051E704(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, unint64_t *a5, __n128 result)
{
  v6 = a2->n128_f64[0];
  v7 = a3->n128_f64[0];
  if (a2->n128_f64[0] >= a1->n128_f64[0])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f64[0] < a3->n128_f64[0])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_f64[0] < a2->n128_f64[0])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_f64[0] < a1->n128_f64[0])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  result.n128_u64[0] = *a5;
  if (*a5 < a4->n128_f64[0])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[2];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[2] = v23;
    result.n128_u64[0] = a4->n128_u64[0];
    if (a4->n128_f64[0] < a3->n128_f64[0])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      result.n128_u64[0] = a3->n128_u64[0];
      if (a3->n128_f64[0] < a2->n128_f64[0])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        result.n128_u64[0] = a2->n128_u64[0];
        if (a2->n128_f64[0] < a1->n128_f64[0])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL sub_10051E94C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_10051E704(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_10051EDB8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004BF97C(result, a4);
  }

  return result;
}

void sub_10051EE10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10051EE2C(void *a1)
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

void sub_10051EFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10051F000(uint64_t a1, double *a2)
{
  if ((atomic_load_explicit(&qword_102656C50, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_102656C50))
    {
      LODWORD(v6[0]) = 8;
      qword_102656C40 = 0;
      unk_102656C48 = 0;
      qword_102656C38 = 0;
      sub_1004579D4(&qword_102656C38, v6, v6 + 4, 1uLL);
      __cxa_atexit(sub_10051F310, &qword_102656C38, dword_100000000);
      __cxa_guard_release(&qword_102656C50);
    }
  }

  v7 = 0;
  *v6 = xmmword_101C78400;
  memset(&v6[2], 0, 135);
  v8 = xmmword_101C78400;
  v9 = 0;
  v10 = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0u;
  v16 = xmmword_101C78400;
  v17 = 0;
  v18 = 0;
  v19 = 0xFFEFFFFFFFFFFFFFLL;
  v30 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v31 = 0u;
  v32 = 0xFFEFFFFFFFFFFFFFLL;
  v33 = 0;
  v34 = 0;
  v39 = 0;
  v40 = 0;
  v45 = 0;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  v35 = 0u;
  v36 = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  memset(v44, 0, sizeof(v44));
  v46 = 0xFFEFFFFFFFFFFFFFLL;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0xFFEFFFFFFFFFFFFFLL;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0xFFEFFFFFFFFFFFFFLL;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0u;
  v79 = 0x80000000800000;
  v80 = 0u;
  v81 = xmmword_101C78410;
  v82 = 0x80000000800000;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v86 = 0xFFEFFFFFFFFFFFFFLL;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0;
  v94 = 0xFFEFFFFFFFFFFFFFLL;
  v95 = 0;
  v96 = 0;
  v97 = 0xFFEFFFFFFFFFFFFFLL;
  v98 = 7;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0;
  v102 = 0;
  v101 = 0u;
  if (!sub_1000C2B7C(a2, &qword_102656C38, v6))
  {
    return 0;
  }

  if (*(&v52 + 1) > 0.0)
  {
    v4 = *(a1 + 8) + 1;
    *(a1 + 8) = v4;
    if (v4 >= 0x24)
    {
      *(a1 + 8) = 0;
      return 2;
    }

    return 0;
  }

  result = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_10051F310(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10051F3A0(id *a1)
{
  *a1 = off_10245C0E8;
  sub_10051F3F8(a1);

  return sub_1010753C4(a1);
}

void sub_10051F3F8(id *a1)
{
  [a1[26] invalidate];

  a1[26] = 0;
  [a1[27] invalidate];

  a1[27] = 0;
  [a1[28] invalidate];

  a1[28] = 0;
  [a1[29] invalidate];

  a1[29] = 0;
}

void sub_10051F46C(id *a1)
{
  sub_10051F3A0(a1);

  operator delete();
}

void sub_10051F4A4(uint64_t a1, void *a2)
{
  if (a2 && [a2 length])
  {
    [a2 getBytes:buf length:24];
    if (!*buf)
    {
      v5 = v8;
      v6 = v9;
      if (*(&v8 + 1))
      {
        if (*(a1 + 117) != *(&v8 + 1))
        {
          sub_101075508(a1, &v5);
        }

        sub_10051F670(a1);
      }

      else
      {
        sub_10051F5C0(a1);
      }
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B2258();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "MotionStateObserver, Invalid data received.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018B226C();
    }
  }
}

id sub_10051F5C0(uint64_t a1)
{
  sub_1010757E0(a1);
  if (qword_1025D4200 != -1)
  {
    sub_1018B2258();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateObserver, Disabling update timer.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B2358();
  }

  return [*(a1 + 136) setNextFireDelay:1.79769313e308 interval:1.79769313e308];
}

id sub_10051F670(uint64_t a1)
{
  [*(a1 + 136) invalidate];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10051F774;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [*(a1 + 136) setHandler:v5];
  if (qword_1025D4200 != -1)
  {
    sub_1018B2444();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateObserver, Starting update timer.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B246C();
  }

  return [*(a1 + 136) setNextFireDelay:90.0];
}

void *sub_10051F774(void *result)
{
  v1 = result[4];
  if (*(v1 + 117) || *(v1 + 121))
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018B2258();
    }

    v2 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
    {
      v3 = 134217984;
      v4 = 0x4056800000000000;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "MotionStateObserver, Timing out session since we have not heard a response in %f seconds.", &v3, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B2558();
    }

    return sub_10051F5C0(v1);
  }

  return result;
}

void sub_10051F864(uint64_t a1, _DWORD *a2, unsigned __int8 *a3)
{
  if (*a2 == 6)
  {
    v3 = *a3;
    if (*(a1 + 192) != v3)
    {
      *(a1 + 192) = v3;
      sub_10051F88C(a1);
    }
  }
}

void sub_10051F88C(uint64_t a1)
{
  if (+[CMActivityAlarmLocal activityAlarmAvailable])
  {
    sub_10051F3F8(a1);
    if (*(a1 + 192) == 1 && *(a1 + 144) == 1 && (*buf = 1, sub_10000608C(a1, buf, 1)))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v15 = *(a1 + 146);
      v16 = *(a1 + 162);
      v3 = Current < *&v15;
      v4 = vabdd_f64(Current, *&v15);
      if (v3 || v4 > 320.0)
      {
        v15 = 0x10000000000000uLL;
        v16 = 0;
      }

      sub_101075918(a1, &v15);
      v14 = 1;
      *buf = v15;
      *&buf[16] = v16;
      (*(*a1 + 152))(a1, &v14, buf, 0, 0xFFFFFFFFLL, 0);
      if (qword_1025D4200 != -1)
      {
        sub_1018B2444();
      }

      v6 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = DWORD2(v15);
        *&buf[18] = 1024;
        v18 = HIDWORD(v15);
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,MotionState,startTime,%.3f,activityType,%d,vehicularConfidence,%d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B265C(&v15);
      }

      if ((HIDWORD(v15) - 2) < 3)
      {
        v7 = *(a1 + 200) + 300.0;
        v8 = sub_10051FBA0(a1, 4, v7);
        v9 = 224;
LABEL_28:
        *(a1 + v9) = v8;
        v12 = 5;
        v13 = 232;
LABEL_29:
        *(a1 + v13) = sub_10051FBA0(a1, v12, 10.0);
        return;
      }

      if (!HIDWORD(v15))
      {
        v12 = 4;
        v13 = 208;
        goto LABEL_29;
      }

      if (HIDWORD(v15) == 1)
      {
        v11 = *(a1 + 200) + 300.0;
        *(a1 + 224) = sub_10051FBA0(a1, 4, v11);
        v8 = sub_10051FBA0(a1, 16, 10.0);
        v9 = 216;
        goto LABEL_28;
      }
    }

    else
    {
      if (qword_1025D4200 != -1)
      {
        sub_1018B2444();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,STOP", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B2778();
      }
    }
  }
}

void sub_10051FB7C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    v3 = *(a3 + 3);
    if (*(a1 + 144) != v3)
    {
      *(a1 + 144) = v3;
      sub_10051F88C(a1);
    }
  }
}

CMActivityAlarmLocal *sub_10051FBA0(uint64_t a1, uint64_t a2, float a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018B2258();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v18 = a2;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,setActivityAlarm,%d,duration,%0.3f", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_1018B2444();
    }

    v7 = a3;
    v13 = 67109376;
    v14 = a2;
    v15 = 2048;
    v16 = v7;
    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CMActivityAlarm *CLMotionStateObserverCompanion::createActivityAlarm(const CMActivityAlarmTrigger, const float)", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  else
  {
    v7 = a3;
  }

  v8 = [CMActivityAlarmLocal alloc];
  v9 = [*(a1 + 40) queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10051FDD8;
  v12[3] = &unk_10245C1D8;
  v12[4] = a1;
  return [(CMActivityAlarmLocal *)v8 initWithTrigger:a2 duration:v9 onQueue:v12 withHandler:v7];
}

id sub_10051FDE0(uint64_t a1, void *a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018B2258();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = [a2 trigger];
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "MotionStateObserver,VehicularTracking,onActivityAlarm,%d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B2864(a2);
  }

  result = [a2 trigger];
  if (result == 16)
  {
LABEL_10:
    [a2 activityDuration];
    if (*(a1 + 200) >= v6)
    {
      v6 = *(a1 + 200);
    }

    *(a1 + 200) = v6;
    return sub_10051F88C(a1);
  }

  if (result != 5)
  {
    if (result != 4)
    {
      return result;
    }

    goto LABEL_10;
  }

  *(a1 + 200) = 0;
  return sub_10051F88C(a1);
}

void sub_10051FF10(_BYTE *a1, void *a2)
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
        sub_1018B2978();
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
        sub_1018B298C(a1, a2);
      }
    }
  }
}

BOOL sub_10052018C(uint64_t a1, void *a2, int *a3)
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
      sub_1018B2978();
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
      sub_1018B2B9C(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100520320(char *a1, int a2, int *a3)
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
              sub_10004E6E0((v15 + 40), &v23);
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
                sub_1018B2CA4();
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
                  sub_1018B2CA4();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLMotionStateObserver_Type::Notification, CLMotionStateObserver_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLMotionStateObserver_Type::Notification, NotificationData_T = CLMotionStateObserver_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v22);
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

uint64_t sub_1005207A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  return (*(*a1 + 152))(a1, a2, v5, a3, a4, 0);
}

void sub_1005207FC(uint64_t a1, int *a2, uint64_t a3, int a4)
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
      sub_1005210C0();
    }
  }
}

void sub_100520CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101865570(va);
  sub_101864718(v9 - 144);
  _Unwind_Resume(a1);
}

void sub_100520D00(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018B2978();
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
      sub_1018B2DEC(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018B2978();
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
      sub_1018B2CCC(a1);
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
              sub_1018B2CA4();
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
                sub_1018B2CA4();
              }

              v16 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLMotionStateObserver_Type::Notification, CLMotionStateObserver_Type::NotificationData>::listClients() [Notification_T = CLMotionStateObserver_Type::Notification, NotificationData_T = CLMotionStateObserver_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v16);
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

void sub_100521174(void *a1, int *a2, void *a3)
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
        v10 = sub_1005216C4(a3);
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
              sub_100521530(a1, &v36, &v37, a3);
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
                sub_1018B2CA4();
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
                  sub_1018B2CA4();
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
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLMotionStateObserver_Type::Notification, CLMotionStateObserver_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLMotionStateObserver_Type::Notification, NotificationData_T = CLMotionStateObserver_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
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

_BYTE *sub_100521530(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_1005216C4(a4);
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

void sub_100521648(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245C240;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005216A4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1005216C4(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_100521760(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1005218FC(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_100521760(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_100521AC4(&v8, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018B2EFC();
    }

    v3 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v3;
    v5 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018B2EFC();
    }

    v7 = qword_1025D41A8;
    if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 134218498;
    v10 = v2;
    v11 = 2048;
    v12 = 0;
    v13 = 2080;
    v14 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = v7;
    v5 = OS_LOG_TYPE_FAULT;
  }

  _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
  return 0;
}

id sub_1005218FC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B2EFC();
      }

      v3 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3;
      v5 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018B2EFC();
      }

      v7 = qword_1025D41A8;
      if (!os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }

      v8 = 134218498;
      v9 = v2;
      v10 = 2048;
      v11 = 0;
      v12 = 2080;
      v13 = 0x8000000101C7D3C2 & 0x7FFFFFFFFFFFFFFFLL;
      v4 = v7;
      v5 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(dword_100000000, v4, v5, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v8, 0x20u);
    return 0;
  }

  return [a1 cppObjectPtr];
}

id sub_100521AC4(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EA20))
  {
    if ([objc_msgSend(a2 "serialized")] != 20)
    {
      sub_1018B2F10();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

uint64_t sub_100521C60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100521F14(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v35 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) > 2)
      {
        if (v12 == 3)
        {
          *(a1 + 24) |= 4u;
          v33 = 0;
          v27 = [a2 position] + 4;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 4, v28 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v33;
          v31 = 20;
LABEL_61:
          *(a1 + v31) = v30;
          goto LABEL_62;
        }

        if (v12 != 4)
        {
LABEL_34:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v36 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v36 & 0x7F) << v15;
          if ((v36 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v10 = v16++ >= 9;
          if (v10)
          {
            v20 = 0;
            goto LABEL_51;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v17;
        }

LABEL_51:
        v29 = 8;
      }

      else
      {
        if (v12 != 1)
        {
          if (v12 != 2)
          {
            goto LABEL_34;
          }

          *(a1 + 24) |= 2u;
          v34 = 0;
          v13 = [a2 position] + 4;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 4, v14 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v30 = v34;
          v31 = 12;
          goto LABEL_61;
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v37 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v37 & 0x7F) << v22;
          if ((v37 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v10 = v23++ >= 9;
          if (v10)
          {
            v20 = 0;
            goto LABEL_55;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v24;
        }

LABEL_55:
        v29 = 16;
      }

      *(a1 + v29) = v20;
LABEL_62:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100522F24(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v53) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v53 & 0x7F) << v5;
        if ((v53 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = (v11 >> 3);
      if (v12 <= 4)
      {
        if ((v11 >> 3) > 2u)
        {
          if (v12 == 3)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 68) |= 0x20u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v40 = [a2 position] + 1;
              if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v39 |= (v53 & 0x7F) << v37;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v10 = v38++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_113;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v39;
            }

LABEL_113:
            v50 = 60;
            goto LABEL_114;
          }

          if (v12 == 4)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 68) |= 4u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v53 & 0x7F) << v21;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v10 = v22++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_101;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v23;
            }

LABEL_101:
            v51 = 24;
            goto LABEL_119;
          }
        }

        else
        {
          if (v12 == 1)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            *(a1 + 68) |= 0x40u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v35 = [a2 position] + 1;
              if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v34 |= (v53 & 0x7F) << v32;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v10 = v33++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_109;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v34;
            }

LABEL_109:
            v50 = 64;
            goto LABEL_114;
          }

          if (v12 == 2)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 68) |= 0x10u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v53 & 0x7F) << v15;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v10 = v16++ >= 9;
              if (v10)
              {
                v20 = 0;
                goto LABEL_97;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v17;
            }

LABEL_97:
            v50 = 56;
            goto LABEL_114;
          }
        }
      }

      else if ((v11 >> 3) <= 6u)
      {
        if (v12 == 5)
        {
          *(a1 + 68) |= 1u;
          v53 = 0;
          v43 = [a2 position] + 8;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 8, v44 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v53;
          goto LABEL_122;
        }

        if (v12 == 6)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 68) |= 8u;
          while (1)
          {
            LOBYTE(v53) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v53 & 0x7F) << v27;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v20 = 0;
              goto LABEL_105;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_105:
          v50 = 40;
LABEL_114:
          *(a1 + v50) = v20;
          goto LABEL_122;
        }
      }

      else
      {
        switch(v12)
        {
          case 7u:
            v42 = objc_alloc_init(TRANSITPbLocationFingerprintsV1);

            *(a1 + 32) = v42;
            v53 = 0;
            v54 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_101073EEC(v42, a2);
            if (!result)
            {
              return result;
            }

            goto LABEL_79;
          case 8u:
            v45 = 0;
            v46 = 0;
            v47 = 0;
            *(a1 + 68) |= 2u;
            while (1)
            {
              LOBYTE(v53) = 0;
              v48 = [a2 position] + 1;
              if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v47 |= (v53 & 0x7F) << v45;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v45 += 7;
              v10 = v46++ >= 9;
              if (v10)
              {
                v26 = 0;
                goto LABEL_118;
              }
            }

            if ([a2 hasError])
            {
              v26 = 0;
            }

            else
            {
              v26 = v47;
            }

LABEL_118:
            v51 = 16;
LABEL_119:
            *(a1 + v51) = v26;
            goto LABEL_122;
          case 9u:
            v13 = objc_alloc_init(TRANSITPbLocationFingerprints);

            *(a1 + 48) = v13;
            v53 = 0;
            v54 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            result = sub_1007DAC20(v13, a2);
            if (!result)
            {
              return result;
            }

LABEL_79:
            PBReaderRecallMark();
            goto LABEL_122;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_122:
      v52 = [a2 position];
    }

    while (v52 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id sub_100524654(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 25) = 1;
  v3 = *(a1 + 32);
  if ((v3[7] != 0) != a2)
  {
    sub_1018B34E8(v3, a2);
  }

  return [v3 _doSigningWhenReady];
}

uint64_t sub_100524D3C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B37B0();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning MESCAL: churn failure: signing disabled", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B37C4();
    }

    v4 = *(*(a1 + 32) + 56);
    if (v4)
    {
      sub_100329B60(v4);
      *(*(a1 + 32) + 56) = 0;
    }
  }

  return (*(*(a1 + 40) + 16))();
}

id sub_100524E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 8);
  v6[1] = 3221225472;
  v6[2] = sub_100524E8C;
  v6[3] = &unk_10245C340;
  v6[4] = a3;
  v6[5] = a2;
  v7 = v3;
  return [v4 async:v6];
}

id sub_100524E8C(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B38CC();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) description];
      *buf = 68289282;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: could not load store URL bag, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v4 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v5 = [*(a1 + 32) description];
      *buf = 68289282;
      *&buf[4] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: could not load store URL bag", "{msg%{public}.0s:MESCAL: could not load store URL bag, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 40) objectForKey:@"loc-sign-sap-version"];
    if (!v7)
    {
      v7 = [*(a1 + 40) objectForKey:@"sign-sap-version"];
    }

    *(*(a1 + 48) + 64) = [v7 copy];
    v8 = [*(a1 + 40) objectForKey:@"loc-sign-sap-setup-cert"];
    if (!v8)
    {
      v8 = [*(a1 + 40) objectForKey:@"sign-sap-setup-cert"];
    }

    *(*(a1 + 48) + 72) = [v8 copy];
    v9 = [*(a1 + 40) objectForKey:@"loc-sign-sap-setup"];
    if (!v9)
    {
      v9 = [*(a1 + 40) objectForKey:@"sign-sap-setup"];
    }

    *(*(a1 + 48) + 80) = [v9 copy];
    v10 = [NSURLRequest requestWithURL:[NSURL URLWithString:*(*(a1 + 48) + 72)]];
    v11 = [*(a1 + 48) _mescalSignerNSURLSession];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100525150;
    v12[3] = &unk_10245C318;
    v13 = *(a1 + 48);
    [objc_msgSend(v11 dataTaskWithRequest:v10 completionHandler:{v12), "resume"}];
    return [v11 finishTasksAndInvalidate];
  }
}

id sub_100525150(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B37B0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 136446210;
      *&v17[4] = [objc_msgSend(a4 "description")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning MESCAL: signer cert download did fail, dude: %{public}s", v17, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B38E0(a4);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v8 = [NSPropertyListSerialization propertyListWithData:a2 options:0 format:0 error:0];
  v9 = [v8 objectForKey:@"sign-sap-setup-cert"];
  if (!v9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B38CC();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      *v17 = 68289282;
      *&v17[8] = 2082;
      v14 = v8 ? "Y" : "N";
      *&v17[10] = "";
      v18 = 2082;
      v19 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: could not extract data from cert download, dict:%{public, location:escape_only}s}", v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v15 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *v17 = 68289282;
      *&v17[8] = 2082;
      if (v8)
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      *&v17[10] = "";
      v18 = 2082;
      v19 = v16;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: could not extract data from cert download", "{msg%{public}.0s:MESCAL: could not extract data from cert download, dict:%{public, location:escape_only}s}", v17, 0x1Cu);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 _churnMescalExchangeData:v10 withCompletion:v12];
}

id sub_10052583C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018B37B0();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136446210;
      *v18 = [objc_msgSend(a4 "description")];
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning MESCAL: exchange data up/download did fail, dude: %{public}s", &v17, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B3CA8(a4);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v8 = [NSPropertyListSerialization propertyListWithData:a2 options:0 format:0 error:0];
  v9 = [v8 objectForKey:@"sign-sap-setup-buffer"];
  if (!v9)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018B38CC();
    }

    v13 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v14 = v8 ? "Y" : "N";
      v17 = 68289282;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MESCAL: could not extract data from exchange download, dict:%{public, location:escape_only}s}", &v17, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018B3094();
      }
    }

    v15 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      if (v8)
      {
        v16 = "Y";
      }

      else
      {
        v16 = "N";
      }

      v17 = 68289282;
      *v18 = 0;
      *&v18[4] = 2082;
      *&v18[6] = "";
      v19 = 2082;
      v20 = v16;
      _os_signpost_emit_with_name_impl(dword_100000000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MESCAL: could not extract data from exchange download", "{msg%{public}.0s:MESCAL: could not extract data from exchange download, dict:%{public, location:escape_only}s}", &v17, 0x1Cu);
    }

    return (*(*(a1 + 40) + 16))();
  }

  v10 = v9;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);

  return [v11 _churnMescalExchangeData:v10 withCompletion:v12];
}

uint64_t sub_100525B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = off_10245C3D8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x4034000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,CLGNSSStateQueryAssertion,init}", buf, 0x12u);
  }

  sub_10001CAF4(buf);
  v5 = *(a1 + 80);
  v11 = 0.0;
  v6 = sub_1000B9370(*buf, "CLGNSSStateQueryAssertionPeriodicity_s", &v11);
  v7 = v11;
  if (!v6)
  {
    v7 = v5;
  }

  *(a1 + 80) = v7;
  if (*v13)
  {
    sub_100008080(*v13);
  }

  if (qword_1025D4790 != -1)
  {
    sub_100249B74();
  }

  v8 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 80);
    *buf = 68289282;
    *&buf[4] = 0;
    *v13 = 2082;
    *&v13[2] = "";
    v14 = 2050;
    v15 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,CLGNSSStateQueryAssertion,init, fResponsePeriodicity:%{public}0.3f}", buf, 0x1Cu);
  }

  return a1;
}

uint64_t sub_100525DC0(uint64_t a1)
{
  *a1 = off_10245C3D8;
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v2 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,CLGNSSStateQueryAssertion,Deinit}", v6, 0x12u);
  }

  v3 = *(a1 + 96);
  if (v3)
  {
    [v3 invalidate];

    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100143A80(a1);
  return a1;
}

void sub_100525EFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100525F0C(uint64_t a1)
{
  sub_100525DC0(a1);

  operator delete();
}

uint64_t sub_100525F44(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    LODWORD(v10[0]) = 0;
    WORD2(v10[0]) = 2082;
    *(v10 + 6) = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLGNSSStateQueryAssertion,handleMessage}", buf, 0x12u);
    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }
  }

  v4 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CLConnectionMessage::name(*a2);
    if (*(v5 + 23) >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *v5;
    }

    *buf = 136380675;
    v10[0] = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,message,%{private}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B3DBC(a2);
  }

  result = CLConnectionMessage::name(*a2);
  if (*(result + 23) < 0 && *(result + 8) == 37)
  {
    result = memcmp(*result, "kCLConnectionMessageBBGnssStatusQuery", 0x25uLL);
    if (!result)
    {
      v8 = *(a2 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      sub_100526138();
    }
  }

  return result;
}

void sub_100526118(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005271AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10052893C(uint64_t a1, __int128 *a2)
{
  *a1 = &off_10245C4B8;
  v4 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 32), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 48) = *(a2 + 5);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = *(a2 + 12);
  *(a1 + 64) = 0;
  if ((atomic_load_explicit(&qword_102656C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656C60))
  {
    v7 = 0;
    sub_100126E84(&unk_102656C58, "ResumeRemindersModelDebugLogging", &v7, 0);
    __cxa_guard_release(&qword_102656C60);
  }

  *(a1 + 64) = byte_102656C59;
  return a1;
}

void sub_100528A28(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_102656C60);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

void sub_100528A50(uint64_t a1, double *a2)
{
  *buf = 5;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_1004579D4(&__p, buf, &v24, 1uLL);
  v37 = 0;
  *v36 = xmmword_101C78400;
  memset(&v36[2], 0, 135);
  v38 = xmmword_101C78400;
  v39 = 0;
  v40 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0u;
  v46 = xmmword_101C78400;
  v47 = 0;
  v48 = 0;
  v49 = 0xFFEFFFFFFFFFFFFFLL;
  v60 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  v61 = 0u;
  v62 = 0xFFEFFFFFFFFFFFFFLL;
  v63 = 0;
  v64 = 0;
  v69 = 0;
  v70 = 0;
  v75 = 0;
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  v65 = 0u;
  v66 = 0u;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  memset(v74, 0, sizeof(v74));
  v76 = 0xFFEFFFFFFFFFFFFFLL;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  *v97 = 0xFFEFFFFFFFFFFFFFLL;
  memset(&v97[8], 0, 64);
  v98 = 0xFFEFFFFFFFFFFFFFLL;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0xFFEFFFFFFFFFFFFFLL;
  v104 = 0u;
  v105 = 0x80000000800000;
  v106 = 0u;
  v107 = xmmword_101C78410;
  v108 = 0x80000000800000;
  v109 = 0u;
  v110 = 0u;
  v111 = 0;
  v112 = 0xFFEFFFFFFFFFFFFFLL;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0;
  v120 = 0xFFEFFFFFFFFFFFFFLL;
  v121 = 0;
  v122 = 0;
  v123 = 0xFFEFFFFFFFFFFFFFLL;
  v124 = 7;
  v125 = 0xFFEFFFFFFFFFFFFFLL;
  v126 = 0;
  v128 = 0;
  v127 = 0u;
  if (sub_1000C2B7C(a2, &__p, v36))
  {
    v31 = *v97;
    v32 = *&v97[16];
    v33 = *&v97[32];
    v34 = *&v97[48];
    v35 = *&v97[64];
    if (*v97 > *(a1 + 24))
    {
      if ((atomic_load_explicit(&qword_102656C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656C78))
      {
        *buf = 0;
        sub_1004861C8(&byte_102656C68, "ResumeRemindersClassificationOverride", buf, 0);
        __cxa_guard_release(&qword_102656C78);
      }

      if (byte_102656C68 == 1)
      {
        *&v32 = dword_102656C6C;
      }

      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v4 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
      {
        v5 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v5 = *v5;
        }

        *buf = 136315906;
        v24 = v5;
        v25 = 2048;
        v26 = v31;
        v27 = 2048;
        v28 = v32;
        v29 = 2048;
        v30 = *(&v32 + 2);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model %s, adding tier2 entry,startTime,%f,type,%zu,confidence,%f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D43F0 != -1)
        {
          sub_1018B4AE8();
        }

        v10 = (a1 + 32);
        if (*(a1 + 55) < 0)
        {
          v10 = *v10;
        }

        v15 = 136315906;
        v16 = v10;
        v17 = 2048;
        v18 = v31;
        v19 = 2048;
        v20 = v32;
        v21 = 2048;
        v22 = *(&v32 + 2);
        v11 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLWorkoutResumeReminders::DefaultActivityModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v11);
        if (v11 != buf)
        {
          free(v11);
        }
      }

      sub_100529078((a1 + 72), &v31);
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v6 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v7 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      v24 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "[resume reminders] model %s, failed to get tier2 source", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v8 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v8 = *v8;
      }

      LODWORD(v31) = 136315138;
      *(&v31 + 4) = v8;
      v9 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "virtual void CLWorkoutResumeReminders::DefaultActivityModel::update(const CLWorkoutPredictorInputs &)", "%s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_100529034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  __cxa_guard_abort(&qword_102656C78);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100529078(void *a1, uint64_t a2)
{
  sub_10052C66C(a1, a2);
  v3 = a1[5];
  if (v3 >= 0x78)
  {
    ++a1[4];
    a1[5] = v3 - 1;

    sub_10052C908(a1, 1);
  }
}

uint64_t sub_1005290DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45[0] = off_10245C610;
  v45[1] = a1;
  v45[3] = v45;
  sub_10052972C((a1 + 72), "\b", v45, v26);
  sub_10052CC9C(v45);
  v44[0] = off_10245C610;
  v44[1] = a1;
  v44[3] = v44;
  sub_10052972C((a1 + 72), &unk_101C7D528, v44, v25);
  sub_10052CC9C(v44);
  v43[0] = off_10245C610;
  v43[1] = a1;
  v43[3] = v43;
  sub_10052972C((a1 + 72), &unk_101C7D540, v43, v24);
  sub_10052CC9C(v43);
  if (*(a1 + 64) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_1018B4AE8();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 8);
      sub_10000EC00(&v23, "ActivityTentative");
      sub_1005297E0(&v23.__r_.__value_.__l.__data_, v26 + 8, &v27);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v27;
      }

      else
      {
        v7 = v27.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v21, "ActivityConfident");
      sub_1005297E0(&v21.__r_.__value_.__l.__data_, v25 + 8, &v22);
      if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = &v22;
      }

      else
      {
        v8 = v22.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&v19, "ActivityRetraction");
      sub_1005297E0(&v19.__r_.__value_.__l.__data_, v24 + 8, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      v34 = v5;
      v35 = 2048;
      v36 = v6;
      v37 = 2080;
      v38 = v7;
      v39 = 2080;
      v40 = v8;
      v41 = 2080;
      v42 = p_p;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[resume reminders] model,%s,workout,%zu,%s,%s,%s", buf, 0x34u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018B4AE8();
      }

      v11 = (a1 + 32);
      if (*(a1 + 55) < 0)
      {
        v11 = *v11;
      }

      v12 = *(a1 + 8);
      sub_10000EC00(&v22, "ActivityTentative");
      v13 = &v23;
      sub_1005297E0(&v22.__r_.__value_.__l.__data_, v26 + 8, &v23);
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v23.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(&__p, "ActivityConfident");
      v14 = &v21;
      sub_1005297E0(&__p.__r_.__value_.__l.__data_, v25 + 8, &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      sub_10000EC00(v17, "ActivityRetraction");
      sub_1005297E0(v17, v24 + 8, &v19);
      if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v19;
      }

      else
      {
        v15 = v19.__r_.__value_.__r.__words[0];
      }

      LODWORD(v27.__r_.__value_.__l.__data_) = 136316162;
      *(v27.__r_.__value_.__r.__words + 4) = v11;
      WORD2(v27.__r_.__value_.__r.__words[1]) = 2048;
      *(&v27.__r_.__value_.__r.__words[1] + 6) = v12;
      HIWORD(v27.__r_.__value_.__r.__words[2]) = 2080;
      v28 = v13;
      v29 = 2080;
      v30 = v14;
      v31 = 2080;
      v32 = v15;
      v16 = _os_log_send_and_compose_impl();
      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual Result CLWorkoutResumeReminders::DefaultActivityModel::run() const", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  return sub_100529F0C(a1, (a1 + 72), v26, v25, v24, a2);
}

void sub_10052960C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10052972C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  *a4 = *(a2 + 16);
  v6 = *a2;
  v7 = *(a2 + 8);
  sub_10052CB04(v9, a3);
  sub_10052C968(a1, v6, v7, v9, (a4 + 2));
  return sub_10052CC9C(v9);
}

void sub_1005297C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10052CC9C(va);
  _Unwind_Resume(a1);
}

void sub_1005297E0(const void **a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = &v59;
  sub_100070148(&v59, v6 + 2);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v59.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "M,");
  std::to_string(&v58, *(a2 + 16));
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v58;
  }

  else
  {
    v9 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v58.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v59, v9, size);
  v60 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[1];
  }

  v13 = &v58;
  sub_100070148(&v58, v12 + 2);
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v58.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (*(a1 + 23) >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, "N,");
  std::to_string(&v57, *(a2 + 24));
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = &v57;
  }

  else
  {
    v15 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v16 = v57.__r_.__value_.__l.__size_;
  }

  v17 = std::string::append(&v58, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v59.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v59.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v19 = *(a1 + 23);
  }

  else
  {
    v19 = a1[1];
  }

  v20 = &v57;
  sub_100070148(&v57, v19 + 5);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v57.__r_.__value_.__r.__words[0];
  }

  if (v19)
  {
    if (*(a1 + 23) >= 0)
    {
      v21 = a1;
    }

    else
    {
      v21 = *a1;
    }

    memmove(v20, v21, v19);
  }

  strcpy(v20 + v19, "Time,");
  std::to_string(&v56, *a2);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v56;
  }

  else
  {
    v22 = v56.__r_.__value_.__r.__words[0];
  }

  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = v56.__r_.__value_.__l.__size_;
  }

  v24 = std::string::append(&v57, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v58.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v58.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) >= 0)
  {
    v26 = *(a1 + 23);
  }

  else
  {
    v26 = a1[1];
  }

  v27 = &v56;
  sub_100070148(&v56, v26 + 8);
  if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v27 = v56.__r_.__value_.__r.__words[0];
  }

  if (v26)
  {
    if (*(a1 + 23) >= 0)
    {
      v28 = a1;
    }

    else
    {
      v28 = *a1;
    }

    memmove(v27, v28, v26);
  }

  strcpy(v27 + v26, "Matches,");
  std::to_string(&v55, *(a2 + 8));
  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v55;
  }

  else
  {
    v29 = v55.__r_.__value_.__r.__words[0];
  }

  if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v55.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v56, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v57.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v57.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  v33 = SHIBYTE(v60.__r_.__value_.__r.__words[2]);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v60.__r_.__value_.__l.__size_;
  }

  v35 = &v52;
  sub_100070148(&v52, v34 + 1);
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v35 = v52.__r_.__value_.__r.__words[0];
  }

  if (v34)
  {
    if (v33 >= 0)
    {
      v36 = &v60;
    }

    else
    {
      v36 = v60.__r_.__value_.__r.__words[0];
    }

    memmove(v35, v36, v34);
  }

  *(&v35->__r_.__value_.__l.__data_ + v34) = 44;
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v59;
  }

  else
  {
    v37 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v59.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(&v52, v37, v38);
  v40 = *&v39->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  v41 = std::string::append(&v53, ",", 1uLL);
  v42 = *&v41->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v58;
  }

  else
  {
    v43 = v58.__r_.__value_.__r.__words[0];
  }

  if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v58.__r_.__value_.__l.__size_;
  }

  v45 = std::string::append(&v54, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v55.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
  *&v55.__r_.__value_.__l.__data_ = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  v47 = std::string::append(&v55, ",", 1uLL);
  v48 = *&v47->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v48;
  v47->__r_.__value_.__l.__size_ = 0;
  v47->__r_.__value_.__r.__words[2] = 0;
  v47->__r_.__value_.__r.__words[0] = 0;
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v57;
  }

  else
  {
    v49 = v57.__r_.__value_.__r.__words[0];
  }

  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v57.__r_.__value_.__l.__size_;
  }

  v51 = std::string::append(&v56, v49, v50);
  *a3 = *v51;
  v51->__r_.__value_.__l.__size_ = 0;
  v51->__r_.__value_.__r.__words[2] = 0;
  v51->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v33 & 0x80000000) == 0)
    {
      return;
    }

LABEL_127:
    operator delete(v60.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v59.__r_.__value_.__l.__data_);
  if (v33 < 0)
  {
    goto LABEL_127;
  }
}