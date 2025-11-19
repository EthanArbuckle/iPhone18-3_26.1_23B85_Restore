void sub_100000C60(uint64_t a1, _xpc_connection_s *object)
{
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    v5 = *(*(a1 + 32) + 24);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = sub_100001368;
    v24 = sub_1000014F8;
    v25 = 0;
    v6 = (*(v5 + 16))();
    v21[5] = v6;
    v7 = v6;
    if (v21[5])
    {
      [*(*(a1 + 32) + 32) addObject:?];
      v8 = v21[5];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100003BA4;
      v19[3] = &unk_100008520;
      v19[4] = *(a1 + 32);
      v19[5] = &v20;
      [v8 addInvalidationHandler:v19];
      [v21[5] start:*(a1 + 40)];
    }

    else
    {
      xpc_connection_cancel(object);
    }

    _Block_object_dispose(&v20, 8);
    return;
  }

  if (xpc_get_type(object) != &_xpc_type_error)
  {
    goto LABEL_3;
  }

  if (object != &_xpc_error_connection_invalid)
  {
    if (object == &_xpc_error_termination_imminent)
    {
      return;
    }

LABEL_3:
    v4 = xpc_copy_description(object);
    CFLog();
    if (v4)
    {

      free(v4);
    }

    return;
  }

  ++*(*(a1 + 32) + 52);
  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  if (v10)
  {
    xpc_release(v10);
    v9 = *(a1 + 32);
  }

  *(v9 + 8) = 0;
  v11 = [*(a1 + 32) __invalidate];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v12)
  {
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v11);
        }

        (*(*(*(&v15 + 1) + 8 * i) + 16))();
      }

      v12 = [v11 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v12);
  }
}

ClientOfLocalNoteServer *sub_100000FB8(uint64_t a1, uint64_t a2)
{
  v2 = [[ClientOfLocalNoteServer alloc] initWithClientConnection:a2 configuration:*(a1 + 32)];

  return v2;
}

void sub_100001004(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_BOOL(object, "com.apple.NSXPC.msg_needs_ack"))
    {
      xpc_dictionary_set_value(object, "com.apple.NSXPC.msg_needs_ack", 0);
      reply = xpc_dictionary_create_reply(object);
      if (reply)
      {
        v6 = reply;
        xpc_connection_send_message(*(a1 + 32), reply);
        xpc_release(v6);
      }
    }

    v7 = *(*(a1 + 40) + 24);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }

  else if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (object == &_xpc_error_connection_invalid)
    {
      ++*(*(a1 + 40) + 52);
      v9 = *(a1 + 40);
      v10 = *(v9 + 8);
      if (v10)
      {
        xpc_release(v10);
        v9 = *(a1 + 40);
      }

      *(v9 + 8) = 0;
      v11 = [*(a1 + 40) __invalidate];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v11);
            }

            (*(*(*(&v18 + 1) + 8 * i) + 16))();
          }

          v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }

    else if (object == &_xpc_error_connection_interrupted)
    {
      if ((*(a1 + 48) & 0xFFFFFFFE) == 4)
      {
        v16 = *(*(a1 + 40) + 8);
        if (v16)
        {

          xpc_connection_cancel(v16);
        }
      }
    }

    else if (object == &_xpc_error_termination_imminent)
    {
      [*(a1 + 40) __terminationImminent];
      v17 = *(a1 + 40);
      CFLog();
    }

    else
    {
      v4 = xpc_copy_description(object);
      CFLog();
      if (v4)
      {

        free(v4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100001E20(NSObject *a1, uint64_t a2)
{
  v3 = [*(a2 + 8) allClients];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = v3;
  result = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
        {
          v14 = [objc_msgSend(v9 "processName")];
          v15 = *(v9 + 72);
          *buf = 136446466;
          v30 = v14;
          v31 = 1024;
          v32 = v15;
          _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "Registrations: <%{public}s (%d)>", buf, 0x12u);
        }

        v10 = *(v9 + 24);
        v20 = _NSConcreteStackBlock;
        v21 = 3221225472;
        v22 = sub_1000020F4;
        v23 = &unk_1000083E8;
        v24 = a1;
        CFXNotificationRegistrarEnumerate();
        if (xpc_array_get_count(*(v9 + 32)))
        {
          v11 = *(v9 + 32);
          v12 = _CFXPCCreateCFObjectFromXPCObject();
          if (v12)
          {
            v13 = v12;
            if (os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v30 = v13;
              _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "    Message Queue: %{public}@", buf, 0xCu);
            }

            CFRelease(v13);
          }
        }

        if ((*(v9 + 64) & 0x8000000000000000) == 0)
        {
          if (sandbox_check_by_reference() && os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
          {
            sub_100004530(&v18, v19, a1);
          }

          if ((*(v9 + 64) & 0x8000000000000000) == 0 && !sandbox_check_by_reference() && os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG))
          {
            sub_100004570(&v16, v17, a1);
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_1000020F4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000045B0(a2, v3);
  }
}

void sub_1000023F0(uint64_t a1, uint64_t a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (*a2)
  {
    xpc_dictionary_set_string(v4, "name", [*a2 UTF8String]);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    xpc_dictionary_set_string(v4, "object", [v5 UTF8String]);
  }

  xpc_dictionary_set_int64(v4, "token", *(a2 + 48));
  xpc_dictionary_set_int64(v4, "options", *(a2 + 24));
  xpc_array_append_value(*(a1 + 32), v4);

  xpc_release(v4);
}

void sub_100002714(uint64_t a1, void *a2)
{
  v4 = (a1 + 32);
  if ([*(a1 + 32) isLoginWindow])
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      v6 = v5;
      v36 = v5;
      CFLog();
      CFRelease(v6);
    }
  }

  string = xpc_dictionary_get_string(a2, "method");
  if (!string)
  {
    return;
  }

  v8 = string;
  if (!strcmp(string, "post"))
  {
    if (xpc_dictionary_get_uint64(a2, "version") == 1)
    {
      value = xpc_dictionary_get_value(a2, "userinfo");
      if (value && (*(*v4 + 64) & 0x8000000000000000) == 0 && sandbox_check_by_reference())
      {
        if (qword_10000CC48 != -1)
        {
          sub_100004668();
        }

        v11 = qword_10000CC50;
        if (os_log_type_enabled(qword_10000CC50, OS_LOG_TYPE_ERROR))
        {
          sub_10000467C((a1 + 32), v11);
        }
      }

      else
      {
        v19 = [*(*(a1 + 40) + 8) allClients];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v40;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v40 != v22)
              {
                objc_enumerationMutation(v19);
              }

              [*(*(&v39 + 1) + 8 * i) handlePost:a2 userInfo:value];
            }

            v21 = [v19 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v21);
        }
      }
    }

    return;
  }

  if (strcmp(v8, "register"))
  {
    if (!strcmp(v8, "unregister"))
    {
      if (xpc_dictionary_get_uint64(a2, "version") == 1)
      {
        v17 = xpc_dictionary_get_value(a2, "tokens");
        if (v17)
        {
          v18 = v17;
          [+[ClientOfLocalNoteServer monitor](ClientOfLocalNoteServer forward:"forward:", a2];
          applier[0] = _NSConcreteStackBlock;
          applier[1] = 3221225472;
          applier[2] = sub_10000322C;
          applier[3] = &unk_100008488;
          applier[4] = *v4;
          xpc_array_apply(v18, applier);
        }
      }
    }

    else if (!strcmp(v8, "suspend"))
    {
      if (xpc_dictionary_get_uint64(a2, "version") == 1)
      {
        v24 = *(*v4 + 72);
        *(*v4 + 40) = 1;
      }
    }

    else if (!strcmp(v8, "unsuspend"))
    {
      if (xpc_dictionary_get_uint64(a2, "version") == 1)
      {
        v25 = *(*v4 + 72);
        *(*v4 + 40) = 0;
        v26 = *v4;
        v27 = *(*v4 + 32);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100003320;
        v37[3] = &unk_100008488;
        v37[4] = v26;
        xpc_array_apply(v27, v37);
        xpc_release(*(*v4 + 32));
        *(*v4 + 32) = xpc_array_create(0, 0);
      }
    }

    else if (!strcmp(v8, "monitor"))
    {
      v35 = *v4;

      [v35 startMonitoring];
    }

    else if (!strcmp(v8, "dump"))
    {
      v9 = *v4;

      [v9 dump];
    }

    return;
  }

  if (xpc_dictionary_get_uint64(a2, "version") != 1)
  {
    return;
  }

  [+[ClientOfLocalNoteServer monitor](ClientOfLocalNoteServer forward:"forward:", a2];
  v12 = xpc_dictionary_get_string(a2, "name");
  v13 = xpc_dictionary_get_string(a2, "object");
  v14 = v13;
  if (v12)
  {
    v15 = CFStringCreateWithCString(kCFAllocatorSystemDefault, v12, 0x8000100u);
    if (v14)
    {
      goto LABEL_26;
    }

LABEL_44:
    v16 = kCFNotificationAnyName;
    if (!v15)
    {
      goto LABEL_55;
    }

    goto LABEL_45;
  }

  v15 = kCFNotificationAnyName;
  if (!v13)
  {
    goto LABEL_44;
  }

LABEL_26:
  v16 = CFStringCreateWithCString(kCFAllocatorSystemDefault, v14, 0x8000100u);
  if (!v15)
  {
LABEL_55:
    if (v15)
    {
      CFRelease(v15);
    }

    if (v16)
    {
      goto LABEL_58;
    }

    return;
  }

LABEL_45:
  if (!v16)
  {
    goto LABEL_55;
  }

  v28 = kCFNotificationAnyName;
  if (CFEqual(v15, kCFNotificationAnyName))
  {
    CFRelease(v15);
    v15 = v28;
  }

  v29 = kCFNotificationAnyObject;
  if (CFEqual(v16, kCFNotificationAnyObject))
  {
    CFRelease(v16);
    v16 = v29;
  }

  if ((*(*v4 + 64) & 0x8000000000000000) == 0 && !sandbox_check_by_reference() && v15 == v28 && v16 == v29)
  {
    CFRelease(v15);
LABEL_58:

    CFRelease(v16);
    return;
  }

  uint64 = xpc_dictionary_get_uint64(a2, "token");
  if (qword_10000CC58 != -1)
  {
    sub_100004654();
  }

  v31 = qword_10000CC60;
  if (os_log_type_enabled(qword_10000CC60, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(*v4 + 72);
    *buf = 138544130;
    v44 = v15;
    v45 = 2114;
    v46 = v16;
    v47 = 2048;
    v48 = uint64;
    v49 = 1024;
    v50 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "register name: %{public}@ object: %{public}@ token: %llx pid: %d", buf, 0x26u);
  }

  xpc_dictionary_get_uint64(a2, "options");
  v33 = *(*v4 + 24);
  v34 = kCFXNotificationEmptyHandler[1];
  CFXNotificationRegistrarAddRemoteToken();
  CFRelease(v15);
  CFRelease(v16);
}

char *sub_100002ED0(void *a1)
{
  v11 = 0;
  string = xpc_dictionary_get_string(a1, "method");
  if (!string)
  {
    goto LABEL_10;
  }

  v3 = string;
  if (!strcmp(string, "post") || !strcmp(v3, "post_all"))
  {
    xpc_dictionary_get_uint64(a1, "options");
    xpc_dictionary_get_string(a1, "method");
    xpc_dictionary_get_uint64(a1, "version");
    xpc_dictionary_get_string(a1, "name");
    xpc_dictionary_get_string(a1, "object");
    asprintf(&v11, "[ %s v%llu '%s' '%s' %s ]");
  }

  else if (!strcmp(v3, "post_token") || !strcmp(v3, "register"))
  {
    uint64 = xpc_dictionary_get_uint64(a1, "options");
    if (!strcmp(v3, "register") && uint64 - 1 < 8)
    {
      v5 = off_1000085A8[uint64 - 1];
    }

    xpc_dictionary_get_string(a1, "method");
    xpc_dictionary_get_uint64(a1, "version");
    xpc_dictionary_get_string(a1, "name");
    xpc_dictionary_get_string(a1, "object");
    xpc_dictionary_get_uint64(a1, "token");
    asprintf(&v11, "[ %s v%llu '%s' '%s' %s %llu ]");
  }

  else if (!strcmp(v3, "unregister"))
  {
    value = xpc_dictionary_get_value(a1, "tokens");
    v7 = xpc_copy_description(value);
    v8 = xpc_dictionary_get_string(a1, "method");
    v9 = xpc_dictionary_get_uint64(a1, "version");
    asprintf(&v11, "[ %s v%llu %s ]", v8, v9, v7);
    free(v7);
  }

  else
  {
    if (strcmp(v3, "ping") && strcmp(v3, "suspend") && strcmp(v3, "unsuspend"))
    {
LABEL_10:
      v11 = xpc_copy_description(a1);
      goto LABEL_18;
    }

    xpc_dictionary_get_string(a1, "method");
    xpc_dictionary_get_uint64(a1, "version");
    asprintf(&v11, "[ %s v%llu ]");
  }

LABEL_18:
  if (v11)
  {
    return v11;
  }

  else
  {
    return "[ ??? ]";
  }
}

uint64_t sub_10000322C(uint64_t a1, int a2, xpc_object_t xuint)
{
  value = xpc_uint64_get_value(xuint);
  if (qword_10000CC58 != -1)
  {
    sub_100004654();
  }

  v5 = qword_10000CC60;
  if (os_log_type_enabled(qword_10000CC60, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 72);
    v9 = 134218240;
    v10 = value;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "unregister token: %llx pid: %d", &v9, 0x12u);
  }

  v7 = *(*(a1 + 32) + 24);
  CFXNotificationRegistrarRemoveRemoteToken();
  return 1;
}

uint64_t sub_100003880(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (*(a1 + 48) != xpc_dictionary_get_uint64(xdict, "token") || (string = xpc_dictionary_get_string(*(a1 + 32), "name")) == 0 || strcmp(*(a1 + 56), string) || (v6 = xpc_dictionary_get_string(*(a1 + 32), "object"), strcmp(*(a1 + 64), v6)))
  {
    xpc_array_append_value(*(a1 + 40), xdict);
  }

  return 1;
}

_BYTE *sub_100003AA8(_BYTE *result)
{
  if ((*result & 6) != 0)
  {
    v8[7] = v1;
    v8[8] = v2;
    v3 = result;
    v4 = [[_NSDNXPCServer alloc] initWithConfiguration:result];
    *(v3 + 1) = v4;
    v5 = 32;
    if ((*v3 & 1) == 0)
    {
      v5 = 40;
    }

    [(_NSDNXPCServer *)v4 setServiceName:*&v3[v5]];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100000FB8;
    v8[3] = &unk_1000084F8;
    v8[4] = v3;
    [*(v3 + 1) setMakeNewClient:v8];
    if (*v3)
    {
      [*(v3 + 1) setPrivileged:1];
    }

    [*(v3 + 1) start:*(v3 + 10)];
    v6 = *v3;
    result = [*(v3 + 1) createEndpoint];
    v7 = 56;
    if ((v6 & 1) == 0)
    {
      v7 = 64;
    }

    *&v3[v7] = result;
  }

  return result;
}

uint64_t start()
{
  mach_absolute_time();
  v4 = time(0);
  getuid();
  ctime_r(&v4, v5);
  v5[24] = 0;
  getpid();
  CFLog();
  v0 = objc_autoreleasePoolPush();
  qword_10000CBE8 = 3;
  v1 = dispatch_workloop_create("com.apple.distnoted.work");
  qword_10000CC38 = dispatch_queue_create("com.apple.distnote.work.target", 0);
  dispatch_set_target_queue(qword_10000CC38, v1);
  sub_100003AA8(&qword_10000CBE8);
  signal(30, 1);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0x1EuLL, 0, 0);
  dispatch_source_set_event_handler(v2, &stru_1000085E8);
  dispatch_resume(v2);
  CFRunLoopRun();
  dispatch_release(v2);

  objc_autoreleasePoolPop(v0);
  getpid();
  CFLog();
  return 0;
}

void sub_100003DE4(id a1)
{
  if (qword_10000CC70 != -1)
  {
    sub_100004728();
  }

  v2 = qword_10000CC68;

  sub_100001E20(v2, &qword_10000CBE8);
}

void sub_100004530(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "    Broadcasting Forbidden: true", buf, 2u);
}

void sub_100004570(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "    Register-all Forbidden: true", buf, 2u);
}

void sub_1000045B0(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[7];
  v5 = a1[3];
  v6 = 138544130;
  v7 = v2;
  v8 = 2114;
  v9 = v3;
  v10 = 2048;
  v11 = v4;
  v12 = 2048;
  v13 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "    name: %{public}@ object: %{public}@ token: %llu options: %lX", &v6, 0x2Au);
}

void sub_10000467C(id *a1, NSObject *a2)
{
  v4 = [objc_msgSend(*a1 "processName")];
  v5 = *(*a1 + 18);
  v6 = 136446466;
  v7 = v4;
  v8 = 1026;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}s (%{public}d) restricted from sending userInfo payloads due to sandboxing", &v6, 0x12u);
}