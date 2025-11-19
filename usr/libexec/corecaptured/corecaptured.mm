uint64_t start()
{
  pthread_setname_np("com.apple.corecaptured.main");
  signal(2, sub_100000758);
  signal(3, sub_100000758);
  signal(15, sub_100000758);
  signal(1, sub_100000758);
  signal(10, sub_100000758);
  if (CoreCaptureStart())
  {
    dispatch_main();
  }

  return 0xFFFFFFFFLL;
}

void (__cdecl *sub_100000758(void (__cdecl *result)(int)))(int)
{
  if ((result - 2) < 2 || result == 15)
  {
    goto LABEL_6;
  }

  if (result == 10)
  {
    v2 = coreCaptureOsLog;
    if (coreCaptureOsLog)
    {
      if (!os_log_type_enabled(coreCaptureOsLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v3 = v2;
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v3 = &_os_log_default;
    }

    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIGBUS DEATH\n", buf, 2u);
LABEL_15:
    if (glog_fd)
    {
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v13 = v4;
      v14 = v4;
      v11 = v4;
      v12 = v4;
      v9 = v4;
      v10 = v4;
      *buf = v4;
      v8 = v4;
      memset(&v6, 0, sizeof(v6));
      v5 = 0xAAAAAAAAAAAAAAAALL;
      time(&v5);
      localtime_r(&v5, &v6);
      strftime(buf, 0x80uLL, "%b %d %H:%M:%S", &v6);
      dprintf(glog_fd, "%s ", buf);
      dprintf(glog_fd, "SIGBUS DEATH\n");
    }

LABEL_6:
    CoreCaptureStop();
    signal(2, 1);
    signal(3, 1);
    signal(15, 1);
    signal(1, 1);
    return signal(10, 1);
  }

  return result;
}