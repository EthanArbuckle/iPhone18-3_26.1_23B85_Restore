uint64_t sub_1001588F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015892C(_BYTE *a1, int a2)
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

void sub_100158998(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100158A74(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001589FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100158A74(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100158A74(uint64_t a1)
{
  *a1 = off_10021CB50;
  sub_100158BE0(a1);
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

uint64_t sub_100158BE0(uint64_t a1)
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
        sub_100158D90((a1 + 72), __p);
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

void sub_100158D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100158D58(uint64_t a1)
{
  sub_100158A74(a1);

  operator delete();
}

int *sub_100158D90(uint64_t *a1, uint64_t *a2)
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
    v21 = 67;
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
      v21 = 67;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100158F74(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015920C(v1);

  return std::ios::~ios();
}

uint64_t sub_100158FC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015920C(v1);

  return std::ios::~ios();
}

void sub_100159020(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015920C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100159088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001590C4(_BYTE *a1, int a2)
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

void sub_100159130(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015920C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100159194(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015920C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015920C(uint64_t a1)
{
  *a1 = off_10021CD70;
  sub_100159378(a1);
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

uint64_t sub_100159378(uint64_t a1)
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
        sub_100159528((a1 + 72), __p);
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

void sub_1001594C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001594F0(uint64_t a1)
{
  sub_10015920C(a1);

  operator delete();
}

int *sub_100159528(uint64_t *a1, uint64_t *a2)
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
    v21 = 96;
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
      v21 = 96;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015970C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001599A4(v1);

  return std::ios::~ios();
}

uint64_t sub_100159758(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001599A4(v1);

  return std::ios::~ios();
}

void sub_1001597B8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001599A4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100159820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015985C(_BYTE *a1, int a2)
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

void sub_1001598C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001599A4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015992C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001599A4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001599A4(uint64_t a1)
{
  *a1 = off_10021CF90;
  sub_100159B10(a1);
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

uint64_t sub_100159B10(uint64_t a1)
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
        sub_100159CC0((a1 + 72), __p);
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

void sub_100159C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100159C88(uint64_t a1)
{
  sub_1001599A4(a1);

  operator delete();
}

int *sub_100159CC0(uint64_t *a1, uint64_t *a2)
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
    v21 = 104;
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
      v21 = 104;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100159EA4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A13C(v1);

  return std::ios::~ios();
}

uint64_t sub_100159EF0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A13C(v1);

  return std::ios::~ios();
}

void sub_100159F50(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A13C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100159FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100159FF4(_BYTE *a1, int a2)
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

void sub_10015A060(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A13C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015A0C4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A13C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015A13C(uint64_t a1)
{
  *a1 = off_10021D1B0;
  sub_10015A2A8(a1);
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

uint64_t sub_10015A2A8(uint64_t a1)
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
        sub_10015A458((a1 + 72), __p);
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

void sub_10015A3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015A420(uint64_t a1)
{
  sub_10015A13C(a1);

  operator delete();
}

int *sub_10015A458(uint64_t *a1, uint64_t *a2)
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
    v21 = 209;
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
      v21 = 209;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t *sub_10015A63C(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  v5 = *(v4 + 8);
  v6 = (*v4 + 16 * v5);
  if (v5 == *(v4 + 16))
  {
    sub_1000DA740(v4, v6, 1, a2, &v8);
  }

  else
  {
    *v6 = *a2;
    ++*(v4 + 8);
  }

  return a1;
}

uint64_t sub_10015A6A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A940(v1);

  return std::ios::~ios();
}

uint64_t sub_10015A6F4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A940(v1);

  return std::ios::~ios();
}

void sub_10015A754(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015A940(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015A7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015A7F8(_BYTE *a1, int a2)
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

void sub_10015A864(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015A940(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015A8C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015A940(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015A940(uint64_t a1)
{
  *a1 = off_10021D3D0;
  sub_10015AAAC(a1);
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

uint64_t sub_10015AAAC(uint64_t a1)
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
        sub_10015AC5C((a1 + 72), __p);
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

void sub_10015ABF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015AC24(uint64_t a1)
{
  sub_10015A940(a1);

  operator delete();
}

int *sub_10015AC5C(uint64_t *a1, uint64_t *a2)
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
    v21 = 408;
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
      v21 = 408;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015AE40(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B0D8(v1);

  return std::ios::~ios();
}

uint64_t sub_10015AE8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B0D8(v1);

  return std::ios::~ios();
}

void sub_10015AEEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B0D8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015AF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015AF90(_BYTE *a1, int a2)
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

void sub_10015AFFC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B0D8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015B060(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B0D8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015B0D8(uint64_t a1)
{
  *a1 = off_10021D5F0;
  sub_10015B244(a1);
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

uint64_t sub_10015B244(uint64_t a1)
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
        sub_10015B3F4((a1 + 72), __p);
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

void sub_10015B390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015B3BC(uint64_t a1)
{
  sub_10015B0D8(a1);

  operator delete();
}

int *sub_10015B3F4(uint64_t *a1, uint64_t *a2)
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
    v21 = 412;
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
      v21 = 412;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015B5D8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B870(v1);

  return std::ios::~ios();
}

uint64_t sub_10015B624(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B870(v1);

  return std::ios::~ios();
}

void sub_10015B684(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015B870(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015B6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015B728(_BYTE *a1, int a2)
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

void sub_10015B794(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015B870(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015B7F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015B870(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015B870(uint64_t a1)
{
  *a1 = off_10021D810;
  sub_10015B9DC(a1);
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

uint64_t sub_10015B9DC(uint64_t a1)
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
        sub_10015BB8C((a1 + 72), __p);
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

void sub_10015BB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015BB54(uint64_t a1)
{
  sub_10015B870(a1);

  operator delete();
}

int *sub_10015BB8C(uint64_t *a1, uint64_t *a2)
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
    v21 = 494;
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
      v21 = 494;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015BD70(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C008(v1);

  return std::ios::~ios();
}

uint64_t sub_10015BDBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C008(v1);

  return std::ios::~ios();
}

void sub_10015BE1C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C008(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015BE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015BEC0(_BYTE *a1, int a2)
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

void sub_10015BF2C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C008(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015BF90(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C008(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015C008(uint64_t a1)
{
  *a1 = off_10021DA30;
  sub_10015C174(a1);
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

uint64_t sub_10015C174(uint64_t a1)
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
        sub_10015C324((a1 + 72), __p);
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

void sub_10015C2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015C2EC(uint64_t a1)
{
  sub_10015C008(a1);

  operator delete();
}

int *sub_10015C324(uint64_t *a1, uint64_t *a2)
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
    v21 = 509;
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
      v21 = 509;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015C508(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C7A0(v1);

  return std::ios::~ios();
}

uint64_t sub_10015C554(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C7A0(v1);

  return std::ios::~ios();
}

void sub_10015C5B4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015C7A0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015C658(_BYTE *a1, int a2)
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

void sub_10015C6C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015C7A0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015C728(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015C7A0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015C7A0(uint64_t a1)
{
  *a1 = off_10021DC50;
  sub_10015C90C(a1);
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

uint64_t sub_10015C90C(uint64_t a1)
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
        sub_10015CABC((a1 + 72), __p);
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

void sub_10015CA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015CA84(uint64_t a1)
{
  sub_10015C7A0(a1);

  operator delete();
}

int *sub_10015CABC(uint64_t *a1, uint64_t *a2)
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
    v21 = 521;
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
      v21 = 521;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015CCA0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015CF38(v1);

  return std::ios::~ios();
}

uint64_t sub_10015CCEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015CF38(v1);

  return std::ios::~ios();
}

void sub_10015CD4C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015CF38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015CDB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015CDF0(_BYTE *a1, int a2)
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

void sub_10015CE5C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015CF38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015CEC0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015CF38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015CF38(uint64_t a1)
{
  *a1 = off_10021DE70;
  sub_10015D0A4(a1);
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

uint64_t sub_10015D0A4(uint64_t a1)
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
        sub_10015D254((a1 + 72), __p);
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

void sub_10015D1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D21C(uint64_t a1)
{
  sub_10015CF38(a1);

  operator delete();
}

int *sub_10015D254(uint64_t *a1, uint64_t *a2)
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
    v21 = 535;
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
      v21 = 535;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015D438(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015D6D0(v1);

  return std::ios::~ios();
}

uint64_t sub_10015D484(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015D6D0(v1);

  return std::ios::~ios();
}

void sub_10015D4E4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015D6D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015D588(_BYTE *a1, int a2)
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

void sub_10015D5F4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015D6D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015D658(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015D6D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015D6D0(uint64_t a1)
{
  *a1 = off_10021E090;
  sub_10015D83C(a1);
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

uint64_t sub_10015D83C(uint64_t a1)
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
        sub_10015D9EC((a1 + 72), __p);
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

void sub_10015D988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D9B4(uint64_t a1)
{
  sub_10015D6D0(a1);

  operator delete();
}

int *sub_10015D9EC(uint64_t *a1, uint64_t *a2)
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
    v21 = 540;
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
      v21 = 540;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015DBD0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015DE68(v1);

  return std::ios::~ios();
}

uint64_t sub_10015DC1C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015DE68(v1);

  return std::ios::~ios();
}

void sub_10015DC7C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015DE68(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015DCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015DD20(_BYTE *a1, int a2)
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

void sub_10015DD8C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015DE68(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015DDF0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015DE68(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015DE68(uint64_t a1)
{
  *a1 = off_10021E2B0;
  sub_10015DFD4(a1);
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

uint64_t sub_10015DFD4(uint64_t a1)
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
        sub_10015E184((a1 + 72), __p);
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

void sub_10015E120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015E14C(uint64_t a1)
{
  sub_10015DE68(a1);

  operator delete();
}

int *sub_10015E184(uint64_t *a1, uint64_t *a2)
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
    v21 = 552;
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
      v21 = 552;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015E368(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015E600(v1);

  return std::ios::~ios();
}

uint64_t sub_10015E3B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015E600(v1);

  return std::ios::~ios();
}

void sub_10015E414(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015E600(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015E47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015E4B8(_BYTE *a1, int a2)
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

void sub_10015E524(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015E600(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015E588(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015E600(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015E600(uint64_t a1)
{
  *a1 = off_10021E4D0;
  sub_10015E76C(a1);
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

uint64_t sub_10015E76C(uint64_t a1)
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
        sub_10015E91C((a1 + 72), __p);
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

void sub_10015E8B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015E8E4(uint64_t a1)
{
  sub_10015E600(a1);

  operator delete();
}

int *sub_10015E91C(uint64_t *a1, uint64_t *a2)
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
    v21 = 563;
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
      v21 = 563;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015EB00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015ED98(v1);

  return std::ios::~ios();
}

uint64_t sub_10015EB4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015ED98(v1);

  return std::ios::~ios();
}

void sub_10015EBAC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015ED98(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015EC14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015EC50(_BYTE *a1, int a2)
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

void sub_10015ECBC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015ED98(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015ED20(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015ED98(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015ED98(uint64_t a1)
{
  *a1 = off_10021E6F0;
  sub_10015EF04(a1);
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

uint64_t sub_10015EF04(uint64_t a1)
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
        sub_10015F0B4((a1 + 72), __p);
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

void sub_10015F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015F07C(uint64_t a1)
{
  sub_10015ED98(a1);

  operator delete();
}

int *sub_10015F0B4(uint64_t *a1, uint64_t *a2)
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
    v21 = 570;
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
      v21 = 570;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015F298(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015F530(v1);

  return std::ios::~ios();
}

uint64_t sub_10015F2E4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015F530(v1);

  return std::ios::~ios();
}

void sub_10015F344(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015F530(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015F3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015F3E8(_BYTE *a1, int a2)
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

void sub_10015F454(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015F530(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015F4B8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015F530(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015F530(uint64_t a1)
{
  *a1 = off_10021E910;
  sub_10015F69C(a1);
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

uint64_t sub_10015F69C(uint64_t a1)
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
        sub_10015F84C((a1 + 72), __p);
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

void sub_10015F7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015F814(uint64_t a1)
{
  sub_10015F530(a1);

  operator delete();
}

int *sub_10015F84C(uint64_t *a1, uint64_t *a2)
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
    v21 = 580;
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
      v21 = 580;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10015FA30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015FCC8(v1);

  return std::ios::~ios();
}

uint64_t sub_10015FA7C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015FCC8(v1);

  return std::ios::~ios();
}

void sub_10015FADC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10015FCC8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015FB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10015FB80(_BYTE *a1, int a2)
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

void sub_10015FBEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10015FCC8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10015FC50(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10015FCC8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10015FCC8(uint64_t a1)
{
  *a1 = off_10021EB30;
  sub_10015FE34(a1);
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

uint64_t sub_10015FE34(uint64_t a1)
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
        sub_10015FFE4((a1 + 72), __p);
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

void sub_10015FF80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015FFAC(uint64_t a1)
{
  sub_10015FCC8(a1);

  operator delete();
}

int *sub_10015FFE4(uint64_t *a1, uint64_t *a2)
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
    v21 = 593;
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
      v21 = 593;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001601C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160460(v1);

  return std::ios::~ios();
}

uint64_t sub_100160214(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160460(v1);

  return std::ios::~ios();
}

void sub_100160274(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160460(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001602DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100160318(_BYTE *a1, int a2)
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

void sub_100160384(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160460(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001603E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160460(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160460(uint64_t a1)
{
  *a1 = off_10021ED50;
  sub_1001605CC(a1);
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

uint64_t sub_1001605CC(uint64_t a1)
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
        sub_10016077C((a1 + 72), __p);
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

void sub_100160718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100160744(uint64_t a1)
{
  sub_100160460(a1);

  operator delete();
}

int *sub_10016077C(uint64_t *a1, uint64_t *a2)
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
    v21 = 606;
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
      v21 = 606;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100160960(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160BF8(v1);

  return std::ios::~ios();
}

uint64_t sub_1001609AC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160BF8(v1);

  return std::ios::~ios();
}

void sub_100160A0C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100160BF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100160AB0(_BYTE *a1, int a2)
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

void sub_100160B1C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100160BF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100160B80(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100160BF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100160BF8(uint64_t a1)
{
  *a1 = off_10021EF70;
  sub_100160D64(a1);
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

uint64_t sub_100160D64(uint64_t a1)
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
        sub_100160F14((a1 + 72), __p);
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

void sub_100160EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100160EDC(uint64_t a1)
{
  sub_100160BF8(a1);

  operator delete();
}

int *sub_100160F14(uint64_t *a1, uint64_t *a2)
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
    v21 = 614;
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
      v21 = 614;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001610F8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161390(v1);

  return std::ios::~ios();
}

uint64_t sub_100161144(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161390(v1);

  return std::ios::~ios();
}

void sub_1001611A4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161390(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100161248(_BYTE *a1, int a2)
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

void sub_1001612B4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161390(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100161318(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161390(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100161390(uint64_t a1)
{
  *a1 = off_10021F190;
  sub_1001614FC(a1);
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

uint64_t sub_1001614FC(uint64_t a1)
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
        sub_1001616AC((a1 + 72), __p);
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

void sub_100161648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100161674(uint64_t a1)
{
  sub_100161390(a1);

  operator delete();
}

int *sub_1001616AC(uint64_t *a1, uint64_t *a2)
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
    v21 = 623;
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
      v21 = 623;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100161890(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161B28(v1);

  return std::ios::~ios();
}

uint64_t sub_1001618DC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161B28(v1);

  return std::ios::~ios();
}

void sub_10016193C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100161B28(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001619A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001619E0(_BYTE *a1, int a2)
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

void sub_100161A4C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100161B28(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100161AB0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100161B28(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100161B28(uint64_t a1)
{
  *a1 = off_10021F3B0;
  sub_100161C94(a1);
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

uint64_t sub_100161C94(uint64_t a1)
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
        sub_100161E44((a1 + 72), __p);
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

void sub_100161DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100161E0C(uint64_t a1)
{
  sub_100161B28(a1);

  operator delete();
}

int *sub_100161E44(uint64_t *a1, uint64_t *a2)
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
    v21 = 631;
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
      v21 = 631;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100162028(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001622C0(v1);

  return std::ios::~ios();
}

uint64_t sub_100162074(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001622C0(v1);

  return std::ios::~ios();
}

void sub_1001620D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001622C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100162178(_BYTE *a1, int a2)
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

void sub_1001621E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001622C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100162248(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001622C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001622C0(uint64_t a1)
{
  *a1 = off_10021F5D0;
  sub_10016242C(a1);
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

uint64_t sub_10016242C(uint64_t a1)
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
        sub_1001625DC((a1 + 72), __p);
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

void sub_100162578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001625A4(uint64_t a1)
{
  sub_1001622C0(a1);

  operator delete();
}

int *sub_1001625DC(uint64_t *a1, uint64_t *a2)
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
    v21 = 671;
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
      v21 = 671;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001627C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162A58(v1);

  return std::ios::~ios();
}

uint64_t sub_10016280C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162A58(v1);

  return std::ios::~ios();
}

void sub_10016286C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100162A58(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001628D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100162910(_BYTE *a1, int a2)
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

void sub_10016297C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100162A58(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001629E0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100162A58(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100162A58(uint64_t a1)
{
  *a1 = off_10021F7F0;
  sub_100162BC4(a1);
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

uint64_t sub_100162BC4(uint64_t a1)
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
        sub_100162D74((a1 + 72), __p);
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

void sub_100162D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100162D3C(uint64_t a1)
{
  sub_100162A58(a1);

  operator delete();
}

int *sub_100162D74(uint64_t *a1, uint64_t *a2)
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
    v21 = 684;
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
      v21 = 684;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100162F58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001631F0(v1);

  return std::ios::~ios();
}

uint64_t sub_100162FA4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001631F0(v1);

  return std::ios::~ios();
}

void sub_100163004(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1001631F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016306C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1001630A8(_BYTE *a1, int a2)
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

void sub_100163114(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1001631F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100163178(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1001631F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001631F0(uint64_t a1)
{
  *a1 = off_10021FA10;
  sub_10016335C(a1);
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

uint64_t sub_10016335C(uint64_t a1)
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
        sub_10016350C((a1 + 72), __p);
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

void sub_1001634A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001634D4(uint64_t a1)
{
  sub_1001631F0(a1);

  operator delete();
}

int *sub_10016350C(uint64_t *a1, uint64_t *a2)
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
    v21 = 844;
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
      v21 = 844;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1001636F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163988(v1);

  return std::ios::~ios();
}

uint64_t sub_10016373C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163988(v1);

  return std::ios::~ios();
}

void sub_10016379C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100163988(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100163840(_BYTE *a1, int a2)
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

void sub_1001638AC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100163988(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100163910(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100163988(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163988(uint64_t a1)
{
  *a1 = off_10021FC30;
  sub_100163AF4(a1);
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

uint64_t sub_100163AF4(uint64_t a1)
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
        sub_100163CA4((a1 + 72), __p);
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

void sub_100163C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100163C6C(uint64_t a1)
{
  sub_100163988(a1);

  operator delete();
}

int *sub_100163CA4(uint64_t *a1, uint64_t *a2)
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
    v21 = 847;
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
      v21 = 847;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100163E88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100164120(v1);

  return std::ios::~ios();
}

uint64_t sub_100163ED4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100164120(v1);

  return std::ios::~ios();
}

void sub_100163F34(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100164120(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100163F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100163FD8(_BYTE *a1, int a2)
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

void sub_100164044(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100164120(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1001640A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100164120(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100164120(uint64_t a1)
{
  *a1 = off_10021FE50;
  sub_10016428C(a1);
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

uint64_t sub_10016428C(uint64_t a1)
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
        sub_10016443C((a1 + 72), __p);
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

void sub_1001643D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100164404(uint64_t a1)
{
  sub_100164120(a1);

  operator delete();
}

int *sub_10016443C(uint64_t *a1, uint64_t *a2)
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
    v21 = 851;
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
      v21 = 851;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1001646A4(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  sub_100164700(a1 + 3, a2);
  return a1;
}

double sub_100164700(void *a1, uint64_t a2)
{
  v3 = sub_100192AE0(a1);
  *v3 = off_10021C798;
  v3[3] = off_10021C888;
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v3[4] = off_10021C8C0;
  v3[5] = v4;
  v3[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v3[5];
  }

  v3[7] = v4 + 8;
  result = 0.0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 6) = 0u;
  return result;
}

uint64_t sub_1001647B0(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 4 * (v5 - v4) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10016489C(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + ((v7 >> 2) & 0x3FFFFFFFFFFFFFF8)) + ((v7 & 0x1F) << 7);
  }

  v9 = sub_100030464(v8, a2);
  v10 = *(a2 + 112);
  v9[15] = *(a2 + 120);
  v9 += 15;
  *(v9 - 2) = v10;
  *(a2 + 120) = 0;
  *(*v9 + 16) = v9;
  v11 = a1[4];
  v12 = a1[5] + 1;
  a1[5] = v12;
  v13 = v11 + v12;
  v14 = a1[1];
  v15 = (v14 + 8 * (v13 >> 5));
  v16 = *v15 + ((v13 & 0x1F) << 7);
  if (a1[2] == v14)
  {
    v16 = 0;
  }

  if (v16 == *v15)
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 128;
}

void *sub_10016489C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x20;
  v3 = v1 - 32;
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
    sub_100017300(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100074E98(a1, &v10);
}

void sub_100164A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100164A70(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021CB50;
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

void sub_100164B20(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164B38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021CD70;
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

void sub_100164BE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164C00(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021CF90;
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

void sub_100164CB0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164CC8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021D1B0;
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

void sub_100164D78(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100164D90(uint64_t a1, char *a2)
{
  if (a2 >> 59)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v4 = operator new(16 * a2);
  v5 = (*a1 + 16 * *(a1 + 8));

  sub_100198A28(a1, v4, a2, v5, 0, 0);
}

uint64_t sub_100164DFC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021D3D0;
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

void sub_100164EAC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100164EC4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021D5F0;
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

void sub_100164F74(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100164F8C(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  if (fstatfs(*(*v1 + 8), &v16) < 0)
  {
    *&v17 = "FileLocal::shared_state_t::init_unmap_zeros()::(anonymous class)::operator()() const";
    *(&v17 + 1) = 76;
    v18 = 16;
    sub_1001651DC(&v13, &v17);
    sub_100001FE8(v15, "fstatfs failed with err code ", 29);
    v7 = *__error();
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100165474(&v13);
    std::ios::~ios();
    v8 = *__error();
    v9 = std::generic_category();
    v10 = *(v2 + 96);
    *(v2 + 80) = v8;
    *(v2 + 88) = v9;
    if (v10 == 1)
    {
      *(v2 + 96) = 0;
    }

    v11 = *__error();
    if (*(v2 + 144) == 1)
    {
      sub_10005715C(v2 + 104);
      *(v2 + 104) = v11;
      *(v2 + 112) = v9;
      *(v2 + 144) = 0;
    }

    else
    {
      *(v2 + 104) = v11;
      *(v2 + 112) = v9;
    }
  }

  else
  {
    f_bsize = v16.f_bsize;
    if ((*(v2 + 96) & 1) == 0)
    {
      *(v2 + 96) = 1;
    }

    *(v2 + 80) = f_bsize;
    if (f_bsize)
    {
      v4 = malloc_type_valloc(f_bsize, 0x8B7C732DuLL);
      if (!v4)
      {
        exception = __cxa_allocate_exception(8uLL);
        v6 = std::bad_alloc::bad_alloc(exception);
      }
    }

    else
    {
      v4 = 0;
    }

    *&v17 = off_1002200F0;
    v19 = &v17;
    v13 = v4;
    sub_100015FBC(v14, &v17);
    sub_10001590C(&v17);
    sub_100165348(v2 + 104, &v13);
    sub_100015888(&v13, 0);
    sub_10001590C(v14);
    v12 = *(v2 + 80);
    if (v12 >= 1)
    {
      bzero(*(v2 + 104), v12);
    }
  }
}

void sub_1001651A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100015888(va, 0);
  sub_10001590C(va1);
  _Unwind_Resume(a1);
}

void *sub_1001651DC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001653AC(a1, a2);
  *a1 = off_10021FED8;
  a1[45] = &off_10021FFD8;
  a1[46] = &off_100220000;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_10021FED8;
  a1[45] = off_10021FF60;
  a1[46] = off_10021FF88;
  return a1;
}

void sub_1001652E0(_Unwind_Exception *a1)
{
  sub_100165474(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100165304(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100165474(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100165348(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 40) == 1)
  {
    sub_10000E46C(a1, a2);
  }

  else
  {
    sub_10005715C(a1);
    v4 = *a2;
    *a2 = 0;
    *a1 = v4;
    sub_100015FBC(a1 + 8, (a2 + 1));
    *(a1 + 40) = 1;
  }

  return a1;
}

uint64_t sub_1001653AC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220070;
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

void sub_10016545C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165474(uint64_t a1)
{
  *a1 = off_100220070;
  sub_1001658B4(a1);
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

void sub_1001655E0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100165474(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100165648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100165684(_BYTE *a1, int a2)
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

uint64_t sub_1001656F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100165474(v1);

  return std::ios::~ios();
}

void sub_10016573C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100165474(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1001657A0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100165474(v1);

  return std::ios::~ios();
}

void sub_100165800(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100165474(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016587C(uint64_t a1)
{
  sub_100165474(a1);

  operator delete();
}

uint64_t sub_1001658B4(uint64_t a1)
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
        sub_100165A28((a1 + 72), __p);
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

void sub_100165A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100165A28(uint64_t *a1, uint64_t *a2)
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
    v21 = 420;
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
      v21 = 420;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100165C9C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100220150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100165CE8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021D810;
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

void sub_100165D98(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165DB0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021DA30;
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

void sub_100165E60(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165E78(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021DC50;
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

void sub_100165F28(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100165F40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021DE70;
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

void sub_100165FF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166008(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E090;
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

void sub_1001660B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001660D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E2B0;
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

void sub_100166180(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166198(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E4D0;
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

void sub_100166248(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166260(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E6F0;
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

void sub_100166310(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166328(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021E910;
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

void sub_1001663D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001663F0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021EB30;
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

void sub_1001664A0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001664B8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021ED50;
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

void sub_100166568(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166580(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021EF70;
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

void sub_100166630(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166648(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F190;
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

void sub_1001666F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100166710(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F3B0;
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

void sub_1001667C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001667D8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F5D0;
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

void sub_100166888(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001668A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021F7F0;
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

void sub_100166950(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100166968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  sub_100030254(&v5, v4);
  v7 += *v3;
  if (v8 == 1)
  {
    v8 = 0;
  }

  sub_100030464(a2, &v5);
  *(a2 + 112) = v4 + 120;
  if (v6)
  {
    sub_10000E984(v6);
  }
}

void sub_1001669EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100166A04(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  v10 = *a4;
  v11 = *a5;
  v25 = *a2;
  v26 = v6;
  v27 = v7;
  v28 = v10;
  if (v9 == v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = ((v9 - *v8) >> 7) + 4 * (v8 - v6) - ((v7 - *v6) >> 7);
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 3);
  if (v13 >= v12)
  {
    v13 = v12;
  }

  if (v13)
  {
    v14 = v13 + ((v7 - *v6) >> 7);
    if (v14 < 1)
    {
      v15 = *&v6[-8 * ((31 - v14) >> 5)] + ((~(31 - v14) & 0x1F) << 7);
    }

    else
    {
      v15 = *&v6[(v14 >> 2) & 0x3FFFFFFFFFFFFFF8] + ((v14 & 0x1F) << 7);
    }

    v16 = 24 * v13 - 24;
    do
    {
      v17 = v16;
      sub_100166968(&v25, v29);
      sub_100030464(&v20, v29);
      v23 = v31;
      v24 = v10;
      v18 = v10;
      if (v30)
      {
        sub_10000E984(v30);
        v18 = v24;
      }

      v19 = sub_100147EF8(a1, &v20, v18);
      if (v19 != v22)
      {
        sub_100148248(a1, &v20, v19, v18);
      }

      if (v21)
      {
        sub_10000E984(v21);
      }

      v7 += 128;
      v27 = v7;
      if (v7 - *v6 == 4096)
      {
        v26 = v6 + 8;
        v7 = *(v6 + 1);
        v27 = v7;
        v6 += 8;
      }

      v10 += 24;
      v28 = v10;
      v16 = v17 - 24;
    }

    while (v7 != v15 || v17);
  }
}

void sub_100166BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a31)
  {
    sub_10000E984(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100166C70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  v4 = *a3;
  return result;
}

uint64_t sub_100166C7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void *sub_100166D50(uint64_t a1, void **a2, const void **a3, size_t *a4)
{
  v4 = *a3;
  memcpy(*a2, *a3, *a4);
  return v4;
}

uint64_t sub_100166D8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100166DD8(uint64_t a1, int a2)
{
  *(a1 + 80) = a2;
  if (*(a1 + 72) != *(a1 + 48))
  {
    do
    {
      sub_100166968(a1 + 56, &v9);
      v3 = v11;
      if (v10)
      {
        sub_10000E984(v10);
      }

      if ((*(*v3 + 4) & 1) == 0)
      {
        *&v7 = "crypto::details::unset_futures_errors_reporter<std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>>::report_errors(int) [It = std::ranges::transform_view<std::ranges::ref_view<container_it<std::__deque_iterator<FileLocal::promise_io_t, FileLocal::promise_io_t *, FileLocal::promise_io_t &, FileLocal::promise_io_t **, long>>>, (lambda at /Library/Caches/com.apple.xbs/Sources/DiskImages2/app/backends/file.cpp:755:24)>::__iterator<false>]";
        *(&v7 + 1) = 587;
        v8 = 16;
        sub_100166F38(&v9, &v7);
        sub_100001FE8(v12, "diskimageuio: report err ", 25);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10016716C(&v9);
        std::ios::~ios();
        v4 = *v3;
        *v4 = *(a1 + 80);
        *(v4 + 4) = 1;
        sub_100032F74(v3);
      }

      v5 = *(a1 + 64);
      v6 = *(a1 + 72) + 128;
      *(a1 + 72) = v6;
      if (v6 - *v5 == 4096)
      {
        *(a1 + 64) = v5 + 1;
        v6 = v5[1];
        *(a1 + 72) = v6;
      }
    }

    while (v6 != *(a1 + 48));
  }
}

void sub_100166F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100167060(va);
  _Unwind_Resume(a1);
}

void *sub_100166F38(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001670A4(a1, a2);
  *a1 = off_100220278;
  a1[45] = &off_100220378;
  a1[46] = &off_1002203A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220278;
  a1[45] = off_100220300;
  a1[46] = off_100220328;
  return a1;
}

void sub_10016703C(_Unwind_Exception *a1)
{
  sub_10016716C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100167060(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016716C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1001670A4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220410;
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

void sub_100167154(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016716C(uint64_t a1)
{
  *a1 = off_100220410;
  sub_1001675AC(a1);
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

void sub_1001672D8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016716C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016737C(_BYTE *a1, int a2)
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

uint64_t sub_1001673E8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016716C(v1);

  return std::ios::~ios();
}

void sub_100167434(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016716C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100167498(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016716C(v1);

  return std::ios::~ios();
}

void sub_1001674F8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016716C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100167574(uint64_t a1)
{
  sub_10016716C(a1);

  operator delete();
}

uint64_t sub_1001675AC(uint64_t a1)
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
        sub_100167720((a1 + 72), __p);
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

void sub_1001676F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100167720(uint64_t *a1, uint64_t *a2)
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
    v21 = 60;
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
      v21 = 60;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100167904(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021FA10;
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

void sub_1001679B4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001679CC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021FC30;
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

void sub_100167A7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100167A94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_10021FE50;
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

void sub_100167B44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100167B5C(void *__dst, __int128 *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v10 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v10;
  }

  v12 = *a4;
  v11 = a4[1];
  __dst[3] = a3;
  __dst[4] = v12;
  __dst[5] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 1);
  }

  __dst[6] = sub_1001959C4(v14, v15);
  __dst[7] = v16;
  __dst[8] = a5;
  return __dst;
}

void sub_100167C08(_Unwind_Exception *a1)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_10000E984(v3);
  }

  sub_1001987C4(v1);
  _Unwind_Resume(a1);
}

void sub_100167C28(uint64_t a1, char *a2, uint64_t a3, uint8_t **a4)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *&v6 = AAS3DownloadStreamOpen(v5, 0, 0, 0);
  sub_100132BB4(&v9, &v6);
  sub_100132C94(&v8, &v9);
  sub_100132CC8(&v8, *a4, 0x20uLL);
  sub_100132BE8(&v9, &v8, 0xFFFFFFFFFFFFFFFFLL, 0x4000000000000000uLL, 0, &v7);
  sub_10014EE1C();
}

void sub_100167D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, AAByteStream);
  va_copy(va2, va1);
  v6 = va_arg(va2, AEAContext);
  sub_100132BB8(va);
  sub_100132C98(va1);
  sub_100132BB8(va2);
  _Unwind_Resume(a1);
}

void sub_100167D48(void *a1, char **a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100192AE0(a1);
  *v7 = off_100220490;
  *(v7 + 3) = 0u;
  *(v7 + 5) = 0u;
  v9 = *a2;
  v10 = *(a4 + 8);
  v11[0] = *a4;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100167C28(a1, v9, v8, v11);
}

void sub_100167E40(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = v1[4];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = v1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_100167EB8(void *a1)
{
  sub_100167F7C(a1);

  operator delete();
}

uint64_t sub_100167F70(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = *(v1 + 48);
  v3 = *(v1 + 56);
  return result;
}

void *sub_100167F7C(void *a1)
{
  *a1 = off_100220490;
  v2 = a1[6];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_100168064(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10020F8A0;
  sub_1001680C0(a1 + 3, a2);
  return a1;
}

void *sub_1001680C0(void *a1, void *a2)
{
  v4 = sub_100192AE0(a1);
  *v4 = off_100220490;
  *(v4 + 3) = 0u;
  *(v4 + 5) = 0u;
  v6 = a2[3];
  v5 = a2[4];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v7 = a1[4];
    a1[3] = v6;
    a1[4] = v5;
    if (v7)
    {
      sub_10000E984(v7);
    }
  }

  else
  {
    a1[3] = v6;
    a1[4] = 0;
  }

  v9 = a2[5];
  v8 = a2[6];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a1[6];
  a1[5] = v9;
  a1[6] = v8;
  if (v10)
  {
    sub_10000E984(v10);
  }

  return a1;
}

void *sub_1001681F0(void *a1, __int128 *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_100220578;
  sub_100167B5C(a1 + 3, a2, *a3, a4, *a5);
  return a1;
}

void sub_100168274(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100220578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001682D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_10000E984(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100168328(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v14 = v5;
  v6 = [v5 activeNode];
  if (v6)
  {
    if ([v6 isCache])
    {
      v7 = 1;
    }

    else
    {
      v8 = [v6 parent];
      if (v8)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }

    if (*a3 != a3[1] || (a2 & 1) != 0 || !v7 || v7 == 3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 filePath];
        [objc_claimAutoreleasedReturnValue() path];
        v15 = [objc_claimAutoreleasedReturnValue() UTF8String];
        sub_100092720(&v16, &v15);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100050108(&__dst, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v16;
        }

        operator new();
      }

      v9 = v6;
      v10 = [v9 pluginName];
      sub_100010B0C(&__dst, [v10 UTF8String]);

      [v9 pluginParams];
      operator new();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(150);
    *exception = &off_1002260F0;
    exception[1] = error_code;
    exception[2] = v13;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Stack with cache as top image cannot be opened for writing.";
  }
}

void sub_1001687CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_10005B238(&a11);

  _Unwind_Resume(a1);
}

void sub_100168914(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = [[NSFileHandle alloc] initWithFileDescriptor:a1 closeOnDealloc:0];
  v36 = 0;
  v37 = 0;
  v8 = [DiskImageGraph loadPlistDictFromFileHandle:v7 dict:&v37 error:&v36];
  v9 = v37;
  v10 = v36;
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = [v10 domain];
    if ([v12 isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      v13 = [v11 code] == 167;

      if (v13)
      {
        *a4 = 0;
        a4[1] = 0;
        a4[2] = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    *&v34 = "create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
    *(&v34 + 1) = 34;
    v35 = 16;
    sub_100094DA8(buf, &v34);
    std::ostream::operator<<();
    sub_100094ED0(buf);
    exception = __cxa_allocate_exception(0x40uLL);
    v22 = [v11 code];
    if (v22 >= 0)
    {
      LODWORD(v23) = v22;
    }

    else
    {
      v23 = -v22;
    }

    v21 = std::generic_category();
    v20 = v23;
    v19 = "Failed to read file for pstack parsing";
LABEL_14:
    *exception = &off_1002260F0;
    exception[1] = v20;
    exception[2] = v21;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v19;
  }

  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
LABEL_13:
      exception = __cxa_allocate_exception(0x40uLL);
      v19 = "Cannot initialize pstack disk image without path.";
      v20 = 22;
      v21 = std::generic_category();
      goto LABEL_14;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
    goto LABEL_13;
  }

  v14 = [NSString stringWithUTF8String:a2];
  v15 = [NSURL fileURLWithPath:v14];

  v33 = v11;
  v16 = [[SerializedDiskImageGraph alloc] initWithGraphDB:v9 pstackURL:v15 error:&v33];
  v17 = v33;

  if (!v16)
  {
    v24 = *__error();
    if (sub_1000E95F0())
    {
      *&v34 = 0;
      v25 = sub_1000E957C();
      os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      v26 = [v17 description];
      *buf = 68158210;
      *&buf[4] = 127;
      v39 = 2080;
      v40 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
      v41 = 2112;
      v42 = v26;
      v27 = _os_log_send_and_compose_impl();

      if (v27)
      {
        fprintf(__stderrp, "%s\n", v27);
        free(v27);
      }
    }

    else
    {
      v28 = sub_1000E957C();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v17 description];
        *buf = 0x7F04100302;
        v39 = 2080;
        v40 = "std::vector<diskimage_uio::stack_image_node_ptr_t> create_stack_vector_from_single_fd(int, const std::filesystem::path &, BOOL)";
        v41 = 2112;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%.*s: Failed to create graph from plist: %@.", buf, 0x1Cu);
      }
    }

    *__error() = v24;
    v30 = __cxa_allocate_exception(0x40uLL);
    error_code = make_error_code(161);
    *v30 = &off_1002260F0;
    v30[1] = error_code;
    v30[2] = v32;
    *(v30 + 24) = 0;
    *(v30 + 48) = 0;
    v30[7] = "Failed to create graph from plist.";
  }

  sub_100168328(v16, a3, a4);

  v11 = v17;
LABEL_12:
}

void sub_100168DB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  __cxa_free_exception(v19);

  _Unwind_Resume(a1);
}

uint64_t sub_100168ED4(uint64_t a1)
{
  io_rings_unsubscribe_dest_object(*a1, *(a1 + 8));
  io_rings_release(*a1);
  return a1;
}

uint64_t sub_100169130(uint64_t a1)
{
  io_rings_suspend(*(a1 + 48));
  io_rings_cancel(*(a1 + 48));
  std::mutex::~mutex((a1 + 136));
  std::condition_variable::~condition_variable((a1 + 88));
  sub_100168ED4(a1 + 56);
  sub_10016C350((a1 + 8), 0);
  sub_10016E3E0(a1 + 16);
  return a1;
}

double sub_10016919C(uint64_t a1)
{
  v1 = atomic_load((a1 + 76));
  v2 = atomic_load((a1 + 72));
  if (v2 - v1 < *(*(a1 + 8) + 8))
  {
    v3 = v2;
    while (1)
    {
      atomic_compare_exchange_strong((a1 + 72), &v3, v2 + 1);
      if (v3 == v2)
      {
        break;
      }

      v4 = atomic_load((a1 + 76));
      v5 = v3 - v4;
      v2 = v3;
      if (v5 >= *(*(a1 + 8) + 8))
      {
        return result;
      }
    }

    return io_rings_sqe_allocate(*(a1 + 48));
  }

  return result;
}

void sub_100169208(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  cqe = io_rings_get_cqe(*(a1 + 48));
  if ((v5 & 0x100000000) != 0)
  {
    v7 = cqe;
    v8 = v5;
    add = atomic_fetch_add((a1 + 76), 1u);
    if (atomic_load((a1 + 80)))
    {
      v11 = atomic_load((a1 + 72));
      if (add + 1 == v11)
      {
        std::mutex::lock((a1 + 136));
        std::condition_variable::notify_all((a1 + 88));
        std::mutex::unlock((a1 + 136));
      }
    }

    *a2 = v7;
    *(a2 + 8) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v6;
}

void sub_1001692B4(void *a1, uint64_t (*a2)(uint64_t a1, unsigned __int8 *a2), uint64_t a3)
{
  v6[0] = off_100221028;
  v6[1] = a1;
  v6[3] = v6;
  sub_10005A748(a1, a2, a3, v6);
  sub_100073B14(v6);
  a1[35] = sub_1001694AC(a1);
  v4 = *(*(sub_10005A74C(a1) + 24) - 24);
  a1[36] = v4;
  a1[37] = (*(*v4 + 24))(v4);
  v5 = *(a1[36] + 16);
  sub_100168F10();
}

void sub_100169450(_Unwind_Exception *a1)
{
  sub_100072AB4((v1 + 576));
  std::mutex::~mutex((v1 + 512));
  sub_10014FD8C((v1 + 504));
  sub_100169130(v1 + 304);
  sub_100073B14(v1 + 248);
  sub_1000739E8(v1 + 120);
  _Unwind_Resume(a1);
}

uint64_t sub_1001694AC(uint64_t a1)
{
  v1 = sub_10005A74C(a1);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v1 + 24) - *(v1 + 16)) >> 4) >= 2 && (v2 = *(v1 + 24), *(v2 - 96) == 2) && (*(**(v2 - 88) + 40))(*(v2 - 88)))
  {
    return *(v2 - 88);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100169540(void *a1, unsigned __int8 *a2)
{
  sub_10005A758(a1, v8);
  if (v8[1])
  {
    v4 = sub_1000BC46C(a1, v8, a2);
    if (*a2 - 1 > 1)
    {
      v5 = io_rings_return_status(a1[7], a2, v4, 0);
    }

    else
    {
      v5 = sub_100169604(a1, a2, v8, v4);
    }
  }

  else
  {
    v5 = io_rings_return_status(a1[7], a2, 0xFFFFFFF4, 0);
  }

  v6 = v5;
  sub_100074B3C(v8);
  return v6;
}

void sub_1001695F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100074B3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100169604(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = *(*(*(a3 + 8) + 24) - 16);
  v10 = *(v7 + 16);
  v9 = v7 + 16;
  v8 = v10;
  if (v10 != *(*(*(*(a3 + 8) + 24) - 16) + 24))
  {
    if ((a4 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_10016DA40(v9, v8);
  }

  v11 = *(a1 + 56);

  return io_rings_return_status(v11, a2, a4, 0);
}

void sub_100169D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_10000E984(a23);
  }

  v24 = *(v23 + 48);
  if (v24)
  {
    sub_10000E984(v24);
  }

  JUMPOUT(0x100169D74);
}

uint64_t sub_100169D84(uint64_t a1, unsigned __int8 *a2)
{
  if (sub_1000BC1E8(a2))
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_100169E6C;
    v6[3] = &unk_1002205D8;
    v6[4] = a1;
    v6[5] = a2;
    sub_10014FF04((a1 + 624), v6);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_10016A000;
    v5[3] = &unk_1002205F8;
    v5[4] = a1;
    v5[5] = a2;
    sub_10014FE54((a1 + 624), v5);
  }

  return 0;
}

void sub_100169E6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = atomic_load((v2 + 632));
  if (v3 == 1)
  {
    v4 = *(a1 + 40);
    v5 = *(v2 + 56);

    io_rings_return_status(v5, v4, 0xFFFFFFA7, 0);
  }

  else
  {
    sub_100169F38(v2 + 304);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100169FEC;
    v7[3] = &unk_1002205B8;
    v6 = *(a1 + 40);
    v7[4] = v2;
    v7[5] = v6;
    sub_10014FE54((v2 + 624), v7);
  }
}

void sub_100169F38(uint64_t a1)
{
  v1 = (a1 + 72);
  v2 = atomic_load((a1 + 72));
  v3 = (a1 + 76);
  v4 = atomic_load((a1 + 76));
  if (v2 != v4)
  {
    atomic_fetch_add((a1 + 80), 1uLL);
    v8.__m_ = (a1 + 136);
    v8.__owns_ = 1;
    std::mutex::lock((a1 + 136));
    v6 = atomic_load(v1);
    for (i = atomic_load(v3); v6 != i; i = atomic_load((a1 + 76)))
    {
      std::condition_variable::wait((a1 + 88), &v8);
      v6 = atomic_load((a1 + 72));
    }

    if (v8.__owns_)
    {
      std::mutex::unlock(v8.__m_);
    }

    atomic_fetch_add((a1 + 80), 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t sub_100169FEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_100169540(v1, *(a1 + 40));
}

uint64_t sub_10016A000(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dmb(9u);
  return sub_100169540(v1, *(a1 + 40));
}

uint64_t sub_10016A014(uint64_t result)
{
  v1 = 2;
  atomic_compare_exchange_strong((result + 632), &v1, 0);
  if (v1 == 2)
  {
    v2 = result;
    sub_10014FF14((result + 624));
    io_rings_suspend(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::suspend()";
    *(&v3 + 1) = 31;
    v4 = 0;
    sub_10016A0E8(v5, &v3);
    sub_100001FE8(v6, "Plugin's ring suspended, ret code ", 34);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016C69C(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_10016A0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016A210(va);
  _Unwind_Resume(a1);
}

void *sub_10016A0E8(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E61C(a1, a2);
  *a1 = off_1002208E0;
  a1[45] = &off_1002209E0;
  a1[46] = &off_100220A08;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002208E0;
  a1[45] = off_100220968;
  a1[46] = off_100220990;
  return a1;
}

void sub_10016A1EC(_Unwind_Exception *a1)
{
  sub_10016C69C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016A210(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016C69C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016A254(uint64_t result)
{
  v1 = 0;
  atomic_compare_exchange_strong((result + 632), &v1, 2u);
  if (!v1)
  {
    v2 = result;
    sub_10014FF1C((result + 624));
    io_rings_resume(*(v2 + 352));
    *&v3 = "di_hybrid_subscriber_t::resume()";
    *(&v3 + 1) = 30;
    v4 = 0;
    sub_10016A32C(v5, &v3);
    sub_100001FE8(v6, "Plugin's ring resumed, ret code ", 32);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10016CE34(v5);
    return std::ios::~ios();
  }

  return result;
}

void sub_10016A318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016A454(va);
  _Unwind_Resume(a1);
}

void *sub_10016A32C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016E6E4(a1, a2);
  *a1 = off_100220B00;
  a1[45] = &off_100220C00;
  a1[46] = &off_100220C28;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220B00;
  a1[45] = off_100220B88;
  a1[46] = off_100220BB0;
  return a1;
}

void sub_10016A430(_Unwind_Exception *a1)
{
  sub_10016CE34(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016A454(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE34(a1);
  std::ios::~ios();
  return a1;
}

void sub_10016A498(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_10016A598();
  }
}

void sub_10016A6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10016A6EC(uint64_t a1, uint64_t a2)
{
  sub_10016D474((a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136), (*(a2 + 136) - *(a2 + 128)) >> 4);
  result = sub_10016D820((a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
  *(a1 + 48) += *(a2 + 48);
  return result;
}

void sub_10016A750(uint64_t *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    *a6 = v8;
    a6[1] = v7;
    a6[2] = a1[2];
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v10 = a4;
  v11 = a2;
  v42 = a3 - 1;
  v43 = a4 * a5;
  do
  {
    v12 = *(v8 + 32) * v10;
    v13 = v12 / v11 * v11;
    v14 = a6[1];
    if (*a6 != v14)
    {
      v15 = *(v14 - 120) * a4 + *(v14 - 136) * v10;
      LODWORD(v16) = v12 - v15;
      v17 = v12 >= v15 && v15 + a3 > v13;
      if (v17 && (((*(v14 - 56) - *(v14 - 64)) >> 4) + ((*(v8 + 112) - *(v8 + 104)) >> 4) + 1) < 0x400)
      {
        goto LABEL_26;
      }

      v18 = v14 - 168;
      v19 = (v42 + v15) / a3 * a3;
      if (v43 < v19)
      {
        LODWORD(v19) = v43;
      }

      sub_10016A498(v18, v19 - v15);
    }

    memset(v53, 0, sizeof(v53));
    *__p = 0u;
    v21 = *(v8 + 152);
    v20 = *(v8 + 160);
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    *&v54 = v21;
    *(&v54 + 1) = v20;
    v23 = *(v8 + 88);
    v22 = *(v8 + 96);
    v24 = *(v8 + 16);
    v45 = *v8;
    v46 = v24;
    v26 = *(v8 + 48);
    v25 = *(v8 + 64);
    v27 = *(v8 + 32);
    v50 = *(v8 + 80);
    v48 = v26;
    v49 = v25;
    v47 = v27;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    *&v51 = v23;
    *(&v51 + 1) = v22;
    LODWORD(v48) = 0;
    *&v47 = v13 / v10;
    v28 = a6[1];
    if (v28 >= a6[2])
    {
      v33 = sub_100083D5C(a6, &v45);
      v34 = *(&v54 + 1);
      a6[1] = v33;
      if (v34)
      {
        sub_10000E984(v34);
      }
    }

    else
    {
      v29 = v46;
      *v28 = v45;
      *(v28 + 16) = v29;
      v30 = v47;
      v31 = v48;
      v32 = v49;
      *(v28 + 80) = v50;
      *(v28 + 48) = v31;
      *(v28 + 64) = v32;
      *(v28 + 32) = v30;
      *(v28 + 88) = v51;
      v51 = 0uLL;
      *(v28 + 104) = 0;
      *(v28 + 112) = 0;
      *(v28 + 120) = 0;
      *(v28 + 128) = 0;
      *(v28 + 104) = *__p;
      *(v28 + 120) = v53[0];
      __p[0] = 0;
      __p[1] = 0;
      v53[0] = 0;
      *(v28 + 136) = 0;
      *(v28 + 144) = 0;
      *(v28 + 128) = *&v53[1];
      *(v28 + 144) = v53[3];
      memset(&v53[1], 0, 24);
      *(v28 + 152) = v54;
      v54 = 0uLL;
      a6[1] = v28 + 168;
    }

    v55 = &v53[1];
    sub_100015CD4(&v55);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*(&v51 + 1))
    {
      sub_10000E984(*(&v51 + 1));
    }

    v16 = v12 % v11;
    v14 = a6[1];
LABEL_26:
    v35 = v14 - 168;
    sub_10016A498(v14 - 168, v16);
    sub_10016A6EC(v35, v8);
    v8 += 168;
  }

  while (v8 != v7);
  v36 = a6[1];
  v37 = v36 - 168;
  v38 = *(v36 - 120) * a4 + *(v36 - 136) * v10;
  v39 = (v42 + v38) / a3 * a3;
  if (v43 < v39)
  {
    LODWORD(v39) = v43;
  }

  sub_10016A498(v37, v39 - v38);
  v40 = *a6;
  v41 = a6[1];
  while (v40 != v41)
  {
    if (*v40 == 2)
    {
      *(v40 + 24) = *(v40 + 104);
    }

    v40 += 168;
  }
}

void sub_10016AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10007AC90(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10016AA7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v9 + v8;
  if (v7 == v9 + v8)
  {
    sub_100170708(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  *(a1 + 40) = v9 + 1;
  v11 = v8 + v9 + 1;
  v12 = *(a1 + 8);
  v13 = (v12 + 8 * (v11 >> 9));
  v14 = *v13 + 8 * (v11 & 0x1FF);
  if (*(a1 + 16) == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4096;
  }

  return v14 - 8;
}

void sub_10016AB3C(uint64_t a1)
{
  if (*(a1 + 616))
  {
    std::mutex::lock((a1 + 512));
    for (i = 0; *(a1 + 616); --i)
    {
      sub_10016919C(a1 + 304);
      if (!v3)
      {
        break;
      }

      v4 = *(*(*(a1 + 584) + ((*(a1 + 608) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 608) & 0x1FFLL));
      v5 = *(v4 + 32);
      v6 = *(v4 + 48);
      v7 = *(v4 + 64);
      *(v3 + 80) = *(v4 + 80);
      *(v3 + 48) = v6;
      *(v3 + 64) = v7;
      *(v3 + 32) = v5;
      v8 = *(v4 + 16);
      *v3 = *v4;
      *(v3 + 16) = v8;
      *(v3 + 8) = *(a1 + 368);
      *(a1 + 608) = vaddq_s64(*(a1 + 608), xmmword_1001BCEE0);
      sub_100073AB4(a1 + 576, 1);
    }

    std::mutex::unlock((a1 + 512));
    if (i)
    {
      v9 = *(a1 + 352);

      io_rings_enter(v9, -i, 0);
    }
  }
}

uint64_t sub_10016AC50(uint64_t result)
{
  v1 = atomic_load((result + 632));
  if (v1 != 1)
  {
    v2 = result;
    if (atomic_exchange((result + 632), 1u) == 2)
    {
      sub_10014FF14((result + 624));
    }

    sub_10014FF1C((v2 + 624));
    sub_10014FF0C((v2 + 624), &stru_100220638);
    if (io_rings_cancel(*(v2 + 352)) < 0)
    {
      goto LABEL_32;
    }

    std::mutex::lock((v2 + 512));
    v3 = *(v2 + 584);
    v4 = *(v2 + 592);
    if (v4 == v3)
    {
      v8 = (v2 + 616);
    }

    else
    {
      v5 = *(v2 + 608);
      v6 = &v3[v5 >> 9];
      v7 = (*v6 + 8 * (v5 & 0x1FF));
      v8 = (v2 + 616);
      v9 = *(v3 + (((*(v2 + 616) + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(v2 + 616) + v5) & 0x1FF);
      if (v7 != v9)
      {
        do
        {
          v10 = *v7;
          v21 = 0u;
          memset(v22, 0, sizeof(v22));
          memset(v20, 0, sizeof(v20));
          *(v10 + 80) = 0;
          *(v10 + 48) = 0u;
          *(v10 + 64) = 0u;
          *(v10 + 16) = 0u;
          *(v10 + 32) = 0u;
          *v10 = 0u;
          v11 = *(&v20[5] + 8);
          *(&v20[5] + 1) = 0;
          *&v20[6] = 0;
          v12 = *(v10 + 96);
          *(v10 + 88) = v11;
          if (v12)
          {
            sub_10000E984(v12);
          }

          v13 = *(v10 + 104);
          if (v13)
          {
            *(v10 + 112) = v13;
            operator delete(v13);
            *(v10 + 104) = 0;
            *(v10 + 112) = 0;
            *(v10 + 120) = 0;
          }

          *(v10 + 104) = *(&v20[6] + 8);
          *(v10 + 120) = *(&v20[7] + 1);
          memset(&v20[6] + 8, 0, 24);
          sub_1000BB5E4((v10 + 128));
          *(v10 + 128) = v21;
          *(v10 + 144) = v22[0];
          v21 = 0uLL;
          memset(v22, 0, sizeof(v22));
          v14 = *(v10 + 160);
          *(v10 + 152) = *&v22[1];
          if (v14)
          {
            sub_10000E984(v14);
          }

          if (v22[2])
          {
            sub_10000E984(v22[2]);
          }

          *&v18 = &v21;
          sub_100015CD4(&v18);
          if (*(&v20[6] + 1))
          {
            *&v20[7] = *(&v20[6] + 1);
            operator delete(*(&v20[6] + 1));
          }

          if (*&v20[6])
          {
            sub_10000E984(*&v20[6]);
          }

          if (++v7 - *v6 == 4096)
          {
            v15 = v6[1];
            ++v6;
            v7 = v15;
          }
        }

        while (v7 != v9);
        v3 = *(v2 + 584);
        v4 = *(v2 + 592);
        v8 = (v2 + 616);
      }
    }

    *v8 = 0;
    v16 = v4 - v3;
    if (v16 >= 3)
    {
      do
      {
        operator delete(*v3);
        v3 = (*(v2 + 584) + 8);
        *(v2 + 584) = v3;
        v16 = (*(v2 + 592) - v3) >> 3;
      }

      while (v16 > 2);
    }

    if (v16 == 1)
    {
      v17 = 256;
    }

    else
    {
      if (v16 != 2)
      {
LABEL_31:
        std::mutex::unlock((v2 + 512));
LABEL_32:
        *&v18 = "di_hybrid_subscriber_t::cancel()";
        *(&v18 + 1) = 30;
        v19 = 0;
        sub_10016AF58(v20, &v18);
        sub_100001FE8(v23, "Plugin's async ring cancelled, ret code ", 40);
        std::ostream::operator<<();
        std::ostream::~ostream();
        sub_10016DE00(v20);
        return std::ios::~ios();
      }

      v17 = 512;
    }

    *(v2 + 608) = v17;
    goto LABEL_31;
  }

  return result;
}

void sub_10016AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10016B080(va);
  _Unwind_Resume(a1);
}

void *sub_10016AF58(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1001708DC(a1, a2);
  *a1 = off_100220D80;
  a1[45] = &off_100220E80;
  a1[46] = &off_100220EA8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100220D80;
  a1[45] = off_100220E08;
  a1[46] = off_100220E30;
  return a1;
}

void sub_10016B05C(_Unwind_Exception *a1)
{
  sub_10016DE00(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016B080(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016DE00(a1);
  std::ios::~ios();
  return a1;
}

void sub_10016B0C4(uint64_t a1)
{
  v2 = *(a1 + 280) != 0;
  sub_100169208(a1 + 304, &v18);
  v3 = v19;
  if (v19)
  {
    v4 = v18;
    do
    {
      v5 = *(v4 + 152);
      v6 = *(v4 + 160);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_10016B2C0;
        v11 = &unk_100220658;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v8 = _NSConcreteStackBlock;
        v9 = 1174405120;
        v10 = sub_10016B2C0;
        v11 = &unk_100220658;
        v12 = a1;
        v13 = v4;
        v14 = v4;
        v15 = v3;
        v16 = v5;
        v17 = 0;
      }

      if (*(a1 + 280) || *(v5 + 104) == 1)
      {
        sub_10014FE54((a1 + 504), &v8);
        v2 = 1;
      }

      else
      {
        v10(&v8);
      }

      if (v17)
      {
        sub_10000E984(v17);
      }

      if (v6)
      {
        sub_10000E984(v6);
      }

      sub_100169208(a1 + 304, &v18);
      v4 = v18;
      v3 = v19;
    }

    while ((v19 & 1) != 0);
  }

  if (v2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_10016B83C;
    v7[3] = &unk_100220688;
    v7[4] = a1;
    sub_10014FE54((a1 + 504), v7);
  }

  else
  {
    sub_10016AB3C(a1);
  }
}

void sub_10016B29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_10000E984(a24);
  }

  if (v24)
  {
    sub_10000E984(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016B2C0(uint64_t a1)
{
  v2 = sub_10016B3D0(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  if (v2)
  {
    v3 = 0;
    atomic_compare_exchange_strong((*(a1 + 72) + 16), &v3, v2);
  }

  v4 = *(a1 + 40);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  v5 = *(v4 + 96);
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = *(v4 + 104);
  if (v6)
  {
    *(v4 + 112) = v6;
    operator delete(v6);
  }

  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  sub_1000BB5E4((v4 + 128));
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = *(v4 + 160);
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  if (v7)
  {
    sub_10000E984(v7);
  }

  v10 = v8;
  sub_100015CD4(&v10);
}

uint64_t sub_10016B3D0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 48);
  if (a3 == v3)
  {
    v5 = *(a1 + 280);
    if (v5)
    {
      v33 = *(a2 + 32);
      v6 = *(a1 + 296);
      v7 = sub_100195B38();
      v8 = v7;
      v10 = *(a2 + 104);
      v9 = *(a2 + 112);
      v11 = v44;
      __p = v44;
      v43 = xmmword_1001BABD0;
      v12 = (v9 - v10 - 16) >> 4;
      if (v9 == v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = v12 + 1;
      }

      if (v13 < 6)
      {
        if (v10 == v9)
        {
          v13 = 0;
        }

        else
        {
          v23 = v12 + 1;
          do
          {
            v24 = *v10;
            v25 = v7[1];
            if (v25)
            {
              atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
            }

            v26 = *(v10 + 1);
            *v11 = v24;
            v11[1] = v25;
            v11[2] = v26;
            v10 += 16;
            v11 += 3;
            --v23;
          }

          while (v23);
        }
      }

      else
      {
        if (v13 >= 0x555555555555556)
        {
          sub_100012CFC("get_next_capacity, allocator's max size reached");
        }

        v14 = operator new(24 * v13);
        v15 = v14;
        if (__p)
        {
          v31 = v14;
          v32 = v5;
          v16 = v43;
          if (v43)
          {
            v17 = (__p + 8);
            do
            {
              if (*v17)
              {
                sub_10000E984(*v17);
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          *&v43 = 0;
          v15 = v31;
          v5 = v32;
          if (v44 != __p)
          {
            operator delete(__p);
          }
        }

        *(&v43 + 1) = v13;
        __p = v15;
        *&v43 = 0;
        if (v10 == v9)
        {
          v22 = 0;
          v18 = v15;
        }

        else
        {
          v18 = v15;
          do
          {
            v19 = *v10;
            v20 = v8[1];
            if (v20)
            {
              atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
            }

            v21 = *(v10 + 1);
            *v18 = v19;
            *(v18 + 1) = v20;
            *(v18 + 2) = v21;
            v10 += 16;
            v18 += 24;
          }

          while (v10 != v9);
          v22 = v43;
        }

        v13 = v22 - 0x5555555555555555 * ((v18 - v15) >> 3);
      }

      *&v43 = v13;
      v45 = &v47;
      v46 = xmmword_1001BABD0;
      sub_100013068(&v45, v13);
      v37 = __p;
      v34 = __p + 24 * v13;
      v41 = v45;
      v40 = &v45[v46];
      sub_10002E0A8(v48, &v37, &v34, &v41, &v40, v6 * v33, v6 * v3, 1);
      v27 = (*(*v5 + 144))(v5);
      sub_10002E310(v48, &v37);
      sub_10002DF68(v48, &v34);
      v28 = sub_10000FEB4(v27);
      if (v36)
      {
        sub_10000E984(v36);
      }

      if (v35)
      {
        sub_10000E984(v35);
      }

      if (v39)
      {
        sub_10000E984(v39);
      }

      if (v38)
      {
        sub_10000E984(v38);
      }

      if (v27)
      {
        (*(*v27 + 40))(v27);
      }

      if (v28 < 0)
      {
        v5 = v28;
      }

      else
      {
        v5 = 0;
      }

      sub_1000157A4(&__p);
    }

    v29 = *(a2 + 88);
    if (v29)
    {
      sub_100147780(v29 + 248);
    }
  }

  else if (a3 < 0)
  {
    return a3;
  }

  else
  {
    return 4294967291;
  }

  return v5;
}

void sub_10016B760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_10000FF88(&a15);
  sub_10000FF88(&a43);
  if (v43)
  {
    (*(*v43 + 40))(v43);
  }

  sub_1000157A4(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B810(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10016B82C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    sub_10000E984(v1);
  }
}

uint64_t sub_10016B844(uint64_t a1)
{
  io_rings_cq_get_overruns(a1);
  *&v3 = "di_plugin_cq_event_callback(io_uhandle_t, void *, enum io_rings_event_type_t, struct io_rings_event_type_data_t *)";
  *(&v3 + 1) = 27;
  v4 = 16;
  sub_10016B904(v5, &v3);
  std::ostream::operator<<();
  sub_100001FE8(v6, " overrun events occurred in the plugin's ring!", 46);
  std::ostream::~ostream();
  sub_10016BB38(v5);
  std::ios::~ios();
  return io_rings_cq_clear_overruns(a1);
}

void sub_10016B8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016BA2C(va);
  _Unwind_Resume(a1);
}

void *sub_10016B904(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10016BA70(a1, a2);
  *a1 = off_1002206C0;
  a1[45] = &off_1002207C0;
  a1[46] = &off_1002207E8;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002206C0;
  a1[45] = off_100220748;
  a1[46] = off_100220770;
  return a1;
}

void sub_10016BA08(_Unwind_Exception *a1)
{
  sub_10016BB38(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10016BA2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB38(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10016BA70(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100220858;
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

void sub_10016BB20(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10016BB38(uint64_t a1)
{
  *a1 = off_100220858;
  sub_10016BF78(a1);
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

void sub_10016BCA4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016BB38(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016BD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016BD48(_BYTE *a1, int a2)
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

uint64_t sub_10016BDB4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB38(v1);

  return std::ios::~ios();
}

void sub_10016BE00(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016BB38(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016BE64(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB38(v1);

  return std::ios::~ios();
}

void sub_10016BEC4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016BB38(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016BF40(uint64_t a1)
{
  sub_10016BB38(a1);

  operator delete();
}

uint64_t sub_10016BF78(uint64_t a1)
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
        sub_10016C0EC((a1 + 72), __p);
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

void sub_10016C0C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10016C0EC(uint64_t *a1, uint64_t *a2)
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
    v21 = 57;
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
      v21 = 57;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016C2D0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10016C350(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_10016C380((result + 1), v3);
  }

  return result;
}

uint64_t sub_10016C380(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10016C404(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016C69C(v1);

  return std::ios::~ios();
}

uint64_t sub_10016C450(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016C69C(v1);

  return std::ios::~ios();
}

void sub_10016C4B0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016C69C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016C518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016C554(_BYTE *a1, int a2)
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

void sub_10016C5C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016C69C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016C624(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016C69C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016C69C(uint64_t a1)
{
  *a1 = off_100220A78;
  sub_10016C808(a1);
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

uint64_t sub_10016C808(uint64_t a1)
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
        sub_10016C9B8((a1 + 72), __p);
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

void sub_10016C954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016C980(uint64_t a1)
{
  sub_10016C69C(a1);

  operator delete();
}

int *sub_10016C9B8(uint64_t *a1, uint64_t *a2)
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
    v21 = 250;
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
      v21 = 250;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10016CB9C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE34(v1);

  return std::ios::~ios();
}

uint64_t sub_10016CBE8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE34(v1);

  return std::ios::~ios();
}

void sub_10016CC48(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10016CE34(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016CCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10016CCEC(_BYTE *a1, int a2)
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

void sub_10016CD58(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10016CE34(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10016CDBC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10016CE34(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10016CE34(uint64_t a1)
{
  *a1 = off_100220C98;
  sub_10016CFA0(a1);
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

uint64_t sub_10016CFA0(uint64_t a1)
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
        sub_10016D150((a1 + 72), __p);
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

void sub_10016D0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016D118(uint64_t a1)
{
  sub_10016CE34(a1);

  operator delete();
}

int *sub_10016D150(uint64_t *a1, uint64_t *a2)
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
    v21 = 259;
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
      v21 = 259;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10016D39C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete[]();
  }

  __cxa_rethrow();
}

void sub_10016D3DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10016D414(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_10016D434(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100220D58))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_10016D474(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (a5 <= (v9 - v10) >> 4)
    {
      v16 = v10 - a2;
      v17 = (v10 - a2) >> 4;
      if (v17 >= a5)
      {
        sub_10016D640(a1, a2, a1[1], &a2[2 * a5]);
        v18 = (v7 + 16 * a5);
      }

      else
      {
        a1[1] = sub_10016D6A4(a1, v16 + a3, a4, a1[1]);
        if (v17 < 1)
        {
          return v5;
        }

        sub_10016D640(a1, v5, v10, &v5[2 * a5]);
        v18 = (v16 + v7);
      }

      sub_10016D7B4(v30, v7, v18, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_100015B70();
    }

    v13 = a2 - v11;
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

    v32 = a1;
    if (v15)
    {
      sub_100085E2C(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v31 = 0;
    v20 = 16 * a5;
    v21 = v19;
    v22 = (v19 + 16 * a5);
    do
    {
      *v21++ = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v7 += 16;
      v20 -= 16;
    }

    while (v20);
    memcpy(v22, v5, a1[1] - v5);
    v23 = *a1;
    v24 = &v22[a1[1] - v5];
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v19 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    a1[1] = v24;
    v28 = a1[2];
    a1[2] = v31;
    v30[2] = v27;
    v31 = v28;
    v30[0] = v27;
    v30[1] = v27;
    sub_10007AB30(v30);
    return v19;
  }

  return v5;
}