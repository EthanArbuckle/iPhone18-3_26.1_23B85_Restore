void start()
{
  sub_100000BBC();
  v0 = sub_100000BE8();
  mach_service = xpc_connection_create_mach_service("com.apple.hangtelemetryd", v0, 1uLL);

  xpc_connection_set_event_handler(mach_service, &stru_100004288);
  xpc_connection_activate(mach_service);
  v2 = dispatch_time(0, 10000000000);
  v3 = sub_100000BE8();
  dispatch_after(v2, v3, &stru_1000042C8);

  dispatch_main();
}

void sub_100000BBC()
{
  if (qword_100008098 != -1)
  {
    sub_100001F18();
  }
}

id sub_100000BE8()
{
  if (qword_1000080B0 != -1)
  {
    sub_100001F2C();
  }

  v1 = qword_1000080A8;

  return v1;
}

void sub_100000C2C(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_connection)
  {
    v3 = sub_100001E90();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = xpc_connection_get_pid(v2);
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "XPC: Client started new connection: pid %d", v6, 8u);
    }

    v4 = v2;
    v5 = sub_100000BE8();
    xpc_connection_set_target_queue(v4, v5);

    xpc_connection_set_event_handler(v4, &stru_100004348);
    xpc_connection_activate(v4);
  }
}

void sub_100000D3C(id a1)
{
  v1 = sub_100001E90();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Calling xpc_transaction_exit_clean() now", v2, 2u);
  }

  xpc_transaction_exit_clean();
}

void sub_100000DA8(id a1)
{
  v1 = dispatch_get_global_queue(25, 0);
  v2 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v1);
  v3 = qword_1000080A0;
  qword_1000080A0 = v2;

  dispatch_source_set_event_handler(qword_1000080A0, &stru_100004308);
  v4 = qword_1000080A0;

  dispatch_activate(v4);
}

void sub_100000E28(id a1)
{
  v1 = sub_100001E90();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Received SIGTERM, exiting", v2, 2u);
  }

  exit(0);
}

void sub_100000E88(id a1)
{
  qword_1000080A8 = dispatch_queue_create("com.apple.hangtelemetry", 0);

  _objc_release_x1();
}

void sub_100000EC8(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = v2;
    if (xpc_dictionary_get_uint64(v3, "command") == 1)
    {
      if (qword_1000080B8 != -1)
      {
        sub_100001FB4();
      }

      reply = xpc_dictionary_create_reply(v3);
      v5 = xpc_dictionary_get_remote_connection(v3);
      v6 = v5;
      if (reply && v5)
      {
        xpc_connection_send_message(v5, reply);
      }

      else
      {
        v7 = sub_100001E90();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          sub_100001FC8();
        }
      }
    }

    else
    {
      reply = sub_100001E90();
      if (os_log_type_enabled(reply, OS_LOG_TYPE_FAULT))
      {
        sub_100001F40();
      }
    }
  }
}

void sub_100000FE4(id a1)
{
  v1 = sub_100001E10();
  v2 = sub_100001E90();
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_10000237C();
    }

    goto LABEL_55;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "New boot: Refreshing telemetry metadata and saving in settings", buf, 2u);
  }

  if (qword_1000080C8 != -1)
  {
    sub_10000205C();
  }

  v4 = word_1000080C0;
  if (qword_1000080D0 != -1)
  {
    sub_100002084();
  }

  v5 = dword_1000080D8;
  v29 = 8;
  v30 = 0;
  v6 = sysctlbyname("kern.roots_installed", &v30, &v29, 0, 0);
  v7 = sub_100001E90();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000020AC();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Installed root info kern.roots_installed: %llu", buf, 0xCu);
    }

    if (v30)
    {
      v16 = 257;
      word_1000080DC = 257;
      goto LABEL_34;
    }
  }

  if (objc_opt_class())
  {
    v9 = objc_alloc_init(DUSession);
    *buf = 0;
    v10 = [v9 openAndReturnError:buf];
    v11 = *buf;
    v12 = v11;
    if ((v10 & 1) == 0)
    {
      v17 = sub_100001E90();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100002130();
      }

      goto LABEL_29;
    }

    v28 = 0;
    v13 = [v9 allInstalledRootsAndReturnError:&v28];
    v12 = v28;
    v14 = sub_100001E90();
    v15 = v14;
    if (!v13 && v12)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100002198();
      }

LABEL_29:
      v16 = word_1000080DC;

      goto LABEL_34;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_100002200(v13, v15);
    }

    LOBYTE(word_1000080DC) = 1;
    HIBYTE(word_1000080DC) = [v13 count] != 0;
  }

  else
  {
    word_1000080DC = 1;
  }

  v16 = word_1000080DC;
LABEL_34:
  if (qword_1000080E0 != -1)
  {
    sub_100002288();
  }

  v18 = word_1000080DE;
  v3 = objc_alloc_init(NSMutableDictionary);
  v19 = objc_alloc_init(NSMutableArray);
  [v19 addObject:@"HangTracerTelemetryBootSessionUUID"];
  if (v18)
  {
    v20 = [NSNumber numberWithBool:(v18 >> 8) & 1];
    [v3 setObject:v20 forKeyedSubscript:@"HangTracerTelemetryHaveNonDefaultFeatureFlags"];

    if ((v4 & 1) == 0)
    {
LABEL_38:
      [v19 addObject:@"HangTracerTelemetrySerialLoggingEnabled"];
      goto LABEL_41;
    }
  }

  else
  {
    [v19 addObject:@"HangTracerTelemetryHaveNonDefaultFeatureFlags"];
    if ((v4 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v21 = [NSNumber numberWithBool:(v4 >> 8) & 1];
  [v3 setObject:v21 forKeyedSubscript:@"HangTracerTelemetrySerialLoggingEnabled"];

LABEL_41:
  if (v5 < 1)
  {
    [v19 addObject:@"HangTracerTelemetryNumOSCryptexFileExtents"];
    if (v16)
    {
      goto LABEL_43;
    }

LABEL_45:
    [v19 addObject:@"HangTracerTelemetryHaveRootsInstalled"];
    goto LABEL_46;
  }

  v22 = [NSNumber numberWithInt:v5];
  [v3 setObject:v22 forKeyedSubscript:@"HangTracerTelemetryNumOSCryptexFileExtents"];

  if ((v16 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_43:
  v23 = [NSNumber numberWithBool:(v16 >> 8) & 1];
  [v3 setObject:v23 forKeyedSubscript:@"HangTracerTelemetryHaveRootsInstalled"];

LABEL_46:
  CFPreferencesSetMultiple(v3, v19, @"com.apple.da", @"mobile", kCFPreferencesAnyHost);
  v24 = sem_open("hangtelemetryd.onceatboot", 2560, 292, 1);
  if (v24 == -1)
  {
    v25 = *__error();
    v26 = sub_100001E90();
    v27 = v26;
    if (v25 == 17)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_10000233C();
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1000022B0(v27);
    }
  }

  else
  {
    sem_close(v24);
  }

  notify_post(off_100008090);

LABEL_55:
}

void sub_10000153C(id a1)
{
  v1 = vm_page_size;
  __chkstk_darwin(a1);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v1;
  v3 = sysctlbyname("kern.bootargs", v2, &v21, 0, 0);
  v4 = v21;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v21 >= v1;
  }

  if (v5)
  {
    v6 = sub_100001E90();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000024EC();
    }
  }

  else
  {
    v2[v21] = 0;
    LOBYTE(word_1000080C0) = 1;
    if (v4 < 9)
    {
LABEL_28:
      v15 = sub_100001E90();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        sub_1000023B8();
      }

      v16 = 0;
    }

    else
    {
      v7 = 0;
      while (strncmp(&v2[v7], "serial=", 7uLL))
      {
        if (v7 < v4)
        {
          while (1)
          {
            v8 = v2[v7];
            v9 = v8 > 0x20;
            v10 = (1 << v8) & 0x100000201;
            if (!v9 && v10 != 0)
            {
              break;
            }

            if (v4 == ++v7)
            {
LABEL_26:
              v7 = v4;
              goto LABEL_27;
            }
          }
        }

        if (v7 < v4)
        {
          while (1)
          {
            v12 = v2[v7];
            v9 = v12 > 0x20;
            v13 = (1 << v12) & 0x100000201;
            if (v9 || v13 == 0)
            {
              break;
            }

            if (v4 == ++v7)
            {
              goto LABEL_26;
            }
          }
        }

LABEL_27:
        if (v7 + 8 >= v4)
        {
          goto LABEL_28;
        }
      }

      *__error() = 0;
      v17 = strtoull(&v2[v7 + 7], 0, 0);
      v18 = *__error();
      v19 = sub_100001E90();
      v20 = v19;
      if (v18)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1000023F4();
        }

        v16 = 1;
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_10000247C();
        }

        v16 = v17 != 0;
      }
    }

    HIBYTE(word_1000080C0) = v16;
  }
}

void sub_1000017A4(id a1)
{
  v1 = +[MSUDataAccessor sharedDataAccessor];
  v14 = 0;
  v2 = [v1 copyPathForPersonalizedData:11 error:&v14];
  v3 = v14;

  if (v2)
  {
    v4 = [v2 fileSystemRepresentation];
    if (v4)
    {
      v5 = open(v4, 0, 0);
      if (v5 < 0)
      {
        v10 = sub_100001E90();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100002768();
        }

        v8 = 0;
        goto LABEL_17;
      }

      v6 = v5;
      memset(&v18, 0, sizeof(v18));
      if (fstat(v5, &v18))
      {
        v7 = sub_100001E90();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100002570();
        }
      }

      else
      {
        st_size = v18.st_size;
        if (v18.st_size)
        {
          if (v18.st_size >= 1)
          {
            v8 = 0;
            v12 = 0;
            while (1)
            {
              v15 = 0;
              v16 = st_size - v12;
              v17 = v12;
              if (fcntl(v6, 65, &v15))
              {
                break;
              }

              if (!v16)
              {
                v13 = sub_100001E90();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
                {
                  sub_10000267C();
                }

                goto LABEL_33;
              }

              v12 += v16;
              ++v8;
              if (v12 >= st_size)
              {
                goto LABEL_9;
              }
            }

            v13 = sub_100001E90();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_1000025F8();
            }

LABEL_33:

            goto LABEL_9;
          }

LABEL_8:
          v8 = 0;
LABEL_9:
          close(v6);
LABEL_17:
          dword_1000080D8 = v8;
          v9 = sub_100001E90();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_1000027F0();
          }

          goto LABEL_19;
        }

        v7 = sub_100001E90();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_100002700();
        }
      }

      goto LABEL_8;
    }

    v9 = sub_100001E90();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100002874();
    }
  }

  else
  {
    v9 = sub_100001E90();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000028DC();
    }
  }

LABEL_19:
}

void sub_100001A40(id a1)
{
  v1 = +[FFConfiguration shared];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 domains];
    if ([v3 count])
    {
      LOBYTE(word_1000080DE) = 1;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v4 = v3;
      v24 = [v4 countByEnumeratingWithState:&v33 objects:v44 count:16];
      if (v24)
      {
        v5 = *v34;
        v26 = v4;
        v27 = v3;
        v23 = *v34;
        do
        {
          v6 = 0;
          do
          {
            if (*v34 != v5)
            {
              objc_enumerationMutation(v4);
            }

            v25 = v6;
            v7 = *(*(&v33 + 1) + 8 * v6);
            context = objc_autoreleasePoolPush();
            v8 = [v2 featuresForDomain:v7];
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v9 = v8;
            v10 = [v9 countByEnumeratingWithState:&v29 objects:v43 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v30;
              while (2)
              {
                for (i = 0; i != v11; i = i + 1)
                {
                  if (*v30 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v29 + 1) + 8 * i);
                  v15 = [v2 stateForFeature:v14 domain:v7 level:{4, v23}];
                  if (v15)
                  {
                    v16 = [v2 defaultStateForFeature:v14 domain:v7];
                    v17 = v16;
                    if (!v16 || (v18 = [v16 value], v18 != objc_msgSend(v15, "value")))
                    {
                      v20 = sub_100001E90();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                      {
                        v21 = [v15 value];
                        v22 = [v17 value];
                        *buf = 138412802;
                        v38 = v14;
                        v39 = 2048;
                        v40 = v21;
                        v41 = 2048;
                        v42 = v22;
                        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Found non-default feature flag for %@: %ld (default %ld)", buf, 0x20u);
                      }

                      HIBYTE(word_1000080DE) = 1;
                      [v2 invalidateCache];

                      objc_autoreleasePoolPop(context);
                      v2 = v26;
                      v3 = v27;
                      goto LABEL_29;
                    }
                  }
                }

                v11 = [v9 countByEnumeratingWithState:&v29 objects:v43 count:16];
                if (v11)
                {
                  continue;
                }

                break;
              }
            }

            objc_autoreleasePoolPop(context);
            v6 = v25 + 1;
            v4 = v26;
            v3 = v27;
            v5 = v23;
          }

          while ((v25 + 1) != v24);
          v24 = [v26 countByEnumeratingWithState:&v33 objects:v44 count:16];
        }

        while (v24);
      }

      v19 = sub_100001E90();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100002944();
      }
    }

    else
    {
      v19 = sub_100001E90();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100002980();
      }
    }

    [v2 invalidateCache];
LABEL_29:
  }
}

void sub_100001DD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t sub_100001E10()
{
  v0 = sem_open("hangtelemetryd.onceatboot", 0);
  if (v0 == -1)
  {
    if (*__error() == 2)
    {
      return 0;
    }

    v2 = sub_100001E90();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000029C0(v2);
    }
  }

  else
  {
    sem_close(v0);
  }

  return 1;
}

id sub_100001E90()
{
  if (qword_1000080F0 != -1)
  {
    sub_100002A50();
  }

  v1 = qword_1000080E8;

  return v1;
}

void sub_100001ED4(id a1)
{
  qword_1000080E8 = os_log_create("com.apple.hangtracer", &unk_10000323D);

  _objc_release_x1();
}

void sub_100001FC8()
{
  sub_100001DEC();
  v2 = 1024;
  v3 = 1;
  v4 = 2048;
  v5 = 1;
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "No reply:%d or no connection:%d for command %llu", v1, 0x18u);
}

void sub_1000020AC()
{
  v0 = *__error();
  sub_100001DEC();
  sub_100001D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100002200(void *a1, NSObject *a2)
{
  [a1 count];
  sub_100001DC4();
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%lu darwinup roots are installed", v3, 0xCu);
}

void sub_1000022B0(NSObject *a1)
{
  v2 = *__error();
  sub_100001DEC();
  _os_log_fault_impl(&_mh_execute_header, a1, OS_LOG_TYPE_FAULT, "sem_open() creation failed: %{errno}d", v3, 8u);
}

void sub_10000237C()
{
  sub_100001DF8();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000023B8()
{
  sub_100001DF8();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000023F4()
{
  v0 = *__error();
  sub_100001DAC();
  sub_100001D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_10000247C()
{
  sub_100001DC4();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000024EC()
{
  v0 = *__error();
  sub_100001DEC();
  sub_100001D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100002570()
{
  v0 = *__error();
  sub_100001DAC();
  sub_100001D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000025F8()
{
  v0 = *__error();
  sub_100001DEC();
  sub_100001D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_10000267C()
{
  sub_100001DC4();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FileExtent: 0 contigbytes fcntl() at offset %lld out of %lld", v2, 0x16u);
}

void sub_100002768()
{
  v0 = *__error();
  sub_100001DAC();
  sub_100001D9C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000027F0()
{
  sub_100001DEC();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100002944()
{
  sub_100001DF8();
  sub_100001E04();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000029C0(NSObject *a1)
{
  v2 = *__error();
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "sem_open() failed: %{errno}d", v3, 8u);
}