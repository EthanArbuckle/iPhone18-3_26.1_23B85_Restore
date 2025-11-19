void start()
{
  sub_100000A94();
  v0 = objc_autoreleasePoolPush();
  NSLog(@"inputanalyticsd started!");
  +[IAServerStats logStart];
  v1 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  dispatch_source_set_event_handler(v1, &stru_100004128);
  dispatch_resume(v1);
  signal(15, 1);
  setlinebuf(__stdoutp);
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(IASStandaloneServer);
  v4 = qword_100008010;
  qword_100008010 = v3;

  objc_autoreleasePoolPop(v2);
  NSLog(@"inputanalyticsd dispatching main");
  dispatch_main();
}

void sub_100000A94()
{
  bzero(v7, 0x400uLL);
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100000C48();
    }

    v1 = getuid();
    v2 = getpwuid(v1);
    if (!v2)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100000E04();
      }

LABEL_19:
      exit(1);
    }

    pw_dir = v2->pw_dir;
  }

  v3 = realpath_DARWIN_EXTSN(pw_dir, 0);
  if (!v3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000D88();
    }

    goto LABEL_19;
  }

  v4 = v3;
  if (!_set_user_dir_suffix() || !confstr(65537, v7, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000D0C();
    }

    goto LABEL_19;
  }

  v5 = realpath_DARWIN_EXTSN(v7, 0);
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000C90();
    }

    goto LABEL_19;
  }

  v6 = v5;
  free(v4);
  free(v6);
}

void sub_100000C00(id a1)
{
  NSLog(@"inputanalyticsd shutting down");
  +[IAServerStats logShutdown];
  exit(0);
}

void sub_100000C2C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}