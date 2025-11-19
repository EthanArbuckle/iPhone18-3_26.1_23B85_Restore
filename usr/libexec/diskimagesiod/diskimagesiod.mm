uint64_t sub_100001788(uint64_t a1, io_connect_t a2, uint32_t a3)
{
  v6 = sub_1000018A8(a1);
  *v6 = off_1001F5630;
  v7 = IOConnectSetNotificationPort(a2, a3, *(v6 + 8), 0);
  if (v7)
  {
    v10 = v7;
    v11 = "Can't register notification port";
    goto LABEL_6;
  }

  inserted = mach_port_insert_right(mach_task_self_, *(a1 + 8), *(a1 + 8), 0x14u);
  if (inserted)
  {
    v10 = inserted;
    v11 = "Can't get send rights";
LABEL_6:
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v13 = std::generic_category();
    exception[1] = v10;
    exception[2] = v13;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = v11;
  }

  return a1;
}

uint64_t sub_1000018A8(uint64_t a1)
{
  *a1 = &off_1001F5678;
  *(a1 + 8) = 0;
  v2 = mach_port_allocate(mach_task_self_, 1u, (a1 + 8));
  if (v2)
  {
    v4 = v2;
    exception = __cxa_allocate_exception(0x40uLL);
    v6 = sub_100001940(exception, "Can't allocate mach port", v4);
  }

  return a1;
}

uint64_t sub_100001940(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &off_1002260F0;
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  return a1;
}

uint64_t sub_1000019AC(uint64_t a1)
{
  *a1 = &off_1001F5678;
  v2 = *(a1 + 8);
  if (v2)
  {
    mach_port_mod_refs(mach_task_self_, v2, 1u, -1);
  }

  return a1;
}

uint64_t *sub_100001A28(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  return a1;
}

void sub_100001A84(uint64_t a1)
{
  sub_100002378(a1);

  operator delete();
}

void sub_100001AC0(uint64_t a1)
{
  sub_1000019AC(a1);

  operator delete();
}

void sub_100001AF8(std::exception *this)
{
  this->__vftable = &off_1002260F0;
  if (LOBYTE(this[6].__vftable) == 1 && SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_100001B64(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_100001BC8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001C24(exception, a1);
}

std::logic_error *sub_100001C24(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void sub_100001C58(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *a2;
  *(a1 + 80) = *(a2 + 2);
  *(a1 + 64) = v4;
  *(a2 + 23) = 0;
  *a2 = 0;

  sub_100001CB8(a1);
}

void sub_100001CB8(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void (__cdecl ***sub_100001DC0(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100001F2C((a1 + 1), 16);
  return a1;
}

void sub_100001F04(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100001F2C(uint64_t a1, int a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_100001CB8(a1);
  return a1;
}

void sub_100001FC0(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *sub_100001FE8(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_100002190(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100002128(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100002108);
}

uint64_t sub_100002190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        sub_100001BB0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_10000235C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100002378(uint64_t a1)
{
  *a1 = off_1001F5630;
  v2 = *(a1 + 8);
  if (v2)
  {
    mach_port_deallocate(mach_task_self_, v2);
  }

  return sub_1000019AC(a1);
}

void sub_1000024F4(id a1)
{
  v1 = *__error();
  if (sub_1000E95F0())
  {
    v2 = sub_1000E957C();
    os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v6 = 51;
    v7 = 2080;
    v8 = "[DIIOCacheDelete setupSigtermHandler]_block_invoke";
    v3 = _os_log_send_and_compose_impl();

    if (v3)
    {
      fprintf(__stderrp, "%s\n", v3);
      free(v3);
    }
  }

  else
  {
    v4 = sub_1000E957C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v6 = 51;
      v7 = 2080;
      v8 = "[DIIOCacheDelete setupSigtermHandler]_block_invoke";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%.*s: Terminating cache delete instance due to SIGTERM", buf, 0x12u);
    }
  }

  *__error() = v1;
  exit(0);
}

void sub_1000027B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000027D4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = objc_loadWeakRetained((a1 + 40));
  objc_sync_enter(v3);
  v4 = [*(a1 + 32) exitTimer];

  if (v4)
  {
    v5 = *__error();
    if (sub_1000E95F0())
    {
      v6 = sub_1000E957C();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v11 = 47;
      v12 = 2080;
      v13 = "[DIIOCacheDelete setupExitTimer:]_block_invoke";
      v7 = _os_log_send_and_compose_impl();

      if (v7)
      {
        fprintf(__stderrp, "%s\n", v7);
        free(v7);
      }
    }

    else
    {
      v8 = sub_1000E957C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v11 = 47;
        v12 = 2080;
        v13 = "[DIIOCacheDelete setupExitTimer:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%.*s: Shutting down cache delete instance", buf, 0x12u);
      }
    }

    *__error() = v5;
    exit(0);
  }

  objc_sync_exit(v3);
}

BOOL sub_10000365C(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = *__error();
  if (sub_1000E95F0())
  {
    v7 = sub_1000E957C();
    os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    *buf = 68158466;
    v12 = 50;
    v13 = 2080;
    v14 = "[DIIOCacheDelete eraseOldCacheFiles]_block_invoke";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v8 = _os_log_send_and_compose_impl();

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E957C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158466;
      v12 = 50;
      v13 = 2080;
      v14 = "[DIIOCacheDelete eraseOldCacheFiles]_block_invoke";
      v15 = 2114;
      v16 = v4;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%.*s: Failed looking up %{public}@: %{public}@", buf, 0x26u);
    }
  }

  *__error() = v6;

  return 1;
}

void sub_100003F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100003FB4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_loadWeakRetained((a1 + 32));
  objc_sync_enter(v5);
  v6 = a3;
  v7 = [v5 onPeriodicWithInfo:v6 urgency:a2];

  objc_sync_exit(v5);
  return v7;
}

uint64_t sub_100004274(void *a1)
{
  v1 = a1;
  v2 = [[DIIOCacheDelete alloc] initWithDebugServiceName:v1];

  [(DIBaseServiceDelegate *)v2 enterSandbox];
  if ([(DIIOCacheDelete *)v2 registerPeriodicCallback])
  {
    [(DIBaseServiceDelegate *)v2 startXPClistener];
    v3 = +[NSRunLoop currentRunLoop];
    [v3 run];
  }

  return 78;
}

uint64_t start()
{
  v0 = *__error();
  if (sub_1000E95F0())
  {
    v1 = sub_1000E957C();
    os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT);
    v2 = +[NSBundle mainBundle];
    [v2 executablePath];
    *buf = 68158210;
    v41 = 28;
    v42 = 2080;
    v43 = "int main(int, const char **)";
    *v45 = v44 = 2114;
    v3 = _os_log_send_and_compose_impl();

    if (v3)
    {
      fprintf(__stderrp, "%s\n", v3);
      free(v3);
    }
  }

  else
  {
    v4 = sub_1000E957C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = +[NSBundle mainBundle];
      v6 = [v5 executablePath];
      *buf = 68158210;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v44 = 2114;
      *v45 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%.*s: IO daemon path: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v0;
  v7 = +[NSProcessInfo processInfo];
  v8 = [v7 arguments];

  v9 = [v8 count];
  if (v9 >= 2)
  {
    if ([v8 count] > 2 || (objc_msgSend(v8, "objectAtIndexedSubscript:", 1), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", @"--ram"), v10, (v11 & 1) == 0))
    {
      v19 = *__error();
      if (sub_1000E95F0())
      {
LABEL_15:
        v20 = sub_1000E957C();
        os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
        *buf = 68157954;
        v41 = 28;
        v42 = 2080;
        v43 = "int main(int, const char **)";
        v21 = _os_log_send_and_compose_impl();

        if (v21)
        {
          fprintf(__stderrp, "%s\n", v21);
          free(v21);
        }

        goto LABEL_33;
      }

      v33 = sub_1000E957C();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v41 = 28;
        v42 = 2080;
        v43 = "int main(int, const char **)";
        v34 = "%.*s: Invalid arguments specified";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v34, buf, 0x12u);
      }

LABEL_32:

LABEL_33:
      *__error() = v19;
      v23 = 1;
      goto LABEL_48;
    }
  }

  if (!getenv("LaunchInstanceID"))
  {
    if (getuid())
    {
      if (v9 <= 1)
      {
        v22 = @"com.apple.diskimagesiod";
      }

      else
      {
        v22 = @"com.apple.diskimagesiod.ram";
      }

      sub_100004274(v22);
      v23 = 78;
      goto LABEL_48;
    }

    v19 = *__error();
    if (sub_1000E95F0())
    {
      goto LABEL_15;
    }

    v33 = sub_1000E957C();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v34 = "%.*s: Root daemon must be launched with an instance";
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v12 = getiopolicy_np(0, 0);
  v13 = getiopolicy_np(0, 1);
  v14 = *__error();
  if (sub_1000E95F0())
  {
    v15 = sub_1000E957C();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    v16 = geteuid();
    v17 = getpid();
    *buf = 68159234;
    v41 = 28;
    v42 = 2080;
    v43 = "int main(int, const char **)";
    v44 = 1024;
    *v45 = v16;
    *&v45[4] = 1024;
    *&v45[6] = v17;
    v46 = 1024;
    v47 = v9 > 1;
    v48 = 1024;
    v49 = v12;
    v50 = 1024;
    v51 = v13;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
      fprintf(__stderrp, "%s\n", v18);
      free(v18);
    }
  }

  else
  {
    v24 = sub_1000E957C();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = geteuid();
      v26 = getpid();
      *buf = 68159234;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v44 = 1024;
      *v45 = v25;
      *&v45[4] = 1024;
      *&v45[6] = v26;
      v46 = 1024;
      v47 = v9 > 1;
      v48 = 1024;
      v49 = v12;
      v50 = 1024;
      v51 = v13;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%.*s: IO daemon euid: %d, pid: %d, isRAM: %d, IOpolicy process=%d thread=%d", buf, 0x30u);
    }
  }

  *__error() = v14;
  v27 = [[DIIODaemonDelegate alloc] initWithIsRAM:v9 > 1];
  v28 = v27;
  if (v27)
  {
    [(DIBaseServiceDelegate *)v27 enterSandbox];
    [(DIBaseServiceDelegate *)v28 startXPClistener];
    v29 = +[NSRunLoop currentRunLoop];
    [v29 run];

    v30 = *__error();
    if (sub_1000E95F0())
    {
      v31 = sub_1000E957C();
      os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        fprintf(__stderrp, "%s\n", v32);
        free(v32);
      }
    }

    else
    {
      v37 = sub_1000E957C();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v41 = 28;
        v42 = 2080;
        v43 = "int main(int, const char **)";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%.*s: Run loop aborted", buf, 0x12u);
      }
    }

    v23 = 0;
  }

  else
  {
    v30 = *__error();
    if (sub_1000E95F0())
    {
      v35 = sub_1000E957C();
      os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
      *buf = 68157954;
      v41 = 28;
      v42 = 2080;
      v43 = "int main(int, const char **)";
      v36 = _os_log_send_and_compose_impl();

      if (v36)
      {
        fprintf(__stderrp, "%s\n", v36);
        free(v36);
      }
    }

    else
    {
      v38 = sub_1000E957C();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v41 = 28;
        v42 = 2080;
        v43 = "int main(int, const char **)";
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%.*s: IO daemon initialization failed. Quitting.", buf, 0x12u);
      }
    }

    v23 = 1;
  }

  *__error() = v30;

LABEL_48:
  return v23;
}

void sub_1000056A8(uint64_t a1, uint64_t a2)
{
  v9 = [[DIIOIterator alloc] initWithIOIterator:a2 retain:1];
  v3 = [[DIIOObject alloc] initWithIteratorNext:v9];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    do
    {
      v6 = [(DIIOObject *)v4 newIteratorWithOptions:3 error:0];
      if (v6)
      {
        while (1)
        {
          v7 = v5;
          v5 = [[DIIOObject alloc] initWithIteratorNext:v6];

          if (!v5 || IOObjectConformsTo([(DIIOObject *)v5 ioObj], "IOMedia"))
          {
            break;
          }

          if (IOObjectIsEqualTo([(DIIOObject *)v5 ioObj], *(a1 + 8)))
          {
            **a1 = 1;

            goto LABEL_9;
          }
        }
      }

      v8 = [[DIIOObject alloc] initWithIteratorNext:v9];
      v4 = v8;
    }

    while (v8);
LABEL_9:
  }
}

void sub_100006324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26)
{
  objc_sync_exit(v26);
  objc_destroyWeak((v28 + 40));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_100006398(uint64_t a1)
{
  v2 = *__error();
  if (sub_1000E95F0())
  {
    v3 = sub_1000E957C();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v10 = 54;
    v11 = 2080;
    v12 = "[DIIOClientDelegate setupNewConnection:]_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (v4)
    {
      fprintf(__stderrp, "%s\n", v4);
      free(v4);
    }
  }

  else
  {
    v5 = sub_1000E957C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v10 = 54;
      v11 = 2080;
      v12 = "[DIIOClientDelegate setupNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an invalidation handler for an attached client", buf, 0x12u);
    }
  }

  *__error() = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained weakDaemon];
  v8 = objc_loadWeakRetained((a1 + 40));
  [v7 onClientInvalidateWithConnection:v8];
}

void sub_100006568(uint64_t a1)
{
  v2 = *__error();
  if (sub_1000E95F0())
  {
    v3 = sub_1000E957C();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v10 = 54;
    v11 = 2080;
    v12 = "[DIIOClientDelegate setupNewConnection:]_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (v4)
    {
      fprintf(__stderrp, "%s\n", v4);
      free(v4);
    }
  }

  else
  {
    v5 = sub_1000E957C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v10 = 54;
      v11 = 2080;
      v12 = "[DIIOClientDelegate setupNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an interruption handler for an attached client", buf, 0x12u);
    }
  }

  *__error() = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained weakDaemon];
  v8 = objc_loadWeakRetained((a1 + 40));
  [v7 onClientInvalidateWithConnection:v8];
}

void sub_1000069D0(id a1)
{
  v1 = *__error();
  if (sub_1000E95F0())
  {
    v2 = sub_1000E957C();
    os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    v6 = 58;
    v7 = 2080;
    *buf = 68158210;
    v8 = "[DIIODaemonDelegate setupExitDaemonWatchdog]_block_invoke";
    v9 = 1024;
    v10 = 8;
    v3 = _os_log_send_and_compose_impl();

    if (v3)
    {
      fprintf(__stderrp, "%s\n", v3);
      free(v3);
    }
  }

  else
  {
    v4 = sub_1000E957C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 68158210;
      v6 = 58;
      v7 = 2080;
      v8 = "[DIIODaemonDelegate setupExitDaemonWatchdog]_block_invoke";
      v9 = 1024;
      v10 = 8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%.*s: Exit daemon timeout (%d sec) expired", buf, 0x18u);
    }
  }

  *__error() = v1;
  exit(0);
}

id sub_100006C18(uint64_t a1)
{
  v2 = *__error();
  if (sub_1000E95F0())
  {
    v3 = sub_1000E957C();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v8 = 54;
    v9 = 2080;
    v10 = "[DIIODaemonDelegate setupSigtermHandler]_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (v4)
    {
      fprintf(__stderrp, "%s\n", v4);
      free(v4);
    }
  }

  else
  {
    v5 = sub_1000E957C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v8 = 54;
      v9 = 2080;
      v10 = "[DIIODaemonDelegate setupSigtermHandler]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%.*s: Terminating due to SIGTERM", buf, 0x12u);
    }
  }

  *__error() = v2;
  return [*(a1 + 32) exitWithUnmount];
}

void sub_100006FFC(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_sync_enter(v3);
  v4 = [[DIIOIterator alloc] initWithIOIterator:a2 retain:1];
  v5 = 0;
  while (1)
  {
    v6 = [[DIIOObject alloc] initWithIteratorNext:v4];

    if (!v6)
    {
      break;
    }

    v7 = [(DIIOObject *)v6 registryEntryIDWithError:0];
    v8 = [v3 deviceHandle];
    LODWORD(v7) = v7 == [v8 regEntryID];

    v5 = v6;
    if (v7)
    {
      v9 = *__error();
      if (sub_1000E95F0())
      {
        v10 = sub_1000E957C();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        *buf = 68157954;
        v14 = 47;
        v15 = 2080;
        v16 = "void terminationCallback(void *, io_iterator_t)";
        v11 = _os_log_send_and_compose_impl();

        if (v11)
        {
          fprintf(__stderrp, "%s\n", v11);
          free(v11);
        }
      }

      else
      {
        v12 = sub_1000E957C();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v14 = 47;
          v15 = 2080;
          v16 = "void terminationCallback(void *, io_iterator_t)";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Reached termination callback, stopping the daemon.", buf, 0x12u);
        }
      }

      *__error() = v9;

      v5 = 0;
      [v3 exitDaemon];
    }
  }

  objc_sync_exit(v3);
}

void sub_100007258(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_100007894(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

intptr_t sub_100008960(uint64_t a1)
{
  [*(a1 + 32) unmountAll];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void sub_100009878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint8_t buf, int a22, __int16 a23, uint64_t a24, __int16 a25, uint64_t a26, __int16 a27, int a28)
{
  objc_destroyWeak((v31 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009C0C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runIOmanager];
}

void sub_10000A054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_10000A0C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    objc_sync_enter(v4);
    v5 = [v4 deviceHandle];

    if (v5)
    {
      v6 = [DIError errorWithEnumValue:155 verboseInfo:@"A second controller XPC service attempted to create a new device"];
      (*(*(a1 + 40) + 16))();
      objc_sync_exit(v4);
    }

    else
    {
      v7 = *(a1 + 32);
      v12 = 0;
      v8 = [v4 tryAttachWithParams:v7 error:&v12];
      v9 = v12;
      v10 = *(a1 + 40);
      if (v8)
      {
        v11 = [v4 deviceHandle];
        (*(v10 + 16))(v10, v11, 0);
      }

      else
      {
        (*(v10 + 16))(*(a1 + 40), 0, v9);
        [v4 exitDaemon];
      }

      objc_sync_exit(v4);
    }
  }
}

void sub_10000A224(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v8 = objc_begin_catch(a1);
    v9 = [v8 reason];
    [DIError errorWithEnumValue:150 verboseInfo:v9];
    objc_claimAutoreleasedReturnValue();

    (*(*(v4 + 40) + 16))();
    [v2 exitDaemon];

    objc_end_catch();
    JUMPOUT(0x10000A1F4);
  }

  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_10000AADC(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_10000B394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_sync_exit(v26);

  _Unwind_Resume(a1);
}

void sub_10000B46C(uint64_t a1)
{
  v2 = *__error();
  if (sub_1000E95F0())
  {
    v3 = sub_1000E957C();
    os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    *buf = 68157954;
    v9 = 54;
    v10 = 2080;
    v11 = "[DIIODaemonDelegate setupNewConnection:]_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (v4)
    {
      fprintf(__stderrp, "%s\n", v4);
      free(v4);
    }
  }

  else
  {
    v5 = sub_1000E957C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 68157954;
      v9 = 54;
      v10 = 2080;
      v11 = "[DIIODaemonDelegate setupNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%.*s: Reached an interruption handler for an attached controller service", buf, 0x12u);
    }
  }

  *__error() = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onClientInvalidateWithConnection:v7];
}

void sub_10000B62C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_10000B64C(uint64_t a1)
{
  v2 = *__error();
  if (sub_1000E95F0())
  {
    v3 = sub_1000E957C();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    v9 = 54;
    v10 = 2080;
    v11 = "[DIIODaemonDelegate setupNewConnection:]_block_invoke";
    v4 = _os_log_send_and_compose_impl();

    if (v4)
    {
      fprintf(__stderrp, "%s\n", v4);
      free(v4);
    }
  }

  else
  {
    v5 = sub_1000E957C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v9 = 54;
      v10 = 2080;
      v11 = "[DIIODaemonDelegate setupNewConnection:]_block_invoke";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%.*s: Reached an invalidation handler for an attached controller service", buf, 0x12u);
    }
  }

  *__error() = v2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onClientInvalidateWithConnection:v7];
}

void sub_10000B80C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

uint64_t sub_10000BE30(const void **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *v2;
  if (v4)
  {
    v5 = v4;
    result = sub_10000EB34(v4[2], 0, v4[3]);
    if (v5[3] != result)
    {
      v7 = *(result + 24);
      v8 = **v7;
      if (v9)
      {
        sub_10000BFC8(v9);
      }

      __cxa_bad_cast();
    }
  }

  else
  {
    v10 = *v2;
    if (result)
    {
      sub_10000BFC8(result);
    }
  }

  return result;
}

void sub_10000C178(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  sub_10000E90C(va2);
  sub_10000E90C(va);
  sub_10000E90C(va1);
  sub_10000EAD0(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_10000C1C4(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 56) = 0u;
  byte_100234958 = 1;
  v6 = [v5 diskImageParamsXPC];
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;

  v8 = *(a1 + 40);
  v9 = [v5 onDiskCache];
  v10 = [v5 shadowChain];
  v11 = [v10 shouldValidate];
  if (v8)
  {
    [v8 createDiskImageWithCache:v9 shadowValidation:v11];
  }

  else
  {
    v21 = 0;
  }

  v12 = [*(a1 + 40) backendXPC];
  v13 = v12;
  if (v12)
  {
    [v12 backend];
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  sub_10000C844(&v22, &v20);
  if (v23)
  {
    sub_10000E984(v23);
  }

  if (v20 && (v14 = v20[5], *(v14 + 7)))
  {
    v15 = *(v14 + 6);
  }

  else
  {
    v16 = [v5 inputStatFS];
    v15 = [v16 blockSize];
  }

  if ((*(*v21 + 40))(v21))
  {
    v17 = [v5 inputStatFS];
    if (v17)
    {
      v18 = (*(*v21 + 24))(v21) > v15;

      if (v18)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        sub_100001DC0(&v22);
        sub_100001FE8(&v22, "The underlying file system doesn't support writable images with ", 64);
        (*(*v21 + 24))(v21);
        std::ostream::operator<<();
        sub_100001FE8(&v22, "-bytes block size", 17);
        sub_10000EBDC(exception, &v22, 0x13u);
      }
    }
  }

  sub_10000BE30(&v21);
  sub_10000C9E8(a1);
  sub_10000CBE8(a1, v5, v21);
}

void sub_10000C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void **a14)
{
  sub_10000C8C8(&a14);
  if (a12)
  {
    sub_10000E984(a12);
  }

  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  sub_100015888(v18, 0);
  sub_10001590C(v16 + 80);
  a14 = a9;
  sub_10001598C(&a14);

  if (*(v16 + 32) == 1)
  {
    sub_100001A7C(v17);
  }

  sub_100015A4C(v15, 0);
  v21 = *v19;
  *v19 = 0;
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  _Unwind_Resume(a1);
}

char **sub_10000C844@<X0>(char ***a1@<X0>, char ***a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v6 = v2[1];
    *a2 = result;
    a2[1] = v6;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_10000C8C8(uint64_t a1)
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

uint64_t sub_10000C9E8(io_service_t *a1)
{
  result = IOServiceOpen(*a1, mach_task_self_, 0, a1 + 1);
  if (result)
  {
    v2 = result;
    v3 = *__error();
    if (sub_1000E95F0())
    {
      v4 = sub_1000E957C();
      os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      *buf = 68158210;
      v10 = 31;
      v11 = 2080;
      v12 = "void DIIOManager::setupDriver()";
      v13 = 1024;
      v14 = v2;
      v5 = _os_log_send_and_compose_impl();

      if (v5)
      {
        fprintf(__stderrp, "%s\n", v5);
        free(v5);
      }
    }

    else
    {
      v6 = sub_1000E957C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158210;
        v10 = 31;
        v11 = 2080;
        v12 = "void DIIOManager::setupDriver()";
        v13 = 1024;
        v14 = v2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%.*s: IOServiceOpen returned %d", buf, 0x18u);
      }
    }

    *__error() = v3;
    exception = __cxa_allocate_exception(0x40uLL);
    v8 = sub_100001940(exception, "IOServiceOpen failed", 0x9Bu);
  }

  return result;
}

void sub_10000CBE8(uint64_t a1, void *a2, uint64_t a3)
{
  a2;
  sub_10012DC98(a3);
  v5 = sub_10012DD0C(a3);
  (*(*a3 + 80))(lpsrc, a3);
  v6 = lpsrc[1];
  v7 = sub_100043DBC();
  v8 = v7[3];
  v9 = sub_100043CC4();
  if (!v9)
  {
    v10 = *(v7 + 2);
    if (v10 == 1)
    {
      v9 = (*v7)();
    }

    else
    {
      if (v10)
      {
        sub_100015D74();
      }

      v9 = *v7;
    }
  }

  v11 = v8 / (v5 + v5 * v6);
  if (v9 < v11)
  {
    LODWORD(v11) = v9;
  }

  if (v11 >= 0x30)
  {
    LODWORD(v11) = 48;
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  outputCnt = 1;
  input = v11;
  output = 0;
  v12 = IOConnectCallMethod(*(a1 + 4), 2u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  if (!v12)
  {
    sub_10000E364(a1, output, lpsrc);
    sub_100015DC4((a1 + 48));
    *(a1 + 48) = *lpsrc;
    *(a1 + 64) = lpsrc[2];
    memset(lpsrc, 0, sizeof(lpsrc));
    *buf = lpsrc;
    sub_10001598C(buf);
    operator new();
  }

  v13 = *__error();
  if (sub_1000E95F0())
  {
    *buf = 0;
    v14 = sub_1000E957C();
    os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    lpsrc[0] = 0x4C04100302;
    LOWORD(lpsrc[1]) = 2080;
    *(&lpsrc[1] + 2) = "void DIIOManager::driverConnect(DIAttachParams *__strong, const DiskImage &)";
    WORD1(lpsrc[2]) = 1024;
    HIDWORD(lpsrc[2]) = v12;
    v15 = _os_log_send_and_compose_impl();

    if (v15)
    {
      fprintf(__stderrp, "%s\n", v15);
      free(v15);
    }
  }

  else
  {
    v16 = sub_1000E957C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      lpsrc[0] = 0x4C04100302;
      LOWORD(lpsrc[1]) = 2080;
      *(&lpsrc[1] + 2) = "void DIIOManager::driverConnect(DIAttachParams *__strong, const DiskImage &)";
      WORD1(lpsrc[2]) = 1024;
      HIDWORD(lpsrc[2]) = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%.*s: IOAllocatePortsArrayCallMethod returned %d", lpsrc, 0x18u);
    }
  }

  *__error() = v13;
  exception = __cxa_allocate_exception(0x40uLL);
  *exception = &off_1002260F0;
  v18 = std::generic_category();
  exception[1] = v12;
  exception[2] = v18;
  *(exception + 24) = 0;
  *(exception + 48) = 0;
  exception[7] = "Can't allocate ports array in driver";
}

void sub_10000DC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10000C8C8(va);

  _Unwind_Resume(a1);
}

void sub_10000DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10000C8C8(va);
  __cxa_free_exception(v10);

  JUMPOUT(0x10000DF5CLL);
}

void sub_10000DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  __cxa_end_catch();

  JUMPOUT(0x10000DF5CLL);
}

void sub_10000DF10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_100001A14(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10000DF64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    [v4 lockableResources];
    v5 = v10;
    v6 = v11;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v7 = 0uLL;
  v8 = 0;
  sub_100015AAC(&v7, v5, v6, (v6 - v5) >> 4);
  v9 = a1 + 112;
  *(a2 + 24) = 0;
  operator new();
}

void sub_10000E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v13 - 24) = &a9;
  sub_100015CD4((v13 - 24));
  *(v13 - 24) = &a13;
  sub_100015CD4((v13 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10000E084(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(a1 + 40);
  *(a1 + 40) = 0;

  v4 = *__error();
  if (sub_1000E95F0())
  {
    v5 = sub_1000E957C();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    *buf = 68157954;
    *&buf[4] = 27;
    v11 = 2080;
    v12 = "DIIOManager::~DIIOManager()";
    v6 = _os_log_send_and_compose_impl();

    if (v6)
    {
      fprintf(__stderrp, "%s\n", v6);
      free(v6);
    }
  }

  else
  {
    v7 = sub_1000E957C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 27;
      v11 = 2080;
      v12 = "DIIOManager::~DIIOManager()";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%.*s: Closing IO user client", buf, 0x12u);
    }
  }

  *__error() = v4;
  IOServiceClose(*(a1 + 4));
  if (*a1)
  {
    IOObjectRelease(*a1);
    *a1 = 0;
  }

  sub_100015888((a1 + 72), 0);
  sub_10001590C(a1 + 80);
  *buf = a1 + 48;
  sub_10001598C(buf);

  if (*(a1 + 32) == 1)
  {
    sub_100001A7C((a1 + 24));
  }

  sub_100015A4C((a1 + 16), 0);
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  return a1;
}

void sub_10000E2F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100001A14(a1);
}

uint64_t *sub_10000E300(uint64_t *result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    result = sub_100001A7C(result + 3);
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t sub_10000E364@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  result = sub_10000E4B0(a3, a2);
  if (a2)
  {
    v7 = 0;
    do
    {
      sub_100001A10(&v10, *(a1 + 4), v7);
      v8 = a3[1];
      if (v8 >= a3[2])
      {
        v9 = sub_1000162E8(a3, &v10);
      }

      else
      {
        sub_1000018A8(a3[1]);
        *v8 = off_1001F5630;
        *(v8 + 8) = v11;
        v11 = 0;
        v9 = v8 + 16;
      }

      a3[1] = v9;
      result = sub_100002378(&v10);
      ++v7;
    }

    while (a2 != v7);
  }

  return result;
}

uint64_t *sub_10000E46C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  sub_100015888(a1, v4);
  sub_10001603C((a1 + 1), (a2 + 1));
  return a1;
}

void *sub_10000E4B0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_100016144(result, a2);
    }

    sub_100015B70();
  }

  return result;
}

void sub_10000E558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001627C(va);
  _Unwind_Resume(a1);
}

BOOL sub_10000E56C(uint64_t a1, void *a2, uint64_t *a3)
{
  outputCnt = 2;
  v5 = IOConnectCallScalarMethod(*(a1 + 4), 3u, 0, 0, output, &outputCnt);
  if (v5)
  {
    v6 = *__error();
    if (sub_1000E95F0())
    {
      v7 = sub_1000E957C();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v14 = 56;
      v15 = 2080;
      v16 = "BOOL DIIOManager::fetchCacheStat(uint64_t &, uint64_t &)";
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        fprintf(__stderrp, "%s\n", v8);
        free(v8);
      }
    }

    else
    {
      v10 = sub_1000E957C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v14 = 56;
        v15 = 2080;
        v16 = "BOOL DIIOManager::fetchCacheStat(uint64_t &, uint64_t &)";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: fetch failed", buf, 0x12u);
      }
    }

    *__error() = v6;
  }

  else
  {
    v9 = output[1];
    *a2 = output[0];
    *a3 = v9;
  }

  return v5 == 0;
}

BOOL sub_10000E748(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 1924;
  v2 = IOConnectCallStructMethod(*(a1 + 4), 4u, 0, 0, outputStruct, &outputStructCnt);
  if (v2)
  {
    v3 = *__error();
    if (sub_1000E95F0())
    {
      v4 = sub_1000E957C();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      *buf = 68157954;
      v10 = 59;
      v11 = 2080;
      v12 = "BOOL DIIOManager::fetchRequestsStat(DIRequestsStatsArray *)";
      v5 = _os_log_send_and_compose_impl();

      if (v5)
      {
        fprintf(__stderrp, "%s\n", v5);
        free(v5);
      }
    }

    else
    {
      v6 = sub_1000E957C();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v10 = 59;
        v11 = 2080;
        v12 = "BOOL DIIOManager::fetchRequestsStat(DIRequestsStatsArray *)";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%.*s: fetch failed", buf, 0x12u);
      }
    }

    *__error() = v3;
  }

  return v2 == 0;
}

uint64_t sub_10000E90C(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_10000E950((a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_10000E984(v2);
  }

  return a1;
}

const void **sub_10000E950(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_10000E984(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_10000E9F0(uint64_t a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000EA5C((a1 + 16), (a2 + 2));
  *(a1 + 32) = a2[4];
  return a1;
}

void sub_10000EA44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10000EA5C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[8] = 0;
  if (*(a2 + 8) == 1)
  {
    *a1 = 0;
    v3 = *a2;
    *a1 = *a2;
    if (v3)
    {
      CFRetain(v3);
    }

    a1[8] = 1;
  }

  return a1;
}

void sub_10000EAB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    sub_10000E950(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000EAD0(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    sub_10000E950((a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_10000E984(v2);
  }

  if (*(a1 + 24) == 1)
  {
    sub_10000E950((a1 + 16));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

uint64_t sub_10000EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a3)
  {
    while (1)
    {
      v5 = *(v3 + 24);
      v6 = **v5;
      {
        break;
      }

      v3 += 48;
      if (v3 == a3)
      {
        return a3;
      }
    }
  }

  return v3;
}

uint64_t sub_10000EBDC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a1 = &off_1002260F0;
  v6 = std::generic_category();
  *(a1 + 8) = a3;
  *(a1 + 16) = v6;
  sub_10000EC78(a2, &v8);
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = 1;
  return a1;
}

const void *sub_10000EC78@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100001B64(a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void sub_10000ED20()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void *sub_10000ED54(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = off_1001F5878;
  a1[1] = v4;
  sub_10000EFD8((a1 + 2), a3);
  return a1;
}

void sub_10000EDA4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    sub_100198088(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000EE34(void *a1)
{
  *a1 = off_1001F5878;
  sub_10001641C((a1 + 2));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  return a1;
}

void sub_10000EEA8(void *a1)
{
  *a1 = off_1001F5878;
  sub_10001641C((a1 + 2));
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  operator delete();
}

uint64_t sub_10000EF4C(uint64_t a1)
{
  (*(**(a1 + 8) + 128))(*(a1 + 8));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*result + 48);

    return v3();
  }

  return result;
}

uint64_t sub_10000EFD8(uint64_t a1, uint64_t a2)
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

void sub_10000F070(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1001F58E0;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 144))(a2);
  sub_10000F954(a1 + 4);
}

void sub_10000F0EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    sub_1001980AC(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10000F108(void *a1)
{
  *a1 = off_1001F58E0;
  v2 = a1[5];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  return a1;
}

void sub_10000F184(void *a1)
{
  *a1 = off_1001F58E0;
  v2 = a1[5];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[3];
  a1[3] = 0;
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete();
}

uint64_t sub_10000F220(uint64_t a1, uint64_t a2)
{
  if (sub_1000E9608())
  {
    *&v27 = "int CommandDispatcherImpl::CommandDispatcherContextImpl::execute(Command &)";
    *(&v27 + 1) = 64;
    v28 = 2;
    sub_10000FAAC(v37, &v27);
    v4 = v39[0];
    *(&v39[1] + *(v39[0] - 24)) = *(&v39[1] + *(v39[0] - 24)) & 0xFFFFFFB5 | 8;
    *(&v39[1] + *(v4 - 24)) |= 0x200u;
    sub_100001FE8(v39, "buffer[0]=[ptr=", 15);
    v5 = *(a2 + 24);
    std::ostream::operator<<();
    sub_100001FE8(v39, ", size=", 7);
    v6 = *(a2 + 32);
    std::ostream::operator<<();
    sub_100001FE8(v39, "], cmd=", 7);
    sub_10004F660(v39, a2);
    std::ostream::~ostream();
    sub_100010364(v37);
    std::ios::~ios();
  }

  v7 = *(a2 + 16);
  v8 = 0xFFFFFFFFLL;
  if (v7 <= 3)
  {
    if (v7 < 2)
    {
      v36[0] = a2;
      v36[1] = a1 + 32;
      sub_100012A44(v37, (a2 + 24), v36, (a2 + 24 + 16 * *(a2 + 18)), v36, *a2, *(a2 + 8), 0);
      v9 = *(a1 + 24);
      if (*(a2 + 16))
      {
        sub_10002E310(v38, &v27);
        sub_10002DF68(v38, &v33);
        v10 = sub_10000FEB4(v9);
      }

      else
      {
        sub_10002E310(v38, &v27);
        sub_10002DF68(v38, &v33);
        v10 = sub_10000FDE0(v9);
      }

      v8 = v10;
      v13 = v11;
      if (v35)
      {
        sub_10000E984(v35);
      }

      if (*(&v33 + 1))
      {
        sub_10000E984(*(&v33 + 1));
      }

      if (v30)
      {
        sub_10000E984(v30);
      }

      if (*(&v27 + 1))
      {
        sub_10000E984(*(&v27 + 1));
      }

      if (v8 < 0 && v8)
      {
        *&v33 = "int CommandDispatcherImpl::CommandDispatcherContextImpl::execute(Command &)";
        *(&v33 + 1) = 64;
        v34 = 16;
        sub_10000FFC4(&v27, &v33);
        sub_100001FE8(v32, "IO returned an error for command ", 33);
        std::ostream::operator<<();
        sub_1000100EC(&v27);
      }

      else
      {
        sub_10002DF68(v38, &v33);
        sub_10002E310(v38, &v27);
        for (i = 0; a2 + i + 24 < a2 + 24 + 16 * *(a2 + 18); i += 16)
        {
          sub_100014E18(&v29);
          v15 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            *(a2 + i + 32) = v31;
            sub_10000E984(v15);
          }

          else
          {
            *(a2 + i + 32) = v31;
          }

          sub_10002E834(&v27);
        }

        if (v30)
        {
          sub_10000E984(v30);
        }

        if (*(&v27 + 1))
        {
          sub_10000E984(*(&v27 + 1));
        }

        v16 = sub_10002E214(v38);
        v17 = *a2;
        if (v41 >= *a2 + v16 - v40)
        {
          v18 = *a2 + v16 - v40;
        }

        else
        {
          v18 = v41;
        }

        if (v13 > v17 || v18 < *(a2 + 8))
        {
          *&v25 = "int CommandDispatcherImpl::CommandDispatcherContextImpl::execute(Command &)";
          *(&v25 + 1) = 64;
          v26 = 16;
          sub_100010130(&v27, &v25);
          sub_100001FE8(v32, "Can't fulfill kernel's request. command: ", 41);
          sub_10004F660(v32, a2);
          v21 = v32[0];
          *(&v32[1] + *(v32[0] - 24)) = *(&v32[1] + *(v32[0] - 24)) & 0xFFFFFFB5 | 8;
          sub_100014E84((v32 + *(v21 - 24)), 0x30u);
          v22 = v32[0];
          *(&v32[3] + *(v32[0] - 24)) = 2;
          *(&v32[1] + *(v22 - 24)) |= 0x200u;
          sub_100001FE8(v32, " io_start_offset: ", 18);
          std::ostream::operator<<();
          v23 = v32[0];
          *(&v32[1] + *(v32[0] - 24)) = *(&v32[1] + *(v32[0] - 24)) & 0xFFFFFFB5 | 2;
          *(&v32[3] + *(v23 - 24)) = 0;
          *(&v32[1] + *(v23 - 24)) &= ~0x200u;
          sub_100001FE8(v32, " io_size: ", 10);
          v24 = *a2;
          v19 = v18 - v13;
          std::ostream::operator<<();
          sub_100001FE8(v32, " num_buffers: ", 14);
          std::ostream::operator<<();
          sub_100010258(&v27);
          v17 = *a2;
        }

        else
        {
          v19 = v18 - v13;
        }

        *a2 = v13;
        *(a2 + 8) = v17 + v19;
        *(a2 + 18) = i >> 4;
        if (v35)
        {
          sub_10000E984(v35);
        }

        if (*(&v33 + 1))
        {
          sub_10000E984(*(&v33 + 1));
        }

        v8 = 0;
      }

      sub_1000157A4(v37);
      return v8;
    }

    if (v7 != 3)
    {
      return v8;
    }

    return sub_10000FC18(*(a1 + 24));
  }

  switch(v7)
  {
    case 4u:
      return sub_10000FC18(*(a1 + 24));
    case 5u:
      (*(**(a1 + 16) + 40))(*(a1 + 16));
      return 0;
    case 6u:
      return sub_10000FD04(a1, a2);
  }

  return v8;
}

void sub_10000F894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100010258(va);
  sub_10000FF88(&STACK[0x228]);
  sub_1000157A4(&STACK[0x318]);
  _Unwind_Resume(a1);
}

void sub_10000F9DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10000FA18(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001F5970))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10000FA58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_10000FAAC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10001029C(a1, a2);
  *a1 = off_1001F5998;
  a1[45] = &off_1001F5A98;
  a1[46] = &off_1001F5AC0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F5998;
  a1[45] = off_1001F5A20;
  a1[46] = off_1001F5A48;
  return a1;
}

void sub_10000FBB0(_Unwind_Exception *a1)
{
  sub_100010364(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10000FBD4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100010364(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10000FC18(void *a1)
{
  if (*(a1[1] + 8))
  {
    if (sub_1000E9608())
    {
      *&v3 = "DiskImage::Context::flush(di_flush_mode)";
      *(&v3 + 1) = 25;
      v4 = 2;
      sub_100010BC4(v5, &v3);
      sub_100001FE8(v6, "Disk image is terminated, skipping flush", 40);
      std::ostream::~ostream();
      sub_100010DF8(v5);
      std::ios::~ios();
    }

    return 4294967290;
  }

  else
  {
    v2 = *(*a1 + 24);

    return v2();
  }
}

void sub_10000FCF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100010CEC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FD04(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a2 + 8) >> 4;
  if (sub_1000E9608())
  {
    *&v6 = "CommandDispatcherImpl::CommandDispatcherContextImpl::unmap(const Command &)";
    *(&v6 + 1) = 58;
    v7 = 2;
    sub_1000115A0(v8, &v6);
    sub_100001FE8(v9, "Num extents: ", 13);
    std::ostream::operator<<();
    std::ostream::~ostream();
    sub_1000118C0(v8);
    std::ios::~ios();
  }

  return sub_10001170C(*(a1 + 24));
}

void sub_10000FDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000116C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FDE0(uint64_t a1)
{
  if ((*(*(a1 + 8) + 8) & 1) == 0)
  {
    return (**a1)(a1);
  }

  if (sub_1000E9608())
  {
    *&v2 = "DiskImage::Context::read(const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v2 + 1) = 24;
    v3 = 2;
    sub_1000131F0(v4, &v2);
    sub_100001FE8(v5, "Disk image is terminated, skipping read", 39);
    std::ostream::~ostream();
    sub_100013424(v4);
    std::ios::~ios();
  }

  return -6;
}

void sub_10000FEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100013318(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FEB4(void *a1)
{
  if ((*(a1[1] + 8) & 1) == 0)
  {
    return (*(*a1 + 8))(a1);
  }

  if (sub_1000E9608())
  {
    *&v2 = "DiskImage::Context::write(const sg_vec::iterator &, const sg_vec::iterator &)";
    *(&v2 + 1) = 25;
    v3 = 2;
    sub_100013BCC(v4, &v2);
    sub_100001FE8(v5, "Disk image is terminated, skipping write", 40);
    std::ostream::~ostream();
    sub_100013E00(v4);
    std::ios::~ios();
  }

  return -6;
}

void sub_10000FF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100013CF4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FF88(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_10000E984(v3);
  }

  return a1;
}

void *sub_10000FFC4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000145A8(a1, a2);
  *a1 = off_1001F6658;
  a1[45] = &off_1001F6758;
  a1[46] = &off_1001F6780;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F6658;
  a1[45] = off_1001F66E0;
  a1[46] = off_1001F6708;
  return a1;
}

void sub_1000100C8(_Unwind_Exception *a1)
{
  sub_100014670(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000100EC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100014670(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100010130(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100014F34(a1, a2);
  *a1 = off_1001F6878;
  a1[45] = &off_1001F6978;
  a1[46] = &off_1001F69A0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F6878;
  a1[45] = off_1001F6900;
  a1[46] = off_1001F6928;
  return a1;
}

void sub_100010234(_Unwind_Exception *a1)
{
  sub_100014FFC(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100010258(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100014FFC(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10001029C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F5B30;
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

void sub_10001034C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100010364(uint64_t a1)
{
  *a1 = off_1001F5B30;
  sub_1000107A4(a1);
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

void sub_1000104D0(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100010364(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100010538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100010574(_BYTE *a1, int a2)
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

uint64_t sub_1000105E0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100010364(v1);

  return std::ios::~ios();
}

void sub_10001062C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100010364(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100010690(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100010364(v1);

  return std::ios::~ios();
}

void sub_1000106F0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100010364(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10001076C(uint64_t a1)
{
  sub_100010364(a1);

  operator delete();
}

uint64_t sub_1000107A4(uint64_t a1)
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
        sub_100010918((a1 + 72), __p);
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

void sub_1000108F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100010918(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 70;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 70;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

_BYTE *sub_100010B0C(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001BB0();
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

void *sub_100010BC4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100010D30(a1, a2);
  *a1 = off_1001F5BB8;
  a1[45] = &off_1001F5CB8;
  a1[46] = &off_1001F5CE0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F5BB8;
  a1[45] = off_1001F5C40;
  a1[46] = off_1001F5C68;
  return a1;
}

void sub_100010CC8(_Unwind_Exception *a1)
{
  sub_100010DF8(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100010CEC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100010DF8(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100010D30(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F5D50;
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

void sub_100010DE0(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100010DF8(uint64_t a1)
{
  *a1 = off_1001F5D50;
  sub_100011238(a1);
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

void sub_100010F64(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100010DF8(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100010FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100011008(_BYTE *a1, int a2)
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

uint64_t sub_100011074(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100010DF8(v1);

  return std::ios::~ios();
}

void sub_1000110C0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100010DF8(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100011124(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100010DF8(v1);

  return std::ios::~ios();
}

void sub_100011184(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100010DF8(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100011200(uint64_t a1)
{
  sub_100010DF8(a1);

  operator delete();
}

uint64_t sub_100011238(uint64_t a1)
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
        sub_1000113AC((a1 + 72), __p);
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

void sub_100011384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000113AC(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 191;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 191;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000115A0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000117F8(a1, a2);
  *a1 = off_1001F5DD8;
  a1[45] = &off_1001F5ED8;
  a1[46] = &off_1001F5F00;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F5DD8;
  a1[45] = off_1001F5E60;
  a1[46] = off_1001F5E88;
  return a1;
}

void sub_1000116A4(_Unwind_Exception *a1)
{
  sub_1000118C0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000116C8(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000118C0(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10001170C(void *a1)
{
  if (*(a1[1] + 8))
  {
    if (sub_1000E9608())
    {
      *&v3 = "DiskImage::Context::unmap(const unmap_extent_t *, size_t)";
      *(&v3 + 1) = 25;
      v4 = 2;
      sub_100012068(v5, &v3);
      sub_100001FE8(v6, "Disk image is terminated, skipping unmap", 40);
      std::ostream::~ostream();
      sub_10001229C(v5);
      std::ios::~ios();
    }

    return 4294967290;
  }

  else
  {
    v2 = *(*a1 + 16);

    return v2();
  }
}

void sub_1000117E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100012190(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000117F8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F5F70;
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

void sub_1000118A8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000118C0(uint64_t a1)
{
  *a1 = off_1001F5F70;
  sub_100011D00(a1);
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

void sub_100011A2C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000118C0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100011A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100011AD0(_BYTE *a1, int a2)
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

uint64_t sub_100011B3C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000118C0(v1);

  return std::ios::~ios();
}

void sub_100011B88(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000118C0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100011BEC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000118C0(v1);

  return std::ios::~ios();
}

void sub_100011C4C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000118C0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100011CC8(uint64_t a1)
{
  sub_1000118C0(a1);

  operator delete();
}

uint64_t sub_100011D00(uint64_t a1)
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
        sub_100011E74((a1 + 72), __p);
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

void sub_100011E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100011E74(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 157;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 157;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100012068(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_1000121D4(a1, a2);
  *a1 = off_1001F5FF8;
  a1[45] = &off_1001F60F8;
  a1[46] = &off_1001F6120;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F5FF8;
  a1[45] = off_1001F6080;
  a1[46] = off_1001F60A8;
  return a1;
}

void sub_10001216C(_Unwind_Exception *a1)
{
  sub_10001229C(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100012190(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10001229C(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_1000121D4(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F6190;
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

void sub_100012284(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_10001229C(uint64_t a1)
{
  *a1 = off_1001F6190;
  sub_1000126DC(a1);
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

void sub_100012408(uint64_t a1)
{
  std::ostream::~ostream();
  sub_10001229C(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100012470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000124AC(_BYTE *a1, int a2)
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

uint64_t sub_100012518(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10001229C(v1);

  return std::ios::~ios();
}

void sub_100012564(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_10001229C(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000125C8(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10001229C(v1);

  return std::ios::~ios();
}

void sub_100012628(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_10001229C(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000126A4(uint64_t a1)
{
  sub_10001229C(a1);

  operator delete();
}

uint64_t sub_1000126DC(uint64_t a1)
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
        sub_100012850((a1 + 72), __p);
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

void sub_100012828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100012850(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 173;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 173;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100012A44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = sub_100012AE0(a1, a2, a3, a4);
  v13 = v12[1];
  v20 = *v12;
  v14 = v20 + 24 * v13;
  v15 = v12[19];
  v18 = v12[18];
  v19 = v14;
  v17 = &v18[v15];
  sub_10002E0A8((v12 + 26), &v20, &v19, &v18, &v17, a6, a7, a8);
  return a1;
}

uint64_t sub_100012AE0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = a1 + 24;
  *(a1 + 8) = xmmword_1001BABD0;
  sub_100012BE0(a1, a2, a3, a4);
  *(a1 + 144) = a1 + 168;
  v5 = *(a1 + 8);
  *(a1 + 152) = xmmword_1001BABD0;
  sub_100013068(a1 + 144, v5);
  return a1;
}

void sub_100012B5C(_Unwind_Exception *a1)
{
  if (v1[20])
  {
    if (v3 != *v2)
    {
      operator delete(*v2);
    }
  }

  sub_100012FF8(v1);
  _Unwind_Resume(a1);
}

void *sub_100012B90(void *a1)
{
  if (a1[20])
  {
    v2 = a1[18];
    if (a1 + 21 != v2)
    {
      operator delete(v2);
    }
  }

  return sub_100012FF8(a1);
}

void sub_100012BE0(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a4 == a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((a4 - a2 - 16) >> 4) + 1;
  }

  if (v7 <= a1[2])
  {
    sub_100012E40(a1, a2, a3, v7, *a1, a1[1]);
    a1[1] = v7;
  }

  else
  {
    if (v7 >= 0x555555555555556)
    {
      sub_100012CFC("get_next_capacity, allocator's max size reached");
    }

    v9 = operator new(24 * v7);
    v10 = *a1;
    if (*a1)
    {
      sub_100012D58(a1);
      if (a1 + 3 != v10)
      {
        operator delete(v10);
      }
    }

    a1[1] = 0;
    a1[2] = v7;
    *a1 = v9;

    sub_100012DAC(a1, a2, a3, a4);
  }
}

void sub_100012CFC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001C24(exception, a1);
}

void sub_100012D58(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        sub_10000E984(*v3);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  a1[1] = 0;
}

void *sub_100012DAC(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = result[1];
  v5 = *result + 24 * v4;
  if (a2 == a4)
  {
    v6 = (*result + 24 * v4);
  }

  else
  {
    v7 = *a3;
    v6 = (*result + 24 * v4);
    do
    {
      _X12 = *a2;
      if (*(v7 + 16))
      {
        __asm { PRFM            #0, [X12] }
      }

      else
      {
        __asm { PRFM            #0x10, [X12] }
      }

      v15 = *(a3[1] + 8);
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        v7 = *a3;
      }

      v16 = *(v7 + 20);
      *v6 = _X12;
      v6[1] = v15;
      v6[2] = v16;
      a2 += 2;
      v6 += 3;
    }

    while (a2 != a4);
    v4 = result[1];
  }

  result[1] = v4 - 0x5555555555555555 * ((v6 - v5) >> 3);
  return result;
}

void sub_100012E40(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4, void *a5, unint64_t a6)
{
  v10 = a2;
  v11 = a6 - a4;
  if (a6 >= a4)
  {
    if (a4)
    {
      v31 = a4;
      do
      {
        v32 = *a3;
        _X8 = *v10;
        if (*(*a3 + 16))
        {
          __asm { PRFM            #0, [X8] }
        }

        else
        {
          __asm { PRFM            #0x10, [X8] }
        }

        v36 = *(a3[1] + 8);
        if (v36)
        {
          atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
          v32 = *a3;
        }

        v37 = *(v32 + 20);
        v38 = a5[1];
        *a5 = _X8;
        a5[1] = v36;
        if (v38)
        {
          sub_10000E984(v38);
        }

        a5[2] = v37;
        v10 += 2;
        a5 += 3;
        --v31;
      }

      while (v31);
    }

    if (a6 != a4)
    {
      v39 = a4 - a6;
      v40 = (a5 + 1);
      do
      {
        if (*v40)
        {
          sub_10000E984(*v40);
        }

        v40 += 3;
        _CF = __CFADD__(v39++, 1);
      }

      while (!_CF);
    }
  }

  else
  {
    if (a6)
    {
      v12 = a2;
      v13 = a6;
      v10 = &a2[2 * a6];
      do
      {
        v14 = *a3;
        _X8 = *v12;
        if (*(*a3 + 16))
        {
          __asm { PRFM            #0, [X8] }
        }

        else
        {
          __asm { PRFM            #0x10, [X8] }
        }

        v22 = *(a3[1] + 8);
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
          v14 = *a3;
        }

        v23 = *(v14 + 20);
        v24 = a5[1];
        *a5 = _X8;
        a5[1] = v22;
        if (v24)
        {
          sub_10000E984(v24);
        }

        a5[2] = v23;
        v12 += 2;
        a5 += 3;
        --v13;
      }

      while (v13);
    }

    if (a4 != a6)
    {
      v25 = *a3;
      do
      {
        _X10 = *v10;
        if (*(v25 + 16))
        {
          __asm { PRFM            #0, [X10] }
        }

        else
        {
          __asm { PRFM            #0x10, [X10] }
        }

        v29 = *(a3[1] + 8);
        if (v29)
        {
          atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
          v25 = *a3;
        }

        v30 = *(v25 + 20);
        *a5 = _X10;
        a5[1] = v29;
        a5[2] = v30;
        v10 += 2;
        a5 += 3;
        _CF = __CFADD__(v11++, 1);
      }

      while (!_CF);
    }
  }
}

void *sub_100012FF8(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 8);
    do
    {
      if (*v3)
      {
        sub_10000E984(*v3);
      }

      v3 += 3;
      --v2;
    }

    while (v2);
  }

  if (a1[2] && a1 + 3 != *a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100013068(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 >= v3)
  {
    v5 = (*a1 + 8 * v3);
    if (*(a1 + 16) - v3 < v4)
    {
      sub_1000130EC(a1, v5, v4, &v6);
    }

    else
    {
      sub_100197EA8(a1, v5, v5, v4);
      *(a1 + 8) += v4;
    }
  }

  else
  {
    *(a1 + 8) = a2;
  }
}

void sub_1000130EC(void **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = sub_10001317C(a1, a3);
  if (v9 >> 60)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v10 = v9;
  v11 = operator new(8 * v9);
  sub_100197F88(a1, v11, v10, a2, a3);
  *a4 = *a1 + a2 - v8;
}

unint64_t sub_10001317C(uint64_t a1, uint64_t a2)
{
  v2 = 0xFFFFFFFFFFFFFFFLL;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xFFFFFFFFFFFFFFFLL - v4 < a2 - v4 + v3)
  {
    sub_100012CFC("get_next_capacity, allocator's max size reached");
  }

  v5 = v4 >> 61;
  v6 = 8 * v4;
  if (v5 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  v8 = v6 / 5;
  if (v5)
  {
    v8 = v7;
  }

  v9 = v3 + a2;
  if (v8 < 0xFFFFFFFFFFFFFFFLL)
  {
    v2 = v8;
  }

  if (v9 <= v2)
  {
    return v2;
  }

  else
  {
    return v9;
  }
}

void *sub_1000131F0(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_10001335C(a1, a2);
  *a1 = off_1001F6218;
  a1[45] = &off_1001F6318;
  a1[46] = &off_1001F6340;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F6218;
  a1[45] = off_1001F62A0;
  a1[46] = off_1001F62C8;
  return a1;
}

void sub_1000132F4(_Unwind_Exception *a1)
{
  sub_100013424(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100013318(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100013424(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_10001335C(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F63B0;
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

void sub_10001340C(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100013424(uint64_t a1)
{
  *a1 = off_1001F63B0;
  sub_100013864(a1);
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

void sub_100013590(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100013424(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000135F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100013634(_BYTE *a1, int a2)
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

uint64_t sub_1000136A0(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100013424(v1);

  return std::ios::~ios();
}

void sub_1000136EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100013424(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100013750(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100013424(v1);

  return std::ios::~ios();
}

void sub_1000137B0(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100013424(v1);
  std::ios::~ios();

  operator delete();
}

void sub_10001382C(uint64_t a1)
{
  sub_100013424(a1);

  operator delete();
}

uint64_t sub_100013864(uint64_t a1)
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
        sub_1000139D8((a1 + 72), __p);
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

void sub_1000139B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000139D8(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 159;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 159;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_100013BCC(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100013D38(a1, a2);
  *a1 = off_1001F6438;
  a1[45] = &off_1001F6538;
  a1[46] = &off_1001F6560;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F6438;
  a1[45] = off_1001F64C0;
  a1[46] = off_1001F64E8;
  return a1;
}

void sub_100013CD0(_Unwind_Exception *a1)
{
  sub_100013E00(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100013CF4(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100013E00(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100013D38(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F65D0;
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

void sub_100013DE8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100013E00(uint64_t a1)
{
  *a1 = off_1001F65D0;
  sub_100014240(a1);
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

void sub_100013F6C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100013E00(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100013FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100014010(_BYTE *a1, int a2)
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

uint64_t sub_10001407C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100013E00(v1);

  return std::ios::~ios();
}

void sub_1000140C8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100013E00(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10001412C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100013E00(v1);

  return std::ios::~ios();
}

void sub_10001418C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100013E00(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100014208(uint64_t a1)
{
  sub_100013E00(a1);

  operator delete();
}

uint64_t sub_100014240(uint64_t a1)
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
        sub_1000143B4((a1 + 72), __p);
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

void sub_10001438C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000143B4(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 166;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 166;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_1000145A8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F67F0;
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

void sub_100014658(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100014670(uint64_t a1)
{
  *a1 = off_1001F67F0;
  sub_100014AB0(a1);
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

void sub_1000147DC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100014670(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100014844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100014880(_BYTE *a1, int a2)
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

uint64_t sub_1000148EC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100014670(v1);

  return std::ios::~ios();
}

void sub_100014938(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100014670(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10001499C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100014670(v1);

  return std::ios::~ios();
}

void sub_1000149FC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100014670(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100014A78(uint64_t a1)
{
  sub_100014670(a1);

  operator delete();
}

uint64_t sub_100014AB0(uint64_t a1)
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
        sub_100014C24((a1 + 72), __p);
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

void sub_100014BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100014C24(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 118;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 118;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

double sub_100014E18(uint64_t a1)
{
  sub_10002D7C8(a1, 1, &v6);
  v2 = v6;
  v6 = 0uLL;
  v3 = *(a1 + 64);
  *(a1 + 56) = v2;
  if (v3)
  {
    sub_10000E984(v3);
    v4 = *(&v6 + 1);
    result = *&v7;
    *(a1 + 72) = v7;
    if (v4)
    {
      sub_10000E984(v4);
    }
  }

  else
  {
    result = *&v7;
    *(a1 + 72) = v7;
  }

  return result;
}

uint64_t sub_100014E84(std::ios_base *this, std::ios_base::fmtflags a2)
{
  fmtflags = this[1].__fmtflags_;
  if (fmtflags == -1)
  {
    std::ios_base::getloc(this);
    v5 = std::locale::use_facet(&v7, &std::ctype<char>::id);
    fmtflags = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v7);
    this[1].__fmtflags_ = fmtflags;
  }

  this[1].__fmtflags_ = a2;
  return fmtflags;
}

uint64_t sub_100014F34(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F6A10;
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

void sub_100014FE4(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100014FFC(uint64_t a1)
{
  *a1 = off_1001F6A10;
  sub_10001543C(a1);
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

void sub_100015168(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100014FFC(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000151D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_10001520C(_BYTE *a1, int a2)
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

uint64_t sub_100015278(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100014FFC(v1);

  return std::ios::~ios();
}

void sub_1000152C4(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100014FFC(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100015328(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100014FFC(v1);

  return std::ios::~ios();
}

void sub_100015388(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100014FFC(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100015404(uint64_t a1)
{
  sub_100014FFC(a1);

  operator delete();
}

uint64_t sub_10001543C(uint64_t a1)
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
        sub_1000155B0((a1 + 72), __p);
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

void sub_100015588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_1000155B0(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 134;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 134;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

void *sub_1000157A4(void *a1)
{
  v2 = a1[111];
  if (v2)
  {
    sub_10000E984(v2);
  }

  v3 = a1[89];
  if (v3)
  {
    sub_10000E984(v3);
  }

  v4 = a1[83];
  if (v4)
  {
    sub_10000E984(v4);
  }

  v5 = a1[61];
  if (v5)
  {
    sub_10000E984(v5);
  }

  v6 = a1[46];
  if (v6)
  {
    sub_10000E984(v6);
  }

  v7 = a1[35];
  if (v7)
  {
    sub_10000E984(v7);
  }

  if (a1[20])
  {
    v8 = a1[18];
    if (a1 + 21 != v8)
    {
      operator delete(v8);
    }
  }

  return sub_100012FF8(a1);
}

void sub_10001583C()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t *sub_100015888(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_1000158B8((result + 1), v3);
  }

  return result;
}

uint64_t sub_1000158B8(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10001590C(uint64_t a1)
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

void sub_10001598C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 16;
      v7 = v4 - 16;
      v8 = v4 - 16;
      do
      {
        v9 = *v8;
        v8 -= 16;
        (*v9)(v7);
        v6 -= 16;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ***sub_100015A4C(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    operator delete();
  }

  return result;
}

uint64_t sub_100015AAC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100015B34(result, a4);
  }

  return result;
}

void sub_100015B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100015CD4(&a9);
  _Unwind_Resume(a1);
}

void sub_100015B34(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_100015B88(a1, a2);
  }

  sub_100015B70();
}

void sub_100015B88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_10000ED20();
}

void *sub_100015BD0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_100015C58(v7);
  return v4;
}

uint64_t sub_100015C58(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100015C90(a1);
  }

  return a1;
}

void sub_100015C90(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_10000E984(v3);
    }

    v1 -= 16;
  }
}

void sub_100015CD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100015D28(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100015D28(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_10000E984(v4);
    }
  }

  a1[1] = v2;
}

void sub_100015D74()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_100015DC4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 16;
      v6 = v3 - 16;
      v7 = v3 - 16;
      do
      {
        v8 = *v7;
        v7 -= 16;
        (*v8)(v6);
        v5 -= 16;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_100015E64(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = a3;
  a1[2] = a2;
  v4 = a3 * a2;
  v5 = malloc_type_valloc(a3 * a2, 0x100004077774924uLL);
  *a1 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_alloc::bad_alloc(exception);
  }

  bzero(v5, v4);
  return a1;
}

uint64_t sub_100015F70(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001F6B00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015FBC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001603C(uint64_t a1, uint64_t a2)
{
  sub_1000160C0(a1);
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

uint64_t sub_1000160C0(uint64_t a1)
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

void sub_100016144(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_10000ED20();
}

uint64_t sub_10001618C(uint64_t a1, uint64_t (***a2)(void), uint64_t (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      v9 = a4 + v7;
      result = sub_1000018A8(a4 + v7);
      *v9 = off_1001F5630;
      *(v9 + 8) = *(v8 + 2);
      *(v8 + 2) = 0;
      v8 += 2;
      v7 += 16;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v11 = v6;
      v12 = v6;
      do
      {
        v13 = *v12;
        v12 += 2;
        result = (*v13)(v6);
        v11 += 2;
        v6 = v12;
      }

      while (v12 != a3);
    }
  }

  return result;
}

void sub_100016260(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    sub_1001980D0(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10001627C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 16);
    *(a1 + 16) = i - 16;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1000162E8(uint64_t a1, uint64_t a2)
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
    sub_100016144(a1, v7);
  }

  v15 = 0;
  v16 = 16 * v2;
  v17 = (16 * v2);
  v8 = sub_1000018A8(16 * v2);
  *v8 = off_1001F5630;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *&v17 = v17 + 16;
  v9 = *(a1 + 8);
  v10 = v16 + *a1 - v9;
  sub_10001618C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10001627C(&v15);
  return v14;
}

void sub_100016408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001627C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10001641C(uint64_t a1)
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

void sub_10001649C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v5 = a4;
  *a1 = off_1001F6B20;
  v7 = *a3;
  *a3 = 0;
  *(a1 + 16) = 0u;
  v16 = a1 + 16;
  *(a1 + 64) = 1018212795;
  *(a1 + 8) = v7;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 850045863;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = a4;
  sub_100017150(a1 + 208, a5);
  *(a1 + 240) = 0;
  if (v5[1] != *v5)
  {
    v8 = 0;
    do
    {
      sub_100001DC0(&v21);
      sub_100001FE8(&v21, "com.apple.diskimagesio_", 23);
      std::ostream::operator<<();
      sub_100016CE4(&v25, &v21);
      v10 = v5;
      v21 = v18;
      *(&v21 + *(v18 - 3)) = v17;
      if (v24 < 0)
      {
        operator delete(v23[7].__locale_);
      }

      std::locale::~locale(v23);
      v11 = v9;
      std::ostream::~ostream();
      std::ios::~ios();
      sub_10000EC78(&v25, &v21);
      if (SHIBYTE(v23[0].__locale_) >= 0)
      {
        v12 = &v21;
      }

      else
      {
        v12 = v21;
      }

      v20[0] = v12;
      LODWORD(v19.__r_.__value_.__l.__data_) = 1;
      v13 = *(a1 + 24);
      if (v13 >= *(a1 + 32))
      {
        v14 = sub_1000171E8(v16, v20, &v19);
      }

      else
      {
        sub_10014FE40(*(a1 + 24), v12);
        v14 = v13 + 8;
        *(a1 + 24) = v13 + 8;
      }

      v9 = v11;
      *(a1 + 24) = v14;
      v5 = v10;
      if (SHIBYTE(v23[0].__locale_) < 0)
      {
        operator delete(v21);
      }

      v25 = v18;
      *(&v25 + *(v18 - 3)) = v17;
      if (v28 < 0)
      {
        operator delete(v27[7].__locale_);
      }

      std::locale::~locale(v27);
      std::ostream::~ostream();
      std::ios::~ios();
      ++v8;
    }

    while (v8 < (v10[1] - *v10) >> 4);
  }

  *(a2 + 16);
  operator new[]();
}

void sub_100016B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, std::condition_variable *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p)
{
  v32 = *v30;
  *v30 = 0;
  if (v32)
  {
    sub_100017408(v30, v32);
  }

  sub_10001A2AC(v29 + 208);
  v33 = *(v29 + 184);
  if (v33)
  {
    sub_10000E984(v33);
  }

  std::mutex::~mutex(a10);
  std::condition_variable::~condition_variable(a11);
  __p = a13;
  sub_100018660(&__p);
  __p = a14;
  sub_100018720(&__p);
  v34 = *(v29 + 8);
  *(v29 + 8) = 0;
  if (v34)
  {
    (*(*v34 + 16))(v34);
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***sub_100016CE4(void (__cdecl ***a1)(std::ostringstream *__hidden this), void *a2))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  v5 = (*(*a1 - 3) + a1);
  v6 = (a2 + *(*a2 - 24));
  std::ios_base::move(v5, v6);
  v5[1].__vftable = v6[1].__vftable;
  v6[1].__vftable = 0;
  v5[1].__fmtflags_ = v6[1].__fmtflags_;
  *(*(*a1 - 3) + a1 + 40) = std::stringbuf::basic_stringbuf();
  return a1;
}

void sub_100016E7C(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100016EA4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = **(result + 200);
  if (*(*(result + 200) + 8) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      result = sub_1001503B8(*(*(v2 + 40) + 8 * v6++), v4 + v5, 0);
      v4 = **(v2 + 200);
      v5 += 16;
    }

    while (v6 < (*(*(v2 + 200) + 8) - v4) >> 4);
  }

  *a2 = v2;
  return result;
}

void sub_100016F1C(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  while (v2 != v3)
  {
    v4 = *v2++;
    sub_1001503D4(v4);
  }

  *&v5 = "void ExecutionEngineCommand<CommandQueue, MachPort>::signal_terminate() [Container = CommandQueue, Port = MachPort]";
  *(&v5 + 1) = 69;
  v6 = 0;
  sub_1000187A4(v7, &v5);
  sub_100001FE8(v8, "Cancelling mach ports...", 24);
  std::ostream::~ostream();
  sub_100018C70(v7);
  std::ios::~ios();
  sub_10001761C(a1[22]);
  *&v5 = "void ExecutionEngineCommand<CommandQueue, MachPort>::signal_terminate() [Container = CommandQueue, Port = MachPort]";
  *(&v5 + 1) = 69;
  v6 = 0;
  sub_100018910(v7, &v5);
  sub_100001FE8(v8, "Waiting for barrier to complete", 31);
  std::ostream::~ostream();
  sub_1000194E0(v7);
  std::ios::~ios();
  v7[0] = off_1001F7340;
  v7[1] = a1;
  v7[3] = v7;
  sub_100018A7C(a1);
}

void sub_10001707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A054(va);
  _Unwind_Resume(a1);
}

void sub_1000170BC(uint64_t a1)
{
  sub_10001A0D4(a1);

  operator delete();
}

void sub_1000170F4(uint64_t a1)
{
  v2.__m_ = (a1 + 112);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 112));
  std::condition_variable::wait((a1 + 64), &v2);
  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

uint64_t sub_100017150(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000171E8(uint64_t a1, char **a2, unsigned int *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 3;
  v4 = v3 + 1;
  if ((v3 + 1) >> 61)
  {
    sub_100015B70();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 2 > v4)
  {
    v4 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_100017300(a1, v8);
  }

  v16 = 0;
  v17 = 8 * v3;
  v18 = (8 * v3);
  v9 = *a3;
  sub_10014FE40(8 * v3, *a2);
  *&v18 = 8 * v3 + 8;
  v10 = *(a1 + 8);
  v11 = (8 * v3 + *a1 - v10);
  sub_100017348(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000173B8(&v16);
  return v15;
}

void sub_1000172EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000173B8(va);
  _Unwind_Resume(a1);
}

void sub_100017300(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_10000ED20();
}

void sub_100017348(uint64_t a1, NSObject **a2, NSObject **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_10014FE44(a4, v7++);
      a4 = v8 + 1;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10014FD8C(v6++);
    }
  }
}

uint64_t sub_1000173B8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_10014FD8C((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100017408(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2 - 8;
    v2 = *(a2 - 8);
    if (v2)
    {
      v4 = 8 * v2;
      do
      {
        v5 = *(v3 + v4);
        *(v3 + v4) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v4 -= 8;
      }

      while (v4);
    }

    operator delete[]();
  }
}

void sub_100017574(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001F6B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000175D4(uint64_t a1)
{
  sub_10001761C(a1);
  std::mutex::~mutex((a1 + 64));
  std::condition_variable::~condition_variable((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10001761C(uint64_t a1)
{
  v10.__m_ = (a1 + 64);
  v10.__owns_ = 1;
  std::mutex::lock((a1 + 64));
  if (!atomic_load((a1 + 128)))
  {
    goto LABEL_17;
  }

  v3 = *(a1 + 136);
  if (v3 < 1)
  {
    goto LABEL_17;
  }

  std::chrono::steady_clock::now();
  v4.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (!v4.__d_.__rep_)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if (v4.__d_.__rep_ < 1)
  {
    if (v4.__d_.__rep_ < 0xFFDF3B645A1CAC09)
    {
      v5 = 0x8000000000000000;
      goto LABEL_11;
    }

LABEL_10:
    v5 = 1000 * v4.__d_.__rep_;
    goto LABEL_11;
  }

  if (v4.__d_.__rep_ <= 0x20C49BA5E353F7)
  {
    goto LABEL_10;
  }

  v5 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
  v6 = 1000000 * v3;
  if (v3 > 0x8637BD05AF6)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = v6 ^ 0x7FFFFFFFFFFFFFFFLL;
  v8 = v5 + v6;
  if (v5 <= v7)
  {
    v9.__d_.__rep_ = v8;
  }

  else
  {
    v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
  }

  std::condition_variable::__do_timed_wait((a1 + 16), &v10, v9);
  std::chrono::steady_clock::now();
LABEL_17:
  if (v10.__owns_)
  {
    std::mutex::unlock(v10.__m_);
  }
}

void sub_10001772C(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        sub_10000E984(v5);
      }
    }
  }
}

uint64_t sub_1000177B4(uint64_t a1)
{
  sub_1000177EC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1000177EC(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

__n128 sub_1000178D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001F6BD0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10001790C(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001F6E60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100017958(uint64_t a1, unsigned int a2, int a3)
{
  v6 = (*(a1 + 240) + 8 * a2);
  v7 = **(a1 + 192) + *(*(a1 + 192) + 8) * a2;
  v8 = *v6;
  if (!*v6)
  {
    (***(a1 + 8))(v13);
    sub_10019813C(v13, v6, v14);
    v8 = v14[0];
  }

  v9 = (*(*v8 + 16))(v8, v7);
  v10 = v9;
  if (a3)
  {
    LODWORD(v14[0]) = a2;
    v15 = v9;
    v11 = *(a1 + 232);
    if (!v11)
    {
      sub_10001583C();
    }

    (*(*v11 + 48))(v11, v7, v14, &v15);
  }

  return v10;
}

void *sub_100017B2C(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100017C98(a1, a2);
  *a1 = off_1001F6C58;
  a1[45] = &off_1001F6D58;
  a1[46] = &off_1001F6D80;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F6C58;
  a1[45] = off_1001F6CE0;
  a1[46] = off_1001F6D08;
  return a1;
}

void sub_100017C30(_Unwind_Exception *a1)
{
  sub_100017D60(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100017C54(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100017D60(a1);
  std::ios::~ios();
  return a1;
}

uint64_t sub_100017C98(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F6DF0;
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

void sub_100017D48(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100017D60(uint64_t a1)
{
  *a1 = off_1001F6DF0;
  sub_1000181A0(a1);
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

void sub_100017ECC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100017D60(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100017F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100017F70(_BYTE *a1, int a2)
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

uint64_t sub_100017FDC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100017D60(v1);

  return std::ios::~ios();
}

void sub_100018028(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100017D60(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10001808C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100017D60(v1);

  return std::ios::~ios();
}

void sub_1000180EC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100017D60(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100018168(uint64_t a1)
{
  sub_100017D60(a1);

  operator delete();
}

uint64_t sub_1000181A0(uint64_t a1)
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
        sub_100018314((a1 + 72), __p);
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

void sub_1000182EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100018314(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 232;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 232;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100018508(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_10001583C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100018550(uint64_t a1)
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

void *sub_1000185D0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    sub_100018614();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void sub_100018614()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_100018660(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000186B4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1000186B4(void *result)
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
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_100018720(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10014FD8C(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *sub_1000187A4(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100018BA8(a1, a2);
  *a1 = off_1001F6E88;
  a1[45] = &off_1001F6F88;
  a1[46] = &off_1001F6FB0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F6E88;
  a1[45] = off_1001F6F10;
  a1[46] = off_1001F6F38;
  return a1;
}

void sub_1000188A8(_Unwind_Exception *a1)
{
  sub_100018C70(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000188CC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100018C70(a1);
  std::ios::~ios();
  return a1;
}

void *sub_100018910(void *a1, __int128 *a2)
{
  v3 = (a1 + 46);
  a1[52] = 0;
  sub_100019418(a1, a2);
  *a1 = off_1001F70A8;
  a1[45] = &off_1001F71A8;
  a1[46] = &off_1001F71D0;
  std::ios_base::init(v3, a1);
  a1[63] = 0;
  *(a1 + 128) = -1;
  *a1 = off_1001F70A8;
  a1[45] = off_1001F7130;
  a1[46] = off_1001F7158;
  return a1;
}

void sub_100018A14(_Unwind_Exception *a1)
{
  sub_1000194E0(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100018A38(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000194E0(a1);
  std::ios::~ios();
  return a1;
}

void sub_100018B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a14)
  {
    sub_10000E984(a14);
  }

  if (a17)
  {
    sub_10000E984(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100018BA8(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F7020;
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

void sub_100018C58(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_100018C70(uint64_t a1)
{
  *a1 = off_1001F7020;
  sub_1000190B0(a1);
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

void sub_100018DDC(uint64_t a1)
{
  std::ostream::~ostream();
  sub_100018C70(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100018E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_100018E80(_BYTE *a1, int a2)
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

uint64_t sub_100018EEC(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100018C70(v1);

  return std::ios::~ios();
}

void sub_100018F38(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_100018C70(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_100018F9C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100018C70(v1);

  return std::ios::~ios();
}

void sub_100018FFC(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_100018C70(v1);
  std::ios::~ios();

  operator delete();
}

void sub_100019078(uint64_t a1)
{
  sub_100018C70(a1);

  operator delete();
}

uint64_t sub_1000190B0(uint64_t a1)
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
        sub_100019224((a1 + 72), __p);
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

void sub_1000191FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100019224(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 182;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 182;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100019418(uint64_t a1, __int128 *a2)
{
  std::locale::locale((a1 + 8));
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = off_1001F7240;
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

void sub_1000194C8(_Unwind_Exception *a1)
{
  v1->__locale_ = v2;
  std::locale::~locale(v1 + 1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000194E0(uint64_t a1)
{
  *a1 = off_1001F7240;
  sub_100019920(a1);
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

void sub_10001964C(uint64_t a1)
{
  std::ostream::~ostream();
  sub_1000194E0(a1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000196B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) == 1)
  {
    std::ostream::write();
  }

  return a3;
}

uint64_t sub_1000196F0(_BYTE *a1, int a2)
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

uint64_t sub_10001975C(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000194E0(v1);

  return std::ios::~ios();
}

void sub_1000197A8(uint64_t a1)
{
  v1 = a1 - 360;
  std::ostream::~ostream();
  sub_1000194E0(v1);
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10001980C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000194E0(v1);

  return std::ios::~ios();
}

void sub_10001986C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  sub_1000194E0(v1);
  std::ios::~ios();

  operator delete();
}

void sub_1000198E8(uint64_t a1)
{
  sub_1000194E0(a1);

  operator delete();
}

uint64_t sub_100019920(uint64_t a1)
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
        sub_100019A94((a1 + 72), __p);
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

void sub_100019A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *sub_100019A94(uint64_t *a1, uint64_t *a2)
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
    v16 = v4;
    v17 = 2080;
    v18 = v7;
    v19 = 2048;
    v20 = 185;
    v21 = 2082;
    v22 = v8;
    v9 = _os_log_send_and_compose_impl();

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C();
    v11 = *(a1 + 4);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *a1;
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      *buf = 68158466;
      v16 = v4;
      v17 = 2080;
      v18 = v12;
      v19 = 2048;
      v20 = 185;
      v21 = 2082;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v10, v11, "%.*s: <%lu> %{public}s", buf, 0x26u);
    }
  }

  result = __error();
  *result = v5;
  return result;
}

uint64_t sub_100019C88(uint64_t result)
{
  v2 = *(result + 32);
  if (atomic_fetch_add(v2 + 10, 0xFFFFFFFF) == 1)
  {
    v3 = *(v2 + 4);
    if (!v3)
    {
      sub_10001583C();
    }

    v4 = *v2;
    v5 = *(*v3 + 48);

    return v5();
  }

  return result;
}

uint64_t sub_100019CF0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100019D0C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_10000E984(v1);
  }
}

uint64_t sub_100019DA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_1001F72F0;
  v5 = *a3;
  *(a1 + 24) = a2;
  sub_100019E90(a1 + 32, a4);
  *(a1 + 64) = v5;
  return a1;
}

void sub_100019E30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1001F72F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100019E90(uint64_t a1, uint64_t a2)
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

uint64_t sub_100019F98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1001F7340;
  a2[1] = v2;
  return result;
}

void sub_100019FC4(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::mutex::lock((v1 + 112));
  std::condition_variable::notify_all((v1 + 64));

  std::mutex::unlock((v1 + 112));
}

uint64_t sub_10001A008(uint64_t a1, uint64_t a2)
{
  if (sub_10000FA58(a2, &off_1001F73B0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A054(uint64_t a1)
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

uint64_t sub_10001A0D4(uint64_t a1)
{
  *a1 = off_1001F6B20;
  v4 = *(a1 + 240);
  v2 = (a1 + 240);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100017408(v2, v3);
  }

  sub_10001A2AC(a1 + 208);
  v5 = *(a1 + 184);
  if (v5)
  {
    sub_10000E984(v5);
  }

  std::mutex::~mutex((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));
  v8 = (a1 + 40);
  sub_100018660(&v8);
  v8 = (a1 + 16);
  sub_100018720(&v8);
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  return a1;
}

__n128 sub_10001A218(uint64_t a1, uint64_t a2)
{
  *a2 = off_1001F73D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10001A260(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A2AC(uint64_t a1)
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

uint64_t sub_10001A32C(uint64_t a1)
{
  *a1 = off_1001F7478;
  v3 = (a1 + 8);
  sub_100015CD4(&v3);
  return a1;
}

void sub_10001A384(uint64_t a1)
{
  *a1 = off_1001F7478;
  v1 = (a1 + 8);
  sub_100015CD4(&v1);
  operator delete();
}

uint64_t sub_10001A480(uint64_t *a1, void *a2)
{
  *a2 = off_1001F7478;
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = 0;
  result = sub_100015AAC((a2 + 1), a1[1], a1[2], (a1[2] - a1[1]) >> 4);
  a2[4] = a1[4];
  return result;
}

void sub_10001A510(void **a1)
{
  v2 = a1 + 1;
  sub_100015CD4(&v2);
  operator delete(a1);
}

uint64_t sub_10001A550(uint64_t result)
{
  **(result + 32) = 1;
  v1 = *(result + 8);
  v2 = *(result + 16);
  while (v1 != v2)
  {
    v3 = *v1;
    v1 += 2;
    result = (*(*v3 + 8))(v3);
  }

  return result;
}

uint64_t sub_10001A5B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *frk_unwrapped_symmetric_key_with_shipping_private_key(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a1 objectForKey:@"com.apple.wkms.fcs-response"];
  v7 = v6;
  if (!v5)
  {
    v26 = a3;
    v38 = NSLocalizedDescriptionKey;
    v39 = @"ERROR: Shipping private key is NULL.";
    v12 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v18 = 26;
LABEL_14:
    v15 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:v18 userInfo:v12];
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v8 = 0;
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  if (!v6)
  {
    v26 = a3;
    v36 = NSLocalizedDescriptionKey;
    v37 = @"ERROR: This archive does not contain a shipping key response.";
    v12 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v18 = 25;
    goto LABEL_14;
  }

  v29 = 0;
  v8 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:&v29];
  v9 = v29;
  if (!v8)
  {
    v11 = 0;
    v14 = 0;
    v10 = 0;
    v16 = 0;
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v26 = a3;
  v10 = [v8 objectForKey:@"wrapped-key"];
  v11 = [v8 objectForKey:@"enc-request"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v34 = NSLocalizedDescriptionKey;
    v35 = @"ERROR: Response dictionary is missing required keys. Will fail";
    v12 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v15 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:23 userInfo:v12];

    v14 = 0;
    goto LABEL_16;
  }

  v12 = [[NSData alloc] initWithBase64EncodedString:v10 options:0];
  v13 = [[NSData alloc] initWithBase64EncodedString:v11 options:0];
  v25 = v13;
  if (!v12)
  {
    v32 = NSLocalizedDescriptionKey;
    v33 = @"ERROR: shipping key wrapped-key failed base64 decode";
    v22 = &v33;
    v23 = &v32;
LABEL_24:
    v15 = [NSDictionary dictionaryWithObjects:v22 forKeys:v23 count:1, v13];
    v24 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:19 userInfo:v15];

    v17 = v24;
    v14 = 0;
    v16 = 0;
    goto LABEL_25;
  }

  if (!v13)
  {
    v30 = NSLocalizedDescriptionKey;
    v31 = @"ERROR: shipping key enc-request failed base64 decode";
    v22 = &v31;
    v23 = &v30;
    goto LABEL_24;
  }

  v28 = v9;
  v14 = [_TtC16FetchRestoreKeys16CryptoKitWrapper convertPrivateKeyTox963WithPemPrivateKey:v5 error:&v28];
  v15 = v28;

  if (!v14)
  {
    v16 = 0;
    goto LABEL_26;
  }

  v27 = v15;
  v16 = [_TtC16FetchRestoreKeys16CryptoKitWrapper unwrapEncryptionKeyWithWrappedKey:v12 encapsulatedKey:v25 privateKey:v14 error:&v27];
  v17 = v27;
LABEL_25:

  v15 = v17;
LABEL_26:

LABEL_17:
  v9 = v15;
  a3 = v26;
  if (v26)
  {
LABEL_18:
    v19 = v9;
    *a3 = v9;
  }

LABEL_19:
  v20 = v16;

  return v16;
}

id frk_metadata_from_aea_auth_data(AEAAuthData_impl *a1, void *a2)
{
  v4 = +[NSMutableDictionary dictionary];
  EntryCount = AEAAuthDataGetEntryCount(a1);
  if (!EntryCount)
  {
LABEL_12:
    v16 = [v4 copy];
    v17 = 0;
    if (a2)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v6 = EntryCount;
  v7 = 0;
  while (1)
  {
    data_size = 0;
    key_length = 0;
    if (AEAAuthDataGetEntry(a1, v7, 0, 0, &key_length, 0, 0, &data_size))
    {
      v26 = NSLocalizedDescriptionKey;
      v27 = @"Failed to parse auth data blob.";
      v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v18];

      goto LABEL_22;
    }

    if (!key_length)
    {
      v38 = NSLocalizedDescriptionKey;
      v39 = @"Failed to parse key in KVS (zero size key).";
      v19 = &v39;
      v20 = &v38;
LABEL_20:
      v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:1];
      v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v13];
      goto LABEL_21;
    }

    v8 = ++key_length;
    if (!data_size)
    {
      v36 = NSLocalizedDescriptionKey;
      v37 = @"Failed to parse key in KVS (zero size data).";
      v19 = &v37;
      v20 = &v36;
      goto LABEL_20;
    }

    v9 = malloc_type_calloc(1uLL, v8, 0x7A69EC4uLL);
    if (!v9)
    {
      v34 = NSLocalizedDescriptionKey;
      v35 = @"KVS keyBuffer allocation failure.";
      v19 = &v35;
      v20 = &v34;
      goto LABEL_20;
    }

    v10 = v9;
    v11 = malloc_type_calloc(1uLL, data_size, 0x5189DB6BuLL);
    if (!v11)
    {
      free(v10);
      v32 = NSLocalizedDescriptionKey;
      v33 = @"KVS dataBuffer allocation failure.";
      v19 = &v33;
      v20 = &v32;
      goto LABEL_20;
    }

    v12 = v11;
    if (AEAAuthDataGetEntry(a1, v7, key_length, v10, &key_length, data_size, v11, &data_size))
    {
      free(v10);
      free(v12);
      v30 = NSLocalizedDescriptionKey;
      v31 = @"KVS data fetch failure.";
      v19 = &v31;
      v20 = &v30;
      goto LABEL_20;
    }

    v13 = [[NSString alloc] initWithUTF8String:v10];
    v14 = [NSData alloc];
    v15 = [v14 initWithBytesNoCopy:v12 length:data_size freeWhenDone:1];
    free(v10);
    if (!v13 || !v15)
    {
      break;
    }

    [v4 setObject:v15 forKey:v13];

    if (v6 == ++v7)
    {
      goto LABEL_12;
    }
  }

  v28 = NSLocalizedDescriptionKey;
  v29 = @"KVS key value - parse failure.";
  v23 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v17 = [NSError errorWithDomain:@"com.apple.internal.fetchrestorekeys" code:17 userInfo:v23];

LABEL_21:
LABEL_22:
  v16 = 0;
  if (a2)
  {
LABEL_23:
    v21 = v17;
    *a2 = v17;
  }

LABEL_24:

  return v16;
}

Class sub_10001AF28(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v6 = a3;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = a5(v7, v9);
  v12 = v11;
  sub_10001CDA0(v7, v9);
  v13.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10001CDA0(v10, v12);

  return v13.super.isa;
}

id CryptoKitWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CryptoKitWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id CryptoKitWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CryptoKitWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10001B3CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001B444(a1, a2, v6);
}

unint64_t sub_10001B444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10001B4FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    v5 = v3;
    if (!v4)
    {
      v6 = a3;
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
      v13 = v12;
      v14 = v12 + BYTE6(a2);
      goto LABEL_10;
    }

    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    a1 = a1;
    v8 = v9;
    return sub_10001B678(a1, v8, a3);
  }

  if (v4 == 2)
  {
    v7 = *(a1 + 24);
    a1 = *(a1 + 16);
    v8 = v7;
    return sub_10001B678(a1, v8, a3);
  }

  v6 = a3;
  memset(v12, 0, 14);
  v13 = v12;
  v14 = v12;
  v5 = v3;
LABEL_10:
  sub_10001CEA4();
  result = HPKE.Sender.seal<A>(_:)();
  if (!v5)
  {
    *v6 = result;
    v6[1] = v11;
  }

  return result;
}

uint64_t sub_10001B678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  sub_10001CEA4();
  result = HPKE.Sender.seal<A>(_:)();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
  }

  return result;
}

unint64_t sub_10001B73C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001CDF4(&qword_1002349B8, &unk_1001BB7D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001CEF8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001B3CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001CF68(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10001B84C(uint64_t a1, unint64_t a2)
{
  isa = v2;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = a1;
  v25 = a2;
  sub_10001CF78(a1, a2);
  P256.KeyAgreement.PrivateKey.init<A>(x963Representation:)();
  if (!v2)
  {
    v26 = 0;
    P256.KeyAgreement.PrivateKey.pemRepresentation.getter();
    static String.Encoding.ascii.getter();
    isa = String.data(using:allowLossyConversion:)();
    v17 = v16;

    (*(v7 + 8))(v10, v6);
    if (v17 >> 60 == 15)
    {
      sub_10001CDF4(&qword_100234988, &qword_1001BB7A8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001BB750;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v19;
      *(inited + 48) = 0xD000000000000017;
      *(inited + 56) = 0x80000001001CD2A0;
      v20 = @"com.apple.internal.fetchrestorekeys";
      sub_10001B73C(inited);
      swift_setDeallocating();
      sub_10001CE3C(inited + 32);
      v21 = objc_allocWithZone(NSError);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 initWithDomain:v20 code:31 userInfo:isa];

      swift_willThrow();
    }

    (*(v12 + 8))(v15, v11);
  }

  return isa;
}

unint64_t sub_10001BB70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10001CDF4(&qword_1002349A8, &qword_1001BB7C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001B3CC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_10001BC84()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  (__chkstk_darwin)();
  v3 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (__chkstk_darwin)();
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  static String.Encoding.ascii.getter();
  v7 = String.init(data:encoding:)();
  if (v8)
  {
    __chkstk_darwin(v7);
    P256.KeyAgreement.PrivateKey.init(pemRepresentation:)();
    if (!v0)
    {
      (*(v4 + 32))(&v14[-v6], &v14[-v6], v3);
      v1 = P256.KeyAgreement.PrivateKey.x963Representation.getter();
      (*(v4 + 8))(&v14[-v6], v3);
    }
  }

  else
  {
    sub_10001CDF4(&qword_100234988, &qword_1001BB7A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001BB750;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000017;
    *(inited + 56) = 0x80000001001CD2A0;
    v11 = @"com.apple.internal.fetchrestorekeys";
    sub_10001B73C(inited);
    swift_setDeallocating();
    sub_10001CE3C(inited + 32);
    v1 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 initWithDomain:v11 code:31 userInfo:isa];

    swift_willThrow();
  }

  return v1;
}

__CFString *sub_10001BF54(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (&type metadata accessor for HPKE)
  {
    v7 = &nominal type descriptor for HPKE == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || &type metadata for HPKE == 0)
  {
    sub_10001CDF4(&qword_100234988, &qword_1001BB7A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001BB750;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x80000001001CD270;
    v17 = @"com.apple.internal.fetchrestorekeys";
    sub_10001B73C(inited);
    swift_setDeallocating();
    sub_10001CE3C(inited + 32);
    v11 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 initWithDomain:v17 code:12 userInfo:isa];

    swift_willThrow();
  }

  else
  {
    v51 = a2;
    v52 = a3;
    v55 = a4;
    v50 = a1;
    v15 = type metadata accessor for P256.KeyAgreement.PrivateKey();
    v16 = *(v15 - 8);
    v17 = *(v16 + 64);
    __chkstk_darwin(v15);
    v18 = (&v17->info + 7) & 0xFFFFFFFFFFFFFFF0;
    v19 = &v38 - v18;
    v53 = a5;
    v54 = a6;
    sub_10001CF78(a5, a6);
    P256.KeyAgreement.PrivateKey.init<A>(x963Representation:)();
    if (!v6)
    {
      v47 = &v38;
      v20 = type metadata accessor for HPKE.Ciphersuite();
      v46 = &v38;
      v21 = *(v20 - 8);
      v48 = v15;
      v49 = v21;
      v22 = v16;
      v23 = *(v21 + 64);
      __chkstk_darwin(v20);
      v43 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
      v24 = &v38 - v43;
      static HPKE.Ciphersuite.P256_SHA256_AES_GCM_256.getter();
      v25 = type metadata accessor for HPKE.Recipient();
      v45 = &v38;
      v39 = v25;
      v38 = *(v25 - 8);
      v26 = *(v38 + 64);
      v27 = __chkstk_darwin(v25);
      v29 = &v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v42 = &v38;
      __chkstk_darwin(v27);
      v44 = v22;
      v30 = (*(v22 + 16))(&v38 - v18, &v38 - v18, v48);
      v41 = &v38;
      __chkstk_darwin(v30);
      v31 = *(v49 + 16);
      v32 = &v38 - v43;
      v43 = v20;
      v31(v32, v24, v20);
      sub_10001CF78(v52, v55);
      v40 = v29;
      HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:)();
      v33 = v38;
      v34 = v39;
      v35 = v49;
      v53 = v50;
      v54 = v51;
      sub_10001CFCC();
      v36 = v40;
      v17 = HPKE.Recipient.open<A>(_:)();
      (*(v33 + 8))(v36, v34);
      (*(v35 + 8))(v24, v43);
      (*(v44 + 8))(v19, v48);
    }
  }

  return v17;
}

__SecKey *sub_10001C56C(unint64_t a1, uint64_t a2, SecCertificateRef certificate)
{
  if (&type metadata accessor for HPKE)
  {
    v4 = &nominal type descriptor for HPKE == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &type metadata for HPKE == 0)
  {
    sub_10001CDF4(&qword_100234988, &qword_1001BB7A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001BB750;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v7;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x80000001001CD270;
    v8 = @"com.apple.internal.fetchrestorekeys";
    sub_10001B73C(inited);
    swift_setDeallocating();
    sub_10001CE3C(inited + 32);
    v9 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 initWithDomain:v8 code:12 userInfo:isa];

    swift_willThrow();
    return v8;
  }

  result = SecCertificateCopyKey(certificate);
  if (result)
  {
    v14 = result;
    v58 = a1;
    v61 = a2;
    result = SecKeyCopyExternalRepresentation(result, 0);
    if (result)
    {
      v15 = result;
      v16 = type metadata accessor for P256.KeyAgreement.PublicKey();
      v17 = *(v16 - 8);
      v8 = *(v17 + 64);
      __chkstk_darwin(v16);
      v18 = (&v8->info + 7) & 0xFFFFFFFFFFFFFFF0;
      v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v19;
      P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
      if (v3)
      {
      }

      else
      {
        v50 = v14;
        v54 = &v42;
        v56 = type metadata accessor for HPKE.Ciphersuite();
        v52 = &v42;
        v20 = *(v56 - 8);
        v55 = &v42 - v18;
        v48 = v20;
        v57 = v16;
        v21 = v17;
        v22 = *(v20 + 64);
        __chkstk_darwin(v56);
        v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        static HPKE.Ciphersuite.P256_SHA256_AES_GCM_256.getter();
        v24 = type metadata accessor for HPKE.Sender();
        v51 = &v42;
        v46 = v24;
        v45 = *(v24 - 8);
        v25 = *(v45 + 64);
        v26 = __chkstk_darwin(v24);
        v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        object = &v42;
        __chkstk_darwin(v26);
        v53 = v21;
        v29 = (*(v21 + 16))(&v42 - v18, v55, v57);
        countAndFlagsBits = &v42;
        __chkstk_darwin(v29);
        v30 = v48;
        (*(v48 + 16))(v23, v23, v56);
        v31 = v28;
        v32 = v57;
        HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
        v44 = v23;
        v33 = v30;
        sub_10001B4FC(v58, v61, &v59);
        v34 = v50;
        v61 = v59;
        v58 = v60;
        v35 = Data.base64EncodedString(options:)(0);
        countAndFlagsBits = v35._countAndFlagsBits;
        object = v35._object;
        v43 = v31;
        v36 = HPKE.Sender.encapsulatedKey.getter();
        v38 = v37;
        v39 = Data.base64EncodedString(options:)(0);
        v42 = v39._countAndFlagsBits;
        sub_10001CDA0(v36, v38);
        sub_10001CDF4(&qword_100234998, &qword_1001BB7B8);
        v40 = swift_initStackObject();
        *(v40 + 16) = xmmword_1001BB760;
        *(v40 + 32) = 0x2D64657070617277;
        *(v40 + 40) = 0xEB0000000079656BLL;
        v41 = object;
        *(v40 + 48) = countAndFlagsBits;
        *(v40 + 56) = v41;
        *(v40 + 64) = 0x757165722D636E65;
        *(v40 + 72) = 0xEB00000000747365;
        *(v40 + 80) = v42;
        *(v40 + 88) = v39._object;
        v8 = sub_10001BB70(v40);
        swift_setDeallocating();
        sub_10001CDF4(&qword_1002349A0, &qword_1001BB7C0);
        swift_arrayDestroy();

        sub_10001CDA0(v61, v58);
        (*(v33 + 8))(v44, v56);
        (*(v53 + 8))(v55, v32);
        (*(v45 + 8))(v43, v46);
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CDA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001CDF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001CE3C(uint64_t a1)
{
  v2 = sub_10001CDF4(&qword_100234990, &qword_1001BB7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001CEA4()
{
  result = qword_1002349B0;
  if (!qword_1002349B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002349B0);
  }

  return result;
}

uint64_t sub_10001CEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CDF4(&qword_100234990, &qword_1001BB7B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10001CF68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001CF78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10001CFCC()
{
  result = qword_1002349C0;
  if (!qword_1002349C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002349C0);
  }

  return result;
}

uint64_t sub_10001D020(uint64_t a1)
{
  v2 = malloc(0xAF8uLL);
  v3 = v2;
  if (!v2)
  {
    v7 = 192;
LABEL_26:
    v24 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "aaS3ContextClone", v7, 80, *v24, "malloc", v25, v26, v46);
    AAS3ContextDestroy(v3);
    return 0;
  }

  memset_s(v2, 0xAF8uLL, 0, 0xAF8uLL);
  if (*a1)
  {
    *v3 = 1;
    memcpy((v3 + 4), (a1 + 4), 0xAC4uLL);
  }

  v4 = *(a1 + 2760);
  if (v4)
  {
    v5 = strlen(*(a1 + 2760));
    v6 = v5 + 1;
    if (v5 + 1 > 0x2000000000)
    {
      v7 = 198;
      v8 = 2760;
LABEL_24:
      *__error() = 12;
      goto LABEL_25;
    }

    v9 = malloc(v5 + 1);
    if (!v9)
    {
      v7 = 198;
      v8 = 2760;
LABEL_25:
      *(v3 + v8) = 0;
      goto LABEL_26;
    }

    v10 = v9;
    memcpy(v9, v4, v6);
    *(v3 + 2760) = v10;
  }

  v11 = *(a1 + 2768);
  if (v11)
  {
    v12 = strlen(*(a1 + 2768));
    v13 = v12 + 1;
    if (v12 + 1 > 0x2000000000)
    {
      v7 = 199;
      v8 = 2768;
      goto LABEL_24;
    }

    v14 = malloc(v12 + 1);
    if (!v14)
    {
      v7 = 199;
      v8 = 2768;
      goto LABEL_25;
    }

    v15 = v14;
    memcpy(v14, v11, v13);
    *(v3 + 2768) = v15;
  }

  v16 = *(a1 + 2776);
  if (v16)
  {
    v17 = strlen(*(a1 + 2776));
    v18 = v17 + 1;
    if (v17 + 1 > 0x2000000000)
    {
      v7 = 200;
      v8 = 2776;
      goto LABEL_24;
    }

    v19 = malloc(v17 + 1);
    if (!v19)
    {
      v7 = 200;
      v8 = 2776;
      goto LABEL_25;
    }

    v20 = v19;
    memcpy(v19, v16, v18);
    *(v3 + 2776) = v20;
  }

  v21 = *(a1 + 2784);
  if (v21)
  {
    v22 = strlen(*(a1 + 2784));
    v23 = v22 + 1;
    if (v22 + 1 > 0x2000000000)
    {
      v7 = 201;
      v8 = 2784;
      goto LABEL_24;
    }

    v28 = malloc(v22 + 1);
    if (!v28)
    {
      v7 = 201;
      v8 = 2784;
      goto LABEL_25;
    }

    v29 = v28;
    memcpy(v28, v21, v23);
    *(v3 + 2784) = v29;
  }

  v30 = *(a1 + 2792);
  if (v30)
  {
    list = 0;
    p_list = &list;
    while (1)
    {
      v32 = malloc(0x10uLL);
      if (!v32)
      {
        break;
      }

      p_data = &v32->data;
      v32->data = 0;
      v32->next = 0;
      *p_list = v32;
      v34 = strdup(*v30);
      *p_data = v34;
      if (!v34)
      {
        break;
      }

      p_list = (p_data + 1);
      v30 = *(v30 + 8);
      if (!v30)
      {
        v35 = 1;
        v36 = list;
        goto LABEL_38;
      }
    }

    curl_slist_free_all(list);
    v36 = 0;
    v35 = *(a1 + 2792) != 0;
LABEL_38:
    *(v3 + 2792) = v36;
    if (v35 && v36 == 0)
    {
      v7 = 202;
      goto LABEL_26;
    }
  }

  else
  {
    *(v3 + 2792) = 0;
  }

  v38 = *(a1 + 2800);
  if (!v38)
  {
    *(v3 + 2800) = 0;
    return v3;
  }

  list = 0;
  v39 = &list;
  while (1)
  {
    v40 = malloc(0x10uLL);
    if (!v40)
    {
      break;
    }

    v41 = &v40->data;
    v40->data = 0;
    v40->next = 0;
    *v39 = v40;
    v42 = strdup(*v38);
    *v41 = v42;
    if (!v42)
    {
      break;
    }

    v39 = (v41 + 1);
    v38 = *(v38 + 8);
    if (!v38)
    {
      v43 = 1;
      v44 = list;
      goto LABEL_53;
    }
  }

  curl_slist_free_all(list);
  v44 = 0;
  v43 = *(a1 + 2800) != 0;
LABEL_53:
  *(v3 + 2800) = v44;
  if (v43 && v44 == 0)
  {
    v7 = 203;
    goto LABEL_26;
  }

  return v3;
}

void AAS3ContextDestroy(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 2760));
    free(*(a1 + 2768));
    free(*(a1 + 2776));
    free(*(a1 + 2784));
    curl_slist_free_all(*(a1 + 2792));
    curl_slist_free_all(*(a1 + 2800));
    memset_s(a1, 0xAF8uLL, 0, 0xAF8uLL);

    free(a1);
  }
}

void *AAS3ContextCreate()
{
  v0 = malloc(0xAF8uLL);
  v1 = v0;
  if (!v0)
  {
    v9 = __error();
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextCreate", 370, 80, *v9, "malloc", v10, v11, v13);
    goto LABEL_5;
  }

  memset_s(v0, 0xAF8uLL, 0, 0xAF8uLL);
  if ((AAS3ContextSetFieldString(v1, 5, "Not A Ninja/1.0", v2, v3, v4, v5, v6) & 0x80000000) != 0)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextCreate", 373, 80, 0, "set context", v7, v8, v13);
    memset_s(v1, 0xAF8uLL, 0, 0xAF8uLL);
LABEL_5:
    free(v1);
    return 0;
  }

  return v1;
}

uint64_t AAS3ContextSetFieldString(uint64_t a1, int a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v10 = 2760;
        if (!__s)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 1:
        v10 = 2768;
        if (!__s)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      case 2:
        v10 = 2776;
        if (!__s)
        {
          goto LABEL_21;
        }

LABEL_18:
        if (*__s)
        {
          v12 = strlen(__s);
          v13 = v12 + 1;
          if (v12 + 1 < 0x2000000001)
          {
            v18 = malloc(v12 + 1);
            if (v18)
            {
              v14 = v18;
              memcpy(v18, __s, v13);
              goto LABEL_22;
            }
          }

          else
          {
            *__error() = 12;
          }

          v19 = *__error();
          v22 = 414;
LABEL_32:
          sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextSetFieldString", v22, 80, v19, "malloc", v20, v21, v23);
          return 0xFFFFFFFFLL;
        }

LABEL_21:
        v14 = 0;
LABEL_22:
        free(*(a1 + v10));
        result = 0;
        *(a1 + v10) = v14;
        return result;
    }

    goto LABEL_16;
  }

  switch(a2)
  {
    case 3:
      v11 = 2792;
      if (!__s)
      {
        return 0;
      }

LABEL_24:
      if (*__s)
      {
        v16 = curl_slist_append(*(a1 + v11), __s);
        if (v16)
        {
          v17 = v16;
          result = 0;
          *(a1 + v11) = v17;
          return result;
        }

        v19 = *__error();
        v22 = 422;
        goto LABEL_32;
      }

      return 0;
    case 4:
      v11 = 2800;
      if (!__s)
      {
        return 0;
      }

      goto LABEL_24;
    case 5:
      v10 = 2784;
      if (!__s)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
  }

LABEL_16:
  sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Context.c", "AAS3ContextSetFieldString", 406, 80, 0, "invalid field %u", a7, a8, a2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10001D67C(uint64_t a1)
{
  if (a1)
  {
    if (*a1 >> 62)
    {
      v9.tv_sec = 0;
      *&v9.tv_usec = 0;
      gettimeofday(&v9, 0);
      v2 = v9.tv_sec + v9.tv_usec * 0.000001 - *(a1 + 40);
      fwrite("AAS3DownloadStream (curl)\n", 0x1AuLL, 1uLL, __stderrp);
      v3 = __stderrp;
      v4 = atomic_load((a1 + 32));
      v5 = atomic_load((a1 + 32));
      fprintf(v3, "%12llu bytes downloaded (%.2f MB)\n", v4, vcvtd_n_f64_u64(v5, 0x14uLL));
      v6 = __stderrp;
      v7 = atomic_load((a1 + 32));
      fprintf(v6, "%12.2f MB/s download speed\n", v7 / v2 * 0.000000953674316);
    }

    sub_10001F4A8(a1);
    memset_s(a1, 0x30uLL, 0, 0x30uLL);
    free(a1);
  }

  return 0;
}

AAByteStream_impl *sub_10001D798(char *a1, uint64_t a2, uint64_t a3)
{
  curl_global_init(3);
  v6 = AACustomByteStreamOpen();
  v7 = malloc(0x30uLL);
  if (!v7 || (v8 = v7, memset_s(v7, 0x30uLL, 0, 0x30uLL), !v6))
  {
    perror("malloc");
    goto LABEL_7;
  }

  if ((sub_10001F378(v8, a1, a2, a3) & 0x80000000) != 0)
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "s3DownloadStreamOpen_curl", 132, 83, 0, "s3StreamBaseInit", v9, v10, v12.tv_sec);
LABEL_7:
    AAByteStreamClose(v6);
    return 0;
  }

  v12.tv_sec = 0;
  *&v12.tv_usec = 0;
  gettimeofday(&v12, 0);
  v8[5] = v12.tv_sec + v12.tv_usec * 0.000001;
  AACustomByteStreamSetData(v6, v8);
  AACustomByteStreamSetCloseProc(v6, sub_10001D67C);
  AACustomByteStreamSetPReadProc(v6, sub_10001D8F4);
  AACustomByteStreamSetReadProc(v6, sub_10001DAB4);
  return v6;
}

uint64_t sub_10001D8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v19 = a2;
  *(&v19 + 1) = a3;
  v20 = 0;
  v5 = a2;
  if (a3)
  {
    v16 = a2;
    v6 = a4 + a3;
    v7 = a4 + a3 - 1;
    while (1)
    {
      snprintf(__str, 0xC8uLL, "Range: bytes=%llu-%llu", v6 - a3, v7);
      v11 = 0;
      v21[0] = __str;
      v21[1] = 0;
      v17 = v19;
      v18 = v20;
      v12 = 125000;
      do
      {
        if (v11)
        {
          sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "downloadStreamPRead", 65, 83, "s3Perform retry after %u ms", v8, v9, v10, v12 / 0x3E8);
          usleep(v12);
          v12 *= 2;
        }

        v19 = v17;
        v20 = v18;
        v13 = sub_10001E030(1u, *(a1 + 8), a1, 0, &v19, 0, v21);
        if ((v13 & 0x80000000) == 0)
        {
          break;
        }
      }

      while (v11++ < 3);
      if (v13 < 0)
      {
        break;
      }

      a3 = *(&v19 + 1);
      if (!*(&v19 + 1))
      {
        v5 = v19;
        a2 = v16;
        goto LABEL_12;
      }
    }

    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamCurl.c", "downloadStreamPRead", 81, 83, 0, "s3Perform failed (after retry), %s", v9, v10, __str);
    return -1;
  }

  else
  {
LABEL_12:
    result = v5 - a2;
    atomic_fetch_add_explicit((a1 + 32), v5 - a2, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10001DAC0(_DWORD *a1, unsigned int *a2, const void *a3, size_t a4)
{
  memset(&v8, 0, sizeof(v8));
  CCHmacInit(&v8, 2u, a2 + 1, *a2);
  CCHmacUpdate(&v8, a3, a4);
  CCHmacFinal(&v8, a1 + 1);
  *a1 = 32;
  memset_s(a1 + 9, 0xE0uLL, 0, 0xE0uLL);
  memset_s(&v8, 0x180uLL, 0, 0x180uLL);
  return 0;
}

uint64_t sub_10001DB90(uint64_t a1, const void *a2, CC_LONG a3)
{
  memset(&v7, 0, sizeof(v7));
  CC_SHA256_Init(&v7);
  CC_SHA256_Update(&v7, a2, a3);
  CC_SHA256_Final((a1 + 4), &v7);
  *a1 = 32;
  memset_s((a1 + 36), 0xE0uLL, 0, 0xE0uLL);
  return memset_s(&v7, 0x68uLL, 0, 0x68uLL);
}

size_t sub_10001DC30(char *__src, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __src;
  v5 = a3 * a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    if (*(v6 + 24))
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v8 = (*(v6 + 24))(*v6, v4, v5);
          if (v8 < 1)
          {
            break;
          }

          v4 += v8;
          v7 += v8;
          v5 -= v8;
          if (!v5)
          {
            return v7 & ~(v7 >> 63);
          }
        }

        v7 = v8;
      }
    }

    else
    {
      v7 = -1;
    }

    return v7 & ~(v7 >> 63);
  }

  else
  {
    if (v5 >= *(a4 + 8))
    {
      v5 = *(a4 + 8);
    }

    memcpy(*a4, __src, v5);
    v10 = *(a4 + 8) - v5;
    *a4 += v5;
    *(a4 + 8) = v10;
    return v5;
  }
}

size_t sub_10001DCE8(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __dst;
  v5 = a3 * a2;
  v6 = *(a4 + 16);
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = 0;
      if (v5)
      {
        while (1)
        {
          v8 = (*(v6 + 16))(*v6, v4, v5);
          if (v8 < 0)
          {
            break;
          }

          if (v8)
          {
            v4 += v8;
            v7 += v8;
            v5 -= v8;
            if (v5)
            {
              continue;
            }
          }

          return v7 & ~(v7 >> 63);
        }

        v7 = v8;
      }
    }

    else
    {
      v7 = -1;
    }

    return v7 & ~(v7 >> 63);
  }

  else
  {
    if (v5 >= *(a4 + 8))
    {
      v5 = *(a4 + 8);
    }

    memcpy(__dst, *a4, v5);
    v10 = *(a4 + 8) - v5;
    *a4 += v5;
    *(a4 + 8) = v10;
    return v5;
  }
}

uint64_t sub_10001DDA0(curl_slist **a1, char *__format, ...)
{
  va_start(va, __format);
  v4 = vsnprintf(0, 0, __format, va);
  if (v4 < 0)
  {
    v11 = 0;
LABEL_8:
    v12 = "vsnprintf";
    v13 = 156;
    v14 = 0;
LABEL_12:
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", v13, 84, v14, v12, v5, v6, v20);
    v18 = 0xFFFFFFFFLL;
    v7 = v11;
  }

  else
  {
    v7 = 0;
    v8 = 1;
    while ((v8 & 1) != 0)
    {
      v9 = (v4 + 1);
      v10 = realloc(v7, v9);
      v11 = v10;
      if (!v10)
      {
        free(v7);
        v14 = *__error();
        v12 = "malloc";
        v13 = 161;
        goto LABEL_12;
      }

      v4 = vsnprintf(v10, v9, __format, va);
      v8 = 0;
      v7 = v11;
      if (v4 < 0)
      {
        goto LABEL_8;
      }
    }

    v15 = curl_slist_append(*a1, v7);
    if (v15)
    {
      v18 = 0;
      *a1 = v15;
    }

    else
    {
      sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppendWithFormat", 168, 84, 0, "curl_slist_append failed\n", v16, v17, v20);
      v18 = 0xFFFFFFFFLL;
    }
  }

  free(v7);
  return v18;
}

uint64_t sub_10001DF08(curl_slist **a1, const char *a2)
{
  v3 = curl_slist_append(*a1, a2);
  v6 = v3;
  if (v3)
  {
    *a1 = v3;
  }

  else
  {
    sub_1000238F8("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3HeaderAppend", 182, 84, 0, "curl_slist_append failed\n", v4, v5, v8);
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t sub_10001DF70(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 * a2;
  if ((*(a4 + 8) & 0x80000000) != 0)
  {
    v11 = 499;
    curl_easy_getinfo(*a4, CURLINFO_RESPONSE_CODE, &v11);
    v7 = v11;
    *(a4 + 8) = v11;
    if (v7 == 200)
    {
      if (*(a4 + 12))
      {
        *(a4 + 24) = *(a4 + 16);
      }
    }
  }

  v8 = *(a4 + 24);
  v9 = v6 - v8;
  if (v6 >= v8)
  {
    if (v8)
    {
      a1 += v8;
      *(a4 + 24) = 0;
    }

    else
    {
      v9 = v6;
    }

    sub_10001DC30(a1, v9, 1, *(a4 + 32));
  }

  else
  {
    *(a4 + 24) = v8 - v6;
  }

  return v6;
}

uint64_t sub_10001E030(unsigned int a1, char *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, const char **a7)
{
  v14 = *(a3 + 16);
  v60 = 0;
  if (a4)
  {
    v15 = *(a4 + 8);
  }

  else
  {
    v15 = -1;
  }

  v58 = 0uLL;
  v59 = 0;
  if (a5)
  {
    v58 = *a5;
    v59 = *(a5 + 2);
  }

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v16 = curl_easy_init();
  if (!v16)
  {
    v26 = __stderrp;
    v27 = "curl_easy_init failed\n";
    v28 = 22;
LABEL_42:
    fwrite(v27, v28, 1uLL, v26);
    goto LABEL_43;
  }

  if ((sub_10001DF08(&v60, "Content-Type:") & 0x80000000) != 0 || (sub_10001DF08(&v60, "Transfer-Encoding:") & 0x80000000) != 0 || (sub_10001DF08(&v60, "Accept: application/xml") & 0x80000000) != 0 || (v15 & 0x8000000000000000) == 0 && (sub_10001DDA0(&v60, "Content-Length: %zd", v15) & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  v17 = *(*(a3 + 16) + 2792);
  if (v17)
  {
    while ((sub_10001DF08(&v60, *v17) & 0x80000000) == 0)
    {
      v17 = *(v17 + 8);
      if (!v17)
      {
        goto LABEL_15;
      }
    }

    goto LABEL_43;
  }

LABEL_15:
  if (a7)
  {
    v18 = *a7;
    if (*a7)
    {
      v19 = a7 + 1;
      while ((sub_10001DF08(&v60, v18) & 0x80000000) == 0)
      {
        v20 = *v19++;
        v18 = v20;
        if (!v20)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_43;
    }
  }

LABEL_20:
  if (*v14 && (sub_10001E668(&v60, a1, a2, v14, a4) & 0x80000000) != 0)
  {
    v26 = __stderrp;
    v27 = "Failed to sign request\n";
    v28 = 23;
    goto LABEL_42;
  }

  v21 = curl_easy_setopt(v16, CURLOPT_URL, a2);
  v22 = curl_easy_setopt(v16, CURLOPT_HTTPHEADER, v60);
  v23 = curl_easy_setopt(v16, CURLOPT_BUFFERSIZE, 102400);
  v24 = (curl_easy_setopt(v16, CURLOPT_TCP_KEEPALIVE, 1) | v23 | v22 | v21) == 0;
  if (*(v14 + 2784) && curl_easy_setopt(v16, CURLOPT_USERAGENT, *(v14 + 2784)))
  {
    v24 = 0;
  }

  if (*(v14 + 2760) && curl_easy_setopt(v16, CURLOPT_PROXY, *(v14 + 2760)))
  {
    v24 = 0;
  }

  if (*(v14 + 2768) && curl_easy_setopt(v16, CURLOPT_PINNEDPUBLICKEY, *(v14 + 2768)))
  {
    v24 = 0;
  }

  if (*(v14 + 2776) && curl_easy_setopt(v16, CURLOPT_PROXY_PINNEDPUBLICKEY, *(v14 + 2776)))
  {
    v24 = 0;
  }

  if (*(v14 + 2800) && curl_easy_setopt(v16, CURLOPT_PROXYHEADER, *(v14 + 2800)))
  {
    v24 = 0;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      v31 = curl_easy_setopt(v16, CURLOPT_CUSTOMREQUEST, "GET");
      v25 = (curl_easy_setopt(v16, CURLOPT_FOLLOWLOCATION, 1) | v31) == 0;
    }

    else
    {
      if (a1)
      {
        goto LABEL_49;
      }

      v25 = curl_easy_setopt(v16, CURLOPT_PUT, 1) == CURLE_OK;
    }

    if (!v25)
    {
      v24 = 0;
    }

LABEL_49:
    if (!a4)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

  if (curl_easy_setopt(v16, CURLOPT_POST, 1))
  {
    v24 = 0;
  }

  if (a4)
  {
LABEL_54:
    v32 = curl_easy_setopt(v16, CURLOPT_READFUNCTION, sub_10001DCE8);
    v33 = curl_easy_setopt(v16, CURLOPT_READDATA, a4) | v32;
    goto LABEL_55;
  }

  v53 = curl_easy_setopt(v16, CURLOPT_POSTFIELDS, "");
  v33 = curl_easy_setopt(v16, CURLOPT_POSTFIELDSIZE, 0) | v53;
LABEL_55:
  if (v33)
  {
    v24 = 0;
  }

LABEL_57:
  if (a5)
  {
    *&v55 = v16;
    v57 = a5;
    DWORD2(v55) = -1;
    if (a7)
    {
      v34 = *a7;
      if (*a7)
      {
        v35 = 0;
        do
        {
          if (!strncmp(v34, "Range:", 6uLL))
          {
            v38 = *(v34 + 6);
            v37 = v34 + 6;
            v36 = v38;
            if (v38)
            {
              do
              {
                if (v36 < 0)
                {
                  if (!__maskrune(v36, 0x4000uLL))
                  {
                    break;
                  }
                }

                else if ((_DefaultRuneLocale.__runetype[v36] & 0x4000) == 0)
                {
                  break;
                }

                v39 = *++v37;
                v36 = v39;
              }

              while (v39);
            }

            if (!strncmp(v37, "bytes=", 6uLL))
            {
              v42 = *(v37 + 6);
              v41 = v37 + 6;
              v40 = v42;
              if (v42)
              {
                do
                {
                  if (v40 < 0)
                  {
                    if (!__maskrune(v40, 0x4000uLL))
                    {
                      break;
                    }
                  }

                  else if ((_DefaultRuneLocale.__runetype[v40] & 0x4000) == 0)
                  {
                    break;
                  }

                  v43 = *++v41;
                  v40 = v43;
                }

                while (v43);
              }

              HIDWORD(v55) = 1;
              *&v56 = strtoull(v41, 0, 0);
            }
          }

          v34 = a7[++v35];
        }

        while (v34);
      }
    }

    v44 = curl_easy_setopt(v16, CURLOPT_WRITEFUNCTION, sub_10001DF70);
    if (curl_easy_setopt(v16, CURLOPT_WRITEDATA, &v55) | v44)
    {
      v24 = 0;
    }
  }

  if (a6)
  {
    if (curl_easy_setopt(v16, CURLOPT_HEADERFUNCTION, sub_10001DC30))
    {
      v24 = 0;
    }

    if (curl_easy_setopt(v16, CURLOPT_HEADERDATA, a6))
    {
      goto LABEL_86;
    }
  }

  if (!v24)
  {
LABEL_86:
    v26 = __stderrp;
    v27 = "curl_easy_setopt failed\n";
    v28 = 24;
    goto LABEL_42;
  }

  v45 = curl_easy_perform(v16);
  if (v45 == CURLE_OK)
  {
    v54 = 499;
    curl_easy_getinfo(v16, CURLINFO_RESPONSE_CODE, &v54);
    if ((v54 - 400) <= 0xC7)
    {
      if (a1 != 1 || v54 != 416)
      {
        sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Perform", 407, 84, "HTTP %u\n", v50, v51, v52, v54);
        goto LABEL_43;
      }

      if (a5)
      {
        v29 = 0;
        *a5 = v58;
        *(a5 + 2) = v59;
        goto LABEL_44;
      }
    }

    v29 = 0;
    goto LABEL_44;
  }

  v46 = v45;
  curl_easy_strerror(v45);
  sub_100023A04("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3Common.c", "s3Perform", 385, 84, "> %d %s\n", v47, v48, v49, v46);
LABEL_43:
  v29 = 0xFFFFFFFFLL;
LABEL_44:
  curl_slist_free_all(v60);
  curl_easy_cleanup(v16);
  return v29;
}