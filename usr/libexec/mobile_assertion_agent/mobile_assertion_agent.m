void start()
{
  v0 = sub_100001738();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "Starting up", v4, 2u);
  }

  v1 = dispatch_get_global_queue(0, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);

  dispatch_source_set_event_handler(v2, &stru_100004278);
  dispatch_resume(v2);
  xpc_track_activity();
  mach_service = xpc_connection_create_mach_service("com.apple.mobile.assertion_agent", &_dispatch_main_q, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_1000042B8);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

void sub_100000924(id a1)
{
  v1 = sub_100001738();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "Got SIGTERM, exiting now.", v2, 2u);
  }

  exit(0);
}

void sub_100000984(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v6 = v2;
    xpc_connection_set_target_queue(v6, 0);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100000A94;
    handler[3] = &unk_1000042E0;
    v9 = v6;
    v7 = v6;
    xpc_connection_set_event_handler(v7, handler);
    xpc_connection_resume(v7);
  }

  else
  {
    v3 = xpc_copy_description(v2);
    if (v3)
    {
      v4 = v3;
      v5 = sub_100001738();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_1000019CC(v4, v5);
      }

      free(v4);
    }
  }
}

void sub_100000A94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 == &_xpc_error_connection_invalid)
  {
    goto LABEL_23;
  }

  v4 = os_transaction_create();
  xpc_connection_cancel(*(a1 + 32));
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  value = 0;
  theDict = 0;
  v6 = lockdown_copy_checkin_info();
  if (v6)
  {
    v7 = v6;
    v8 = sub_100001738();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v7;
      v9 = "Unable to copy lockdown checkin info: %d";
      v10 = v8;
      v11 = 8;
LABEL_5:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v12 = Mutable;
      CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, value);
      v14 = secure_lockdown_checkin();
      v15 = sub_100001738();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Lockdown checkin did not provide connection info: %d", buf, 8u);
      }

      goto LABEL_14;
    }

    v8 = sub_100001738();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Could not create dictionary.";
      v10 = v8;
      v11 = 2;
      goto LABEL_5;
    }
  }

  v12 = 0;
LABEL_14:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v17)
  {
    lockdown_disconnect();
  }

  if (value)
  {
    CFRelease(value);
  }

  objc_autoreleasePoolPop(v5);

LABEL_23:
}

id sub_100001738()
{
  if (qword_100008008 != -1)
  {
    sub_100001B9C();
  }

  v1 = qword_100008000;

  return v1;
}

void sub_10000177C(id a1)
{
  qword_100008000 = os_log_create("com.apple.mobile.assertion_agent", "main");

  _objc_release_x1();
}

uint64_t sub_1000017C0(uint64_t a1)
{

  return _lockdown_send_message(v1, a1, 200);
}

void sub_1000017E0(uint64_t a1, const void *a2)
{
  v7 = a2;
  keys = @"ErrorKey";
  if (a1)
  {
    if (a2)
    {
      v3 = CFDictionaryCreate(kCFAllocatorDefault, &keys, &v7, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v3)
      {
        v4 = sub_1000017C0(v3);
        if (v4)
        {
          v5 = v4;
          v6 = sub_100001738();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v10 = v5;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "lockdown_send_message() failed: %d", buf, 8u);
          }
        }

        CFRelease(v2);
      }
    }
  }
}

void sub_1000018E4()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v2 = sub_1000017C0(Mutable);
    if (v2)
    {
      v3 = v2;
      v4 = sub_100001738();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5[0] = 67109120;
        v5[1] = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "lockdown_send_message() failed: %d", v5, 8u);
      }
    }

    CFRelease(v0);
  }
}

void sub_1000019CC(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Got a '%s'. Returning", &v2, 0xCu);
}

void sub_100001A44(CFDictionaryRef *a1, NSObject *a2)
{
  Value = CFDictionaryGetValue(*a1, kLockdownCheckinPath);
  v4 = 138412290;
  v5 = Value;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Checked in at path '%@'", &v4, 0xCu);
}

void sub_100001AE0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Connection closed for client %@.", &v2, 0xCu);
}