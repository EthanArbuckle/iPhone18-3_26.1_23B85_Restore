uint64_t start()
{
  sub_100000FE0();
  v0 = objc_autoreleasePoolPush();
  dispatch_async(&_dispatch_main_q, &stru_100004108);
  objc_autoreleasePoolPop(v0);
  v1 = +[NSRunLoop currentRunLoop];
  [v1 run];

  return 0;
}

void sub_100000C5C(id a1)
{
  v1 = +[DEDDaemon sharedInstance];
  [v1 start];
}

void sub_100000CA4()
{
  bzero(v12, 0x400uLL);
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    if (qword_100008028 != -1)
    {
      sub_1000010C4();
    }

    v1 = qword_100008020;
    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_DEBUG))
    {
      sub_1000010D8(v1);
    }

    v2 = getuid();
    v3 = getpwuid(v2);
    if (!v3)
    {
      if (qword_100008028 != -1)
      {
        sub_10000111C();
      }

      if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
      {
        sub_100001454();
      }

LABEL_44:
      exit(1);
    }

    pw_dir = v3->pw_dir;
  }

  v4 = realpath_DARWIN_EXTSN(pw_dir, 0);
  if (!v4)
  {
    if (qword_100008028 != -1)
    {
      sub_10000111C();
    }

    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_1000013D0();
    }

    goto LABEL_44;
  }

  v5 = v4;
  if (!_set_user_dir_suffix() || !confstr(65537, v12, 0x400uLL))
  {
    if (qword_100008028 != -1)
    {
      sub_10000111C();
    }

    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_10000134C();
    }

    goto LABEL_44;
  }

  v6 = realpath_DARWIN_EXTSN(v12, 0);
  if (!v6)
  {
    if (qword_100008028 != -1)
    {
      sub_10000111C();
    }

    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_1000012C8();
    }

    goto LABEL_44;
  }

  v7 = v6;
  if (!confstr(65538, v12, 0x400uLL))
  {
    if (qword_100008028 != -1)
    {
      sub_10000111C();
    }

    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_100001244();
    }

    goto LABEL_44;
  }

  v8 = realpath_DARWIN_EXTSN(v12, 0);
  if (!v8)
  {
    if (qword_100008028 != -1)
    {
      sub_10000111C();
    }

    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_1000011C0();
    }

    goto LABEL_44;
  }

  v9 = v8;
  v11[1] = "HOME";
  v11[2] = v5;
  v11[3] = "TMPDIR";
  v11[4] = v7;
  v11[5] = "DARWIN_CACHE_DIR";
  v11[6] = v8;
  v11[7] = 0;
  v11[0] = 0;
  if (sandbox_init_with_parameters())
  {
    if (qword_100008028 != -1)
    {
      sub_10000111C();
    }

    v10 = qword_100008020;
    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_100001144(v11, v10);
    }

    goto LABEL_44;
  }

  free(v5);
  free(v7);
  free(v9);
}

void sub_100000FE0()
{
  if (_set_user_dir_suffix())
  {
    if (qword_100008028 != -1)
    {
      sub_1000010C4();
    }

    v0 = qword_100008020;
    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_DEBUG))
    {
      sub_100001564(v0);
    }
  }

  else
  {
    if (qword_100008028 != -1)
    {
      sub_1000010C4();
    }

    if (os_log_type_enabled(qword_100008020, OS_LOG_TYPE_ERROR))
    {
      sub_1000014D8();
    }
  }
}

void sub_100001144(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to enter sandbox: %{public}s", &v3, 0xCu);
}

void sub_1000011C0()
{
  v0 = *__error();
  sub_1000010B8();
  sub_1000010A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100001244()
{
  v0 = *__error();
  sub_1000010B8();
  sub_1000010A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000012C8()
{
  v0 = *__error();
  sub_1000010B8();
  sub_1000010A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000134C()
{
  v0 = *__error();
  sub_1000010B8();
  sub_1000010A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_1000013D0()
{
  v0 = *__error();
  sub_1000010B8();
  sub_1000010A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100001454()
{
  getuid();
  sub_1000010A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_1000014D8()
{
  v0 = __error();
  strerror(*v0);
  sub_1000010A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}