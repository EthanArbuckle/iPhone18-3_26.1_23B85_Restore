uint64_t sub_10006BCC0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FF780;
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

void sub_10006BD70(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BD88(uint64_t a1)
{
  *a1 = off_1001FF780;
  sub_10006C1C8(a1);
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

void sub_10006BEF4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006BD88(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006BF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006BF98(_BYTE *a1, int a2)
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

uint64_t sub_10006C004(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006BD88(v1);

  return std::ios::~ios();
}

void sub_10006C050(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006BD88(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006C0B4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006BD88(v1);

  return std::ios::~ios();
}

void sub_10006C114(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006BD88(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006C190(uint64_t a1)
{
  sub_10006BD88(a1);

  operator delete();
}

uint64_t sub_10006C1C8(uint64_t a1)
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
        sub_10006C33C((a1 + 72), __p);
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

void sub_10006C314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006C33C(uint64_t *a1, uint64_t *a2)
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
    v21 = 530;
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
      v21 = 530;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006C520(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FF9A0;
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

void sub_10006C5D0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C5E8(uint64_t a1)
{
  *a1 = off_1001FF9A0;
  sub_10006CA28(a1);
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

void sub_10006C754(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006C5E8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006C7F8(_BYTE *a1, int a2)
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

uint64_t sub_10006C864(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006C5E8(v1);

  return std::ios::~ios();
}

void sub_10006C8B0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006C5E8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006C914(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006C5E8(v1);

  return std::ios::~ios();
}

void sub_10006C974(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006C5E8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006C9F0(uint64_t a1)
{
  sub_10006C5E8(a1);

  operator delete();
}

uint64_t sub_10006CA28(uint64_t a1)
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
        sub_10006CB9C((a1 + 72), __p);
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

void sub_10006CB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006CB9C(uint64_t *a1, uint64_t *a2)
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
    v21 = 536;
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
      v21 = 536;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006CD80(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FFBC0;
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

void sub_10006CE30(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006CE48(uint64_t a1)
{
  *a1 = off_1001FFBC0;
  sub_10006D288(a1);
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

void sub_10006CFB4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006CE48(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006D01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006D058(_BYTE *a1, int a2)
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

uint64_t sub_10006D0C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006CE48(v1);

  return std::ios::~ios();
}

void sub_10006D110(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006CE48(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006D174(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006CE48(v1);

  return std::ios::~ios();
}

void sub_10006D1D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006CE48(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006D250(uint64_t a1)
{
  sub_10006CE48(a1);

  operator delete();
}

uint64_t sub_10006D288(uint64_t a1)
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
        sub_10006D3FC((a1 + 72), __p);
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

void sub_10006D3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006D3FC(uint64_t *a1, uint64_t *a2)
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
    v21 = 539;
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
      v21 = 539;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006D5E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001FFDE0;
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

void sub_10006D690(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D6A8(uint64_t a1)
{
  *a1 = off_1001FFDE0;
  sub_10006DAE8(a1);
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

void sub_10006D814(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006D6A8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006D87C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006D8B8(_BYTE *a1, int a2)
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

uint64_t sub_10006D924(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006D6A8(v1);

  return std::ios::~ios();
}

void sub_10006D970(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006D6A8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006D9D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006D6A8(v1);

  return std::ios::~ios();
}

void sub_10006DA34(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006D6A8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006DAB0(uint64_t a1)
{
  sub_10006D6A8(a1);

  operator delete();
}

uint64_t sub_10006DAE8(uint64_t a1)
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
        sub_10006DC5C((a1 + 72), __p);
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

void sub_10006DC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006DC5C(uint64_t *a1, uint64_t *a2)
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
    v21 = 546;
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
      v21 = 546;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_10006DE40(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100200000;
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

void sub_10006DEF0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006DF08(uint64_t a1)
{
  *a1 = off_100200000;
  sub_10006E348(a1);
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

void sub_10006E074(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006DF08(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006E0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006E118(_BYTE *a1, int a2)
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

uint64_t sub_10006E184(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006DF08(v1);

  return std::ios::~ios();
}

void sub_10006E1D0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006DF08(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006E234(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006DF08(v1);

  return std::ios::~ios();
}

void sub_10006E294(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006DF08(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006E310(uint64_t a1)
{
  sub_10006DF08(a1);

  operator delete();
}

uint64_t sub_10006E348(uint64_t a1)
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
        sub_10006E4BC((a1 + 72), __p);
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

void sub_10006E494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006E4BC(uint64_t *a1, uint64_t *a2)
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
    v21 = 551;
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
      v21 = 551;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_10006E6A0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006E80C(a1, a2);
  *a1 = off_100200088;
  a1[45] = &off_100200188;
  a1[46] = &off_1002001B0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100200088;
  a1[45] = off_100200110;
  a1[46] = off_100200138;
  return a1;
}

void sub_10006E7A4(_Unwind_Exception *a1)
{
  sub_10006E8D4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006E7C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006E8D4(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10006E80C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100200220;
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

void sub_10006E8BC(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006E8D4(uint64_t a1)
{
  *a1 = off_100200220;
  sub_10006ED14(a1);
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

void sub_10006EA40(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006E8D4(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006EAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006EAE4(_BYTE *a1, int a2)
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

uint64_t sub_10006EB50(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006E8D4(v1);

  return std::ios::~ios();
}

void sub_10006EB9C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006E8D4(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006EC00(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006E8D4(v1);

  return std::ios::~ios();
}

void sub_10006EC60(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006E8D4(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006ECDC(uint64_t a1)
{
  sub_10006E8D4(a1);

  operator delete();
}

uint64_t sub_10006ED14(uint64_t a1)
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
        sub_10006EE88((a1 + 72), __p);
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

void sub_10006EE60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10006EE88(uint64_t *a1, uint64_t *a2)
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
    v21 = 596;
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
      v21 = 596;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void sub_10006F108(void *a1, unsigned int *a2, _DWORD *a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FEAA0;
  v4 = *a4;
  sub_100056CC8(a1 + 3, *a2, *a3 != 0);
}

void *sub_10006F178(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = result[1] - *result;
      operator new();
    }

    sub_100015B70();
  }

  return result;
}

uint64_t sub_10006F240(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100040450(result, a4);
  }

  return result;
}

void sub_10006F2A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10006F2BC(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_100015B70();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      operator new();
    }

    v31 = (__dst - v11);
    memcpy(v13, __src, __len);
    v32 = &v13[__len];
    v33 = v10 - v5;
    memcpy(v32, v5, v10 - v5);
    *(a1 + 8) = v5;
    v34 = &v13[v11 - v5];
    memcpy(v34, v11, v31);
    *a1 = v34;
    *(a1 + 8) = &v32[v33];
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    return v13;
  }

  v16 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v27 = &__dst[__len];
    v28 = &v10[-__len];
    v29 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v30 = *v28++;
        *v29++ = v30;
      }

      while (v28 != v10);
    }

    *(a1 + 8) = v29;
    if (v10 != v27)
    {
      memmove(&__dst[__len], __dst, v10 - v27);
    }

    v24 = v5;
    v25 = __src;
    v26 = __len;
    goto LABEL_27;
  }

  v18 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v19 = &v10[v18];
  *(a1 + 8) = &v10[v18];
  if (v16 >= 1)
  {
    v20 = &v5[__len];
    v21 = &v10[v18];
    if (&v19[-__len] < v10)
    {
      v22 = v5 - &__src[__len];
      v23 = v5 - __src;
      do
      {
        a4[v23++] = a4[v22++];
      }

      while (&a4[v22] < v10);
      v21 = &a4[v23];
    }

    *(a1 + 8) = v21;
    if (v19 != v20)
    {
      memmove(&v5[__len], v5, v19 - v20);
    }

    v24 = v5;
    v25 = __src;
    v26 = v10 - v5;
LABEL_27:
    memmove(v24, v25, v26);
  }

  return v5;
}

void sub_10006F50C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002002A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

_BYTE *sub_10006F588@<X0>(const std::error_category *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100059E94(a1, v15);
  if (v15[16])
  {
    result = sub_10006F8D0(v15);
    if (*result == 1)
    {
      *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
      *(&v11 + 1) = 84;
      v12 = 16;
      sub_10006F93C(v13, &v11);
      sub_100001FE8(v14, "Diskimageuio: image is locked", 29);
      std::ostream::~ostream();
      sub_1000703D0(v13);
      std::ios::~ios();
      result = make_error_code(162);
      v4 = 0;
      *a2 = result;
      *(a2 + 8) = v5;
    }

    else
    {
      *a2 = 0;
      v4 = 1;
    }
  }

  else
  {
    *&v11 = "diskimage_err> diskimage_uio::details::diskimage_open_params_impl::validate_unlocked() const";
    *(&v11 + 1) = 84;
    v12 = 16;
    sub_10006F764(v13, &v11);
    sub_100001FE8(v14, "Diskimageuio: can't get lock status ", 36);
    v6 = sub_100059674(v15);
    v7 = (*(**(v6 + 1) + 16))(*(v6 + 1));
    v8 = strlen(v7);
    v9 = sub_100001FE8(v14, v7, v8);
    v16 = 58;
    sub_100001FE8(v9, &v16, 1);
    v10 = *v6;
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10006FB70(v13);
    std::ios::~ios();
    result = sub_100059674(v15);
    v4 = 0;
    *a2 = *result;
  }

  *(a2 + 16) = v4;
  return result;
}

void sub_10006F740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10006FA64(va);
  _Unwind_Resume(a1);
}

void *sub_10006F764(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10006FAA8(a1, a2);
  *a1 = off_1002002F8;
  a1[45] = &off_1002003F8;
  a1[46] = &off_100200420;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1002002F8;
  a1[45] = off_100200380;
  a1[46] = off_1002003A8;
  return a1;
}

void sub_10006F868(_Unwind_Exception *a1)
{
  sub_10006FB70(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006F88C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006FB70(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10006F8D0(uint64_t result)
{
  if (*(result + 16) != 1)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *v1;
    *exception = &off_1001FE4F8;
    *(exception + 8) = v3;
  }

  return result;
}

void *sub_10006F93C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100070308(a1, a2);
  *a1 = off_100200518;
  a1[45] = &off_100200618;
  a1[46] = &off_100200640;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100200518;
  a1[45] = off_1002005A0;
  a1[46] = off_1002005C8;
  return a1;
}

void sub_10006FA40(_Unwind_Exception *a1)
{
  sub_1000703D0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10006FA64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000703D0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10006FAA8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100200490;
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

void sub_10006FB58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10006FB70(uint64_t a1)
{
  *a1 = off_100200490;
  sub_10006FFB0(a1);
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

void sub_10006FCDC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10006FB70(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006FD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10006FD80(_BYTE *a1, int a2)
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

uint64_t sub_10006FDEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006FB70(v1);

  return std::ios::~ios();
}

void sub_10006FE38(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10006FB70(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10006FE9C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006FB70(v1);

  return std::ios::~ios();
}

void sub_10006FEFC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10006FB70(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10006FF78(uint64_t a1)
{
  sub_10006FB70(a1);

  operator delete();
}

uint64_t sub_10006FFB0(uint64_t a1)
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
        sub_100070124((a1 + 72), __p);
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

void sub_1000700FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100070124(uint64_t *a1, uint64_t *a2)
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
    v21 = 630;
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
      v21 = 630;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100070308(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002006B0;
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

void sub_1000703B8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000703D0(uint64_t a1)
{
  *a1 = off_1002006B0;
  sub_100070810(a1);
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

void sub_10007053C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000703D0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000705A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000705E0(_BYTE *a1, int a2)
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

uint64_t sub_10007064C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000703D0(v1);

  return std::ios::~ios();
}

void sub_100070698(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000703D0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000706FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000703D0(v1);

  return std::ios::~ios();
}

void sub_10007075C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000703D0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000707D8(uint64_t a1)
{
  sub_1000703D0(a1);

  operator delete();
}

uint64_t sub_100070810(uint64_t a1)
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
        sub_100070984((a1 + 72), __p);
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

void sub_10007095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100070984(uint64_t *a1, uint64_t *a2)
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
    v21 = 635;
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
      v21 = 635;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100070B68(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100070CD4(a1, a2);
  *a1 = off_100200738;
  a1[45] = &off_100200838;
  a1[46] = &off_100200860;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100200738;
  a1[45] = off_1002007C0;
  a1[46] = off_1002007E8;
  return a1;
}

void sub_100070C6C(_Unwind_Exception *a1)
{
  sub_100070D9C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100070C90(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100070D9C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100070CD4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1002008D0;
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

void sub_100070D84(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100070D9C(uint64_t a1)
{
  *a1 = off_1002008D0;
  sub_1000711DC(a1);
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

void sub_100070F08(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100070D9C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100070F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100070FAC(_BYTE *a1, int a2)
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

uint64_t sub_100071018(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100070D9C(v1);

  return std::ios::~ios();
}

void sub_100071064(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100070D9C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000710C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100070D9C(v1);

  return std::ios::~ios();
}

void sub_100071128(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100070D9C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000711A4(uint64_t a1)
{
  sub_100070D9C(a1);

  operator delete();
}

uint64_t sub_1000711DC(uint64_t a1)
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
        sub_100071350((a1 + 72), __p);
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

void sub_100071328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100071350(uint64_t *a1, uint64_t *a2)
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
    v21 = 101;
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
      v21 = 101;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100071534(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000716A0(a1, a2);
  *a1 = off_100200958;
  a1[45] = &off_100200A58;
  a1[46] = &off_100200A80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100200958;
  a1[45] = off_1002009E0;
  a1[46] = off_100200A08;
  return a1;
}

void sub_100071638(_Unwind_Exception *a1)
{
  sub_100071768(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007165C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100071768(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000716A0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100200AF0;
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

void sub_100071750(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100071768(uint64_t a1)
{
  *a1 = off_100200AF0;
  sub_100071BA8(a1);
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

void sub_1000718D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100071768(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007193C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100071978(_BYTE *a1, int a2)
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

uint64_t sub_1000719E4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100071768(v1);

  return std::ios::~ios();
}

void sub_100071A30(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100071768(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100071A94(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100071768(v1);

  return std::ios::~ios();
}

void sub_100071AF4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100071768(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100071B70(uint64_t a1)
{
  sub_100071768(a1);

  operator delete();
}

uint64_t sub_100071BA8(uint64_t a1)
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
        sub_100071D1C((a1 + 72), __p);
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

void sub_100071CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100071D1C(uint64_t *a1, uint64_t *a2)
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
    v21 = 665;
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
      v21 = 665;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

const std::error_category *sub_100071F00@<X0>(uint64_t a1@<X8>)
{
  *&v3 = "hdr_get_nr_blocks(const hdr_variant &)::(anonymous class)::operator()(const auto &) const [hdr:auto = std::monostate]";
  *(&v3 + 1) = 69;
  v4 = 16;
  sub_100072074(v5, &v3);
  sub_100001FE8(v6, "Diskimageuio: can't get Diskimage attribute, unknown header format", 66);
  std::ostream::~ostream();
  sub_1000722A8(v5);
  std::ios::~ios();
  result = std::generic_category();
  *a1 = 6;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

void sub_100071F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007219C(va);
  _Unwind_Resume(a1);
}

void sub_100071FF0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_100059F28(*(*(*a1 + 8) - 8), &v3);
  *a2 = v3.n128_u64[0];
  *(a2 + 16) = 1;
}

uint64_t sub_10007203C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 16))();
  *a2 = result;
  *(a2 + 16) = 1;
  return result;
}

void *sub_100072074(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000721E0(a1, a2);
  *a1 = off_100200BA8;
  a1[45] = &off_100200CA8;
  a1[46] = &off_100200CD0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100200BA8;
  a1[45] = off_100200C30;
  a1[46] = off_100200C58;
  return a1;
}

void sub_100072178(_Unwind_Exception *a1)
{
  sub_1000722A8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007219C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000722A8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000721E0(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100200D40;
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

void sub_100072290(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000722A8(uint64_t a1)
{
  *a1 = off_100200D40;
  sub_1000726E8(a1);
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

void sub_100072414(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000722A8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10007247C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000724B8(_BYTE *a1, int a2)
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

uint64_t sub_100072524(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000722A8(v1);

  return std::ios::~ios();
}

void sub_100072570(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000722A8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000725D4(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000722A8(v1);

  return std::ios::~ios();
}

void sub_100072634(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000722A8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000726B0(uint64_t a1)
{
  sub_1000722A8(a1);

  operator delete();
}

uint64_t sub_1000726E8(uint64_t a1)
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
        sub_10007285C((a1 + 72), __p);
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

void sub_100072834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_10007285C(uint64_t *a1, uint64_t *a2)
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
    v21 = 113;
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
      v21 = 113;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100072A40(uint64_t a1)
{
  sub_10014FF0C((a1 + 504), &stru_100200DD0);
  sub_10014FD8C((a1 + 624));
  sub_100072AB4((a1 + 576));
  std::mutex::~mutex((a1 + 512));
  sub_10014FD8C((a1 + 504));
  sub_100169198(a1 + 304);
  sub_100073B14(a1 + 248);
  sub_1000739E8(a1 + 120);
  return a1;
}

uint64_t sub_100072AB4(void *a1)
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
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_10003363C(a1);
}

void sub_100072B60(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_10000ED20();
}

void *sub_100072C2C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_1001FA4B0;
  sub_100180958(a1 + 3);
  return a1;
}

void *sub_100072C88(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100072DF4(a1, a2);
  *a1 = off_100200E08;
  a1[45] = &off_100200F08;
  a1[46] = &off_100200F30;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100200E08;
  a1[45] = off_100200E90;
  a1[46] = off_100200EB8;
  return a1;
}

void sub_100072D8C(_Unwind_Exception *a1)
{
  sub_100072EBC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100072DB0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100072EBC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100072DF4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_100200FA0;
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

void sub_100072EA4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100072EBC(uint64_t a1)
{
  *a1 = off_100200FA0;
  sub_1000732FC(a1);
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

void sub_100073028(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100072EBC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100073090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000730CC(_BYTE *a1, int a2)
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

uint64_t sub_100073138(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100072EBC(v1);

  return std::ios::~ios();
}

void sub_100073184(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100072EBC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000731E8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100072EBC(v1);

  return std::ios::~ios();
}

void sub_100073248(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100072EBC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000732C4(uint64_t a1)
{
  sub_100072EBC(a1);

  operator delete();
}

uint64_t sub_1000732FC(uint64_t a1)
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
        sub_100073470((a1 + 72), __p);
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

void sub_100073448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100073470(uint64_t *a1, uint64_t *a2)
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
    v21 = 687;
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
      v21 = 687;
      v22 = 2082;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v11, v12, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100073654(void *a1, unsigned __int8 *a2)
{
  sub_10005A758(a1, v7);
  if (v7[1])
  {
    v4 = sub_1000BC46C(a1, v7, a2);
  }

  else
  {
    v4 = -12;
  }

  v5 = io_rings_return_status(a1[7], a2, v4, 0);
  sub_100074B3C(v7);
  return v5;
}

void sub_1000736CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100074B3C(va);
  _Unwind_Resume(a1);
}

void sub_1000736E0(std::exception *a1)
{
  sub_100001AF8(a1);

  operator delete();
}

void ***sub_100073718(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_1000738CC(&v3);
    operator delete();
  }

  return result;
}

void sub_10007376C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      *v8 = *v7;
      *(v8 + 8) = *(v7 + 8);
      *(v7 + 8) = 0;
      v7 += 16;
      v8 += 16;
    }

    while (v7 != v5);
    do
    {
      diskimage_uio::diskimage_open_params::~diskimage_open_params((v4 + 8));
      v4 += 16;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v9 = a1[1];
  a1[1] = a2[2];
  a2[2] = v9;
  v10 = a1[2];
  a1[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_100073830(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100073878(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    diskimage_uio::diskimage_open_params::~diskimage_open_params((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000738CC(void ***a1)
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
        v6 = v4 - 16;
        diskimage_uio::diskimage_open_params::~diskimage_open_params((v4 - 8));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100073954(uint64_t a1)
{
  *a1 = off_1001FCC88;
  std::condition_variable::~condition_variable((a1 + 240));
  std::condition_variable::~condition_variable((a1 + 192));
  std::mutex::~mutex((a1 + 128));
  std::mutex::~mutex((a1 + 64));
  sub_10005C4E0((a1 + 16));
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_1000739E8(uint64_t a1)
{
  while (*(a1 + 104))
  {
    v2 = (*(*(a1 + 72) + ((*(a1 + 96) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 96) & 0x1FFLL));
    if (atomic_load(v2))
    {
      v4 = atomic_load(v2);
      if (v4)
      {
        (*(*v4 + 40))(v4);
      }
    }

    *(a1 + 96) = vaddq_s64(*(a1 + 96), xmmword_1001BCEE0);
    sub_100073AB4(a1 + 64, 1);
  }

  sub_100072AB4((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t sub_100073AB4(uint64_t a1, int a2)
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

uint64_t sub_100073B14(uint64_t a1)
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

unint64_t sub_100073B94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  sub_100073D80(v13, a3, a4, a5, v23);
  if (!a6 || (v14 = sub_100073E20(a1, v24, a6), !v14))
  {
    v25 |= 2u;
    v27 |= 2u;
    v26 |= 2u;
    v15 = *(a2 + 8);
    sub_10002E310(v24, v20);
    sub_10002DF68(v24, v17);
    v14 = sub_10000FDE0(v15);
    if (v19)
    {
      sub_10000E984(v19);
    }

    if (v18)
    {
      sub_10000E984(v18);
    }

    if (v22)
    {
      sub_10000E984(v22);
    }

    if (v21)
    {
      sub_10000E984(v21);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sub_1000157A4(v23);
  return v14;
}

void sub_100073D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a66);
  _Unwind_Resume(a1);
}

void sub_100073D80(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a3 * a1;
  v8 = a4 * a1;
  v9 = *(sub_100195B38() + 1);
  *&v10 = a2;
  *(&v10 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v7;
  v12 = v8;
  v13 = v7;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100073EC4(a5, &v10);
  if (*(&v10 + 1))
  {
    sub_10000E984(*(&v10 + 1));
  }
}

void sub_100073E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_10000E984(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100073E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  v6 = (*(**(v5 + 8) + 24))(*(v5 + 8));
  sub_1000F1038((v5 + 16), a3, v6, v9);
  if (v9[56])
  {
    sub_10002F410(a2, v9);
    return 0;
  }

  else
  {
    v8 = *sub_10005A09C(v9);
    if (v8 < 0)
    {
      return v8;
    }

    else
    {
      return -v8;
    }
  }
}

uint64_t *sub_100073EC4(uint64_t *a1, __int128 *a2)
{
  v4 = *(a2 + 4);
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v16 = &v18;
  v19 = v4;
  v17 = xmmword_1001BBD40;
  v18 = v5;
  sub_100030750(a1, &v16);
  sub_100012FF8(&v16);
  v6 = a1[1];
  v16 = *a1;
  v7 = v16 + 24 * v6;
  v8 = a1[19];
  v14 = a1[18];
  v15 = v7;
  v13 = &v14[v8];
  sub_10002E0A8((a1 + 26), &v16, &v15, &v14, &v13, *(a2 + 3), *(a2 + 2), *(a2 + 10));
  v11 = *(a2 + 12);
  v10 = (a2 + 3);
  v9 = v11;
  if (*(v10 + 56) == 1 && v9)
  {
    sub_10002F410((a1 + 26), v10);
  }

  return a1;
}

void sub_100073FB8(_Unwind_Exception *a1)
{
  sub_10002F23C(v1 + 26);
  sub_100012B90(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100073FEC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = -1;
  v16 = 8;
  v17 = v12 * a4;
  do
  {
    v18 = *(a3 + v16);
    v19 = v17 >= v18;
    v17 -= v18;
    if (!v19)
    {
      return -22;
    }

    ++v15;
    v16 += 16;
  }

  while (v17);
  result = v15 + 1;
  if (v15 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = a3;
    v27 = (v15 + 1);
    sub_100074200(&v26, v14 * a5, v13, 0, v29);
    if (!a6 || (v20 = sub_100073E20(a1, v30, a6), !v20))
    {
      v31 |= 2u;
      v33 |= 2u;
      v32 |= 2u;
      v21 = *(a2 + 8);
      sub_10002E310(v30, &v26);
      sub_10002DF68(v30, v23);
      v20 = sub_10000FDE0(v21);
      if (v25)
      {
        sub_10000E984(v25);
      }

      if (v24)
      {
        sub_10000E984(v24);
      }

      if (v28)
      {
        sub_10000E984(v28);
      }

      if (v27)
      {
        sub_10000E984(v27);
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v20 /= v14;
      }
    }

    sub_1000157A4(v29);
    return v20;
  }

  return result;
}

void sub_1000741C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_100074200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_100195B38();
  v11 = v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = (a5 + 24);
  *a5 = a5 + 24;
  v15 = xmmword_1001BABD0;
  *(a5 + 8) = xmmword_1001BABD0;
  v16 = (v12 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v12)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 < 6)
  {
    if (v12)
    {
      v28 = v16 + 1;
      do
      {
        v29 = *v13;
        v30 = v10[1];
        if (v30)
        {
          atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
        }

        v31 = v13[1];
        *v14 = v29;
        v14[1] = v30;
        v14[2] = v31;
        v13 += 2;
        v14 += 3;
        --v28;
      }

      while (v28);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v36 = a4;
    if (v17 >= 0x555555555555556)
    {
      sub_100012CFC("get_next_capacity, allocator's max size reached");
    }

    v18 = a2;
    v19 = a3;
    v20 = operator new(24 * v17);
    v21 = *a5;
    if (*a5)
    {
      sub_100012D58(a5);
      if (v14 != v21)
      {
        operator delete(v21);
      }
    }

    *(a5 + 8) = 0;
    *(a5 + 16) = v17;
    *a5 = v20;
    if (v12)
    {
      v22 = &v13[2 * v12];
      v23 = v20;
      a3 = v19;
      a2 = v18;
      a4 = v36;
      v15 = xmmword_1001BABD0;
      do
      {
        v24 = *v13;
        v25 = v11[1];
        if (v25)
        {
          atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
        }

        v26 = v13[1];
        *v23 = v24;
        *(v23 + 1) = v25;
        *(v23 + 2) = v26;
        v13 += 2;
        v23 += 24;
      }

      while (v13 != v22);
      v27 = *(a5 + 8);
    }

    else
    {
      v27 = 0;
      v23 = v20;
      a3 = v19;
      a2 = v18;
      a4 = v36;
      v15 = xmmword_1001BABD0;
    }

    v17 = v27 - 0x5555555555555555 * ((v23 - v20) >> 3);
  }

  *(a5 + 144) = a5 + 168;
  *(a5 + 8) = v17;
  *(a5 + 152) = v15;
  sub_100013068(a5 + 144, v17);
  v32 = *(a5 + 8);
  v40 = *a5;
  v33 = v40 + 24 * v32;
  v34 = *(a5 + 152);
  v38 = *(a5 + 144);
  v39 = v33;
  v37 = &v38[v34];
  return sub_10002E0A8(a5 + 208, &v40, &v39, &v38, &v37, a2, a3, a4);
}

unint64_t sub_100074478(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  sub_100073D80(v13, a3, a4, a5, v23);
  if (!a6 || (v14 = sub_100073E20(a1, v24, a6), !v14))
  {
    v25 |= 1u;
    v27 |= 1u;
    v26 |= 1u;
    v15 = *(a2 + 8);
    sub_10002E310(v24, v20);
    sub_10002DF68(v24, v17);
    v14 = sub_10000FEB4(v15);
    if (v19)
    {
      sub_10000E984(v19);
    }

    if (v18)
    {
      sub_10000E984(v18);
    }

    if (v22)
    {
      sub_10000E984(v22);
    }

    if (v21)
    {
      sub_10000E984(v21);
    }

    if ((v14 & 0x8000000000000000) == 0)
    {
      v14 /= v12;
    }
  }

  sub_1000157A4(v23);
  return v14;
}

void sub_100074624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_100074664(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(**(*(a2 + 8) + 8) + 24))(*(*(a2 + 8) + 8));
  v13 = v12 * a4;
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = -1;
  v16 = 8;
  v17 = v12 * a4;
  do
  {
    v18 = *(a3 + v16);
    v19 = v17 >= v18;
    v17 -= v18;
    if (!v19)
    {
      return -22;
    }

    ++v15;
    v16 += 16;
  }

  while (v17);
  result = v15 + 1;
  if (v15 < 0x7FFFFFFFFFFFFFFFLL)
  {
    v26 = a3;
    v27 = (v15 + 1);
    sub_100074200(&v26, v14 * a5, v13, 1, v29);
    if (!a6 || (v20 = sub_100073E20(a1, v30, a6), !v20))
    {
      v31 |= 1u;
      v33 |= 1u;
      v32 |= 1u;
      v21 = *(a2 + 8);
      sub_10002E310(v30, &v26);
      sub_10002DF68(v30, v23);
      v20 = sub_10000FEB4(v21);
      if (v25)
      {
        sub_10000E984(v25);
      }

      if (v24)
      {
        sub_10000E984(v24);
      }

      if (v28)
      {
        sub_10000E984(v28);
      }

      if (v27)
      {
        sub_10000E984(v27);
      }

      if ((v20 & 0x8000000000000000) == 0)
      {
        v20 /= v14;
      }
    }

    sub_1000157A4(v29);
    return v20;
  }

  return result;
}

void sub_100074838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10000FF88(&a10);
  sub_10000FF88(&a38);
  sub_1000157A4(&a66);
  _Unwind_Resume(a1);
}

uint64_t sub_100074878(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_10001170C(*(a2 + 8));
  if (v4 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = -v4;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_1000748C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 > 1)
  {
    if (a3 == 3 || a3 == 2)
    {
      return sub_10000FC18(*(a2 + 8));
    }

    return 4294967274;
  }

  if (!a3)
  {
    return a3;
  }

  if (a3 != 1)
  {
    return 4294967274;
  }

  return sub_10000FC18(*(a2 + 8));
}

uint64_t sub_100074914(uint64_t result)
{
  if (result)
  {
    sub_100072A40(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100074954(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100073B14(result + 248);
    sub_1000739E8(v1 + 120);

    operator delete();
  }

  return result;
}

uint64_t sub_100074A20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_100201048;
  a2[1] = v2;
  return result;
}

uint64_t sub_100074A58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100074AA4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100074B3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == -2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

  else if (v2 == -1)
  {
    if (*(a1 + 8))
    {
      v3 = *a1;
      std::mutex::lock(*a1);
      sub_100074C10(*a1 + 64, (a1 + 8));
      std::mutex::unlock(v3);
    }
  }

  else if ((v2 & 0x8000000000000000) == 0)
  {
    atomic_store(*(a1 + 8), (*(*(*a1 + 72) + (((*(*a1 + 96) + v2) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(*a1 + 96) + v2) & 0x1FF)));
  }

  return a1;
}

uint64_t sub_100074C10(uint64_t a1, void *a2)
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
    sub_100074CC4(a1);
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v6 = *(a1 + 8);
    v10 = v8 + v9;
  }

  *(*(v6 + ((v10 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v10 & 0x1FF)) = *a2;
  v11 = v9 + 1;
  *(a1 + 40) = v11;
  v12 = v8 + v11;
  v13 = (v6 + 8 * (v12 >> 9));
  v14 = v12 & 0x1FF;
  if (v14)
  {
    v15 = *v13 + 8 * v14;
  }

  else
  {
    v15 = *(v13 - 1) + 4096;
  }

  return v15 - 8;
}

void *sub_100074CC4(void *a1)
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
    sub_100017300(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100074E98(a1, &v10);
}

void sub_100074E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_100074E98(void *result, void *a2)
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

      sub_100017300(result, v11);
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

const void **sub_100074FA0(const void **result, void *a2)
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

      sub_100017300(result, v9);
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

void *sub_1000750AC(void *result, void *a2)
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

      sub_100017300(result[4], v11);
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

const void **sub_1000751B4(const void **result, void *a2)
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

      sub_100017300(result[4], v9);
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

std::string *sub_1000752C0(std::string *a1, std::string *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 < 0)
  {
    a2 = a2->__r_.__value_.__r.__words[0];
  }

  if (v3 < 0)
  {
    v3 = size;
  }

  sub_100075328(a1, a2, (a2 + v3));
  return a1;
}

void sub_10007530C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100075328(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_1000754A0(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_100075484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1000754A0(_BYTE *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  __dst[23] = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  v4[v5] = 0;
  return __dst;
}

__n128 sub_100075550(diskimage_uio::diskimage_open_params *this, diskimage_uio::diskimage_open_params *a2)
{
  v4 = *(a2 + 16);
  if (*(this + 16) == 1)
  {
    if (*(a2 + 16))
    {
      v9[0] = *this;
      *this = 0;
      diskimage_uio::diskimage_open_params::operator=(this, a2);
      diskimage_uio::diskimage_open_params::operator=(a2, v9);
LABEL_6:
      diskimage_uio::diskimage_open_params::~diskimage_open_params(v9);
      return result;
    }

    *v9 = *a2;
    *a2 = *this;
    *this = 0;
    diskimage_uio::diskimage_open_params::~diskimage_open_params(this);
    result.n128_u64[0] = v9[0];
    *this = *v9;
    v8 = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
  }

  else
  {
    if (*(a2 + 16))
    {
      v5 = *a2;
      *a2 = 0;
      diskimage_uio::diskimage_open_params::~diskimage_open_params(a2);
      *a2 = *this;
      *this = v5;
      v9[0] = 0;
      v6 = *(this + 16);
      *(this + 16) = *(a2 + 16);
      *(a2 + 16) = v6;
      goto LABEL_6;
    }

    result = *this;
    *this = *a2;
    *a2 = result;
  }

  return result;
}

__n128 sub_100075648(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = 0;
  return result;
}

uint64_t sub_100075664(uint64_t (***a1)(void))
{
  v3[0] = (**a1)(a1);
  v3[1] = v1;
  if (v1 == 0xFFFFFFFFLL)
  {
    sub_100015D74();
  }

  v5 = &v4;
  return (off_1002012E0[v1])(&v5, v3);
}

uint64_t sub_1000756DC(uint64_t (***a1)(void))
{
  v3[0] = (**a1)(a1);
  v3[1] = v1;
  if (v1 == 0xFFFFFFFFLL)
  {
    sub_100015D74();
  }

  v5 = &v4;
  return (off_100201320[v1])(&v5, v3);
}

uint64_t sub_100075754(_DWORD **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 208);
  v7 = (*(*a1 + 4))(a1);
  if (v6 > (*(*a1 + 3))(a1) * v7)
  {
    return -5;
  }

  if (*a1[2])
  {
    return -78;
  }

  v9 = *(a2 + 16);
  if (!(*(*(*v9)[1] + 40))((*v9)[1]) || *a1[2])
  {
    return -78;
  }

  return sub_10000FEB4(*v9);
}

uint64_t sub_10007585C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    return 4294967218;
  }

  v4 = 4294967218;
  do
  {
    if ((*(*(*v2)[1] + 40))((*v2)[1]))
    {
      v4 = sub_10000FC18(*v2);
      if (v4)
      {
        break;
      }
    }

    v2 += 2;
  }

  while (v2 != v3);
  return v4;
}

uint64_t sub_1000758F0(uint64_t a1, void **a2, _BYTE *a3)
{
  *(a1 + 8) = 0;
  *a1 = off_100201178;
  *(a1 + 16) = 0;
  v5 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  v6 = a1 + 56;
  *(a1 + 144) = 0;
  *(a1 + 40) = (*(***a2 + 24))(**a2);
  *(a1 + 48) = 0;
  v7 = a2[1];
  v9 = *(v7 - 3);
  v8 = *(v7 - 2);
  v42 = v6;
  v43 = v5;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = a2[1];
  }

  v10 = v7 - 3;
  v11 = *a2;
  if (*a2 != v7 - 3)
  {
    do
    {
      v13 = *(v10 - 3);
      v12 = *(v10 - 2);
      v10 -= 3;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = (*v13)[3](v13);
      if (v14 != (*v9)[3](v9))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        *exception = &off_1002260F0;
        v37 = std::generic_category();
        exception[1] = 166;
        exception[2] = v37;
        *(exception + 24) = 0;
        *(exception + 48) = 0;
        exception[7] = "Cannot stack images with different block sizes";
      }

      if ((*a3 & 2) != 0)
      {
        v15 = sub_100075664(v9);
        v16 = v15;
        v47 = v15;
        v48 = v17;
        v18 = sub_1000756DC(v13);
        v53 = v18;
        v54 = v19;
        if (v16)
        {
LABEL_9:
          if (v18)
          {
LABEL_10:
            if (v47 != v53 || v48 != v54)
            {
              v40 = __cxa_allocate_exception(0x40uLL);
              *v40 = &off_1002260F0;
              v41 = std::generic_category();
              v40[1] = 166;
              v40[2] = v41;
              *(v40 + 24) = 0;
              *(v40 + 48) = 0;
              v40[7] = "Corrupted shadow file(s) chain";
            }
          }

          else
          {
            v23 = 1;
            while (v23 != 16)
            {
              if (*(&v53 + v23++))
              {
                if ((v23 - 2) <= 0xE)
                {
                  goto LABEL_10;
                }

                break;
              }
            }
          }
        }

        else
        {
          v21 = 1;
          while (v21 != 16)
          {
            if (*(&v47 + v21++))
            {
              if ((v21 - 2) <= 0xE)
              {
                goto LABEL_9;
              }

              break;
            }
          }
        }
      }

      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        sub_10000E984(v8);
      }

      if (v12)
      {
        sub_10000E984(v12);
      }

      v11 = *a2;
      v8 = v12;
      v9 = v13;
    }

    while (v10 != *a2);
    v7 = a2[1];
    v8 = v12;
  }

  if (v11 != v7)
  {
    v25 = 0;
    do
    {
      v26 = *(a1 + 40);
      if (v26 != (*(**v11 + 24))())
      {
        v38 = __cxa_allocate_exception(0x40uLL);
        *v38 = &off_1002260F0;
        v39 = std::generic_category();
        v38[1] = 4294967274;
        v38[2] = v39;
        *(v38 + 24) = 0;
        *(v38 + 48) = 0;
        v38[7] = "Block size mismatch in DiskImageStackable";
      }

      v28 = *v11;
      v27 = v11[1];
      v29 = *v11;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        v29 = *v11;
      }

      if ((*(*v29 + 104))(v29))
      {
        v46 = 1;
        sub_10007B188();
      }

      LODWORD(v47) = *(v11 + 4);
      v48 = *v11;
      v30 = v11[1];
      v49 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v50 = v28;
      v51 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v52 = (*(**v11 + 32))();
      v31 = *(a1 + 24);
      if (v31 >= *(a1 + 32))
      {
        v34 = sub_10007959C(v43, &v47);
      }

      else
      {
        *v31 = v47;
        *(v31 + 8) = v48;
        v32 = v49;
        *(v31 + 16) = v49;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v31 + 24) = v50;
        v33 = v51;
        *(v31 + 32) = v51;
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v31 + 40) = v52;
        v34 = v31 + 48;
      }

      *(a1 + 24) = v34;
      if (*(v11 + 4) == 2)
      {
        v25 |= (*(**v11 + 40))();
      }

      if (v51)
      {
        sub_10000E984(v51);
      }

      if (v49)
      {
        sub_10000E984(v49);
      }

      if (v27)
      {
        sub_10000E984(v27);
      }

      v11 += 3;
    }

    while (v11 != v7);
    if (v25)
    {
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 0x40000000;
      v45[2] = sub_100076054;
      v45[3] = &unk_100201248;
      v45[4] = a1;
      v47 = v45;
      sub_100075FCC(v42, &v47, &qword_1001BDE48);
    }
  }

  if (v8)
  {
    sub_10000E984(v8);
  }

  return a1;
}

void sub_100075F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (v12)
  {
    sub_10000E984(v12);
  }

  sub_1000798C4(v11);
  sub_100079924(va);
  _Unwind_Resume(a1);
}

void *sub_100075FCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 88) == 1)
  {
    sub_1000500F4(a1 + 64);
    v7 = (a1 + 24);
    sub_100018720(&v7);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 88) = 0;
  }

  result = sub_100078944(a1, *a2, *a3);
  *(a1 + 88) = 1;
  return result;
}

uint64_t sub_10007605C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  while (v1 != v2)
  {
    result = (*(**(v1 + 8) + 40))(*(v1 + 8));
    if (result)
    {
      v3 = *v1 == 2;
    }

    else
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = (*(**(v1 + 8) + 144))(*(v1 + 8));
      result = sub_10000FC18(v4);
      if (v4)
      {
        result = (*(*v4 + 40))(v4);
      }
    }

    v1 += 48;
  }

  return result;
}

void sub_10007612C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100198468(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100076148(uint64_t a1)
{
  *a1 = off_100201178;
  sub_10007605C(a1);
  if (*(a1 + 144) == 1)
  {
    sub_1000500F4(a1 + 120);
    v3 = (a1 + 80);
    sub_100018720(&v3);
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }
  }

  v3 = (a1 + 16);
  sub_100079924(&v3);
  return a1;
}

void sub_1000761E0(uint64_t a1)
{
  sub_100076148(a1);

  operator delete();
}

unint64_t sub_100076218(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t *a11)
{
  v16 = *(a1 + 40);
  v17 = *(a6 + 16);
  v18 = *a6;
  v19 = a6[1];
  if ((v17 & 2) != 0)
  {
    v20 = *a6;
  }

  else
  {
    v20 = v18 + 1;
  }

  v23[0] = v20 * v16;
  v23[1] = ((v17 & 1) + v19 - v18 + (((v17 >> 1) & 1) - 1) + v20) * v16;
  v24 = 2;
  sub_10002EA5C(a3, v23, a4, v25);
  v21 = sub_100076350(a1, a2, v25, &v28, a5, a7, a8, a9, a10, a11);
  if (v30)
  {
    sub_10000E984(v30);
  }

  if (v29)
  {
    sub_10000E984(v29);
  }

  if (v27)
  {
    sub_10000E984(v27);
  }

  if (v26)
  {
    sub_10000E984(v26);
  }

  return v21;
}

void sub_10007633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100076574(va);
  _Unwind_Resume(a1);
}

unint64_t sub_100076350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10)
{
  v16 = sub_1000777DC(a1);
  v18 = v16;
  v19 = v17;
  v38[0] = v16;
  v38[1] = v17;
  if ((v16 & 0x8000000000000000) == 0 || !v16)
  {
    v20 = *(a3 + 208);
    v21 = v17 < v20 || v16 > ((*(a4 + 208) - v20) & ~((*(a4 + 208) - v20) >> 63));
    v22 = 0;
    if (a5 && v21)
    {
      v23 = *(a1 + 40);
      v24 = *(a4 + 208) - v20;
      v25 = v24 & ~(v24 >> 63);
      if (v25 <= v23)
      {
        v25 = *(a1 + 40);
      }

      v26 = *(a4 + 208) == v20;
      if (v24 <= 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = v25;
      }

      v36[0] = v20 / v23;
      v36[1] = (v20 + v23 + v27 - 1) / v23;
      v37 = 2;
      v22 = sub_100076BD8(a1, a2, v38, v36, a5, a10);
    }

    sub_1000302E0(v33, a3);
    sub_1000302E0(v30, a4);
    v18 = sub_100077218(a1, a2, v33, v30, v38, a5, *a8);
    if (v32)
    {
      sub_10000E984(v32);
    }

    if (v31)
    {
      sub_10000E984(v31);
    }

    if (v35)
    {
      sub_10000E984(v35);
    }

    if (v34)
    {
      sub_10000E984(v34);
    }

    if ((v18 & 0x8000000000000000) == 0 || !v18)
    {
      v28 = *(a4 + 208);
      if (v22)
      {
        return sub_100195CB0(a3, a4, (v28 - *(a3 + 208)) & ~((v28 - *(a3 + 208)) >> 63), v38);
      }

      else
      {
        return v28 - v19;
      }
    }
  }

  return v18;
}

void *sub_100076574(void *a1)
{
  v2 = a1[51];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    sub_10000E984(v5);
  }

  return a1;
}

double sub_1000765C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if ((*(a4 + 16) & 2) != 0)
  {
    v8 = *a4;
  }

  else
  {
    v8 = *a4 + 1;
  }

  v9 = (*(a4 + 16) & 1) + *(a4 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = (v10 + 48 * a3);
  v13 = v12[5];
  if (v13 < v9)
  {
    v9 = v12[5];
  }

  *&v26 = v8;
  *(&v26 + 1) = v9;
  LOBYTE(v27) = 2;
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 4) - 1 <= a3 || v13 <= v12[11])
  {
    v18 = v12[1];
  }

  else
  {
    *&v24 = v12[11];
    *(&v24 + 1) = v13;
    LOBYTE(v25) = 2;
    if (sub_1000768F8(&v24, &v26))
    {
      *v31 = v24;
      *&v31[16] = v25;
      sub_100076ABC(v31, &v26, &v22);
      v15 = v26;
      if ((v27 & 2) == 0)
      {
        v15 = v26 + 1;
      }

      v16 = v22;
      if ((v23 & 2) == 0)
      {
        v16 = v22 + 1;
      }

      *&v26 = v15;
      *(&v26 + 1) = v16;
      LOBYTE(v27) = 2;
      v17 = *(*(a2 + 16) + 16 * a3);
      *v31 = *(*(a1 + 16) + 48 * a3 + 8);
      *&v31[8] = v26;
      v32 = v27;
      v33 = 0;
      v34 = v17;
      v35 = 6;
      v36[0] = off_1001FE7F0;
      v36[3] = v36;
      v28 = v22;
      v29 = v23;
      v30 = 1;
      memset(__p, 0, sizeof(__p));
      sub_1000799A8(__p, &v28, v31, 1uLL);
      sub_1000BE8A4(v31);
    }

    v18 = *(*(a1 + 16) + 48 * a3 + 8);
  }

  v19 = *(*(a2 + 16) + 16 * a3);
  *a5 = v18;
  result = *&v26;
  *(a5 + 8) = v26;
  *(a5 + 24) = v27;
  *(a5 + 32) = 0;
  *(a5 + 40) = v19;
  *(a5 + 48) = 6;
  *(a5 + 56) = off_1001FE7F0;
  *(a5 + 80) = a5 + 56;
  return result;
}

void sub_100076868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10007689C(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_10007689C(uint64_t a1)
{
  sub_10006659C(a1 + 56);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL sub_1000768F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v4 < v3)
      {
        return 0;
      }
    }

    else if (v3 >= v4)
    {
      return 0;
    }
  }

  else if (v3 >= v4 || v3 + 1 >= v4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  v8 = *a2;
  v7 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v6 == 3)
    {
      if (v7 < v8)
      {
        return 0;
      }
    }

    else if (v8 >= v7)
    {
      return 0;
    }
  }

  else if (v8 >= v7 || v8 + 1 >= v7)
  {
    return 0;
  }

  if (v2)
  {
    if (*(a1 + 16) == 3)
    {
      if (v4 < v3)
      {
        return 0;
      }
    }

    else if (v3 >= v4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v3 >= v4 || v3 + 1 >= v4)
    {
      return result;
    }
  }

  if (v6)
  {
    if (*(a2 + 16) == 3)
    {
      if (v7 < v8)
      {
        return 0;
      }
    }

    else if (v8 >= v7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 >= v7 || v8 + 1 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 2) != 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = v8 + 1;
  }

  if ((v2 & 1) + v4 - 1 < v11)
  {
    return 0;
  }

  if (v6)
  {
    if (*(a2 + 16) == 3)
    {
      if (v7 < v8)
      {
        return 0;
      }
    }

    else if (v8 >= v7)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v8 >= v7 || v8 + 1 >= v7)
    {
      return result;
    }
  }

  if (!v2)
  {
    result = 0;
    if (v3 >= v4 || v3 + 1 >= v4)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (v2 == 3)
  {
    if (v4 >= v3)
    {
      goto LABEL_60;
    }

    return 0;
  }

  if (v3 >= v4)
  {
    return 0;
  }

LABEL_60:
  if ((v2 & 2) == 0)
  {
    ++v3;
  }

  return (v6 & 1) + v7 - 1 >= v3;
}

void sub_100076ABC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v3 == 3)
    {
      if (v4 < v5)
      {
        goto LABEL_15;
      }
    }

    else if (v5 >= v4)
    {
LABEL_15:
      if ((atomic_load_explicit(&qword_100234A00, memory_order_acquire) & 1) == 0)
      {
        v17 = a3;
        sub_100198498();
        a3 = v17;
      }

      *a3 = xmmword_1002349E8;
      *(a3 + 16) = qword_1002349F8;
      return;
    }
  }

  else if (v5 >= v4 || v5 + 1 >= v4)
  {
    goto LABEL_15;
  }

  v7 = *(a2 + 16);
  v9 = *a2;
  v8 = *(a2 + 8);
  if (*(a2 + 16))
  {
    if (v7 == 3)
    {
      if (v8 < v9)
      {
        goto LABEL_15;
      }
    }

    else if (v9 >= v8)
    {
      goto LABEL_15;
    }
  }

  else if (v9 >= v8 || v9 + 1 >= v8)
  {
    goto LABEL_15;
  }

  v11 = v3 & 2;
  if ((v3 & 2) != 0)
  {
    v12 = *a1;
  }

  else
  {
    v12 = v5 + 1;
  }

  v13 = v7 & 2;
  if ((v7 & 2) != 0)
  {
    v14 = *a2;
  }

  else
  {
    v14 = v9 + 1;
  }

  v15 = v3 & 1;
  v16 = v7 & 1;
  if (v12 < v14)
  {
    v5 = *a2;
    v11 = v13;
  }

  if (v4 + v15 - 1 >= v8 + v16 - 1)
  {
    v4 = *(a2 + 8);
    LOBYTE(v15) = v16;
  }

  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v15 | v11;
}

BOOL sub_100076BD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  v6 = *(a1 + 40);
  v7 = a3[1];
  if (*a3 <= v6)
  {
    v8 = *(a1 + 40);
  }

  else
  {
    v8 = *a3;
  }

  if (*a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v31[0] = v7 / v6;
  v31[1] = (v7 + v9) / v6;
  v32 = 2;
  if (a5)
  {
    v15 = 0;
    v16 = 0;
    v17 = a5 - 1;
    v18 = 1;
    do
    {
      if (*(*(a1 + 16) + v15) != 2)
      {
        if (a6 && v17 == v16)
        {
          sub_100079AA0(v36, a6);
        }

        else
        {
          sub_1000765C8(a1, a2, v16, a4, v36);
        }

        sub_1000765C8(a1, a2, v16, v31, v33);
        sub_10006661C(v33, v30);
        sub_10006679C(v33, v29);
        sub_10006661C(v36, v28);
        sub_10006679C(v36, v27);
        v19 = sub_100076F90(v30, v29, v28, v27);
        v20 = v27[0];
        v27[0] = 0;
        if (v20)
        {
          (*(*v20 + 24))(v20);
        }

        v21 = v28[0];
        v28[0] = 0;
        if (v21)
        {
          (*(*v21 + 24))(v21);
        }

        v22 = v29[0];
        v29[0] = 0;
        if (v22)
        {
          (*(*v22 + 24))(v22);
        }

        v23 = v30[0];
        v30[0] = 0;
        if (v23)
        {
          (*(*v23 + 24))(v23);
        }

        sub_10006659C(&v35);
        v24 = v34;
        v34 = 0;
        if (v24)
        {
          (*(*v24 + 40))(v24);
        }

        sub_10006659C(&v38);
        v25 = v37;
        v37 = 0;
        if (v25)
        {
          (*(*v25 + 40))(v25);
        }

        if (!v19)
        {
          break;
        }
      }

      v18 = ++v16 < a5;
      v15 += 48;
    }

    while (a5 != v16);
  }

  else
  {
    return 0;
  }

  return v18;
}

void sub_100076EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  if (a28)
  {
    (*(*a28 + 24))(a28);
  }

  sub_10007689C(&a37);
  sub_10007689C(v37 - 184);
  _Unwind_Resume(a1);
}

BOOL sub_100076F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10012E01C(v16, a1);
  sub_10012E01C(v15, a2);
  sub_10012E01C(v14, a3);
  sub_10012E01C(v13, a4);
  v7 = sub_100079EDC(v16, v15, v14, v13);
  v8 = v13[0];
  v13[0] = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = v14[0];
  v14[0] = 0;
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = v15[0];
  v15[0] = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = v16[0];
  v16[0] = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  return v7;
}

void sub_1000770D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a9)
  {
    sub_100198434(a9);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  v23 = *(v21 - 80);
  *(v21 - 80) = 0;
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100077198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v4) >> 4) - 1 == a4 && *(a2 + 40) == 1;
  if (v5 || *(v4 + 48 * a3) != 2)
  {
    return 0;
  }

  else
  {
    return (*(**(*(*(a2 + 16) + 16 * a3) + 8) + 40))();
  }
}

uint64_t sub_100077218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 40);
  v8 = *a5;
  v9 = a5[1] % v7;
  v10 = v9 == 0;
  v11 = v7 - v9;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 - v12;
  if (v8 < v12)
  {
    return 0;
  }

  v49[0] = 0;
  v56 = 0;
  sub_1000302E0(v46, a3);
  v22 = v13 / v7 * v7;
  sub_10002F174(v46, a4, a5[1] + v12, v22, 0xFFFFFFFFFFFFFFFFLL, &v57);
  sub_10005FDDC(v49, &v57);
  if (v66)
  {
    sub_10000E984(v66);
  }

  if (v65)
  {
    sub_10000E984(v65);
  }

  if (v64)
  {
    sub_10000E984(v64);
  }

  if (v63)
  {
    sub_10000E984(v63);
  }

  if (v60)
  {
    sub_10000E984(v60);
  }

  if (v59)
  {
    sub_10000E984(v59);
  }

  if (v48)
  {
    sub_10000E984(v48);
  }

  if (v47)
  {
    sub_10000E984(v47);
  }

  sub_10002E60C(a3, v22);
  sub_10002DBC0((a3 + 120));
  sub_10002E310(v49, &v57);
  sub_100030B94(a3, &v57);
  if (v61)
  {
    sub_10000E984(v61);
  }

  if (v57.n128_u64[1])
  {
    sub_10000E984(v57.n128_u64[1]);
  }

  sub_10002DF68(v49, &v57);
  sub_100030B94(a4, &v57);
  if (v61)
  {
    sub_10000E984(v61);
  }

  if (v57.n128_u64[1])
  {
    sub_10000E984(v57.n128_u64[1]);
  }

  v23 = a6 - 1;
  if (!sub_100077198(a1, a2, v23, a7))
  {
    goto LABEL_65;
  }

  v67 = &v69;
  v68 = xmmword_1001BABD0;
  v24 = *(a3 + 24);
  v25 = *(a4 + 208) - *(a3 + 208);
  v26 = v25 & ~(v25 >> 63);
  while (!sub_10002DE0C(a3, a4))
  {
    sub_100014E18(a3 + 120);
    v27 = *(a3 + 184);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v28 = *(a3 + 208);
    if (((*(a4 + 208) - v28) & ~((*(a4 + 208) - v28) >> 63)) >= *(a3 + 200))
    {
      v29 = *(a3 + 200);
    }

    else
    {
      v29 = (*(a4 + 208) - v28) & ~((*(a4 + 208) - v28) >> 63);
    }

    if (v27)
    {
      sub_10000E984(v27);
    }

    if (v29)
    {
      v30 = *a3;
      v31 = *(a3 + 8);
      v57.n128_u64[0] = *a3;
      v57.n128_u64[1] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
      }

      v58 = v29;
      v32 = v68;
      v33 = &v67[3 * v68];
      if (v68 == *(&v68 + 1))
      {
        sub_10007AF90(&v67, v33, 1, &v57, &v40);
        if (v57.n128_u64[1])
        {
          sub_10000E984(v57.n128_u64[1]);
        }
      }

      else
      {
        v33->n128_u64[0] = v30;
        v33->n128_u64[1] = v57.n128_u64[1];
        v33[1].n128_u64[0] = v29;
        *&v68 = v32 + 1;
      }

      sub_10002E60C(a3, v29);
    }

    else
    {
      sub_100077790(a3, v43);
      if (v45)
      {
        sub_10000E984(v45);
      }

      if (v44)
      {
        sub_10000E984(v44);
      }
    }
  }

  sub_1000306B4(&v57, &v67, v24, v26, 1);
  if (*(a3 + 104) == 1 && *(a3 + 48))
  {
    sub_10002F410(v62, a3 + 48);
  }

  sub_10002E310(v62, &v40);
  sub_10002DF68(v62, v37);
  v34 = sub_10002DE0C(&v40, v37);
  if (v39)
  {
    sub_10000E984(v39);
  }

  if (v38)
  {
    sub_10000E984(v38);
  }

  if (v42)
  {
    sub_10000E984(v42);
  }

  if (v41)
  {
    sub_10000E984(v41);
  }

  if (v34)
  {
    goto LABEL_64;
  }

  v36 = *(*(a2 + 16) + 16 * v23);
  sub_10002E310(v62, &v40);
  sub_10002DF68(v62, v37);
  v14 = sub_10000FEB4(v36);
  if (v39)
  {
    sub_10000E984(v39);
  }

  if (v38)
  {
    sub_10000E984(v38);
  }

  if (v42)
  {
    sub_10000E984(v42);
  }

  if (v41)
  {
    sub_10000E984(v41);
  }

  if ((v14 & 0x8000000000000000) == 0 || !v14)
  {
LABEL_64:
    sub_1000157A4(&v57);
    sub_100012FF8(&v67);
LABEL_65:
    v14 = (*(a4 + 208) - *(a3 + 208)) & ~((*(a4 + 208) - *(a3 + 208)) >> 63);
    goto LABEL_66;
  }

  sub_1000157A4(&v57);
  sub_100012FF8(&v67);
LABEL_66:
  if (v56 == 1)
  {
    if (v55)
    {
      sub_10000E984(v55);
    }

    if (v54)
    {
      sub_10000E984(v54);
    }

    if (v53)
    {
      sub_10000E984(v53);
    }

    if (v52)
    {
      sub_10000E984(v52);
    }

    if (v51)
    {
      sub_10000E984(v51);
    }

    if (v50)
    {
      sub_10000E984(v50);
    }
  }

  return v14;
}

void sub_1000776D0(_Unwind_Exception *a1)
{
  if (STACK[0x668])
  {
    sub_10000E984(STACK[0x668]);
  }

  sub_100012FF8((v1 - 240));
  sub_10002F2A8(&STACK[0x388]);
  _Unwind_Resume(a1);
}

unint64_t sub_1000777DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, BOOL a7, unint64_t *a8, uint64_t a9)
{
  v12 = a1;
  v124 = a5;
  v123 = a5;
  v13 = a1[5];
  v80 = *(a3 + 208);
  v14 = v80 % v13;
  v15 = v13 - v80 % v13;
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_1000302E0(&v118, a3);
  sub_1000302E0(v113, a4);
  v17 = v12[5];
  v77 = a4;
  v18 = *(a3 + 208);
  v19 = *(a4 + 208) - v18;
  v20 = v19 & ~(v19 >> 63);
  if (v20 <= v17)
  {
    v20 = v12[5];
  }

  v21 = *(a4 + 208) == v18;
  if (v19 <= 0)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  *&v111 = v18 / v17;
  *(&v111 + 1) = (v17 + v18 + v22 - 1) / v17;
  LOBYTE(v112) = 2;
  sub_1000765C8(v12, a2, a5, &v111, v157);
  if (0xAAAAAAAAAAAAAAABLL * ((v12[3] - v12[2]) >> 4) - 1 == a5)
  {
    v131 = v111;
    v132 = v112;
    v133 = 1;
    v129 = 0;
    __p = 0;
    v128 = 0;
    sub_1000799A8(&__p, &v131, v134, 1uLL);
    sub_1000BE8A4(v157);
  }

  sub_10006661C(v157, &v107);
  sub_10006679C(v157, v106);
  v82 = 0;
  v79 = a5 + 1;
  v81 = v12;
  while (1)
  {
    if (!sub_10012E124(&v107, v106))
    {
      v53 = 2;
      goto LABEL_145;
    }

    v23 = a2;
    v24 = v108;
    v25 = v109;
    v26 = v110;
    v27 = v122;
    v28 = v12[5];
    v29 = v122 / v28;
    if ((v110 & 2) != 0)
    {
      v30 = v108;
    }

    else
    {
      v30 = v108 + 1;
    }

    v104[0] = v122 / v28;
    v104[1] = v30;
    v105 = 2;
    v31 = v12;
    v32 = v30 - v29;
    if (v30 <= v29)
    {
      v33 = qword_1002349D8;
    }

    else
    {
      v33 = v30 - v29;
    }

    if (!v33)
    {
      v12 = v31;
      goto LABEL_75;
    }

    v34 = v124;
    if (v124 <= v79)
    {
      v34 = a5 + 1;
    }

    v124 = v34;
    v35 = sub_100076218(v31, v23, &v118, v113, v79, v104, a6 & 1, a7, &v124, a9, v157);
    v125 = v35;
    v126 = v36;
    if ((v35 & 0x8000000000000000) != 0 && v35)
    {
      v53 = 1;
      v12 = v81;
      goto LABEL_144;
    }

    v37 = v80;
    if (v36 < v27)
    {
      v37 = v36;
    }

    v80 = v37;
    v38 = v122;
    if (v36 >= v122)
    {
      v40 = *(v77 + 208) - *(a3 + 208);
      v39 = v36 + v35 > v81[5] * (v30 - 1);
      if (v35 <= (v40 & ~(v40 >> 63)))
      {
        a7 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      v39 = v36 + v35 > v81[5] * (v30 - 1);
    }

    sub_1000302E0(v101, &v118);
    v41 = v125;
    v42 = v126;
    sub_1000302E0(&v131, v101);
    sub_10002F174(&v131, v113, v42, v41, 0xFFFFFFFFFFFFFFFFLL, &v141);
    if (v135)
    {
      sub_10000E984(v135);
    }

    if (*(&v131 + 1))
    {
      sub_10000E984(*(&v131 + 1));
    }

    sub_10005FDDC(a9, &v141);
    if (v156)
    {
      sub_10000E984(v156);
    }

    if (v155)
    {
      sub_10000E984(v155);
    }

    if (v154)
    {
      sub_10000E984(v154);
    }

    if (v153)
    {
      sub_10000E984(v153);
    }

    if (*(&v147 + 1))
    {
      sub_10000E984(*(&v147 + 1));
    }

    if (v143)
    {
      sub_10000E984(v143);
    }

    if (v103)
    {
      sub_10000E984(v103);
    }

    if (v102)
    {
      sub_10000E984(v102);
    }

    sub_10002E310(a9, &v141);
    sub_100030B94(&v118, &v141);
    if (*(&v149 + 1))
    {
      sub_10000E984(*(&v149 + 1));
    }

    if (*(&v141 + 1))
    {
      sub_10000E984(*(&v141 + 1));
    }

    sub_10002DF68(a9, &v141);
    sub_100030B94(v113, &v141);
    if (*(&v149 + 1))
    {
      sub_10000E984(*(&v149 + 1));
    }

    if (*(&v141 + 1))
    {
      sub_10000E984(*(&v141 + 1));
    }

    a7 = 1;
    v38 = v122;
LABEL_60:
    sub_1000302E0(&v91, &v118);
    v43 = v125;
    if (!a7)
    {
      v44 = v81[5] * v32;
      v45 = v44 - v126 + v93;
      if (v125 < v45)
      {
        v45 = v125;
      }

      if (v44)
      {
        v43 = v45;
      }
    }

    sub_10002E60C(&v91, v43);
    v12 = v81;
    sub_10002DBC0(v95);
    sub_100030464(&v141, &v91);
    v144 = v94;
    v145 = v95[0];
    v146 = v95[1];
    v147 = v95[2];
    v148 = v96;
    v149 = v97;
    v97 = 0uLL;
    v150 = v98;
    v152 = v100;
    v151 = v99;
    sub_100030B94(&v118, &v141);
    if (*(&v149 + 1))
    {
      sub_10000E984(*(&v149 + 1));
    }

    if (*(&v141 + 1))
    {
      sub_10000E984(*(&v141 + 1));
    }

    if (*(&v97 + 1))
    {
      sub_10000E984(*(&v97 + 1));
    }

    if (v92)
    {
      sub_10000E984(v92);
    }

    v27 = v122;
    v82 += v122 - v38;
    if (!v39)
    {
      break;
    }

    v16 = 0;
    a6 = 0;
    v28 = v81[5];
LABEL_75:
    v46 = (v26 & 1) + v25 - v24 + (((v26 >> 1) & 1) - 1);
    v47 = v28 * v46 - v16;
    if (v117 - v27 < v47)
    {
      v47 = v117 - v27;
    }

    if (v115 - v120 < v47)
    {
      goto LABEL_143;
    }

    *&v141 = v28 * v30;
    *(&v141 + 1) = v28 * (v46 + v30);
    LOBYTE(v142) = 2;
    sub_10002EA5C(&v118, &v141, v113, &v131);
    v125 = -78;
    a2 = v23;
    if (((*(v23 + 24) - *(v23 + 16)) >> 4) - 1 != a5 || a7 || (*(v23 + 44) & 1) == 0)
    {
LABEL_82:
      v50 = sub_10000FDE0(*(*(v23 + 16) + 16 * a5));
      v52 = v51;
      v125 = v50;
      v126 = v51;
      if ((v50 & 0x8000000000000000) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_83;
    }

    v48 = *(v12[2] + 48 * a5 + 24);
    v142 = 0u;
    v141 = 0u;
    (*(*v48 + 80))(&v141);
    if (v141)
    {
      v49 = v141 + ((v140 - v136) & ~((v140 - v136) >> 63)) - 1;
      if (v138 - v134[13] < 1 - (v141 + ((v140 - v136) & ~((v140 - v136) >> 63))) + v49 / v141 * v141 + *(&v141 + 1) * v141 + v49)
      {
        goto LABEL_82;
      }
    }

    else if ((a6 & 1) == 0)
    {
      goto LABEL_82;
    }

    v54 = sub_10000FDE0(*(*(*(v23 + 16) + 16 * a5) + 16));
    v50 = v54;
    v52 = v55;
    v125 = v54;
    v126 = v55;
    v56 = v55 < v136 || v54 > ((*(v77 + 208) - *(a3 + 208)) & ~((*(v77 + 208) - *(a3 + 208)) >> 63));
    a7 = v56;
    if ((v54 & 0x8000000000000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_83:
    if (v50)
    {
      v53 = 1;
      goto LABEL_130;
    }

LABEL_90:
    v57 = v136;
    v58 = v140;
    if (a6)
    {
      if (a7)
      {
        v59 = *(a3 + 208);
        if (*(v77 + 208) - v59 <= v50)
        {
          v60 = v50;
        }

        else
        {
          v60 = *(v77 + 208) - v59;
        }

        sub_1000302E0(v88, &v118);
        sub_1000302E0(&__p, v88);
        sub_10002F174(&__p, v113, v52, v60 & ~(v60 >> 63), 0xFFFFFFFFFFFFFFFFLL, &v141);
        if (v130)
        {
          sub_10000E984(v130);
        }

        if (v128)
        {
          sub_10000E984(v128);
        }

        sub_10005FDDC(a9, &v141);
        if (v156)
        {
          sub_10000E984(v156);
        }

        if (v155)
        {
          sub_10000E984(v155);
        }

        if (v154)
        {
          sub_10000E984(v154);
        }

        if (v153)
        {
          sub_10000E984(v153);
        }

        if (*(&v147 + 1))
        {
          sub_10000E984(*(&v147 + 1));
        }

        if (v143)
        {
          sub_10000E984(v143);
        }

        if (v90)
        {
          sub_10000E984(v90);
        }

        if (v89)
        {
          sub_10000E984(v89);
        }

        sub_10002E310(a9, &v141);
        sub_100030B94(&v118, &v141);
        if (*(&v149 + 1))
        {
          sub_10000E984(*(&v149 + 1));
        }

        if (*(&v141 + 1))
        {
          sub_10000E984(*(&v141 + 1));
        }

        sub_10002DF68(a9, &v141);
        sub_100030B94(v113, &v141);
        if (*(&v149 + 1))
        {
          sub_10000E984(*(&v149 + 1));
        }

        if (*(&v141 + 1))
        {
          sub_10000E984(*(&v141 + 1));
        }

        a7 = 1;
        v61 = v125;
      }

      else
      {
        a7 = 0;
        v61 = v50;
      }

      v80 = v52;
    }

    else if (v52 == v122)
    {
      v61 = v50;
    }

    else
    {
      v61 = sub_100195CB0(&v118, v113, v81[5] * v46, &v125);
      v125 = v61;
      v126 = v62;
      a7 = v61 != v81[5] * v46;
    }

    sub_10002E60C(&v118, v61);
    v16 = 0;
    a6 = 0;
    v63 = v52 + v50 < ((v58 - v57) & ~((v58 - v57) >> 63)) + v57;
    v12 = v81;
    v82 += v125;
    v53 = 4 * v63;
LABEL_130:
    if (v139)
    {
      sub_10000E984(v139);
    }

    if (v137)
    {
      sub_10000E984(v137);
    }

    if (v135)
    {
      sub_10000E984(v135);
    }

    if (*(&v131 + 1))
    {
      sub_10000E984(*(&v131 + 1));
    }

    if (v53)
    {
      goto LABEL_145;
    }

    sub_10012E3B4(&v107);
  }

  a6 = 0;
LABEL_143:
  v53 = 4;
LABEL_144:
  a2 = v23;
LABEL_145:
  v64 = v106[0];
  v106[0] = 0;
  if (v64)
  {
    (*(*v64 + 24))(v64);
  }

  v65 = v107;
  v107 = 0;
  if (v65)
  {
    (*(*v65 + 24))(v65);
  }

  if (v53 != 2)
  {
    if (v53 != 4)
    {
      goto LABEL_191;
    }

LABEL_190:
    v125 = v82;
    v126 = v80;
    goto LABEL_191;
  }

  if (sub_10002DE0C(&v118, v113))
  {
    goto LABEL_190;
  }

  if (!sub_100078710(v157))
  {
    sub_10012E544(v157, &v141);
    if (v12[5] * *(&v141 + 1) >= *(v77 + 208))
    {
      goto LABEL_190;
    }
  }

  v66 = v123;
  if (v123 <= v79)
  {
    v66 = a5 + 1;
  }

  v123 = v66;
  v67 = sub_100076350(v12, a2, &v118, v113, v79, a6 & 1, a7, &v123, a9, v157);
  v68 = v67;
  v70 = v69;
  v125 = v67;
  v126 = v69;
  if ((v67 & 0x8000000000000000) == 0 || !v67)
  {
    if (a6)
    {
      sub_1000302E0(v85, &v118);
      v71 = v125;
      v72 = v126;
      sub_1000302E0(&v131, v85);
      sub_10002F174(&v131, v113, v72, v71, 0xFFFFFFFFFFFFFFFFLL, &v141);
      if (v135)
      {
        sub_10000E984(v135);
      }

      if (*(&v131 + 1))
      {
        sub_10000E984(*(&v131 + 1));
      }

      sub_10005FDDC(a9, &v141);
      if (v156)
      {
        sub_10000E984(v156);
      }

      if (v155)
      {
        sub_10000E984(v155);
      }

      if (v154)
      {
        sub_10000E984(v154);
      }

      if (v153)
      {
        sub_10000E984(v153);
      }

      if (*(&v147 + 1))
      {
        sub_10000E984(*(&v147 + 1));
      }

      if (v143)
      {
        sub_10000E984(v143);
      }

      if (v87)
      {
        sub_10000E984(v87);
      }

      if (v86)
      {
        sub_10000E984(v86);
      }

      sub_10002E310(a9, &v141);
      sub_100030B94(&v118, &v141);
      if (*(&v149 + 1))
      {
        sub_10000E984(*(&v149 + 1));
      }

      if (*(&v141 + 1))
      {
        sub_10000E984(*(&v141 + 1));
      }

      sub_10002DF68(a9, &v141);
      sub_100030B94(v113, &v141);
      if (*(&v149 + 1))
      {
        sub_10000E984(*(&v149 + 1));
      }

      if (*(&v141 + 1))
      {
        sub_10000E984(*(&v141 + 1));
      }

      v68 = v125;
      v80 = v70;
    }

    sub_10002E60C(&v118, v68);
    v82 += v125;
    goto LABEL_190;
  }

LABEL_191:
  sub_10006659C(&v159);
  v73 = v158;
  v158 = 0;
  if (v73)
  {
    (*(*v73 + 40))(v73);
  }

  if (v116)
  {
    sub_10000E984(v116);
  }

  if (v114)
  {
    sub_10000E984(v114);
  }

  if (v121)
  {
    sub_10000E984(v121);
  }

  if (v119)
  {
    sub_10000E984(v119);
  }

  v74 = v124;
  if (v124 <= v123)
  {
    v74 = v123;
  }

  *a8 = v74;
  return v125;
}

void sub_1000784E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t *a13)
{
  sub_10000FF88(&STACK[0x900]);
  sub_10007689C(v13 - 184);
  sub_10000FF88(&STACK[0x480]);
  sub_10000FF88(&STACK[0x560]);
  v15 = STACK[0x648];
  if (STACK[0x648] <= STACK[0x640])
  {
    v15 = STACK[0x640];
  }

  *a13 = v15;
  _Unwind_Resume(a1);
}

BOOL sub_100078710(uint64_t a1)
{
  sub_10006661C(a1, v7);
  sub_10006679C(a1, v6);
  v2 = sub_10012E088(v7, v6);
  v3 = v6[0];
  v6[0] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = v7[0];
  v7[0] = 0;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  return v2;
}

void sub_1000787C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a9)
  {
    sub_100198434(a9);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100078814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v3 == v4)
  {
    return 1;
  }

  v7 = v3 + 48;
  do
  {
    result = (*(**(v7 - 40) + 64))(*(v7 - 40), a2, a3);
    if (result)
    {
      v9 = v7 == v4;
    }

    else
    {
      v9 = 1;
    }

    v7 += 48;
  }

  while (!v9);
  return result;
}

uint64_t sub_100078898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (*v2 || !(*(**(v2 + 8) + 88))(*(v2 + 8)) || **(a1 + 16))
  {
    return 0;
  }

  v6 = **(a2 + 16);

  return sub_10001170C(v6);
}

void *sub_100078944(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100010B0C(&__p, "com.apple.di_stackable.cache.flusher");
  sub_10004FB6C(a1);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  sub_10004FEC8(a1, a2, a3, (a1 + 8));
  return a1;
}

double sub_1000789F0@<D0>(uint64_t a1@<X0>, uint64x2_t *a2@<X8>)
{
  v2 = *(a1 + 24);
  v4.i64[0] = *(a1 + 40);
  v4.i64[1] = v2;
  v5 = 2;
  *&result = sub_100078A2C(a1, &v4, 0, a2).n128_u64[0];
  return result;
}

__n128 sub_100078A2C@<Q0>(uint64_t a1@<X0>, uint64x2_t *a2@<X1>, uint64_t a3@<X2>, uint64x2_t *a4@<X8>)
{
  v6 = *(a1 + 48);
  v7 = *(v6 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 24) - v7) >> 4) == a3)
  {
    goto LABEL_37;
  }

  v10 = a2[1].u8[0];
  v12 = a2->i64[0];
  v11 = a2->u64[1];
  if (!a2[1].i8[0])
  {
    if (v12 < v11 && v12 + 1 < v11)
    {
      goto LABEL_36;
    }

LABEL_5:
    if (qword_1002349D8)
    {
      goto LABEL_6;
    }

LABEL_37:
    result = *a2;
    *a4 = *a2;
    a4[1].i64[0] = a2[1].i64[0];
    a4[1].i32[2] = 0;
    return result;
  }

  if (v10 != 3)
  {
    if (v12 < v11)
    {
      goto LABEL_36;
    }

    goto LABEL_5;
  }

  if (v11 < v12)
  {
    goto LABEL_5;
  }

LABEL_36:
  if (!(v11 + (v10 & 1) - v12 + (((v10 >> 1) & 1) - 1)))
  {
    goto LABEL_37;
  }

LABEL_6:
  v13 = *(a1 + 56);
  v14 = (*(**(v7 + 48 * a3 + 8) + 32))(*(v7 + 48 * a3 + 8));
  v15 = *(*(v13 + 16) + 16 * a3);
  v41 = *(*(v6 + 16) + 48 * a3 + 8);
  v16 = *a2;
  v17 = vdupq_n_s64(v14);
  v42 = vbslq_s8(vcgtq_u64(v17, *a2), *a2, v17);
  v43 = 2;
  v44 = 0;
  v45 = v15;
  v46 = 7;
  v47[0] = off_1001FE7F0;
  v47[3] = v47;
  if (v14 < v16.i64[1])
  {
    v34[0] = v14;
    v34[1] = v16.i64[1];
    v35 = 2;
    v36 = 2;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_1000799A8(&__p, v34, &v37, 1uLL);
    sub_1000BE8A4(&v41);
  }

  if ((a2[1].i8[0] & 2) != 0)
  {
    v18 = v16.i64[0];
  }

  else
  {
    v18 = v16.i64[0] + 1;
  }

  sub_10006661C(&v41, v38);
  v19 = v40;
  v20 = v38[0];
  v38[0] = 0;
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  sub_10006661C(&v41, v38);
  sub_10006679C(&v41, v34);
  while (sub_10012E124(v38, v34))
  {
    v21 = v39;
    if (v40)
    {
      if (v40 != v19)
      {
        break;
      }
    }

    else
    {
      v28[0] = v18;
      v28[1] = v39;
      v29 = 2;
      sub_100078A2C(&__p, a1, v28, a3 + 1);
      if (v19)
      {
        if (v33 != v19)
        {
          break;
        }
      }

      else
      {
        v19 = v33;
      }

      v18 = v31;
      if (v31 != v21)
      {
        break;
      }
    }

    sub_10012E3B4(v38);
    v18 = v21;
  }

  v22 = v34[0];
  v34[0] = 0;
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  v23 = v38[0];
  v38[0] = 0;
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  v24 = a2->i64[0];
  if ((a2[1].i8[0] & 2) == 0)
  {
    ++v24;
  }

  a4->i64[0] = v24;
  a4->i64[1] = v18;
  a4[1].i8[0] = 2;
  a4[1].i32[2] = v19;
  sub_10006659C(v47);
  v26 = v44;
  v44 = 0;
  if (v26)
  {
    (*(*v26 + 40))(v26);
  }

  return result;
}

void sub_100078E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10007689C(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  sub_10007689C(v22 - 176);
  _Unwind_Resume(a1);
}

CFIndex sub_100078EE0@<X0>(CFIndex result@<X0>, CFDictionaryRef *a2@<X8>)
{
  v3 = *(result + 16);
  if (v3 != *(result + 24))
  {
    v4 = result;
    do
    {
      (*(**(v3 + 24) + 112))(*(v3 + 24));
      result = CFDictionaryGetCount(*a2);
      if (result)
      {
        break;
      }

      v3 += 48;
      if (v3 == *(v4 + 24))
      {
        break;
      }

      result = sub_10000E950(a2);
    }

    while (v3 != *(v4 + 24));
  }

  return result;
}

uint64_t sub_100079084(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  do
  {
    LODWORD(result) = (*(**(v3 - 40) + 40))(*(v3 - 40));
    if (*(v3 - 48))
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 48;
  }

  while (!v5);
  return result;
}

uint64_t sub_1000791F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  do
  {
    LODWORD(result) = (*(**(v3 - 40) + 88))(*(v3 - 40));
    if (*(v3 - 48))
    {
      result = 0;
    }

    else
    {
      result = result;
    }

    if (result)
    {
      break;
    }

    v5 = v3 == v2;
    v3 += 48;
  }

  while (!v5);
  return result;
}

uint64_t sub_10007937C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 208);
  v9 = (*(*a1 + 32))(a1);
  if (v8 > (*(*a1 + 24))(a1) * v9)
  {
    return -5;
  }

  v13[0] = 0;
  v20 = 0;
  v10 = sub_1000777DC(a1, a2, a3, a4, 0, 1, 0, &v12, v13);
  if (v20 == 1)
  {
    if (v19)
    {
      sub_10000E984(v19);
    }

    if (v18)
    {
      sub_10000E984(v18);
    }

    if (v17)
    {
      sub_10000E984(v17);
    }

    if (v16)
    {
      sub_10000E984(v16);
    }

    if (v15)
    {
      sub_10000E984(v15);
    }

    if (v14)
    {
      sub_10000E984(v14);
    }
  }

  return v10;
}

void sub_1000794C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002F2A8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007950C(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 560);
  result = *(v2 + 160);
  v4 = *(v2 + 168);
  return result;
}

uint64_t sub_10007951C(uint64_t a1, uint64_t a2)
{
  result = *(*a2 + 72);
  v3 = *(*a2 + 80);
  return result;
}

uint64_t sub_10007959C(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    sub_10007970C(a1, v6);
  }

  v13 = 0;
  v14 = 48 * v2;
  sub_1000796C8(48 * v2, a2);
  v15 = 48 * v2 + 48;
  v7 = a1[1];
  v8 = 48 * v2 + *a1 - v7;
  sub_100079764(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100079838(&v13);
  return v12;
}

void sub_1000796B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100079838(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000796C8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  *(result + 8) = *(a2 + 8);
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 32);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = *(a2 + 40);
  return result;
}

void sub_10007970C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_10000ED20();
}

void sub_100079764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      sub_1000797E8(v5);
      v5 += 48;
    }
  }
}

void sub_1000797E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_10000E984(v3);
  }
}

uint64_t sub_100079838(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1000797E8(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100079888(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

uint64_t sub_1000798C4(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    sub_1000500F4(a1 + 64);
    v3 = (a1 + 24);
    sub_100018720(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_100079924(void ***a1)
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
        v4 -= 48;
        sub_1000797E8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1000799A8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100079A1C(result, a4);
  }

  return result;
}

void sub_100079A00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100079A1C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_100079A58(a1, a2);
  }

  sub_100015B70();
}

void sub_100079A58(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_100079AA0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = *(a2 + 1);
  *(a1 + 24) = a2[3];
  *(a1 + 8) = v5;
  v6 = (*(*v4 + 144))(v4);
  *(a1 + 32) = v6;
  *(a1 + 40) = v6;
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 56) = off_1001FE7F0;
  *(a1 + 80) = a1 + 56;
  sub_100079B6C((a1 + 56), (a2 + 7));
  return a1;
}

void sub_100079B48(_Unwind_Exception *a1)
{
  sub_10006659C(v2);
  v4 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v4)
  {
    sub_1001980AC(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_100079B6C(void *a1, uint64_t a2)
{
  sub_100079BE0(v4, a2);
  sub_100079C78(v4, a1);
  sub_10006659C(v4);
  return a1;
}

uint64_t sub_100079BE0(uint64_t a1, uint64_t a2)
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

void *sub_100079C78(void *result, void *a2)
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

void sub_100079ED0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100001A14(a1);
}

BOOL sub_100079EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10012E01C(v34, a1);
  sub_10012E01C(&v39, v34);
  v35 = v39;
  v36 = v40;
  v37 = v41;
  v38 = v42;
  sub_10012E01C(v29, a2);
  sub_10012E01C(&v39, v29);
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v33 = v42;
  sub_10012E01C(v24, a3);
  sub_10012E01C(&v39, v24);
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v42;
  sub_10012E01C(v19, a4);
  sub_10012E01C(&v39, v19);
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v23 = v42;
  if (sub_10012E124(&v35, &v30))
  {
    while (sub_10012E124(&v25, &v20))
    {
      v7 = sub_10007A3D4(&v36, &v26);
      if (DWORD2(v37) != DWORD2(v27) || !v7)
      {
        goto LABEL_10;
      }

      sub_10012E3B4(&v35);
      sub_10012E3B4(&v25);
      if (!sub_10012E124(&v35, &v30))
      {
        break;
      }
    }
  }

  if (sub_10012E088(&v35, &v30))
  {
    v9 = sub_10012E088(&v25, &v20);
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  v10 = v20;
  v20 = 0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = v19[0];
  v19[0] = 0;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v12 = v25;
  v25 = 0;
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = v24[0];
  v24[0] = 0;
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = v30;
  v30 = 0;
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = v29[0];
  v29[0] = 0;
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = v35;
  v35 = 0;
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = v34[0];
  v34[0] = 0;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  return v9;
}

void sub_10007A220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a27)
  {
    (*(*a27 + 24))(a27);
  }

  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  if (a39)
  {
    (*(*a39 + 24))(a39);
  }

  if (a33)
  {
    (*(*a33 + 24))(a33);
  }

  v41 = *(v39 - 144);
  *(v39 - 144) = 0;
  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  v42 = *(v39 - 192);
  *(v39 - 192) = 0;
  if (v42)
  {
    (*(*v42 + 24))(v42);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10007A3D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v2 == 3)
    {
      if (v3 >= v4)
      {
        goto LABEL_19;
      }
    }

    else if (v4 < v3)
    {
      goto LABEL_19;
    }
  }

  else if (v4 < v3 && v4 + 1 < v3)
  {
    goto LABEL_19;
  }

  v7 = *a2;
  v6 = *(a2 + 8);
  if (!*(a2 + 16))
  {
    if (v7 < v6 && v7 + 1 < v6)
    {
      goto LABEL_19;
    }

    return 1;
  }

  if (*(a2 + 16) != 3)
  {
    if (v7 < v6)
    {
      goto LABEL_19;
    }

    return 1;
  }

  if (v6 < v7)
  {
    return 1;
  }

LABEL_19:
  if ((v2 & 2) != 0)
  {
    v10 = *a1;
  }

  else
  {
    v10 = v4 + 1;
  }

  v11 = *a2;
  if ((*(a2 + 16) & 2) == 0)
  {
    ++v11;
  }

  return v11 == v10 && (*(a2 + 16) & 1) + *(a2 + 8) == (v2 & 1) + v3;
}

uint64_t sub_10007A49C(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = off_100201370;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v6 = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a3;
  if (a3 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(**(*(a2 + 24) - 24) + 104))(*(*(a2 + 24) - 24));
  }

  *(a1 + 44) = v7;
  v8 = *(a2 + 16);
  for (i = *(a2 + 24); v8 != i; v8 += 48)
  {
    if (a3 == 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 24) - *(a2 + 16)) >> 4) - 1 == (*(a1 + 24) - *(a1 + 16)) >> 4)
    {
      v10 = *(v8 + 24);
      v11 = *(v8 + 32);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v12 = (*(**(v8 + 8) + 144))(*(v8 + 8));
    v17 = v12;
    v13 = *(a1 + 24);
    if (v13 >= *(a1 + 32))
    {
      v14 = sub_10007AD64(v6, &v17);
      v15 = v17;
      *(a1 + 24) = v14;
      v17 = 0;
      if (v15)
      {
        (*(*v15 + 40))(v15);
      }
    }

    else
    {
      *v13 = v12;
      if (v12)
      {
        operator new();
      }

      v13[1] = 0;
      *(a1 + 24) = v13 + 2;
    }
  }

  return a1;
}

void sub_10007A788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100015CD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A840(uint64_t a1)
{
  *a1 = off_100201370;
  v3 = (a1 + 16);
  sub_100015CD4(&v3);
  return a1;
}

void sub_10007A898(uint64_t a1)
{
  *a1 = off_100201370;
  v1 = (a1 + 16);
  sub_100015CD4(&v1);
  operator delete();
}

uint64_t sub_10007A904(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100015B70();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100015B88(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  sub_10007AA04((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_10007AB30(&v14);
  return v8;
}

void sub_10007A9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007AB30(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10007AA04(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_10007AA88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10007AAC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_10007AAF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void **sub_10007AB30(void **a1)
{
  sub_10007AB64(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10007AB64(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_10000E984(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t sub_10007ABCC(uint64_t a1)
{
  *a1 = off_100201428;
  v3 = (a1 + 16);
  sub_10007AC90(&v3);
  return a1;
}

void sub_10007AC24(uint64_t a1)
{
  *a1 = off_100201428;
  v1 = (a1 + 16);
  sub_10007AC90(&v1);
  operator delete();
}

void sub_10007AC90(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10007ACE4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10007ACE4(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 168)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_10000E984(v4);
    }

    v7 = (i - 40);
    sub_100015CD4(&v7);
    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      sub_10000E984(v6);
    }
  }

  a1[1] = v2;
}

uint64_t sub_10007AD64(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100015B70();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_100015B88(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  v16 = 16 * v2;
  v17 = 0;
  sub_10007AE64((16 * v2), a2);
  v8 = 16 * v2 + 16;
  v9 = *(a1 + 8) - *a1;
  v10 = 16 * v2 - v9;
  memcpy((v15 - v9), *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_10007AB30(&v14);
  return v8;
}

void sub_10007AE50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10007AB30(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10007AE64(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void sub_10007AEE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10007AF20(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_10007AF50(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10007AF90(uint64_t *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, void *a5@<X8>)
{
  v10 = *a1;
  v11 = sub_1000625A4(a1, a3);
  if (v11 >= 0x555555555555556)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v12 = v11;
  v13 = operator new(24 * v11);
  sub_10007B040(a1, v13, v12, a2, a3, a4);
  *a5 = a2 + *a1 - v10;
}

void sub_10007B040(uint64_t a1, __n128 *a2, uint64_t a3, __n128 *a4, uint64_t a5, __n128 *a6)
{
  v10 = *a1;
  sub_10007B114(a1, *a1, a4, (*a1 + 24 * *(a1 + 8)), a2, a5, a6);
  if (v10)
  {
    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = &v10->n128_u64[1];
      do
      {
        if (*v12)
        {
          sub_10000E984(*v12);
        }

        v12 += 3;
        --v11;
      }

      while (v11);
    }

    if (a1 + 24 != *a1)
    {
      operator delete(*a1);
    }
  }

  v13 = *(a1 + 8) + a5;
  *a1 = a2;
  *(a1 + 8) = v13;
  *(a1 + 16) = a3;
}

void sub_10007B0F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    if ((v2 + 24) != v1)
    {
      operator delete(v1);
    }
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10007B114(uint64_t a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t a6, __n128 *a7)
{
  while (a2 != a3)
  {
    *a5 = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a5[1].n128_u64[0] = a2[1].n128_u64[0];
    a2 = (a2 + 24);
    a5 = (a5 + 24);
  }

  result = *a7;
  *a5 = *a7;
  a7->n128_u64[0] = 0;
  a7->n128_u64[1] = 0;
  a5[1].n128_u64[0] = a7[1].n128_u64[0];
  if (a3 != a4)
  {
    v8 = (a5 + 24 * a6);
    do
    {
      result = *a3;
      *v8 = *a3;
      a3->n128_u64[0] = 0;
      a3->n128_u64[1] = 0;
      v8[1].n128_u64[0] = a3[1].n128_u64[0];
      a3 = (a3 + 24);
      v8 = (v8 + 24);
    }

    while (a3 != a4);
  }

  return result;
}

void sub_10007B1FC(uint64_t a1, uint64_t a2, char *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1002014E0;
  v4 = *a3;
  *(a1 + 32) = 0;
  *(a1 + 24) = off_1001FA5C0;
  *(a1 + 40) = a2;
  (*(*a2 + 80))(a2);
  *(a1 + 80) = v4;
  sub_10007B358((a1 + 88));
}

void sub_10007B2DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002014E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10007B3E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10007B41C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_100201570))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007B45C()
{
  v1 = &stru_1002015A0;
  if (atomic_load_explicit(&qword_1002353B0, memory_order_acquire) != -1)
  {
    v3 = &v1;
    v2 = &v3;
    std::__call_once(&qword_1002353B0, &v2, sub_100084330);
  }

  return qword_1002354B0;
}

void sub_10007B52C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  std::mutex::lock((a1 + 24));
  v8 = sub_10008154C(a1, a2);
  if (a1 + 8 == v8)
  {
    std::mutex::unlock((a1 + 24));
    if (a3 && ((os_variant_allows_internal_security_policies() & 1) != 0 || os_variant_is_darwinos()))
    {
      if ((atomic_load_explicit(&qword_1002353D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1002353D0))
      {
        sub_100010B0C(v21, "com.apple.diskimage-test-plugin.raw");
        v21[3] = sub_1000A7670;
        v21[4] = 0;
        sub_100010B0C(v22, "com.apple.diskimage-test-plugin.julio");
        v23 = sub_10007EF60;
        v24 = 0;
        sub_100010B0C(v25, "com.apple.diskimage-plugin.nbd");
        v26 = sub_10007EFC8;
        v27 = 0;
        sub_100010B0C(v28, "com.apple.diskimage-plugin.amber");
        v29 = sub_10007EFC8;
        v30 = 16;
        sub_100081010(&qword_1002353B8, v21, 4);
        for (i = 0; i != -160; i -= 40)
        {
          if (v28[i + 23] < 0)
          {
            operator delete(*&v28[i]);
          }
        }

        __cxa_atexit(sub_10007F030, &qword_1002353B8, &_mh_execute_header);
        __cxa_guard_release(&qword_1002353D0);
      }

      if (sub_10008154C(&qword_1002353B8, a2) != &unk_1002353C0)
      {
        v21[0] = a2;
        v9 = sub_1000815CC(&qword_1002353B8, a2);
        v11 = *(v9 + 56);
        v10 = *(v9 + 64);
        if (*(a2 + 23) >= 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = *a2;
        }

        v13 = v11(v10);
        di_plugin_register(v12, v13);
      }

      sub_10007B52C(a1, a2, 0);
    }

    else
    {
      *&v19 = "*, diskimage_uio::diskimage_err> PluginsManager::get_plugin_ptr(const std::string &, BOOL)";
      *(&v19 + 1) = 63;
      v20 = 16;
      sub_100072074(v21, &v19);
      sub_100001FE8(v31, "Plugin ", 7);
      v14 = *(a2 + 23);
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      if (v14 >= 0)
      {
        v16 = *(a2 + 23);
      }

      else
      {
        v16 = *(a2 + 8);
      }

      sub_100001FE8(v31, v15, v16);
      sub_100001FE8(v31, " is not registered", 18);
      std::ostream::~ostream();
      sub_1000722A8(v21);
      std::ios::~ios();
      v17 = std::generic_category();
      *a4 = 45;
      *(a4 + 8) = v17;
      *(a4 + 16) = 0;
    }
  }

  else
  {
    *a4 = *(v8 + 56);
    *(a4 + 16) = 1;

    std::mutex::unlock((a1 + 24));
  }
}

void sub_10007B88C(_Unwind_Exception *a1)
{
  v3 = (v1 + 143);
  v4 = -160;
  v5 = (v1 + 143);
  while (1)
  {
    v6 = *v5;
    v5 -= 40;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 40;
    if (!v4)
    {
      __cxa_guard_abort(&qword_1002353D0);
      _Unwind_Resume(a1);
    }
  }
}

unsigned int *sub_10007B930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *__error();
  if (sub_1000E95F0())
  {
    v19[0] = 0;
    v8 = sub_1000E957C();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    buf = 0x6704100402;
    v9 = "RO";
    v23 = "di_plugin_image_t *PluginsManager::create_plugin_image(const di_plugin_t &, int, const CFDictionaryRef)";
    v22 = 2080;
    if ((a3 & 3) != 0)
    {
      v9 = "RW";
    }

    v24 = 2080;
    v25 = v9;
    v26 = 2112;
    v27 = a4;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      fprintf(__stderrp, "%s\n", v10);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E957C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "RW";
      buf = 0x6704100402;
      v23 = "di_plugin_image_t *PluginsManager::create_plugin_image(const di_plugin_t &, int, const CFDictionaryRef)";
      v22 = 2080;
      if ((a3 & 3) == 0)
      {
        v13 = "RO";
      }

      v24 = 2080;
      v25 = v13;
      v26 = 2112;
      v27 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Creating %s plugin instance with params: %@", &buf, 0x26u);
    }
  }

  *__error() = v7;
  v19[1] = a4;
  v20 = 0;
  LODWORD(v19[0]) = 16;
  HIDWORD(v19[0]) = a3;
  v14 = (*(a2 + 8))(v19, &v20);
  v15 = v14;
  if (v14 && *v14 <= 0x57)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_100001DC0(&buf);
    sub_100001FE8(&buf, "Plugin image struct size ", 25);
    v18 = *v15;
    std::ostream::operator<<();
    sub_100001FE8(&buf, " is incompatible with the framework, expected at least ", 55);
    std::ostream::operator<<();
    sub_10000EBDC(exception, &buf, 0xFFFFFFA9);
  }

  sub_10007BC3C(v14, v20);
  return v15;
}

void sub_10007BBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ios::~ios();
  if (v8)
  {
    __cxa_free_exception(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10007BC3C(uint64_t result, __CFError *a2)
{
  if (!result)
  {
    if (a2)
    {
      v7 = *__error();
      if (sub_1000E95F0())
      {
        v8 = sub_1000E957C();
        os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
        *buf = 68158210;
        v16 = 71;
        v17 = 2080;
        v18 = "di_plugin_image_t *verify_plugin_image(di_plugin_image_t *, CFErrorRef)";
        v19 = 2114;
        v20 = a2;
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
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158210;
          v16 = 71;
          v17 = 2080;
          v18 = "di_plugin_image_t *verify_plugin_image(di_plugin_image_t *, CFErrorRef)";
          v19 = 2114;
          v20 = a2;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%.*s: Failed initializing plugin: %{public}@", buf, 0x1Cu);
        }
      }

      *__error() = v7;
      v12 = a2;
      Code = CFErrorGetCode(a2);
      if (Code < 0)
      {
        v14 = Code;
      }

      else
      {
        v14 = -Code;
      }

      CFRelease(v12);
      exception = __cxa_allocate_exception(0x40uLL);
      v3 = "Plugin initialization failed";
      v4 = v14;
    }

    else
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v3 = "Plugin bug: returned init failure without supplying the error";
      v4 = -14;
    }

LABEL_11:
    v5 = sub_100001940(exception, v3, v4);
  }

  if (!*(result + 8) || !*(result + 16) || !*(result + 24) || (*result < 0x60u || !*(result + 88)) && !*(result + 48) || !*(result + 56) || !*(result + 64))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = "Mandatory callbacks in the plugin's image struct are missing";
    v4 = -22;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10007BEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *__error();
  if (sub_1000E95F0())
  {
    v15 = 0;
    v8 = sub_1000E957C();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 114;
    *&buf[8] = 2080;
    *&buf[10] = "di_plugin_image_t *PluginsManager::decode_plugin_image(const di_plugin_t &, const diskimage_decode_fn_t &, void *)";
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
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 114;
      *&buf[8] = 2080;
      *&buf[10] = "di_plugin_image_t *PluginsManager::decode_plugin_image(const di_plugin_t &, const diskimage_decode_fn_t &, void *)";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: Decoding plugin instance", buf, 0x12u);
    }
  }

  *__error() = v7;
  v15 = 0;
  v12 = *(a2 + 16);
  *buf = *a3;
  *&buf[16] = *(a3 + 16);
  v13 = v12(buf, a4, &v15);
  return sub_10007BC3C(v13, v15);
}

uint64_t sub_10007C068(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (!a3)
  {
    return 4294967274;
  }

  if (a3[1] != 1)
  {
    *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v15 + 1) = 31;
    v16 = 16;
    sub_10007C5AC(__p, &v15);
    sub_100001FE8(v18, "Plugin version ", 15);
    v5 = a3[1];
    std::ostream::operator<<();
    sub_100001FE8(v18, " is incompatible with the framework, expected ", 46);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000819B4(__p);
    goto LABEL_6;
  }

  if (*a3 <= 0x27)
  {
    *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v15 + 1) = 31;
    v16 = 16;
    sub_10007C718(__p, &v15);
    sub_100001FE8(v18, "Plugin struct size ", 19);
    v4 = *a3;
    std::ostream::operator<<();
    sub_100001FE8(v18, " is incompatible with the framework, expected at least ", 55);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_10008214C(__p);
LABEL_6:
    std::ios::~ios();
    return 4294967209;
  }

  if (!*(a3 + 1) || !*(a3 + 2))
  {
    *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
    *(&v15 + 1) = 31;
    v16 = 16;
    sub_10007C884(__p, &v15);
    sub_100001FE8(v18, "Mandatory callbacks in the plugin's struct are missing", 54);
    std::ostream::~ostream();
    sub_1000828E4(__p);
    std::ios::~ios();
    return 4294967274;
  }

  std::mutex::lock((a1 + 24));
  if (a1 + 8 == sub_10008154C(a1, a2))
  {
    if (*(a2 + 23) < 0)
    {
      sub_100050108(v13, *a2, *(a2 + 8));
    }

    else
    {
      *v13 = *a2;
      v14 = *(a2 + 16);
    }

    operator new();
  }

  *&v15 = "PluginsManager::register_plugin(const string &, di_plugin_t *)";
  *(&v15 + 1) = 31;
  v16 = 16;
  sub_10007C9F0(__p, &v15);
  sub_100001FE8(v18, "Plugin ", 7);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  sub_100001FE8(v18, v10, v11);
  sub_100001FE8(v18, " cannot be re-registered", 24);
  std::ostream::~ostream();
  sub_10008307C(__p);
  std::ios::~ios();
  v6 = 4294967279;
  std::mutex::unlock((a1 + 24));
  return v6;
}

void sub_10007C4A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__shared_weak_count::~__shared_weak_count(v23);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_10007C540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100010CEC(va);
  std::mutex::unlock((v6 + 24));
  JUMPOUT(0x10007C5A4);
}

void sub_10007C558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10007C9AC(va);
  _Unwind_Resume(a1);
}

void sub_10007C568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10007CB18(va);
  JUMPOUT(0x10007C574);
}

void sub_10007C580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10007C840(va);
  _Unwind_Resume(a1);
}

void *sub_10007C5AC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100084348(a1, a2);
  *a1 = off_100201DE8;
  a1[45] = &off_100201EE8;
  a1[46] = &off_100201F10;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100201DE8;
  a1[45] = off_100201E70;
  a1[46] = off_100201E98;
  return a1;
}

void sub_10007C6B0(_Unwind_Exception *a1)
{
  sub_1000819B4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007C6D4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000819B4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007C718(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100084410(a1, a2);
  *a1 = off_100202008;
  a1[45] = &off_100202108;
  a1[46] = &off_100202130;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202008;
  a1[45] = off_100202090;
  a1[46] = off_1002020B8;
  return a1;
}

void sub_10007C81C(_Unwind_Exception *a1)
{
  sub_10008214C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007C840(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008214C(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007C884(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000844D8(a1, a2);
  *a1 = off_100202228;
  a1[45] = &off_100202328;
  a1[46] = &off_100202350;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202228;
  a1[45] = off_1002022B0;
  a1[46] = off_1002022D8;
  return a1;
}

void sub_10007C988(_Unwind_Exception *a1)
{
  sub_1000828E4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007C9AC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000828E4(a1);
  std::ios::~ios();
  return a1;
}

void *sub_10007C9F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000845A0(a1, a2);
  *a1 = off_100202448;
  a1[45] = &off_100202548;
  a1[46] = &off_100202570;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202448;
  a1[45] = off_1002024D0;
  a1[46] = off_1002024F8;
  return a1;
}

void sub_10007CAF4(_Unwind_Exception *a1)
{
  sub_10008307C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007CB18(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10008307C(a1);
  std::ios::~ios();
  return a1;
}

CFStringRef sub_10007CB5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007B52C(a1, a2, 1, &v10);
  if (v11 == 1)
  {
    if (*v10 >= 0x30u)
    {
      v5 = *(v10 + 40);
      if (v5)
      {

        return v5(a3);
      }
    }

    v7 = *(v10 + 24);
    if (v7)
    {
      v8 = v7(a3);
      CFRetain(v8);
      return v8;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  return CFStringCreateWithCString(0, v9, 0x8000100u);
}

void sub_10007CC34(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100050108((a1 + 16), *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 16) = v11;
  }

  v12 = sub_10007B45C();
  sub_10007B52C(v12, a2, 1, v20);
  if (v21)
  {
    v24[0] = off_100202938;
    v24[3] = v24;
    if (a6)
    {
      v13 = sub_10007B45C();
      v14 = sub_10007BEA4(v13, v20[0], a5, a6);
      sub_100084BFC(v23, v24);
      sub_100084C94(&v19, v14);
    }

    v15 = sub_10007B45C();
    v16 = sub_10007B930(v15, v20[0], a4, a3);
    sub_100084BFC(v22, v24);
    sub_100084C94(&v19, v16);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  v18 = *sub_100059674(v20);
  *exception = &off_1002260F0;
  *(exception + 8) = v18;
  exception[24] = 0;
  exception[48] = 0;
  *(exception + 7) = "Failed to get plugin instance";
}

void sub_10007CE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100084B7C(va);
  sub_100084B7C(v7 - 88);
  if (*(v6 + 39) < 0)
  {
    operator delete(*(v6 + 16));
  }

  v9 = *(v6 + 8);
  if (v9)
  {
    sub_10000E984(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10007CECC(uint64_t *a1)
{
  v1 = *a1;
  if (*v1 >= 0x60u && (v2 = *(v1 + 88)) != 0)
  {
    v3 = v2();
  }

  else
  {
    v3 = (*(v1 + 48))();
    CFRetain(v3);
  }

  v6 = v3;
  v4 = *&CFUUIDGetUUIDBytes(v3);
  sub_1000292AC(&v6);
  return v4;
}

void sub_10007CF48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000292AC(va);
  _Unwind_Resume(a1);
}

void sub_10007CF5C(uint64_t a1)
{
  v2 = (a1 + 264);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10007D000;
  v3[3] = &unk_1002015C0;
  v3[4] = a1;
  v4 = v3;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v6 = &v4;
    v5 = &v6;
    std::__call_once(v2, &v5, sub_100084330);
  }
}

uint64_t sub_10007D000(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v4 = v1;
  v5 = v2;
  return sub_10007D048(v1 + 56, &v5, sub_10007D0A4, &v4);
}

uint64_t sub_10007D048(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 200) == 1)
  {
    *(sub_100169198() + 200) = 0;
  }

  v6 = *a2;
  v7 = *a4;
  result = sub_10016912C();
  *(result + 200) = 1;
  return result;
}

uint64_t sub_10007D0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001692A8(a1 + 56, a2);
  *(a2 + 16) = a3 + 16;
  v6 = io_rings_enter(*(a1 + 104), 1, 0);
  if (v6)
  {
    v7 = v6;
    *&v9 = "DiskImagePlugin::sync_enter_and_wait(io_rings_sqe_t *, Context &)";
    *(&v9 + 1) = 36;
    v10 = 16;
    sub_10007D1A4(v11, &v9);
    sub_100001FE8(v12, "failed to enter SQE to the ring, ret code ", 42);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_100083814(v11);
    std::ios::~ios();
  }

  else
  {
    sub_1001504B4((a3 + 24), 0xFFFFFFFFFFFFFFFFLL);
    return *(a3 + 16);
  }

  return v7;
}

void sub_10007D190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10007D2CC(va);
  _Unwind_Resume(a1);
}

void *sub_10007D1A4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100084FE8(a1, a2);
  *a1 = off_100202668;
  a1[45] = &off_100202768;
  a1[46] = &off_100202790;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_100202668;
  a1[45] = off_1002026F0;
  a1[46] = off_100202718;
  return a1;
}

void sub_10007D2A8(_Unwind_Exception *a1)
{
  sub_100083814(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10007D2CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100083814(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10007D310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10016919C((a1 + 7));
  if (!v8)
  {
    return -35;
  }

  v10 = v8;
  __p = 0;
  v45 = 0;
  v46 = 0;
  v11 = *(a4 + 136);
  v39 = a3;
  v12 = *(a3 + 136);
  v38 = (*(*a1 + 24))(a1, v9);
  memset(v43, 0, sizeof(v43));
  (*(*a1 + 80))(v43, a1);
  v13 = *(v39 + 208);
  v14 = (*(a4 + 208) - v13) & ~((*(a4 + 208) - v13) >> 63);
  if (*&v43[0] && (*(v39 + 104) != 1 || !*(v39 + 48)) && v11 - v12 >= *(&v43[0] + 1) * *&v43[0] + (v14 - 1 + *&v43[0]) / *&v43[0] * *&v43[0])
  {
    v15 = *(a1[2] + 32);
    if (v15)
    {
      v16 = v15();
      v17 = v13;
      if (v16)
      {
        v17 = v13 / v16 * v16;
      }
    }

    else
    {
      v17 = *(v39 + 208);
    }

    v14 = (v14 - 1 + v13 - v17 + *&v43[0]) / *&v43[0] * *&v43[0];
    v13 = v17;
  }

  v37 = v13;
  v35 = a4;
  sub_1000302E0(&v47, v39);
  v36 = v14 / v38;
  while (!sub_10002EA4C(&v47))
  {
    sub_100014E18(v49);
    v20 = v49[7];
    v19 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v14 >= v51)
      {
        v21 = v51;
      }

      else
      {
        v21 = v14;
      }

      if (!v21)
      {
        sub_10000E984(v19);
        break;
      }
    }

    else
    {
      if (v14 >= v51)
      {
        v21 = v51;
      }

      else
      {
        v21 = v14;
      }

      if (!v21)
      {
        break;
      }
    }

    v22 = v45;
    if (v45 >= v46)
    {
      v24 = (v45 - __p) >> 4;
      v25 = v24 + 1;
      if ((v24 + 1) >> 60)
      {
        sub_100015B70();
      }

      v26 = v46 - __p;
      if ((v46 - __p) >> 3 > v25)
      {
        v25 = v26 >> 3;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFF0)
      {
        v27 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        sub_100083D14(&__p, v27);
      }

      v28 = (16 * v24);
      *v28 = v20;
      v28[1] = v21;
      v23 = 16 * v24 + 16;
      v29 = v28 - (v45 - __p);
      memcpy(v29, __p, v45 - __p);
      v30 = __p;
      __p = v29;
      v45 = v23;
      v46 = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *v45 = v20;
      *(v22 + 1) = v21;
      v23 = (v22 + 16);
    }

    v45 = v23;
    if (v19)
    {
      sub_10000E984(v19);
    }

    sub_100077790(&v47, v40);
    if (v42)
    {
      sub_10000E984(v42);
    }

    v14 -= v21;
    if (v41)
    {
      sub_10000E984(v41);
    }
  }

  if (v50)
  {
    sub_10000E984(v50);
  }

  if (v48)
  {
    sub_10000E984(v48);
  }

  v31 = __p;
  *v10 = 2;
  *(v10 + 24) = v31;
  *(v10 + 32) = v37 / v38;
  *(v10 + 40) = 0;
  *(v10 + 48) = v36;
  v32 = sub_10007D0AC(a1, v10, a2);
  v33 = v32;
  if (v32 == v36)
  {
    sub_1000302E0(&v47, v39);
    v18 = v38 * v33;
    sub_10002E6D0(&v47, v38 * v33);
    if (v50)
    {
      sub_10000E984(v50);
    }

    if (v48)
    {
      sub_10000E984(v48);
    }
  }

  else if (v32 < 0)
  {
    v18 = v32;
  }

  else
  {
    v18 = -5;
  }

  if (*(v39 + 104) == 1 && *(v39 + 48))
  {
    sub_10007D83C(v39, 0, v55);
    sub_100030DC4(v53, v55);
    v54 = v38;
    sub_100192AE0(v52);
    v52[0] = off_1001FC8A8;
    v52[3] = -1;
    v52[5] = 0;
    v52[4] = 0;
    sub_1000850B0(&v47, v53, v52, v39, v35, 0, 0);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  return v18;
}