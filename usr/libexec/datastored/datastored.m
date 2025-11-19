void sub_1000007A8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  sub_1000007F4(a1);
  os_unfair_lock_unlock((a1 + 32));

  sub_1000008FC(a1);
}

void sub_1000007F4(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "ds_data_invalid", 1);
  v3 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_10000295C(a1, v3);
  }

  v4 = *(a1 + 56);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001F10;
  v8[3] = &unk_100008460;
  v5 = v2;
  v9 = v5;
  v10 = a1;
  if (!xpc_array_apply(v4, v8))
  {
    sub_100002A10();
  }

  v6 = xpc_array_create(0, 0);
  v7 = *(a1 + 56);
  *(a1 + 56) = v6;
}

void sub_1000008FC(void *a1)
{
  if (a1)
  {
    v2 = qword_10000C028;
    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = a1 + 13;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%s] Freeing up datastore object", &v8, 0xCu);
    }

    v3 = a1[5];
    if (v3)
    {
      if (a1[10] == 1)
      {
        free(v3);
      }

      else
      {
        munmap(v3, a1[6]);
      }
    }

    v4 = a1[12];
    if (v4)
    {
      free(v4);
    }

    v5 = a1[7];
    a1[7] = 0;

    v6 = a1[2];
    a1[2] = 0;

    v7 = a1[3];
    a1[3] = 0;

    free(a1);
  }
}

uint64_t sub_100000A00(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  return _objc_release_x1();
}

void sub_100000A0C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  string = xpc_dictionary_get_string(v3, "ds_name");
  v6 = sub_100000BFC();
  v7 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%s] Initial subscriber handshake ", &v13, 0xCu);
  }

  if (v6)
  {
    if (*(v6 + 96))
    {
      v8 = xpc_connection_copy_entitlement_value();
      v9 = v8;
      if (v8 && xpc_get_type(v8) == &_xpc_type_BOOL && xpc_BOOL_get_value(v9))
      {
        v10 = 0;
      }

      else
      {
        if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
        {
          sub_100002A2C();
        }

        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
    {
      sub_100002A94();
    }

    v10 = 22;
  }

  reply = xpc_dictionary_create_reply(v3);
  xpc_dictionary_set_uint64(reply, "ds_status", v10);
  if (!v10)
  {
    xpc_dictionary_set_uint64(reply, "ds_type", *(v6 + 80));
    v12 = xpc_endpoint_create(*(v6 + 16));
    xpc_dictionary_set_value(reply, "endpoint", v12);
  }

  xpc_dictionary_send_reply();
}

uint64_t sub_100000BFC()
{
  os_unfair_lock_lock(&dword_10000C018);
  pointer = xpc_dictionary_get_pointer();
  os_unfair_lock_unlock(&dword_10000C018);
  return pointer;
}

void sub_100000C48(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  string = xpc_dictionary_get_string(v4, "ds_name");
  v6 = sub_100000BFC();
  v7 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%s] Publisher registering for datastore", &v14, 0xCu);
  }

  if (v6)
  {
    v8 = xpc_connection_copy_entitlement_value();
    v9 = v8;
    if (v8 && xpc_get_type(v8) == &_xpc_type_BOOL && xpc_BOOL_get_value(v9))
    {
      v10 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
      {
        sub_100002AFC();
      }

      v10 = 1;
    }

    if (*(v6 + 64))
    {
      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
      {
        sub_100002B80();
      }

      v10 = 37;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
    {
      sub_100002BE8();
    }

    v10 = 22;
  }

  reply = xpc_dictionary_create_reply(v4);

  xpc_dictionary_set_uint64(reply, "ds_status", v10);
  if (!v10)
  {
    *(v6 + 64) |= 1u;
    xpc_dictionary_set_uint64(reply, "ds_type", *(v6 + 80));
    xpc_dictionary_set_uint64(reply, "max_size", *(v6 + 88));
    v12 = xpc_endpoint_create(*(v6 + 24));
    xpc_dictionary_set_value(reply, "endpoint", v12);

    v13 = qword_10000C028;
    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
    {
      v14 = 136315138;
      v15 = (v6 + 104);
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%s] Invalidating data from producer's previous lifetime", &v14, 0xCu);
    }

    sub_100000EDC(v6);
  }

  xpc_dictionary_send_reply();
}

void sub_100000EDC(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  __swp(v2, (a1 + 40));
  if (v2)
  {
    if (*(a1 + 80) == 1)
    {
      free(v2);
    }

    else
    {
      munmap(v2, *(a1 + 48));
    }

    *(a1 + 48) = 0;
    sub_1000007F4(a1);
  }

  os_unfair_lock_unlock((a1 + 32));
  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002030;
  block[3] = &unk_100008480;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_100000F9C(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2[5];
  xdict = v3;
  if (v4)
  {
    if (a2[10] == 1)
    {
      xpc_dictionary_set_data(v3, "ds_data", v4, a2[6]);
    }

    else
    {
      v6 = a2[6];
      readonly = xpc_shmem_create_readonly();
      xpc_dictionary_set_value(xdict, "ds_ool_data", readonly);
    }

    xpc_dictionary_set_uint64(xdict, "ds_type", a2[10]);
    v5 = 0;
    v3 = xdict;
  }

  else
  {
    v5 = 96;
  }

  xpc_dictionary_set_uint64(v3, "ds_status", v5);
}

id sub_100001060(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "ds_name", (a1 + 104));
  v3 = *(a1 + 72);
  v4 = xpc_event_publisher_fire_with_reply_sync();

  return v4;
}

void sub_1000010D4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  if (!*(a1 + 40))
  {
    os_unfair_lock_unlock((a1 + 32));
    v2 = qword_10000C028;
    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = a1 + 104;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%s] Requesting data from producer", buf, 0xCu);
    }

    v3 = sub_100001060(a1);
    os_unfair_lock_lock((a1 + 32));
    if (!v3 || xpc_get_type(v3) == &_xpc_type_error)
    {
      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
      {
        sub_100002C50();
      }
    }

    else
    {
      v4 = v3;
      if ((*(a1 + 64) & 1) == 0)
      {
        sub_100002A10();
      }

      v3 = v4;
      if (xpc_dictionary_get_uint64(v4, "request_type") != 5)
      {
        sub_100002A10();
      }

      region = 0;
      v5 = *(a1 + 40);
      if (*(a1 + 80) == 1)
      {
        free(v5);
        data = xpc_dictionary_get_data(v3, "ds_data", (a1 + 48));
        v7 = malloc_type_malloc(*(a1 + 48), 0xED2A79BDuLL);
        region = v7;
        memcpy(v7, data, *(a1 + 48));
      }

      else
      {
        munmap(v5, *(a1 + 48));
        v8 = xpc_dictionary_get_value(v3, "ds_ool_data");
        *(a1 + 48) = xpc_shmem_map(v8, &region);

        v7 = region;
      }

      *(a1 + 40) = v7;
      v9 = qword_10000C028;
      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v12 = a1 + 104;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%s] Populated with data", buf, 0xCu);
      }
    }
  }
}

void sub_100001308(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  uint64 = xpc_dictionary_get_uint64(v3, "request_type");
  if (uint64 == 6)
  {
    sub_100000C48(v3, v4);
  }

  else if (uint64 == 1)
  {
    sub_100000A0C(v3, v4);
  }

  else if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
  {
    sub_100002CBC();
  }
}

void sub_1000013B4(uint64_t a1)
{
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100002D24();
  }

  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100002D90(a1);
  }

  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100002E14(a1);
  }

  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100002E98(a1);
  }

  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100002F04(a1);
  }

  v2 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100002F70(a1, v2);
  }

  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
  {
    sub_100003008(a1);
  }
}

void sub_1000014DC()
{
  v0 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Printing out registered datastores...\n", buf, 2u);
  }

  xpc_dictionary_apply(qword_10000C020, &stru_1000083B0);
  v1 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Done", v2, 2u);
  }
}

BOOL sub_100001594(id a1, const char *a2, OS_xpc_object *a3)
{
  v3 = a3;
  if (xpc_get_type(v3) != &_xpc_type_pointer)
  {
    sub_100002A10();
  }

  value = xpc_pointer_get_value();
  sub_1000013B4(value);

  return 1;
}

void start()
{
  dword_10000C018 = 0;
  v0 = xpc_dictionary_create(0, 0, 0);
  v1 = qword_10000C020;
  qword_10000C020 = v0;

  v2 = os_log_create("com.apple.xpc.datastore", "datastored");
  v3 = qword_10000C028;
  qword_10000C028 = v2;

  v4 = dispatch_workloop_create("com.apple.datastored.ipc_wl");
  mach_service = xpc_connection_create_mach_service("com.apple.xpc.datastore", 0, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100001784;
  handler[3] = &unk_1000083D8;
  handler[4] = v4;
  xpc_connection_set_event_handler(mach_service, handler);
  objc_storeStrong(&qword_10000C010, mach_service);
  objc_storeStrong(&qword_10000C000, v4);
  v6 = xpc_event_publisher_create();
  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();
  objc_storeStrong(&qword_10000C008, v6);
  xpc_event_publisher_activate();
  signal(30, sub_1000014DC);
  dispatch_main();
}

void sub_100001784(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001848;
    handler[3] = &unk_1000083D8;
    v4 = v3;
    v6 = v4;
    xpc_connection_set_event_handler(v4, handler);
    xpc_connection_set_target_queue(v4, *(a1 + 32));
    xpc_connection_resume(v4);
  }
}

void sub_100001848(uint64_t a1, void *a2)
{
  object = a2;
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    sub_100001308(object, *(a1 + 32));
  }

  else
  {
    type = xpc_get_type(object);

    if (type == &_xpc_type_error)
    {
      v4 = *(a1 + 32);

      xpc_connection_cancel(v4);
    }
  }
}

void sub_100001904(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a4;
  switch(a2)
  {
    case 2:
      xpc_connection_resume(*(*(a1 + 32) + 16));
      break;
    case 1:
      *&buf = 0;
      *(&buf + 1) = &buf;
      v49 = 0x2020000000;
      v50 = 0;
      os_unfair_lock_lock(&dword_10000C018);
      *__s = _NSConcreteStackBlock;
      *&__s[8] = 3221225472;
      *&v37 = sub_1000028A8;
      *(&v37 + 1) = &unk_1000084F0;
      *&v38 = &buf;
      *(&v38 + 1) = a3;
      xpc_dictionary_apply(qword_10000C020, __s);
      v32 = *(*(&buf + 1) + 24);
      if (v32)
      {
        v33 = qword_10000C028;
        if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
        {
          LODWORD(handler) = 136315138;
          *(&handler + 4) = v32 + 104;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "[%s] Removing datastore from registered list", &handler, 0xCu);
          v32 = *(*(&buf + 1) + 24);
        }

        xpc_dictionary_set_value(qword_10000C020, (v32 + 104), 0);
        os_unfair_lock_unlock(&dword_10000C018);
        sub_10000207C(*(*(&buf + 1) + 24));
      }

      else
      {
        os_unfair_lock_unlock(&dword_10000C018);
        if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
        {
          sub_100003074();
        }
      }

      _Block_object_dispose(&buf, 8);
      break;
    case 0:
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      *__s = 0u;
      v37 = 0u;
      event_name = xpc_get_event_name();
      v9 = qword_10000C028;
      if (event_name)
      {
        if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = __s;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%s] Adding info for datastore", &buf, 0xCu);
        }

        v10 = v7;
        v11 = strlen(__s);
        v12 = malloc_type_calloc(1uLL, v11 + 105, 0x10D004037CEE6F6uLL);
        v13 = v12;
        if (v12)
        {
          strcpy(v12 + 104, __s);
          v14 = v10;
          v13[9] = a3;
          int64 = xpc_dictionary_get_int64(v14, "SizeLimit");
          v13[11] = int64;
          if (int64)
          {
            v13[10] = 1;
            string = xpc_dictionary_get_string(v14, "RequiresEntitlement");
            if (string)
            {
              v13[12] = strdup(string);
            }

            *(v13 + 8) = 0;
            v17 = xpc_array_create(0, 0);
            v18 = v13[7];
            v13[7] = v17;

            *(v13 + 64) &= ~1u;
            label = 0;
            asprintf(&label, "%s.ipc_dq", v13 + 104);
            v19 = dispatch_queue_create_with_target_V2(label, 0, qword_10000C000);
            dispatch_set_finalizer_f(v19, sub_100000A00);
            dispatch_set_context(v19, v13);
            v20 = *v13;
            *v13 = v19;
            v21 = v19;

            free(label);
            asprintf(&label, "%s.launch_pub_dq", v13 + 104);
            v22 = dispatch_queue_create(label, 0);
            dispatch_set_finalizer_f(v22, sub_1000007A8);
            dispatch_set_context(v22, v13);
            v23 = v13[1];
            v13[1] = v22;
            v24 = v22;

            free(label);
            v25 = xpc_connection_create(0, 0);
            *&buf = _NSConcreteStackBlock;
            *(&buf + 1) = 3221225472;
            v49 = sub_1000020D4;
            v50 = &unk_1000084A0;
            v51 = v13;
            xpc_connection_set_event_handler(v25, &buf);
            v26 = v13[2];
            v13[2] = v25;
            v27 = v25;

            xpc_connection_activate(v27);
            v28 = xpc_connection_create(0, 0);
            *&handler = _NSConcreteStackBlock;
            *(&handler + 1) = 3221225472;
            v45 = sub_1000024D8;
            v46 = &unk_1000084A0;
            v47 = v13;
            xpc_connection_set_event_handler(v28, &handler);
            v29 = v13[3];
            v13[3] = v28;
            v30 = v28;

            xpc_connection_activate(v30);
            os_unfair_lock_lock(&dword_10000C018);
            pointer = xpc_dictionary_get_pointer();
            if (pointer)
            {
              xpc_dictionary_set_pointer();
              sub_10000207C(pointer);
              sub_1000008FC(v13);
              if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
              {
                sub_100003164();
              }
            }

            else
            {
              xpc_dictionary_set_pointer();
            }

            os_unfair_lock_unlock(&dword_10000C018);
            goto LABEL_28;
          }
        }

        else
        {
          v34 = v10;
        }

LABEL_28:
        break;
      }

      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
      {
        sub_1000030FC();
      }

      break;
  }
}

void sub_100001EC8(id a1, int a2)
{
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
  {
    sub_1000031CC();
  }
}

uint64_t sub_100001F10(uint64_t a1)
{
  v2 = xpc_mach_send_copy_right();
  if (v2 - 1 <= 0xFFFFFFFD)
  {
    v3 = v2;
    v4 = xpc_pipe_create_from_port();
    v5 = *(a1 + 32);
    v6 = xpc_pipe_simpleroutine();
    if (v6)
    {
      v7 = v6;
      v8 = qword_10000C028;
      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 40) + 104;
        v11 = 136315650;
        v12 = v10;
        v13 = 1024;
        v14 = v3;
        v15 = 1024;
        v16 = v7;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%s] Unable to send invalidation to client %#x: %d", &v11, 0x18u);
      }
    }

    mach_port_deallocate(mach_task_self_, v3);
  }

  return 1;
}

void sub_100002030(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  sub_1000010D4(*(a1 + 32));
  v2 = (*(a1 + 32) + 32);

  os_unfair_lock_unlock(v2);
}

void sub_10000207C(uint64_t a1)
{
  xpc_connection_cancel(*(a1 + 16));
  xpc_connection_cancel(*(a1 + 24));
  os_unfair_lock_lock((a1 + 32));
  v2 = *a1;
  *a1 = 0;

  os_unfair_lock_unlock((a1 + 32));
}

void sub_1000020D4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000219C;
    handler[3] = &unk_1000083D8;
    v4 = v3;
    v6 = v4;
    xpc_connection_set_event_handler(v4, handler);
    xpc_connection_set_target_queue(v4, **(a1 + 32));
    xpc_connection_activate(v4);
  }
}

void sub_10000219C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "request_type");
    if (uint64 == 3)
    {
      v5 = v3;
      v6 = 1;
      goto LABEL_6;
    }

    if (uint64 == 2)
    {
      v5 = v3;
      v6 = 0;
LABEL_6:
      sub_10000224C(v5, v6);
      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
    {
      sub_100003240();
    }

    xpc_connection_cancel(*(a1 + 32));
  }

LABEL_10:
}

void sub_10000224C(void *a1, int a2)
{
  v3 = a1;
  reply = xpc_dictionary_create_reply(v3);
  string = xpc_dictionary_get_string(v3, "ds_name");
  v6 = sub_100000BFC();
  v7 = qword_10000C028;
  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = string;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[%s] Requesting datastore data", buf, 0xCu);
  }

  if (v6)
  {
    v8 = xpc_dictionary_get_value(v3, "ds_data_invalid_notify");
    if (*(v6 + 40))
    {
      os_unfair_lock_lock((v6 + 32));
      sub_100000F9C(reply, v6);
      xpc_array_append_value(*(v6 + 56), v8);
      os_unfair_lock_unlock((v6 + 32));
    }

    else
    {
      v9 = qword_10000C028;
      if (!a2)
      {
        if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_DEBUG))
        {
          sub_100003280();
        }

        v10 = *(v6 + 8);
        v11 = reply;
        v12 = v8;
        xpc_dictionary_handoff_reply();

        goto LABEL_14;
      }

      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v14 = string;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%s] Datastore not populated but soft demand request - returning ENODATA", buf, 0xCu);
      }

      xpc_dictionary_set_uint64(reply, "ds_status", 0x60uLL);
    }

    xpc_dictionary_send_reply();
LABEL_14:

    goto LABEL_15;
  }

  if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
  {
    sub_1000032E8();
  }

  xpc_dictionary_set_uint64(reply, "ds_status", 0x16uLL);
  xpc_dictionary_send_reply();
LABEL_15:
}

void sub_1000024D8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_get_type(v3) == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000025D0;
    handler[3] = &unk_1000083D8;
    v4 = v3;
    v7 = v4;
    xpc_connection_set_event_handler(v4, handler);
    xpc_connection_set_target_queue(v4, **(a1 + 32));
    v5 = strdup((*(a1 + 32) + 104));
    xpc_connection_set_context(v4, v5);
    xpc_connection_set_finalizer_f(v4, &_free);
    xpc_connection_activate(v4);
  }
}

void sub_1000025D0(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(v3, "request_type");
    if (uint64 != 7)
    {
      if (uint64 == 4)
      {
        v10 = v3;
        string = xpc_dictionary_get_string(v10, "ds_name");
        v12 = qword_10000C028;
        if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
        {
          v16 = 136315138;
          v17 = string;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[%s] Invalidating data", &v16, 0xCu);
        }

        reply = xpc_dictionary_create_reply(v10);

        v14 = sub_100000BFC();
        if (v14)
        {
          sub_100000EDC(v14);
          v15 = 0;
        }

        else
        {
          v15 = 22;
        }

        xpc_dictionary_set_uint64(reply, "ds_status", v15);
        xpc_dictionary_send_reply();
      }

      else if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
      {
        sub_100002CBC();
      }
    }
  }

  else if (type == &_xpc_type_error)
  {
    context = xpc_connection_get_context(*(a1 + 32));
    v6 = qword_10000C028;
    if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = context;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%s] Publisher gone - relinquishing datastore", &v16, 0xCu);
    }

    v7 = sub_100000BFC();
    if (v7)
    {
      if ((*(v7 + 64) & 1) == 0)
      {
        sub_100002A10();
      }

      *(v7 + 64) &= ~1u;
      v8 = qword_10000C028;
      if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_INFO))
      {
        v16 = 136315138;
        v17 = context;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%s] Clearing ownership of datastore", &v16, 0xCu);
      }
    }

    else if (os_log_type_enabled(qword_10000C028, OS_LOG_TYPE_ERROR))
    {
      sub_100003350();
    }
  }
}

uint64_t sub_10000283C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 48) + 32));
  sub_1000010D4(*(a1 + 48));
  sub_100000F9C(*(a1 + 32), *(a1 + 48));
  xpc_array_append_value(*(*(a1 + 48) + 56), *(a1 + 40));
  os_unfair_lock_unlock((*(a1 + 48) + 32));
  v2 = *(a1 + 32);

  return xpc_dictionary_send_reply();
}

uint64_t sub_1000028A8(uint64_t a1)
{
  value = xpc_pointer_get_value();
  if (!value)
  {
    return 1;
  }

  v3 = value;
  if (*(value + 72) != *(a1 + 40))
  {
    return 1;
  }

  result = 0;
  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

void sub_100002900(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002934(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000295C(uint64_t a1, void *a2)
{
  v2 = a1 + 104;
  v3 = *(a1 + 56);
  v4 = a2;
  v5 = 136315394;
  v6 = v2;
  v7 = 2048;
  count = xpc_array_get_count(v3);
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%s] Notifying %zu subscribers of data invalidation", &v5, 0x16u);
}

void sub_100002A10()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100002AFC()
{
  sub_100002928();
  sub_10000291C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100002D90(uint64_t a1)
{
  *(a1 + 64);
  sub_100002950();
  sub_100002934(&_mh_execute_header, v1, v2, "\tchecked in    = %s", v3, v4, v5, v6, v7);
}

void sub_100002E14(uint64_t a1)
{
  *(a1 + 80);
  sub_100002950();
  sub_100002934(&_mh_execute_header, v1, v2, "\tds_type       = %s", v3, v4, v5, v6, v7);
}

void sub_100002E98(uint64_t a1)
{
  v1 = *(a1 + 88);
  sub_100002950();
  sub_100002934(&_mh_execute_header, v2, v3, "\tmax_size      = %llu", v4, v5, v6, v7, v8);
}

void sub_100002F04(uint64_t a1)
{
  v1 = *(a1 + 96);
  sub_100002950();
  sub_100002934(&_mh_execute_header, v2, v3, "\tentitlement   = %s", v4, v5, v6, v7, v8);
}

void sub_100002F70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = a2;
  xpc_array_get_count(v2);
  sub_100002928();
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "\t#subscribers  = %zu", v4, 0xCu);
}

void sub_100003008(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_100002950();
  sub_100002934(&_mh_execute_header, v2, v3, "\tdata_size     = %zu\n", v4, v5, v6, v7, v8);
}