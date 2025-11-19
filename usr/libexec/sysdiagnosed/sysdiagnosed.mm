void sub_100007020(id a1)
{
  qword_1000C0FF8 = objc_alloc_init(SystemDiagnosticBT);

  _objc_release_x1();
}

void sub_10000737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100007394(uint64_t a1)
{
  result = [*(a1 + 32) btSession];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_100007674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000768C(uint64_t a1)
{
  v2 = [*(a1 + 32) btSession];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 triggerExposureNotificationLogs];
  }

  else
  {
    result = [v3 setWaitingToCaptureExposureNotificationLogs:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_100007F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100007FAC(uint64_t a1)
{
  v2 = [*(a1 + 32) btSession];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 triggerAirPodLogsIfConnected];
  }

  else
  {
    result = [v3 setWaitingToCaptureAirPodLogs:1];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void sub_1000082EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008308(uint64_t a1)
{
  v2 = objc_alloc_init(CBUserController);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000083BC;
  v5[3] = &unk_1000A1038;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 appleAudioAccessoryLimitedLoggingWithCompletion:v5];
}

void sub_1000083BC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) accessoryLogSubsystem];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [v5 localizedDescription];
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CBUserController returned error for limited logging check, assuming not enabled: %@", buf, 0xCu);
    }

    v9 = +[SDResourceManager sharedResourceManager];
    [v9 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

    v10 = +[SDResourceManager sharedResourceManager];
    v11 = [v5 localizedDescription];
    [v10 stdoutWrite:{@"CBUserController returned error for limited logging check, assuming not enabled: %@", v11}];

    v12 = +[SDResourceManager sharedResourceManager];
    v13 = [v5 localizedDescription];
    [v12 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"CBUserController returned error for limited logging check, assuming not enabled: %@", v13}];
  }

  else
  {
    if (v7)
    {
      *buf = 67109120;
      LODWORD(v18) = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CBUserController returned limited logging value: %d", buf, 8u);
    }

    v14 = +[SDResourceManager sharedResourceManager];
    [v14 stdoutWrite:{@"Subsystem: %s; Category: %s; Log: ", "remoteSysdiagnose", "AccessoryLogSubsystem"}];

    v15 = +[SDResourceManager sharedResourceManager];
    [v15 stdoutWrite:{@"CBUserController returned limited logging value: %d", a2}];

    v16 = +[SDResourceManager sharedResourceManager];
    [v16 logWithSubsystem:"remoteSysdiagnose" category:"AccessoryLogSubsystem" msg:{@"CBUserController returned limited logging value: %d", a2}];

    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100009B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[SystemDiagnosticBT sharedInstance];
  [v6 sessionEvent:a1 event:a2 result:a3];
}

void sub_100009BE8(id a1)
{
  if (&_BTAccessoryManagerGetDefault && &_BTLocalDeviceGetDefault && &_BTAccessoryManagerRegisterCustomMessageClient && &_BTLocalDeviceDumpExposureNotificationDatabase && &_BTSessionAttachWithQueue && &_BTAccessoryManagerDeregisterCustomMessageClient)
  {
    if (&_BTSessionDetachWithQueue)
    {
      byte_1000C1008 = 1;
    }
  }
}

void sub_100009C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = +[SystemDiagnosticBT sharedInstance];
  [v7 logCompletionHandler:a4 size:a5];
}

BOOL sub_100009E38(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSError *)v3 localizedDescription];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@\n", buf, 0xCu);
  }

  v5 = +[SDResourceManager sharedResourceManager];
  v6 = [(NSError *)v3 localizedDescription];
  [v5 log:{@"%@\n", v6}];

  return 1;
}

BOOL sub_10000C2C4(id a1, NSURL *a2, NSError *a3)
{
  v3 = a3;
  v4 = sub_1000278E8();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(NSError *)v3 localizedDescription];
    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Error expanding user home directories: %@\n", buf, 0xCu);
  }

  v6 = +[SDResourceManager sharedResourceManager];
  v7 = [(NSError *)v3 localizedDescription];
  [v6 logWithSubsystem:"com.apple.sysdiagnose" category:"containers" msg:{@"Error expanding user home directories: %@\n", v7}];

  return 1;
}

void sub_10000E6C0(id a1)
{
  v1 = objc_alloc_init(SDResourceManager);
  v2 = qword_1000C1018;
  qword_1000C1018 = v1;

  if (qword_1000C1018)
  {
    v3 = sub_100047C94();
    v4 = qword_1000C1018;

    [v4 setIsDaemon:v3];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create SDResourceManager singleton.", v5, 2u);
  }
}

void sub_100011B10(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}