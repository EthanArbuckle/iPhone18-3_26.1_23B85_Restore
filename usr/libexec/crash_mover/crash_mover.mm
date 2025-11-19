void sub_100000BE0(const char *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (chdir(a1))
  {
    goto LABEL_57;
  }

  v51 = open(a1, 32);
  if (v51 < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = __error();
    v11 = strerror(*v10);
    buf.st_dev = 136315394;
    *&buf.st_mode = a1;
    WORD2(buf.st_ino) = 2080;
    *(&buf.st_ino + 6) = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not open and lock %s: %s. Proceeding with copy anyway.", &buf, 0x16u);
  }

  memset(&v69, 0, sizeof(v69));
  if (stat("/Library/Logs/CrashReporter/Baseband", &v69))
  {
    v50 = -1;
  }

  else
  {
    v50 = open("/Library/Logs/CrashReporter/Baseband", 32);
    if (v50 < 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = __error();
      v13 = strerror(*v12);
      buf.st_dev = 136315394;
      *&buf.st_mode = "/Library/Logs/CrashReporter/Baseband";
      WORD2(buf.st_ino) = 2080;
      *(&buf.st_ino + 6) = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not open and lock %s: %s. Proceeding with copy anyway.", &buf, 0x16u);
    }
  }

  v54 = v7;
  v62 = v7;
  v53 = v8;
  v57 = v8;
  v52 = v9;
  v59 = v9;
  v14 = +[NSFileManager defaultManager];
  v15 = [v14 stringWithFileSystemRepresentation:"." length:1];
  v58 = [v14 stringWithFileSystemRepresentation:"/.nofollow/private/var/mobile/Library/Logs/CrashReporter" length:56];
  v77 = 0;
  v63 = v14;
  v65 = v15;
  v16 = [v14 subpathsOfDirectoryAtPath:v15 error:&v77];
  v67 = v77;
  v60 = objc_alloc_init(NSMutableArray);
  v17 = [NSNumber numberWithInt:511];
  v56 = [NSDictionary dictionaryWithObjectsAndKeys:v17, NSFilePosixPermissions, 0];

  v18 = [NSNumber numberWithInt:438];
  v55 = [NSDictionary dictionaryWithObjectsAndKeys:v18, NSFilePosixPermissions, 0];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v19 = v16;
  v20 = [v19 countByEnumeratingWithState:&v73 objects:v82 count:16];
  v61 = v19;
  if (!v20)
  {
    v23 = v59;
    goto LABEL_47;
  }

  v21 = v20;
  v22 = *v74;
  v23 = v59;
  v24 = v65;
  do
  {
    v25 = 0;
    do
    {
      if (*v74 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v26 = *(*(&v73 + 1) + 8 * v25);
      memset(&buf, 0, sizeof(buf));
      v27 = objc_autoreleasePoolPush();
      v28 = [v24 stringByAppendingPathComponent:v26];
      if (!lstat([v28 fileSystemRepresentation], &buf))
      {
        v29 = buf.st_mode & 0xF000;
        if (v29 == 0x4000)
        {
          [v60 addObject:v28];
          goto LABEL_16;
        }

        if (v29 == 40960)
        {
          unlink([v28 fileSystemRepresentation]);
          goto LABEL_16;
        }

        if (v29 != 0x8000)
        {
          goto LABEL_16;
        }

        if (!v62 || ([v26 pathExtension], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v62, "containsObject:", v30), v30, v31))
        {
          v64 = [v26 stringByDeletingLastPathComponent];
          v32 = [v58 stringByAppendingPathComponent:?];
          if ([v23 length])
          {
            v33 = [v32 stringByAppendingPathComponent:v23];

            v32 = v33;
          }

          v66 = v32;
          if ([v63 fileExistsAtPath:v32])
          {
            v34 = v65;
            goto LABEL_31;
          }

          v72 = v67;
          v35 = [v63 createDirectoryAtPath:v32 withIntermediateDirectories:1 attributes:v56 error:&v72];
          v36 = v72;

          if (v35)
          {
            v67 = v36;
            v34 = v65;
            v32 = v66;
LABEL_31:
            v68 = [v34 stringByAppendingPathComponent:v26];
            v37 = [v26 lastPathComponent];
            v38 = [v32 stringByAppendingPathComponent:v37];

            if (v57)
            {
              v39 = [v38 stringByAppendingPathExtension:?];

              v38 = v39;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v78 = 138412546;
              *&v78[4] = v68;
              *&v78[12] = 2112;
              *&v78[14] = v38;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Moving '%@' -> '%@'", v78, 0x16u);
            }

            v71 = v67;
            v40 = [v63 moveItemAtPath:v68 toPath:v38 error:&v71];
            v36 = v71;

            if (v40)
            {
              v70 = v36;
              [v63 setAttributes:v55 ofItemAtPath:v38 error:&v70];
              v41 = v70;

              v36 = v41;
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *v78 = 138412802;
              *&v78[4] = v68;
              *&v78[12] = 2112;
              *&v78[14] = v38;
              *&v78[22] = 2112;
              *&v78[24] = v36;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to move log file '%@' to '%@': %@", v78, 0x20u);
            }
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *v78 = 138412546;
            *&v78[4] = v66;
            *&v78[12] = 2112;
            *&v78[14] = v36;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create log directory '%@': %@", v78, 0x16u);
          }

          v23 = v59;

          v67 = v36;
        }

        v24 = v65;
        v19 = v61;
      }

LABEL_16:

      objc_autoreleasePoolPop(v27);
      v25 = v25 + 1;
    }

    while (v21 != v25);
    v42 = [v19 countByEnumeratingWithState:&v73 objects:v82 count:16];
    v21 = v42;
  }

  while (v42);
LABEL_47:

  v43 = [[NSSortDescriptor alloc] initWithKey:@"length" ascending:0];
  v44 = [NSArray arrayWithObject:v43];
  [v60 sortUsingDescriptors:v44];

  v79 = 0u;
  v80 = 0u;
  memset(v78, 0, sizeof(v78));
  v45 = v60;
  v46 = [v45 countByEnumeratingWithState:v78 objects:&buf count:16];
  if (v46)
  {
    v47 = v46;
    v48 = **&v78[16];
    do
    {
      for (i = 0; i != v47; i = i + 1)
      {
        if (**&v78[16] != v48)
        {
          objc_enumerationMutation(v45);
        }

        rmdir([*(*&v78[8] + 8 * i) fileSystemRepresentation]);
      }

      v47 = [v45 countByEnumeratingWithState:v78 objects:&buf count:16];
    }

    while (v47);
  }

  if ((v50 & 0x80000000) == 0)
  {
    close(v50);
  }

  close(v51);
  v8 = v53;
  v7 = v54;
  v9 = v52;
LABEL_57:
}

BOOL sub_10000147C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_10000C138 != -1)
  {
    sub_100002A0C();
  }

  v5 = dispatch_semaphore_wait(v4, 0);
  v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Another instance of PLMovePowerlogsToCR() is in progress. Skipping", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Calling PLMovePowerlogsToCR()", buf, 2u);
    }

    v7 = qword_10000C130;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001650;
    v9[3] = &unk_100008398;
    v10 = v3;
    v11 = v4;
    dispatch_async(v7, v9);
  }

  return v5 == 0;
}

void sub_1000015E8(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.osanalytics.crash_mover.powerlog_mover", v3);
  v2 = qword_10000C130;
  qword_10000C130 = v1;
}

intptr_t sub_100001650(uint64_t a1)
{
  PLMovePowerlogsToCR();
  v2 = +[NSDate date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PLMovePowerlogsToCR() took %f seconds", &v6, 0xCu);
  }

  ADClientPushValueForDistributionKey();
  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001738(uint64_t a1, objc_class *a2, void *a3)
{
  v4 = a3;
  v5 = objc_alloc_init(a2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "requesting files from paired device on behalf of AppleCare profile", buf, 2u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001890;
  v8[3] = &unk_1000083C0;
  v6 = v4;
  v9 = v6;
  [v5 request:0 transferGroupWithOptions:&off_100008630 onComplete:v8];
  v7 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v6, v7) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "OSASyncProxy timed out", buf, 2u);
  }
}

void sub_100001890(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"complete";
    if (v4)
    {
      v5 = v4;
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "log transfer %@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100001954(void *a1, objc_class *a2)
{
  v3 = dlsym(a1, "kNSSAboutBatteryCurrentCapacityKey");
  if (v3)
  {
    v4 = v3;
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 0;
    v5 = dispatch_semaphore_create(0);
    v6 = [a2 alloc];
    v7 = &_dispatch_main_q;
    v8 = [v6 initWithQueue:&_dispatch_main_q];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100001C40;
    v15[3] = &unk_1000083E8;
    v17 = buf;
    v18 = v4;
    v9 = v5;
    v16 = v9;
    [v8 getAboutInfo:v15];
    v10 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v9, v10) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NanoSystemSettings timed out, no charging status available", &v14, 2u);
    }

    if (v20[24] == 1)
    {
      v11 = dlopen("/System/Library/PrivateFrameworks/OSASyncProxyClient.framework/OSASyncProxyClient", 4);
      if (v11)
      {
        Class = objc_getClass("OSASyncProxyClient");
        if (Class)
        {
          sub_100001738(Class, Class, v9);
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to dynamically link OSASyncProxyClient from OSASyncProxyClient", &v14, 2u);
        }

        dlclose(v11);
        goto LABEL_19;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v13 = "Unable to dynamically load OSASyncProxyClient framework";
        goto LABEL_15;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0;
      v13 = "No log transfer due to low-power status";
LABEL_15:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, &v14, 2u);
    }

LABEL_19:

    _Block_object_dispose(buf, 8);
    return;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to dynamically load NanoSystemSettings framework keys", buf, 2u);
  }
}

void sub_100001C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001C40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "NanoSystemSettings cannot determine charging status, error %@", &v9, 0xCu);
    }
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:**(a1 + 48)];
    v8 = [v7 intValue];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      LODWORD(v10) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Watch battery capacity is %d%%", &v9, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = v8 > 9;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100001DA0(uint64_t a1, void *a2)
{
  v2 = [a2 sharedInstance];
  v3 = [v2 isPaired];

  if (!v3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v9 = 0;
    v7 = "device is not paired";
    v8 = &v9;
LABEL_9:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    return;
  }

  v4 = dlopen("/System/Library/PrivateFrameworks/NanoSystemSettings.framework/NanoSystemSettings", 4);
  if (!v4)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v7 = "Unable to dynamically load NanoSystemSettings framework";
    v8 = buf;
    goto LABEL_9;
  }

  v5 = v4;
  Class = objc_getClass("NSSManager");
  if (Class)
  {
    sub_100001954(v5, Class);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to dynamically link NSSManager from NanoSystemSettings", v11, 2u);
  }

  dlclose(v5);
}

void sub_100001EDC()
{
  if (MGGetBoolAnswer())
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v6 = 0;
    v0 = "<rdar://problem/27120466> On Internal builds, transfer watch logs only on Bridge button press, NOT on Host Sync";
    v1 = &v6;
    v2 = OS_LOG_TYPE_INFO;
    goto LABEL_4;
  }

  if (MGGetBoolAnswer())
  {
    v3 = dlopen("/System/Library/PrivateFrameworks/NanoRegistry.framework/NanoRegistry", 4);
    if (v3)
    {
      v4 = v3;
      Class = objc_getClass("NRPairedDeviceRegistry");
      if (Class)
      {
        sub_100001DA0(Class, Class);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to dynamically link NRPairedDeviceRegistry from NanoRegistry", buf, 2u);
      }

      dlclose(v4);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v0 = "Unable to dynamically load NanoRegistry framework";
      v1 = &v7;
      v2 = OS_LOG_TYPE_DEFAULT;
LABEL_4:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, v0, v1, 2u);
    }
  }
}

uint64_t sub_10000201C()
{
  v0 = [OSADefaults objectForKey:@"crash_moverDisabledSince"];
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = v0;
      +[NSDate timeIntervalSinceReferenceDate];
      v3 = v2;
      [v1 timeIntervalSinceReferenceDate];
      if (v3 - v4 < 3600.0)
      {

        v5 = 1;
        goto LABEL_11;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "crash_mover was disabled over an hour ago: re-enabling crash_mover", v7, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002A20();
    }

    [OSADefaults removeObjectForKey:@"crash_moverDisabledSince"];
  }

  v5 = 0;
LABEL_11:

  return v5;
}

void sub_100002148(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[NSDate date];
  if (qword_10000C148 != -1)
  {
    sub_100002A64();
  }

  if ([v3 containsObject:@"powerlog"])
  {
    v6 = sub_10000147C(v5, qword_10000C140);
  }

  else
  {
    v6 = 0;
  }

  sub_100000BE0("/Library/Logs/CrashReporter", v4, 0, 0);
  sub_100000BE0("/var/wireless/Library/Logs/CrashReporter/CrashTracer", v4, 0, 0);
  sub_100000BE0("/var/wireless/Library/Logs/CrashReporter", v4, 0, 0);
  sub_100000BE0("/var/wireless/awdd/metriclogs", v4, 0, 0);
  sub_100000BE0("/var/wireless/awdd/anonlogs", v4, @"anon", 0);
  sub_100000BE0("/var/networkd/Library/Logs/CrashReporter", v4, 0, 0);

  if ([v3 containsObject:@"lockdown"])
  {
    sub_100001EDC();
  }

  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"powerlogWaitDurationSecs", @"com.apple.crash_mover", &keyExistsAndHasValidFormat);
  v8 = +[NSDate date];
  [v8 timeIntervalSinceDate:v5];
  v10 = AppIntegerValue - v9;

  if (v10 > 0.0 && v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = AppIntegerValue;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "waiting max %ld secs for PLMovePowerlogsToCR() to complete", buf, 0xCu);
    }

    v12 = qword_10000C140;
    v13 = dispatch_time(0, (v10 * 1000000000.0));
    if (dispatch_semaphore_wait(v12, v13))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = AppIntegerValue;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "PLMovePowerlogsToCR() timed out after %ld secs", buf, 0xCu);
      }
    }

    else
    {
      dispatch_semaphore_signal(qword_10000C140);
    }
  }
}

void sub_100002400(id a1)
{
  qword_10000C140 = dispatch_semaphore_create(1);

  _objc_release_x1();
}

void sub_100002438(void *a1)
{
  xdict = a1;
  v1 = xpc_dictionary_get_value(xdict, "Extensions");
  v2 = v1;
  if (v1 && xpc_get_type(v1) == &_xpc_type_array)
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v3 = 0;
  }

  v4 = xpc_dictionary_get_value(xdict, "options");
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_array)
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v6 = 0;
  }

  sub_100002148(v3, v6);
  v7 = xpc_dictionary_get_remote_connection(xdict);
  reply = xpc_dictionary_create_reply(xdict);
  v9 = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "Success", 1);
    xpc_connection_send_message(v7, v9);
  }
}

void sub_100002570(void *a1)
{
  connection = a1;
  xpc_connection_set_event_handler(connection, &stru_100008448);
  xpc_connection_resume(connection);
}

void sub_1000025BC(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  type = xpc_get_type(v2);
  if (type != &_xpc_type_dictionary)
  {
    if (v2 == &_xpc_error_connection_invalid || type != &_xpc_type_error)
    {
      goto LABEL_24;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002A78(v2);
    }

LABEL_9:
    exit(1);
  }

  if (sub_10000201C())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002B4C();
    }
  }

  else
  {
    cf = 0;
    v6 = lockdown_copy_checkin_info();
    if (v6 != 8)
    {
      if (v6)
      {
        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "crash_mover is handling host-side invocation", buf, 2u);
      }

      *buf = 0;
      v12 = kLockdownCheckinConnectionInfoKey;
      v13 = cf;
      v7 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v8 = secure_lockdown_checkin();
      if (cf)
      {
        CFRelease(cf);
      }

      if (!v8)
      {
        out_token = 0;
        notify_register_check("com.apple.crash_mover", &out_token);
        notify_set_state(out_token, 1uLL);
        notify_post("com.apple.crash_mover");
        sub_100002148(0, &off_100008658);
        notify_set_state(out_token, 0);
        notify_post("com.apple.crash_mover");
        notify_cancel(out_token);
        lockdown_send();
        lockdown_disconnect();
        *buf = 0;

        goto LABEL_24;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100002B04();
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "crash_mover is handling device-side invocation", buf, 2u);
    }

    sub_100002438(v2);
  }

LABEL_24:
  objc_autoreleasePoolPop(v3);
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "crash_mover is launching", &v4, 2u);
  }

  mach_service = xpc_connection_create_mach_service("com.apple.crash_mover", &_dispatch_main_q, 1uLL);
  if (!mach_service)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315138;
      v5 = "com.apple.crash_mover";
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Couldn't create the listenerConnection for %s", &v4, 0xCu);
    }

    exit(1);
  }

  v2 = mach_service;
  xpc_connection_set_event_handler(mach_service, &stru_100008468);
  xpc_connection_resume(v2);
  v3 = +[NSRunLoop currentRunLoop];
  [v3 run];

  __assert_rtn("main", "crash_mover.m", 483, "false");
}

void sub_100002978(id a1, OS_xpc_object *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    sub_100002570(v3);
  }

  else if (type == &_xpc_type_error)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100002B90(v3);
    }

    exit(1);
  }
}

void sub_100002A78(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_100002A00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_100002B90(void *a1)
{
  xpc_dictionary_get_string(a1, _xpc_error_key_description);
  sub_100002A00();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}