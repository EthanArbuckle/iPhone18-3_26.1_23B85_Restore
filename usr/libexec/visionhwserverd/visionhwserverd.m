uint64_t start()
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "visionhwserverd is launching...", buf, 2u);
  }

  kdebug_trace();
  _set_user_dir_suffix();
  v0 = NSTemporaryDirectory();
  Current = CFRunLoopGetCurrent();
  *buf = 0;
  v17 = buf;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003568;
  v15[3] = &unk_100004110;
  v15[4] = buf;
  v15[5] = Current;
  v2 = objc_retainBlock(v15);
  signal(1, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 1uLL, 0, &_dispatch_main_q);
  v4 = qword_100008000;
  qword_100008000 = v3;

  dispatch_source_set_event_handler(qword_100008000, v2);
  dispatch_activate(qword_100008000);
  signal(13, 1);
  v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xDuLL, 0, &_dispatch_main_q);
  v6 = qword_100008008;
  qword_100008008 = v5;

  dispatch_source_set_event_handler(qword_100008008, v2);
  dispatch_activate(qword_100008008);
  signal(15, 1);
  v7 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v8 = qword_100008010;
  qword_100008010 = v7;

  dispatch_source_set_event_handler(qword_100008010, v2);
  dispatch_activate(qword_100008010);
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "VisionHWA XPCService", v20, 2u);
    }

    v9 = dlopen("/System/Library/PrivateFrameworks/VisionHWAccelerationServices.framework/VisionHWAccelerationServices", 4);
    if (v9)
    {
      v10 = dlsym(v9, "VisionHWServerStart");
      if (v10)
      {
        v10();
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v12 = dlerror();
        sub_1000035A0(v12, v20);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = dlerror();
      sub_100003600(v11, v20);
    }
  }

  while ((v17[24] & 1) == 0)
  {
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0e10, 0);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "visionhwserverd exiting...", v14, 2u);
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

void sub_100003528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10000358C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100003568(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    CFRunLoopStop(v2);
  }
}

void sub_1000035A0(uint64_t a1, uint8_t *buf)
{
  *buf = 136315394;
  *(buf + 4) = "VisionHWServerStart";
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not find '%s': %s", buf, 0x16u);
}

void sub_100003600(uint64_t a1, uint8_t *buf)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not load VisionHWAccelerationServices framework: %s", buf, 0xCu);
}