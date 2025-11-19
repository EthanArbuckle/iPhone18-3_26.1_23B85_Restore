void start()
{
  xpc_track_activity();
  v0 = dispatch_queue_create("com.apple.tzlink", 0);
  mach_service = xpc_connection_create_mach_service("com.apple.tzlink", v0, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100000630;
  handler[3] = &unk_100004128;
  handler[4] = v0;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
  dispatch_main();
}

void sub_100000630(uint64_t a1, _xpc_connection_s *object)
{
  if (xpc_get_type(object) == &_xpc_type_connection)
  {
    xpc_connection_set_target_queue(object, *(a1 + 32));
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_1000006DC;
    handler[3] = &unk_100004108;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    xpc_connection_resume(object);
  }
}

void sub_1000006DC(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v4 = *(a1 + 32);
    v5 = xpc_connection_copy_entitlement_value();
    if (v5 && (v6 = v5, value = xpc_BOOL_get_value(v5), xpc_release(v6), value))
    {
      string = xpc_dictionary_get_string(object, "tz");
      if (string)
      {
        v9 = string;
        if (__strlcpy_chk() >= 0x400)
        {
          v10 = 63;
LABEL_17:
          v11 = v10;
          goto LABEL_18;
        }

        v12 = strdup(v9);
        *&v15.st_dev = v12;
        while (1)
        {
          v13 = strsep(&v15, "/");
          if (!v13)
          {
            break;
          }

          v10 = 22;
          if (!*v13 || *v13 == 46)
          {
            goto LABEL_16;
          }

          if (__strlcat_chk() > 0x3FF || __strlcat_chk() >= 0x400)
          {
            v10 = 63;
LABEL_16:
            free(v12);
            goto LABEL_17;
          }
        }

        free(v12);
        memset(&v15, 0, sizeof(v15));
        if (lstat(v16, &v15))
        {
          if (!*__error())
          {
            goto LABEL_35;
          }

          v10 = *__error();
          if (v10)
          {
            goto LABEL_17;
          }

LABEL_32:
          unlink("/var/db/timezone/localtime");
          if (!symlink(v16, "/var/db/timezone/localtime"))
          {
            notify_post("SignificantTimeChangeNotification");
            v10 = 0;
            goto LABEL_17;
          }

          if (*__error())
          {
            v10 = *__error();
            goto LABEL_17;
          }

LABEL_35:
          v10 = 14;
          goto LABEL_17;
        }

        if ((v15.st_mode & 0xF000) == 0x8000)
        {
          if (*&v15.st_uid)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_100000AE8();
            }
          }

          else
          {
            if ((v15.st_mode & 0x1FF) == 0x1A4)
            {
              goto LABEL_32;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
            {
              sub_100000A6C();
            }
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_1000009EC(v16);
        }

        v10 = 2;
        goto LABEL_17;
      }

      v11 = 22;
    }

    else
    {
      v11 = 1;
    }

LABEL_18:
    reply = xpc_dictionary_create_reply(object);
    xpc_dictionary_set_uint64(reply, "error", v11);
    xpc_connection_send_message(*(a1 + 32), reply);
    xpc_release(reply);
  }
}

void sub_1000009EC(uint64_t a1)
{
  v1 = 136446210;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "tzlink failed; %{public}s is not a regular file", &v1, 0xCu);
}

void sub_100000AE8()
{
  sub_1000009D4();
  v3 = v0;
  v4 = v1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "tzlink failed; %{public}s is owned by %d:%d", v2, 0x18u);
}