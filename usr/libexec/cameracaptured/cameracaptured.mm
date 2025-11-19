uint64_t start()
{
  [NSError _setFileNameLocalizationEnabled:0];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cameracaptured is launching...", buf, 2u);
  }

  Current = CFRunLoopGetCurrent();
  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 0;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100000F1C;
  handler[3] = &unk_100004198;
  handler[4] = buf;
  handler[5] = Current;
  _set_user_dir_suffix();
  for (i = 0; i != 3; ++i)
  {
    v2 = dword_1000012B8[i];
    signal(v2, 1);
    v3 = dispatch_source_create(&_dispatch_source_type_signal, v2, 0, &_dispatch_main_q);
    qword_100008008[i] = v3;
    dispatch_source_set_event_handler(v3, handler);
    dispatch_activate(qword_100008008[i]);
  }

  if (_os_feature_enabled_impl())
  {
    FigCommonMediaProcessInitialization();
    FigSandboxRegistrationServerStart();
    setiopolicy_np(9, 0, 1);
    v4 = pthread_set_fixedpriority_self();
    *__relative_priority = 0;
    v5 = pthread_self();
    if (pthread_get_qos_class_np(v5, &__relative_priority[1], __relative_priority))
    {
      v6 = 0;
    }

    else
    {
      v6 = pthread_set_qos_class_self_np(QOS_CLASS_USER_INITIATED, 0) == 0;
    }

    getpid();
    proc_disable_wakemon();
    getpid();
    proc_disable_cpumon();
    out_token = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100000F40;
    v10[3] = &unk_1000041C0;
    v10[4] = handler;
    notify_register_dispatch("AppleLanguagePreferencesChangedNotification", &out_token, &_dispatch_main_q, v10);
    if (&_MSNMonitorStartCam)
    {
      MSNMonitorStartCam();
    }

    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cameracaptured servers starting", v9, 2u);
    }

    v7 = objc_autoreleasePoolPush();
    FigCaptureMemoryReporterStart();
    FigExternalStorageDeviceManagerServerStart();
    FigCapturePreloadShaders();
    FigCaptureSourceServerStart();
    FigCameraViewfinderServerStart();
    FigCaptureSessionServerStart();
    FigFlashlightServerStart();
    FigCaptureDeferredContainerManagerServerStart();
    FigVirtualCaptureCardServerStart();
    FigCaptureTempFileManagerStart();
    objc_autoreleasePoolPop(v7);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cameracaptured servers have finished starting", v9, 2u);
    }

    if (gGMFigKTraceEnabled == 1)
    {
      kdebug_trace();
    }

    if (v6)
    {
      pthread_set_qos_class_self_np(__relative_priority[1], __relative_priority[0]);
    }

    if (!v4)
    {
      pthread_set_timeshare_self();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "cameracaptured has finished launching", v9, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100000FB8();
  }

  while ((v15[24] & 1) == 0)
  {
    CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0e10, 0);
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

void sub_100000F1C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    CFRunLoopStop(v2);
  }
}

uint64_t sub_100000F40(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "User's preferred language has changed.  Exiting...", v3, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}