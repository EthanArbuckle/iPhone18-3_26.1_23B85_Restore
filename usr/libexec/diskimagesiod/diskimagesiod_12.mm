void sub_10011C7F0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011C528(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011C854(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011C528(v1);

  return std::ios::~ios();
}

void sub_10011C8B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011C528(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011C930(uint64_t a1)
{
  sub_10011C528(a1);

  operator delete();
}

uint64_t sub_10011C968(uint64_t a1)
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
        sub_10011CADC((a1 + 72), __p);
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

void sub_10011CAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10011CADC(uint64_t *a1, uint64_t *a2)
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
    v21 = 39;
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
      v21 = 39;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10011CCC0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011CF58(v1);

  return std::ios::~ios();
}

uint64_t sub_10011CD0C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011CF58(v1);

  return std::ios::~ios();
}

void sub_10011CD6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011CF58(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011CDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011CE10(_BYTE *a1, int a2)
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

void sub_10011CE7C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011CF58(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011CEE0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011CF58(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011CF58(uint64_t a1)
{
  *a1 = off_100217068;
  sub_10011D0C4(a1);
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

uint64_t sub_10011D0C4(uint64_t a1)
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
        sub_10011D274((a1 + 72), __p);
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

void sub_10011D210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011D23C(uint64_t a1)
{
  sub_10011CF58(a1);

  operator delete();
}

int *sub_10011D274(uint64_t *a1, uint64_t *a2)
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
    v21 = 3573;
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
      v21 = 3573;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10011D458(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011D6F0(v1);

  return std::ios::~ios();
}

uint64_t sub_10011D4A4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011D6F0(v1);

  return std::ios::~ios();
}

void sub_10011D504(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011D6F0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011D56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011D5A8(_BYTE *a1, int a2)
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

void sub_10011D614(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011D6F0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011D678(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011D6F0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011D6F0(uint64_t a1)
{
  *a1 = off_100217288;
  sub_10011D85C(a1);
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

uint64_t sub_10011D85C(uint64_t a1)
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
        sub_10011DA0C((a1 + 72), __p);
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

void sub_10011D9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011D9D4(uint64_t a1)
{
  sub_10011D6F0(a1);

  operator delete();
}

int *sub_10011DA0C(uint64_t *a1, uint64_t *a2)
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
    v21 = 3585;
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
      v21 = 3585;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10011DBF0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011DE88(v1);

  return std::ios::~ios();
}

uint64_t sub_10011DC3C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011DE88(v1);

  return std::ios::~ios();
}

void sub_10011DC9C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011DE88(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011DD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011DD40(_BYTE *a1, int a2)
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

void sub_10011DDAC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011DE88(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011DE10(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011DE88(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011DE88(uint64_t a1)
{
  *a1 = off_1002174A8;
  sub_10011DFF4(a1);
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

uint64_t sub_10011DFF4(uint64_t a1)
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
        sub_10011E1A4((a1 + 72), __p);
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

void sub_10011E140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011E16C(uint64_t a1)
{
  sub_10011DE88(a1);

  operator delete();
}

int *sub_10011E1A4(uint64_t *a1, uint64_t *a2)
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
    v21 = 3590;
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
      v21 = 3590;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10011E388(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011E620(v1);

  return std::ios::~ios();
}

uint64_t sub_10011E3D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011E620(v1);

  return std::ios::~ios();
}

void sub_10011E434(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011E620(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011E49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011E4D8(_BYTE *a1, int a2)
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

void sub_10011E544(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011E620(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011E5A8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011E620(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011E620(uint64_t a1)
{
  *a1 = off_1002176C8;
  sub_10011E78C(a1);
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

uint64_t sub_10011E78C(uint64_t a1)
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
        sub_10011E93C((a1 + 72), __p);
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

void sub_10011E8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011E904(uint64_t a1)
{
  sub_10011E620(a1);

  operator delete();
}

int *sub_10011E93C(uint64_t *a1, uint64_t *a2)
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
    v21 = 3596;
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
      v21 = 3596;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10011EB20(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011EDB8(v1);

  return std::ios::~ios();
}

uint64_t sub_10011EB6C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011EDB8(v1);

  return std::ios::~ios();
}

void sub_10011EBCC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10011EDB8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011EC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10011EC70(_BYTE *a1, int a2)
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

void sub_10011ECDC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10011EDB8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10011ED40(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10011EDB8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10011EDB8(uint64_t a1)
{
  *a1 = off_1002178E8;
  sub_10011EF24(a1);
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

uint64_t sub_10011EF24(uint64_t a1)
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
        sub_10011F0D4((a1 + 72), __p);
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

void sub_10011F070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011F09C(uint64_t a1)
{
  sub_10011EDB8(a1);

  operator delete();
}

int *sub_10011F0D4(uint64_t *a1, uint64_t *a2)
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
    v21 = 3600;
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
      v21 = 3600;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

atomic_ullong *sub_10011F2B8@<X0>(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v20 = 0;
  v21 = a2;
  sub_10011F534(a1, a2, a3, &v18);
  if (v18 && (*(v18 + 344) & 1) == 0 || v18 && (*(v18 + 344) & 1) != 0)
  {
LABEL_5:
    *a4 = 0;
    v7 = atomic_exchange(&v18, 0);
  }

  else
  {
    v8 = *(a1 + 736);
    if ((v8 & 1) == 0 || v19 == (a1 + 760))
    {
      *a4 = 0;
      return sub_1000F0B1C(&v18);
    }

    while ((v8 & 2) == 0)
    {
      sub_10011FA08(a1, a2, &v16);
      v20 = v16;
      sub_1000F29DC(&v18, &v17);
      sub_1000F0B1C(&v17);
      if (v18 && (*(v18 + 344) & 1) == 0)
      {
        goto LABEL_23;
      }

      v9 = sub_10011FC10(a1);
      if (v9)
      {
        v20 = v9;
        sub_10011FCB8(a1, v9, a2, &v16);
        sub_1000F29DC(&v18, &v16);
        sub_1000F0B1C(&v16);
LABEL_23:
        std::mutex::lock((a1 + 776));
        v13 = sub_10012105C((a1 + 752), v19, &v21);
        if ((v14 & 1) == 0)
        {
          *(v13 + 40) = v20;
        }

        std::condition_variable::notify_all((a1 + 840));
        std::mutex::unlock((a1 + 776));
        v22[0] = 0;
        v23 = 0;
        sub_10011FDA4(a1, 0, v22);
        if (v23 == 1)
        {
          sub_100121304(v22);
        }

        goto LABEL_5;
      }

      v8 = *(a1 + 736);
      if ((v8 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v7 = (a1 + 104);
    *a4 = 0;
    v11 = atomic_load((a1 + 104));
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        atomic_compare_exchange_strong(v7, &v12, v11 + 1);
        if (v12 == v11)
        {
          break;
        }

        v11 = v12;
        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v15 = *(a1 + 432);
      if (v15)
      {
        *(a1 + 440) = atomic_fetch_add_explicit(v15, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_21:
      v7 = 0;
    }
  }

  atomic_store(v7, a4);
  return sub_1000F0B1C(&v18);
}

void sub_10011F4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100001A14(exception_object);
}

void sub_10011F534(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 776);
  v9 = (a1 + 760);
  v10 = a1 + 1008;
  v32 = (a1 + 104);
  do
  {
    v35.__m_ = v8;
    v35.__owns_ = 1;
    std::mutex::lock(v8);
    if ((a3 & 1) == 0)
    {
      v15 = *v9;
      if (!*v9)
      {
        goto LABEL_14;
      }

      v16 = v9;
      do
      {
        v17 = v15[4];
        v18 = v17 >= a2;
        v19 = v17 < a2;
        if (v18)
        {
          v16 = v15;
        }

        v15 = v15[v19];
      }

      while (v15);
      if (v16 == v9 || v16[4] > a2 || v16[5] == v10)
      {
LABEL_14:
        __lk.__m_ = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&__lk, 0), a4);
        sub_1000F0B1C(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = sub_10011FF14(a1 + 752, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      sub_1000F0B1C(&__lk);
      v14 = 1;
      goto LABEL_16;
    }

    v20 = v11[5];
    if (v20 != v10)
    {
      if (!v35.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(v35.__m_);
      v35.__owns_ = 0;
      sub_100110858(&__lk, (v20 + 360));
      if (!__lk.__m_ || (__lk.__m_[5].__m_.__opaque[16] & 1) != 0)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_26;
      }

      if (*&__lk.__m_->__m_.__opaque[24] == a2)
      {
        *a4 = 0;
        a4[1] = v12;
        atomic_store(atomic_exchange(&__lk, 0), a4);
      }

      else
      {
        if (*&__lk.__m_->__m_.__opaque[24] != -1 || (a3 & 1) != 0)
        {
LABEL_26:
          sub_1000F0B1C(&__lk);
          v36[0] = off_100217968;
          v36[1] = a2;
          v36[3] = v36;
          v37 = 1;
          v21 = sub_10011FDA4(a1, 0, v36);
          if (v37 == 1)
          {
            sub_100121304(v36);
          }

          if (v21 == -1)
          {
            __lk.__m_ = 0;
            v29 = atomic_load(v32);
            if (v29)
            {
              v30 = v29;
              while (1)
              {
                atomic_compare_exchange_strong(v32, &v30, v29 + 1);
                if (v30 == v29)
                {
                  break;
                }

                v29 = v30;
                if (!v30)
                {
                  goto LABEL_64;
                }
              }

              v31 = *(a1 + 432);
              v30 = v32;
              if (v31)
              {
                *(a1 + 440) = atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
                v30 = v32;
              }
            }

            else
            {
              v30 = 0;
            }

LABEL_64:
            atomic_store(v30, &__lk);
            *a4 = 0;
            a4[1] = v9;
            atomic_store(atomic_exchange(&__lk, 0), a4);
            sub_1000F0B1C(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 592), 1uLL);
          __lk.__m_ = sub_100192398(v20);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 368) & 1) == 0 && *(v20 + 40) == -1)
          {
            v22 = sub_100192424(v20);
            std::condition_variable::wait(v22, &__lk);
          }

          atomic_fetch_add((a1 + 592), 0xFFFFFFFFFFFFFFFFLL);
          if (__lk.__owns_)
          {
            std::mutex::unlock(__lk.__m_);
          }

          goto LABEL_47;
        }

LABEL_59:
        v33 = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&v33, 0), a4);
        sub_1000F0B1C(&v33);
      }

      sub_1000F0B1C(&__lk);
      goto LABEL_15;
    }

    v23 = *v9;
    if (*v9)
    {
      v24 = v9;
      while (1)
      {
        v25 = v23[4];
        v18 = v25 >= a2;
        v26 = v25 < a2;
        if (v18)
        {
          v24 = v23;
        }

        v23 = v23[v26];
        if (!v23)
        {
          if (v24 == v9)
          {
            break;
          }

          if (v24[4] > a2)
          {
            break;
          }

          v27 = v24[5];
          if (v27 != v10)
          {
            v28 = *(v27 + 360);
            if (v28)
            {
              if ((*(v28 + 344) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 736) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 840), &v35);
          v23 = *v9;
          v24 = v9;
          if (!*v9)
          {
            break;
          }
        }
      }

LABEL_47:
      v14 = 0;
      goto LABEL_16;
    }

    v14 = 0;
LABEL_16:
    if (v35.__owns_)
    {
      std::mutex::unlock(v35.__m_);
    }

    if (v14)
    {
      return;
    }
  }

  while ((*(a1 + 736) & 1) != 0);
  v35.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v35, 0), a4);
  sub_1000F0B1C(&v35);
}

void sub_10011F970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_10011FA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v10 = 0;
  std::mutex::lock((a1 + 520));
  v6 = *(a1 + 512);
  if (v6)
  {
    v7 = *(*(*(a1 + 480) + ((*(a1 + 504) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 504) & 0x1FFLL));
    ++*(a1 + 504);
    *(a1 + 512) = v6 - 1;
    sub_100073AB4(a1 + 472, 1);
    sub_10011FCB8(a1, v7, a2, v11);
    sub_1000F29DC(&v10, v11);
    sub_1000F0B1C(v11);
  }

  else
  {
    v7 = 0;
  }

  std::mutex::unlock((a1 + 520));
  v8 = atomic_load((a1 + 608));
  if (v8 + v6 >= *(a1 + 464))
  {
    v12[0] = 0;
    v13 = 0;
    sub_10011FDA4(a1, 0, v12);
    if (v13 == 1)
    {
      sub_100121304(v12);
    }
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 0x40000000;
    v11[2] = sub_100120184;
    v11[3] = &unk_1002179E8;
    v11[4] = a1;
    sub_10014FE54((a1 + 744), v11);
  }

  *a3 = v7;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v10, 0), a3 + 1);
  return sub_1000F0B1C(&v10);
}

void sub_10011FBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_100121304(&a15);
  }

  sub_1000F0B1C(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_10011FC10(void *a1)
{
  v1 = atomic_load(a1 + 75);
  v2 = a1[57];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = -1;
  do
  {
    v6 = a1[73];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 344) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 344);
      v4 = v3;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  atomic_compare_exchange_strong((a1[73] + 8 * v4), &v9, 0);
  if (v9 != v5 || (sub_100120964(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *sub_10011FCB8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  sub_100120F24(a2, a3);
  v7 = (a2 + 1);
  v14 = 0;
  v8 = atomic_load(a2 + 1);
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      atomic_compare_exchange_strong(v7, &v9, v8 + 1);
      if (v9 == v8)
      {
        break;
      }

      v8 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = a2[42];
    if (v10)
    {
      a2[43] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 456))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 584) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 456) <= ++v11)
      {
        goto LABEL_12;
      }
    }

    *a4 = 0;
    atomic_store(atomic_exchange(&v14, 0), a4);
  }

  else
  {
LABEL_12:
    *a4 = 0;
  }

  return sub_1000F0B1C(&v14);
}

uint64_t sub_10011FDA4(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 968))
  {
    return 0;
  }

  std::mutex::lock((a1 + 888));
  if (*(a1 + 968))
  {
    v6 = *(a1 + 960);
    if (v6 == (a1 + 952))
    {
      v8 = 1;
    }

    else
    {
      if (a2)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

      v8 = 1;
      do
      {
        v9 = v6[2];
        if ((sub_1000F0B48(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || sub_1001212AC(a3, v9, v6[3])))
        {
          v10 = sub_100192398(v9);
          std::mutex::lock(v10);
          atomic_fetch_and((v9 + 368), 0xFFFFFFFB);
          std::mutex::unlock(v10);
          v11 = *v6;
          v12 = v6[1];
          *(v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 968);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          if (*(a3 + 32) != 1 || sub_1001212AC(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 952));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 888));
  return v8;
}

void *sub_10011FF14(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100120050(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100217968;
  a2[1] = v2;
  return result;
}

uint64_t sub_100120090(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_1001200DC(unint64_t *a1, unint64_t *a2, int a3)
{
  v3 = a2;
  *a1 = 0;
  if (a2)
  {
    v5 = atomic_load(a2);
    if (!v5)
    {
LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    v6 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(a2, &v6, v5 + 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = a2[41];
    if (v8)
    {
      a2[42] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !sub_1001108FC(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        sub_1000F0B48(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t sub_100120184(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_10011FC10(v1);
  if (v2)
  {
    sub_10012023C(v1, v2);
  }

  v4[0] = 0;
  v5 = 0;
  result = sub_10011FDA4(v1, 0, v4);
  if (v5 == 1)
  {
    return sub_100121304(v4);
  }

  return result;
}

void sub_10012021C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_100121304(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012023C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 520));
  sub_100120298((a1 + 472), &v3);
  std::mutex::unlock((a1 + 520));
}

void *sub_100120298(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_100120320(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_100120320(void *a1)
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

void sub_1001204A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_1001204F4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10012091C(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_1001205FC(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10012091C(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100120708(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_10012091C(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100120810(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10012091C(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_10012091C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100120964(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  atomic_fetch_add((a1 + 608), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 592), 1uLL);
  }

  atomic_fetch_or((a2 + 368), 2u);
  sub_1000F0B1C((a2 + 360));
  if (a4)
  {
    sub_1000F0B1C(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 368));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 368))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 520));
          v10 = *(a1 + 512);
          std::mutex::unlock((a1 + 520));
          if (v10)
          {
            break;
          }
        }

        v31[0] = 0;
        v32 = 0;
        v11 = sub_10011FDA4(a1, (a3 >> 16) & 1, v31);
        if (v32 == 1)
        {
          sub_100121304(v31);
        }

        if (v11 == -1)
        {
          v27.__m_ = sub_100192398(a2);
          v27.__owns_ = 1;
          std::mutex::lock(v27.__m_);
          v18 = sub_100192424(a2);
          v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v25 = a1;
          v26 = v19.__d_.__rep_ + 200000;
          v24.__m_ = a2;
          v24.__owns_ = (a3 & 0x100) >> 8;
          *(&v24.__owns_ + 1) = *v28;
          *(&v24.__owns_ + 1) = *&v28[3];
          sub_100120CB4(v18, &v27, &v26, &v24);
          if (!v27.__owns_)
          {
            goto LABEL_25;
          }

          m = v27.__m_;
        }

        else
        {
          v24.__m_ = sub_100192398(a2);
          v24.__owns_ = 1;
          std::mutex::lock(v24.__m_);
          v12 = sub_100192424(a2);
          v13 = atomic_load((a2 + 368));
          if ((v13 & 4) == 0)
          {
            v14 = v12;
            do
            {
              if (*(a2 + 368))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 520));
                v15 = *(a1 + 512);
                std::mutex::unlock((a1 + 520));
                if (v15)
                {
                  break;
                }
              }

              std::condition_variable::wait(v14, &v24);
              v16 = atomic_load((a2 + 368));
            }

            while ((v16 & 4) == 0);
          }

          if (!v24.__owns_)
          {
            goto LABEL_25;
          }

          m = v24.__m_;
        }

        std::mutex::unlock(m);
LABEL_25:
        v20 = *(a2 + 368);
        if (a3 & 0x100) == 0 || (v20)
        {
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 512))
        {
          goto LABEL_35;
        }

        v21 = atomic_load((a2 + 368));
      }

      while ((v21 & 4) == 0);
    }
  }

  v22 = atomic_load((a2 + 368));
  if ((v22 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v29[0] = off_100217A18;
    v29[1] = a2;
    v29[3] = v29;
    v30 = 1;
    sub_10011FDA4(a1, 1, v29);
    if (v30 == 1)
    {
      sub_100121304(v29);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 592), 0xFFFFFFFFFFFFFFFFLL);
  }

  return atomic_fetch_and((a2 + 368), 0xFFFFFFFD) & 1;
}

void sub_100120C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    sub_100121304(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100120CB4(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 368));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 368))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 520));
      v10 = *(v8 + 512);
      std::mutex::unlock((v8 + 520));
      if (v10)
      {
        return 1;
      }
    }

    v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v12 = *a3;
    if (*a3 <= v11.__d_.__rep_)
    {
      break;
    }

    if (!v12)
    {
      v13.__d_.__rep_ = 0;
      goto LABEL_14;
    }

    if (v12 < 1)
    {
      if (v12 < 0xFFDF3B645A1CAC09)
      {
        v13.__d_.__rep_ = 0x8000000000000000;
        goto LABEL_14;
      }
    }

    else if (v12 > 0x20C49BA5E353F7)
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v13.__d_.__rep_ = 1000 * v12;
LABEL_14:
    std::condition_variable::__do_timed_wait(a1, a2, v13);
  }

  while (std::chrono::system_clock::now().__d_.__rep_ < *a3);
  v14 = *(a4 + 16);
  v15 = atomic_load((*a4 + 368));
  if (v15 & 4) != 0 || (*(*a4 + 368))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 520));
  v16 = *(v14 + 512) != 0;
  std::mutex::unlock((v14 + 520));
  return v16;
}

uint64_t sub_100120E98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100217A18;
  a2[1] = v2;
  return result;
}

uint64_t sub_100120ED8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_100120F24(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 368));
  v3 = (a1 + 8);
  sub_100120FF4(a1 + 8, a2);
  v9 = 0;
  v4 = atomic_load(v3);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v6 = *(a1 + 336);
    v5 = v3;
    if (v6)
    {
      *(a1 + 344) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  sub_1000F29DC((a1 + 360), &v9);
  result = sub_1000F0B1C(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return sub_1000F0B48(v3, v8, 1u);
  }

  return result;
}

uint64_t sub_100120FF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 344) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  result = sub_100110B78(a1 + 40);
  v4 = *(a1 + 328);
  if (v4)
  {
    *(a1 + 336) = atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
  return result;
}

uint64_t sub_10012105C(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_100121104(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *sub_100121104(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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

uint64_t sub_1001212AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10001583C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_100121304(uint64_t a1)
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

uint64_t sub_100121384(uint64_t a1)
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

uint64_t sub_100121404(uint64_t result)
{
  if (*(result + 360) == 1)
  {
    v1 = result;
    std::mutex::~mutex((result + 280));
    sub_100072AB4((v1 + 232));
    std::mutex::~mutex((v1 + 168));
    std::mutex::~mutex((v1 + 104));
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    sub_1000F0A18((v1 + 16), 0);
    result = sub_1000F0A9C(v1 + 24);
    *(v1 + 360) = 0;
  }

  return result;
}

uint64_t *sub_10012147C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  result = sub_1001214D0(a1, a2);
  result[5] = *result;
  result[6] = v4;
  if (v4 && a3)
  {
    v6 = 0;
    do
    {
      v7 = (*result + v6);
      *v7 = 0;
      v7[1] = 0;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t *sub_1001214D0(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[4] = 0;
  v3 = malloc_type_valloc(16 * a2, 0x1000040451B5BE8uLL);
  if (!v3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
  }

  v7[0] = off_100217A98;
  v7[3] = v7;
  v8 = v3;
  sub_100121714(v9, v7);
  sub_1001215F4(a1, &v8);
  sub_1000F0A18(&v8, 0);
  sub_1000F0A9C(v9);
  sub_1000F0A9C(v7);
  return a1;
}

void sub_1001215D4(_Unwind_Exception *a1)
{
  sub_1000F0A18(v1, 0);
  sub_1000F0A9C((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t *sub_1001215F4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_1000F0A18(a1, v4);
  sub_100121794((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t sub_1001216C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100121714(uint64_t a1, uint64_t a2)
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

uint64_t sub_100121794(uint64_t a1, uint64_t a2)
{
  sub_100121818(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100121818(uint64_t a1)
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

void *sub_10012189C(void *a1)
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
    sub_1000429F0(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100121A70(a1, &v10);
}

void sub_100121A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100121A70(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1000429F0(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100121B78(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1000429F0(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_100121C84(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_1000429F0(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_100121D8C(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_1000429F0(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_100121E98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  *(a1 + 336) = **(a1 + 328);
  sub_100110B78(a1 + 40);
  sub_1000FC27C(a1 + 40, a2, a3, *a4, *a5, 0);
  *(a1 + 224) = 1;
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_100121F4C(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 344) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void sub_100121F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, char *a6)
{
  *(a1 + 336) = **(a1 + 328);
  sub_100110B78(a1 + 40);
  sub_1000FC27C(a1 + 40, a2, a3, *a4, *a5, *a6);
  *(a1 + 224) = 1;
  atomic_store(2u, (a1 + 24));
  if (atomic_load((a1 + 8)))
  {

    std::__cxx_atomic_notify_all((a1 + 24));
  }
}

void sub_100122044(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 344) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

uint64_t sub_100122084(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100211FC8;
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

void sub_100122134(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012214C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002121E8;
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

void sub_1001221FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100122214(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212408;
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

void sub_1001222C4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001222DC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212628;
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

void sub_10012238C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001223A4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212848;
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

void sub_100122454(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012246C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1001224C0(uint64_t a1)
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

uint64_t sub_100122540(uint64_t a1)
{
  *(a1 + 912) &= ~1u;
  if (*(a1 + 632))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 760) + 8 * v3), 0);
      if (v4)
      {
        sub_100122760(a1, v4, v1 & 0xFFFFFFFFFF000000 | 0x10001, 0);
        sub_1000EFD00((v4 + 536));
        sub_100122FA4(v4 + 8);
        operator delete();
      }

      ++v3;
    }

    while (*(a1 + 632) > v3);
  }

  sub_10014FF0C((a1 + 920), &stru_100217B38);
  if (*(a1 + 760))
  {
    operator delete[]();
  }

  std::mutex::lock((a1 + 696));
  v5 = *(a1 + 656);
  if (*(a1 + 664) != v5)
  {
    v6 = *(a1 + 680);
    v7 = (v5 + 8 * (v6 >> 9));
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    while (v8 != (*(v5 + (((*(a1 + 688) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 688) + v6) & 0x1FF)))
    {
      v9 = *v8;
      if (*v8)
      {
        sub_1000EFD00((v9 + 536));
        sub_100122FA4(v9 + 8);
        operator delete();
      }

      if ((++v8 - *v7) == 4096)
      {
        v10 = v7[1];
        ++v7;
        v8 = v10;
      }
    }
  }

  std::mutex::unlock((a1 + 696));
  sub_1001231A4(a1 + 1768);
  sub_100123224(a1 + 1736);
  sub_1000EFD00((a1 + 1720));
  sub_100122FA4(a1 + 1192);
  sub_10012720C(a1 + 1152);
  sub_1001232A4((a1 + 1128));
  std::mutex::~mutex((a1 + 1064));
  std::condition_variable::~condition_variable((a1 + 1016));
  std::mutex::~mutex((a1 + 952));
  sub_1000285E0(a1 + 928, *(a1 + 936));
  sub_10014FD8C((a1 + 920));
  std::condition_variable::~condition_variable((a1 + 864));
  std::mutex::~mutex((a1 + 800));
  std::mutex::~mutex((a1 + 696));
  sub_100072AB4((a1 + 648));

  return sub_100123308(a1);
}

uint64_t sub_100122760(uint64_t a1, unint64_t a2, unint64_t a3, atomic_ullong *a4)
{
  atomic_fetch_add((a1 + 784), 1uLL);
  if (a3)
  {
    atomic_fetch_add((a1 + 768), 1uLL);
  }

  atomic_fetch_or((a2 + 544), 2u);
  sub_1000EFD00((a2 + 536));
  if (a4)
  {
    sub_1000EFD00(a4);
  }

  if (a3)
  {
    v8 = atomic_load((a2 + 544));
    if ((v8 & 4) == 0)
    {
      v9 = (a3 & 0x100) >> 8;
      do
      {
        if (*(a2 + 544))
        {
          break;
        }

        if (v9)
        {
          std::mutex::lock((a1 + 696));
          v10 = *(a1 + 688);
          std::mutex::unlock((a1 + 696));
          if (v10)
          {
            break;
          }
        }

        v31[0] = 0;
        v32 = 0;
        v11 = sub_100122AB4(a1, (a3 >> 16) & 1, v31);
        if (v32 == 1)
        {
          sub_100122DF0(v31);
        }

        if (v11 == -1)
        {
          v27.__m_ = sub_100192398(a2);
          v27.__owns_ = 1;
          std::mutex::lock(v27.__m_);
          v18 = sub_100192424(a2);
          v19.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v25 = a1;
          v26 = v19.__d_.__rep_ + 200000;
          v24.__m_ = a2;
          v24.__owns_ = (a3 & 0x100) >> 8;
          *(&v24.__owns_ + 1) = *v28;
          *(&v24.__owns_ + 1) = *&v28[3];
          sub_100122C24(v18, &v27, &v26, &v24);
          if (!v27.__owns_)
          {
            goto LABEL_25;
          }

          m = v27.__m_;
        }

        else
        {
          v24.__m_ = sub_100192398(a2);
          v24.__owns_ = 1;
          std::mutex::lock(v24.__m_);
          v12 = sub_100192424(a2);
          v13 = atomic_load((a2 + 544));
          if ((v13 & 4) == 0)
          {
            v14 = v12;
            do
            {
              if (*(a2 + 544))
              {
                break;
              }

              if (v9)
              {
                std::mutex::lock((a1 + 696));
                v15 = *(a1 + 688);
                std::mutex::unlock((a1 + 696));
                if (v15)
                {
                  break;
                }
              }

              std::condition_variable::wait(v14, &v24);
              v16 = atomic_load((a2 + 544));
            }

            while ((v16 & 4) == 0);
          }

          if (!v24.__owns_)
          {
            goto LABEL_25;
          }

          m = v24.__m_;
        }

        std::mutex::unlock(m);
LABEL_25:
        v20 = *(a2 + 544);
        if (a3 & 0x100) == 0 || (v20)
        {
          if (v20)
          {
            goto LABEL_35;
          }
        }

        else if (*(a1 + 688))
        {
          goto LABEL_35;
        }

        v21 = atomic_load((a2 + 544));
      }

      while ((v21 & 4) == 0);
    }
  }

  v22 = atomic_load((a2 + 544));
  if ((v22 & 4) != 0 && (a3 & 0x10000) != 0)
  {
    v29[0] = off_100217B68;
    v29[1] = a2;
    v29[3] = v29;
    v30 = 1;
    sub_100122AB4(a1, 1, v29);
    if (v30 == 1)
    {
      sub_100122DF0(v29);
    }
  }

LABEL_35:
  if (a3)
  {
    atomic_fetch_add((a1 + 768), 0xFFFFFFFFFFFFFFFFLL);
  }

  return atomic_fetch_and((a2 + 544), 0xFFFFFFFD) & 1;
}

void sub_100122A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, std::mutex *a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a20 == 1)
  {
    sub_100122DF0(&a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100122AB4(uint64_t a1, int a2, uint64_t a3)
{
  if (!*(a1 + 1144))
  {
    return 0;
  }

  std::mutex::lock((a1 + 1064));
  if (*(a1 + 1144))
  {
    v6 = *(a1 + 1136);
    if (v6 == (a1 + 1128))
    {
      v8 = 1;
    }

    else
    {
      if (a2)
      {
        v7 = 6;
      }

      else
      {
        v7 = 4;
      }

      v8 = 1;
      do
      {
        v9 = v6[2];
        if ((sub_1000EFD2C(v9 + 8, v6[3], v7) & 1) != 0 || a2 && (*(a3 + 32) != 1 || sub_100122D98(a3, v9, v6[3])))
        {
          v10 = sub_100192398(v9);
          std::mutex::lock(v10);
          atomic_fetch_and((v9 + 544), 0xFFFFFFFB);
          std::mutex::unlock(v10);
          v11 = *v6;
          v12 = v6[1];
          *(v11 + 8) = v12;
          *v12 = v11;
          --*(a1 + 1144);
          operator delete(v6);
          v6 = v12;
        }

        else
        {
          if (*(a3 + 32) != 1 || sub_100122D98(a3, v9, v6[3]))
          {
            v8 = 0xFFFFFFFFLL;
          }

          v6 = v6[1];
        }
      }

      while (v6 != (a1 + 1128));
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 1064));
  return v8;
}

uint64_t sub_100122C24(std::condition_variable *a1, std::unique_lock<std::mutex> *a2, uint64_t *a3, uint64_t a4)
{
  do
  {
    v8 = *(a4 + 16);
    v9 = atomic_load((*a4 + 544));
    if ((v9 & 4) != 0)
    {
      return 1;
    }

    if (*(*a4 + 544))
    {
      return 1;
    }

    if (*(a4 + 8) == 1)
    {
      std::mutex::lock((v8 + 696));
      v10 = *(v8 + 688);
      std::mutex::unlock((v8 + 696));
      if (v10)
      {
        return 1;
      }
    }

    v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v12 = *a3;
    if (*a3 <= v11.__d_.__rep_)
    {
      break;
    }

    if (!v12)
    {
      v13.__d_.__rep_ = 0;
      goto LABEL_14;
    }

    if (v12 < 1)
    {
      if (v12 < 0xFFDF3B645A1CAC09)
      {
        v13.__d_.__rep_ = 0x8000000000000000;
        goto LABEL_14;
      }
    }

    else if (v12 > 0x20C49BA5E353F7)
    {
      v13.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_14;
    }

    v13.__d_.__rep_ = 1000 * v12;
LABEL_14:
    std::condition_variable::__do_timed_wait(a1, a2, v13);
  }

  while (std::chrono::system_clock::now().__d_.__rep_ < *a3);
  v14 = *(a4 + 16);
  v15 = atomic_load((*a4 + 544));
  if (v15 & 4) != 0 || (*(*a4 + 544))
  {
    return 1;
  }

  if (*(a4 + 8) != 1)
  {
    return 0;
  }

  std::mutex::lock((v14 + 696));
  v16 = *(v14 + 688) != 0;
  std::mutex::unlock((v14 + 696));
  return v16;
}

uint64_t sub_100122D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_10001583C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_100122DF0(uint64_t a1)
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

uint64_t sub_100122EE0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100217B68;
  a2[1] = v2;
  return result;
}

uint64_t sub_100122F20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100122F6C(uint64_t a1)
{
  sub_1000EFD00((a1 + 536));
  sub_100122FA4(a1 + 8);
  return a1;
}

uint64_t sub_100122FA4(uint64_t a1)
{
  sub_10012720C(a1 + 472);
  sub_100123030(a1 + 440);
  sub_1001230B0(a1 + 408);
  if (*(a1 + 400) == 1)
  {
    std::mutex::~mutex((a1 + 320));
    sub_100072AB4((a1 + 272));
    std::mutex::~mutex((a1 + 208));
    std::mutex::~mutex((a1 + 144));
    v2 = *(a1 + 112);
    if (v2)
    {
      *(a1 + 120) = v2;
      operator delete(v2);
    }

    sub_1000F0A18((a1 + 56), 0);
    sub_1000F0A9C(a1 + 64);
  }

  return a1;
}

uint64_t sub_100123030(uint64_t a1)
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

uint64_t sub_1001230B0(uint64_t a1)
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

uint64_t sub_100123130(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    std::mutex::~mutex((a1 + 280));
    sub_100072AB4((a1 + 232));
    std::mutex::~mutex((a1 + 168));
    std::mutex::~mutex((a1 + 104));
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }

    sub_1000F0A18((a1 + 16), 0);
    sub_1000F0A9C(a1 + 24);
  }

  return a1;
}

uint64_t sub_1001231A4(uint64_t a1)
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

uint64_t sub_100123224(uint64_t a1)
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

void *sub_1001232A4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t sub_100123308(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    sub_1000EFD2C(a1 + 104, v3, 1u);
  }

  sub_100122FA4(v2);
  sub_10012720C(a1 + 64);
  sub_100123030(a1 + 32);

  return sub_1001230B0(a1);
}

uint64_t sub_100123380(uint64_t a1)
{
  *(a1 + 736) &= ~1u;
  if (*(a1 + 456))
  {
    v3 = 0;
    do
    {
      v4 = atomic_exchange((*(a1 + 584) + 8 * v3), 0);
      if (v4)
      {
        sub_100120964(a1, v4, v1 & 0xFFFFFFFFFF000000 | 0x10001, 0);
        sub_1000F0B1C((v4 + 360));
        sub_1001235D4(v4 + 8);
        operator delete();
      }

      ++v3;
    }

    while (*(a1 + 456) > v3);
  }

  sub_10014FF0C((a1 + 744), &stru_100217C08);
  if (*(a1 + 584))
  {
    operator delete[]();
  }

  std::mutex::lock((a1 + 520));
  v5 = *(a1 + 480);
  if (*(a1 + 488) != v5)
  {
    v6 = *(a1 + 504);
    v7 = (v5 + 8 * (v6 >> 9));
    v8 = (*v7 + 8 * (v6 & 0x1FF));
    while (v8 != (*(v5 + (((*(a1 + 512) + v6) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 512) + v6) & 0x1FF)))
    {
      v9 = *v8;
      if (*v8)
      {
        sub_1000F0B1C((v9 + 360));
        sub_1001235D4(v9 + 8);
        operator delete();
      }

      if ((++v8 - *v7) == 4096)
      {
        v10 = v7[1];
        ++v7;
        v8 = v10;
      }
    }
  }

  std::mutex::unlock((a1 + 520));
  sub_1001237C4(a1 + 1416);
  sub_100123844(a1 + 1384);
  sub_1000F0B1C((a1 + 1368));
  sub_1001235D4(a1 + 1016);
  sub_1001224C0(a1 + 976);
  sub_1001232A4((a1 + 952));
  std::mutex::~mutex((a1 + 888));
  std::condition_variable::~condition_variable((a1 + 840));
  std::mutex::~mutex((a1 + 776));
  sub_1000285E0(a1 + 752, *(a1 + 760));
  sub_10014FD8C((a1 + 744));
  std::condition_variable::~condition_variable((a1 + 688));
  std::mutex::~mutex((a1 + 624));
  std::mutex::~mutex((a1 + 520));
  sub_100072AB4((a1 + 472));

  return sub_1001238C4(a1);
}

uint64_t sub_10012359C(uint64_t a1)
{
  sub_1000F0B1C((a1 + 360));
  sub_1001235D4(a1 + 8);
  return a1;
}

uint64_t sub_1001235D4(uint64_t a1)
{
  sub_1001224C0(a1 + 296);
  sub_100123658(a1 + 264);
  sub_1001236D8(a1 + 232);
  if (*(a1 + 224) == 1)
  {
    std::mutex::~mutex((a1 + 160));
    *(a1 + 72) = off_100204A60;
    sub_1000914B8((a1 + 96), 0);
    sub_100091644(a1 + 104);
  }

  return a1;
}

uint64_t sub_100123658(uint64_t a1)
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

uint64_t sub_1001236D8(uint64_t a1)
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

uint64_t sub_100123758(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::mutex::~mutex((a1 + 120));
    *(a1 + 32) = off_100204A60;
    sub_1000914B8((a1 + 56), 0);
    sub_100091644(a1 + 64);
  }

  return a1;
}

uint64_t sub_1001237C4(uint64_t a1)
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

uint64_t sub_100123844(uint64_t a1)
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

uint64_t sub_1001238C4(uint64_t a1)
{
  v2 = a1 + 104;
  if (atomic_fetch_add((a1 + 104), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v3 = *(a1 + 136);
    *(a1 + 136) = -1;
    sub_1000F0B48(a1 + 104, v3, 1u);
  }

  sub_1001235D4(v2);
  sub_1001224C0(a1 + 64);
  sub_100123658(a1 + 32);

  return sub_1001236D8(a1);
}

uint64_t sub_10012393C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212AE8;
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

void sub_1001239EC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100123A04(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100212D08;
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

void sub_100123AB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

__n128 sub_100123B48(uint64_t a1, uint64_t a2)
{
  *a2 = off_100217C38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100123B8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100123BD8(uint64_t a1)
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

uint64_t *sub_100123C58(uint64_t a1, char *a2, uint64_t a3, char **a4, char *a5, void *a6, char *a7, unint64_t a8)
{
  v8 = a8;
  v14 = *(a1 + 32);
  v15 = v14 >> 9;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = (v16 + 8 * (v14 >> 9));
  if (v17 == v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  if (a3 == v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = ((a3 - *a2) >> 3) + ((a2 - v18) << 6) - ((v19 - *v18) >> 3);
  }

  v21 = *(a1 + 40);
  if (v20 < v21 - v20)
  {
    if (a8 > v14)
    {
      sub_1001241D0(a1, a8 - v14);
      v14 = *(a1 + 32);
      v16 = *(a1 + 8);
      v17 = *(a1 + 16);
      v15 = v14 >> 9;
    }

    v22 = (v16 + 8 * v15);
    if (v17 == v16)
    {
      v23 = 0;
    }

    else
    {
      v23 = *v22 + 8 * (v14 & 0x1FF);
    }

    v87.n128_u64[0] = v16 + 8 * v15;
    v87.n128_u64[1] = v23;
    if (v8 <= v20)
    {
      goto LABEL_51;
    }

    if (v20 >= v8 >> 1)
    {
      v29 = v8 - v20 + ((a5 - *a4) >> 3);
      if (v29 >= 1)
      {
        a4 += v29 >> 9;
        goto LABEL_32;
      }

      v34 = 511 - v29;
      v35 = ~v34;
      a4 -= v34 >> 9;
    }

    else
    {
      if (!v20)
      {
        a4 = a6;
        v32 = a7;
        goto LABEL_42;
      }

      v29 = (&a7[-*a6] >> 3) - v20;
      if (v29 >= 1)
      {
        a4 = &a6[v29 >> 9];
LABEL_32:
        v32 = &(*a4)[8 * (v29 & 0x1FF)];
LABEL_42:
        if (v32 != a5)
        {
          v39 = *(a1 + 40);
          v40 = *v22;
          v41 = a4;
          v42 = v32;
          do
          {
            if (v23 == v40)
            {
              v43 = *--v22;
              v40 = v43;
              v23 = v43 + 4096;
            }

            if (v42 == *v41)
            {
              v44 = *--v41;
              v42 = (v44 + 4096);
            }

            v45 = *(v42 - 1);
            v42 -= 8;
            *(v23 - 8) = v45;
            v23 -= 8;
            --v14;
            ++v39;
          }

          while (v42 != a5);
          *(a1 + 32) = v14;
          *(a1 + 40) = v39;
        }

        a5 = v32;
        v8 = v20;
LABEL_51:
        if (v8)
        {
          v85 = a6;
          v46 = sub_1001244FC(&v87, v8);
          v48 = v46;
          v49 = v47;
          v50 = v87.n128_u64[1];
          if (v87.n128_u64[1] != v47)
          {
            v51 = *(a1 + 32);
            v52 = *v22;
            v53 = v46;
            v54 = v47;
            do
            {
              if (v23 == v52)
              {
                v55 = *--v22;
                v52 = v55;
                v23 = v55 + 4096;
              }

              if (v54 == *v53)
              {
                v56 = *--v53;
                v54 = (v56 + 4096);
              }

              v57 = *(v54 - 1);
              v54 -= 8;
              *(v23 - 8) = v57;
              v23 -= 8;
              v51 = vaddq_s64(v51, xmmword_1001C2040);
            }

            while (v54 != v50);
            *(a1 + 32) = v51;
          }

          if (v8 >= v20)
          {
            v60 = v87.n128_u64[0];
          }

          else
          {
            v58 = sub_1001244FC(&v87, v20);
            v88 = v87;
            sub_1001248E0(v48, v49, v58, v59, &v88);
            v50 = v88.n128_u64[1];
            v60 = v88.n128_u64[0];
            v87 = v88;
          }

          v88.n128_u64[0] = v60;
          v88.n128_u64[1] = v50;
          sub_1001248E0(a4, a5, v85, a7, &v88);
        }

        goto LABEL_88;
      }

      v38 = 511 - v29;
      v35 = ~v38;
      a4 = &a6[-(v38 >> 9)];
    }

    v32 = &(*a4)[8 * (v35 & 0x1FF)];
    goto LABEL_42;
  }

  v24 = ((v17 - v16) << 6) - 1;
  if (v17 == v16)
  {
    v24 = 0;
  }

  v25 = v14 + v21;
  v26 = v24 - v25;
  if (a8 > v26)
  {
    sub_100124560(a1, a8 - v26);
    v21 = *(a1 + 40);
    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    v25 = *(a1 + 32) + v21;
  }

  v84 = a4;
  v27 = (v16 + 8 * (v25 >> 9));
  if (v17 == v16)
  {
    v28 = 0;
  }

  else
  {
    v28 = &(*v27)[8 * (v25 & 0x1FF)];
  }

  v87.n128_u64[0] = v16 + 8 * (v25 >> 9);
  v87.n128_u64[1] = v28;
  v30 = v21 - v20;
  if (v21 - v20 < v8)
  {
    if (v30 >= v8 >> 1)
    {
      v31 = v21 - v20 - v8 + (&a7[-*a6] >> 3);
      if (v31 >= 1)
      {
        a6 += v31 >> 9;
        goto LABEL_35;
      }

      v36 = 511 - v31;
      v37 = ~v36;
      a6 -= v36 >> 9;
    }

    else
    {
      if (!v30)
      {
        a6 = v84;
        v33 = a5;
        goto LABEL_66;
      }

      v31 = v30 + ((a5 - *v84) >> 3);
      if (v31 >= 1)
      {
        a6 = &v84[v31 >> 9];
LABEL_35:
        v33 = *a6 + 8 * (v31 & 0x1FF);
LABEL_66:
        if (v33 != a7)
        {
          v62 = *v27;
          v63 = a6;
          v64 = v33;
          do
          {
            *v28 = *v64;
            v28 += 8;
            if (v28 - v62 == 4096)
            {
              v65 = v27[1];
              ++v27;
              v62 = v65;
              v28 = v65;
            }

            v64 += 8;
            if (&v64[-*v63] == 4096)
            {
              v66 = v63[1];
              ++v63;
              v64 = v66;
            }

            ++v21;
          }

          while (v64 != a7);
          *(a1 + 40) = v21;
        }

        a7 = v33;
        v8 = v30;
        goto LABEL_75;
      }

      v61 = 511 - v31;
      v37 = ~v61;
      a6 = &v84[-(v61 >> 9)];
    }

    v33 = *a6 + 8 * (v37 & 0x1FF);
    goto LABEL_66;
  }

LABEL_75:
  if (v8)
  {
    v86 = a6;
    v67 = sub_100124878(&v87, v8);
    v69 = v67;
    v70 = v68;
    v71 = v87.n128_u64[1];
    if (v87.n128_u64[1] != v68)
    {
      v72 = *(a1 + 40);
      v73 = *v27;
      v74 = v67;
      v75 = v68;
      do
      {
        *v28 = *v75;
        v28 += 8;
        if (v28 - v73 == 4096)
        {
          v76 = v27[1];
          ++v27;
          v73 = v76;
          v28 = v76;
        }

        v75 += 8;
        if (&v75[-*v74] == 4096)
        {
          v77 = v74[1];
          ++v74;
          v75 = v77;
        }

        ++v72;
      }

      while (v75 != v71);
      *(a1 + 40) = v72;
    }

    if (v8 >= v30)
    {
      v80 = v87.n128_u64[0];
    }

    else
    {
      v78 = sub_100124878(&v87, v30);
      sub_100124A70(v78, v79, v69, v70, v87.n128_u64[0], v87.n128_u64[1], &v88);
      v71 = v89.n128_u64[1];
      v80 = v89.n128_u64[0];
      v87 = v89;
    }

    sub_100124A70(v84, a5, v86, a7, v80, v71, &v88);
  }

LABEL_88:
  v81 = *(a1 + 8);
  if (*(a1 + 16) == v81)
  {
    v82 = 0;
  }

  else
  {
    v82 = *(v81 + 8 * (*(a1 + 32) >> 9)) + 8 * (*(a1 + 32) & 0x1FFLL);
  }

  v88.n128_u64[0] = v81 + 8 * (*(a1 + 32) >> 9);
  v88.n128_u64[1] = v82;
  return sub_1001244FC(&v88, v20);
}

const void **sub_1001241D0(const void **result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  v5 = v4 - v3;
  if (v4 == v3)
  {
    v6 = a2 + 1;
  }

  else
  {
    v6 = a2;
  }

  if (v4 == v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v3) << 6) - 1;
  }

  if ((v6 & 0x1FF) != 0)
  {
    v8 = (v6 >> 9) + 1;
  }

  else
  {
    v8 = v6 >> 9;
  }

  v9 = result[4];
  v10 = v7 - &v9[result[5]];
  if (v8 >= v10 >> 9)
  {
    v11 = v10 >> 9;
  }

  else
  {
    v11 = v8;
  }

  if (v8 <= v10 >> 9)
  {
    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v15 = v2[2];
      *&v17[0] = *(v15 - 1);
      v2[2] = v15 - 1;
      result = sub_100121B78(v2, v17);
    }
  }

  else
  {
    v12 = v8 - v11;
    v13 = result[3] - *result;
    if (v8 - v11 > (v13 >> 3) - (v5 >> 3))
    {
      if (v13 >> 2 <= v12 + (v5 >> 3))
      {
        v14 = v12 + (v5 >> 3);
      }

      else
      {
        v14 = v13 >> 2;
      }

      v18 = result;
      if (v14)
      {
        sub_1000429F0(result, v14);
      }

      memset(v17, 0, sizeof(v17));
      operator new();
    }

    if (v12)
    {
      if (v3 != *result)
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = &v9[512 * v11]; v11; --v11)
    {
      v16 = v2[2];
      *&v17[0] = *(v16 - 1);
      v2[2] = v16 - 1;
      result = sub_100121B78(v2, v17);
    }
  }

  return result;
}

void sub_100124488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1001244FC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = a2 + ((*(a1 + 8) - *result) >> 3);
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

void *sub_100124560(void *result, unint64_t a2)
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

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = sub_100121A70(v2, v16);
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
        sub_1000429F0(result, v12);
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

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = sub_100121A70(v2, v16);
    }
  }

  return result;
}

void sub_100124804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100124878(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = ((*(a1 + 8) - *result) >> 3) - a2;
    if (v4 < 1)
    {
      result -= (511 - v4) >> 9;
      v6 = *result;
    }

    else
    {
      result += v4 >> 9;
      v5 = *result;
    }
  }

  return result;
}

double sub_1001248E0(char **a1, char *__src, char **a3, char *a4, uint64_t a5)
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
    sub_1001249A4(__src, *(a5 + 8), *a1 + 4096, *a5, &v15);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1001249A4(v13, *(a5 + 8), v13 + 4096, *a5, &v15);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = *(a5 + 8);
  }

  sub_1001249A4(v9, v8, a4, v7, &v15);
  result = *&v16;
  *a5 = v16;
  return result;
}

char *sub_1001249A4@<X0>(char *__src@<X0>, char *__dst@<X3>, char *a3@<X1>, void **a4@<X2>, char **a5@<X8>)
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
      v12 = (a3 - v9) >> 3 >= v11 >> 3 ? v11 >> 3 : (a3 - v9) >> 3;
      if (v12)
      {
        __src = memmove(__dst, v9, 8 * v12);
      }

      v9 += 8 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 8 * v12;
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

__n128 sub_100124A70@<Q0>(char **a1@<X1>, char *a2@<X2>, char **a3@<X3>, char *a4@<X4>, void *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
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
      sub_100124B40(v16, v18, v13, v14, &v21);
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

  sub_100124B40(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_100124B40@<X0>(char *a1@<X1>, char *a2@<X2>, void *a3@<X3>, char *a4@<X4>, void *a5@<X8>)
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
      if ((v11 - a1) >> 3 >= v12 >> 3)
      {
        v13 = v12 >> 3;
      }

      else
      {
        v13 = (v11 - a1) >> 3;
      }

      v11 -= 8 * v13;
      a4 -= 8 * v13;
      if (v13)
      {
        result = memmove(a4, v11, 8 * v13);
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

void sub_100124BFC(uint64_t a1, unint64_t **a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6)
{
  if (a3 != a5)
  {
    v12 = *a2;
    v13 = a3;
    v14 = a3;
    v15 = a2;
    while (1)
    {
      if (++v14 - v12 == 4096)
      {
        v16 = v15[1];
        ++v15;
        v12 = v16;
        v14 = v16;
      }

      if (v14 == a5)
      {
        break;
      }

      if (*v13 < *v14)
      {
        v13 = v14;
      }
    }

    std::mutex::lock((a1 + 8));
    sub_100124D1C(a1 + 72, a2, a3, a4, a5);
    if (*v13 >= *(a1 + 96))
    {
      *(a1 + 96) = *a1 + *v13;
    }

    sub_100100A70(a1, a6);

    std::mutex::unlock((a1 + 8));
  }
}

uint64_t sub_100124D1C(uint64_t result, void *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    v8 = result;
    do
    {
      result = sub_100124D90(v8, v8 + 1, v6++);
      if ((v6 - *a2) == 4096)
      {
        v9 = a2[1];
        ++a2;
        v6 = v9;
      }
    }

    while (v6 != a5);
  }

  return result;
}

uint64_t sub_100124D90(void *a1, void *a2, unint64_t *a3)
{
  v3 = *sub_100121104(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_100124E28(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213148;
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

void sub_100124ED8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100124EF0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213368;
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

void sub_100124FA0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100124FB8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213588;
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

void sub_100125068(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100125080(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002137A8;
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

void sub_100125130(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100125148(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002139C8;
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

void sub_1001251F8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100125210(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213BE8;
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

void sub_1001252C0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001252D8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100213E08;
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

void sub_100125388(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001253A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214248;
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

void sub_100125450(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100125468(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214468;
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

void sub_100125518(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_100125530(uint64_t a1@<X0>, std::unique_lock<std::mutex>::mutex_type *a2@<X1>, char a3@<W2>, unint64_t *a4@<X8>)
{
  v8 = (a1 + 952);
  v9 = (a1 + 936);
  v10 = a1 + 1184;
  v32 = (a1 + 104);
  do
  {
    v35.__m_ = v8;
    v35.__owns_ = 1;
    std::mutex::lock(v8);
    if ((a3 & 1) == 0)
    {
      v15 = *v9;
      if (!*v9)
      {
        goto LABEL_14;
      }

      v16 = v9;
      do
      {
        v17 = v15[4];
        v18 = v17 >= a2;
        v19 = v17 < a2;
        if (v18)
        {
          v16 = v15;
        }

        v15 = v15[v19];
      }

      while (v15);
      if (v16 == v9 || v16[4] > a2 || v16[5] == v10)
      {
LABEL_14:
        __lk.__m_ = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&__lk, 0), a4);
        sub_1000EFD00(&__lk);
LABEL_15:
        v14 = 1;
        goto LABEL_16;
      }
    }

    __lk.__m_ = a2;
    *&__lk.__owns_ = v10;
    v11 = sub_10011FF14(a1 + 928, &__lk);
    v12 = v11;
    if (v13)
    {
      __lk.__m_ = 0;
      *a4 = 0;
      a4[1] = v11;
      atomic_store(atomic_exchange(&__lk, 0), a4);
      sub_1000EFD00(&__lk);
      v14 = 1;
      goto LABEL_16;
    }

    v20 = v11[5];
    if (v20 != v10)
    {
      if (!v35.__owns_)
      {
        std::__throw_system_error(1, "unique_lock::unlock: not locked");
        __break(1u);
      }

      std::mutex::unlock(v35.__m_);
      v35.__owns_ = 0;
      sub_100125DA4(&__lk, (v20 + 536));
      if (!__lk.__m_ || (__lk.__m_[8].__m_.__opaque[0] & 1) != 0)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_26;
      }

      if (*&__lk.__m_->__m_.__opaque[24] == a2)
      {
        *a4 = 0;
        a4[1] = v12;
        atomic_store(atomic_exchange(&__lk, 0), a4);
      }

      else
      {
        if (*&__lk.__m_->__m_.__opaque[24] != -1 || (a3 & 1) != 0)
        {
LABEL_26:
          sub_1000EFD00(&__lk);
          v36[0] = off_100217CC8;
          v36[1] = a2;
          v36[3] = v36;
          v37 = 1;
          v21 = sub_100122AB4(a1, 0, v36);
          if (v37 == 1)
          {
            sub_100122DF0(v36);
          }

          if (v21 == -1)
          {
            __lk.__m_ = 0;
            v29 = atomic_load(v32);
            if (v29)
            {
              v30 = v29;
              while (1)
              {
                atomic_compare_exchange_strong(v32, &v30, v29 + 1);
                if (v30 == v29)
                {
                  break;
                }

                v29 = v30;
                if (!v30)
                {
                  goto LABEL_64;
                }
              }

              v31 = *(a1 + 608);
              v30 = v32;
              if (v31)
              {
                *(a1 + 616) = atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
                v30 = v32;
              }
            }

            else
            {
              v30 = 0;
            }

LABEL_64:
            atomic_store(v30, &__lk);
            *a4 = 0;
            a4[1] = v9;
            atomic_store(atomic_exchange(&__lk, 0), a4);
            sub_1000EFD00(&__lk);
            goto LABEL_15;
          }

          atomic_fetch_add((a1 + 768), 1uLL);
          __lk.__m_ = sub_100192398(v20);
          __lk.__owns_ = 1;
          std::mutex::lock(__lk.__m_);
          if ((*(v20 + 544) & 1) == 0 && *(v20 + 40) == -1)
          {
            v22 = sub_100192424(v20);
            std::condition_variable::wait(v22, &__lk);
          }

          atomic_fetch_add((a1 + 768), 0xFFFFFFFFFFFFFFFFLL);
          if (__lk.__owns_)
          {
            std::mutex::unlock(__lk.__m_);
          }

          goto LABEL_47;
        }

LABEL_59:
        v33 = 0;
        *a4 = 0;
        a4[1] = v9;
        atomic_store(atomic_exchange(&v33, 0), a4);
        sub_1000EFD00(&v33);
      }

      sub_1000EFD00(&__lk);
      goto LABEL_15;
    }

    v23 = *v9;
    if (*v9)
    {
      v24 = v9;
      while (1)
      {
        v25 = v23[4];
        v18 = v25 >= a2;
        v26 = v25 < a2;
        if (v18)
        {
          v24 = v23;
        }

        v23 = v23[v26];
        if (!v23)
        {
          if (v24 == v9)
          {
            break;
          }

          if (v24[4] > a2)
          {
            break;
          }

          v27 = v24[5];
          if (v27 != v10)
          {
            v28 = *(v27 + 536);
            if (v28)
            {
              if ((*(v28 + 520) & 1) == 0)
              {
                break;
              }
            }
          }

          if ((*(a1 + 912) & 1) == 0)
          {
            break;
          }

          std::condition_variable::wait((a1 + 1016), &v35);
          v23 = *v9;
          v24 = v9;
          if (!*v9)
          {
            break;
          }
        }
      }

LABEL_47:
      v14 = 0;
      goto LABEL_16;
    }

    v14 = 0;
LABEL_16:
    if (v35.__owns_)
    {
      std::mutex::unlock(v35.__m_);
    }

    if (v14)
    {
      return;
    }
  }

  while ((*(a1 + 912) & 1) != 0);
  v35.__m_ = 0;
  *a4 = 0;
  a4[1] = v9;
  atomic_store(atomic_exchange(&v35, 0), a4);
  sub_1000EFD00(&v35);
}

void sub_10012596C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12, std::mutex *a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (a14 == 1)
  {
    std::mutex::unlock(a13);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_100125A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  v11 = 0;
  std::mutex::lock((a1 + 696));
  v6 = *(a1 + 688);
  if (v6)
  {
    v7 = *(a1 + 680);
    v8 = *(*(*(a1 + 656) + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF));
    *(a1 + 688) = v6 - 1;
    *(a1 + 680) = v7 + 1;
    sub_100073AB4(a1 + 648, 1);
    sub_100125CB8(a1, v8, a2, v12);
    sub_1000FCA00(&v11, v12);
    sub_1000EFD00(v12);
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock((a1 + 696));
  v9 = atomic_load((a1 + 784));
  if (v9 + v6 >= *(a1 + 640))
  {
    v13[0] = 0;
    v14 = 0;
    sub_100122AB4(a1, 0, v13);
    if (v14 == 1)
    {
      sub_100122DF0(v13);
    }
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_1001260C8;
    v12[3] = &unk_100217D38;
    v12[4] = a1;
    sub_10014FE54((a1 + 920), v12);
  }

  *a3 = v8;
  a3[1] = 0;
  atomic_store(atomic_exchange(&v11, 0), a3 + 1);
  return sub_1000EFD00(&v11);
}

void sub_100125BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_ullong a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19 == 1)
  {
    sub_100122DF0(&a15);
  }

  sub_1000EFD00(&a9);
  _Unwind_Resume(a1);
}

unint64_t sub_100125C10(void *a1)
{
  v1 = atomic_load(a1 + 97);
  v2 = a1[79];
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = -1;
  do
  {
    v6 = a1[95];
    v8 = *(v6 + 8 * v3);
    if (v8 && v1 - *(v8 + 520) < v7)
    {
      v5 = *(v6 + 8 * v3);
      v7 = v1 - *(v8 + 520);
      v4 = v3;
    }

    ++v3;
  }

  while (v2 != v3);
  if (!v5)
  {
    return 0;
  }

  v9 = v5;
  atomic_compare_exchange_strong((a1[95] + 8 * v4), &v9, 0);
  if (v9 != v5 || (sub_100122760(a1, v5, 0x101uLL, 0) & 1) == 0)
  {
    return 0;
  }

  return v5;
}

atomic_ullong *sub_100125CB8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  sub_100126438(a2, a3);
  v7 = (a2 + 1);
  v14 = 0;
  v8 = atomic_load(a2 + 1);
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      atomic_compare_exchange_strong(v7, &v9, v8 + 1);
      if (v9 == v8)
      {
        break;
      }

      v8 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = a2[64];
    if (v10)
    {
      a2[65] = atomic_fetch_add_explicit(v10, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  atomic_store(v7, &v14);
  if (*(a1 + 632))
  {
    v11 = 0;
    while (1)
    {
      v12 = 0;
      atomic_compare_exchange_strong((*(a1 + 760) + 8 * v11), &v12, a2);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 632) <= ++v11)
      {
        goto LABEL_12;
      }
    }

    *a4 = 0;
    atomic_store(atomic_exchange(&v14, 0), a4);
  }

  else
  {
LABEL_12:
    *a4 = 0;
  }

  return sub_1000EFD00(&v14);
}

unint64_t *sub_100125DA4(unint64_t *a1, unint64_t *a2)
{
  *a1 = 0;
  v3 = atomic_load(a2);
  if (v3)
  {
    v4 = atomic_load(v3);
    if (!v4)
    {
LABEL_12:
      v3 = 0;
      goto LABEL_13;
    }

    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    v6 = v3[63];
    if (v6)
    {
      v3[64] = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    }

    if (!sub_100125E48(v3))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v7 = v3[4];
        v3[4] = -1;
        sub_1000EFD2C(v3, v7, 1u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  atomic_store(v3, a1);
  return a1;
}

BOOL sub_100125E48(uint64_t a1)
{
  v2 = (a1 + 24);
  v3 = atomic_load((a1 + 24));
  if (v3 == 2)
  {
    v4 = atomic_load(a1);
    return v4 > 1;
  }

  else
  {
    atomic_fetch_add((a1 + 8), 1uLL);
    v6 = atomic_load(v2);
    if (v6 != 2 && (*(a1 + 520) & 1) == 0)
    {
      v10 = 1;
      v9 = &v10;
      v14 = 5;
      v12[0] = (a1 + 24);
      v12[1] = &v10;
      v13 = 5;
      v11[0] = a1 + 24;
      v11[1] = &v14;
      v11[2] = &v9;
      sub_1001109D8(v11, v12, 0);
    }

    atomic_fetch_add((a1 + 8), 0xFFFFFFFFFFFFFFFFLL);
    v7 = atomic_load(a1);
    if (v7 < 2)
    {
      return 0;
    }

    else
    {
      v8 = atomic_load(v2);
      return v8 == 2;
    }
  }
}

uint64_t sub_100125F94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100217CC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100125FD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t *sub_100126020(unint64_t *a1, unint64_t *a2, int a3)
{
  v3 = a2;
  *a1 = 0;
  if (a2)
  {
    v5 = atomic_load(a2);
    if (!v5)
    {
LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    v6 = v5;
    while (1)
    {
      atomic_compare_exchange_strong(a2, &v6, v5 + 1);
      if (v6 == v5)
      {
        break;
      }

      v5 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v8 = a2[63];
    if (v8)
    {
      a2[64] = atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
    }

    if (a3 && !sub_100125E48(a2))
    {
      if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
      {
        v9 = v3[4];
        v3[4] = -1;
        sub_1000EFD2C(v3, v9, 1u);
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  atomic_store(v3, a1);
  return a1;
}

uint64_t sub_1001260C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100125C10(v1);
  if (v2)
  {
    sub_100126180(v1, v2);
  }

  v4[0] = 0;
  v5 = 0;
  result = sub_100122AB4(v1, 0, v4);
  if (v5 == 1)
  {
    return sub_100122DF0(v4);
  }

  return result;
}

void sub_100126160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_100122DF0(&a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_100126180(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 696));
  sub_1001261DC((a1 + 648), &v3);
  std::mutex::unlock((a1 + 696));
}

void *sub_1001261DC(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_100126264(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_100126264(void *a1)
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

void sub_1001263EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

atomic_ullong *sub_100126438(uint64_t a1, uint64_t a2)
{
  atomic_store(0, (a1 + 544));
  v3 = (a1 + 8);
  sub_100126508(a1 + 8, a2);
  v9 = 0;
  v4 = atomic_load(v3);
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      atomic_compare_exchange_strong(v3, &v5, v4 + 1);
      if (v5 == v4)
      {
        break;
      }

      v4 = v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }

    v6 = *(a1 + 512);
    v5 = v3;
    if (v6)
    {
      *(a1 + 520) = atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
      v5 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_9:
  atomic_store(v5, &v9);
  sub_1000FCA00((a1 + 536), &v9);
  result = sub_1000EFD00(&v9);
  if (atomic_fetch_add(v3, 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    v8 = *(a1 + 40);
    *(a1 + 40) = -1;
    return sub_1000EFD2C(v3, v8, 1u);
  }

  return result;
}

uint64_t sub_100126508(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *(a1 + 520) = 0;
  atomic_store(1uLL, a1);
  atomic_store(0, (a1 + 8));
  atomic_store(0, (a1 + 16));
  result = sub_100121404(a1 + 40);
  v4 = *(a1 + 504);
  if (v4)
  {
    *(a1 + 512) = atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  atomic_store(1u, (a1 + 24));
  __dmb(0xBu);
  return result;
}

void sub_100126570(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  *(a1 + 512) = **(a1 + 504);
  sub_100121404(a1 + 40);
  sub_100126668(a1 + 40, a2, a3, a4, a5, a6);
}

void sub_100126628(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 520) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void sub_100126668(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5, unsigned __int8 *a6)
{
  v6 = a3[1];
  v7[0] = *a3;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000F1540(a1, a2, v7, *a4, *a5, *a6);
}

void sub_1001266D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001266E8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  *(a1 + 512) = **(a1 + 504);
  sub_100121404(a1 + 40);
  sub_1001267D8(a1 + 40, a2, a3, a4, a5);
}

void sub_100126798(void *a1)
{
  __cxa_begin_catch(a1);
  atomic_store(0, (v1 + 24));
  *(v1 + 520) = 1;
  if (atomic_load((v1 + 8)))
  {
    std::__cxx_atomic_notify_all((v1 + 24));
  }

  __cxa_rethrow();
}

void sub_1001267D8(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a3[1];
  v6[0] = *a3;
  v6[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000F1540(a1, a2, v6, *a4, *a5, 0);
}

void sub_100126840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000E984(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100126858(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214688;
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

void sub_100126908(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126920(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002148A8;
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

void sub_1001269D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001269E8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100126A3C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214AC8;
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

void sub_100126AEC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126B04(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214CE8;
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

void sub_100126BB4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126BCC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100214F08;
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

void sub_100126C7C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126C94(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215128;
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

void sub_100126D44(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126D5C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215348;
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

void sub_100126E0C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126E24(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215568;
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

void sub_100126ED4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126EEC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215788;
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

void sub_100126F9C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100126FB4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002159A8;
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

void sub_100127064(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012707C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215BC8;
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

void sub_10012712C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100127144(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100215DE8;
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

void sub_1001271F4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012720C(uint64_t a1)
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

void sub_10012728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100127644(a1);
  *(v8 + 632) = a2;
  *(v8 + 640) = a3;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0u;
  *(v8 + 696) = 850045863;
  *(v8 + 704) = 0u;
  *(v8 + 720) = 0u;
  *(v8 + 736) = 0u;
  *(v8 + 752) = 0;
  *(v8 + 768) = 0u;
  *(v8 + 784) = 0u;
  *(v8 + 800) = 850045863;
  *(v8 + 808) = 0u;
  *(v8 + 824) = 0u;
  *(v8 + 840) = 0u;
  *(v8 + 856) = 0;
  *(v8 + 864) = 1018212795;
  *(v8 + 904) = 0;
  *(v8 + 872) = 0u;
  *(v8 + 888) = 0u;
  *(v8 + 912) = 1;
  sub_10014FE40(v8 + 920, "dealloc_queue");
  *(a1 + 936) = 0u;
  *(a1 + 928) = a1 + 936;
  *(a1 + 952) = 850045863;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 1018212795;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = 850045863;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = a1 + 1128;
  *(a1 + 1136) = a1 + 1128;
  *(a1 + 1144) = 0;
  sub_100127BA4(a1 + 1152, a4);
  sub_100127C3C(a1 + 1184, a1);
  *(a1 + 1736) = off_100218018;
  *(a1 + 1744) = a1;
  *(a1 + 1760) = a1 + 1736;
  *(a1 + 1768) = off_1002180A8;
  *(a1 + 1776) = a1;
  *(a1 + 1792) = a1 + 1768;
  operator new[]();
}

void sub_1001274C0(_Unwind_Exception *a1)
{
  sub_10012720C(v1 + 1152);
  sub_1001232A4(v3);
  std::mutex::~mutex((v1 + 1064));
  std::condition_variable::~condition_variable((v1 + 1016));
  std::mutex::~mutex((v1 + 952));
  sub_1000285E0(v1 + 928, *v4);
  sub_10014FD8C((v1 + 920));
  std::condition_variable::~condition_variable((v1 + 864));
  std::mutex::~mutex((v1 + 800));
  std::mutex::~mutex((v1 + 696));
  sub_100072AB4(v2);
  sub_100123308(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100127584(uint64_t a1, void *a2)
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
    sub_100126264(a1);
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

uint64_t sub_100127644(uint64_t a1)
{
  *a1 = off_100217D68;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_100217DF8;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100217E88;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_1001279B8(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_100126508(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 624) = 1;
  return a1;
}

void sub_100127708(_Unwind_Exception *a1)
{
  sub_10012720C(v3);
  sub_100123030(v2);
  sub_1001230B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001277B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100127890(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012796C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001279B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 400) = 0;
  sub_100127A74(a1 + 408, a2);
  sub_100127B0C(a1 + 440, a3);
  sub_100127BA4(a1 + 472, a4);
  *(a1 + 504) = a5;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0;
  return a1;
}

void sub_100127A40(_Unwind_Exception *a1)
{
  sub_100123030(v1 + 440);
  sub_1001230B0(v1 + 408);
  sub_100123130(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100127A74(uint64_t a1, uint64_t a2)
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

uint64_t sub_100127B0C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100127BA4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100127C3C(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_100217F18;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100217F98;
  v4[1] = a1;
  v4[3] = v4;
  sub_1001279B8(a1 + 8, v5, v4, a2 + 1152, a2 + 776);
  sub_100123030(v4);
  sub_1001230B0(v5);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  return a1;
}

void sub_100127D14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100123030(va);
  sub_1001230B0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100127DA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100217F18;
  a2[1] = v2;
  return result;
}

uint64_t sub_100127DE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100127E30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10001583C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t sub_100127F00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100217F98;
  a2[1] = v2;
  return result;
}

uint64_t sub_100127F3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100127F88(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10012804C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218018;
  a2[1] = v2;
  return result;
}

uint64_t sub_10012808C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001280D8(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 544) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 1064));
      operator new();
    }

    sub_100128288(a1, a3);
    sub_1000EFD00((a2 + 536));
    if ((atomic_fetch_or((a2 + 544), 1u) & 2) == 0)
    {
      sub_100126180(a1, a2);
    }

    if (atomic_fetch_add((a1 + 784), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 792)))
      {
        std::mutex::lock((a1 + 800));
        if (atomic_load((a1 + 792)))
        {
          std::condition_variable::notify_all((a1 + 864));
        }

        std::mutex::unlock((a1 + 800));
      }
    }

    v8 = (a1 + 768);
    if (atomic_load(v8))
    {
      v10 = sub_100192398(a2);
      std::mutex::lock(v10);
      if (atomic_load(v8))
      {
        v12 = sub_100192424(a2);
        std::condition_variable::notify_all(v12);
      }

      std::mutex::unlock(v10);
    }
  }
}

void sub_100128288(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 952));
  sub_10004EDC8((a1 + 928), &v3);
  std::condition_variable::notify_all((a1 + 1016));
  std::mutex::unlock((a1 + 952));
}

uint64_t sub_10012835C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002180A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100128394(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001283E0(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 632);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 760);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        sub_100122760(a1, a2, 1uLL, a3);

        sub_100126180(a1, a2);
      }
    }
  }
}

void sub_10012848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100128838(a1);
  *(v8 + 456) = a2;
  *(v8 + 464) = a3;
  *(v8 + 472) = 0u;
  *(v8 + 488) = 0u;
  *(v8 + 504) = 0u;
  *(v8 + 520) = 850045863;
  *(v8 + 528) = 0u;
  *(v8 + 544) = 0u;
  *(v8 + 560) = 0u;
  *(v8 + 576) = 0;
  *(v8 + 592) = 0u;
  *(v8 + 608) = 0u;
  *(v8 + 624) = 850045863;
  *(v8 + 632) = 0u;
  *(v8 + 648) = 0u;
  *(v8 + 664) = 0u;
  *(v8 + 680) = 0;
  *(v8 + 688) = 1018212795;
  *(v8 + 728) = 0;
  *(v8 + 696) = 0u;
  *(v8 + 712) = 0u;
  *(v8 + 736) = 1;
  sub_10014FE40(v8 + 744, "dealloc_queue");
  *(a1 + 760) = 0u;
  *(a1 + 752) = a1 + 760;
  *(a1 + 776) = 850045863;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0;
  *(a1 + 840) = 1018212795;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0;
  *(a1 + 888) = 850045863;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0;
  *(a1 + 952) = a1 + 952;
  *(a1 + 960) = a1 + 952;
  *(a1 + 968) = 0;
  sub_100128D98(a1 + 976, a4);
  sub_100128E30(a1 + 1008, a1);
  *(a1 + 1384) = off_1002183E8;
  *(a1 + 1392) = a1;
  *(a1 + 1408) = a1 + 1384;
  *(a1 + 1416) = off_100218478;
  *(a1 + 1424) = a1;
  *(a1 + 1440) = a1 + 1416;
  operator new[]();
}

void sub_1001286B4(_Unwind_Exception *a1)
{
  sub_1001224C0(v1 + 976);
  sub_1001232A4(v3);
  std::mutex::~mutex((v1 + 888));
  std::condition_variable::~condition_variable((v1 + 840));
  std::mutex::~mutex((v1 + 776));
  sub_1000285E0(v1 + 752, *v4);
  sub_10014FD8C((v1 + 744));
  std::condition_variable::~condition_variable((v1 + 688));
  std::mutex::~mutex((v1 + 624));
  std::mutex::~mutex((v1 + 520));
  sub_100072AB4(v2);
  sub_1001238C4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100128778(uint64_t a1, void *a2)
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
    sub_100120320(a1);
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

uint64_t sub_100128838(uint64_t a1)
{
  *a1 = off_100218138;
  *(a1 + 24) = a1;
  *(a1 + 32) = off_1002181C8;
  *(a1 + 56) = a1 + 32;
  *(a1 + 64) = off_100218258;
  *(a1 + 88) = a1 + 64;
  *(a1 + 96) = 0;
  sub_100128BAC(a1 + 104, a1, a1 + 32, a1 + 64, a1 + 96);
  sub_100120FF4(a1 + 104, -1);
  atomic_store(0, (a1 + 128));
  *(a1 + 448) = 1;
  return a1;
}

void sub_1001288FC(_Unwind_Exception *a1)
{
  sub_1001224C0(v3);
  sub_100123658(v2);
  sub_1001236D8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001289AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128A84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128B60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 224) = 0;
  sub_100128C68(a1 + 232, a2);
  sub_100128D00(a1 + 264, a3);
  sub_100128D98(a1 + 296, a4);
  *(a1 + 328) = a5;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  return a1;
}

void sub_100128C34(_Unwind_Exception *a1)
{
  sub_100123658(v1 + 264);
  sub_1001236D8(v1 + 232);
  sub_100123758(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100128C68(uint64_t a1, uint64_t a2)
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

uint64_t sub_100128D00(uint64_t a1, uint64_t a2)
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

uint64_t sub_100128D98(uint64_t a1, uint64_t a2)
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

uint64_t sub_100128E30(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v5[0] = off_1002182E8;
  v5[1] = a1;
  v5[3] = v5;
  v4[0] = off_100218368;
  v4[1] = a1;
  v4[3] = v4;
  sub_100128BAC(a1 + 8, v5, v4, a2 + 976, a2 + 600);
  sub_100123658(v4);
  sub_1001236D8(v5);
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  return a1;
}

void sub_100128F08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100123658(va);
  sub_1001236D8(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100128F94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002182E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100128FD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100129024(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a4;
  v6 = a3;
  v7 = a2;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_10001583C();
  }

  return (*(*v4 + 48))(v4, &v7, &v6, &v8);
}

uint64_t sub_1001290F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218368;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129130(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012917C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100129240(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002183E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129280(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001292CC(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if ((*(a2 + 368) & 1) == 0)
  {
    if ((a4 & 3) == 1)
    {
      std::mutex::lock((a1 + 888));
      operator new();
    }

    sub_10012947C(a1, a3);
    sub_1000F0B1C((a2 + 360));
    if ((atomic_fetch_or((a2 + 368), 1u) & 2) == 0)
    {
      sub_10012023C(a1, a2);
    }

    if (atomic_fetch_add((a1 + 608), 0xFFFFFFFFFFFFFFFFLL) == 1)
    {
      if (atomic_load((a1 + 616)))
      {
        std::mutex::lock((a1 + 624));
        if (atomic_load((a1 + 616)))
        {
          std::condition_variable::notify_all((a1 + 688));
        }

        std::mutex::unlock((a1 + 624));
      }
    }

    v8 = (a1 + 592);
    if (atomic_load(v8))
    {
      v10 = sub_100192398(a2);
      std::mutex::lock(v10);
      if (atomic_load(v8))
      {
        v12 = sub_100192424(a2);
        std::condition_variable::notify_all(v12);
      }

      std::mutex::unlock(v10);
    }
  }
}

void sub_10012947C(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  std::mutex::lock((a1 + 776));
  sub_10004EDC8((a1 + 752), &v3);
  std::condition_variable::notify_all((a1 + 840));
  std::mutex::unlock((a1 + 776));
}

uint64_t sub_100129550(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218478;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129588(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001295D4(uint64_t a1, unint64_t a2, atomic_ullong *a3)
{
  v3 = *(a1 + 456);
  if (v3 >= 1)
  {
    v6 = 0;
    v7 = *(a1 + 584);
    v8 = &v7[v3];
    while (!v7 || *v7 != a2)
    {
      ++v7;
      v6 -= 8;
      if (v7 >= v8)
      {
        return;
      }
    }

    if (v6 <= 0)
    {
      v9 = a2;
      atomic_compare_exchange_strong(v7, &v9, 0);
      if (v9 == a2)
      {
        sub_100120964(a1, a2, 1uLL, a3);

        sub_10012023C(a1, a2);
      }
    }
  }
}

uint64_t sub_1001296F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100218508;
  a2[1] = v2;
  return result;
}

uint64_t sub_100129724(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100218568))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100129770(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 32);
  v9[0] = off_1002117E8;
  v9[1] = v4;
  (*(**(v4 + 16) + 80))(&v10);
  if (*(a2 + 113) == 1)
  {
    sub_1000F4388(v3, v9, *(a2 + 8) / *(v3 + 88), 0, 0, &v8);
  }

  else
  {
    v8 = 0;
  }

  if (v8 && (*(v8 + 520) & 1) == 0)
  {
    if (*(v8 + 400))
    {
      v5 = v8 + 40;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000FC424(a2, v9, v5, *(v3 + 28));
  sub_1000EFD00(&v8);
  v9[0] = off_1002117E8;
  if (v11)
  {
    sub_10000E984(v11);
  }

  return v6;
}

void sub_10012988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001298C0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100129958(uint64_t a1)
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

uint64_t sub_1001299D8(std::__thread_struct **a1)
{
  v6 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v6[1];
  sub_1001298C0(v7, (v6 + 2));
  sub_1000F3A80(v4, v7);
  sub_100129958(v7);
  sub_100129A9C(&v6);
  return 0;
}

void sub_100129A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__thread_struct **a9, char a10)
{
  sub_100129958(&a10);
  sub_100129A9C(&a9);
  _Unwind_Resume(a1);
}

std::__thread_struct ***sub_100129A9C(std::__thread_struct ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100129958((v1 + 2));
    sub_100129AF0(v1);
    operator delete();
  }

  return result;
}

std::__thread_struct **sub_100129AF0(std::__thread_struct **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__thread_struct::~__thread_struct(v2);
    operator delete();
  }

  return a1;
}

void *sub_100129B38(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_100218628;
  a1[2] = off_100218690;
  a1[1] = off_100218650;
  return a1;
}

std::exception *sub_100129BBC(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_100129C38(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100129CD4(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100129D58(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_100129DF8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_100129E90(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

std::exception *sub_100129F40(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

_WORD *sub_100129FBC(_WORD *result, int a2)
{
  *result = 0;
  if (a2)
  {
    v2 = a2;
    exception = __cxa_allocate_exception(0x28uLL);
    exception[1] = "total_segments_t";
    exception[2] = "invalid value";
    exception[3] = "value validator";
    *exception = &off_10020AFD0;
    *(exception + 16) = v2;
  }

  return result;
}

void sub_10012A040(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10012A0DC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 1;
  v1[1].__vftable = off_1002084E0;
  v3 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10012A174(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[1].__vftable = off_1002084E0;
  v2 = v1[5].__vftable;
  v1[5].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 1);

  operator delete();
}

uint64_t sub_10012A224(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100216298;
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

void sub_10012A2D4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_10012A2EC(void *a1, uint64_t a2)
{
  sub_1000A5780((a1 + 2), a2);
  *a1 = off_100218848;
  a1[2] = off_1002188B0;
  a1[1] = off_100218870;
  return a1;
}

std::exception *sub_10012A370(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
  return a1;
}

void sub_10012A3EC(std::exception *a1)
{
  v2 = a1 + 2;
  a1[2].__vftable = off_1002084E0;
  v3 = a1[6].__vftable;
  a1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10012A488(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10012A50C(std::exception *a1)
{
  v2 = a1 + 1;
  a1[1].__vftable = off_1002084E0;
  v3 = a1[5].__vftable;
  a1[5].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);

  operator delete();
}

void sub_10012A5AC(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v2 = v1 + 2;
  v1[2].__vftable = off_1002084E0;
  v3 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v3)
  {
    (*(v3->~exception + 1))(v3);
  }

  std::exception::~exception(v2);
}

void sub_10012A644(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  v1[2].__vftable = off_1002084E0;
  v2 = v1[6].__vftable;
  v1[6].__vftable = 0;
  if (v2)
  {
    (*(v2->~exception + 1))(v2);
  }

  std::exception::~exception(v1 + 2);

  operator delete();
}

uint64_t sub_10012A6F4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002166D8;
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

void sub_10012A7A4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A7BC(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002164B8;
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

void sub_10012A86C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A884(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100216B18;
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

void sub_10012A934(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012A94C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002168F8;
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

void sub_10012A9FC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_10012AA14(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20[0] = a3;
  v20[1] = a4;
  v5 = *(*(a1 + 8) + 16);
  result = sub_1000F1CD0(a1, a2, v18);
  v16 = 0u;
  v17 = 0u;
  while (v18[0] != v19[3] || v18[1] != v19[4])
  {
    v11[0] = (*(*(v19[0] + 56) + 16 * v19[1] + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v19[0] + 8) + 28);
    if (v11[0])
    {
      sub_10012ABC8(v20, v11);
    }

    sub_1000F54C0(a1, v19, v11);
    while (v11[0] != v14 || v11[1] != v15)
    {
      v10 = (*(*(v12 + 56) + 16 * v13 + 8) & 0x7FFFFFFFFFFFFFLL) * *(*(v12 + 8) + 28);
      if (v10)
      {
        sub_10012ABC8(v20, &v10);
      }

      if (*(v5 + 160) == 1)
      {
        v7 = atomic_load((*(v12 + 56) + 16 * v13 + 8));
        v8 = v7 >> 62;
        if ((v7 >> 62) > 1)
        {
          v9 = &v17;
          if (v8 != 2)
          {
            v9 = &v17 + 8;
          }
        }

        else if (v8)
        {
          v9 = &v16 + 8;
        }

        else
        {
          v9 = &v16;
        }

        ++*v9;
      }

      sub_1000F1488(v11);
    }

    result = sub_1000F1360(v18);
  }

  if (*(v5 + 160) == 1)
  {
    return sub_10012AC34(v5, &v16);
  }

  return result;
}

void **sub_10012ABC8(void **a1, unint64_t *a2)
{
  v3 = sub_100124D90(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

atomic_ullong *sub_10012AC34(atomic_ullong *result, unint64_t *a2)
{
  v2 = result[10];
  v3 = v2;
  atomic_compare_exchange_strong_explicit(result + 10, &v3, &_mh_execute_header + (v2 & 0xFFFFFFFF00000000 | (v2 + 1)), memory_order_relaxed, memory_order_relaxed);
  if (v3 != v2)
  {
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v4, &_mh_execute_header + (v3 & 0xFFFFFFFF00000000 | (v3 + 1)), memory_order_relaxed, memory_order_relaxed);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  atomic_fetch_add_explicit(result + 11, *a2, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 12, v6, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 13, v7, memory_order_relaxed);
  atomic_fetch_add_explicit(result + 14, v8, memory_order_relaxed);
  v9 = result[10];
  v10 = v9;
  atomic_compare_exchange_strong_explicit(result + 10, &v10, (v9 & 0xFFFFFFFF00000000 | (v9 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
  if (v10 != v9)
  {
    v11 = v10;
    do
    {
      atomic_compare_exchange_strong_explicit(result + 10, &v11, (v10 & 0xFFFFFFFF00000000 | (v10 + 1)) - 0x100000000, memory_order_relaxed, memory_order_relaxed);
      v5 = v11 == v10;
      v10 = v11;
    }

    while (!v5);
  }

  return result;
}

void sub_10012AD04(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v4 = a2[1];
  v5 = *(a3 + 1);
  if (v4 != v5)
  {
    v10 = *a2;
    v11 = a2[2];
    v12 = v4 + 1;
    if (v4 + 1 != v5)
    {
      v13 = v10 + v11 * v12;
      v14 = a2[1];
      do
      {
        if (v10 + v14 * v11 < v13)
        {
          v4 = v12;
          v14 = v12;
        }

        ++v12;
        v13 += v11;
      }

      while (v5 != v12);
    }

    std::mutex::lock((a1 + 8));
    v18 = *a2;
    v19 = a2[2];
    v16 = *a3;
    v17 = *(a3 + 2);
    sub_10012AE18(a1 + 72, &v18, &v16);
    v15 = v10 + v4 * v11;
    if (v15 >= *(a1 + 96))
    {
      *(a1 + 96) = *a1 + v15;
    }

    sub_100100A70(a1, a4);
    std::mutex::unlock((a1 + 8));
  }
}

uint64_t sub_10012AE18(uint64_t result, void *a2, uint64_t a3)
{
  v5 = a2[1];
  if (v5 != *(a3 + 8))
  {
    v9[5] = v3;
    v9[6] = v4;
    v8 = result;
    do
    {
      v9[0] = *a2 + a2[2] * v5;
      result = sub_100124D90(v8, v8 + 1, v9);
      v5 = a2[1] + 1;
      a2[1] = v5;
    }

    while (v5 != *(a3 + 8));
  }

  return result;
}

void sub_10012AEA8(uint64_t ***a1)
{
  v1 = ***a1;
  sub_100150558((v1 + 56), (v1 + 48));
  sub_100150548(v1 + 56);

  sub_100150564(v1 + 56);
}

uint64_t sub_10012AEF8(uint64_t a1, void **a2)
{
  v2 = *sub_100081364(a1, &v4, a2);
  if (!v2)
  {
    sub_10012AFA0();
  }

  return v2;
}

uint64_t sub_10012B048(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10012B094(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10012B094(uint64_t a1)
{
  sub_10012B0E4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10012B0E4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_1002188D8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void sub_10012B13C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_10012B154(uint64_t a1, std::string *this, std::string *__str)
{
  if (*(a1 + 24))
  {
    v4[0] = a1;
    v4[1] = __str;
    sub_10012B19C(v4);
  }

  else
  {

    std::string::operator=(this, __str);
  }
}

__n128 sub_10012B19C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*(v1 + 23) < 0)
  {
    sub_100050108(&v5, *v1, *(v1 + 8));
  }

  else
  {
    v3 = *v1;
    v6 = *(v1 + 16);
    v5 = v3;
  }

  sub_10012B0E4(v2);
  result = v5;
  v2[1].n128_u64[0] = v6;
  *v2 = result;
  v2[1].n128_u32[2] = 0;
  return result;
}

void sub_10012B208(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10012B208(a1, *a2);
    sub_10012B208(a1, a2[1]);
    sub_10012B094((a2 + 4));

    operator delete(a2);
  }
}

void sub_10012B264(uint64_t a1, uint64_t a2, void **a3)
{
  sub_10012B39C(*a3);
  v4 = *a3;
  sub_100010B0C(__p, "telemetryIndex");
  v5 = v4[1];
  v6 = *(*v4 + 24);
  v16 = __p;
  v7 = sub_10012AEF8(v5, __p);
  v8 = v7;
  if (*(v7 + 80) != 1)
  {
    sub_10012B0E4(v7 + 56);
    *(v8 + 80) = 1;
  }

  *(v8 + 56) = v6;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = *a3;
  sub_100010B0C(__p, "numChuncksDefraged");
  v10 = v9[1];
  v11 = *(*v9 + 32);
  v16 = __p;
  v12 = sub_10012AEF8(v10, __p);
  v13 = v12;
  if (*(v12 + 80) != 1)
  {
    sub_10012B0E4(v12 + 56);
    *(v13 + 80) = 1;
  }

  *(v13 + 56) = v11;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10012B37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10012B39C(void *a1)
{
  sub_100010B0C(v7, "telemetryID");
  v2 = *a1;
  if (*(*a1 + 23) < 0)
  {
    sub_100050108(&__p, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    __p.__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&__p.__r_.__value_.__l.__data_ = v3;
  }

  v4 = a1[1];
  v9 = v7;
  v5 = sub_10012AEF8(v4, v7);
  sub_10012B154(v5 + 56, (v5 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }
}

void sub_10012B458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012B48C(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  result = (*(**v1[2] + 184))(*v1[2]);
  if (*(v2 + 44) != 1)
  {
    *(v2 + 64) = sub_100195AE4();
    *(v2 + 72) = v4;
    v5 = *(v2 + 16);
    sub_100101968(v2 + 32);
  }

  return result;
}

uint64_t sub_10012B508(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217068;
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

void sub_10012B5B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B5D0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100217288;
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

void sub_10012B680(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B698(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002174A8;
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

void sub_10012B748(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B760(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002176C8;
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

void sub_10012B810(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10012B828(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002178E8;
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

void sub_10012B8D8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

void sub_10012C048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  sub_10000E950(&a9);
  v13 = a10;
  a10 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_10000E950((v11 - 40));
  _Unwind_Resume(a1);
}

const void **sub_10012C120@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100026B3C(a1 + *(*a1 - 112), &v6);
  v7 = @"Encryption Info";
  v8 = v6;
  v6 = 0;
  sub_10000E950(&v6);
  v4[0] = &v7;
  v4[1] = 1;
  sub_100145408(v4, &v5);
  *a2 = v5;
  v5 = 0;
  sub_100028D2C(&v5);
  return sub_100028CF8(&v8);
}

uint64_t sub_10012C200(uint64_t a1)
{
  *(a1 + 56) = off_100219030;
  *(a1 + 24) = off_100219088;
  sub_1000283C8((a1 + 88));
  return a1;
}

void sub_10012C344(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_10012C3F0(uint64_t a1)
{
  *(a1 + 56) = off_100219030;
  *(a1 + 24) = off_100219088;
  sub_1000283C8((a1 + 88));

  operator delete();
}

const void **sub_10012C488(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C4E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C588(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C5E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C688(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C6E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C788(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C7E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C888(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C8E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012C988(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012C9E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

const void **sub_10012CA88(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  return sub_1000283C8(v1 + 11);
}

void sub_10012CAE8(void *a1)
{
  v1 = a1 + *(*a1 - 32);
  *(v1 + 7) = off_100219030;
  *(v1 + 3) = off_100219088;
  sub_1000283C8(v1 + 11);

  operator delete();
}

AAByteStream *sub_10012CBB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(**a1 + 192))(*a1);
  if (v3 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "AEAHelper: Invalid file descriptor.", 0x16u);
  }

  v7 = AAFileStreamOpenWithFD(v3, 0);
  sub_100132BB4(&v8, &v7);
  sub_100132C94(&v7, &v8);
  sub_100132F50(a2, &v7);
  sub_100132C98(&v7);
  return sub_100132BB8(&v8);
}

void sub_10012CC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, AEAContext a9, AAByteStream a10)
{
  sub_100132C98(&a9);
  sub_100132BB8(&a10);
  _Unwind_Resume(a1);
}

void sub_10012D090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10012DA8C(v40);
  if (a33 == 1 && a32 < 0)
  {
    operator delete(a27);
  }

  if (a34)
  {
    operator delete[]();
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10012D158(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v5);
    sub_100001FE8(v5, "Not allowed more than one instance of ", 38);
    v4 = strlen((0x80000001001C57AFLL & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v5, 0x80000001001C57AFLL & 0x7FFFFFFFFFFFFFFFLL, v4);
    sub_100001FE8(v5, " auth entry", 11);
    sub_10000EBDC(exception, v5, 0x16u);
  }

  return sub_10012DB30(a1, a2);
}

void sub_10012D238(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D270@<X0>(AEAAuthData *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = malloc_type_valloc(0x800uLL, 0x8B7C732DuLL);
  if (!v6)
  {
    exception = __cxa_allocate_exception(8uLL);
    v19 = std::bad_alloc::bad_alloc(exception);
  }

  __s = off_1002190F0;
  v24[2] = &__s;
  __s2 = v6;
  sub_100015FBC(v26, &__s);
  sub_10001590C(&__s);
  v7 = sub_100132F84(a1);
  if (v7)
  {
    v8 = 0;
    v9 = __s2;
    while (1)
    {
      v22 = 0;
      bzero(v9, 0x800uLL);
      if (sub_100132F8C(a1, v8, 0x800uLL, v9, 0, 0, 0, &v22))
      {
        v12 = std::generic_category();
        *a3 = 1;
        goto LABEL_13;
      }

      v10 = *(a2 + 23);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = *a2;
        v10 = *(a2 + 8);
      }

      else
      {
        v11 = a2;
      }

      v9 = __s2;
      if (!strncmp(v11, __s2, v10))
      {
        break;
      }

      if (v7 == ++v8)
      {
        goto LABEL_10;
      }
    }

    if (v22 < 0x100000)
    {
      v15 = malloc_type_valloc(v22 + 1, 0x8B7C732DuLL);
      if (!v15)
      {
        v20 = __cxa_allocate_exception(8uLL);
        v21 = std::bad_alloc::bad_alloc(v20);
      }

      v27[0] = off_1002190F0;
      v27[3] = v27;
      __s = v15;
      sub_100015FBC(v24, v27);
      sub_10001590C(v27);
      bzero(__s, v22 + 1);
      if (sub_100132F8C(a1, v8, 0x800uLL, __s2, 0, v22, __s, 0))
      {
        v16 = std::generic_category();
        v17 = 0;
        *a3 = 1;
        *(a3 + 8) = v16;
      }

      else
      {
        sub_100010B0C(a3, __s);
        v17 = 1;
      }

      *(a3 + 24) = v17;
      sub_100015888(&__s, 0);
      sub_10001590C(v24);
      goto LABEL_14;
    }

    v12 = std::generic_category();
    v13 = 84;
  }

  else
  {
LABEL_10:
    v12 = std::generic_category();
    v13 = 22;
  }

  *a3 = v13;
LABEL_13:
  *(a3 + 8) = v12;
  *(a3 + 24) = 0;
LABEL_14:
  sub_100015888(&__s2, 0);
  return sub_10001590C(v26);
}

void sub_10012D524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_100015888(va, 0);
  sub_10001590C(v2 + 8);
  sub_100015888(va1, 0);
  sub_10001590C(v3 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012D56C(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    v5 = *(a1 + 23);
    if (*(a2 + 24))
    {
      if (v5 < 0)
      {
        operator delete(*a1);
      }

      v6 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v6;
      *(a2 + 23) = 0;
      *a2 = 0;
    }

    else
    {
      if (v5 < 0)
      {
        operator delete(*a1);
      }

      *a1 = *a2;
      *(a1 + 24) = 0;
    }
  }

  else if (*(a2 + 24))
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(a1 + 24) = 1;
  }

  else
  {
    *a1 = *a2;
  }

  return a1;
}

void **sub_10012D620(uint64_t a1, __int128 *a2, void *a3)
{
  if (*(a1 + 112) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v7);
    sub_100001FE8(v7, "Not allowed more than one instance of ", 38);
    v6 = strlen(("N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v7, "N9AEAHelper6wkms_tE" & 0x7FFFFFFFFFFFFFFFLL, v6);
    sub_100001FE8(v7, " auth entry", 11);
    sub_10000EBDC(exception, v7, 0x16u);
  }

  v3 = (a1 + 80);

  return sub_10012DB98(v3, a2, a3);
}

void sub_10012D6FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void **sub_10012D734(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v6);
    sub_100001FE8(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v6, "N9AEAHelper15saks_metadata_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    sub_100001FE8(v6, " auth entry", 11);
    sub_10000EBDC(exception, v6, 0x16u);
  }

  v2 = (a1 + 48);

  return sub_10012DC20(v2, a2);
}

void sub_10012D810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

void **sub_10012D848(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(v6);
    sub_100001FE8(v6, "Not allowed more than one instance of ", 38);
    v5 = strlen(("N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL));
    sub_100001FE8(v6, "N9AEAHelper5kms_tE" & 0x7FFFFFFFFFFFFFFFLL, v5);
    sub_100001FE8(v6, " auth entry", 11);
    sub_10000EBDC(exception, v6, 0x16u);
  }

  v2 = (a1 + 16);

  return sub_10012DC20(v2, a2);
}

void sub_10012D924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000C8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012DA40(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100219150))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10012DA8C(uint64_t *a1)
{
  if (*(a1 + 112) == 1 && *(a1 + 103) < 0)
  {
    operator delete(a1[10]);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(a1[6]);
  }

  if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(a1[2]);
  }

  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      operator delete[]();
    }
  }

  return a1;
}

uint64_t *sub_10012DB30(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *a1;
    *a1 = 0;
    if (v3)
    {
      operator delete[]();
    }
  }

  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = 1;
  return a1;
}

void **sub_10012DB98(void **__dst, __int128 *a2, void *a3)
{
  if (*(__dst + 32) == 1)
  {
    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 32) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v6;
  }

  __dst[3] = a3;
  *(__dst + 32) = 1;
  return __dst;
}

void **sub_10012DC20(void **__dst, __int128 *a2)
{
  if (*(__dst + 24) == 1)
  {
    if (*(__dst + 23) < 0)
    {
      operator delete(*__dst);
    }

    *(__dst + 24) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100050108(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 1;
  return __dst;
}

uint64_t sub_10012DC98(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  (*(*a1 + 80))(&v4);
  v1 = sub_100043DBC()[2];
  if (v1 <= v4)
  {
    v1 = v4;
  }

  if (*(&v5 + 1) >= v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = DWORD2(v5);
  }

  if (*(&v5 + 1))
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10012DD0C(uint64_t a1)
{
  (*(*a1 + 80))(v5);
  v2 = v5[0];
  v3 = sub_10012DC98(a1);
  if (v2 > v3)
  {
    v3 = v2;
  }

  if (v3 <= 0x1000)
  {
    return 4096;
  }

  else
  {
    return v3;
  }
}

void sub_10012DD80()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001940(exception, "User data is not supported in this image format", 0x2Du);
}

void sub_10012DDC0()
{
  exception = __cxa_allocate_exception(0x40uLL);
  v1 = sub_100001940(exception, "User data is not supported in this image format", 0x2Du);
}

void *sub_10012DE00(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v4 == 3)
    {
      if (v5 < v6)
      {
LABEL_4:
        if ((v4 & 2) != 0)
        {
          v7 = "[";
        }

        else
        {
          v7 = "(";
        }

        sub_100010B0C(&v27, v7);
        if ((v29 & 0x80u) == 0)
        {
          v8 = &v27;
        }

        else
        {
          v8 = v27;
        }

        if ((v29 & 0x80u) == 0)
        {
          v9 = v29;
        }

        else
        {
          v9 = v28;
        }

        v10 = sub_100001FE8(a1, v8, v9);
        if (*(a2 + 16))
        {
          v11 = "]";
        }

        else
        {
          v11 = ")";
        }

        sub_100010B0C(&__p, v11);
        if ((v26 & 0x80u) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        if ((v26 & 0x80u) == 0)
        {
          v13 = v26;
        }

        else
        {
          v13 = v25;
        }

        goto LABEL_44;
      }
    }

    else if (v6 >= v5)
    {
      goto LABEL_4;
    }
  }

  else if (v6 >= v5 || v6 + 1 >= v5)
  {
    goto LABEL_4;
  }

  if ((v4 & 2) != 0)
  {
    v15 = "[";
  }

  else
  {
    v15 = "(";
  }

  sub_100010B0C(&v27, v15);
  if ((v29 & 0x80u) == 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v27;
  }

  if ((v29 & 0x80u) == 0)
  {
    v17 = v29;
  }

  else
  {
    v17 = v28;
  }

  sub_100001FE8(a1, v16, v17);
  v18 = *a2;
  v19 = std::ostream::operator<<();
  sub_100001FE8(v19, ",", 1);
  v20 = *(a2 + 8);
  v10 = std::ostream::operator<<();
  if (*(a2 + 16))
  {
    v21 = "]";
  }

  else
  {
    v21 = ")";
  }

  sub_100010B0C(&__p, v21);
  if ((v26 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v26 & 0x80u) == 0)
  {
    v13 = v26;
  }

  else
  {
    v13 = v25;
  }

LABEL_44:
  v22 = sub_100001FE8(v10, p_p, v13);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v29 < 0)
  {
    operator delete(v27);
  }

  return v22;
}