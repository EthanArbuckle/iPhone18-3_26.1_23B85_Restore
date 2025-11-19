uint64_t sub_100678A70(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100549B08(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100678ABC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100D58D7C();

    operator delete();
  }

  return result;
}

uint64_t sub_100678B08(void *a1)
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
    v6 = &v2[v5 / 0x49];
    v7 = *v6;
    v8 = *v6 + 56 * (v5 % 0x49);
    v9 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          *(v8 + 16) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 56;
        if (v8 - v7 == 4088)
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
    v13 = 36;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 73;
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

void sub_100678D8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024676B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100678E08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467708;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100678EF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467758;
  a2[1] = v2;
  return result;
}

id sub_100678F20(uint64_t a1)
{
  v1 = [objc_msgSend(**(a1 + 8) "vendor")];

  return [v1 syncgetNonSystemLocationClientKeys];
}

uint64_t sub_100678F5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100678FA8(uint64_t a1)
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

void sub_100679048(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024677E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100679134(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467838;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679160(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067921C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024678B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679250(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067930C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467948;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067938C(uint64_t a1)
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

uint64_t sub_10067940C(uint64_t a1)
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

void *sub_1006794F8(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024679D8;
  sub_1006795DC((a1 + 3), a2);
  return a1;
}

void sub_100679574(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024679D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006795C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100008080(v1);
  }
}

uint64_t sub_1006795DC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_100D9BFBC(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_100008080(*(&v4 + 1));
  }

  return a1;
}

void sub_100679628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006796CC(void *a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467A28;
  sub_1006797C4((a1 + 3), a2, a3, a4, a5);
  return a1;
}

void sub_100679748(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006797C4(uint64_t a1, uint64_t *a2, uint64_t *a3, double *a4, double *a5)
{
  v6 = a2[1];
  v11 = *a2;
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v9 = *a3;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FC28(a1, &v11, &v9, *a4, *a5);
  if (v10)
  {
    sub_100008080(v10);
  }

  if (v12)
  {
    sub_100008080(v12);
  }

  return a1;
}

void sub_100679850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006798E8(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102467A78;
  sub_100679A1C((a1 + 3), a2, a3);
  return a1;
}

void sub_100679964(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467A78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006799B8(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_1001FB750(a1 + 19);
  sub_1001FB750(a1 + 16);
  v3 = a1[14];
  if (v3)
  {

    sub_100008080(v3);
  }
}

uint64_t sub_100679A1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100E608F4(a1, &v9, &v7);
  if (v8)
  {
    sub_100008080(v8);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  return a1;
}

void sub_100679AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100679AE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100679BB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467B18;
  a2[1] = v2;
  return result;
}

uint64_t sub_100679BEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100679C38(uint64_t a1)
{
  sub_100176170(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100008080(v2);
  }
}

uint64_t sub_100679CF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100679DB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467C38;
  a2[1] = v2;
  return result;
}

id sub_100679DE0(uint64_t a1, __int128 *a2)
{
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v5 = *a2;
  v6 = a2[1];
  v2 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_1018FA228();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:BarometricAltitude callback}", buf, 0x12u);
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  *buf = v5;
  *&buf[16] = v6;
  return sub_100F2817C(v2, buf);
}

uint64_t sub_100679EE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100679F34(uint64_t a1)
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

uint64_t sub_10067A024(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467CC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10067A050(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A09C(uint64_t a1)
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

uint64_t sub_10067A18C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467D58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10067A1C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A27C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467DE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10067A2A8(uint64_t a1)
{
  result = *(*(a1 + 8) + 280);
  if (result)
  {
    return (*(*result + 544))();
  }

  return result;
}

uint64_t sub_10067A2E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A3A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102467E78;
  a2[1] = v2;
  return result;
}

void sub_10067A3CC(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 784);
  if (v1)
  {
    sub_1007D6A4C(v1);
  }
}

uint64_t sub_10067A3E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067A42C(uint64_t a1)
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

void sub_10067A4AC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10067A4AC(a1, *a2);
    sub_10067A4AC(a1, a2[1]);
    sub_100678894((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_10067A508(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10067A5C8();
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

uint64_t sub_10067A68C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100678894(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10067A6F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10067A7C0(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
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

void sub_10067A948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10067A994(int a1@<W8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v5 - 76) = a1;
  *(v5 - 72) = 2053;
  *(v4 + 10) = v2;
  *(v5 - 62) = 2053;
  *(v4 + 20) = v3;
}

void sub_10067A9F4()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_10067AAB8()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_10067AB70()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C84D00;
      v0[3] = unk_101C84D10;
      v0[4] = xmmword_101C84D20;
      v0[0] = xmmword_101C84CE0;
      v0[1] = unk_101C84CF0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

uint64_t sub_10067AC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100D8A428(a1, a2, a3);
  *v4 = off_102467F48;
  *(v4 + 80) = 0;
  sub_10001CAF4(&v8);
  v10 = 0;
  v5 = sub_10001CB4C(v8, "CLProactiveInertialOdometryIsEnabled", &v10);
  *(a1 + 80) = v10 || (v5 & 1) == 0;
  if (v9)
  {
    sub_100008080(v9);
  }

  sub_10001CAF4(&v8);
  v10 = 0;
  v6 = sub_10001CB4C(v8, "CLProactiveInertialOdometryAlwaysOnPolicyOverride", &v10);
  *(a1 + 81) = v10 || (v6 & 1) == 0;
  if (v9)
  {
    sub_100008080(v9);
  }

  return a1;
}

void sub_10067AD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  sub_100D8A4F8(v11);
  _Unwind_Resume(a1);
}

void sub_10067AD6C(uint64_t a1, double a2)
{
  v3 = (a1 + 48);
  v2 = *(a1 + 48);
  v4 = *(a1 + 80);
  if (v4 == 1)
  {
    if (*(a1 + 49) == 1 && a2 - *(a1 + 56) > 600.0)
    {
      if (*(a1 + 64))
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        LOBYTE(v4) = *(a1 + 81);
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  v5 = v4 & 1;
  *v3 = v5;
  if (v2 != v5)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018FC444();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *v3;
      v8[0] = 67240192;
      v8[1] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#pbio, CLProactiveInertialOdometrySubscription_Watch, fPolicyStateIsSubscribe, %{public}d", v8, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FC458(v3);
    }
  }
}

void sub_10067AEA8(uint64_t a1)
{
  sub_100D8A4F8(a1);

  operator delete();
}

uint64_t sub_10067B074(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10067B694;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026585D0 != -1)
  {
    dispatch_once(&qword_1026585D0, block);
  }

  return qword_1026371C0;
}

void sub_10067B3D8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v3 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, emergencyState", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FC898();
  }

  v6 = sub_100C3DAB0(a2);
  v5 = 23;
  sub_1000FFE90();
}

void sub_10067B4D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

void sub_10067B668(id a1)
{
  sub_10001A3E8();
  if ((sub_10003A088() & 2) != 0)
  {
    byte_1026585C0 = 1;
  }
}

void sub_10067B778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067B7A4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1006A597C(a1, "wifi", a2);
  *v5 = off_102467FE8;
  v5[15] = *a3;
  v6 = a3[1];
  v5[16] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  sub_10067E2EC();
}

void sub_10067C1FC(_Unwind_Exception *a1)
{
  sub_10049C768(v1 + 3632);
  sub_100107AE0(v1 + 224);
  sub_10067DF18(v1 + 168);
  v3 = *(v1 + 160);
  *(v1 + 160) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v1 + 128);
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_1006A5E8C(v1);
  _Unwind_Resume(a1);
}

void sub_10067C320()
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v0 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, wsbtimer", v1, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCCCC();
  }

  v2 = 28;
  sub_1000FFE90();
}

void sub_10067C408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067C424(uint64_t a1)
{
  *a1 = off_102467FE8;
  sub_10067C6A0(a1);

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_10049CA54((a1 + 3632));
  if (*(a1 + 160))
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v2 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@WifiLogic, unregistering for leeched Cell location notification", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLWifiLocationProvider::~CLWifiLocationProvider()", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    [*(*(a1 + 160) + 16) unregister:*(*(a1 + 160) + 8) forNotification:5];
  }

  sub_10049C768(a1 + 3632);
  sub_100107AE0(a1 + 224);
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 128);
  if (v6)
  {
    sub_100008080(v6);
  }

  sub_1006A5E8C(a1);
  return a1;
}

void sub_10067C658(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_10067C668(uint64_t a1)
{
  sub_10067C424(a1);

  operator delete();
}

id sub_10067C6A0(uint64_t a1)
{
  sub_1006A5ED0(a1);
  (*(**(a1 + 120) + 16))(*(a1 + 120));
  [*(a1 + 136) invalidate];
  v2 = *(a1 + 144);

  return [v2 invalidate];
}

_BYTE *sub_10067C708(_BYTE *a1)
{
  v3[0] = 0;
  v6 = 0;
  sub_1000FB724(a1, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_10067C760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067C788(int *a1, uint64_t a2)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100C5D210(*a1);
    sub_100C5CFB0(a2 + 8, __p);
    v6 = v19 >= 0 ? __p : __p[0];
    *buf = 136380931;
    *&buf[4] = v5;
    v11 = 2081;
    v12 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "@WifiLogic, wifi notification %{private}s, associated state, %{private}s", buf, 0x16u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v7 = sub_100C5D210(*a1);
    sub_100C5CFB0(a2 + 8, buf);
    if (v13 >= 0)
    {
      v8 = buf;
    }

    else
    {
      v8 = *buf;
    }

    v14 = 136380931;
    v15 = v7;
    v16 = 2081;
    v17 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v13 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void logAssociatedStateFromWifiNotification(const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v9);
    if (v9 != __p)
    {
      free(v9);
    }
  }
}

void sub_10067C9B8(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v10[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, motion", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onMotionNotification(int, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (!*a3)
  {
    *buf = *a4;
    sub_10067F1C0(v10, buf);
    sub_100271780(v8, v10);
    sub_1000FFE90();
  }

  sub_1001039FC(v10);
}

void sub_10067CB98(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v5 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, signalEnvironment", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FD388();
  }

  v8 = *a4;
  v7 = 15;
  sub_1000FFE90();
}

void sub_10067CC8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

void sub_10067CCA8(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v15[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, clientNotify", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  if (*a3 == 4)
  {
    *buf = *(a4 + 188) == 1;
    sub_10067F2D4(v15, buf);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, event, location services toggle", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v11 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }

    if (*(a4 + 188) == 1)
    {
LABEL_26:
      sub_100271780(v13, v15);
      sub_1000FFE90();
    }

    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v9 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiLogic, #Warning Location Services disabled, clearing database entries", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
LABEL_25:
      sub_10067D194();
      goto LABEL_26;
    }

LABEL_32:
    sub_1018FCB90(buf);
    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onClientNotification(int, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }

    goto LABEL_25;
  }

  if (!*a3)
  {
    *buf = 2;
    sub_10067F2D4(v15, buf);
    if (qword_1025D4630 != -1)
    {
      sub_1018FC728();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, event, privacy reset", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  sub_1001039FC(v15);
}

void sub_10067D194()
{
  sub_1001A74F0(&v0);
  sub_100C94B18(v0);
  if (v1)
  {
    sub_100008080(v1);
  }
}

void sub_10067D1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067D1EC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v11[0] = 0;
  if (qword_1025D4630 != -1)
  {
    sub_1018FC884();
  }

  v6 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, alsNotify", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FCB90(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onNetworkLocationNotification(int, const CLNetworkLocationProvider_Type::Notification &, const CLNetworkLocationProvider_Type::NotificationData &)", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v7 = *a3;
  if (*a3 == 1)
  {
    *buf = *a4;
    sub_10067F6DC(v11, buf);
    goto LABEL_13;
  }

  if (v7 == 2)
  {
    if (!*(a4 + 4))
    {
      buf[0] = *a4;
      sub_10067F564(v11, buf);
    }

LABEL_13:
    sub_100271780(v9, v11);
    sub_1000FFE90();
  }

  if (v7 == 3)
  {
    buf[0] = *a4;
    sub_10067F450(v11, buf);
    goto LABEL_13;
  }

  sub_1001039FC(v11);
}

void sub_10067D420(uint64_t a1, uint64_t a2, _DWORD *a3, uint8_t *a4)
{
  v14[0] = 0;
  if (*a3 == 5)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v6 = *a4;
      *buf = 67240192;
      v13 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@WifiLogic, entry, companionnearby, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v7 = *a4;
      v10 = 67240192;
      v11 = v7;
      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationProvider::onCompanionNotification(int, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    sub_10001A3E8();
    if (sub_10001CF3C())
    {
      buf[0] = *a4;
      sub_10067FB6C(v14, buf);
      sub_100271780(v9, v14);
      sub_1000FFE90();
    }
  }

  sub_1001039FC(v14);
}

void sub_10067D6E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10067D7E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10067D8A4(void *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A9ED28(a1, &v3);
  if (v4)
  {
    sub_100008080(v4);
  }

  sub_10067D98C();
}

void sub_10067D950(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_100008080(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (!a13)
  {
    JUMPOUT(0x10067D974);
  }

  JUMPOUT(0x10067D970);
}

void *sub_10067D9F8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1024681E8;
  sub_100F218B4(a1 + 3);
  return a1;
}

void sub_10067DA74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024681E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DB10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DB84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DBF8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024682D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DC4C(void *a1)
{
  *a1 = off_102468328;
  sub_100102BC8(a1 + 1);

  operator delete();
}

void sub_10067DCD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DD44(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024683B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DDB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468400;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DE0C(uint64_t a1)
{
  v1 = (a1 + 24);
  sub_1004906DC(a1 + 48);
  v2 = v1;
  sub_1000F8D88(&v2);
}

void sub_10067DE6C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10067DEC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_10067DF18(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100008080(v3);
  }

  return a1;
}

uint64_t sub_10067DF64(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v3 = a1;
  sub_1000B96B4(&v3);
  return a1;
}

uint64_t sub_10067DFB8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_10067E028(uint64_t a1)
{
  if (*(a1 + 144) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  return sub_100103B14(a1);
}

uint64_t sub_10067E0A8(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return sub_1004906DC(a1);
}

uint64_t sub_10067E0EC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return sub_1004906DC(a1);
}

uint64_t sub_10067E130(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10067E180(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

uint64_t sub_10067E1D0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 80) == 1)
    {
      v2 = *(a1 + 56);
      if (v2)
      {
        *(a1 + 64) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }
  }

  return a1;
}

uint64_t sub_10067E22C(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    sub_1004906DC(a1);
  }

  return a1;
}

uint64_t sub_10067E274(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    sub_1004906DC(a1);
  }

  return a1;
}

void *sub_10067E358(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102468540;
  sub_10067E450(a1 + 3, a2);
  return a1;
}

void sub_10067E3D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102468540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10067E450(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10099E820(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_10067E4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_10067E4C4(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a2;
  sub_10067E514(a3, *a2);
  *(a3 + 40) = v4[5];
  *(a3 + 48) = *(v4 + 48);
  *&result = sub_1000F8A78(a3 + 56, (v4 + 7)).n128_u64[0];
  return result;
}

void sub_10067E514(uint64_t a1, uint64_t *a2)
{
  sub_10067E5B8(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_10067E5B8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100103B50(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

double sub_10067E614(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  sub_1000BB5F0(a3);
  *a3 = *v4;
  *(a3 + 16) = *(v4 + 16);
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(a3 + 24) = *(v4 + 24);
  *&result = sub_1000F8A78(a3 + 32, v4 + 32).n128_u64[0];
  return result;
}

__n128 sub_10067E670(_OWORD **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  *a2 = **a1;
  *(a2 + 16) = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  *(a2 + 64) = v3[4];
  *(a2 + 80) = v7;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  v8 = v3[6];
  v9 = v3[7];
  v10 = v3[8];
  *(a2 + 140) = *(v3 + 140);
  *(a2 + 112) = v9;
  *(a2 + 128) = v10;
  *(a2 + 96) = v8;
  memcpy((a2 + 160), v3 + 10, 0x201uLL);
  v11 = *(v3 + 680);
  *(v3 + 680) = 0u;
  v12 = *(a2 + 688);
  *(a2 + 680) = v11;
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = *(v3 + 696);
  v14 = *(v3 + 728);
  *(a2 + 712) = *(v3 + 712);
  *(a2 + 728) = v14;
  *(a2 + 696) = v13;
  result = *(v3 + 744);
  v16 = *(v3 + 760);
  v17 = *(v3 + 776);
  *(a2 + 785) = *(v3 + 785);
  *(a2 + 760) = v16;
  *(a2 + 776) = v17;
  *(a2 + 744) = result;
  return result;
}

__n128 sub_10067E728(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v4 = *a2;
  v5 = **a2;
  *(a3 + 8) = *(*a2 + 8);
  *a3 = v5;
  if (*(a3 + 39) < 0)
  {
    operator delete(*(a3 + 16));
  }

  v6 = *(v4 + 1);
  *(a3 + 32) = v4[4];
  *(a3 + 16) = v6;
  *(v4 + 39) = 0;
  *(v4 + 16) = 0;
  v7 = *(v4 + 100);
  v8 = *(v4 + 11);
  v9 = *(v4 + 9);
  *(a3 + 56) = *(v4 + 7);
  *(a3 + 72) = v9;
  *(a3 + 88) = v8;
  *(a3 + 100) = v7;
  *(a3 + 40) = *(v4 + 5);
  if (*(a3 + 143) < 0)
  {
    operator delete(*(a3 + 120));
  }

  result = *(v4 + 15);
  *(a3 + 136) = v4[17];
  *(a3 + 120) = result;
  *(v4 + 143) = 0;
  *(v4 + 120) = 0;
  return result;
}

void sub_10067E7D4(uint64_t a1, uint64_t a2)
{
  sub_1001039FC(*a1);
  v4 = *a1;
  *(v4 + 8) = 0;
  *(v4 + 96) = 0;
  if (*(a2 + 88) == 1)
  {
    *(v4 + 8) = *a2;
    v5 = *(a2 + 8);
    *(v4 + 32) = *(a2 + 24);
    *(v4 + 16) = v5;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v4 + 88) = *(a2 + 80);
    *(v4 + 72) = v8;
    *(v4 + 56) = v7;
    *(v4 + 40) = v6;
    *(v4 + 96) = 1;
  }

  **a1 = *(a1 + 8);
}

void sub_10067E868(int *a1)
{
  if ((sub_10067E904(a1) & 1) == 0)
  {
    v2[0] = 1;
    sub_100103D88(a1, v2);
    sub_1001039FC(v2);
  }
}

void sub_10067E8E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067E904(int *a1)
{
  result = 0;
  v3 = *a1 ^ (*a1 >> 31);
  if ((v3 - 2) >= 0x1C)
  {
    if (v3 <= 0)
    {
      if (!v3)
      {
        return result;
      }
    }

    else if (v3 > 29)
    {
      if (v3 > 34)
      {
        if (v3 > 38)
        {
          sub_10053508C();
        }
      }

      else if (v3 <= 31)
      {
        if (v3 != 30)
        {
          sub_10053508C();
        }
      }

      else if (v3 != 32 && v3 != 33)
      {
        sub_10053508C();
      }
    }

    else if (v3 == 1)
    {
      return 1;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067E9C4(int *a1, _BYTE *a2)
{
  v4 = a2;
  if ((sub_10067EA74(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 3;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067EA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067EA74(uint64_t a1, _BYTE **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 4) >= 0x1A)
  {
    if (v4 > 2)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 3)
      {
        *(a1 + 8) = **a2;
        return 1;
      }
    }

    else if (v4 < 3)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067EB44(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067EBF4(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 4;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067EBD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067EBF4(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 5) >= 0x19)
  {
    if (v4 > 3)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 4)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 < 4)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067ECC4(int *a1)
{
  if ((sub_10067ED60(a1) & 1) == 0)
  {
    v2[0] = 2;
    sub_100103D88(a1, v2);
    sub_1001039FC(v2);
  }
}

void sub_10067ED44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067ED60(int *a1)
{
  result = 0;
  v3 = *a1 ^ (*a1 >> 31);
  if ((v3 - 3) >= 0x1B)
  {
    if (v3 > 1)
    {
      if (v3 > 29)
      {
        if (v3 > 34)
        {
          if (v3 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v3 <= 31)
        {
          if (v3 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v3 != 32 && v3 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v3 == 2)
      {
        return 1;
      }
    }

    else if (v3 < 2)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067EE24(int *a1, uint64_t a2)
{
  v5 = a2;
  if ((sub_10067EF20(a1, &v5) & 1) == 0)
  {
    LOBYTE(v7) = 0;
    v14 = 0;
    if (*(a2 + 88) == 1)
    {
      v8 = *(a2 + 8);
      v4 = *(a2 + 48);
      v10 = *(a2 + 32);
      v11 = v4;
      v7 = *a2;
      v9 = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      v14 = 1;
    }

    v6 = 5;
    sub_100103D88(a1, &v6);
    sub_1001039FC(&v6);
  }
}

void sub_10067EF04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067EF20(int *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 6) >= 0x18)
  {
    if (v4 > 4)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 5)
      {
        sub_1000F8A78((a1 + 2), *a2);
        return 1;
      }
    }

    else if (v4 < 5)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067EFF4(int *a1, uint64_t a2)
{
  v5 = a2;
  if ((sub_10067F0F0(a1, &v5) & 1) == 0)
  {
    LOBYTE(v7) = 0;
    v14 = 0;
    if (*(a2 + 88) == 1)
    {
      v8 = *(a2 + 8);
      v4 = *(a2 + 48);
      v10 = *(a2 + 32);
      v11 = v4;
      v7 = *a2;
      v9 = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      v14 = 1;
    }

    v6 = 6;
    sub_100103D88(a1, &v6);
    sub_1001039FC(&v6);
  }
}

void sub_10067F0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F0F0(int *a1, uint64_t *a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 7) >= 0x17)
  {
    if (v4 > 5)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 6)
      {
        sub_1000F8A78((a1 + 2), *a2);
        return 1;
      }
    }

    else if (v4 < 6)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F1C0(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F270(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 11;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F254(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F270(int *a1, int **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xB:
      a1[2] = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067F2D4(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F384(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 9;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F368(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F384(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if ((v4 - 10) >= 0x14)
  {
    if (v4 > 8)
    {
      if (v4 > 29)
      {
        if (v4 > 34)
        {
          if (v4 > 38)
          {
            sub_10053508C();
          }
        }

        else if (v4 <= 31)
        {
          if (v4 != 30)
          {
            sub_10053508C();
          }
        }

        else if (v4 != 32 && v4 != 33)
        {
          sub_10053508C();
        }
      }

      else if (v4 == 9)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 < 9)
    {
      return result;
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F450(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F500(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 19;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F500(int *a1, int **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0x13:
      a1[2] = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067F564(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_10067F614(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 22;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_10067F5F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F614(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x16)
  {
    if (v4 <= 29)
    {
      if ((v4 - 23) < 7)
      {
        return result;
      }

      if (v4 == 22)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 <= 36 && v4 != 35)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F6DC(int *a1, void *a2)
{
  v4 = a2;
  if ((sub_10067F78C(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 20;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067F770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F78C(uint64_t a1, void **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x14)
  {
    if (v4 <= 29)
    {
      if ((v4 - 21) < 9)
      {
        return result;
      }

      if (v4 == 20)
      {
        *(a1 + 8) = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 <= 36 && v4 != 35)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

void sub_10067F854(int *a1, void *a2)
{
  v4 = a2;
  if ((sub_10067F904(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 10;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067F8E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067F904(uint64_t a1, void **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xA:
      *(a1 + 8) = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067F968(int *a1, _BYTE *a2)
{
  v4 = a2;
  if ((sub_10067FA18(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 12;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067F9FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FA18(uint64_t a1, _BYTE **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xC:
      *(a1 + 8) = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067FA7C(int *a1)
{
  if ((sub_10067FB18(a1) & 1) == 0)
  {
    v2[0] = 17;
    sub_100103D88(a1, v2);
    sub_1001039FC(v2);
  }
}

void sub_10067FAFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FB18(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  result = 0;
  switch(v1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
      return result;
    case 17:
      result = 1;
      break;
    default:
      sub_10053508C();
  }

  return result;
}

void sub_10067FB6C(int *a1, _BYTE *a2)
{
  v4 = a2;
  if ((sub_10067FC1C(a1, &v4) & 1) == 0)
  {
    v6 = *a2;
    v5 = 14;
    sub_100103D88(a1, &v5);
    sub_1001039FC(&v5);
  }
}

void sub_10067FC00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10067FC1C(uint64_t a1, _BYTE **a2)
{
  v2 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
      return v2;
    case 0xE:
      *(a1 + 8) = **a2;
      v2 = 1;
      break;
    default:
      sub_10053508C();
  }

  return v2;
}

void sub_10067FC80()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

double sub_10067FD68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1015E3B04(a2);
  v4 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  *(v3 + 48) = *a1;
  *(v3 + 64) = v4;
  *v4.i8 = vrev64_s32(*(a1 + 56));
  *(v3 + 96) = *(a1 + 48);
  *(v3 + 104) = v4.i64[0];
  *(v3 + 24) = vextq_s8(*(a1 + 104), *(a1 + 104), 8uLL);
  *(v3 + 8) = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  result = *(a1 + 88);
  v4.i64[0] = *(a1 + 96);
  *(v3 + 40) = result;
  v6 = *(v3 + 128);
  *(v3 + 124) = *(a1 + 40);
  *(v3 + 125) = *(a1 + 64);
  *(v3 + 123) = *(a1 + 16);
  *(v3 + 80) = v4.i64[0];
  *(v3 + 121) = *(a1 + 120);
  *(v3 + 120) = *(a1 + 128);
  *(v3 + 122) = *(a1 + 129);
  v7 = *(a1 + 124);
  v8 = *(a1 + 132);
  *(v3 + 128) = v6 | 0x3FFBFF;
  *(v3 + 112) = v8;
  *(v3 + 116) = v7;
  return result;
}

double sub_10067FE20@<D0>(uint64_t a1@<X0>, int8x16_t *a2@<X8>)
{
  sub_10156CAEC(a2);
  a2[5] = vextq_s8(*a1, *a1, 8uLL);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  a2[4].i64[0] = *(a1 + 40);
  v6 = *(a1 + 80);
  a2[7].i64[1] = *(a1 + 72);
  v7 = a2[9].i32[2];
  a2[6].i32[0] = *(a1 + 24);
  a2[2].i64[1] = v5;
  a2[3].i64[0] = v4;
  a2[2].i64[0] = v6;
  a2[1] = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
  v8 = *(a1 + 104);
  a2[9].i32[2] = v7 | 0x8C1FF;
  a2[8].i32[3] = v8;
  v9 = *(a1 + 112);
  if (v9)
  {
    CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
    v11 = CStringPtr;
    if (CStringPtr)
    {
      v12 = strlen(CStringPtr);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100061080();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v26 = v12;
      if (v12)
      {
        memmove(&__dst, v11, v12);
      }

      __dst.n128_u8[v13] = 0;
      sub_10068004C(a2, &__dst);
      if (v26 < 0)
      {
        operator delete(__dst.n128_u64[0]);
      }
    }
  }

  v14 = a2[9].i32[2];
  a2[9].i16[2] = *(a1 + 120);
  v15 = *(a1 + 156);
  a2[8].i32[2] = *(a1 + 152);
  a2[9].i32[0] = v15;
  v16 = *(a1 + 160);
  a2[6].i64[1] = *(a1 + 164);
  v17 = *(a1 + 173);
  a2[6].i32[1] = *(a1 + 174);
  a2[7].i32[0] = *(a1 + 172);
  a2[7].i32[1] = v17;
  v18 = *(a1 + 176);
  a2[9].i32[2] = v14 | 0x773E00;
  a2[8].i32[0] = v18;
  a2[8].i32[1] = v16;
  sub_10156E894(a2);
  v19 = a2->i64[1];
  v20 = *(a1 + 128);
  *(v19 + 32) |= 1u;
  *(v19 + 8) = v20;
  v21 = a2->i64[1];
  v22 = *(a1 + 136);
  *(v21 + 32) |= 2u;
  *(v21 + 16) = v22;
  v23 = a2->i64[1];
  result = *(a1 + 144);
  *(v23 + 32) |= 4u;
  *(v23 + 24) = result;
  return result;
}

void sub_100680018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10156CBD8(v15);
  _Unwind_Resume(a1);
}

__n128 sub_10068004C(uint64_t a1, __n128 *a2)
{
  sub_1006801D8(a1);
  v4 = *(a1 + 72);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t sub_1006800A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10156E924(a2);
  v4 = *(a1 + 24);
  v5 = *(result + 72);
  *(result + 64) = *(a1 + 32);
  *(result + 24) = *(a1 + 40);
  *(result + 40) = *(a1 + 56);
  *(result + 48) = v4;
  *(result + 69) = *(a1 + 64);
  v6 = *(a1 + 72);
  *(result + 56) = *(a1 + 80);
  *(result + 70) = *(a1 + 88);
  v7 = *(a1 + 96);
  *(result + 8) = v6;
  *(result + 16) = v7;
  *(result + 72) = v5 | 0x7FF;
  *(result + 68) = v7 != 0.0;
  return result;
}

__n128 sub_10068011C@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_101556BA4(a2);
  v4 = a1->i64[0];
  v5 = a1->i64[1];
  *(v3 + 152) = a1[1].i64[0];
  *(v3 + 160) = v4;
  *(v3 + 136) = vextq_s8(a1[2], a1[2], 8uLL);
  *(v3 + 56) = a1[3].i64[1];
  *(v3 + 64) = v5;
  v6 = a1[5];
  *(v3 + 24) = a1[4];
  *(v3 + 40) = vextq_s8(v6, v6, 8uLL);
  v7 = a1[7];
  *(v3 + 8) = a1[6];
  *(v3 + 120) = vextq_s8(v7, v7, 8uLL);
  v8 = a1[9];
  *(v3 + 72) = a1[8];
  v9 = *(v3 + 188);
  *(v3 + 184) = a1[1].i8[8];
  *(v3 + 182) = a1[3].i16[0];
  v10 = a1[11].i32[0];
  v11 = a1[11].u8[5];
  *(v3 + 168) = a1[11].u8[4];
  *(v3 + 172) = v11;
  *(v3 + 176) = v10;
  *(v3 + 180) = a1[11].i8[6];
  *(v3 + 104) = v8;
  result = a1[10];
  *(v3 + 88) = result;
  v13 = a1[11].i8[7];
  *(v3 + 188) = v9 | 0xFFFFFFF;
  *(v3 + 181) = v13;
  return result;
}

uint64_t sub_1006801D8(uint64_t result)
{
  if (!*(result + 72))
  {
    operator new();
  }

  return result;
}

void sub_10068024C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_1006802A8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0xBFF0000000000000;
  CLMotionActivity::getInit((a1 + 40), a1);
  *(a1 + 176) = xmmword_101C85F60;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  sub_100680338(a1);
  return a1;
}

double sub_100680338(uint64_t a1)
{
  memset(v8 + 8, 0, 136);
  *&v8[0] = 0xBFF0000000000000;
  CLMotionActivity::getInit(v8 + 1, a1);
  v2 = v8[7];
  *(a1 + 128) = v8[6];
  *(a1 + 144) = v2;
  *(a1 + 160) = v8[8];
  v3 = v8[3];
  *(a1 + 64) = v8[2];
  *(a1 + 80) = v3;
  v4 = v8[5];
  *(a1 + 96) = v8[4];
  *(a1 + 112) = v4;
  v5 = v8[1];
  *(a1 + 32) = v8[0];
  *(a1 + 48) = v5;
  *(a1 + 24) = 0;
  sub_1003C93BC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v7 = 0;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 1;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 2;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 3;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 4;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 5;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 6;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 7;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 8;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 9;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  v7 = 10;
  *&v8[0] = &v7;
  sub_1000AE2AC(a1, &v7)[5] = 0xBFF0000000000000;
  result = -1.0;
  *(a1 + 176) = xmmword_101C85F60;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_100680608(uint64_t result, __int128 *a2, double a3)
{
  v3 = a2[6];
  v4 = a2[7];
  v5 = *(a2 + 16);
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v11 = *a2;
  v10 = a2[1];
  *(result + 32) = a3;
  *(result + 40) = v11;
  *(result + 104) = v9;
  *(result + 88) = v7;
  *(result + 72) = v6;
  *(result + 56) = v10;
  *(result + 168) = v5;
  *(result + 152) = v4;
  *(result + 136) = v3;
  *(result + 120) = v8;
  return result;
}

BOOL sub_100680650(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 0.0)
  {
    return 1;
  }

  if (v3 <= a2)
  {
    return a2 - v3 > a3;
  }

  return 0;
}

uint64_t *sub_100680684(uint64_t a1, __int128 *a2, double a3)
{
  *(a1 + 176) = a3;
  v6 = *a2;
  *(a1 + 200) = *(a2 + 4);
  *(a1 + 184) = v6;
  v7 = *(a1 + 24);
  if (CLMotionActivity::isTypePedestrian())
  {
    if (CLMotionActivity::isTypeWalking())
    {
      v8 = *(a1 + 24) == 4;
    }

    else
    {
      v8 = 1;
    }

    v30 = 4;
    *buf = &v30;
    v11 = *(sub_1000AE2AC(a1, &v30) + 5);
    if (CLMotionActivity::isTypeRunning())
    {
      v12 = *(a1 + 24) == 5;
    }

    else
    {
      v12 = 1;
    }

    v30 = 5;
    *buf = &v30;
    v13 = sub_1000AE2AC(a1, &v30);
    v14 = v11 > 0.0 || v8;
    if (v14)
    {
      v15 = *(v13 + 5);
      v16 = v15 > 0.0 || v12;
      if (v16)
      {
        v17 = *(a1 + 24);
        if (v17 > 0xA || ((1 << v17) & 0x7C7) == 0)
        {
          v18 = v11 <= 0.0 || v8;
          if (v18)
          {
            v19 = v15 <= 0.0 || v12;
            if ((v19 & 1) == 0)
            {
              v30 = 5;
              *buf = &v30;
              if (*(sub_1000AE2AC(a1, &v30) + 5) > 0.0)
              {
                v30 = 5;
                *buf = &v30;
                if (a3 - *(sub_1000AE2AC(a1, &v30) + 5) > 10.0)
                {
                  v20 = 5;
LABEL_46:
                  *(a1 + 24) = v20;
                  goto LABEL_52;
                }
              }
            }
          }

          else
          {
            v30 = 4;
            *buf = &v30;
            if (*(sub_1000AE2AC(a1, &v30) + 5) > 0.0)
            {
              v30 = 4;
              *buf = &v30;
              if (a3 - *(sub_1000AE2AC(a1, &v30) + 5) > 10.0)
              {
                v20 = 4;
                goto LABEL_46;
              }
            }
          }
        }

        goto LABEL_52;
      }

      *(a1 + 24) = 5;
      if (qword_1025D4770 != -1)
      {
        sub_1018FE864();
      }

      v22 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#workout,setting dynamics running mode for the first time,mct,%{public}.3f", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_52;
      }
    }

    else
    {
      *(a1 + 24) = 4;
      if (qword_1025D4770 != -1)
      {
        sub_1018FE864();
      }

      v21 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#workout,setting dynamics walking mode for the first time,mct,%{public}.3f", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_52;
      }
    }

    sub_1018FE820(buf);
    v30 = 134349056;
    v31 = a3;
    v10 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v10);
LABEL_64:
    if (v10 != buf)
    {
      free(v10);
    }

    goto LABEL_52;
  }

  if (CLMotionActivity::isTypeCycling() && *(a1 + 24) != 6)
  {
    v20 = 6;
    goto LABEL_46;
  }

  if (!*(a2 + 2) && (*(a1 + 24) - 5) <= 1)
  {
    *(a1 + 24) = 3;
    if (qword_1025D4770 != -1)
    {
      sub_1018FE80C();
    }

    v9 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      *&buf[4] = a3;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#workout,workout ended from a running or cycling session, reverting dynamics mode to moving pedestrian,mct,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE820(buf);
      v30 = 134349056;
      v31 = a3;
      v10 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v10);
      goto LABEL_64;
    }
  }

LABEL_52:
  if (qword_1025D4770 != -1)
  {
    sub_1018FE864();
  }

  v23 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a2 + 2);
    v25 = *(a1 + 24);
    *buf = 134349824;
    *&buf[4] = a3;
    v39 = 1026;
    v40 = v24;
    v41 = 1026;
    v42 = v7;
    v43 = 1026;
    v44 = v25;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#workout,dynamics mode on workout update,mct,%{public}.3f,workoutType,%{public}d,old dynamics mode,%{public}d,new dynamics mode,%{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FE820(buf);
    v27 = *(a2 + 2);
    v28 = *(a1 + 24);
    v30 = 134349824;
    v31 = a3;
    v32 = 1026;
    v33 = v27;
    v34 = 1026;
    v35 = v7;
    v36 = 1026;
    v37 = v28;
    v29 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionMotionActivity::fitnessActivityUpdate(const CFTimeInterval, const CLWorkoutUpdate &)", "%s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v30 = *(a1 + 24);
  *buf = &v30;
  result = sub_1000AE2AC(a1, &v30);
  *(result + 5) = a3;
  return result;
}

void sub_100680DE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100680DF4(uint64_t a1, double a2, double a3)
{
  v17 = 0;
  v18 = 9;
  *buf = &v18;
  v6 = -1.0;
  if (*(sub_1000AE2AC(a1, &v18) + 5) <= -1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 9;
    v18 = 9;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 9;
  }

  v18 = 8;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 8;
    v18 = 8;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 8;
  }

  v18 = 7;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 7;
    v18 = 7;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 7;
  }

  v18 = 6;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 6;
    v18 = 6;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 6;
  }

  v18 = 5;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 5;
    v18 = 5;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 5;
  }

  v18 = 4;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 4;
    v18 = 4;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 4;
  }

  v18 = 3;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 3;
    v18 = 3;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 3;
  }

  v18 = 2;
  *buf = &v18;
  if (*(sub_1000AE2AC(a1, &v18) + 5) > v6)
  {
    v7 = 2;
    v18 = 2;
    *buf = &v18;
    v6 = *(sub_1000AE2AC(a1, &v18) + 5);
    v17 = 2;
  }

  if (v6 > 0.0 && (a3 < 0.0 || vabdd_f64(a2, v6) <= a3))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018FE864();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 24);
      *buf = 134349824;
      *&buf[4] = a2;
      v25 = 1026;
      v26 = v14;
      v27 = 1026;
      *v28 = v7;
      *&v28[4] = 2050;
      *&v28[6] = v6;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#motion,last known non-static dynamics mode used,mct,%{public}.3f,current dynamics mode,%{public}d,last non-static dynamics mode,%{public}d,last non-static dynamics mct,%{public}.3f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE820(buf);
      v15 = *(a1 + 24);
      v18 = 134349824;
      v19 = a2;
      v20 = 1026;
      v21 = v15;
      v22 = 1026;
      *v23 = v7;
      *&v23[4] = 2050;
      *&v23[6] = v6;
      v16 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionMotionActivity::setDynamicsModeToLastKnownNonStatic(const CFTimeInterval, const double)", "%s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    *(a1 + 24) = v7;
    *buf = &v17;
    *(sub_1000AE2AC(a1, &v17) + 5) = a2;
    return 1;
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018FE864();
    }

    v8 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 24);
      *buf = 134349824;
      *&buf[4] = a2;
      v25 = 1026;
      v26 = v9;
      v27 = 2050;
      *v28 = v6;
      *&v28[8] = 2050;
      *&v28[10] = a2 - v6;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#motion,cannot get last known non-static dynamics mode used,mct,%{public}.3f,current dynamics mode,%{public}d,last non-static dynamics mct,%{public}.3f,age of non-static dynamics mode,%{public}.3f", buf, 0x26u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018FE820(buf);
      v11 = *(a1 + 24);
      v18 = 134349824;
      v19 = a2;
      v20 = 1026;
      v21 = v11;
      v22 = 2050;
      *v23 = v6;
      *&v23[8] = 2050;
      *&v23[10] = a2 - v6;
      v12 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionMotionActivity::setDynamicsModeToLastKnownNonStatic(const CFTimeInterval, const double)", "%s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }

      return 0;
    }
  }

  return result;
}

void sub_1006814E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

double *sub_1006814F0@<X0>(void *a1@<X0>, _DWORD *a2@<X8>, double a3@<D0>)
{
  *a2 = 0;
  v5 = *a1;
  result = (a1 + 1);
  v4 = v5;
  if (v5 != result)
  {
    v6 = 1.79769313e308;
    do
    {
      v7 = v4[5];
      if (v7 > 0.0 && v7 >= a3 && v7 <= v6)
      {
        *a2 = *(v4 + 8);
        v6 = v7;
      }

      v10 = *(v4 + 1);
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
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != result);
  }

  return result;
}

uint64_t sub_100681564(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 >= 0.0 && (a3 >= 0.0 ? (v5 = v3 <= a2) : (v5 = 0), v5 ? (v6 = a2 - v3 <= a3) : (v6 = 1), v6))
  {
    return CLMotionActivity::isInVehicle((a1 + 40));
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1006815F8(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  v7 = *(a2 + 120);
  *(a1 + 128) = 0;
  v8 = a1 + 128;
  *(a1 + 120) = v7;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_10038EB38(a1 + 128, *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 2);
  *(v8 + 24) = *(a2 + 152);
  v9 = *(a2 + 168);
  v10 = *(a2 + 184);
  v11 = *(a2 + 200);
  *(v8 + 88) = *(a2 + 216);
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = v9;
  v12 = *(a2 + 232);
  v13 = *(a2 + 248);
  v14 = *(a2 + 264);
  *(v8 + 152) = *(a2 + 280);
  *(v8 + 136) = v14;
  *(v8 + 120) = v13;
  *(v8 + 104) = v12;
  v15 = *(a2 + 296);
  v16 = *(a2 + 312);
  v17 = *(a2 + 328);
  *(v8 + 212) = *(a2 + 340);
  *(v8 + 200) = v17;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  if (*(a2 + 383) < 0)
  {
    sub_100007244((v8 + 232), *(a2 + 360), *(a2 + 368));
  }

  else
  {
    v18 = *(a2 + 360);
    *(v8 + 248) = *(a2 + 376);
    *(v8 + 232) = v18;
  }

  v19 = *(a2 + 384);
  v20 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v20;
  *(a1 + 384) = v19;
  v21 = *(a2 + 432);
  v22 = *(a2 + 448);
  v23 = *(a2 + 480);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = v23;
  *(a1 + 432) = v21;
  *(a1 + 448) = v22;
  v24 = *(a2 + 496);
  v25 = *(a2 + 512);
  v26 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 512) = v25;
  *(a1 + 528) = v26;
  *(a1 + 496) = v24;
  v27 = *(a2 + 552);
  v28 = *(a2 + 568);
  v29 = *(a2 + 600);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 600) = v29;
  *(a1 + 552) = v27;
  *(a1 + 568) = v28;
  v30 = *(a2 + 616);
  v31 = *(a2 + 632);
  v32 = *(a2 + 664);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 664) = v32;
  *(a1 + 616) = v30;
  *(a1 + 632) = v31;
  v33 = *(a2 + 680);
  v34 = *(a2 + 696);
  v35 = *(a2 + 712);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 696) = v34;
  *(a1 + 712) = v35;
  *(a1 + 680) = v33;
  if (*(a2 + 759) < 0)
  {
    sub_100007244((a1 + 736), *(a2 + 736), *(a2 + 744));
  }

  else
  {
    v36 = *(a2 + 736);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 736) = v36;
  }

  result = (a1 + 760);
  if (*(a2 + 783) < 0)
  {
    return sub_100007244(result, *(a2 + 760), *(a2 + 768));
  }

  v38 = *(a2 + 760);
  *(a1 + 776) = *(a2 + 776);
  *result = v38;
  return result;
}

void sub_1006817E4(_Unwind_Exception *a1)
{
  if (*(v1 + 759) < 0)
  {
    operator delete(*v2);
  }

  sub_10056D2F4(v1 + 40);
  _Unwind_Resume(a1);
}

void sub_100681828(uint64_t a1)
{
  if (*(a1 + 783) < 0)
  {
    operator delete(*(a1 + 760));
  }

  if (*(a1 + 759) < 0)
  {
    operator delete(*(a1 + 736));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  v2 = *(a1 + 128);
  if (v2)
  {
    *(a1 + 136) = v2;

    operator delete(v2);
  }
}

NSDictionary *sub_1006818A0(uint64_t a1)
{
  v4[0] = @"cell";
  v3[0] = @"provider";
  v3[1] = @"flow";
  v1 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v1 = *v1;
  }

  v3[2] = @"island";
  v4[1] = [NSString stringWithUTF8String:v1];
  v4[2] = @"null";
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

NSDictionary *sub_100681958(uint64_t a1)
{
  v4[0] = @"cell";
  v3[0] = @"provider";
  v3[1] = @"flow";
  v1 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v1 = *v1;
  }

  v3[2] = @"island";
  v4[1] = [NSString stringWithUTF8String:v1];
  v4[2] = @"sentinel";
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

double sub_100681A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  if (v3 > 0.0)
  {
    v7 = (a3 + 8);
    v8 = (a2 + 76);
    v9 = vabdd_f64(*(a3 + 8), *(a2 + 76));
    if (v9 > *(sub_101227030() + 2))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018FE88C();
      }

      v11 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v12 = vabdd_f64(*v7, *v8);
        *buf = 134349056;
        v27 = v12;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "getUncBasedOnTAInflation,stale TA, time delta, %{public}.2f, returning original unc", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FEE64(v7, v8);
      }

      return *(a2 + 20);
    }

    v14 = *(a3 + 16) == 1 && *(a1 + 8) == 6;
    if (!v14 || (v15 = sub_10007513C(a1, v10), *(a3 + 24) != *v15) || *(a3 + 28) != v15[1] || *(a3 + 32) != v15[2] || *(a3 + 36) != v15[3] || *a3 < 1)
    {
      if (*(a3 + 17) == 1 && *(a1 + 8) == 10)
      {
        sub_100681E80(a1, v10);
      }

      return *(a2 + 20);
    }

    v16 = *a3 * 4.879;
    v17 = *(sub_101227030() + 4) * *(a2 + 20);
    if (v16 < v17)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018FE88C();
      }

      v18 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349312;
        v27 = v16;
        v28 = 2050;
        v29 = v17;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "getUncBasedOnTAInflation,ta_too_small,%{public}f,lower_bound,%{public}f,returning original unc", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FED3C(v16, v17);
      }

      return *(a2 + 20);
    }

    v19 = *(sub_101227030() + 3);
    v20 = *(a2 + 20);
    v21 = v19 * v20;
    if (v19 * v20 >= v16)
    {
      v22 = v16;
    }

    else
    {
      v22 = v19 * v20;
    }

    if (v20 >= v22)
    {
      v3 = *(a2 + 20);
    }

    else
    {
      v3 = v22;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018FE88C();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(a2 + 20);
      *buf = 134349824;
      v27 = v24;
      v28 = 2050;
      v29 = v16;
      v30 = 2050;
      v31 = v3;
      v32 = 1026;
      v33 = v3 == v21;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "getUncBasedOnTAInflation,original_unc,%{public}f,ta_unc,%{public}f,final_unc,%{public}f,capped,%{public}d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1018FE9CC();
      }

      v25 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "static double CLUnifiedCellLocationProviderLogic::getUncBasedOnTAInflation(const CLCell &, const CLDaemonLocation &, const CellTimingAdvanceInfo &)", "%s\n", v25);
      if (v25 != buf)
      {
        free(v25);
      }
    }
  }

  return v3;
}

uint64_t sub_100681E80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 10)
  {
    sub_1018FEF78(a1, a2);
  }

  return a1 + 600;
}

uint64_t sub_100681EA4@<X0>(_BYTE *a1@<X8>)
{
  sub_10003848C(v15);
  v2 = sub_100038730(&v16, "{", 1);
  sub_100038730(v2, "lte_ta_val, ", 12);
  std::ostream::operator<<();
  sub_100038730(&v16, ", nr_ta_val, ", 13);
  std::ostream::operator<<();
  v3 = sub_100038730(&v16, ", taQuerytimestamp, ", 20);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 16) = 1;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  sub_100038730(&v16, ", istaLte, ", 11);
  std::ostream::operator<<();
  sub_100038730(&v16, ", istaNr, ", 10);
  std::ostream::operator<<();
  v5 = sub_100038730(&v16, ", lte_key, ", 11);
  v6 = __p;
  sub_100075418(__p);
  if (v14 < 0)
  {
    v6 = __p[0];
  }

  v7 = strlen(v6);
  sub_100038730(v5, v6, v7);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = sub_100038730(&v16, ", nr_key, ", 10);
  sub_100642C8C(__p);
  if (v14 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = strlen(v9);
  sub_100038730(v8, v9, v10);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100038730(&v16, "}", 1);
  sub_100073518(v15, a1);
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006821FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10068227C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      *(v8 + 60) = *(v9 + 60);
      *(v8 + 32) = v11;
      *(v8 + 48) = v12;
      *(v8 + 16) = v10;
      *(v8 + 80) = *(v9 + 80);
      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
      *(v8 + 88) = 0;
      *(v8 + 88) = *(v9 + 88);
      *(v8 + 104) = *(v9 + 104);
      *(v9 + 96) = 0;
      *(v9 + 104) = 0;
      *(v9 + 88) = 0;
      v13 = *(v9 + 176);
      v15 = *(v9 + 128);
      v14 = *(v9 + 144);
      *(v8 + 160) = *(v9 + 160);
      *(v8 + 176) = v13;
      *(v8 + 128) = v15;
      *(v8 + 144) = v14;
      v16 = *(v9 + 240);
      v18 = *(v9 + 192);
      v17 = *(v9 + 208);
      *(v8 + 224) = *(v9 + 224);
      *(v8 + 240) = v16;
      *(v8 + 192) = v18;
      *(v8 + 208) = v17;
      v20 = *(v9 + 272);
      v19 = *(v9 + 288);
      v21 = *(v9 + 256);
      *(v8 + 300) = *(v9 + 300);
      *(v8 + 272) = v20;
      *(v8 + 288) = v19;
      *(v8 + 256) = v21;
      *(v8 + 112) = *(v9 + 112);
      v22 = *(v9 + 320);
      *(v8 + 336) = *(v9 + 336);
      *(v8 + 320) = v22;
      *(v9 + 328) = 0;
      *(v9 + 336) = 0;
      *(v9 + 320) = 0;
      v23 = *(v9 + 440);
      v25 = *(v9 + 392);
      v24 = *(v9 + 408);
      *(v8 + 424) = *(v9 + 424);
      *(v8 + 440) = v23;
      *(v8 + 392) = v25;
      *(v8 + 408) = v24;
      v26 = *(v9 + 344);
      v27 = *(v9 + 376);
      *(v8 + 360) = *(v9 + 360);
      *(v8 + 376) = v27;
      *(v8 + 344) = v26;
      v29 = *(v9 + 472);
      v28 = *(v9 + 488);
      v30 = *(v9 + 456);
      *(v8 + 504) = *(v9 + 504);
      *(v8 + 472) = v29;
      *(v8 + 488) = v28;
      *(v8 + 456) = v30;
      v31 = *(v9 + 512);
      v32 = *(v9 + 528);
      v33 = *(v9 + 560);
      *(v8 + 544) = *(v9 + 544);
      *(v8 + 560) = v33;
      *(v8 + 512) = v31;
      *(v8 + 528) = v32;
      v34 = *(v9 + 576);
      v35 = *(v9 + 592);
      v36 = *(v9 + 624);
      *(v8 + 608) = *(v9 + 608);
      *(v8 + 624) = v36;
      *(v8 + 576) = v34;
      *(v8 + 592) = v35;
      v37 = *(v9 + 640);
      v38 = *(v9 + 656);
      v39 = *(v9 + 672);
      *(v8 + 688) = *(v9 + 688);
      *(v8 + 656) = v38;
      *(v8 + 672) = v39;
      *(v8 + 640) = v37;
      v9 += 696;
      v8 += 696;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_100682754(&v41, a2, v7, v6);
}

__n128 sub_1006823FC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0xCDFA1D6CDFA1D6CELL * ((v4 - *a1) >> 3);
      }

      v10 = a1[4];
      v43 = a1[4];
      sub_100071EDC(v10, v9);
    }

    v6 = (0x66FD0EB66FD0EB67 * ((v5 - *a1) >> 3) + 1 + ((0x66FD0EB66FD0EB67 * ((v5 - *a1) >> 3) + 1) >> 63)) >> 1;
    v7 = -696 * v6;
    sub_100682930(&v42, v5, v4, v5 - 696 * v6);
    v4 = v8;
    a1[1] += v7;
    a1[2] = v8;
  }

  *v4 = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v12;
  *(v4 + 48) = v13;
  *(v4 + 16) = v11;
  v14 = *(a2 + 80);
  *(v4 + 88) = 0;
  *(v4 + 80) = v14;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  sub_10038EB38(v4 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v4 + 112) = *(a2 + 112);
  v15 = *(a2 + 128);
  v16 = *(a2 + 144);
  v17 = *(a2 + 160);
  *(v4 + 176) = *(a2 + 176);
  *(v4 + 160) = v17;
  *(v4 + 144) = v16;
  *(v4 + 128) = v15;
  v18 = *(a2 + 192);
  v19 = *(a2 + 208);
  v20 = *(a2 + 224);
  *(v4 + 240) = *(a2 + 240);
  *(v4 + 224) = v20;
  *(v4 + 208) = v19;
  *(v4 + 192) = v18;
  v21 = *(a2 + 256);
  v22 = *(a2 + 272);
  v23 = *(a2 + 288);
  *(v4 + 300) = *(a2 + 300);
  *(v4 + 288) = v23;
  *(v4 + 272) = v22;
  *(v4 + 256) = v21;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v4 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v24 = *(a2 + 320);
    *(v4 + 336) = *(a2 + 336);
    *(v4 + 320) = v24;
  }

  v25 = *(a2 + 344);
  v26 = *(a2 + 376);
  *(v4 + 360) = *(a2 + 360);
  *(v4 + 376) = v26;
  *(v4 + 344) = v25;
  v27 = *(a2 + 392);
  v28 = *(a2 + 408);
  v29 = *(a2 + 440);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 440) = v29;
  *(v4 + 392) = v27;
  *(v4 + 408) = v28;
  v30 = *(a2 + 456);
  v31 = *(a2 + 472);
  v32 = *(a2 + 488);
  *(v4 + 504) = *(a2 + 504);
  *(v4 + 472) = v31;
  *(v4 + 488) = v32;
  *(v4 + 456) = v30;
  v33 = *(a2 + 512);
  v34 = *(a2 + 528);
  v35 = *(a2 + 560);
  *(v4 + 544) = *(a2 + 544);
  *(v4 + 560) = v35;
  *(v4 + 512) = v33;
  *(v4 + 528) = v34;
  v36 = *(a2 + 576);
  v37 = *(a2 + 592);
  v38 = *(a2 + 624);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 624) = v38;
  *(v4 + 576) = v36;
  *(v4 + 592) = v37;
  result = *(a2 + 640);
  v40 = *(a2 + 656);
  v41 = *(a2 + 672);
  *(v4 + 688) = *(a2 + 688);
  *(v4 + 656) = v40;
  *(v4 + 672) = v41;
  *(v4 + 640) = result;
  a1[2] += 696;
  return result;
}

uint64_t sub_100682698(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_10006F96C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_10006F96C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_100682754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = (a4 + v7 - 696);
      *v10 = *(a3 + v7 - 696);
      v11 = *(a3 + v7 - 680);
      v12 = *(a3 + v7 - 664);
      v13 = *(a3 + v7 - 648);
      *(v10 + 60) = *(a3 + v7 - 636);
      v10[2] = v12;
      v10[3] = v13;
      v10[1] = v11;
      *(a4 + v7 - 616) = *(a3 + v7 - 616);
      sub_10007057C(a4 + v7 - 608, (a3 + v7 - 608));
      v14 = (a4 + v7 - 584);
      *v14 = *(a3 + v7 - 584);
      v15 = *(a3 + v7 - 568);
      v16 = *(a3 + v7 - 552);
      v17 = *(a3 + v7 - 520);
      v14[3] = *(a3 + v7 - 536);
      v14[4] = v17;
      v14[1] = v15;
      v14[2] = v16;
      v18 = *(a3 + v7 - 504);
      v19 = *(a3 + v7 - 488);
      v20 = *(a3 + v7 - 456);
      v14[7] = *(a3 + v7 - 472);
      v14[8] = v20;
      v14[5] = v18;
      v14[6] = v19;
      v21 = *(a3 + v7 - 440);
      v22 = *(a3 + v7 - 424);
      v23 = *(a3 + v7 - 408);
      *(v14 + 188) = *(a3 + v7 - 396);
      v14[10] = v22;
      v14[11] = v23;
      v14[9] = v21;
      v24 = (a4 + v7 - 376);
      if (*(a4 + v7 - 353) < 0)
      {
        operator delete(*v24);
      }

      v25 = *(v8 - 376);
      *(v9 - 360) = *(v8 - 360);
      *v24 = v25;
      *(v8 - 353) = 0;
      *(v8 - 376) = 0;
      v26 = (v9 - 352);
      v27 = *(v8 - 256);
      v29 = *(v8 - 288);
      v28 = *(v8 - 272);
      v26[3] = *(v8 - 304);
      v26[4] = v29;
      v26[5] = v28;
      *(v9 - 256) = v27;
      v31 = *(v8 - 336);
      v30 = *(v8 - 320);
      *v26 = *(v8 - 352);
      v26[1] = v31;
      v26[2] = v30;
      v32 = *(v8 - 240);
      v33 = *(v8 - 224);
      v34 = *(v8 - 208);
      *(v9 - 192) = *(v8 - 192);
      *(v9 - 224) = v33;
      *(v9 - 208) = v34;
      *(v9 - 240) = v32;
      v35 = *(v8 - 184);
      v36 = *(v8 - 168);
      v37 = *(v8 - 152);
      *(v9 - 136) = *(v8 - 136);
      *(v9 - 152) = v37;
      *(v9 - 168) = v36;
      *(v9 - 184) = v35;
      v38 = *(v8 - 120);
      v39 = *(v8 - 104);
      v40 = *(v8 - 88);
      *(v9 - 72) = *(v8 - 72);
      *(v9 - 88) = v40;
      *(v9 - 104) = v39;
      *(v9 - 120) = v38;
      v41 = *(v8 - 56);
      v42 = *(v8 - 40);
      v43 = *(v8 - 24);
      *(v9 - 8) = *(v8 - 8);
      *(v9 - 24) = v43;
      *(v9 - 40) = v42;
      *(v9 - 56) = v41;
      v7 -= 696;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t sub_100682930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v7 = *(v5 + 16);
      v8 = *(v5 + 32);
      v9 = *(v5 + 48);
      *(a4 + 60) = *(v5 + 60);
      *(a4 + 32) = v8;
      *(a4 + 48) = v9;
      *(a4 + 16) = v7;
      *(a4 + 80) = *(v5 + 80);
      v10 = v5 + 88;
      sub_10007057C(a4 + 88, (v5 + 88));
      *(a4 + 112) = *(v5 + 112);
      v11 = *(v5 + 128);
      v12 = *(v5 + 144);
      v13 = *(v5 + 176);
      *(a4 + 160) = *(v5 + 160);
      *(a4 + 176) = v13;
      *(a4 + 128) = v11;
      *(a4 + 144) = v12;
      v14 = *(v5 + 192);
      v15 = *(v5 + 208);
      v16 = *(v5 + 240);
      *(a4 + 224) = *(v5 + 224);
      *(a4 + 240) = v16;
      *(a4 + 192) = v14;
      *(a4 + 208) = v15;
      v17 = *(v5 + 256);
      v18 = *(v5 + 272);
      v19 = *(v5 + 288);
      *(a4 + 300) = *(v5 + 300);
      *(a4 + 272) = v18;
      *(a4 + 288) = v19;
      *(a4 + 256) = v17;
      if (*(a4 + 343) < 0)
      {
        operator delete(*(a4 + 320));
      }

      v20 = *(v5 + 320);
      *(a4 + 336) = *(v5 + 336);
      *(a4 + 320) = v20;
      *(v5 + 343) = 0;
      *(v5 + 320) = 0;
      v22 = *(v5 + 424);
      v21 = *(v5 + 440);
      v23 = *(v5 + 408);
      *(a4 + 392) = *(v5 + 392);
      *(a4 + 408) = v23;
      *(a4 + 424) = v22;
      *(a4 + 440) = v21;
      v25 = *(v5 + 360);
      v24 = *(v5 + 376);
      *(a4 + 344) = *(v5 + 344);
      *(a4 + 360) = v25;
      *(a4 + 376) = v24;
      v26 = *(v5 + 456);
      v27 = *(v5 + 472);
      v28 = *(v5 + 488);
      *(a4 + 504) = *(v5 + 504);
      *(a4 + 472) = v27;
      *(a4 + 488) = v28;
      *(a4 + 456) = v26;
      v29 = *(v5 + 512);
      v30 = *(v5 + 528);
      v31 = *(v5 + 560);
      *(a4 + 544) = *(v5 + 544);
      *(a4 + 560) = v31;
      *(a4 + 512) = v29;
      *(a4 + 528) = v30;
      v32 = *(v5 + 576);
      v33 = *(v5 + 592);
      v34 = *(v5 + 624);
      *(a4 + 608) = *(v5 + 608);
      *(a4 + 624) = v34;
      *(a4 + 576) = v32;
      *(a4 + 592) = v33;
      v35 = *(v5 + 640);
      v36 = *(v5 + 656);
      v37 = *(v5 + 672);
      *(a4 + 688) = *(v5 + 688);
      *(a4 + 656) = v36;
      *(a4 + 672) = v37;
      *(a4 + 640) = v35;
      a4 += 696;
      v5 += 696;
    }

    while (v10 + 608 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100682AA0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (a3)
  {
    v4 = v3 + 696 * a3;
    do
    {
      *v3 = *a2;
      v5 = *(a2 + 16);
      v6 = *(a2 + 32);
      v7 = *(a2 + 48);
      *(v3 + 60) = *(a2 + 60);
      *(v3 + 32) = v6;
      *(v3 + 48) = v7;
      *(v3 + 16) = v5;
      *(v3 + 80) = *(a2 + 80);
      *(v3 + 96) = 0;
      *(v3 + 104) = 0;
      *(v3 + 88) = 0;
      *(v3 + 88) = *(a2 + 88);
      *(v3 + 104) = *(a2 + 104);
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 88) = 0;
      v8 = *(a2 + 176);
      v10 = *(a2 + 128);
      v9 = *(a2 + 144);
      *(v3 + 160) = *(a2 + 160);
      *(v3 + 176) = v8;
      *(v3 + 128) = v10;
      *(v3 + 144) = v9;
      v11 = *(a2 + 240);
      v13 = *(a2 + 192);
      v12 = *(a2 + 208);
      *(v3 + 224) = *(a2 + 224);
      *(v3 + 240) = v11;
      *(v3 + 192) = v13;
      *(v3 + 208) = v12;
      v15 = *(a2 + 272);
      v14 = *(a2 + 288);
      v16 = *(a2 + 256);
      *(v3 + 300) = *(a2 + 300);
      *(v3 + 272) = v15;
      *(v3 + 288) = v14;
      *(v3 + 256) = v16;
      *(v3 + 112) = *(a2 + 112);
      v17 = *(a2 + 320);
      *(v3 + 336) = *(a2 + 336);
      *(v3 + 320) = v17;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      *(a2 + 320) = 0;
      v18 = *(a2 + 440);
      v20 = *(a2 + 392);
      v19 = *(a2 + 408);
      *(v3 + 424) = *(a2 + 424);
      *(v3 + 440) = v18;
      *(v3 + 392) = v20;
      *(v3 + 408) = v19;
      v21 = *(a2 + 344);
      v22 = *(a2 + 376);
      *(v3 + 360) = *(a2 + 360);
      *(v3 + 376) = v22;
      *(v3 + 344) = v21;
      v24 = *(a2 + 472);
      v23 = *(a2 + 488);
      v25 = *(a2 + 456);
      *(v3 + 504) = *(a2 + 504);
      *(v3 + 472) = v24;
      *(v3 + 488) = v23;
      *(v3 + 456) = v25;
      v26 = *(a2 + 512);
      v27 = *(a2 + 528);
      v28 = *(a2 + 560);
      *(v3 + 544) = *(a2 + 544);
      *(v3 + 560) = v28;
      *(v3 + 512) = v26;
      *(v3 + 528) = v27;
      v29 = *(a2 + 576);
      v30 = *(a2 + 592);
      v31 = *(a2 + 624);
      *(v3 + 608) = *(a2 + 608);
      *(v3 + 624) = v31;
      *(v3 + 576) = v29;
      *(v3 + 592) = v30;
      v32 = *(a2 + 640);
      v33 = *(a2 + 656);
      v34 = *(a2 + 672);
      *(v3 + 688) = *(a2 + 688);
      *(v3 + 656) = v33;
      *(v3 + 672) = v34;
      *(v3 + 640) = v32;
      v3 += 696;
      a2 += 696;
    }

    while (v3 != v4);
    v3 = v4;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100682BEC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  v10 = *(a1 + 8);
  *v10 = *a2;
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  *(v10 + 60) = *(a2 + 60);
  *(v10 + 32) = v12;
  *(v10 + 48) = v13;
  *(v10 + 16) = v11;
  *(v10 + 80) = *(a2 + 80);
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  sub_10038EB38(v10 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v10 + 112) = *(a2 + 112);
  v14 = *(a2 + 128);
  v15 = *(a2 + 144);
  v16 = *(a2 + 176);
  *(v10 + 160) = *(a2 + 160);
  *(v10 + 176) = v16;
  *(v10 + 128) = v14;
  *(v10 + 144) = v15;
  v17 = *(a2 + 192);
  v18 = *(a2 + 208);
  v19 = *(a2 + 240);
  *(v10 + 224) = *(a2 + 224);
  *(v10 + 240) = v19;
  *(v10 + 192) = v17;
  *(v10 + 208) = v18;
  v20 = *(a2 + 256);
  v21 = *(a2 + 272);
  v22 = *(a2 + 288);
  *(v10 + 300) = *(a2 + 300);
  *(v10 + 272) = v21;
  *(v10 + 288) = v22;
  *(v10 + 256) = v20;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v10 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v23 = *(a2 + 320);
    *(v10 + 336) = *(a2 + 336);
    *(v10 + 320) = v23;
  }

  v24 = *(a2 + 344);
  v25 = *(a2 + 376);
  *(v10 + 360) = *(a2 + 360);
  *(v10 + 376) = v25;
  *(v10 + 344) = v24;
  v26 = *(a2 + 392);
  v27 = *(a2 + 408);
  v28 = *(a2 + 440);
  *(v10 + 424) = *(a2 + 424);
  *(v10 + 440) = v28;
  *(v10 + 392) = v26;
  *(v10 + 408) = v27;
  v29 = *(a2 + 456);
  v30 = *(a2 + 472);
  v31 = *(a2 + 488);
  *(v10 + 504) = *(a2 + 504);
  *(v10 + 472) = v30;
  *(v10 + 488) = v31;
  *(v10 + 456) = v29;
  v32 = *(a2 + 512);
  v33 = *(a2 + 528);
  v34 = *(a2 + 560);
  *(v10 + 544) = *(a2 + 544);
  *(v10 + 560) = v34;
  *(v10 + 512) = v32;
  *(v10 + 528) = v33;
  v35 = *(a2 + 576);
  v36 = *(a2 + 592);
  v37 = *(a2 + 624);
  *(v10 + 608) = *(a2 + 608);
  *(v10 + 624) = v37;
  *(v10 + 576) = v35;
  *(v10 + 592) = v36;
  v38 = *(a2 + 640);
  v39 = *(a2 + 656);
  v40 = *(a2 + 672);
  *(v10 + 688) = *(a2 + 688);
  *(v10 + 656) = v39;
  *(v10 + 672) = v40;
  *(v10 + 640) = v38;
  *(v10 + 696) = *a3;
  v41 = *(a4 + 16);
  *(v10 + 700) = *a4;
  *(v10 + 716) = v41;
  v42 = *(a4 + 32);
  v43 = *(a4 + 48);
  v44 = *(a4 + 80);
  *(v10 + 764) = *(a4 + 64);
  *(v10 + 780) = v44;
  *(v10 + 732) = v42;
  *(v10 + 748) = v43;
  result = *(a4 + 96);
  v46 = *(a4 + 112);
  v47 = *(a4 + 128);
  *(v10 + 840) = *(a4 + 140);
  *(v10 + 812) = v46;
  *(v10 + 828) = v47;
  *(v10 + 796) = result;
  *(v10 + 856) = *a5;
  *(a1 + 8) = v10 + 864;
  return result;
}

void sub_100682DB8(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

__n128 sub_100682DE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 16);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 60) = *(a2 + 60);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 16) = v5;
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  sub_10038EB38(v4 + 88, *(a2 + 88), *(a2 + 96), (*(a2 + 96) - *(a2 + 88)) >> 2);
  *(v4 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(v4 + 160) = *(a2 + 160);
  *(v4 + 176) = v10;
  *(v4 + 128) = v8;
  *(v4 + 144) = v9;
  v11 = *(a2 + 192);
  v12 = *(a2 + 208);
  v13 = *(a2 + 240);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 240) = v13;
  *(v4 + 192) = v11;
  *(v4 + 208) = v12;
  v14 = *(a2 + 256);
  v15 = *(a2 + 272);
  v16 = *(a2 + 288);
  *(v4 + 300) = *(a2 + 300);
  *(v4 + 272) = v15;
  *(v4 + 288) = v16;
  *(v4 + 256) = v14;
  if (*(a2 + 343) < 0)
  {
    sub_100007244((v4 + 320), *(a2 + 320), *(a2 + 328));
  }

  else
  {
    v17 = *(a2 + 320);
    *(v4 + 336) = *(a2 + 336);
    *(v4 + 320) = v17;
  }

  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(v4 + 360) = *(a2 + 360);
  *(v4 + 376) = v19;
  *(v4 + 344) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(v4 + 424) = *(a2 + 424);
  *(v4 + 440) = v22;
  *(v4 + 392) = v20;
  *(v4 + 408) = v21;
  v23 = *(a2 + 456);
  v24 = *(a2 + 472);
  v25 = *(a2 + 488);
  *(v4 + 504) = *(a2 + 504);
  *(v4 + 472) = v24;
  *(v4 + 488) = v25;
  *(v4 + 456) = v23;
  v26 = *(a2 + 512);
  v27 = *(a2 + 528);
  v28 = *(a2 + 560);
  *(v4 + 544) = *(a2 + 544);
  *(v4 + 560) = v28;
  *(v4 + 512) = v26;
  *(v4 + 528) = v27;
  v29 = *(a2 + 576);
  v30 = *(a2 + 592);
  v31 = *(a2 + 624);
  *(v4 + 608) = *(a2 + 608);
  *(v4 + 624) = v31;
  *(v4 + 576) = v29;
  *(v4 + 592) = v30;
  v32 = *(a2 + 640);
  v33 = *(a2 + 656);
  v34 = *(a2 + 672);
  *(v4 + 688) = *(a2 + 688);
  *(v4 + 656) = v33;
  *(v4 + 672) = v34;
  *(v4 + 640) = v32;
  *(v4 + 696) = *(a2 + 696);
  v35 = *(a2 + 716);
  *(v4 + 700) = *(a2 + 700);
  *(v4 + 716) = v35;
  v36 = *(a2 + 732);
  v37 = *(a2 + 748);
  v38 = *(a2 + 780);
  *(v4 + 764) = *(a2 + 764);
  *(v4 + 780) = v38;
  *(v4 + 732) = v36;
  *(v4 + 748) = v37;
  result = *(a2 + 796);
  v40 = *(a2 + 812);
  v41 = *(a2 + 828);
  *(v4 + 840) = *(a2 + 840);
  *(v4 + 812) = v40;
  *(v4 + 828) = v41;
  *(v4 + 796) = result;
  *(v4 + 856) = *(a2 + 856);
  *(a1 + 8) = v4 + 864;
  return result;
}

void sub_100682F94(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 96) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v3;
  _Unwind_Resume(exception_object);
}

BOOL sub_100682FBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 720);
  v3 = *(a2 + 720);
  if (v2 >= 0.0 && v3 < 0.0)
  {
    return 0;
  }

  if (v2 < 0.0 && v3 >= 0.0)
  {
    return 1;
  }

  if (v2 >= 0.0 != v3 >= 0.0)
  {
    sub_1018FF52C();
  }

  v5 = *(a1 + 796);
  v6 = *(a2 + 796);
  if (v5 == 6 && v6 != 6)
  {
    return 0;
  }

  if (v5 != 6 && v6 == 6)
  {
    return 1;
  }

  if (v5 != v6)
  {
    sub_1018FF0F4();
  }

  v8 = *(a1 + 8);
  if (v8 <= 9 && ((1 << v8) & 0x287) != 0 || v8 - 3 <= 2)
  {
    v9 = *(a2 + 8);
    if ((v9 > 9 || ((1 << v9) & 0x287) == 0) && v9 - 3 > 2)
    {
      return 0;
    }
  }

  if (v8 < 0xA && ((0x287u >> v8) & 1) != 0)
  {
    v10 = 1;
  }

  else
  {
    v11 = v8 - 3 < 3;
    if (v8 - 3 >= 3)
    {
      v13 = *(a2 + 8);
      if (v13 >= 0xA)
      {
        if (v13 - 3 < 3)
        {
          return 1;
        }
      }

      else
      {
        result = 1;
        if (v13 - 3 < 3 || ((0x287u >> v13) & 1) != 0)
        {
          return result;
        }
      }
    }

    if (v8 == 9)
    {
      v11 = 1;
    }

    v10 = v8 == 7 || v11;
  }

  v12 = *(a2 + 8);
  if (v12 <= 9 && ((1 << v12) & 0x287) != 0)
  {
    if (v10)
    {
      goto LABEL_33;
    }

LABEL_51:
    sub_1018FF3C4();
  }

  if (v10 != v12 - 3 < 3)
  {
    goto LABEL_51;
  }

LABEL_33:
  if (v8 == 6)
  {
    if (v12 != 6)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (v12 == 6)
  {
    return 1;
  }

LABEL_37:
  if ((v8 == 6) != (v12 == 6))
  {
    sub_1018FF25C();
  }

  if (v2 < v3)
  {
    return 0;
  }

  return v2 > v3;
}

void sub_1006831B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100682FBC(a2, a1);
  v7 = sub_100682FBC(a3, a2);
  if (v6)
  {
    v8 = (a1 + 700);
    if (v7)
    {
      v9 = (a1 + 856);
      sub_10068470C(a1, a3);
      v10 = *(a1 + 696);
      *(a1 + 696) = *(a3 + 696);
      *(a3 + 696) = v10;
      v11 = (a3 + 700);
      v79 = *(a1 + 796);
      v83 = *(a1 + 812);
      *v87 = *(a1 + 828);
      *&v87[12] = *(a1 + 840);
      v63 = *(a1 + 732);
      v67 = *(a1 + 748);
      v71 = *(a1 + 764);
      v75 = *(a1 + 780);
      v55 = *v8;
      v59 = *(a1 + 716);
      v12 = *(a3 + 716);
      *v8 = *(a3 + 700);
      *(a1 + 716) = v12;
      v13 = *(a3 + 732);
      v14 = *(a3 + 748);
      v15 = *(a3 + 780);
      *(a1 + 764) = *(a3 + 764);
      *(a1 + 780) = v15;
      *(a1 + 732) = v13;
      *(a1 + 748) = v14;
      v16 = *(a3 + 796);
      v17 = *(a3 + 812);
      v18 = *(a3 + 828);
      *(a1 + 840) = *(a3 + 840);
      *(a1 + 812) = v17;
      *(a1 + 828) = v18;
      *(a1 + 796) = v16;
    }

    else
    {
      sub_10068470C(a1, a2);
      v37 = *(a1 + 696);
      *(a1 + 696) = *(a2 + 696);
      *(a2 + 696) = v37;
      v38 = (a2 + 700);
      v82 = *(a1 + 796);
      v86 = *(a1 + 812);
      *v90 = *(a1 + 828);
      *&v90[12] = *(a1 + 840);
      v66 = *(a1 + 732);
      v70 = *(a1 + 748);
      v74 = *(a1 + 764);
      v78 = *(a1 + 780);
      v58 = *v8;
      v62 = *(a1 + 716);
      v39 = *(a2 + 716);
      *v8 = *(a2 + 700);
      *(a1 + 716) = v39;
      v40 = *(a2 + 732);
      v41 = *(a2 + 748);
      v42 = *(a2 + 780);
      *(a1 + 764) = *(a2 + 764);
      *(a1 + 780) = v42;
      *(a1 + 732) = v40;
      *(a1 + 748) = v41;
      v43 = *(a2 + 796);
      v44 = *(a2 + 812);
      v45 = *(a2 + 828);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 812) = v44;
      *(a1 + 828) = v45;
      *(a1 + 796) = v43;
      *(a2 + 796) = v82;
      *(a2 + 812) = v86;
      *(a2 + 828) = *v90;
      *(a2 + 840) = *&v90[12];
      *(a2 + 732) = v66;
      *(a2 + 748) = v70;
      *(a2 + 764) = v74;
      *(a2 + 780) = v78;
      *(a2 + 700) = v58;
      *(a2 + 716) = v62;
      LOBYTE(v37) = *(a1 + 856);
      *(a1 + 856) = *(a2 + 856);
      *(a2 + 856) = v37;
      if (!sub_100682FBC(a3, a2))
      {
        return;
      }

      v9 = (a2 + 856);
      sub_10068470C(a2, a3);
      v46 = *(a2 + 696);
      *(a2 + 696) = *(a3 + 696);
      *(a3 + 696) = v46;
      v11 = (a3 + 700);
      v79 = *(a2 + 796);
      v83 = *(a2 + 812);
      *v87 = *(a2 + 828);
      *&v87[12] = *(a2 + 840);
      v63 = *(a2 + 732);
      v67 = *(a2 + 748);
      v71 = *(a2 + 764);
      v75 = *(a2 + 780);
      v55 = *v38;
      v59 = *(a2 + 716);
      v47 = *(a3 + 716);
      *v38 = *(a3 + 700);
      *(a2 + 716) = v47;
      v48 = *(a3 + 732);
      v49 = *(a3 + 748);
      v50 = *(a3 + 780);
      *(a2 + 764) = *(a3 + 764);
      *(a2 + 780) = v50;
      *(a2 + 732) = v48;
      *(a2 + 748) = v49;
      v51 = *(a3 + 796);
      v52 = *(a3 + 812);
      v53 = *(a3 + 828);
      *(a2 + 840) = *(a3 + 840);
      *(a2 + 812) = v52;
      *(a2 + 828) = v53;
      *(a2 + 796) = v51;
    }

    v11[6] = v79;
    v11[7] = v83;
    v11[8] = *v87;
    *(v11 + 140) = *&v87[12];
    v11[2] = v63;
    v11[3] = v67;
    v11[4] = v71;
    v11[5] = v75;
    v28 = (a3 + 856);
    *v11 = v55;
    v11[1] = v59;
    goto LABEL_10;
  }

  if (v7)
  {
    sub_10068470C(a2, a3);
    v19 = *(a2 + 696);
    *(a2 + 696) = *(a3 + 696);
    *(a3 + 696) = v19;
    v20 = (a2 + 700);
    v80 = *(a2 + 796);
    v84 = *(a2 + 812);
    *v88 = *(a2 + 828);
    *&v88[12] = *(a2 + 840);
    v64 = *(a2 + 732);
    v68 = *(a2 + 748);
    v72 = *(a2 + 764);
    v76 = *(a2 + 780);
    v56 = *(a2 + 700);
    v60 = *(a2 + 716);
    v21 = *(a3 + 716);
    *(a2 + 700) = *(a3 + 700);
    *(a2 + 716) = v21;
    v22 = *(a3 + 732);
    v23 = *(a3 + 748);
    v24 = *(a3 + 780);
    *(a2 + 764) = *(a3 + 764);
    *(a2 + 780) = v24;
    *(a2 + 732) = v22;
    *(a2 + 748) = v23;
    v25 = *(a3 + 796);
    v26 = *(a3 + 812);
    v27 = *(a3 + 828);
    *(a2 + 840) = *(a3 + 840);
    *(a2 + 812) = v26;
    *(a2 + 828) = v27;
    *(a2 + 796) = v25;
    *(a3 + 796) = v80;
    *(a3 + 812) = v84;
    *(a3 + 828) = *v88;
    *(a3 + 840) = *&v88[12];
    *(a3 + 732) = v64;
    *(a3 + 748) = v68;
    *(a3 + 764) = v72;
    *(a3 + 780) = v76;
    *(a3 + 700) = v56;
    *(a3 + 716) = v60;
    LOBYTE(v19) = *(a2 + 856);
    *(a2 + 856) = *(a3 + 856);
    *(a3 + 856) = v19;
    if (sub_100682FBC(a2, a1))
    {
      v28 = (a2 + 856);
      sub_10068470C(a1, a2);
      v29 = *(a1 + 696);
      *(a1 + 696) = *(a2 + 696);
      *(a2 + 696) = v29;
      v81 = *(a1 + 796);
      v85 = *(a1 + 812);
      *v89 = *(a1 + 828);
      *&v89[12] = *(a1 + 840);
      v65 = *(a1 + 732);
      v69 = *(a1 + 748);
      v73 = *(a1 + 764);
      v77 = *(a1 + 780);
      v57 = *(a1 + 700);
      v61 = *(a1 + 716);
      v30 = *(a2 + 716);
      *(a1 + 700) = *v20;
      *(a1 + 716) = v30;
      v31 = *(a2 + 732);
      v32 = *(a2 + 748);
      v33 = *(a2 + 780);
      *(a1 + 764) = *(a2 + 764);
      *(a1 + 780) = v33;
      *(a1 + 732) = v31;
      *(a1 + 748) = v32;
      v34 = *(a2 + 796);
      v35 = *(a2 + 812);
      v36 = *(a2 + 828);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 812) = v35;
      *(a1 + 828) = v36;
      *(a1 + 796) = v34;
      *(a2 + 796) = v81;
      *(a2 + 812) = v85;
      *(a2 + 828) = *v89;
      *(a2 + 840) = *&v89[12];
      *(a2 + 732) = v65;
      *(a2 + 748) = v69;
      *(a2 + 764) = v73;
      *(a2 + 780) = v77;
      v9 = (a1 + 856);
      *v20 = v57;
      *(a2 + 716) = v61;
LABEL_10:
      v54 = *v9;
      *v9 = *v28;
      *v28 = v54;
    }
  }
}

double sub_1006835D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1006831B0(a1, a2, a3);
  if (sub_100682FBC(a4, a3))
  {
    sub_10068470C(a3, a4);
    v9 = *(a3 + 696);
    *(a3 + 696) = *(a4 + 696);
    *(a4 + 696) = v9;
    v10 = (a3 + 700);
    v53 = *(a3 + 796);
    v56 = *(a3 + 812);
    *v59 = *(a3 + 828);
    *&v59[12] = *(a3 + 840);
    v41 = *(a3 + 732);
    v44 = *(a3 + 748);
    v47 = *(a3 + 764);
    v50 = *(a3 + 780);
    v35 = *(a3 + 700);
    v38 = *(a3 + 716);
    v11 = *(a4 + 716);
    *(a3 + 700) = *(a4 + 700);
    *(a3 + 716) = v11;
    v12 = *(a4 + 732);
    v13 = *(a4 + 748);
    v14 = *(a4 + 780);
    *(a3 + 764) = *(a4 + 764);
    *(a3 + 780) = v14;
    *(a3 + 732) = v12;
    *(a3 + 748) = v13;
    v15 = *(a4 + 796);
    v16 = *(a4 + 812);
    v17 = *(a4 + 828);
    *(a3 + 840) = *(a4 + 840);
    *(a3 + 812) = v16;
    *(a3 + 828) = v17;
    *(a3 + 796) = v15;
    *(a4 + 796) = v53;
    *(a4 + 812) = v56;
    *(a4 + 828) = *v59;
    *(a4 + 840) = *&v59[12];
    *(a4 + 732) = v41;
    *(a4 + 748) = v44;
    *(a4 + 764) = v47;
    *(a4 + 780) = v50;
    *(a4 + 700) = v35;
    *(a4 + 716) = v38;
    LOBYTE(v9) = *(a3 + 856);
    *(a3 + 856) = *(a4 + 856);
    *(a4 + 856) = v9;
    if (sub_100682FBC(a3, a2))
    {
      sub_10068470C(a2, a3);
      v18 = *(a2 + 696);
      *(a2 + 696) = *(a3 + 696);
      *(a3 + 696) = v18;
      v19 = (a2 + 700);
      v54 = *(a2 + 796);
      v57 = *(a2 + 812);
      *v60 = *(a2 + 828);
      *&v60[12] = *(a2 + 840);
      v42 = *(a2 + 732);
      v45 = *(a2 + 748);
      v48 = *(a2 + 764);
      v51 = *(a2 + 780);
      v36 = *(a2 + 700);
      v39 = *(a2 + 716);
      v20 = *(a3 + 716);
      *(a2 + 700) = *v10;
      *(a2 + 716) = v20;
      v21 = *(a3 + 732);
      v22 = *(a3 + 748);
      v23 = *(a3 + 780);
      *(a2 + 764) = *(a3 + 764);
      *(a2 + 780) = v23;
      *(a2 + 732) = v21;
      *(a2 + 748) = v22;
      v24 = *(a3 + 796);
      v25 = *(a3 + 812);
      v26 = *(a3 + 828);
      *(a2 + 840) = *(a3 + 840);
      *(a2 + 812) = v25;
      *(a2 + 828) = v26;
      *(a2 + 796) = v24;
      *(a3 + 796) = v54;
      *(a3 + 812) = v57;
      *(a3 + 828) = *v60;
      *(a3 + 840) = *&v60[12];
      *(a3 + 732) = v42;
      *(a3 + 748) = v45;
      *(a3 + 764) = v48;
      *(a3 + 780) = v51;
      *v10 = v36;
      *(a3 + 716) = v39;
      LOBYTE(v18) = *(a2 + 856);
      *(a2 + 856) = *(a3 + 856);
      *(a3 + 856) = v18;
      if (sub_100682FBC(a2, a1))
      {
        sub_10068470C(a1, a2);
        v27 = *(a1 + 696);
        *(a1 + 696) = *(a2 + 696);
        *(a2 + 696) = v27;
        v55 = *(a1 + 796);
        v58 = *(a1 + 812);
        *v61 = *(a1 + 828);
        *&v61[12] = *(a1 + 840);
        v43 = *(a1 + 732);
        v46 = *(a1 + 748);
        v49 = *(a1 + 764);
        v52 = *(a1 + 780);
        v37 = *(a1 + 700);
        v40 = *(a1 + 716);
        v28 = *(a2 + 716);
        *(a1 + 700) = *v19;
        *(a1 + 716) = v28;
        v29 = *(a2 + 732);
        v30 = *(a2 + 748);
        v31 = *(a2 + 780);
        *(a1 + 764) = *(a2 + 764);
        *(a1 + 780) = v31;
        *(a1 + 732) = v29;
        *(a1 + 748) = v30;
        v32 = *(a2 + 796);
        v33 = *(a2 + 812);
        v34 = *(a2 + 828);
        *(a1 + 840) = *(a2 + 840);
        *(a1 + 812) = v33;
        *(a1 + 828) = v34;
        *(a1 + 796) = v32;
        *(a2 + 796) = v55;
        *(a2 + 812) = v58;
        *(a2 + 828) = *v61;
        *(a2 + 840) = *&v61[12];
        *(a2 + 732) = v43;
        *(a2 + 748) = v46;
        *(a2 + 764) = v49;
        *(a2 + 780) = v52;
        result = *&v37;
        *v19 = v37;
        *(a2 + 716) = v40;
        LOBYTE(v27) = *(a1 + 856);
        *(a1 + 856) = *(a2 + 856);
        *(a2 + 856) = v27;
      }
    }
  }

  return result;
}

double sub_100683898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1006835D8(a1, a2, a3, a4);
  if (sub_100682FBC(a5, a4))
  {
    sub_10068470C(a4, a5);
    v11 = *(a4 + 696);
    *(a4 + 696) = *(a5 + 696);
    *(a5 + 696) = v11;
    v12 = (a4 + 700);
    v70 = *(a4 + 796);
    v74 = *(a4 + 812);
    *v78 = *(a4 + 828);
    *&v78[12] = *(a4 + 840);
    v54 = *(a4 + 732);
    v58 = *(a4 + 748);
    v62 = *(a4 + 764);
    v66 = *(a4 + 780);
    v46 = *(a4 + 700);
    v50 = *(a4 + 716);
    v13 = *(a5 + 716);
    *(a4 + 700) = *(a5 + 700);
    *(a4 + 716) = v13;
    v14 = *(a5 + 732);
    v15 = *(a5 + 748);
    v16 = *(a5 + 780);
    *(a4 + 764) = *(a5 + 764);
    *(a4 + 780) = v16;
    *(a4 + 732) = v14;
    *(a4 + 748) = v15;
    v17 = *(a5 + 796);
    v18 = *(a5 + 812);
    v19 = *(a5 + 828);
    *(a4 + 840) = *(a5 + 840);
    *(a4 + 812) = v18;
    *(a4 + 828) = v19;
    *(a4 + 796) = v17;
    *(a5 + 796) = v70;
    *(a5 + 812) = v74;
    *(a5 + 828) = *v78;
    *(a5 + 840) = *&v78[12];
    *(a5 + 732) = v54;
    *(a5 + 748) = v58;
    *(a5 + 764) = v62;
    *(a5 + 780) = v66;
    *(a5 + 700) = v46;
    *(a5 + 716) = v50;
    LOBYTE(v11) = *(a4 + 856);
    *(a4 + 856) = *(a5 + 856);
    *(a5 + 856) = v11;
    if (sub_100682FBC(a4, a3))
    {
      sub_10068470C(a3, a4);
      v20 = *(a3 + 696);
      *(a3 + 696) = *(a4 + 696);
      *(a4 + 696) = v20;
      v21 = (a3 + 700);
      v71 = *(a3 + 796);
      v75 = *(a3 + 812);
      *v79 = *(a3 + 828);
      *&v79[12] = *(a3 + 840);
      v55 = *(a3 + 732);
      v59 = *(a3 + 748);
      v63 = *(a3 + 764);
      v67 = *(a3 + 780);
      v47 = *(a3 + 700);
      v51 = *(a3 + 716);
      v22 = *(a4 + 716);
      *(a3 + 700) = *v12;
      *(a3 + 716) = v22;
      v23 = *(a4 + 732);
      v24 = *(a4 + 748);
      v25 = *(a4 + 780);
      *(a3 + 764) = *(a4 + 764);
      *(a3 + 780) = v25;
      *(a3 + 732) = v23;
      *(a3 + 748) = v24;
      v26 = *(a4 + 796);
      v27 = *(a4 + 812);
      v28 = *(a4 + 828);
      *(a3 + 840) = *(a4 + 840);
      *(a3 + 812) = v27;
      *(a3 + 828) = v28;
      *(a3 + 796) = v26;
      *(a4 + 796) = v71;
      *(a4 + 812) = v75;
      *(a4 + 828) = *v79;
      *(a4 + 840) = *&v79[12];
      *(a4 + 732) = v55;
      *(a4 + 748) = v59;
      *(a4 + 764) = v63;
      *(a4 + 780) = v67;
      *v12 = v47;
      *(a4 + 716) = v51;
      LOBYTE(v20) = *(a3 + 856);
      *(a3 + 856) = *(a4 + 856);
      *(a4 + 856) = v20;
      if (sub_100682FBC(a3, a2))
      {
        sub_10068470C(a2, a3);
        v29 = *(a2 + 696);
        *(a2 + 696) = *(a3 + 696);
        *(a3 + 696) = v29;
        v30 = (a2 + 700);
        v72 = *(a2 + 796);
        v76 = *(a2 + 812);
        *v80 = *(a2 + 828);
        *&v80[12] = *(a2 + 840);
        v56 = *(a2 + 732);
        v60 = *(a2 + 748);
        v64 = *(a2 + 764);
        v68 = *(a2 + 780);
        v48 = *(a2 + 700);
        v52 = *(a2 + 716);
        v31 = *(a3 + 716);
        *(a2 + 700) = *v21;
        *(a2 + 716) = v31;
        v32 = *(a3 + 732);
        v33 = *(a3 + 748);
        v34 = *(a3 + 780);
        *(a2 + 764) = *(a3 + 764);
        *(a2 + 780) = v34;
        *(a2 + 732) = v32;
        *(a2 + 748) = v33;
        v35 = *(a3 + 796);
        v36 = *(a3 + 812);
        v37 = *(a3 + 828);
        *(a2 + 840) = *(a3 + 840);
        *(a2 + 812) = v36;
        *(a2 + 828) = v37;
        *(a2 + 796) = v35;
        *(a3 + 796) = v72;
        *(a3 + 812) = v76;
        *(a3 + 828) = *v80;
        *(a3 + 840) = *&v80[12];
        *(a3 + 732) = v56;
        *(a3 + 748) = v60;
        *(a3 + 764) = v64;
        *(a3 + 780) = v68;
        *v21 = v48;
        *(a3 + 716) = v52;
        LOBYTE(v29) = *(a2 + 856);
        *(a2 + 856) = *(a3 + 856);
        *(a3 + 856) = v29;
        if (sub_100682FBC(a2, a1))
        {
          sub_10068470C(a1, a2);
          v38 = *(a1 + 696);
          *(a1 + 696) = *(a2 + 696);
          *(a2 + 696) = v38;
          v73 = *(a1 + 796);
          v77 = *(a1 + 812);
          *v81 = *(a1 + 828);
          *&v81[12] = *(a1 + 840);
          v57 = *(a1 + 732);
          v61 = *(a1 + 748);
          v65 = *(a1 + 764);
          v69 = *(a1 + 780);
          v49 = *(a1 + 700);
          v53 = *(a1 + 716);
          v39 = *(a2 + 716);
          *(a1 + 700) = *v30;
          *(a1 + 716) = v39;
          v40 = *(a2 + 732);
          v41 = *(a2 + 748);
          v42 = *(a2 + 780);
          *(a1 + 764) = *(a2 + 764);
          *(a1 + 780) = v42;
          *(a1 + 732) = v40;
          *(a1 + 748) = v41;
          v43 = *(a2 + 796);
          v44 = *(a2 + 812);
          v45 = *(a2 + 828);
          *(a1 + 840) = *(a2 + 840);
          *(a1 + 812) = v44;
          *(a1 + 828) = v45;
          *(a1 + 796) = v43;
          *(a2 + 796) = v73;
          *(a2 + 812) = v77;
          *(a2 + 828) = *v81;
          *(a2 + 840) = *&v81[12];
          *(a2 + 732) = v57;
          *(a2 + 748) = v61;
          *(a2 + 764) = v65;
          *(a2 + 780) = v69;
          result = *&v49;
          *v30 = v49;
          *(a2 + 716) = v53;
          LOBYTE(v38) = *(a1 + 856);
          *(a1 + 856) = *(a2 + 856);
          *(a2 + 856) = v38;
        }
      }
    }
  }

  return result;
}

void sub_100683C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 5);
    if (a2 - a1 >= 865)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = a1 + 864 * v8;
      do
      {
        sub_100684C64(a1, v7, v10);
        v10 -= 864;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = (a1 + 700);
      v12 = v4;
      do
      {
        if (sub_100682FBC(v12, a1))
        {
          sub_10068470C(v12, a1);
          v13 = *(v12 + 696);
          *(v12 + 696) = *(a1 + 696);
          *(a1 + 696) = v13;
          v14 = *(v12 + 812);
          *&v160[16] = *(v12 + 796);
          v161 = v14;
          v162[0] = *(v12 + 828);
          *(v162 + 12) = *(v12 + 840);
          v15 = *(v12 + 748);
          v158 = *(v12 + 732);
          *v159 = v15;
          v16 = *(v12 + 780);
          *&v159[16] = *(v12 + 764);
          *v160 = v16;
          v17 = *(v12 + 716);
          v156 = *(v12 + 700);
          v157 = v17;
          v18 = *(a1 + 716);
          *(v12 + 700) = *v11;
          *(v12 + 716) = v18;
          v19 = *(a1 + 732);
          v20 = *(a1 + 748);
          v21 = *(a1 + 780);
          *(v12 + 764) = *(a1 + 764);
          *(v12 + 780) = v21;
          *(v12 + 732) = v19;
          *(v12 + 748) = v20;
          v22 = *(a1 + 796);
          v23 = *(a1 + 812);
          v24 = *(a1 + 828);
          *(v12 + 840) = *(a1 + 840);
          *(v12 + 812) = v23;
          *(v12 + 828) = v24;
          *(v12 + 796) = v22;
          v25 = v161;
          *(a1 + 796) = *&v160[16];
          *(a1 + 812) = v25;
          *(a1 + 828) = v162[0];
          *(a1 + 840) = *(v162 + 12);
          v26 = *v159;
          *(a1 + 732) = v158;
          *(a1 + 748) = v26;
          v27 = *v160;
          *(a1 + 764) = *&v159[16];
          *(a1 + 780) = v27;
          v28 = v157;
          *v11 = v156;
          *(a1 + 716) = v28;
          LOBYTE(v13) = *(v12 + 856);
          *(v12 + 856) = *(a1 + 856);
          *(a1 + 856) = v13;
          sub_100684C64(a1, v7, a1);
        }

        v12 += 864;
      }

      while (v12 != a3);
    }

    if (v6 >= 865)
    {
      v29 = 0x84BDA12F684BDA13 * (v6 >> 5);
      do
      {
        v102 = v4;
        v30 = 0;
        v31 = *(a1 + 48);
        v103[2] = *(a1 + 32);
        v104[0] = v31;
        *(v104 + 12) = *(a1 + 60);
        v32 = *(a1 + 16);
        v103[0] = *a1;
        v103[1] = v32;
        v105 = *(a1 + 80);
        *v106 = *(a1 + 88);
        v107 = *(a1 + 104);
        *(a1 + 96) = 0;
        *(a1 + 104) = 0;
        *(a1 + 88) = 0;
        v33 = *(a1 + 288);
        v118 = *(a1 + 272);
        v119[0] = v33;
        *(v119 + 12) = *(a1 + 300);
        v34 = *(a1 + 224);
        v114 = *(a1 + 208);
        v115 = v34;
        v35 = *(a1 + 256);
        v116 = *(a1 + 240);
        v117 = v35;
        v36 = *(a1 + 160);
        v110 = *(a1 + 144);
        v111 = v36;
        v37 = *(a1 + 192);
        v112 = *(a1 + 176);
        v113 = v37;
        v38 = *(a1 + 128);
        v108 = *(a1 + 112);
        v109 = v38;
        v120 = *(a1 + 320);
        v121 = *(a1 + 336);
        *(a1 + 328) = 0;
        *(a1 + 336) = 0;
        *(a1 + 320) = 0;
        v39 = *(a1 + 488);
        v130 = *(a1 + 472);
        v131 = v39;
        v132 = *(a1 + 504);
        v40 = *(a1 + 424);
        v126 = *(a1 + 408);
        v127 = v40;
        v41 = *(a1 + 456);
        v128 = *(a1 + 440);
        v129 = v41;
        v42 = *(a1 + 360);
        v122 = *(a1 + 344);
        v123 = v42;
        v43 = *(a1 + 392);
        v124 = *(a1 + 376);
        v125 = v43;
        v44 = *(a1 + 656);
        v141 = *(a1 + 640);
        v142 = v44;
        v143 = *(a1 + 672);
        v144 = *(a1 + 688);
        v45 = *(a1 + 592);
        v137 = *(a1 + 576);
        v138 = v45;
        v46 = *(a1 + 624);
        v139 = *(a1 + 608);
        v140 = v46;
        v47 = *(a1 + 528);
        v133 = *(a1 + 512);
        v134 = v47;
        v48 = *(a1 + 560);
        v135 = *(a1 + 544);
        v136 = v48;
        v145 = *(a1 + 696);
        v49 = *(a1 + 812);
        v152 = *(a1 + 796);
        v153 = v49;
        *v154 = *(a1 + 828);
        *&v154[12] = *(a1 + 840);
        v50 = *(a1 + 748);
        v148 = *(a1 + 732);
        v149 = v50;
        v51 = *(a1 + 780);
        v150 = *(a1 + 764);
        v151 = v51;
        v52 = *(a1 + 700);
        v53 = *(a1 + 716);
        v155 = *(a1 + 856);
        v54 = a1;
        v146 = v52;
        v147 = v53;
        do
        {
          v55 = v54 + 864 * v30;
          v56 = v55 + 864;
          v57 = (2 * v30) | 1;
          v58 = 2 * v30 + 2;
          if (v58 < v29)
          {
            v59 = v55 + 1728;
            if (sub_100682FBC(v55 + 864, v55 + 1728))
            {
              v56 = v59;
              v57 = v58;
            }
          }

          sub_100684ADC(v54, v56);
          v54 = v56;
          v30 = v57;
        }

        while (v57 <= ((v29 - 2) >> 1));
        v4 = v102 - 864;
        if (v56 == v102 - 864)
        {
          sub_100684ADC(v56, v103);
        }

        else
        {
          sub_100684ADC(v56, v102 - 864);
          sub_100684ADC(v4, v103);
          v60 = v56 - a1 + 864;
          if (v60 >= 865)
          {
            v61 = (-2 - 0x7B425ED097B425EDLL * (v60 >> 5)) >> 1;
            v62 = a1 + 864 * v61;
            if (sub_100682FBC(v62, v56))
            {
              v156 = *v56;
              v63 = *(v56 + 16);
              v64 = *(v56 + 32);
              v65 = *(v56 + 48);
              *&v159[12] = *(v56 + 60);
              v158 = v64;
              *v159 = v65;
              v157 = v63;
              *v160 = *(v56 + 80);
              *&v160[8] = *(v56 + 88);
              *&v160[24] = *(v56 + 104);
              *(v56 + 96) = 0;
              *(v56 + 104) = 0;
              *(v56 + 88) = 0;
              v161 = *(v56 + 112);
              v66 = *(v56 + 128);
              v67 = *(v56 + 144);
              v68 = *(v56 + 176);
              v162[2] = *(v56 + 160);
              v162[3] = v68;
              v162[0] = v66;
              v162[1] = v67;
              v69 = *(v56 + 192);
              v70 = *(v56 + 208);
              v71 = *(v56 + 240);
              v162[6] = *(v56 + 224);
              v162[7] = v71;
              v162[4] = v69;
              v162[5] = v70;
              v72 = *(v56 + 256);
              v73 = *(v56 + 272);
              v74 = *(v56 + 288);
              *(v163 + 12) = *(v56 + 300);
              v162[9] = v73;
              v163[0] = v74;
              v162[8] = v72;
              v75 = *(v56 + 320);
              v165 = *(v56 + 336);
              __p = v75;
              *(v56 + 328) = 0;
              *(v56 + 336) = 0;
              *(v56 + 320) = 0;
              v76 = *(v56 + 440);
              v78 = *(v56 + 392);
              v77 = *(v56 + 408);
              v171 = *(v56 + 424);
              v172 = v76;
              v169 = v78;
              v170 = v77;
              v79 = *(v56 + 344);
              v80 = *(v56 + 376);
              v167 = *(v56 + 360);
              v168 = v80;
              v166 = v79;
              v82 = *(v56 + 472);
              v81 = *(v56 + 488);
              v83 = *(v56 + 456);
              v176 = *(v56 + 504);
              v174 = v82;
              v175 = v81;
              v173 = v83;
              v84 = *(v56 + 512);
              v85 = *(v56 + 528);
              v86 = *(v56 + 560);
              v179 = *(v56 + 544);
              v180 = v86;
              v177 = v84;
              v178 = v85;
              v87 = *(v56 + 576);
              v88 = *(v56 + 592);
              v89 = *(v56 + 624);
              v183 = *(v56 + 608);
              v184 = v89;
              v181 = v87;
              v182 = v88;
              v90 = *(v56 + 640);
              v91 = *(v56 + 656);
              v92 = *(v56 + 672);
              v188 = *(v56 + 688);
              v186 = v91;
              v187 = v92;
              v185 = v90;
              v189 = *(v56 + 696);
              v93 = *(v56 + 716);
              v190 = *(v56 + 700);
              v191 = v93;
              v94 = *(v56 + 780);
              v96 = *(v56 + 732);
              v95 = *(v56 + 748);
              v194 = *(v56 + 764);
              v195 = v94;
              v192 = v96;
              v193 = v95;
              v98 = *(v56 + 812);
              v97 = *(v56 + 828);
              v99 = *(v56 + 796);
              *&v198[12] = *(v56 + 840);
              v197 = v98;
              *v198 = v97;
              v196 = v99;
              v199 = *(v56 + 856);
              do
              {
                v100 = v62;
                sub_100684ADC(v56, v62);
                if (!v61)
                {
                  break;
                }

                v61 = (v61 - 1) >> 1;
                v62 = a1 + 864 * v61;
                v56 = v100;
              }

              while (sub_100682FBC(v62, &v156));
              sub_100684ADC(v100, &v156);
              if (SHIBYTE(v165) < 0)
              {
                operator delete(__p);
              }

              if (*&v160[8])
              {
                *&v160[16] = *&v160[8];
                operator delete(*&v160[8]);
              }
            }
          }
        }

        if (SHIBYTE(v121) < 0)
        {
          operator delete(v120);
        }

        if (v106[0])
        {
          v106[1] = v106[0];
          operator delete(v106[0]);
        }
      }

      while (v29-- > 2);
    }
  }
}

void sub_10068428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

BOOL sub_1006842B4(uint64_t a1, uint64_t a2)
{
  v4 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 5);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        if (sub_100682FBC(a2 - 864, a1))
        {
          sub_10068470C(a1, (a2 - 864));
          v5 = *(a1 + 696);
          *(a1 + 696) = *(a2 - 168);
          *(a2 - 168) = v5;
          v6 = *(a1 + 812);
          *&v55[16] = *(a1 + 796);
          v56 = v6;
          v57[0] = *(a1 + 828);
          *(v57 + 12) = *(a1 + 840);
          v7 = *(a1 + 748);
          v53 = *(a1 + 732);
          *v54 = v7;
          v8 = *(a1 + 780);
          *&v54[16] = *(a1 + 764);
          *v55 = v8;
          v9 = *(a1 + 716);
          v51 = *(a1 + 700);
          v52 = v9;
          v10 = *(a2 - 148);
          *(a1 + 700) = *(a2 - 164);
          *(a1 + 716) = v10;
          v11 = *(a2 - 132);
          v12 = *(a2 - 116);
          v13 = *(a2 - 84);
          *(a1 + 764) = *(a2 - 100);
          *(a1 + 780) = v13;
          *(a1 + 732) = v11;
          *(a1 + 748) = v12;
          v14 = *(a2 - 68);
          v15 = *(a2 - 52);
          v16 = *(a2 - 36);
          *(a1 + 840) = *(a2 - 24);
          *(a1 + 812) = v15;
          *(a1 + 828) = v16;
          *(a1 + 796) = v14;
          v17 = v56;
          *(a2 - 68) = *&v55[16];
          *(a2 - 52) = v17;
          *(a2 - 36) = v57[0];
          *(a2 - 24) = *(v57 + 12);
          v18 = *v54;
          *(a2 - 132) = v53;
          *(a2 - 116) = v18;
          v19 = *v55;
          *(a2 - 100) = *&v54[16];
          *(a2 - 84) = v19;
          v20 = v52;
          *(a2 - 164) = v51;
          *(a2 - 148) = v20;
          LOBYTE(v5) = *(a1 + 856);
          *(a1 + 856) = *(a2 - 8);
          result = 1;
          *(a2 - 8) = v5;
          return result;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_1006831B0(a1, a1 + 864, a2 - 864);
      return 1;
    case 4:
      sub_1006835D8(a1, a1 + 864, a1 + 1728, a2 - 864);
      return 1;
    case 5:
      sub_100683898(a1, a1 + 864, a1 + 1728, a1 + 2592, a2 - 864);
      return 1;
  }

LABEL_11:
  v22 = a1 + 1728;
  sub_1006831B0(a1, a1 + 864, a1 + 1728);
  v23 = a1 + 2592;
  if (a1 + 2592 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    if (sub_100682FBC(v23, v22))
    {
      v26 = *(v23 + 48);
      v53 = *(v23 + 32);
      *v54 = v26;
      *&v54[12] = *(v23 + 60);
      v27 = *(v23 + 16);
      v51 = *v23;
      v52 = v27;
      *v55 = *(v23 + 80);
      *&v55[8] = *(v23 + 88);
      *&v55[24] = *(v23 + 104);
      *(v23 + 88) = 0;
      *(v23 + 96) = 0;
      *(v23 + 104) = 0;
      v28 = *(v23 + 288);
      v57[9] = *(v23 + 272);
      v58[0] = v28;
      *(v58 + 12) = *(v23 + 300);
      v29 = *(v23 + 224);
      v57[5] = *(v23 + 208);
      v57[6] = v29;
      v30 = *(v23 + 256);
      v57[7] = *(v23 + 240);
      v57[8] = v30;
      v31 = *(v23 + 160);
      v57[1] = *(v23 + 144);
      v57[2] = v31;
      v32 = *(v23 + 192);
      v57[3] = *(v23 + 176);
      v57[4] = v32;
      v33 = *(v23 + 128);
      v56 = *(v23 + 112);
      v57[0] = v33;
      __p = *(v23 + 320);
      v60 = *(v23 + 336);
      *(v23 + 328) = 0;
      *(v23 + 336) = 0;
      *(v23 + 320) = 0;
      v34 = *(v23 + 488);
      v69 = *(v23 + 472);
      v70 = v34;
      v71 = *(v23 + 504);
      v35 = *(v23 + 424);
      v65 = *(v23 + 408);
      v66 = v35;
      v36 = *(v23 + 456);
      v67 = *(v23 + 440);
      v68 = v36;
      v37 = *(v23 + 360);
      v61 = *(v23 + 344);
      v62 = v37;
      v38 = *(v23 + 392);
      v63 = *(v23 + 376);
      v64 = v38;
      v39 = *(v23 + 656);
      v80 = *(v23 + 640);
      v81 = v39;
      v82 = *(v23 + 672);
      v83 = *(v23 + 688);
      v40 = *(v23 + 592);
      v76 = *(v23 + 576);
      v77 = v40;
      v41 = *(v23 + 624);
      v78 = *(v23 + 608);
      v79 = v41;
      v42 = *(v23 + 528);
      v72 = *(v23 + 512);
      v73 = v42;
      v43 = *(v23 + 560);
      v74 = *(v23 + 544);
      v75 = v43;
      v84 = *(v23 + 696);
      v44 = *(v23 + 812);
      v91 = *(v23 + 796);
      v92 = v44;
      *v93 = *(v23 + 828);
      *&v93[12] = *(v23 + 840);
      v45 = *(v23 + 748);
      v87 = *(v23 + 732);
      v88 = v45;
      v46 = *(v23 + 780);
      v89 = *(v23 + 764);
      v90 = v46;
      v47 = *(v23 + 716);
      v85 = *(v23 + 700);
      v86 = v47;
      v48 = v24;
      v94 = *(v23 + 856);
      while (1)
      {
        sub_100684ADC(a1 + v48 + 2592, a1 + v48 + 1728);
        if (v48 == -1728)
        {
          break;
        }

        v49 = sub_100682FBC(&v51, a1 + v48 + 864);
        v48 -= 864;
        if (!v49)
        {
          v50 = a1 + v48 + 2592;
          goto LABEL_19;
        }
      }

      v50 = a1;
LABEL_19:
      sub_100684ADC(v50, &v51);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__p);
      }

      if (*&v55[8])
      {
        *&v55[16] = *&v55[8];
        operator delete(*&v55[8]);
      }

      if (++v25 == 8)
      {
        return v23 + 864 == a2;
      }
    }

    v22 = v23;
    v24 += 864;
    v23 += 864;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

void sub_1006846C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10056D2F4(va);
  _Unwind_Resume(a1);
}

double sub_10068470C(__int128 *a1, __int128 *a2)
{
  v68 = a1[2];
  *v69 = a1[3];
  *&v69[12] = *(a1 + 60);
  v66 = *a1;
  v67 = a1[1];
  v5 = *(a1 + 88);
  v4 = a1 + 11;
  v41 = v5;
  v6 = *(a1 + 20);
  v7 = *(a1 + 13);
  *v4 = 0;
  *(a1 + 12) = 0;
  *(a1 + 13) = 0;
  v56 = a1[9];
  v57 = a1[10];
  v54 = a1[7];
  v55 = a1[8];
  v60 = a1[13];
  v61 = a1[14];
  v58 = a1[11];
  v59 = a1[12];
  *&v65[12] = *(a1 + 300);
  v64 = a1[17];
  *v65 = a1[18];
  v62 = a1[15];
  v63 = a1[16];
  v42 = *(a1 + 40);
  *v82 = *(a1 + 41);
  *&v82[7] = *(a1 + 335);
  v8 = *(a1 + 343);
  *(a1 + 41) = 0;
  *(a1 + 42) = 0;
  *(a1 + 40) = 0;
  v51 = *(a1 + 472);
  v52 = *(a1 + 488);
  v53 = *(a1 + 126);
  v47 = *(a1 + 408);
  v48 = *(a1 + 424);
  v49 = *(a1 + 440);
  v50 = *(a1 + 456);
  v43 = *(a1 + 344);
  v44 = *(a1 + 360);
  v45 = *(a1 + 376);
  v46 = *(a1 + 392);
  v78 = a1[40];
  v79 = a1[41];
  v80 = a1[42];
  v81 = *(a1 + 172);
  v74 = a1[36];
  v75 = a1[37];
  v76 = a1[38];
  v77 = a1[39];
  v70 = a1[32];
  v71 = a1[33];
  v72 = a1[34];
  v73 = a1[35];
  *a1 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  *(a1 + 60) = *(a2 + 60);
  a1[2] = v10;
  a1[3] = v11;
  a1[1] = v9;
  *(a1 + 20) = *(a2 + 20);
  sub_10007057C(v4, (a2 + 88));
  a1[7] = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[11];
  a1[10] = a2[10];
  a1[11] = v14;
  a1[8] = v12;
  a1[9] = v13;
  v15 = a2[12];
  v16 = a2[13];
  v17 = a2[15];
  a1[14] = a2[14];
  a1[15] = v17;
  a1[12] = v15;
  a1[13] = v16;
  v18 = a2[16];
  v19 = a2[17];
  v20 = a2[18];
  *(a1 + 300) = *(a2 + 300);
  a1[17] = v19;
  a1[18] = v20;
  a1[16] = v18;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v21 = a2[20];
  *(a1 + 42) = *(a2 + 42);
  a1[20] = v21;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v23 = *(a2 + 424);
  v22 = *(a2 + 440);
  v24 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v24;
  *(a1 + 424) = v23;
  *(a1 + 440) = v22;
  v26 = *(a2 + 360);
  v25 = *(a2 + 376);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v26;
  *(a1 + 376) = v25;
  v27 = *(a2 + 456);
  v28 = *(a2 + 472);
  v29 = *(a2 + 488);
  *(a1 + 126) = *(a2 + 126);
  *(a1 + 472) = v28;
  *(a1 + 488) = v29;
  *(a1 + 456) = v27;
  v30 = a2[32];
  v31 = a2[33];
  v32 = a2[35];
  a1[34] = a2[34];
  a1[35] = v32;
  a1[32] = v30;
  a1[33] = v31;
  v33 = a2[36];
  v34 = a2[37];
  v35 = a2[39];
  a1[38] = a2[38];
  a1[39] = v35;
  a1[36] = v33;
  a1[37] = v34;
  v36 = a2[40];
  v37 = a2[41];
  v38 = a2[42];
  *(a1 + 172) = *(a2 + 172);
  a1[41] = v37;
  a1[42] = v38;
  a1[40] = v36;
  a2[2] = v68;
  a2[3] = *v69;
  *(a2 + 60) = *&v69[12];
  *a2 = v66;
  a2[1] = v67;
  *(a2 + 20) = v6;
  v39 = *(a2 + 11);
  if (v39)
  {
    *(a2 + 12) = v39;
    operator delete(v39);
  }

  *(a2 + 88) = v41;
  *(a2 + 13) = v7;
  a2[17] = v64;
  a2[18] = *v65;
  *(a2 + 300) = *&v65[12];
  a2[13] = v60;
  a2[14] = v61;
  a2[15] = v62;
  a2[16] = v63;
  a2[9] = v56;
  a2[10] = v57;
  a2[11] = v58;
  a2[12] = v59;
  a2[7] = v54;
  a2[8] = v55;
  if (*(a2 + 343) < 0)
  {
    operator delete(*(a2 + 40));
  }

  *(a2 + 40) = v42;
  *(a2 + 41) = *v82;
  *(a2 + 335) = *&v82[7];
  *(a2 + 343) = v8;
  *(a2 + 472) = v51;
  *(a2 + 488) = v52;
  *(a2 + 126) = v53;
  *(a2 + 408) = v47;
  *(a2 + 424) = v48;
  *(a2 + 440) = v49;
  *(a2 + 456) = v50;
  *(a2 + 344) = v43;
  *(a2 + 360) = v44;
  *(a2 + 376) = v45;
  *(a2 + 392) = v46;
  a2[40] = v78;
  a2[41] = v79;
  a2[42] = v80;
  *(a2 + 172) = v81;
  a2[36] = v74;
  a2[37] = v75;
  a2[38] = v76;
  a2[39] = v77;
  a2[32] = v70;
  a2[33] = v71;
  result = *&v72;
  a2[34] = v72;
  a2[35] = v73;
  return result;
}

__n128 sub_100684ADC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  *(a1 + 80) = *(a2 + 80);
  sub_10007057C(a1 + 88, (a2 + 88));
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a2 + 128);
  v8 = *(a2 + 144);
  v9 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v9;
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  v10 = *(a2 + 192);
  v11 = *(a2 + 208);
  v12 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v12;
  *(a1 + 192) = v10;
  *(a1 + 208) = v11;
  v13 = *(a2 + 256);
  v14 = *(a2 + 272);
  v15 = *(a2 + 288);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 272) = v14;
  *(a1 + 288) = v15;
  *(a1 + 256) = v13;
  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  v16 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v16;
  *(a2 + 343) = 0;
  *(a2 + 320) = 0;
  v18 = *(a2 + 424);
  v17 = *(a2 + 440);
  v19 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v19;
  *(a1 + 424) = v18;
  *(a1 + 440) = v17;
  v21 = *(a2 + 360);
  v20 = *(a2 + 376);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 360) = v21;
  *(a1 + 376) = v20;
  v22 = *(a2 + 456);
  v23 = *(a2 + 472);
  v24 = *(a2 + 488);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 472) = v23;
  *(a1 + 488) = v24;
  *(a1 + 456) = v22;
  v25 = *(a2 + 512);
  v26 = *(a2 + 528);
  v27 = *(a2 + 560);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = v27;
  *(a1 + 512) = v25;
  *(a1 + 528) = v26;
  v28 = *(a2 + 576);
  v29 = *(a2 + 592);
  v30 = *(a2 + 624);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 624) = v30;
  *(a1 + 576) = v28;
  *(a1 + 592) = v29;
  v31 = *(a2 + 640);
  v32 = *(a2 + 656);
  v33 = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 656) = v32;
  *(a1 + 672) = v33;
  *(a1 + 640) = v31;
  *(a1 + 696) = *(a2 + 696);
  v34 = *(a2 + 716);
  *(a1 + 700) = *(a2 + 700);
  *(a1 + 716) = v34;
  v35 = *(a2 + 732);
  v36 = *(a2 + 748);
  v37 = *(a2 + 780);
  *(a1 + 764) = *(a2 + 764);
  *(a1 + 780) = v37;
  *(a1 + 732) = v35;
  *(a1 + 748) = v36;
  result = *(a2 + 796);
  v39 = *(a2 + 812);
  v40 = *(a2 + 828);
  *(a1 + 840) = *(a2 + 840);
  *(a1 + 812) = v39;
  *(a1 + 828) = v40;
  *(a1 + 796) = result;
  *(a1 + 856) = *(a2 + 856);
  return result;
}

void sub_100684C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0x84BDA12F684BDA13 * ((a3 - a1) >> 5)))
    {
      v8 = (0x97B425ED097B426 * ((a3 - a1) >> 5)) | 1;
      v9 = a1 + 864 * v8;
      v10 = 0x97B425ED097B426 * ((a3 - a1) >> 5) + 2;
      if (v10 < a2 && sub_100682FBC(a1 + 864 * v8, v9 + 864))
      {
        v9 += 864;
        v8 = v10;
      }

      if (!sub_100682FBC(v9, v4))
      {
        v11 = *(v4 + 48);
        v35[2] = *(v4 + 32);
        v36[0] = v11;
        *(v36 + 12) = *(v4 + 60);
        v12 = *(v4 + 16);
        v35[0] = *v4;
        v35[1] = v12;
        v37 = *(v4 + 80);
        *v38 = *(v4 + 88);
        v39 = *(v4 + 104);
        *(v4 + 88) = 0;
        *(v4 + 96) = 0;
        *(v4 + 104) = 0;
        *(v51 + 12) = *(v4 + 300);
        v13 = *(v4 + 288);
        v50 = *(v4 + 272);
        v51[0] = v13;
        v14 = *(v4 + 224);
        v46 = *(v4 + 208);
        v47 = v14;
        v15 = *(v4 + 256);
        v48 = *(v4 + 240);
        v49 = v15;
        v16 = *(v4 + 160);
        v42 = *(v4 + 144);
        v43 = v16;
        v17 = *(v4 + 192);
        v44 = *(v4 + 176);
        v45 = v17;
        v18 = *(v4 + 128);
        v40 = *(v4 + 112);
        v41 = v18;
        *__p = *(v4 + 320);
        v53 = *(v4 + 336);
        *(v4 + 328) = 0;
        *(v4 + 336) = 0;
        *(v4 + 320) = 0;
        v19 = *(v4 + 488);
        v62 = *(v4 + 472);
        v63 = v19;
        v20 = *(v4 + 424);
        v58 = *(v4 + 408);
        v59 = v20;
        v21 = *(v4 + 456);
        v60 = *(v4 + 440);
        v61 = v21;
        v22 = *(v4 + 360);
        v54 = *(v4 + 344);
        v55 = v22;
        v23 = *(v4 + 392);
        v56 = *(v4 + 376);
        v57 = v23;
        v64 = *(v4 + 504);
        v24 = *(v4 + 656);
        v73 = *(v4 + 640);
        v74 = v24;
        v75 = *(v4 + 672);
        v76 = *(v4 + 688);
        v25 = *(v4 + 592);
        v69 = *(v4 + 576);
        v70 = v25;
        v26 = *(v4 + 624);
        v71 = *(v4 + 608);
        v72 = v26;
        v27 = *(v4 + 528);
        v65 = *(v4 + 512);
        v66 = v27;
        v28 = *(v4 + 560);
        v67 = *(v4 + 544);
        v68 = v28;
        v77 = *(v4 + 696);
        v29 = *(v4 + 812);
        v84 = *(v4 + 796);
        v85 = v29;
        *v86 = *(v4 + 828);
        *&v86[12] = *(v4 + 840);
        v30 = *(v4 + 748);
        v80 = *(v4 + 732);
        v81 = v30;
        v31 = *(v4 + 780);
        v82 = *(v4 + 764);
        v83 = v31;
        v32 = *(v4 + 716);
        v78 = *(v4 + 700);
        v79 = v32;
        v87 = *(v4 + 856);
        do
        {
          v33 = v9;
          sub_100684ADC(v4, v9);
          if (v6 < v8)
          {
            break;
          }

          v34 = (2 * v8) | 1;
          v9 = a1 + 864 * v34;
          v8 = 2 * v8 + 2;
          if (v8 >= a2)
          {
            v8 = v34;
          }

          else if (sub_100682FBC(a1 + 864 * v34, v9 + 864))
          {
            v9 += 864;
          }

          else
          {
            v8 = v34;
          }

          v4 = v33;
        }

        while (!sub_100682FBC(v9, v35));
        sub_100684ADC(v33, v35);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p[0]);
        }

        if (v38[0])
        {
          v38[1] = v38[0];
          operator delete(v38[0]);
        }
      }
    }
  }
}

BOOL sub_100684F5C()
{
  v1 = qword_1025D4608;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100684F7C()
{
  v2 = *(v0 + 1544);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100684F98()
{
  v2 = *(v0 + 1544);

  return os_signpost_enabled(v2);
}

void sub_100684FB0()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_100685CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    sub_100008080(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100685D34(uint64_t *a1, uint64_t *a2, int a3)
{
  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v6 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a2;
    v8 = a2[1];
    v9 = *a1;
    v10 = *(*a1[1] + 72);
    *buf = 134219008;
    v13 = v9;
    v14 = 1024;
    v15 = a3;
    v16 = 2048;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 1024;
    v21 = v10;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#altimeter,adding elevation profile transition point,now,%.3f,isNew,%d,sampleTimestamp,%.3f,altitude,%.3f,smoothedWorkoutProfileCount,%d", buf, 0x2Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_1018FF6EC();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "auto CLElevationGainFromProfile::computeAscendingDescendingSegments:::(anonymous class)::operator()(const ElevationProfileSegmentTransitionPoint &, const int) const", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }
}

void sub_100685F40(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1003E5FE8(a1, v4 >> 4);
    }

    v6 = 0;
    if (v3 >> 4)
    {
      v7 = 16 * (v4 >> 4);
      v8 = a1[1] - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1006862C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006862EC(uint64_t **a1, double a2)
{
  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v5 = **a1;
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#altimeter,setting segmentation threshold,time,%.3f,threshold,%.1f", &v7, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FF950(a1, a2);
  }

  return a2;
}

uint64_t sub_100686CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0x3F6000003DE147AELL;
  *(a1 + 8) = 1025758986;
  *(a1 + 12) = 0x3C00000003;
  *(a1 + 20) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  sub_1001B6020(a1 + 48, a2);
  sub_1001B6020(a1 + 80, a3);
  return a1;
}

uint64_t sub_100686D6C(uint64_t a1)
{
  sub_100686F2C(a1 + 48);
  sub_100686F2C(a1 + 80);
  sub_1001C5560(a1 + 80);
  sub_1001C5560(a1 + 48);
  return a1;
}

uint64_t sub_100686DBC(uint64_t a1, int a2, CLMotionActivity *this)
{
  result = CLMotionActivity::isInVehicle(this);
  if (*(a1 + 21) != result)
  {
    *(a1 + 20) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 21) = result;
    if (*(a1 + 72))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018FFBA4();
      }

      v5 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 21);
        v8[0] = 67240192;
        v8[1] = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#CLProactiveLocation,turn_detector,start/end in-vehicle, invoking turn-detector override,fIsInVehicle,%{public}d", v8, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FFBB8((a1 + 21));
      }

      v7 = *(a1 + 72);
      if (!v7)
      {
        sub_1000CF05C();
      }

      return (*(*v7 + 48))(v7);
    }
  }

  return result;
}

uint64_t sub_100686F2C(uint64_t a1)
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

uint64_t sub_100686FB0(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  sub_10026CE64(a1 + 8, "CLMotionStateOverride", a1, 107, 0.0);
  *(a1 + 272) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 23;
  if (qword_1025D4200 != -1)
  {
    sub_1018FFCE0();
  }

  v3 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Workout, Taking power assertion due to session start.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFCF4(buf);
    v5 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionStateOverride::CLMotionStateOverride(id<CLIntersiloUniverse>)", "%s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  return a1;
}

uint64_t sub_100687170(uint64_t a1)
{
  v2 = *(a1 + 240);
  v17 = *(a1 + 224);
  v18 = v2;
  v19 = *(a1 + 256);
  v20 = *(a1 + 272);
  v3 = *(a1 + 176);
  v13 = *(a1 + 160);
  v14 = v3;
  v4 = *(a1 + 208);
  v15 = *(a1 + 192);
  v16 = v4;
  v5 = *(a1 + 144);
  v11 = *(a1 + 128);
  v12 = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100687380;
  v10[3] = &unk_1024686E0;
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Workout, Releasing power assertion due to session end.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFD60(buf);
    v8 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "CLMotionStateOverride::~CLMotionStateOverride()", "%s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  sub_10026ED10(a1 + 8);
  sub_10026F190(a1 + 8);
  return a1;
}

void sub_100687374(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100687390(uint64_t a1, unsigned __int8 *uu)
{
  if (*(a1 + 461) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v2 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Ignoring endWorkoutSession because fTriggerIndoorOutdoorOnObservedPedWorkouts is true", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FFE94();
    }
  }

  else
  {
    v4 = (a1 + 0x2000);
    memset(out, 0, 37);
    uuid_unparse(uu, out);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    *__p = 0u;
    v11 = 0u;
    v9 = 0u;
    *(a1 + 8744) = 0u;
    v5 = (a1 + 8760);
    if (v4[591] < 0)
    {
      operator delete(*v5);
    }

    *v5 = *__p;
    *(a1 + 8776) = v11;
    sub_10069C5F4((a1 + 8784), &v11 + 8);
    sub_100106180(&v11 + 1);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    *__p = 0u;
    v11 = 0u;
    v9 = 0u;
    *(a1 + 8832) = 0u;
    v6 = (a1 + 8848);
    if (v4[679] < 0)
    {
      operator delete(*v6);
    }

    *v6 = *__p;
    *(a1 + 8864) = v11;
    BYTE7(v11) = 0;
    LOBYTE(__p[0]) = 0;
    sub_10069C000((a1 + 8872), &v11 + 8);
    sub_100666704(&v11 + 1);
    v4[728] = 0;
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v7 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v9) = 136315138;
      *(&v9 + 4) = out;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WorkoutSession, end workout session, %s", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FFDA4();
    }

    v8 = *(a1 + 8736);
    if (v8)
    {
      sub_10071EC1C(v8);
      sub_100693260((a1 + 8736), 0);
    }

    sub_10068D544(a1, (a1 + 464), 0);
    sub_10068D544(a1, (a1 + 528), 0);
    sub_10068D544(a1, (a1 + 560), 0);
    *(a1 + 128) = 0;
  }
}

void sub_10068764C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_10000EC00(v4, "StartOrResumeWorkout");
    if (*(a1 + 16) <= 0)
    {
      if (SHIBYTE(v5) < 0)
      {
        sub_100007244(__p, v4[0], v4[1]);
      }

      else
      {
        *__p = *v4;
        v7 = v5;
      }

      sub_10023B1D0(a1 + 8, __p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }
  }

  else
  {
    v3 = a1 + 8;

    sub_10026ED10(v3);
  }
}

void sub_10068770C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006877B0(uint64_t a1, void *a2)
{
  v4 = [a2 state] > 299;
  if (*(a1 + 592) != v4)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018FFCE0();
    }

    v5 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = [a2 state];
      v7 = 1024;
      v8 = v4;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Scuba diving state changed, submersionState, %d, isScubaDiving, %d", v6, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FFF70();
    }

    *(a1 + 592) = v4;
  }
}

uint64_t sub_100687A3C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100689BAC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026586A8 != -1)
  {
    dispatch_once(&qword_1026586A8, block);
  }

  return qword_1026371C8;
}

void sub_100687D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 664);
  if (v3)
  {
    if (![v3 objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:")}])
    {
      v7 = objc_alloc_init(NSMutableSet);
      [*(a1 + 664) setObject:v7 forKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3)}];
    }

    v8 = [*(a1 + 664) objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3)}];

    [v8 addObject:a2];
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "PrepareSessionEnd, receiving addClientForPrepareSessionEnd after client list has been deleted!", v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101900388();
    }
  }
}

void sub_100687EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 664);
  if (v3)
  {
    if ([v3 objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:")}])
    {
      v7 = [*(a1 + 664) objectForKeyedSubscript:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", a3)}];

      [v7 removeObject:a2];
    }

    else
    {
      if (qword_1025D43F0 != -1)
      {
        sub_10023AD98();
      }

      v9 = qword_1025D43F8;
      if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
      {
        v10[0] = 67109120;
        v10[1] = a3;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "PrepareSessionEnd, Client for PrepareSessionEnd of session type %d does not exist!", v10, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10190046C(a3);
      }
    }
  }

  else
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "PrepareSessionEnd, Receiving removeClientForPrepareSessionEnd after client list has been deleted!", v10, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101900564();
    }
  }
}

id sub_1006880BC(uint64_t a1, double a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Workout,Setting suggested stop timeout for workout,%f", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900648(a2);
  }

  return [*(a1 + 320) setNextFireDelay:a2];
}

void sub_1006881D0(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "User dismissed current workout alert.", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900748();
  }

  Current = CFAbsoluteTimeGetCurrent();
  sub_100D30854((a1 + 6648), Current, *(a1 + 452));
  sub_1006907D8(a1);
  v4 = *(a1 + 10160);
  if (v4)
  {
    v5 = CFAbsoluteTimeGetCurrent();
    sub_100FD735C(v4, v5);
  }

  sub_10068F75C(a1);
}

id sub_1006883FC(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 128);
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gfc didExit recieved in msm, stopping, current workout in session %{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900900(a1);
  }

  if (sub_1012572FC(*(a1 + 9576), *(a1 + 9592)) != -1.0)
  {
    sub_100D30930(a1 + 6648);
  }

  return [*(a1 + 10104) stopGeoFence];
}

id sub_1006885A4(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 128);
    v5[0] = 67240192;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#gfc didTimeout recieved in msm, stopping, current workout in session %{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900AC8(a1);
  }

  return [*(a1 + 10104) stopGeoFence];
}

void sub_1006886F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100688718@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((*(result + 128) & 1) == 0)
  {
    *(result + 128) = 1;
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

id sub_1006887C0(void *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10069D0A4;
  v4[3] = &unk_102469660;
  v1 = a1[1];
  v4[4] = *a1;
  v5 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = [v4 copy];
  if (v5)
  {
    sub_100008080(v5);
  }

  return v2;
}

void sub_100688860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100008080(a14);
  }

  _Unwind_Resume(exception_object);
}

id sub_1006888B0(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Added client for workout session updates", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900BB4();
  }

  return [*(a1 + 680) addObject:a2];
}

id sub_100688998(uint64_t a1, uint64_t a2)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Removed client from workout session updates", v6, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900C90();
  }

  return [*(a1 + 680) removeObject:a2];
}

void sub_100688B14(uint64_t a1, unsigned __int8 *uu, uint64_t a3, int a4)
{
  if (*(a1 + 461) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v4 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring beginWorkoutSession because fTriggerIndoorOutdoorOnObservedPedWorkouts is true", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101900E6C();
    }
  }

  else
  {
    memset(v29, 0, 37);
    memset(out, 0, 37);
    uuid_unparse(uu, out);
    uuid_unparse(a3, v29);
    *(a1 + 8744) = *a3;
    std::string::operator=((a1 + 8760), (a3 + 16));
    sub_10069C21C((a1 + 8784), (a3 + 40));
    *(a1 + 8920) = a4;
    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v9 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 39) >= 0)
      {
        v10 = a3 + 16;
      }

      else
      {
        v10 = *(a3 + 16);
      }

      *buf = 136315906;
      *&buf[4] = out;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      *&buf[22] = 2080;
      *&buf[24] = v10;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WorkoutSession, begin workout session with workoutId, %s, overallId, %s, appId, %s, allow detection, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_1018FFD38();
      }

      if (*(a3 + 39) >= 0)
      {
        v16 = a3 + 16;
      }

      else
      {
        v16 = *(a3 + 16);
      }

      v30 = 136315906;
      v31 = out;
      v32 = 2080;
      v33 = v29;
      v34 = 2080;
      v35 = v16;
      v36 = 1024;
      v37 = a4;
      v17 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLMotionStateMediator::beginWorkoutSession(const CLMotionStateMediator_Type::WorkoutSettings &, const CLMotionStateMediator_Type::WorkoutSessionPriors &, BOOL)", "%s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v11 = *(uu + 7);
    v24 = *(uu + 6);
    v25 = v11;
    v26 = *(uu + 8);
    v27 = *(uu + 18);
    v12 = *(uu + 3);
    v20 = *(uu + 2);
    v21 = v12;
    v13 = *(uu + 5);
    v22 = *(uu + 4);
    v23 = v13;
    v14 = *(uu + 1);
    *buf = *uu;
    *&buf[16] = v14;
    if (*(a1 + 396) == 1 && v20 == 14)
    {
      *&v20 = *(a1 + 400);
    }

    if (!a4)
    {
      sub_10051BE3C(&v18);
      operator new();
    }

    sub_10051BE3C(&v18);
    if (*(a3 + 80) >= 2uLL)
    {
      operator new();
    }

    if (qword_1025D43F0 != -1)
    {
      sub_1018FFD38();
    }

    v15 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_ERROR))
    {
      v30 = 136315138;
      v31 = v29;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "WorkoutSession, no priors but requesting detection, %s", &v30, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101900D6C();
    }

    sub_10068D544(a1, (a1 + 464), 0x100u);
  }
}

uint64_t sub_100689098(uint64_t a1, unsigned __int8 *uu, void *a3)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315394;
    *&v12[4] = out;
    *&v12[12] = 1024;
    *&v12[14] = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WorkoutSession, set current workout type in session, %s, isManualTransition, %d", v12, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101900F50(out, a3);
  }

  v7 = *(uu + 7);
  v17 = *(uu + 6);
  v18 = v7;
  v19 = *(uu + 8);
  v20 = *(uu + 18);
  v8 = *(uu + 3);
  v13 = *(uu + 2);
  v14 = v8;
  v9 = *(uu + 5);
  v15 = *(uu + 4);
  v16 = v9;
  v10 = *(uu + 1);
  *v12 = *uu;
  *&v12[16] = v10;
  if (*(a1 + 396) == 1 && v13 == 14)
  {
    *&v13 = *(a1 + 400);
  }

  return sub_10071E3BC(*(a1 + 8736), v12, a3);
}

uint64_t sub_100689280(uint64_t a1, unsigned __int8 *uu)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v3 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = out;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "WorkoutSession, pause workout, %s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190105C();
  }

  return sub_10071EB24(*(a1 + 8736));
}

uint64_t sub_1006893C0(uint64_t a1, unsigned __int8 *uu)
{
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  if (qword_1025D43F0 != -1)
  {
    sub_1018FFD38();
  }

  v4 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10[0]) = 136315138;
    *(v10 + 4) = out;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "WorkoutSession, resume workout, %s", v10, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190114C();
  }

  v5 = *(uu + 7);
  v15 = *(uu + 6);
  v16 = v5;
  v17 = *(uu + 8);
  v18 = *(uu + 18);
  v6 = *(uu + 3);
  v11 = *(uu + 2);
  v12 = v6;
  v7 = *(uu + 5);
  v13 = *(uu + 4);
  v14 = v7;
  v8 = *(uu + 1);
  v10[0] = *uu;
  v10[1] = v8;
  if (*(a1 + 396) == 1 && v11 == 14)
  {
    *&v11 = *(a1 + 400);
  }

  return sub_10071E3BC(*(a1 + 8736), v10, 1);
}

uint64_t sub_1006896F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 9656);
  *(a2 + 104) = *(a1 + 9640);
  *(a2 + 120) = v4;
  *(a2 + 136) = *(a1 + 9672);
  v5 = *(a1 + 9592);
  *(a2 + 40) = *(a1 + 9576);
  *(a2 + 56) = v5;
  v6 = *(a1 + 9624);
  *(a2 + 72) = *(a1 + 9608);
  *(a2 + 88) = v6;
  v7 = *(a1 + 9560);
  *(a2 + 8) = *(a1 + 9544);
  *a2 = *(a1 + 8924);
  *(a2 + 152) = *(a1 + 9688);
  *(a2 + 24) = v7;
  *(a2 + 160) = *(a1 + 8832);
  if (*(a1 + 8871) < 0)
  {
    sub_100007244((a2 + 176), *(a1 + 8848), *(a1 + 8856));
  }

  else
  {
    *(a2 + 176) = *(a1 + 8848);
    *(a2 + 192) = *(a1 + 8864);
  }

  return sub_1006976A0(a2 + 200, (a1 + 8872));
}

void sub_1006897B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  _Unwind_Resume(exception_object);
}

id sub_1006897D0(__int128 *a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10069D0EC;
  v4[3] = &unk_102469690;
  v5 = *a1;
  if (*(a1 + 39) < 0)
  {
    sub_100007244(__p, *(a1 + 2), *(a1 + 3));
  }

  else
  {
    *__p = a1[1];
    v7 = *(a1 + 4);
  }

  sub_1006976A0(v8, a1 + 5);
  v2 = [v4 copy];
  sub_100666704(v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_100689A04(unsigned __int8 *a1, void *a2, void *a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134349312;
    v9 = a2;
    v10 = 1026;
    v11 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Workout, reminder mute settings, updating %{public}ld to %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190123C(a3, a2);
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_12:
    v7 = a1[489];
    a1[489] = a3;
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (a2 == 2)
  {
    a1[553] = 0;
    return;
  }

  if (a2 != 1)
  {
    return;
  }

  v7 = a1[521];
  a1[521] = a3;
LABEL_13:
  if (v7 != a3)
  {
    sub_100690180(a1);
  }
}

void sub_100689B78(id a1)
{
  sub_10001A3E8();
  if (sub_10071C8FC())
  {
    if (sub_100BA0344())
    {
      byte_102658698 = 1;
    }
  }
}

uint64_t sub_100689C1C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100689CAC;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026586B8 != -1)
  {
    dispatch_once(&qword_1026586B8, block);
  }

  return byte_1026586B0;
}

id sub_100689CAC(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_1026586B0 = result;
  return result;
}

void sub_100689CDC(uint64_t a1, void *a2)
{
  v3 = sub_10068BFFC(a1, "CLMotionStateMediator", a2);
  *v3 = off_102468750;
  *(v3 + 112) = off_102468890;
  *(v3 + 120) = &off_1024688D0;
  *(v3 + 128) = 0;
  sub_100AB05B4(v3 + 136);
  *(a1 + 320) = [*(a1 + 40) newTimer];
  *(a1 + 328) = 0;
  *(a1 + 336) = xmmword_101C85FDC;
  *(a1 + 352) = unk_101C85FEC;
  *(a1 + 368) = xmmword_101C85FFC;
  *(a1 + 380) = *(&xmmword_101C85FFC + 12);
  LODWORD(v6) = 0;
  sub_1004861C8((a1 + 396), "ForceOtherWorkoutOverride", &v6, 0);
  LODWORD(v6) = 0;
  sub_1004861C8((a1 + 408), "ForceWorkoutLocationType", &v6, 0);
  LODWORD(v6) = 150;
  sub_1004861C8((a1 + 420), "ForceMaxSecondsForWorkoutLocationTypeDisambiguation", &v6, 0);
  LOBYTE(v6) = 0;
  sub_100126E84((a1 + 432), "EnableForcedWorkoutLocationUpdatesFromSPI", &v6, 0);
  LODWORD(v6) = 0;
  sub_1004861C8((a1 + 436), "NumAllowedIndoorOutdoorNotificationsPerHour", &v6, 0);
  LODWORD(v6) = 1155596288;
  sub_1004F8200((a1 + 448), "MuteWorkoutAlertsForSecondsAfterUserDismissal", &v6, 0);
  v5.__r_.__value_.__s.__data_[0] = 0;
  sub_100126E84(&v6, "EnableALSActiveScansAOP", &v5, 0);
  if (BYTE1(v6) == 1)
  {
    sub_10001A3E8();
    v4 = sub_10071C698();
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 460) = v4;
  v5.__r_.__value_.__s.__data_[0] = 0;
  sub_100126E84(&v6, "TriggerPhoneIndoorOutdoorOnWatchPedWorkouts", &v5, 0);
  *(a1 + 461) = BYTE1(v6);
  sub_10000EC00((a1 + 464), "start");
  *(a1 + 488) = 0;
  sub_10000EC00((a1 + 496), "resume");
  *(a1 + 520) = 0;
  sub_10000EC00((a1 + 528), "end");
  *(a1 + 552) = 0;
  sub_10000EC00((a1 + 560), "autoPause");
  *(a1 + 592) = 0;
  *(a1 + 584) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = objc_alloc_init(NSMutableDictionary);
  *(a1 + 672) = 0;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  sub_10069D234((a1 + 704), *(a1 + 32));
}

uint64_t sub_10068BFFC(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024696D0;
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

void sub_10068C08C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10068C0A8(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onOldMotionCoprocessorData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onOldMotionCoprocessorData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_1000B1AB0(a2, a1);
}

void sub_10068C270(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onActivePedStateCoprocessorData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onActivePedStateCoprocessorData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_100D35E64(a2 + 6648, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C438(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWatchElevationCoprocessorData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v9 = 2082;
      *&v9[2] = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWatchElevationCoprocessorData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  *v9 = 0;
  *buf = *(a1 + 8);
  *v9 = *(a1 + 54);
  *&v9[4] = *(a1 + 56);
  sub_100694448((a2 + 3464), buf);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C618(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onTier1CyclingFeaturesData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "activity";
      *&buf[28] = 2050;
      *&buf[30] = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onTier1CyclingFeaturesData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  v6 = *(a1 + 16);
  *buf = *a1;
  *&buf[16] = v6;
  *&buf[32] = *(a1 + 32);
  sub_100694620(a2 + 3936, buf);
  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C7EC(uint64_t a1, int *a2, _OWORD *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onCalorimetryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onCalorimetryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100694970(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068C9B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 7672);
  v18 = *(v1 + 7656);
  v19 = v2;
  v20 = *(v1 + 7688);
  v21 = *(v1 + 7704);
  v3 = *(v1 + 7608);
  v14 = *(v1 + 7592);
  v15 = v3;
  v4 = *(v1 + 7640);
  v16 = *(v1 + 7624);
  v17 = v4;
  v5 = *(v1 + 7544);
  v10 = *(v1 + 7528);
  v11 = v5;
  v6 = *(v1 + 7576);
  v12 = *(v1 + 7560);
  v13 = v6;
  v7 = *(v1 + 7496);
  Current = CFAbsoluteTimeGetCurrent();
  v8 = 4;
  sub_10068E928(v1, &v7);
}

void sub_10068CA70(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onSkiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onSkiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 1)
  {
    sub_100D3600C(a4 + 6648, *a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068CC48(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onWatchOrientationSettingsNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onWatchOrientationSettingsNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100694D98(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068CE14(uint64_t a1, int *a2, unsigned __int8 *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onDaemonStatus", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onDaemonStatus, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100694F40(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068CFE0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onCatherineNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onCatherineNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006953BC(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D1AC(uint64_t a1, int *a2, int *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006954F4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D378(uint64_t a1, int *a2, int *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10069596C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D544(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  if (qword_1025D43F0 != -1)
  {
    sub_10023AD98();
  }

  v6 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "clearing override";
    if ((a3 >> 8))
    {
      v7 = "overriding";
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 2080;
    v13 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Workout setting, %s for %s setting", &v10, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019013E0();
  }

  v9 = *(a2 + 27);
  if (v9 != BYTE1(a3) || !*(a2 + 27))
  {
    if (v9 == BYTE1(a3))
    {
      return;
    }

    goto LABEL_17;
  }

  if (*(a2 + 26) != a3)
  {
LABEL_17:
    *(a2 + 13) = a3;
    sub_100690180(a1);
  }
}

uint64_t sub_10068D69C(uint64_t a1)
{
  v2 = sub_1000206B4();
  (*(*v2 + 936))(v2);
  v6 = 0;
  v3 = sub_1000206B4();
  if (sub_10005BBE4(v3, "kMostRecentWorkoutEventWorkoutType", &v6 + 1))
  {
    *(a1 + 9576) = SHIDWORD(v6);
  }

  v4 = sub_1000206B4();
  result = sub_10005BBE4(v4, "kMostRecentWorkoutEventLocationType", &v6);
  if (result)
  {
    *(a1 + 9584) = v6;
  }

  return result;
}

void sub_10068D740(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (!*a2)
  {
    sub_100DA5D14(a4 + 8400, (*a3 == 1));
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068D91C(uint64_t *a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onDeviceMotionData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onDeviceMotionData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_1006932AC(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068DAE0(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
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
    v7 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onBacklightStateData", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v8 = qword_1025D47F8;
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
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onBacklightStateData, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    v9 = *(a4 + 8392);
    if (v9)
    {
      *(v9 + 240) = *(a3 + 56);
    }
  }

  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10068DCB0(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onSPUStairsEscalationEvent", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onSPUStairsEscalationEvent, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_100694820(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t *sub_10068DE74(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100745C60();
    operator delete();
  }

  return a1;
}

uint64_t sub_10068DEC4(uint64_t a1)
{
  *a1 = off_1024696D0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10068DF48(uint64_t a1)
{
  *a1 = off_102468750;
  *(a1 + 112) = off_102468890;
  *(a1 + 120) = &off_1024688D0;
  [*(a1 + 320) invalidate];

  *(a1 + 320) = 0;
  *(a1 + 664) = 0;
  [*(a1 + 10104) stopGeoFence];

  *(a1 + 10104) = 0;
  *(a1 + 680) = 0;
  [*(a1 + 10488) unregisterForWeatherUpdates:*(a1 + 32)];

  *(a1 + 10488) = 0;
  [*(a1 + 10496) unregisterForUpdates:*(a1 + 32)];

  *(a1 + 10496) = 0;
  if (sub_100008074())
  {
    [*(*(a1 + 10504) + 16) unregister:*(*(a1 + 10504) + 8) forNotification:1];
  }

  [*(a1 + 10512) stopMonitoringVisitsForClient:*(a1 + 32)];

  *(a1 + 10512) = 0;
  *(a1 + 10168) = 0;
  v2 = sub_1001C9C28();
  sub_10000EC00(__p, "CLMotionStateMediator");
  sub_1002572F8(v2, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(a1 + 10480);
  *(a1 + 10480) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 10208);
  if (v4)
  {
    *(a1 + 10208) = 0;
    (*(*v4 + 8))(v4);
  }

  sub_10068E5C4(a1);
  (*(*a1 + 16))(a1);
  v5 = *(a1 + 10504);
  *(a1 + 10504) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 10480);
  *(a1 + 10480) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_100B55830(a1 + 10288);
  v7 = *(a1 + 10272);
  *(a1 + 10272) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 10256);
  *(a1 + 10256) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 10248);
  *(a1 + 10248) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 10240);
  *(a1 + 10240) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 10232);
  *(a1 + 10232) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 10224);
  *(a1 + 10224) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 10216);
  *(a1 + 10216) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 10208);
  *(a1 + 10208) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 10200);
  *(a1 + 10200) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 10192);
  *(a1 + 10192) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 10184);
  *(a1 + 10184) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 10176);
  *(a1 + 10176) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  sub_1006926C0((a1 + 10160), 0);
  v19 = *(a1 + 10152);
  *(a1 + 10152) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  sub_100666704((a1 + 8872));
  if (*(a1 + 8871) < 0)
  {
    operator delete(*(a1 + 8848));
  }

  sub_100106180((a1 + 8784));
  if (*(a1 + 8783) < 0)
  {
    operator delete(*(a1 + 8760));
  }

  sub_100693260((a1 + 8736), 0);
  sub_100DA58A4(a1 + 8400);
  v20 = *(a1 + 8392);
  *(a1 + 8392) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  sub_10068DE74((a1 + 8384));
  sub_10026F190(a1 + 8328);
  sub_10026F190(a1 + 8272);
  v21 = *(a1 + 8264);
  *(a1 + 8264) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_10068FBA8((a1 + 8256), 0);
  sub_100697D94((a1 + 6648));
  v22 = *(a1 + 6640);
  if (v22)
  {
    sub_100008080(v22);
  }

  sub_1006A28D0((a1 + 4136));
  sub_100698174((a1 + 704));
  v23 = *(a1 + 672);
  *(a1 + 672) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  if (*(a1 + 583) < 0)
  {
    operator delete(*(a1 + 560));
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  sub_1001FB750((a1 + 280));
  return sub_10068DEC4(a1);
}

void sub_10068E5C4(uint64_t a1)
{
  v2 = *(a1 + 8928);
  if (v2)
  {
    [v2 unregisterForData:*(a1 + 32)];

    *(a1 + 8928) = 0;
  }

  v3 = *(a1 + 8936);
  if (v3)
  {
    [v3 unregisterForData:*(a1 + 32)];

    *(a1 + 8936) = 0;
  }
}

void sub_10068E630(uint64_t a1)
{
  sub_10068DF48(a1);

  operator delete();
}

void sub_10068E668(uint64_t a1)
{
  sub_10068DF48(a1 - 112);

  operator delete();
}

void sub_10068E6A4(uint64_t a1)
{
  sub_10068DF48(a1 - 120);

  operator delete();
}

void sub_10068E6E0(uint64_t a1)
{
  (*(*a1 + 216))(a1);
  v2 = sub_100023ED4(0);
  sub_10095D9F8(v2, 0, *(a1 + 600));
  v3 = sub_100023ED4(0);
  sub_10095D9F8(v3, 9, *(a1 + 616));
  sub_10001A3E8();
  if ((sub_100023B30() & 0x2000000000) != 0)
  {
    v4 = sub_100023ED4(0);
    sub_10095D9F8(v4, 20, *(a1 + 624));
  }

  v5 = sub_100023ED4(0);
  sub_10095D9F8(v5, 33, *(a1 + 640));
  [*(a1 + 648) unregisterClient:*(a1 + 656) forNotification:3];

  [*(a1 + 656) setValid:0];
  if (sub_100023ED4(0))
  {
    v6 = sub_100023ED4(0);
    sub_10095D9F8(v6, 47, *(a1 + 10152));
  }

  *(a1 + 108) = 1;
}

uint64_t sub_10068E850(uint64_t a1, _DWORD *a2)
{
  if (*a2 <= 5u)
  {
    v2 = (*(**(a1 + 6680) + 40))(*(a1 + 6680));
    sub_10069B530(v2);
  }

  return 1;
}

uint64_t sub_10068E8A4(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 2)
  {
    v8 = v2;
    v9 = v3;
    v7 = 2;
    if (!sub_10000608C(a1, &v7, 1))
    {
      v6 = 2;
      (*(*a1 + 120))(a1, &v6);
    }
  }

  return 1;
}

void sub_10068E928(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 0x2000;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(ALActivityLog);
  [(ALActivityLog *)v6 setTimestamp:*(a2 + 24)];
  [(ALActivityLog *)v6 setWorkoutEvent:objc_alloc_init(ALCMWorkoutEvent)];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setWorkoutEvent:*(a2 + 16)];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setWorkoutType:[CMWorkout CLMotionActivityTypeFromCMWorkoutType:*(a2 + 96)]];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setLocationType:*(a2 + 104)];
  [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setStartTime:*a2];
  if (*(a2 + 16) == 1)
  {
    [(ALCMWorkoutEvent *)[(ALActivityLog *)v6 workoutEvent] setEndTime:*(a2 + 8)];
  }

  -[ALCMWorkoutEvent setSessionId:](-[ALActivityLog workoutEvent](v6, "workoutEvent"), "setSessionId:", [[NSData alloc] initWithBytes:a2 + 64 length:16]);
  [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
  objc_autoreleasePoolPop(v5);
  if (*(a2 + 16) == 1)
  {
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v7 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a2 + 8);
      *buf = 134217984;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Motion State Mediator is sending a stop event at %f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190160C();
    }

    *(v4 + 769) = *(v4 + 752);
    *(v4 + 768) = *(v4 + 753);
    if (*(a1 + 8984))
    {
      v9 = *(a2 + 24) - *(a1 + 9040);
    }

    else
    {
      v9 = 0.0;
    }

    v10 = llround(*(v4 + 1508) * 10.0);
    *(a1 + 8976) = v9;
    v11 = llround(*(v4 + 1516) * 10.0);
    v12 = sub_1000DA93C();
    v13 = *(v4 + 784);
    v59[0] = *(v4 + 768);
    v59[1] = v13;
    v60 = *(v4 + 800);
    v14 = *(a1 + 9224);
    v71 = *(a1 + 9208);
    v72 = v14;
    v73 = *(a1 + 9240);
    v74 = *(a1 + 9256);
    v15 = *(a1 + 9160);
    v67 = *(a1 + 9144);
    v68 = v15;
    v16 = *(a1 + 9192);
    v69 = *(a1 + 9176);
    v70 = v16;
    v17 = *(a1 + 9096);
    v63 = *(a1 + 9080);
    v64 = v17;
    v18 = *(a1 + 9128);
    v65 = *(a1 + 9112);
    v66 = v18;
    v19 = *(a1 + 9064);
    *buf = *(a1 + 9048);
    v62 = v19;
    v20 = *(a1 + 9440);
    v81[10] = *(a1 + 9424);
    v81[11] = v20;
    v81[12] = *(a1 + 9456);
    v82 = *(a1 + 9472);
    v21 = *(a1 + 9376);
    v81[6] = *(a1 + 9360);
    v81[7] = v21;
    v22 = *(a1 + 9408);
    v81[8] = *(a1 + 9392);
    v81[9] = v22;
    v23 = *(a1 + 9312);
    v81[2] = *(a1 + 9296);
    v81[3] = v23;
    v24 = *(a1 + 9344);
    v81[4] = *(a1 + 9328);
    v81[5] = v24;
    v25 = *(a1 + 9280);
    v81[0] = *(a1 + 9264);
    v81[1] = v25;
    sub_101242D60(v12, v59, buf, v81);
    v26 = sub_1000DA93C();
    sub_101242F6C(v26, v10, v11);
    *(v4 + 768) = 257;
    *(a1 + 8962) = 0u;
    *(a1 + 8978) = 0u;
    *(a1 + 8994) = 0;
    *(a1 + 9696) = 0xFFFF;
    *(v4 + 1508) = 0u;
    *(v4 + 1524) = xmmword_101C75BF0;
    __asm { FMOV            V1.2D, #-1.0 }

    *(v4 + 1540) = _Q1;
    *(v4 + 1556) = _Q1;
    *(v4 + 1572) = _Q1;
    *(a1 + 9780) = 0;
    *(a1 + 9784) = 0xBFF0000000000000;
    *(a1 + 9792) = 0u;
    *(a1 + 9808) = 0;
    *(v4 + 1620) = 0xBFF0000000000000;
    *(a1 + 9820) = 0x7FFFFFFF;
    *(a1 + 9824) = 0u;
    *(a1 + 9848) = 0;
    *(a1 + 9840) = 0;
    v32 = *(a2 + 176);
    v71 = *(a2 + 160);
    v72 = v32;
    v73 = *(a2 + 192);
    v74 = *(a2 + 208);
    v33 = *(a2 + 112);
    v67 = *(a2 + 96);
    v68 = v33;
    v34 = *(a2 + 144);
    v69 = *(a2 + 128);
    v70 = v34;
    v35 = *(a2 + 48);
    v63 = *(a2 + 32);
    v64 = v35;
    v36 = *(a2 + 80);
    v65 = *(a2 + 64);
    v66 = v36;
    v37 = *(a2 + 16);
    *buf = *a2;
    v62 = v37;
    sub_100DA5BC0((a1 + 8400), buf);
  }

  v38 = sub_1000DA93C();
  v39 = *(a2 + 176);
  v71 = *(a2 + 160);
  v72 = v39;
  v73 = *(a2 + 192);
  v74 = *(a2 + 208);
  v40 = *(a2 + 112);
  v67 = *(a2 + 96);
  v68 = v40;
  v41 = *(a2 + 144);
  v69 = *(a2 + 128);
  v70 = v41;
  v42 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v42;
  v43 = *(a2 + 80);
  v65 = *(a2 + 64);
  v66 = v43;
  v44 = *(a2 + 16);
  *buf = *a2;
  v62 = v44;
  sub_101242594(v38, buf);
  v45 = sub_1000A23E0();
  sub_100E02850(v45, a2, a1 + 8744, *(v4 + 728));
  v46 = *(a1 + 8392);
  if (v46)
  {
    sub_100C1C1D8(v46, a2);
  }

  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v47 = *(a2 + 176);
  v71 = *(a2 + 160);
  v72 = v47;
  v73 = *(a2 + 192);
  v48 = *(a2 + 208);
  v80 = 0;
  v74 = v48;
  v49 = *(a2 + 112);
  v67 = *(a2 + 96);
  v68 = v49;
  v50 = *(a2 + 144);
  v69 = *(a2 + 128);
  v70 = v50;
  v51 = *(a2 + 48);
  v63 = *(a2 + 32);
  v64 = v51;
  v52 = *(a2 + 80);
  v65 = *(a2 + 64);
  v66 = v52;
  v53 = *(a2 + 16);
  *buf = *a2;
  v62 = v53;
  LODWORD(v81[0]) = 2;
  (*(*a1 + 152))(a1, v81, buf, 1, 0xFFFFFFFFLL, 0);
  v54 = *(a2 + 16);
  if (v54 == 3)
  {
    v55 = sub_100023ED4(0);
    v56 = 3;
    goto LABEL_20;
  }

  if (v54 == 2)
  {
    v55 = sub_100023ED4(0);
    v56 = 2;
LABEL_20:
    LOBYTE(v81[0]) = v56;
    (*(*(v55 + 96) + 48))();
    v54 = *(a2 + 16);
  }

  if (v54 == 6 || v54 == 1)
  {
    v57 = sub_100023ED4(0);
    (*(*(v57 + 96) + 16))();
  }

  if (sub_100EB1480(a2) == 1)
  {
    *(a1 + 8924) = 1;
    sub_10068EFA8(a1);
  }

  else if (sub_100EB1480(a2) == 2)
  {
    *(a1 + 8924) = 2;
    sub_10068E5C4(a1);
  }

  if (&_AudioServicesPlaySystemSound && *(a1 + 462) == 1)
  {
    if (v62 == 2)
    {
      v58 = &stru_102468920;
      goto LABEL_34;
    }

    if (v62 == 3)
    {
      v58 = &stru_102468940;
LABEL_34:
      dispatch_async(&_dispatch_main_q, v58);
    }
  }

  sub_10068F0F8(a1, a2);
}