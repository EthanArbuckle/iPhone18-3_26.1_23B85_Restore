void *sub_10016D640(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10016D750(&v11, a2, v7, v6);
}

_OWORD *sub_10016D6A4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v4 = a4;
  v9 = a4;
  v8 = a4;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v9;
  if (a2 != a3)
  {
    do
    {
      *v4++ = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      a2 += 16;
    }

    while (a2 != a3);
    v9 = v4;
  }

  v7 = 1;
  sub_10016D718(v6);
  return v4;
}

uint64_t sub_10016D718(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100015C90(a1);
  }

  return a1;
}

void *sub_10016D750(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        sub_10000E984(v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

__int128 *sub_10016D7B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_10000E984(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *sub_10016D820(void *a1, char *__src, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 <= (v9 - v10) >> 4)
  {
    v16 = (v10 - __src) >> 4;
    if (v16 >= a5)
    {
      v20 = &__src[16 * a5];
      v21 = &v10[-a5];
      v22 = a1[1];
      while (v21 < v10)
      {
        v23 = *v21++;
        *v22++ = v23;
      }

      a1[1] = v22;
      if (v10 != v20)
      {
        memmove(&__src[16 * a5], __src, v10 - v20);
      }

      v24 = &v7[a5];
      v25 = __src;
      do
      {
        v26 = *v7++;
        *v25++ = v26;
      }

      while (v7 != v24);
    }

    else
    {
      v17 = (a3 + v10 - __src);
      v18 = a1[1];
      if (v17 == a4)
      {
        v19 = a1[1];
      }

      else
      {
        v36 = (a3 + v10 - __src);
        v19 = a1[1];
        do
        {
          v37 = *v36++;
          *v19 = v37;
          v19 += 16;
          ++v18;
        }

        while (v36 != a4);
      }

      a1[1] = v18;
      if (v16 >= 1)
      {
        v38 = &__src[16 * a5];
        v39 = &v18[-a5];
        v40 = v18;
        while (v39 < v10)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v19 != v38)
        {
          memmove(&__src[16 * a5], __src, v18 - v38);
        }

        if (v10 != __src)
        {
          v42 = __src;
          do
          {
            v43 = *v7++;
            *v42++ = v43;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v10 - *a1) >> 4);
  if (v12 >> 60)
  {
    sub_100015B70();
  }

  v13 = __src - v11;
  v14 = v9 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_100083D14(a1, v15);
  }

  v27 = 16 * (v13 >> 4);
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    v30 = *v7++;
    *v29++ = v30;
    v28 -= 16;
  }

  while (v28);
  memcpy((v27 + 16 * a5), __src, a1[1] - __src);
  v31 = *a1;
  v32 = v27 + 16 * a5 + a1[1] - __src;
  a1[1] = __src;
  v33 = (__src - v31);
  v34 = (v27 - (__src - v31));
  memcpy(v34, v31, v33);
  v35 = *a1;
  *a1 = v34;
  a1[1] = v32;
  a1[2] = 0;
  if (v35)
  {
    operator delete(v35);
  }

  return v27;
}

void sub_10016DA40(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_100084050(a1, i))
  {
    i -= 168;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_10016DA94(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 20) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *a5;
  *(a1 + 40) = *(a5 + 16);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a1 + 48) = 0;
  v7 = a1 + 48;
  *(v7 + 56) = 0;
  if (*(a6 + 56) == 1)
  {
    sub_10009386C(v7, a6);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_10016DB10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007AC90(va);
  _Unwind_Resume(a1);
}

void sub_10016DB28(uint64_t *a1)
{
  if (*a1)
  {
    sub_10016DA40(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_10016DB68(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016DE00(v1);

  return std::ios::~ios();
}

uint64_t sub_10016DBB4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016DE00(v1);

  return std::ios::~ios();
}

void sub_10016DC14(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016DE00(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016DC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016DCB8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10016DD24(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016DE00(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016DD88(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016DE00(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016DE00(uint64_t a1)
{
  *a1 = off_100220F18;
  sub_10016DF6C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10016DF6C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_10016E11C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10016E0B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016E0E4(uint64_t a1)
{
  sub_10016DE00(a1);

  operator delete();
}

int *sub_10016E11C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 610;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 610;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016E394(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016E3E0(uint64_t a1)
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

uint64_t sub_10016E4D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100221028;
  a2[1] = v2;
  return result;
}

uint64_t sub_10016E55C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016E61C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220A78;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10016E6CC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016E6E4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220C98;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10016E794(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10016E7AC(uint64_t a1)
{
  v2 = atomic_load((a1 + 16));
  if (!v2)
  {
    v2 = *(a1 + 20);
  }

  io_rings_return_status(*(*a1 + 56), *(a1 + 8), v2, 0);
  v3 = (a1 + 24);
  sub_10007AC90(&v3);
  operator delete();
}

void sub_10016E820(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10016E858(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = atomic_load((v1 + 16));
  if (!v2)
  {
    v2 = *(v1 + 20);
  }

  io_rings_return_status(*(*v1 + 56), *(v1 + 8), v2, 0);
  v3 = (v1 + 24);
  sub_10007AC90(&v3);
  operator delete();
}

uint64_t sub_10016E8CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10016E998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100221108;
  sub_10016EADC(a1 + 3, a2, a3, a4, *a5);
}

void sub_10016EA18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100221108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10016EA6C(uint64_t a1)
{
  v5 = (a1 + 520);
  sub_100015CD4(&v5);
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  sub_10003172C(a1 + 272);
  sub_100033424(a1 + 240);
  v3 = *(a1 + 200);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_100030E70(a1 + 24);
}

void sub_10016EADC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v8;
  v10 = *(a2 + 32);
  sub_100030254(&v11, a2 + 40);
  sub_10016ED58(a1, v9, a3, a5);
}

void sub_10016ECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  a9 = (v9 + 496);
  sub_100015CD4(&a9);
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 480) = v12;
    operator delete(v12);
  }

  sub_10016F2F4(v9);
  _Unwind_Resume(a1);
}

void sub_10016ED58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10016F33C(a2, v30);
  if (v32 == 3)
  {
    sub_1001460D4(v22, a4 == 0, v33, v35);
    sub_100146188(v28);
    v29 = 2;
    sub_100146248(v22);
  }

  else if (v32 == 2)
  {
    sub_100145D00(v22, a4 == 0, v33, v34, v35);
    sub_100145E3C(v28);
    v29 = 1;
    v22[0] = off_10021B3A0;
    sub_100030D98(&v25);
    v22[0] = off_1001F8FA0;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    sub_100146500(&v20, v34);
    sub_100145774(v22, a4 == 0, v33, &v20, v35);
    sub_1001458C8(v28);
    v29 = 0;
    v22[0] = off_10021B378;
    sub_100030CF8(v26);
    v8 = v25;
    v25 = 0;
    if (v8)
    {
      operator delete[]();
    }

    v22[0] = off_1001F8FA0;
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    v9 = v20;
    v20 = 0;
    if (v9)
    {
      operator delete[]();
    }
  }

  v10 = *(sub_10016F290(a2) + 22);
  sub_100030DC4(a1, v28);
  a1[19] = v10;
  sub_100030E70(v28);
  if (v31)
  {
    sub_10000E984(v31);
  }

  sub_100192AE0(a1 + 20);
  a1[20] = off_1001FC8A8;
  a1[24] = 0;
  a1[25] = 0;
  a1[23] = -1;
  v11 = sub_10016F290(a2)[12];
  a1[26] = v11 - sub_10016F290(a2)[3];
  a1[27] = off_100221158;
  a1[28] = a1;
  a1[30] = a1 + 27;
  v12 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v12;
  v18 = *(a2 + 32);
  sub_100030254(&v19, a2 + 40);
  sub_100033298(v27, (a1 + 27));
  sub_100033298(v22, v27);
  sub_10016F5EC(v28, v17, v22);
  sub_100033424(v22);
  v13 = *(a3 + 16);
  v14[0] = *a3;
  v14[1] = v13;
  v15 = *(a3 + 32);
  sub_100030254(&v16, a3 + 40);
  sub_100033298(v21, (a1 + 27));
  sub_100033298(v30, v21);
  sub_10016F5EC(v22, v14, v30);
  sub_100033424(v30);
  sub_10016F654((a1 + 31), a1, (a1 + 20), v28, v22, a4, 0);
}

void sub_10016F14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_100030C64(&a54);
  if (a49)
  {
    operator delete[]();
  }

  v56 = *(v54 - 176);
  if (v56)
  {
    sub_10000E984(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_10016F290(uint64_t **a1)
{
  sub_10016F33C(a1, &v3);
  sub_10002F0BC((a1 + 5), &v3);
  if (v4)
  {
    sub_10000E984(v4);
  }

  return a1 + 5;
}

void sub_10016F2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F2F4(uint64_t a1)
{
  sub_10003172C(a1 + 248);
  sub_100033424(a1 + 216);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100030E70(a1);
  return a1;
}

void sub_10016F33C(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  if (v5 >= a1[2])
  {
    v7 = a1[2];
  }

  else
  {
    v7 = (*a1)[1];
  }

  v8 = *(sub_100195B38() + 1);
  v13 = v6;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  v16 = v4;
  v17 = v5;
  v19 = 0;
  v20 = 0;
  v18 = 1 << *(a1 + 8);
  sub_100030254(a2, &v13);
  if (v14)
  {
    sub_10000E984(v14);
  }

  v9 = a1[3];
  if (v9)
  {
    if (*(a2 + 104) == 1)
    {
      v10 = *v9;
      v11 = *(v9 + 16);
      v12 = *(v9 + 32);
      *(a2 + 96) = *(v9 + 48);
      *(a2 + 64) = v11;
      *(a2 + 80) = v12;
      *(a2 + 48) = v10;
    }

    else
    {
      sub_10009386C(a2 + 48, v9);
      *(a2 + 104) = 1;
    }
  }
}

void sub_10016F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_10000E984(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F448(uint64_t a1)
{
  sub_100033424(a1 + 152);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

uint64_t sub_10016F4F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100221158;
  a2[1] = v2;
  return result;
}

void sub_10016F51C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  sub_100030254(&v5, a2);
  v7 += *(v4 + 208);
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100030254(a3, &v5);
  if (v6)
  {
    sub_10000E984(v6);
  }
}

void sub_10016F588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10016F5A0(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1002211B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10016F5EC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v5;
  *(a1 + 16) = v6;
  sub_100030254(a1 + 40, a2 + 40);
  sub_100033298(a1 + 152, a3);
  return a1;
}

void sub_10016F63C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016F654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = vm_page_size;
  v15 = *(a2 + 152);
  sub_100148204(a6, v20);
  v16 = sub_10016FB98(a4, a5, v14, v15, v20);
  sub_100147DC0(a1, v16);
  sub_1000320D4(v20);
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
  *(a1 + 80) = v8;
  *(a1 + 88) = a7;
  v17 = *(a4 + 16);
  v26[0] = *a4;
  v26[1] = v17;
  v27 = *(a4 + 32);
  sub_100030254(&v28, a4 + 40);
  sub_100033298(v30, a4 + 152);
  v18 = *(a5 + 16);
  v21[0] = *a5;
  v21[1] = v18;
  v22 = *(a5 + 32);
  sub_100030254(&v23, a5 + 40);
  sub_100033298(v25, a5 + 152);
  v19 = sub_10016FF04(v26, v21);
  sub_100033424(v25);
  if (v24)
  {
    sub_10000E984(v24);
  }

  sub_100033424(v30);
  if (v29)
  {
    sub_10000E984(v29);
  }

  *(a1 + 96) = v19;
  is_mul_ok(3 * v19, 0x18uLL);
  operator new[]();
}

void sub_10016FA90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100032234(v12 + 32);
  sub_1000320D4(va);
  sub_1000323C4(v11 + 25);
  sub_100032FF4(v11 + 22);
  sub_100031E48(v11 + 19);
  sub_1000330A8(v11 + 16);
  sub_100031E9C(v11 + 13);
  sub_100015888(v11, 0);
  sub_10001590C((v11 + 1));
  _Unwind_Resume(a1);
}

void sub_10016FB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000320D4(va);
  JUMPOUT(0x10016FB80);
}

uint64_t sub_10016FB98(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 0;
  }

  sub_1001703CC(a1);
  sub_100030464(v28, v42);
  if (v43)
  {
    sub_10000E984(v43);
  }

  v11 = v30 / a3 * a3;
  sub_100170460(v42, a1, a2);
  sub_1001702A4(v42, &v35);
  sub_100170310(v42, v31);
  v10 = 0;
  v12 = v35;
  while (v12 != v31[0] || v36 != v31[1] || v38 != v31[3] || v39 != v32)
  {
    sub_1001703CC(&v35);
    sub_100030254(v22, v26);
    v13 = *(a5 + 24);
    if (!v13)
    {
      sub_10001583C();
    }

    if ((*(*v13 + 48))(v13, v22))
    {
      v14 = v25 - v11 + v24;
      if (v14 % a3)
      {
        v15 = a3 - v14 % a3;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15 + v14;
      v10 += v16;
      v11 += v16;
    }

    else
    {
      v17 = a3;
      if (!(v25 % a4))
      {
        if (!(v24 % a4))
        {
          v11 = v24 + v25;
          goto LABEL_26;
        }

        v17 = 0;
      }

      v18 = v17 + v10;
      if ((v24 + v25) % a4)
      {
        v19 = a3;
      }

      else
      {
        v19 = 0;
      }

      v10 = v18 + v19;
      v11 = (a4 - 1 + v24 + v25) / a4 * a4;
    }

LABEL_26:
    if (v23)
    {
      sub_10000E984(v23);
    }

    if (v27)
    {
      sub_10000E984(v27);
    }

    v20 = *(v35 + 8);
    if (v20 >= v37)
    {
      v20 = v37;
    }

    v37 -= v20;
    v12 = v35 + 16;
    v36 += v20;
    v35 += 16;
  }

  sub_100033424(&v34);
  if (v33)
  {
    sub_10000E984(v33);
  }

  sub_100033424(&v41);
  if (v40)
  {
    sub_10000E984(v40);
  }

  sub_100033424(&v47);
  if (v46)
  {
    sub_10000E984(v46);
  }

  sub_100033424(&v45);
  if (v44)
  {
    sub_10000E984(v44);
  }

  if (v29)
  {
    sub_10000E984(v29);
  }

  return v10;
}

void sub_10016FE90(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    sub_10000E984(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10016FF04(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v20 = *a1;
  v21 = v4;
  v22 = *(a1 + 8);
  sub_100030254(&v23, a1 + 40);
  sub_100033298(v25, a1 + 152);
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 8);
  sub_100030254(&v17, a2 + 40);
  sub_100033298(v19, a2 + 152);
  v5 = *(&v20 + 1);
  if (v20 == v14 && __PAIR128__(*(&v21 + 1), *(&v20 + 1)) == __PAIR128__(*(&v15 + 1), *(&v14 + 1)) && v22 == v16)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = v21;
    v8 = v20 + 16;
    while (1)
    {
      v9 = v8;
      ++v6;
      v10 = *(v8 - 8);
      if (v10 >= v7)
      {
        v10 = v7;
      }

      v5 += v10;
      v7 -= v10;
      *&v21 = v7;
      v8 = v9 + 16;
      if (v9 == v14)
      {
        v11 = v5 == *(&v14 + 1) && *(&v21 + 1) == *(&v15 + 1);
        if (v11 && v22 == v16)
        {
          break;
        }
      }
    }

    *&v20 = v9;
    *(&v20 + 1) = v5;
  }

  sub_100033424(v19);
  if (v18)
  {
    sub_10000E984(v18);
  }

  sub_100033424(v25);
  if (v24)
  {
    sub_10000E984(v24);
  }

  return v6;
}

void sub_100170078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a15)
  {
    sub_10000E984(a15);
  }

  sub_10016F448(&a33);
  _Unwind_Resume(a1);
}

void sub_1001700BC(void *a1, __int128 *a2, __int128 *a3)
{
  sub_100170460(v23, a2, a3);
  sub_1001702A4(v23, &v16);
  sub_100170310(v23, v12);
  v4 = v16;
  while (v4 != v12[0] || v17 != v12[1] || v19 != v12[3] || v20 != v13)
  {
    sub_1001703CC(&v16);
    sub_100030254(&v7, v10);
    v5 = sub_100147EF8(a1, &v7, 0);
    if (v5 != v9)
    {
      sub_100148248(a1, &v7, v5, 0);
    }

    if (v8)
    {
      sub_10000E984(v8);
    }

    if (v11)
    {
      sub_10000E984(v11);
    }

    v6 = *(v16 + 8);
    if (v6 >= v18)
    {
      v6 = v18;
    }

    v17 += v6;
    v18 -= v6;
    v4 = v16 + 16;
    v16 += 16;
  }

  sub_100033424(&v15);
  if (v14)
  {
    sub_10000E984(v14);
  }

  sub_100033424(&v22);
  if (v21)
  {
    sub_10000E984(v21);
  }

  sub_100033424(&v27);
  if (v26)
  {
    sub_10000E984(v26);
  }

  sub_100033424(&v25);
  if (v24)
  {
    sub_10000E984(v24);
  }
}

void sub_100170258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_10016F448(&a38);
  sub_10016F448(&a61);
  sub_100170380(&STACK[0x258]);
  _Unwind_Resume(a1);
}

uint64_t sub_1001702A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 32);
  sub_100030254(a2 + 40, a1 + 40);
  return sub_100033298(a2 + 152, a1 + 152);
}

void sub_1001702F0(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100001A14(a1);
}

uint64_t sub_100170310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 200);
  *a2 = *(a1 + 184);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 216);
  sub_100030254(a2 + 40, a1 + 224);
  return sub_100033298(a2 + 152, a1 + 336);
}

void sub_100170360(void *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100001A14(a1);
}

uint64_t sub_100170380(uint64_t a1)
{
  sub_100033424(a1 + 336);
  v2 = *(a1 + 232);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_100033424(a1 + 152);
  v3 = *(a1 + 48);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

void sub_1001703CC(uint64_t a1)
{
  sub_10016F33C(a1, &v3);
  v2 = *(a1 + 176);
  if (!v2)
  {
    sub_10001583C();
  }

  (*(*v2 + 48))(v2, &v3);
  if (v4)
  {
    sub_10000E984(v4);
  }
}

void sub_100170448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100170460(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v6 = *a2;
  v7 = a2[1];
  *(a1 + 32) = *(a2 + 8);
  *a1 = v6;
  *(a1 + 16) = v7;
  sub_100030254(a1 + 40, a2 + 40);
  sub_100033298(a1 + 152, a2 + 152);
  v8 = *a3;
  v9 = a3[1];
  *(a1 + 216) = *(a3 + 8);
  *(a1 + 200) = v9;
  *(a1 + 184) = v8;
  sub_100030254(a1 + 224, a3 + 40);
  sub_100033298(a1 + 336, a3 + 152);
  return a1;
}

void sub_1001704E8(void *a1)
{
  v3 = *(v1 + 232);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_100001A14(a1);
}

uint64_t sub_1001705A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_1001705AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100170680(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_1001706BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100170708(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    sub_10012091C(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1001204F4(a1, &v10);
}

void sub_100170890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001708DC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220F18;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017098C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001709A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v10 = "int Ram::_write(const sg_entry &)";
    *(&v10 + 1) = 15;
    v11 = 16;
    sub_100170AAC(v12, &v10);
    sub_100001FE8(v13, "Trying to write @ ", 18);
    v8 = *(a2 + 24);
    std::ostream::operator<<();
    sub_100001FE8(v13, " ", 1);
    v9 = *(a2 + 16);
    std::ostream::operator<<();
    sub_100001FE8(v13, "bytes, which is after end of ramdisk", 36);
    sub_100170BD4(v12);
    return 4294967274;
  }

  else
  {
    memcpy((*(a1 + 64) + v4), *a2, v3);
    return *(a2 + 16);
  }
}

void sub_100170A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100170BD4(va);
  _Unwind_Resume(a1);
}

void *sub_100170AAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100171EBC(a1, a2);
  *a1 = off_1002213C8;
  a1[45] = &off_1002214C8;
  a1[46] = &off_1002214F0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002213C8;
  a1[45] = off_100221450;
  a1[46] = off_100221478;
  return a1;
}

void sub_100170BB0(_Unwind_Exception *a1)
{
  sub_1001711C8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100170BD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001711C8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100170C18(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = v4 + v3;
  if (__CFADD__(v4, v3))
  {
    v6 = -1;
  }

  else
  {
    v6 = v4 + v3;
  }

  if (__CFADD__(v4, v3))
  {
    v5 = v6;
  }

  if (v5 > *(a1 + 72))
  {
    *&v10 = "int Ram::_read(const sg_entry &)";
    *(&v10 + 1) = 14;
    v11 = 16;
    sub_100170D24(v12, &v10);
    sub_100001FE8(v13, "Trying to read @ ", 17);
    v8 = *(a2 + 24);
    std::ostream::operator<<();
    sub_100001FE8(v13, " ", 1);
    v9 = *(a2 + 16);
    std::ostream::operator<<();
    sub_100001FE8(v13, "bytes, which is after end of ramdisk", 36);
    sub_100170E4C(v12);
    return 4294967274;
  }

  else
  {
    memcpy(*a2, (*(a1 + 64) + v4), v3);
    return *(a2 + 16);
  }
}

void sub_100170D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100170E4C(va);
  _Unwind_Resume(a1);
}

void *sub_100170D24(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100171F84(a1, a2);
  *a1 = off_1002215E8;
  a1[45] = &off_1002216E8;
  a1[46] = &off_100221710;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002215E8;
  a1[45] = off_100221670;
  a1[46] = off_100221698;
  return a1;
}

void sub_100170E28(_Unwind_Exception *a1)
{
  sub_100171960(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100170E4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100171960(a1);
  std::ios::~ios();
  return a1;
}

void sub_100170E94(void *a1)
{
  sub_100171E60(a1);

  operator delete();
}

uint64_t sub_100170EEC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 72) < a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 72) = a2;
  return result;
}

uint64_t sub_100170F30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001711C8(v1);

  return std::ios::~ios();
}

uint64_t sub_100170F7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001711C8(v1);

  return std::ios::~ios();
}

void sub_100170FDC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001711C8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100171044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100171080(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001710EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001711C8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100171150(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001711C8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001711C8(uint64_t a1)
{
  *a1 = off_100221560;
  sub_100171334(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100171334(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_1001714E4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100171480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001714AC(uint64_t a1)
{
  sub_1001711C8(a1);

  operator delete();
}

int *sub_1001714E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 30;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 30;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001716C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100171960(v1);

  return std::ios::~ios();
}

uint64_t sub_100171714(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100171960(v1);

  return std::ios::~ios();
}

void sub_100171774(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100171960(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001717DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100171818(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100171884(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100171960(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001718E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100171960(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100171960(uint64_t a1)
{
  *a1 = off_100221780;
  sub_100171ACC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100171ACC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = a1 + 96;
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_10000EC78(v2, __p);
        sub_100171C7C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*(a1 + 96) - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100171C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100171C44(uint64_t a1)
{
  sub_100171960(a1);

  operator delete();
}

int *sub_100171C7C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 42;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 42;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100171E60(void *a1)
{
  *a1 = off_1002212D8;
  sub_100015888(a1 + 3, 0);
  sub_10001590C((a1 + 4));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100171EBC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221560;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100171F6C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100171F84(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221780;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_100172034(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100172054@<X0>(const char **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_100028820(v17);
  v4 = strlen(a1[3]);
  v5 = sub_100001FE8(&v18, a1[3], v4);
  v6 = sub_100001FE8(v5, ": ", 2);
  v7 = strlen(a1[1]);
  v8 = sub_100001FE8(v6, a1[1], v7);
  v9 = sub_100001FE8(v8, " - ", 3);
  v10 = a1[2];
  v11 = strlen(v10);
  sub_100001FE8(v9, v10, v11);
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_14:
  a2[v12] = 0;
  v18 = v15;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_100174DC8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100174DE0(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = a1[4];
    v9 = [v7 filePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 URLByAppendingPathComponent:v10];

    v12 = a1[5];
    v13 = [v7 filePath];
    v14 = *(a1[6] + 8);
    obj = *(v14 + 40);
    LOBYTE(v12) = [v12 copyItemAtURL:v13 toURL:v11 error:&obj];
    objc_storeStrong((v14 + 40), obj);

    if (v12)
    {
      [*(*(a1[7] + 8) + 40) addObject:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    *a4 = 1;
    v15 = *(a1[6] + 8);
    v18 = *(v15 + 40);
    [DIError failWithPOSIXCode:45 verboseInfo:@"Clone of plugin nodes is not supported." error:&v18];
    v16 = v18;
    v7 = *(v15 + 40);
    *(v15 + 40) = v16;
  }
}

void sub_100175448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100175460(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = *(a1[6] + 8);
  obj = *(v7 + 40);
  v8 = [DiskImageGraphNode GraphNodeWithDictionary:a2 workDir:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    v9 = a1[5];
    v10 = [v8 UUID];
    v11 = [v10 UUIDString];
    [v9 setObject:v8 forKey:v11];
  }

  else
  {
    *a4 = 1;
  }
}

void sub_100175630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100175648(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v15 = a3;
  v6 = [v15 parentUUID];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v15 parentUUID];
    v9 = [v8 UUIDString];
    v10 = [v7 objectForKey:v9];

    if (v10)
    {
      [v15 setParent:v10];
      v11 = [v15 parent];
      v12 = [v11 mutableChildren];
      [v12 addObject:v15];
    }

    else
    {
      *a4 = 1;
      v13 = [DIError errorWithPOSIXCode:22 verboseInfo:@"Missing parent node in graph."];
      v14 = *(*(a1 + 40) + 8);
      v11 = *(v14 + 40);
      *(v14 + 40) = v13;
    }
  }
}

void sub_100175B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100175B30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 tag];
  v5 = [v4 isEqualToString:*(*(*(a1 + 32) + 8) + 40)];

  return v5;
}

uint64_t sub_100176894(void *a1, size_t a2)
{
  result = CCRandomGenerateBytes(a1, a2);
  if (result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v4);
    sub_100001FE8(v4, "random generation failed with err code ", 39);
    std::ostream::operator<<();
    sub_10000EBDC(exception, v4, 0x9Au);
  }

  return result;
}

void sub_100176934(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100176968(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  LODWORD(v9) = 0;
  sub_1000A56E0("public_key_crypto_algo_mode", 0, &v9, 1);
  bzero((a1 + 48), 0x204uLL);
  LODWORD(v9) = bswap32(*a2);
  sub_100177738(a1, &v9);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  LODWORD(v9) = 42;
  sub_1000A56E0("public_key_crypto_algo", v5, &v9, 1);
  *(a1 + 36) = v5;
  v6 = bswap32(*(a2 + 40));
  v9 = 0x800000010000000ALL;
  sub_1000A56E0("public_key_padding_algo", v6, &v9, 2);
  *(a1 + 40) = v6;
  v7 = bswap32(*(a2 + 44));
  LODWORD(v9) = 0;
  sub_1000A56E0("public_key_crypto_algo_mode", v7, &v9, 1);
  *(a1 + 44) = v7;
  LODWORD(v9) = bswap32(*(a2 + 48));
  sub_100178A7C((a1 + 48), &v9);
  memcpy((a1 + 52), (a2 + 52), 0x200uLL);
  return a1;
}

uint64_t sub_100176D4C(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x2A00000000;
  LODWORD(v3) = 42;
  sub_1000A56E0("public_key_crypto_algo", 42, &v3, 1);
  *(a1 + 40) = 10;
  v3 = 0x800000010000000ALL;
  sub_1000A56E0("public_key_padding_algo", 10, &v3, 2);
  *(a1 + 44) = 0;
  LODWORD(v3) = 0;
  sub_1000A56E0("public_key_crypto_algo_mode", 0, &v3, 1);
  bzero((a1 + 48), 0x204uLL);
  return a1;
}

SecKeyAlgorithm sub_100176E2C(uint64_t a1)
{
  if (*(a1 + 36) != 42)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 40);
  if (v1 == 10)
  {
    v2 = &kSecKeyAlgorithmRSAEncryptionPKCS1;
    return *v2;
  }

  if (v1 != -2147483647)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x40uLL);
    v5 = sub_100001940(exception, "Unsupported public key algorithm.", 0xA1u);
  }

  v2 = &kSecKeyAlgorithmRSAEncryptionOAEPSHA1;
  return *v2;
}

uint64_t sub_100176EAC(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  *(a2 + 44) = bswap32(*(a1 + 44));
  *(a2 + 48) = bswap32(*(a1 + 48));
  memcpy((a2 + 52), (a1 + 52), 0x200uLL);
  return a2 + 564;
}

int *sub_100176F30(int *a1, uint64_t a2)
{
  bzero(a1, 0x268uLL);
  v4 = bswap32(*a2);
  LODWORD(v12) = 103;
  sub_1000A56E0("key_derivation_algorithm_t", v4, &v12, 1);
  *a1 = v4;
  v5 = bswap32(*(a2 + 4));
  LODWORD(v12) = 0;
  sub_1000A56E0("key_derivation_prng_algorithm_t", v5, &v12, 1);
  a1[1] = v5;
  a1[2] = bswap32(*(a2 + 8));
  LODWORD(v12) = bswap32(*(a2 + 12));
  sub_100177738(a1 + 3, &v12);
  v6 = *(a2 + 32);
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 2) = v6;
  LODWORD(v12) = bswap32(*(a2 + 48));
  sub_100177738(a1 + 12, &v12);
  v7 = *(a2 + 52);
  *(a1 + 17) = *(a2 + 68);
  *(a1 + 13) = v7;
  a1[21] = bswap32(*(a2 + 84));
  v8 = bswap32(*(a2 + 88));
  v12 = 0x8000000100000011;
  sub_1000A56E0("wrap_key_crypto_algo", v8, &v12, 2);
  a1[22] = v8;
  v9 = bswap32(*(a2 + 92));
  LODWORD(v12) = 7;
  sub_1000A56E0("wrap_key_crypto_padding_algo", v9, &v12, 1);
  a1[23] = v9;
  v10 = bswap32(*(a2 + 96));
  LODWORD(v12) = 6;
  sub_1000A56E0("crypto_mode", v10, &v12, 1);
  a1[24] = v10;
  LODWORD(v12) = bswap32(*(a2 + 100));
  sub_100178A7C(a1 + 25, &v12);
  memcpy(a1 + 26, (a2 + 104), 0x200uLL);
  return a1;
}

uint64_t sub_1001774F8(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap32(*(a1 + 4));
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *(a2 + 48) = bswap32(*(a1 + 48));
  v4 = *(a1 + 52);
  *(a2 + 68) = *(a1 + 68);
  *(a2 + 52) = v4;
  *(a2 + 84) = bswap32(*(a1 + 84));
  *(a2 + 88) = bswap32(*(a1 + 88));
  *(a2 + 92) = bswap32(*(a1 + 92));
  *(a2 + 96) = bswap32(*(a1 + 96));
  *(a2 + 100) = bswap32(*(a1 + 100));
  memcpy((a2 + 104), (a1 + 104), 0x200uLL);
  return a2 + 616;
}

uint64_t sub_1001775C0(uint64_t a1)
{
  *a1 = 103;
  LODWORD(v3) = 103;
  sub_1000A56E0("key_derivation_algorithm_t", 103, &v3, 1);
  *(a1 + 4) = 0;
  LODWORD(v3) = 0;
  sub_1000A56E0("key_derivation_prng_algorithm_t", 0, &v3, 1);
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 84) = 0x11000000C0;
  v3 = 0x8000000100000011;
  sub_1000A56E0("wrap_key_crypto_algo", 17, &v3, 2);
  *(a1 + 92) = 7;
  LODWORD(v3) = 7;
  sub_1000A56E0("wrap_key_crypto_padding_algo", 7, &v3, 1);
  *(a1 + 96) = 6;
  LODWORD(v3) = 6;
  sub_1000A56E0("crypto_mode", 6, &v3, 1);
  bzero((a1 + 100), 0x204uLL);
  LODWORD(v3) = 20;
  sub_100177738((a1 + 12), &v3);
  LODWORD(v3) = 8;
  sub_100177738((a1 + 48), &v3);
  sub_100176894((a1 + 16), *(a1 + 12));
  sub_100176894((a1 + 52), *(a1 + 48));
  return a1;
}

_DWORD *sub_100177738(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x21u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_100219A30;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

uint64_t sub_1001777AC(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == -2147483647)
  {
    return 0;
  }

  if (v1 != 17)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v4);
    sub_100001FE8(v4, "Unsupported key decryption algo", 31);
    sub_10000EBDC(exception, v4, 0xA1u);
  }

  return 2;
}

void sub_100177858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10017788C(uint64_t a1, uint64_t a2)
{
  bzero(a1, 0x22CuLL);
  v7 = bswap32(*a2);
  sub_100177738(a1, &v7);
  v4 = *(a2 + 4);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 4) = v4;
  v5 = bswap32(*(a2 + 36));
  v8 = -2147483647;
  sub_1000A56E0("wrap_key_crypto_algo", v5, &v8, 1);
  *(a1 + 36) = v5;
  v9 = bswap32(*(a2 + 40));
  sub_100178A7C((a1 + 40), &v9);
  memcpy((a1 + 44), (a2 + 44), 0x200uLL);
  return a1;
}

uint64_t sub_100177A54(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  v3 = *(a1 + 4);
  *(a2 + 20) = *(a1 + 20);
  *(a2 + 4) = v3;
  *(a2 + 36) = bswap32(*(a1 + 36));
  *(a2 + 40) = bswap32(*(a1 + 40));
  memcpy((a2 + 44), (a1 + 44), 0x200uLL);
  return a2 + 556;
}

uint64_t sub_100177AC0(uint64_t a1)
{
  if (*(a1 + 36) != -2147483647)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v3);
    sub_100001FE8(v3, "Unsupported key decryption algo", 31);
    sub_10000EBDC(exception, v3, 0xA1u);
  }

  return 0;
}

void sub_100177B5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100177B90(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = bswap32(*a2);
  *(result + 4) = bswap64(*(a2 + 4));
  *(result + 12) = bswap64(*(a2 + 12));
  return result;
}

uint64_t sub_100177BC0(uint64_t a1, uint64_t a2)
{
  *a2 = bswap32(*a1);
  *(a2 + 4) = bswap64(*(a1 + 4));
  *(a2 + 12) = bswap64(*(a1 + 12));
  return a2 + 20;
}

uint64_t *sub_100177BEC(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    v6 = a3;
    v7 = a4 >> 3;
    v8 = a5 >> 3;
    v9 = *a2;
    v10 = (a5 >> 3) + (a4 >> 3);
    do
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      sub_10017A9CC(v15, v9, v7 + v9, v7);
      __p[0] = 0;
      __p[1] = 0;
      v18 = 0;
      sub_10017A9CC(__p, v7 + v9, v10 + v9, v8);
      v11 = a1[1];
      if (v11 >= a1[2])
      {
        v12 = sub_10017A780(a1, v15);
        v13 = __p[0];
        a1[1] = v12;
        if (v13)
        {
          __p[1] = v13;
          operator delete(v13);
        }
      }

      else
      {
        v11[2] = 0;
        v11[3] = 0;
        *v11 = 0;
        v11[1] = 0;
        *v11 = *v15;
        v11[2] = v16;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v11[4] = 0;
        v11[5] = 0;
        *(v11 + 3) = *__p;
        v11[5] = v18;
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        a1[1] = (v11 + 6);
      }

      if (v15[0])
      {
        v15[1] = v15[0];
        operator delete(v15[0]);
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return a1;
}

void sub_100177D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  sub_10017AA48(&__p);
  sub_10003FF54(&__p);
  _Unwind_Resume(a1);
}

void *sub_100177D64@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 == *(a1 + 8))
  {
    result = std::generic_category();
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = 22;
    *(a3 + 24) = result;
LABEL_7:
    *(a3 + 632) = 4;
    return result;
  }

  result = (*(**(a1 + 24) + 8))(v6);
  if (v7 != 1)
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v6[0];
    goto LABEL_7;
  }

  result = sub_10003FC7C(a3, v6);
  if (v7)
  {
    return sub_10003F650(v6);
  }

  return result;
}

void sub_100177E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x280])
  {
    sub_10003F650(&a9);
  }

  _Unwind_Resume(a1);
}

void sub_100177E88(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (***(a1 + 24))(&v6);
  if (v8 == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v4;
      operator delete(v4);
    }

    *a1 = v6;
    *(a1 + 16) = v7;
    v7 = 0;
    v6 = 0uLL;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a2 = v6;
  }

  *(a2 + 16) = v5;
}

_BYTE *sub_100177F2C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *a2;
  v23 = *(a2 + 4);
  if (*(a2 + 20) == 1)
  {
    *(a2 + 20) = 0;
  }

  v6 = *(a1 + 8);
  v7 = a3[1];
  if (*a3 == a1 && v7 == v6)
  {
    v11 = *(a1 + 16);
    if (v6 >= v11)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *a1) >> 2);
      v15 = v14 + 1;
      if (v14 + 1 > 0xCCCCCCCCCCCCCCCLL)
      {
        sub_100015B70();
      }

      v16 = 0xCCCCCCCCCCCCCCCDLL * ((v11 - *a1) >> 2);
      if (2 * v16 > v15)
      {
        v15 = 2 * v16;
      }

      if (v16 >= 0x666666666666666)
      {
        v17 = 0xCCCCCCCCCCCCCCCLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_10017AAF4(a1, v17);
      }

      v18 = 20 * v14;
      *v18 = v22;
      *(v18 + 16) = v23;
      v13 = 20 * v14 + 20;
      v19 = *(a1 + 8) - *a1;
      v20 = 20 * v14 - v19;
      memcpy((v18 - v19), *a1, v19);
      v21 = *a1;
      *a1 = v20;
      *(a1 + 8) = v13;
      *(a1 + 16) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v12 = *a2;
      *(v6 + 16) = *(a2 + 4);
      *v6 = v12;
      v13 = v6 + 20;
    }

    *(a1 + 8) = v13;
    *&v25 = a1;
    *(&v25 + 1) = v13 - 20;
    v26[0] = 0;
    v27 = 0;
    *a4 = v25;
    result = sub_10017AA8C((a4 + 16), v26);
  }

  else
  {
    v9 = *a2;
    *(v7 + 16) = *(a2 + 4);
    *v7 = v9;
    *&v24 = a1;
    *(&v24 + 1) = v7;
    v26[0] = 0;
    v27 = 0;
    *a4 = v24;
    result = sub_10017AA8C((a4 + 16), v26);
  }

  *(a4 + 664) = 1;
  if (v27 == 1)
  {
    return sub_10003F650(v26);
  }

  return result;
}

void sub_100178120(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x2B0]) == 1)
  {
    sub_10003F650(v1 + 16);
  }

  _Unwind_Resume(a1);
}

void sub_100178150(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  (*(**(*a1 + 24) + 32))(&v10);
  if (v11)
  {
    v4 = (*(**(v3 + 24) + 24))(*(v3 + 24), 0);
    sub_1001782C8(v4, &v8);
    if (v9)
    {
      v5 = (*(**(v3 + 24) + 24))(*(v3 + 24), 1);
      sub_1001782C8(v5, &v8);
      if (v9)
      {
        v6 = (*(**(v3 + 24) + 16))(*(v3 + 24));
        sub_100177BEC(&v8, &v10, v6, v4, v5);
        *a2 = v8;
        *(a2 + 16) = v9;
        v9 = 0;
        v8 = 0uLL;
        *(a2 + 24) = 1;
        v12 = &v8;
        sub_10003FF54(&v12);
        return;
      }
    }

    v7 = v8;
  }

  else
  {
    v7 = v10;
  }

  *a2 = v7;
  *(a2 + 24) = 0;
}

uint64_t sub_1001782C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result < 1 || (result & 7) != 0)
  {
    *&v5 = "diskimage_err> crypto::validate_key_size(ssize_t)";
    *(&v5 + 1) = 40;
    v6 = 16;
    sub_10016A32C(v7, &v5);
    sub_100001FE8(v8, "Key size isn't a multiple of 8", 30);
    std::ostream::~ostream();
    sub_10016CE34(v7);
    std::ios::~ios();
    result = make_error_code(152);
    v3 = 0;
    *a2 = result;
    *(a2 + 8) = v4;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 16) = v3;
  return result;
}

void sub_100178380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016A454(va);
  _Unwind_Resume(a1);
}

void sub_100178394(uint64_t a1@<X0>, const char *a2@<X1>, int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  sub_100178720(a2, v35);
  if ((v35[16] & 1) == 0)
  {
    v19 = *v35;
LABEL_8:
    *a5 = v19;
    *(a5 + 628) = 0;
    return;
  }

  v10 = *a3;
  sub_1001775C0(v28);
  *v35 = a1;
  *&v35[8] = v10;
  v38 = v29;
  *&v35[12] = v28[0];
  v36 = v28[1];
  v37 = v28[2];
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v42 = v33;
  memcpy(dataOut, v34, 0x200uLL);
  LODWORD(v28[0]) = 8;
  sub_100177738(&v38, v28);
  v11 = strlen(a2);
  *&v35[20] = CCCalibratePBKDF(2u, v11, *&v35[24], 1u, v41 >> 3, 0x64u);
  (**a4)(__p, a4);
  if (v27 != 1)
  {
    v19 = *__p;
    goto LABEL_8;
  }

  dataOutMoved = 0;
  sub_100178780(v35, a2, &v23);
  if (v24)
  {
    v12 = sub_1001777AC(&v35[12]);
    v13 = v23;
    v14 = *(&v23 + 1) - v23;
    v15 = CCCrypt(0, v12, 1u, v23, *(&v23 + 1) - v23, &v39, __p[0], __p[1] - __p[0], dataOut, 0x200uLL, &dataOutMoved);
    bzero(v13, v14);
    if (v15)
    {
      *&v21 = "std::expected<passphrase, diskimage_err> crypto::auth_entry_ns::passphrase::create(const auth_table &, const char *, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
      *(&v21 + 1) = 82;
      v22 = 16;
      sub_100178910(v28, &v21);
      sub_100001FE8(&v34[32], "Image key encoding failed with err code ", 40);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10017ADE0(v28);
      std::ios::~ios();
      error_code = make_error_code(154);
      v17 = 0;
      *a5 = error_code;
      *(a5 + 8) = v18;
    }

    else
    {
      LODWORD(v28[0]) = dataOutMoved;
      sub_100178A7C(&v42, v28);
      *a5 = *v35;
      *(a5 + 12) = *&v35[12];
      *(a5 + 28) = v36;
      *(a5 + 44) = v37;
      *(a5 + 60) = v38;
      v20 = v40;
      *(a5 + 64) = v39;
      *(a5 + 80) = v20;
      *(a5 + 96) = v41;
      *(a5 + 112) = v42;
      memcpy((a5 + 116), dataOut, 0x200uLL);
      v17 = 1;
    }

    *(a5 + 628) = v17;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *a5 = v23;
    *(a5 + 628) = 0;
  }

  if (v27)
  {
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1001786B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    operator delete(v28);
  }

  if (a24 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

size_t sub_100178720@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && *a1)
  {
    result = strnlen(a1, 0x101uLL);
    if (result < 0x101)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = 169;
  }

  else
  {
    v4 = 168;
  }

  result = make_error_code(v4);
  v5 = 0;
  *a2 = result;
  *(a2 + 8) = v6;
LABEL_7:
  *(a2 + 16) = v5;
  return result;
}

double sub_100178780@<D0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 96);
  sub_1001782C8(v6, &v12);
  if (v13)
  {
    LOBYTE(v12) = 0;
    sub_10017B2E0(&v15, v6 >> 3);
    v7 = strlen(a2);
    if (CCKeyDerivationPBKDF(2u, a2, v7, (a1 + 28), *(a1 + 24), 1u, *(a1 + 20), v15, *(&v15 + 1) - v15))
    {
      *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_derivation_key(const char *) const";
      *(&v10 + 1) = 73;
      v11 = 16;
      sub_100178DD8(&v12, &v10);
      sub_100001FE8(v14, "crypto_format: Can't derive key ", 32);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10017B5F8(&v12);
      std::ios::~ios();
      *a3 = make_error_code(152);
      *(a3 + 8) = v8;
      *(a3 + 24) = 0;
      if (v15)
      {
        *(&v15 + 1) = v15;
        operator delete(v15);
      }
    }

    else
    {
      result = *&v15;
      *a3 = v15;
      *(a3 + 16) = v16;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    result = *&v12;
    *a3 = v12;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_1001788DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v16 = *(v14 - 80);
  if (v16)
  {
    *(v14 - 72) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100178910(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F020(a1, a2);
  *a1 = off_100221920;
  a1[45] = &off_100221A20;
  a1[46] = &off_100221A48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221920;
  a1[45] = off_1002219A8;
  a1[46] = off_1002219D0;
  return a1;
}

void sub_100178A14(_Unwind_Exception *a1)
{
  sub_10017ADE0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100178A38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017ADE0(a1);
  std::ios::~ios();
  return a1;
}

_DWORD *sub_100178A7C(_DWORD *result, _DWORD *a2)
{
  if (*a2 >= 0x201u)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = &off_100219A30;
    exception[1] = "bla";
    exception[2] = "field size too large";
  }

  *result = *a2;
  return result;
}

double sub_100178AF0@<D0>(uint64_t *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100178720(a2, &v8);
  if ((v9 & 1) != 0 && (sub_100178BA8(a1, a2, &v8), v10 == 1))
  {
    v6 = v8;
    sub_100178150(a1, a3);
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 24) = 0;
  }

  return result;
}

void sub_100178B90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100178BA8(unsigned int *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  __len = 0;
  sub_100178780(a1, a2, &key);
  if (v16 != 1)
  {
    *a3 = key;
    *(a3 + 24) = 0;
    return;
  }

  v5 = sub_1001777AC((a1 + 3));
  v6 = key;
  v7 = *(&key + 1) - key;
  v8 = CCCrypt(1u, v5, 1u, key, *(&key + 1) - key, a1 + 16, a1 + 29, a1[28], __src, a1[28], &__len);
  if (v7 >= 1)
  {
    bzero(v6, v7);
  }

  if (!v8)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v13 = 0;
    sub_10006F178(__dst, __len);
    sub_10006F2BC(__dst, __dst[0], __src, &__src[__len], __len);
    *a3 = *__dst;
    *(a3 + 16) = v13;
    *(a3 + 24) = 1;
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  *&v10 = "diskimage_err> crypto::auth_entry_ns::passphrase::generate_wrapped_key(const char *) const";
  *(&v10 + 1) = 70;
  v11 = 16;
  sub_100097124(__dst, &v10);
  sub_100001FE8(v14, "crypto_format: Can't decrypt wrapped key ", 41);
  std::ostream::operator<<();
  std::ostream::~ostream();
  sub_10009FFC0(__dst);
  std::ios::~ios();
  if (v8 < 0)
  {
    v8 = -v8;
  }

  v9 = std::system_category();
  *a3 = v8;
  *(a3 + 8) = v9;
  *(a3 + 24) = 0;
  if (v6)
  {
LABEL_11:
    operator delete(v6);
  }
}

void sub_100178D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_100178DD8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F0E8(a1, a2);
  *a1 = off_100221B40;
  a1[45] = &off_100221C40;
  a1[46] = &off_100221C68;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221B40;
  a1[45] = off_100221BC8;
  a1[46] = off_100221BF0;
  return a1;
}

void sub_100178EDC(_Unwind_Exception *a1)
{
  sub_10017B5F8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100178F00(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017B5F8(a1);
  std::ios::~ios();
  return a1;
}

void sub_100178F44(uint64_t a1@<X0>, __SecKey *a2@<X1>, unsigned int *a3@<X2>, void (***a4)(void **__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_100176D4C(v32);
  *&v36 = a1;
  *(&v36 + 1) = __PAIR64__(*v32, v9);
  v37 = *&v32[4];
  v38 = v33;
  v39 = v34;
  memcpy(v40, v35, sizeof(v40));
  (**a4)(&__p, a4);
  error = 0;
  v10 = SecKeyCopyExternalRepresentation(a2, &error);
  if (!v10)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100179388(v32, &v26);
    sub_100001FE8(&v35[77], "Key from the certificate is not exportable", 42);
    std::ostream::~ostream();
    sub_10017BD90(v32);
    std::ios::~ios();
    Code = CFErrorGetCode(error);
    v20 = std::generic_category();
    *a5 = Code;
    *(a5 + 8) = v20;
    *(a5 + 576) = 0;
    goto LABEL_10;
  }

  theData = v10;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(theData);
  CC_SHA1(BytePtr, Length, &v37);
  *v32 = 20;
  sub_100177738(&v36 + 3, v32);
  plaintext = CFDataCreate(kCFAllocatorDefault, __p, v30 - __p);
  if (!plaintext)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_1001794F4(v32, &v26);
    sub_100001FE8(&v35[77], "Failed to allocate raw blob data", 32);
    std::ostream::~ostream();
    sub_10017C528(v32);
    std::ios::~ios();
    v21 = std::generic_category();
    v22 = 12;
LABEL_8:
    *a5 = v22;
    *(a5 + 8) = v21;
    *(a5 + 576) = 0;
    goto LABEL_9;
  }

  v13 = sub_100176E2C(&v36 + 12);
  v14 = SecKeyCreateEncryptedData(a2, v13, plaintext, &error);
  if (!v14)
  {
    *&v26 = "std::expected<public_key, diskimage_err> crypto::auth_entry_ns::public_key::create(const auth_table &, SecKeyRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v26 + 1) = 82;
    v27 = 16;
    sub_100179660(v32, &v26);
    sub_100001FE8(&v35[77], "Failed to encrypt data using public key from certificate", 56);
    std::ostream::~ostream();
    sub_10017CCC0(v32);
    std::ios::~ios();
    v23 = CFErrorGetCode(error);
    v21 = std::generic_category();
    v22 = v23;
    goto LABEL_8;
  }

  *v32 = v14;
  LODWORD(v26) = CFDataGetLength(v14);
  sub_100178A7C(&v39 + 3, &v26);
  v15 = *v32;
  v41.length = CFDataGetLength(*v32);
  v41.location = 0;
  CFDataGetBytes(v15, v41, v40);
  v16 = HIDWORD(v36);
  v17 = v37;
  *a5 = v36;
  *(a5 + 16) = v17;
  *(a5 + 12) = v16;
  v18 = v39;
  *(a5 + 32) = v38;
  *(a5 + 48) = v18;
  memcpy((a5 + 64), v40, 0x200uLL);
  *(a5 + 576) = 1;
  sub_1000929D8(v32);
LABEL_9:
  sub_1000929D8(&plaintext);
  sub_1000929D8(&theData);
LABEL_10:
  if (v31 == 1)
  {
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }
  }
}

void sub_1001792D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1000929D8(&a9);
  sub_1000929D8(&a10);
  if (a18 == 1)
  {
    if (__p)
    {
      a16 = __p;
      operator delete(__p);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_100179388(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F1B0(a1, a2);
  *a1 = off_100221D60;
  a1[45] = &off_100221E60;
  a1[46] = &off_100221E88;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221D60;
  a1[45] = off_100221DE8;
  a1[46] = off_100221E10;
  return a1;
}

void sub_10017948C(_Unwind_Exception *a1)
{
  sub_10017BD90(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001794B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017BD90(a1);
  std::ios::~ios();
  return a1;
}

void *sub_1001794F4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F278(a1, a2);
  *a1 = off_100221F80;
  a1[45] = &off_100222080;
  a1[46] = &off_1002220A8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100221F80;
  a1[45] = off_100222008;
  a1[46] = off_100222030;
  return a1;
}

void sub_1001795F8(_Unwind_Exception *a1)
{
  sub_10017C528(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017961C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017C528(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100179660(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F340(a1, a2);
  *a1 = off_1002221A0;
  a1[45] = &off_1002222A0;
  a1[46] = &off_1002222C8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002221A0;
  a1[45] = off_100222228;
  a1[46] = off_100222250;
  return a1;
}

void sub_100179764(_Unwind_Exception *a1)
{
  sub_10017CCC0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100179788(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017CCC0(a1);
  std::ios::~ios();
  return a1;
}

const void **sub_1001797CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 12;
  v5 = CFDataCreate(kCFAllocatorDefault, (a1 + 16), *(a1 + 12));
  v22 = v5;
  *&v23 = kSecClass;
  *(&v23 + 1) = kSecClassKey;
  v24 = kSecAttrKeyClass;
  v25 = kSecAttrKeyClassPrivate;
  v26 = kSecAttrApplicationLabel;
  v27 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v28 = kSecReturnRef;
  v29 = kCFBooleanTrue;
  result = 0;
  *&v15 = &v23;
  *(&v15 + 1) = 4;
  sub_100145408(&v15, &query);
  for (i = 56; i != -8; i -= 16)
  {
    sub_100028CF8((&v23 + i));
  }

  sub_100028D60(&result);
  result = 0;
  if (!SecItemCopyMatching(query, &result))
  {
    error = 0;
    v19 = result;
    ciphertext = CFDataCreate(kCFAllocatorDefault, (a1 + 64), *(a1 + 60));
    if (ciphertext)
    {
      v8 = v19;
      v9 = sub_100176E2C(v4);
      v10 = SecKeyCreateDecryptedData(v8, v9, ciphertext, &error);
      v11 = v10;
      if (v10)
      {
        sub_100145208(v10, 0, 0, &v23);
        CFRelease(v11);
        *a2 = v23;
        *(a2 + 16) = v24;
        *(a2 + 24) = 1;
LABEL_13:
        sub_1000929D8(&ciphertext);
        sub_10017F408(&v19);
        goto LABEL_14;
      }

      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100179D04(&v23, &v15);
      sub_100001FE8(v30, "Error decrypting data using public key, error code ", 51);
      CFErrorGetCode(error);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_10017DBF0(&v23);
      std::ios::~ios();
      v13 = std::generic_category();
      *a2 = 35;
      *(a2 + 8) = v13;
    }

    else
    {
      *&v15 = "diskimage_err> crypto::auth_entry_ns::public_key::generate_wrapped_key() const";
      *(&v15 + 1) = 70;
      v16 = 16;
      sub_100179B98(&v23, &v15);
      sub_100001FE8(v30, "Failed to create chiper data for public key auth", 48);
      std::ostream::~ostream();
      sub_10017D458(&v23);
      std::ios::~ios();
      *a2 = make_error_code(152);
      *(a2 + 8) = v12;
    }

    *(a2 + 24) = 0;
    goto LABEL_13;
  }

  v7 = std::generic_category();
  *a2 = 35;
  *(a2 + 8) = v7;
  *(a2 + 24) = 0;
LABEL_14:
  sub_100028D2C(&query);
  return sub_1000929D8(&v22);
}

void sub_100179AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, const void *a15, __int16 a16, char a17, char a18, int a19, const void *a20, const void *a21, void *__p, uint64_t a23)
{
  sub_100179E2C(&__p);
  sub_1000929D8(&a13);
  sub_10017F408(&a15);
  sub_100028D2C(&a20);
  sub_1000929D8(&a21);
  _Unwind_Resume(a1);
}

void *sub_100179B98(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F43C(a1, a2);
  *a1 = off_1002223C0;
  a1[45] = &off_1002224C0;
  a1[46] = &off_1002224E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002223C0;
  a1[45] = off_100222448;
  a1[46] = off_100222470;
  return a1;
}

void sub_100179C9C(_Unwind_Exception *a1)
{
  sub_10017D458(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100179CC0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017D458(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100179D04(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F504(a1, a2);
  *a1 = off_1002225E0;
  a1[45] = &off_1002226E0;
  a1[46] = &off_100222708;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002225E0;
  a1[45] = off_100222668;
  a1[46] = off_100222690;
  return a1;
}

void sub_100179E08(_Unwind_Exception *a1)
{
  sub_10017DBF0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100179E2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017DBF0(a1);
  std::ios::~ios();
  return a1;
}

double sub_100179E70@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001797CC(a1, v6);
  if (v7 == 1)
  {
    v4 = v6[0];
    sub_100178150(a1, a2);
    if (v4 != 0.0)
    {
      operator delete(*&v4);
    }
  }

  else
  {
    result = v6[0];
    *a2 = *v6;
    *(a2 + 24) = 0;
  }

  return result;
}

void sub_100179EF0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100179F08(CFTypeRef cf@<X1>, uint64_t a2@<X0>, int *a3@<X2>, void (***a4)(__int128 *__return_ptr, void)@<X3>, uint64_t a5@<X8>)
{
  if (!cf || (v10 = CFGetTypeID(cf), v10 != CFDataGetTypeID()))
  {
    v17 = std::generic_category();
    *a5 = 22;
    *(a5 + 8) = v17;
LABEL_7:
    *(a5 + 568) = 0;
    return;
  }

  v11 = *a3;
  LODWORD(v23[0]) = -2147483647;
  sub_1000A56E0("wrap_key_crypto_algo", -2147483647, v23, 1);
  *v28 = a2;
  *&v28[8] = v11;
  memset(&v28[12], 0, 32);
  *&v28[44] = 0x8000000100000000;
  bzero(&v28[52], 0x204uLL);
  LODWORD(v23[0]) = 8;
  sub_100177738(&v28[12], v23);
  (**a4)(&dataIn, a4);
  if (v27 != 1)
  {
    *a5 = dataIn;
    goto LABEL_7;
  }

  dataOutMoved = 0;
  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  sub_100177AC0(&v28[12]);
  if (CCCrypt(0, 0, 1u, BytePtr, Length, &v28[16], dataIn, *(&dataIn + 1) - dataIn, dataOut, 0x200uLL, &dataOutMoved))
  {
    *&v21 = "std::expected<symmetric_key, diskimage_err> crypto::auth_entry_ns::symmetric_key::create(const auth_table &, CFDataRef, diskimage_uio::option_set<locked_entity> &&, serializer_t &)";
    *(&v21 + 1) = 88;
    v22 = 16;
    sub_10017A204(v23, &v21);
    sub_100001FE8(v24, "Image key encoding failed with err code ", 40);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10017E388(v23);
    std::ios::~ios();
    error_code = make_error_code(154);
    v15 = 0;
    *a5 = error_code;
    *(a5 + 8) = v16;
  }

  else
  {
    LODWORD(v23[0]) = dataOutMoved;
    sub_100178A7C(&v28[52], v23);
    v18 = *&v28[12];
    v19 = *&v28[16];
    v20 = *&v28[32];
    *a5 = *v28;
    *(a5 + 16) = v19;
    *(a5 + 12) = v18;
    *(a5 + 32) = v20;
    *(a5 + 48) = *&v28[48];
    memcpy((a5 + 56), dataOut, 0x200uLL);
    v15 = 1;
  }

  *(a5 + 568) = v15;
  if (v27)
  {
    if (dataIn)
    {
      *(&dataIn + 1) = dataIn;
      operator delete(dataIn);
    }
  }
}

void sub_10017A1B0(_Unwind_Exception *a1)
{
  if (LOBYTE(STACK[0x258]) == 1)
  {
    v2 = STACK[0x240];
    if (STACK[0x240])
    {
      STACK[0x248] = v2;
      operator delete(v2);
    }
  }

  _Unwind_Resume(a1);
}

void *sub_10017A204(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F5CC(a1, a2);
  *a1 = off_100222800;
  a1[45] = &off_100222900;
  a1[46] = &off_100222928;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222800;
  a1[45] = off_100222888;
  a1[46] = off_1002228B0;
  return a1;
}

void sub_10017A308(_Unwind_Exception *a1)
{
  sub_10017E388(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017A32C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017E388(a1);
  std::ios::~ios();
  return a1;
}

void sub_10017A370(CFTypeRef cf@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  if (!cf || (v6 = CFGetTypeID(cf), v6 != CFDataGetTypeID()))
  {
    v8 = std::generic_category();
    *a3 = 22;
    *(a3 + 8) = v8;
LABEL_7:
    *(a3 + 24) = 0;
    return;
  }

  sub_10017A440(cf, a2, &v9);
  if (v10 != 1)
  {
    *a3 = v9;
    goto LABEL_7;
  }

  v7 = v9;
  sub_100178150(a2, a3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_10017A428(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_10017A440@<D0>(CFDataRef theData@<X1>, unsigned int *a2@<X0>, uint64_t a3@<X8>)
{
  __len = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_100177AC0((a2 + 3));
  v8 = CCCrypt(1u, 0, 1u, BytePtr, Length, a2 + 4, a2 + 14, a2[13], __src, a2[13], &__len);
  if (v8)
  {
    *&v11 = "diskimage_err> crypto::auth_entry_ns::symmetric_key::generate_wrapped_key(CFDataRef) const";
    *(&v11 + 1) = 73;
    v12 = 16;
    sub_10017A614(__dst, &v11);
    sub_100001FE8(v15, "crypto_format: Can't decrypt wrapped key ", 41);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10017EB20(__dst);
    std::ios::~ios();
    if (v8 < 0)
    {
      v8 = -v8;
    }

    v9 = std::system_category();
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 24) = 0;
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v14 = 0;
    sub_10006F178(__dst, __len);
    sub_10006F2BC(__dst, __dst[0], __src, &__src[__len], __len);
    result = *__dst;
    *a3 = *__dst;
    *(a3 + 16) = v14;
    *(a3 + 24) = 1;
  }

  return result;
}

void sub_10017A5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10017A614(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10017F694(a1, a2);
  *a1 = off_100222A20;
  a1[45] = &off_100222B20;
  a1[46] = &off_100222B48;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222A20;
  a1[45] = off_100222AA8;
  a1[46] = off_100222AD0;
  return a1;
}

void sub_10017A718(_Unwind_Exception *a1)
{
  sub_10017EB20(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10017A73C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017EB20(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10017A780(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_100015B70();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100072B60(a1, v6);
  }

  v7 = 48 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *&v16 = 48 * v2 + 48;
  v8 = a1[1];
  v9 = (48 * v2 + *a1 - v8);
  sub_10017A8E0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10017A97C(&v14);
  return v13;
}

void sub_10017A8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10017A97C(va);
  _Unwind_Resume(a1);
}

void sub_10017A8E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v6;
      a4[2] = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v6 + 24);
      a4[5] = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v6 += 48;
      a4 += 6;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_10003FFD8(v5);
      v5 += 48;
    }
  }
}

uint64_t sub_10017A97C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_10003FFD8(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10017A9CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100040450(result, a4);
  }

  return result;
}

void sub_10017AA2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017AA48(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

_BYTE *sub_10017AA8C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[640] = 0;
  if (*(a2 + 640) == 1)
  {
    sub_10003FC7C(a1, a2);
    a1[640] = 1;
  }

  return a1;
}

void sub_10017AAD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 640) == 1)
  {
    sub_10003F650(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017AAF4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_10017AB48(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017ADE0(v1);

  return std::ios::~ios();
}

uint64_t sub_10017AB94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017ADE0(v1);

  return std::ios::~ios();
}

void sub_10017ABF4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017ADE0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017AC98(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017AD04(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017ADE0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017AD68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017ADE0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017ADE0(uint64_t a1)
{
  *a1 = off_100221AB8;
  sub_10017AF4C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017AF4C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017B0FC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017B098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017B0C4(uint64_t a1)
{
  sub_10017ADE0(a1);

  operator delete();
}

int *sub_10017B0FC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 321;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 321;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10017B2E0(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100040450(result, a2);
  }

  return result;
}

void sub_10017B344(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10017B360(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017B5F8(v1);

  return std::ios::~ios();
}

uint64_t sub_10017B3AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017B5F8(v1);

  return std::ios::~ios();
}

void sub_10017B40C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017B5F8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017B474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017B4B0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017B51C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017B5F8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017B580(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017B5F8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017B5F8(uint64_t a1)
{
  *a1 = off_100221CD8;
  sub_10017B764(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017B764(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017B914((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017B8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017B8DC(uint64_t a1)
{
  sub_10017B5F8(a1);

  operator delete();
}

int *sub_10017B914(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 371;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 371;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017BAF8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017BD90(v1);

  return std::ios::~ios();
}

uint64_t sub_10017BB44(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017BD90(v1);

  return std::ios::~ios();
}

void sub_10017BBA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017BD90(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017BC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017BC48(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017BCB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017BD90(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017BD18(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017BD90(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017BD90(uint64_t a1)
{
  *a1 = off_100221EF8;
  sub_10017BEFC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017BEFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017C0AC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017C048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017C074(uint64_t a1)
{
  sub_10017BD90(a1);

  operator delete();
}

int *sub_10017C0AC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 421;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 421;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017C290(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017C528(v1);

  return std::ios::~ios();
}

uint64_t sub_10017C2DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017C528(v1);

  return std::ios::~ios();
}

void sub_10017C33C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017C528(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017C3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017C3E0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017C44C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017C528(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017C4B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017C528(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017C528(uint64_t a1)
{
  *a1 = off_100222118;
  sub_10017C694(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017C694(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017C844((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017C7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017C80C(uint64_t a1)
{
  sub_10017C528(a1);

  operator delete();
}

int *sub_10017C844(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 432;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 432;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017CA28(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017CCC0(v1);

  return std::ios::~ios();
}

uint64_t sub_10017CA74(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017CCC0(v1);

  return std::ios::~ios();
}

void sub_10017CAD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017CCC0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017CB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017CB78(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017CBE4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017CCC0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017CC48(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017CCC0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017CCC0(uint64_t a1)
{
  *a1 = off_100222338;
  sub_10017CE2C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017CE2C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017CFDC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017CF78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017CFA4(uint64_t a1)
{
  sub_10017CCC0(a1);

  operator delete();
}

int *sub_10017CFDC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 439;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 439;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017D1C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017D458(v1);

  return std::ios::~ios();
}

uint64_t sub_10017D20C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017D458(v1);

  return std::ios::~ios();
}

void sub_10017D26C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017D458(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017D2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017D310(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017D37C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017D458(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017D3E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017D458(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017D458(uint64_t a1)
{
  *a1 = off_100222558;
  sub_10017D5C4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017D5C4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017D774((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017D710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017D73C(uint64_t a1)
{
  sub_10017D458(a1);

  operator delete();
}

int *sub_10017D774(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 468;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 468;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017D958(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017DBF0(v1);

  return std::ios::~ios();
}

uint64_t sub_10017D9A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017DBF0(v1);

  return std::ios::~ios();
}

void sub_10017DA04(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017DBF0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017DA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017DAA8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017DB14(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017DBF0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017DB78(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017DBF0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017DBF0(uint64_t a1)
{
  *a1 = off_100222778;
  sub_10017DD5C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017DD5C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017DF0C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017DEA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017DED4(uint64_t a1)
{
  sub_10017DBF0(a1);

  operator delete();
}

int *sub_10017DF0C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 474;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 474;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017E0F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017E388(v1);

  return std::ios::~ios();
}

uint64_t sub_10017E13C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017E388(v1);

  return std::ios::~ios();
}

void sub_10017E19C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017E388(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017E204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017E240(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017E2AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017E388(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017E310(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017E388(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017E388(uint64_t a1)
{
  *a1 = off_100222998;
  sub_10017E4F4(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017E4F4(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017E6A4((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017E640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017E66C(uint64_t a1)
{
  sub_10017E388(a1);

  operator delete();
}

int *sub_10017E6A4(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 522;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 522;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017E888(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017EB20(v1);

  return std::ios::~ios();
}

uint64_t sub_10017E8D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017EB20(v1);

  return std::ios::~ios();
}

void sub_10017E934(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10017EB20(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017E99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10017E9D8(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10017EA44(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10017EB20(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10017EAA8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10017EB20(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10017EB20(uint64_t a1)
{
  *a1 = off_100222BB8;
  sub_10017EC8C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_10017EC8C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_10017EE3C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_10017EDD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10017EE04(uint64_t a1)
{
  sub_10017EB20(a1);

  operator delete();
}

int *sub_10017EE3C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 557;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 557;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10017F020(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221AB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F0D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F0E8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221CD8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F198(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F1B0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100221EF8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F260(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F278(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222118;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F328(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F340(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222338;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F3F0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

const void **sub_10017F408(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_10017F43C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222558;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F4EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F504(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222778;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F5B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F5CC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222998;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F67C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F694(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100222BB8;
  if (*(a2 + 4) == 2)
  {
    v4 = sub_1000E9608();
  }

  else
  {
    v4 = 1;
  }

  *(a1 + 64) = v4;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 72) = v5;
  sub_100001DC0((a1 + 96));
  return a1;
}

void sub_10017F744(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10017F75C(uint64_t a1, int *a2, int a3, _DWORD *a4)
{
  *a1 = 1919118949;
  v13 = 1919118949;
  sub_1000A56E0("sig1_t", 1919118949, &v13, 1);
  *(a1 + 4) = 1634952291;
  v13 = 1634952291;
  sub_1000A56E0("sig2_t", 1634952291, &v13, 1);
  *(a1 + 8) = 2;
  v13 = 2;
  sub_1000A56E0("version_t", 2, &v13, 1);
  *(a1 + 12) = 16;
  v13 = 16;
  sub_1000A56E0("iv_tweak_size_t", 16, &v13, 1);
  *(a1 + 16) = *a4;
  *(a1 + 20) = -2147483647;
  v13 = -2147483647;
  sub_1000A56E0("algorithm_type", -2147483647, &v13, 1);
  v8 = *a2;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = v8;
  *(a1 + 52) = a3;
  *(a1 + 56) = xmmword_1001C9ED0;
  *(a1 + 72) = 0;
  if (*a4 == 5)
  {
    v9 = 91;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 28) = v9;
  if (*a4 == 5)
  {
    v10 = 160;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 32) = v10;
  *(a1 + 36) = sub_100195AE4();
  *(a1 + 44) = v11;
  return a1;
}

void sub_10017F8BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  v3 = (*(*a2 + 40))(a2);
  v4 = v3 - 12;
  if (v3 >= 0xC)
  {
    v5 = *(sub_100195B38() + 1);
    v11 = v19;
    v12 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 12;
    v14 = v4;
    v15 = 12;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v6 = (*(*a2 + 128))(a2, &v11);
    if (v12)
    {
      sub_10000E984(v12);
    }

    if ((v6 & 0x80000000) == 0 && v19[0] == 0x1000000 && *&v19[1] == 0x72636E6561736463)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v10 = sub_100001940(exception, "The image is encrypted with obsolete encoding version 1", 0x2Du);
    }
  }

  if ((*(*a2 + 40))(a2) > 0x4B)
  {
    operator new[]();
  }

  v7 = __cxa_allocate_exception(0x20uLL);
  v8 = (*(*a2 + 40))(a2);
  *v7 = &off_1002160C8;
  v7[1] = "crypto";
  v7[2] = 76;
  v7[3] = v8;
}

void sub_10017FEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10017FED8(void *a1, int a2, ...)
{
  va_start(va, a2);
  switch(a2)
  {
    case 3:
      v2 = __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x30uLL);
      sub_1000A5780((exception + 1), v2);
      *exception = off_100208580;
      exception[1] = off_1002085C0;
    case 2:
      __cxa_begin_catch(a1);
      __cxa_rethrow();
    case 1:
      v4 = __cxa_begin_catch(a1);
      v5 = __cxa_allocate_exception(0x40uLL);
      sub_100001DC0(va);
      sub_100001FE8(va, "Unsupported value for crypto header field ", 42);
      v6 = *(v4 + 1);
      v7 = strlen(v6);
      sub_100001FE8(va, v6, v7);
      sub_10000EBDC(v5, va, 0xA1u);
  }

  operator delete[]();
}

void sub_100180580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  if (v10)
  {
    __cxa_free_exception(v9);
  }

  __cxa_end_catch();
  operator delete[]();
}

void sub_1001805C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  operator delete[]();
}

void sub_100180608(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x100180610);
  }

  sub_100001A14(a1);
}

__n128 sub_100180624(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100180660(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 8) = bswap32(*(a1 + 8));
  *(a2 + 12) = bswap32(*(a1 + 12));
  *(a2 + 16) = bswap32(*(a1 + 16));
  *(a2 + 20) = bswap32(*(a1 + 20));
  *(a2 + 24) = bswap32(*(a1 + 24));
  *(a2 + 28) = bswap32(*(a1 + 28));
  *(a2 + 32) = bswap32(*(a1 + 32));
  *(a2 + 36) = *(a1 + 36);
  *(a2 + 52) = bswap32(*(a1 + 52));
  *(a2 + 56) = bswap64(*(a1 + 56));
  *(a2 + 64) = bswap64(*(a1 + 64));
  *(a2 + 72) = bswap32(*(a1 + 72));
  return a2 + 76;
}

const void **sub_100180704(uint64_t a1, char *a2)
{
  v3 = (*(*&a2[*(*a2 - 40)] + 16))(&a2[*(*a2 - 40)]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v11 = sub_100001940(exception, "Image contains crypto format but info class is missing EncryptionInfo", 0x16u);
  }

  v4 = v3;
  v5 = *(a1 + 24);
  if (v5 == 128)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = 3;
  if (*(a1 + 16) == 5)
  {
    v7 = v6;
  }

  *(v3 + 8) = v7;
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
  }

  *(v3 + 16) = v5;
  v13 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, *(a1 + 36));
  v8 = CFUUIDCreateString(kCFAllocatorDefault, v13);
  v12 = v8;
  if (*(v4 + 32))
  {
    CFRelease(*(v4 + 32));
    v8 = v12;
  }

  *(v4 + 32) = v8;
  v12 = 0;
  sub_1000283C8(&v12);
  return sub_1000292AC(&v13);
}

void sub_10018083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000283C8(&a9);
  sub_1000292AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100180860(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *(a1 + 1) = *v5;
  a1[4] = *(v5 + 16);
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *a2;
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  *(a1 + 5) = *(v6 + 24);
  a1[7] = *(v6 + 40);
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v8[0] = a1;
  v8[1] = a1;
  sub_100184330(v8, *a1, (a1 + 8));
  return a1;
}

void sub_100180928(_Unwind_Exception *a1)
{
  v6 = v5;
  v8 = *v6;
  if (*v6)
  {
    *(v2 + 48) = v8;
    operator delete(v8);
  }

  sub_100198BDC(v3, v1, v4);
  _Unwind_Resume(a1);
}

uint64_t *sub_100180964(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v3 = *a1;
  }

  sub_100180A48(*(v3 + 24), (a1 + 2));
  v5 = *a1;
  if (*(*a1 + 16) == 5)
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = 8 * *(v5 + 12);
  }

  sub_100180A48(v6, (a1 + 5));
  v8[0] = a1;
  v8[1] = a1;
  sub_100184330(v8, *a1, (a1 + 8));
  return a1;
}

void sub_1001809FC(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    v1[6] = v5;
    operator delete(v5);
  }

  v6 = v1[2];
  if (v6)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  v7 = v1[1];
  if (v7)
  {
    sub_10000E984(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100180A48@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (a1 >= 8)
  {
    sub_1001843F8(a2, a1 >> 3);
    v4 = *a2;
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_100176894(v4, v3 - v4);
}

void sub_100180A9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_100180ABC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100184530(a2, a1[3] + a1[6] - (a1[2] + a1[5]) + 5);
  v4 = *result;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v6 - v5;
  if (v6 != v5)
  {
    result = memmove(*result, v5, v6 - v5);
  }

  v8 = &v4[v7];
  v9 = a1[5];
  v10 = a1[6];
  v11 = v10 - v9;
  if (v10 != v9)
  {
    result = memmove(v8, v9, v10 - v9);
  }

  strcpy(&v8[v11], "CKIE");
  return result;
}

void sub_100180C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  v12 = *(v10 - 24);
  if (v12)
  {
    sub_10000E984(v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100180C38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = 0uLL;
  v4 = *a1;
  v3 = a1[1];
  v10 = 0;
  *&v11 = v4;
  *(&v11 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100177E88(&v9, &v7);
  if (v8)
  {
    *a2 = v9;
    *(a2 + 16) = v10;
    v9 = 0uLL;
    v10 = 0;
    *(a2 + 24) = v11;
    v5 = 1;
    v11 = 0uLL;
  }

  else
  {
    v5 = 0;
    *a2 = v7;
  }

  *(a2 + 40) = v5;
  return sub_10003F610(&v9);
}

void sub_100180CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10003F610(va);
  _Unwind_Resume(a1);
}

void sub_100180CF0(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v17 = 0;
  v18 = 0;
  v15 = off_100222C38;
  v16 = &v17;
  v7 = *a2;
  v6 = a2[1];
  *&v19 = a1;
  *(&v19 + 1) = v7;
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  v9 = a3[1];
  v23 = a3;
  v24 = v8;
  v25[0] = 0;
  v26 = 0;
  if (v8 != v9)
  {
    do
    {
      sub_100180EC8(&v15, *(v8 + 4), *(v8 + 12));
      sub_10003AAD8(&v23, v21);
      if (v22[640] == 1)
      {
        sub_10003F650(v22);
      }

      v8 = v24;
    }

    while (v23 != a3 || v24 != a3[1]);
    if (v26)
    {
      sub_10003F650(v25);
    }
  }

  v12 = v16;
  v11 = v17;
  *a4 = off_100222C38;
  *(a4 + 8) = v12;
  *(a4 + 16) = v11;
  v13 = a4 + 16;
  v14 = v18;
  *(a4 + 24) = v18;
  if (v14)
  {
    v11[2] = v13;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v11 = 0;
  }

  else
  {
    *(a4 + 8) = v13;
  }

  *(a4 + 32) = v19;
  *(a4 + 48) = v20;
  *(&v19 + 1) = 0;
  v20 = 0;
  *(a4 + 56) = 1;
  v15 = off_100222C38;
  sub_1000285E0(&v16, v11);
}

void sub_100180E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (LOBYTE(STACK[0x560]) == 1)
  {
    sub_10003F650(v9 + 16);
  }

  sub_1001845A4(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_100180EC8(uint64_t **result, unint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3 + a2;
  v11 = 2;
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = sub_1000DC038((result + 1), v10);
    if (v5)
    {
      v12 = v4;
      sub_1000DC0D4(v3 + 1, &v12);
      return sub_1000DC1D4(v3 + 1, &v12);
    }

    else
    {
      v6 = sub_10012FC18((v3 + 1), v10);
      v7 = *v6;
      if (*v6)
      {
        do
        {
          v8 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (v9);
      }

      return sub_1000DBFF0(v3 + 1, v10, v8);
    }
  }

  return result;
}

double sub_100180F84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100180ABC(*(a1 + 32), &v4);
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100180FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = malloc_type_valloc(0x4CuLL, 0x8B7C732DuLL);
  if (!v4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v13 = std::bad_alloc::bad_alloc(exception);
  }

  v14 = off_100222DE8;
  *(&v16 + 1) = &v14;
  v21 = v4;
  sub_100015FBC(v22, &v14);
  sub_10001590C(&v14);
  sub_100180660(**(a1 + 32), v21);
  v5 = v21;
  v6 = *(sub_100195B38() + 1);
  v14 = v5;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = xmmword_1001C9EE0;
  v17 = 76;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v7 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v14);
  if (v7 == 76)
  {
    v8 = 1;
  }

  else
  {
    if (v7 <= 0)
    {
      v9 = -v7;
    }

    else
    {
      v9 = 5;
    }

    v10 = std::generic_category();
    v8 = 0;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  *(a2 + 16) = v8;
  if (v15)
  {
    sub_10000E984(v15);
  }

  sub_100015888(&v21, 0);
  return sub_10001590C(v22);
}

void sub_100181174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  sub_100015888((v11 - 80), 0);
  sub_10001590C(v10 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001811A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = **(a1 + 32);
  if (*(v5 + 72) >= 0x14u)
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_10018142C(v21, &v19);
    sub_100001FE8(v23, "Cannot edit crypto header that has more than ", 45);
    std::ostream::operator<<();
    sub_100001FE8(v23, " auth entries", 13);
    std::ostream::~ostream();
    sub_100184970(v21);
LABEL_22:
    std::ios::~ios();
    result = make_error_code(161);
    *a4 = result;
    *(a4 + 8) = v18;
    *(a4 + 32) = 0;
    return result;
  }

  v8 = *(a1 + 8);
  v9 = (a1 + 16);
  if (v8 == (a1 + 16) || v8[4] >= a2 + 476)
  {
    v10 = 476;
  }

  else
  {
    v10 = v8[5];
    v11 = v8[1];
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
        v12 = v8[2];
        v13 = *v12 == v8;
        v8 = v12;
      }

      while (!v13);
    }

    if (v12 != v9)
    {
      do
      {
        if (v12[4] - v10 >= a2)
        {
          break;
        }

        v14 = v12[1];
        v15 = v12;
        if (v14)
        {
          do
          {
            v16 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            v13 = *v16 == v15;
            v15 = v16;
          }

          while (!v13);
        }

        v10 = v12[5];
        v12 = v16;
      }

      while (v16 != v9);
    }
  }

  if (v10 + a2 > *(v5 + 64))
  {
    *&v19 = "diskimage_err> crypto::crypto_serializer_t::get_handle_for_new_entry(size_t, auth_entry_descriptor::mechanism_t)";
    *(&v19 + 1) = 68;
    v20 = 16;
    sub_100181598(v21, &v19);
    sub_100001FE8(v23, "No room to add new auth entry", 29);
    std::ostream::~ostream();
    sub_100185108(v21);
    goto LABEL_22;
  }

  *v21 = a3;
  *&v21[4] = v10;
  *&v21[12] = a2;
  v21[20] = 1;
  v22 = a1;
  (*(*a1 + 40))(a1);
  *a4 = *v21;
  *(a4 + 13) = *&v21[13];
  *(a4 + 24) = a1;
  v21[20] = 0;
  *(a4 + 32) = 1;
  return sub_100040370(v21);
}

void sub_100181408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001816C0(va);
  _Unwind_Resume(a1);
}

void *sub_10018142C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018CCE0(a1, a2);
  *a1 = off_100222E70;
  a1[45] = &off_100222F70;
  a1[46] = &off_100222F98;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100222E70;
  a1[45] = off_100222EF8;
  a1[46] = off_100222F20;
  return a1;
}

void sub_100181530(_Unwind_Exception *a1)
{
  sub_100184970(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100181554(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184970(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100181598(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018CDA8(a1, a2);
  *a1 = off_100223090;
  a1[45] = &off_100223190;
  a1[46] = &off_1002231B8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100223090;
  a1[45] = off_100223118;
  a1[46] = off_100223140;
  return a1;
}

void sub_10018169C(_Unwind_Exception *a1)
{
  sub_100185108(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001816C0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185108(a1);
  std::ios::~ios();
  return a1;
}

uint64_t **sub_100181704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3 + a2;
  v5 = 2;
  return sub_10018CE70((a1 + 8), v4);
}

void sub_10018173C(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2[1] - *a2;
  sub_1001811A8(a1, v7, a3, v23);
  if (v25 == 1)
  {
    v8 = *a2;
    v9 = *&v23[4];
    v10 = *(sub_100195B38() + 1);
    v15 = v8;
    v16 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v7;
    v18 = v9;
    v19 = v7;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v11 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v15);
    if (v7 == v11)
    {
      *a4 = *v23;
      *(a4 + 13) = *&v23[13];
      *(a4 + 24) = v24;
      v12 = v23[20];
      if (v23[20] == 1)
      {
        v23[20] = 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      if (v11 <= 0)
      {
        v13 = -v11;
      }

      else
      {
        v13 = 5;
      }

      v14 = std::generic_category();
      v12 = 0;
      *a4 = v13;
      *(a4 + 8) = v14;
    }

    *(a4 + 32) = v12;
    if (v16)
    {
      sub_10000E984(v16);
    }

    if (v25)
    {
      sub_100040370(v23);
    }
  }

  else
  {
    *a4 = *v23;
    *(a4 + 32) = 0;
  }
}

void sub_100181884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000E984(a11);
  }

  if (*(v11 - 56) == 1)
  {
    sub_100040370(v11 - 88);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001818B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000404D4(__p, 616);
  sub_1001774F8(a2, __p[0]);
  sub_10018173C(a1, __p, 1, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_10018192C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100181948(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000404D4(__p, 564);
  sub_100176EAC(a2, __p[0]);
  sub_10018173C(a1, __p, 2, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1001819BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001819D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000404D4(__p, 556);
  sub_100177A54(a2, __p[0]);
  sub_10018173C(a1, __p, 4, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_100181A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100181A68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v19 = *a2;
    goto LABEL_18;
  }

  v8 = v6 - v5;
  v9 = malloc_type_valloc(v6 - v5, 0x8B7C732DuLL);
  if (!v9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v21 = std::bad_alloc::bad_alloc(exception);
  }

  v22 = off_100222DE8;
  v25 = &v22;
  v30 = v9;
  sub_100015FBC(v31, &v22);
  sub_10001590C(&v22);
  v10 = *a2;
  if (*a2 != a2[1])
  {
    v11 = 0;
    do
    {
      sub_100177BC0(v10 + v11, v30 + v11);
      v11 += 20;
    }

    while (v10 + v11 != a2[1]);
  }

  v12 = v30;
  v13 = *(sub_100195B38() + 1);
  v22 = v12;
  v23 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v8;
  v25 = 76;
  v26 = v8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v14 = (*(**(a1 + 40) + 120))(*(a1 + 40), &v22);
  v15 = v14;
  if (v8 != v14)
  {
    if (v14 <= 0)
    {
      v16 = -v14;
    }

    else
    {
      v16 = 5;
    }

    v17 = std::generic_category();
    *a3 = v16;
    *(a3 + 8) = v17;
    *(a3 + 16) = 0;
  }

  if (v23)
  {
    sub_10000E984(v23);
  }

  sub_100015888(&v30, 0);
  result = sub_10001590C(v31);
  if (v8 == v15)
  {
    v5 = *a2;
    v19 = a2[1];
LABEL_18:
    *(**(a1 + 32) + 72) = -858993459 * ((v19 - v5) >> 2);
    return sub_100180FD0(a1, a3);
  }

  return result;
}

void sub_100181C88(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a3)
  {
    sub_10000E984(a3);
  }

  sub_100015888(va, 0);
  sub_10001590C(v15 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100181CC8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = **(a1 + 48);
  v11 = *(v10 + 52);
  if (*(a1 + 392))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = v12 + a4;
  v14 = *(a1 + 24);
  v15 = *(sub_100195B38() + 1);
  v20 = a2;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = v11 * a3;
  v23 = v13;
  v24 = v11 * a3;
  v25 = 0;
  v26[0] = 0;
  v27 = 0;
  if (*(a5 + 56))
  {
    sub_10009386C(v26, a5);
    v27 = 1;
  }

  v16 = (*(*v14 + 128))(v14, &v20);
  if (v21)
  {
    sub_10000E984(v21);
  }

  if ((v16 & 0x80000000) != 0)
  {
    *&v18 = "crypto_format_backend::read_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
    *(&v18 + 1) = 35;
    v19 = 16;
    sub_100181F1C(&v20, &v18);
    sub_100001FE8(v29, "Crypto couldn't read from inner backend @ ", 42);
    std::ostream::operator<<();
    sub_100001FE8(v29, "/", 1);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1001858A0(&v20);
    std::ios::~ios();
  }

  else
  {
    sub_100030DC4(&v20, a1 + 216);
    v28 = v11;
    v16 = sub_100146C4C(&v20, a2, a3, a4);
    sub_100030E70(&v20);
  }

  return v16;
}

void sub_100181ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100182044(va);
  _Unwind_Resume(a1);
}

void *sub_100181F1C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D02C(a1, a2);
  *a1 = off_1002232B0;
  a1[45] = &off_1002233B0;
  a1[46] = &off_1002233D8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002232B0;
  a1[45] = off_100223338;
  a1[46] = off_100223360;
  return a1;
}

void sub_100182020(_Unwind_Exception *a1)
{
  sub_1001858A0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100182044(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001858A0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100182088(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = sub_100181CC8(a1, v13, 1uLL, v8, v18);
    if (result)
    {
      return result;
    }

    v14 = v9;
    if (v6 >= (v7 - v9))
    {
      v15 = v7 - v9;
    }

    else
    {
      v15 = v6;
    }

    memcpy(v4, (*(a1 + 384) + v14), v15);
    v6 -= v15;
    v4 += v15;
    v8 += v7;
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    sub_10009386C(v18, (a2 + 6));
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v18[0] = 0;
  }

  v19 = v10;
  result = sub_100181CC8(a1, v4, v6 / v7, v8, v18);
  if (!result)
  {
    v12 = v6 % v7;
    if (!(v6 % v7))
    {
      return *(a2 + 4);
    }

    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v16 = v6 - v12;
    v17 = *(a1 + 384);
    v18[0] = 0;
    v19 = 0;
    result = sub_100181CC8(a1, v17, 1uLL, v16 + v8, v18);
    if (!result)
    {
      memcpy(&v4[v16], *(a1 + 384), v12);
      return *(a2 + 4);
    }
  }

  return result;
}

uint64_t sub_100182214(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = **(a1 + 48);
  if (*(a1 + 392))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 52);
  sub_100030DC4(&v21, a1 + 64);
  v29 = v12;
  v13 = sub_100146C4C(&v21, a2, a3, a4);
  sub_100030E70(&v21);
  if (!v13)
  {
    v14 = *(a1 + 24);
    v15 = v11 + a4;
    v16 = *(sub_100195B38() + 1);
    v17 = v12 * a3;
    v21 = a2;
    v22 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = v17;
    v24 = v15;
    v25 = v17;
    v26 = 0;
    v27[0] = 0;
    v28 = 0;
    if (*(a5 + 56))
    {
      sub_10009386C(v27, a5);
      v28 = 1;
    }

    v13 = (*(*v14 + 120))(v14, &v21);
    if (v22)
    {
      sub_10000E984(v22);
    }

    if ((v13 & 0x80000000) != 0)
    {
      *&v19 = "crypto_format_backend::write_aligned(char *, ssize_t, uint64_t, const std::optional<sg_per_io_crypto> &)";
      *(&v19 + 1) = 36;
      v20 = 16;
      sub_100182464(&v21, &v19);
      sub_100001FE8(v30, "Crypto couldn't write to inner backend @ ", 41);
      std::ostream::operator<<();
      sub_100001FE8(v30, "/", 1);
      std::ostream::operator<<();
      std::ostream::~ostream();
      sub_100186038(&v21);
      std::ios::~ios();
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

void sub_100182420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10018258C(va);
  _Unwind_Resume(a1);
}

void *sub_100182464(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D0F4(a1, a2);
  *a1 = off_1002234D0;
  a1[45] = &off_1002235D0;
  a1[46] = &off_1002235F8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002234D0;
  a1[45] = off_100223558;
  a1[46] = off_100223580;
  return a1;
}

void sub_100182568(_Unwind_Exception *a1)
{
  sub_100186038(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018258C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186038(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001825D0(uint64_t a1, char **a2)
{
  v4 = *a2;
  v6 = a2[2];
  v5 = a2[3];
  v7 = *(**(a1 + 48) + 52);
  v8 = v5 / v7 * v7;
  v9 = v5 % v7;
  if (v5 % v7)
  {
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      return 4294967194;
    }

    v13 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100181CC8(a1, v13, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v14 = v6 >= (v7 - v9) ? v7 - v9 : v6;
    memcpy(*(a1 + 384), &v4[v9], v14);
    v15 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100182214(a1, v15, 1uLL, v8, v22);
    if (result)
    {
      return result;
    }

    v6 -= v14;
    v4 += v14;
    v8 += v14;
  }

  if (a2[5])
  {
    if (v6 >= v7)
    {
      v16 = 0;
      while (1)
      {
        memcpy(*(a1 + 384), &v4[v16], v7);
        v17 = *(a1 + 384);
        if ((a2[13] & 1) != 0 && *(a2 + 12))
        {
          sub_100093838((a2 + 6), a2[3], v16, v21);
          sub_10009386C(v22, v21);
          v18 = 1;
        }

        else
        {
          v18 = 0;
          v22[0] = 0;
        }

        v23 = v18;
        result = sub_100182214(a1, v17, 1uLL, v8 + v16, v22);
        if (result)
        {
          return result;
        }

        v6 -= v7;
        v16 += v7;
        if (v6 < v7)
        {
          v4 += v16;
          v8 += v16;
          break;
        }
      }
    }
  }

  else
  {
    v10 = v6 / v7;
    if (*(a2 + 104) == 1 && *(a2 + 12))
    {
      sub_10009386C(v22, (a2 + 6));
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v22[0] = 0;
    }

    v23 = v11;
    result = sub_100182214(a1, v4, v6 / v7, v8, v22);
    if (result)
    {
      return result;
    }

    v4 += v10 * v7;
    v8 += v10 * v7;
    v6 %= v7;
  }

  if (!v6)
  {
    return *(a2 + 4);
  }

  if (*(a2 + 104) == 1 && *(a2 + 12))
  {
    return 4294967194;
  }

  v19 = *(a1 + 384);
  v22[0] = 0;
  v23 = 0;
  result = sub_100181CC8(a1, v19, 1uLL, v8, v22);
  if (!result)
  {
    memcpy(*(a1 + 384), v4, v6);
    v20 = *(a1 + 384);
    v22[0] = 0;
    v23 = 0;
    result = sub_100182214(a1, v20, 1uLL, v8, v22);
    if (!result)
    {
      return *(a2 + 4);
    }
  }

  return result;
}

void sub_100182848(uint64_t a1)
{
  v1 = *(a1 + 408);
  v2 = *(a1 + 416);
  if (v2 == v1)
  {
    return;
  }

  v4 = *(a1 + 432);
  v5 = &v1[v4 >> 5];
  v6 = *v5 + 128 * (v4 & 0x1F);
  if (v6 == *(v1 + (((*(a1 + 440) + v4) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((*(a1 + 440) + v4) & 0x1F))
  {
    return;
  }

  v7 = *(**(a1 + 48) + 52);
  v8 = *v5 + 128 * (*(a1 + 432) & 0x1FLL);
  v9 = &v1[v4 >> 5];
  if (v2 != v1)
  {
    v10 = *(v1 + (((v4 + *(a1 + 440)) >> 2) & 0x3FFFFFFFFFFFFFF8)) + 128 * ((v4 + *(a1 + 440)) & 0x1F);
    if (v6 == v10)
    {
      v36 = &v1[v4 >> 5];
      v37 = *v36 + 128 * (*(a1 + 432) & 0x1FLL);
      if (v37 != v8)
      {
        do
        {
          v38 = *(v37 + 112);
          if (v38)
          {
            *(v38 + 16) = 0;
          }

          v39 = *(v37 + 8);
          if (v39)
          {
            sub_10000E984(v39);
          }

          v37 += 128;
          if (v37 - *v36 == 4096)
          {
            v40 = v36[1];
            ++v36;
            v37 = v40;
          }
        }

        while (v37 != v8);
        v1 = *(a1 + 408);
        v2 = *(a1 + 416);
      }

      goto LABEL_63;
    }

    goto LABEL_8;
  }

  if (v6)
  {
    v10 = 0;
LABEL_8:
    v11 = &v1[v4 >> 5];
    if (v10 != v6)
    {
      *v5;
      v12 = ((v4 & 0x1F) << 7) >> 7;
      if (v12 < 0)
      {
        v14 = 30 - v12;
        v13 = ~v14;
        v11 = &v5[-(v14 >> 5)];
      }

      else
      {
        v13 = v12 + 1;
        v11 = &v5[(v12 + 1) >> 5];
      }

      v15 = *v11;
      v6 = *v11 + 128 * (v13 & 0x1F);
      if (v6 == v10)
      {
LABEL_19:
        v6 = v10;
      }

      else
      {
        v16 = *(v8 + 24);
        v17 = *v5 + 128 * (v4 & 0x1F);
        while (1)
        {
          v16 += *(v17 + 16);
          if (v16 != *(v6 + 24) || *(v17 + 120) != *(v6 + 120))
          {
            break;
          }

          v18 = v6 + 128;
          if (v6 + 128 - v15 == 4096)
          {
            v19 = v11[1];
            ++v11;
            v15 = v19;
            v18 = v19;
          }

          v17 = v6;
          v6 = v18;
          if (v18 == v10)
          {
            goto LABEL_19;
          }
        }
      }
    }

    v20 = (v8 + 120);
    v21 = 64;
    if (!*(v8 + 120))
    {
      v21 = 216;
    }

    sub_100030DC4(v59, a1 + v21);
    v60 = v7;
    v44 = *(a1 + 24);
    v51 = v9;
    v52 = v8;
    v49 = v11;
    v50 = v6;
    if (*(a1 + 392))
    {
      v45 = 0;
    }

    else
    {
      v45 = *(**(a1 + 48) + 64);
    }

    v22 = *v20;
    v23 = vm_page_size;
    sub_100148204(*v20, v61);
    if (v8 == v6)
    {
      v24 = 0;
      goto LABEL_50;
    }

    sub_100030254(v46, v8);
    v24 = 0;
    v25 = v48 / v23 * v23;
    v26 = v8;
    v27 = v9;
    while (1)
    {
      sub_100030254(&v63, v26);
      if (!v62)
      {
        sub_10001583C();
      }

      if ((*(*v62 + 48))(v62, &v63))
      {
        v28 = v65 + v66 - v25;
        if (v28 % v23)
        {
          v29 = v23 - v28 % v23;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29 + v28;
        v24 += v30;
        v25 += v30;
      }

      else
      {
        v31 = v23;
        if (v66 % v7)
        {
          goto LABEL_36;
        }

        if (v65 % v7)
        {
          v31 = 0;
LABEL_36:
          v32 = v31 + v24;
          if ((v65 + v66) % v7)
          {
            v33 = v23;
          }

          else
          {
            v33 = 0;
          }

          v24 = v32 + v33;
          v25 = (v7 - 1 + v65 + v66) / v7 * v7;
          goto LABEL_40;
        }

        v25 = v65 + v66;
      }

LABEL_40:
      if (v64)
      {
        sub_10000E984(v64);
      }

      v26 += 128;
      if (v26 - *v27 == 4096)
      {
        v34 = v27[1];
        ++v27;
        v26 = v34;
      }

      if (v26 == v6)
      {
        if (v47)
        {
          sub_10000E984(v47);
        }

LABEL_50:
        sub_100147DC0(&v53, v24);
        sub_1000320D4(v61);
        v54 = v59;
        v55 = v44;
        v56 = v22;
        v57 = v45;
        if (v52 == v50)
        {
          v35 = 0;
        }

        else
        {
          v35 = 4 * (v49 - v51) - ((v52 - *v51) >> 7) + ((v50 - *v49) >> 7);
        }

        v58 = v35;
        is_mul_ok(3 * v35, 0x18uLL);
        operator new[]();
      }
    }
  }

LABEL_63:
  *(a1 + 440) = 0;
  v41 = v2 - v1;
  if (v41 >= 3)
  {
    do
    {
      operator delete(*v1);
      v42 = *(a1 + 416);
      v1 = (*(a1 + 408) + 8);
      *(a1 + 408) = v1;
      v41 = (v42 - v1) >> 3;
    }

    while (v41 > 2);
  }

  if (v41 == 1)
  {
    v43 = 16;
  }

  else
  {
    if (v41 != 2)
    {
      return;
    }

    v43 = 32;
  }

  *(a1 + 432) = v43;
}

void sub_1001833F0(_Unwind_Exception *a1)
{
  sub_1001838DC(&STACK[0x278]);
  sub_100030E70(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void sub_1001835B8(uint64_t a1)
{
  v2 = sub_100147780(a1);
  if (v2 < 0)
  {

    sub_10018D458(a1 + 224, v2);
  }
}

void *sub_100183604(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D5A4(a1, a2);
  *a1 = off_1002236F0;
  a1[45] = &off_1002237F0;
  a1[46] = &off_100223818;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002236F0;
  a1[45] = off_100223778;
  a1[46] = off_1002237A0;
  return a1;
}

void sub_100183708(_Unwind_Exception *a1)
{
  sub_1001867D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10018372C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001867D0(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100183770(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10018D66C(a1, a2);
  *a1 = off_100223910;
  a1[45] = &off_100223A10;
  a1[46] = &off_100223A38;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100223910;
  a1[45] = off_100223998;
  a1[46] = off_1002239C0;
  return a1;
}

void sub_100183874(_Unwind_Exception *a1)
{
  sub_100186F68(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100183898(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100186F68(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001838DC(uint64_t a1)
{
  sub_100147730(a1);
  (*(**(a1 + 224) + 152))(*(a1 + 224));
  sub_10018D458(a1 + 224, *(a1 + 304));

  return sub_10003172C(a1);
}

uint64_t sub_100183954(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (*(a1 + 392))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(**(a1 + 48) + 64);
  }

  return (*(*v3 + 24))(v3, v4 + a2);
}

uint64_t sub_1001839A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 392);
  v4 = **(a1 + 48);
  if ((v3 & 2) == 0)
  {
    *(v4 + 56) = a2;
  }

  v5 = *(a1 + 24);
  if (v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 64);
  }

  v7 = (*(*v5 + 56))(v5, (a2 + *(v4 + 52) - 1) / *(v4 + 52) * *(v4 + 52) + v6);
  if (!v7)
  {
    sub_100180660(**(a1 + 48), v18);
    v8 = *(sub_100195B38() + 1);
    v11 = v18;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = xmmword_1001C9EE0;
    v14 = 76;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v9 = (*(**(a1 + 24) + 120))(*(a1 + 24), &v11);
    if (v13 == v9)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v12)
    {
      sub_10000E984(v12);
    }
  }

  return v7;
}

void sub_100183AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_10000E984(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100183B24(void *a1, uint64_t a2, uint64_t *a3)
{
  (*(**a2 + 80))(&v8);
  sub_1000440E0(a1, &v8);
  if (v9)
  {
    sub_10000E984(v9);
  }

  v5 = *a3;
  v6 = a3[1];
  a1[5] = off_100202EA0;
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *a3;
  }

  *a1 = off_100222C90;
  a1[5] = off_100222D68;
  sub_100183CCC(v5, 0);
  sub_100183CCC(*a3, 1);
  a1[46] = sub_100146634((a1 + 8));
  a1[47] = sub_100146634((a1 + 27));
  v7 = *(**a3 + 52);
  operator new[]();
}

void sub_100183C88(_Unwind_Exception *a1)
{
  sub_100030E70((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100183CCC(uint64_t a1, int a2)
{
  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = a2;
  v2 = *(a1 + 80);
  if (v2 == -1)
  {
    sub_100015D74();
  }

  v8 = &v4;
  return (off_100223B18[v2])(&v8, a1 + 64);
}

void sub_100183D30(void *a1, uint64_t a2, void *a3)
{
  sub_1000440E0(a1, a3);
  v5 = *(a2 + 48);
  v6 = *(a2 + 56);
  a1[5] = off_100202EA0;
  a1[6] = v5;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = a1[6];
  }

  *a1 = off_100222C90;
  a1[5] = off_100222D68;
  sub_100183CCC(v5, 0);
  sub_100183CCC(a1[6], 1);
  a1[46] = sub_100146634((a1 + 8));
  a1[47] = sub_100146634((a1 + 27));
  v7 = *(**(a2 + 48) + 52);
  operator new[]();
}

void sub_100183E4C(_Unwind_Exception *a1)
{
  sub_100030E70((v1 + 8));
  v1[5] = v2;
  v4 = v1[7];
  if (v4)
  {
    sub_10000E984(v4);
  }

  sub_10004413C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100183ED4(uint64_t a1)
{
  if ((*(a1 + 392) & 2) != 0 || (result = *(**(a1 + 48) + 56)) == 0)
  {
    v3 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    if (*(a1 + 392))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(**(a1 + 48) + 64);
    }

    if (v3 <= v4)
    {
      return 0;
    }

    else
    {
      v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
      if (*(a1 + 392))
      {
        v6 = 0;
      }

      else
      {
        v6 = *(**(a1 + 48) + 64);
      }

      return v5 - v6;
    }
  }

  return result;
}

void sub_100183FAC(void *a1)
{
  sub_10018763C(a1);

  operator delete();
}

void sub_100183FF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100030254(&v7, a2);
  sub_100030254(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 0;
  sub_100187878((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_1001840E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000E984(a24);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_100184134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  LOBYTE(v13) = 0;
  v14 = 0;
  v16 = &v17;
  v17 = &v13;
  v15 = 0;
  sub_100030254(&v7, a2);
  sub_100030254(v9, &v7);
  v11 = v17;
  v5 = v17;
  v17 = 0;
  *(v5 + 2) = &v11;
  v12 = 1;
  sub_100187878((a1 + 400), v9);
  if (v11)
  {
    *(v11 + 2) = 0;
  }

  if (v10)
  {
    sub_10000E984(v10);
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  *a3 = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  if (v14 == 1)
  {
    *a3 = v13;
    *(a3 + 4) = 1;
  }

  v6 = v16;
  *(a3 + 16) = v16;
  if (v6)
  {
    *v6 = a3;
  }

  if (v17)
  {
    *(v17 + 2) = 0;
  }
}

void sub_100184228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37)
  {
    *(a37 + 16) = 0;
  }

  if (a24)
  {
    sub_10000E984(a24);
  }

  if (a10)
  {
    sub_10000E984(a10);
  }

  v39 = *(v37 - 40);
  if (v39)
  {
    *(v39 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

void sub_10018427C(uint64_t a1)
{
  sub_10018763C((a1 - 40));

  operator delete();
}

void sub_1001842B8(uint64_t a1)
{
  *a1 = off_100222C38;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_1000285E0(a1 + 8, *(a1 + 16));

  operator delete();
}

void *sub_100184330@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) == 5)
  {
    v4 = *(*result + 48) - *(*result + 40);
    v8[0] = *(*result + 40);
    v8[1] = v4;
    sub_100146500(&v9, v8);
    sub_100145770(a3);
  }

  v5 = result[1];
  v6 = *(v5 + 40);
  v7 = *(v5 + 48) - v6;
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = 1;
  return result;
}

void sub_1001843CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

void sub_1001843F8(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_100015B70();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void *sub_100184530(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_100040450(result, a2);
  }

  return result;
}

void sub_100184588(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001845A4(uint64_t a1)
{
  *a1 = off_100222C38;
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  sub_1000285E0(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t sub_10018468C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100222E48))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001846D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184970(v1);

  return std::ios::~ios();
}

uint64_t sub_100184724(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184970(v1);

  return std::ios::~ios();
}

void sub_100184784(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100184970(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001847EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100184828(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_100184894(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100184970(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001848F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100184970(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184970(uint64_t a1)
{
  *a1 = off_100223008;
  sub_100184ADC(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100184ADC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100184C8C((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100184C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100184C54(uint64_t a1)
{
  sub_100184970(a1);

  operator delete();
}

int *sub_100184C8C(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 429;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 429;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100184E70(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185108(v1);

  return std::ios::~ios();
}

uint64_t sub_100184EBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185108(v1);

  return std::ios::~ios();
}

void sub_100184F1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100185108(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100184F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100184FC0(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_10018502C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100185108(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185090(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100185108(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100185108(uint64_t a1)
{
  *a1 = off_100223228;
  sub_100185274(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100185274(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100185424((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_1001853C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001853EC(uint64_t a1)
{
  sub_100185108(a1);

  operator delete();
}

int *sub_100185424(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 437;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 437;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100185608(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001858A0(v1);

  return std::ios::~ios();
}

uint64_t sub_100185654(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001858A0(v1);

  return std::ios::~ios();
}

void sub_1001856B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001858A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10018571C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100185758(_BYTE *a1, int a2)
{
  v2 = a2;
  if (a1[64] == 1)
  {
    if (a2 == -1)
    {
      (*(*a1 + 48))(a1);
    }

    else
    {
      std::ostream::put();
    }
  }

  return v2;
}

void sub_1001857C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001858A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100185828(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001858A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001858A0(uint64_t a1)
{
  *a1 = off_100223448;
  sub_100185A0C(a1);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  std::locale::~locale((a1 + 112));
  std::ostream::~ostream();
  std::ios::~ios();
  std::locale::~locale((a1 + 8));
  return a1;
}

uint64_t sub_100185A0C(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = (a1 + 96);
    v3 = a1 + 96 + *(*(a1 + 96) - 24);
    if ((*(v3 + 32) & 5) == 0)
    {
      (*(**(v3 + 40) + 32))(__p);
      if (v7 >= 1)
      {
        sub_100028B04(a1 + 104, __p);
        sub_100185BBC((a1 + 72), __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }

        std::ios_base::clear((v2 + *(*v2 - 24)), 0);
        sub_100010B0C(__p, "");
        sub_100001C58(a1 + 104, __p);
        if (v6 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void sub_100185B58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100185B84(uint64_t a1)
{
  sub_1001858A0(a1);

  operator delete();
}

int *sub_100185BBC(uint64_t *a1, uint64_t *a2)
{
  v4 = *(a1 + 2);
  v5 = *__error();
  if (sub_1000E95F0())
  {
    v6 = sub_1000E957C();
    os_log_type_enabled(v6, *(a1 + 16));
    v7 = *a1;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 68158466;
    v17 = v4;
    v18 = 2080;
    v19 = v7;
    v20 = 2048;
    v21 = 525;
    v22 = 2082;
    v23 = v8;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      fprintf(__stderrp, "%s\n", v9);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C();
    v12 = *(a1 + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 68158466;
      v17 = v4;
      v18 = 2080;
      v19 = v13;
      v20 = 2048;
      v21 = 525;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}