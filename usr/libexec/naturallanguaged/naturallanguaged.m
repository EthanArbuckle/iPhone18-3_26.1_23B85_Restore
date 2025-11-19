uint64_t start()
{
  bzero(v9, 0x400uLL);
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100000BA8();
    }

    v1 = getuid();
    v2 = getpwuid(v1);
    if (!v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100000D70();
      }

      exit(1);
    }

    pw_dir = v2->pw_dir;
  }

  v3 = realpath_DARWIN_EXTSN(pw_dir, 0);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000CF0();
    }

    exit(1);
  }

  if (!_set_user_dir_suffix() || !confstr(65537, v9, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000C70();
    }

    exit(1);
  }

  v4 = realpath_DARWIN_EXTSN(v9, 0);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000BF0();
    }

    exit(1);
  }

  free(v4);
  free(v3);
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(TCTextServer);
  v7 = [[TCXPCServer alloc] initWithTextServer:v6];
  [v7 run];

  objc_autoreleasePoolPop(v5);
  return 0;
}

void sub_100000B8C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}