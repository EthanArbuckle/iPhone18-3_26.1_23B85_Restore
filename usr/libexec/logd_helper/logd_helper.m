void sub_100000BF8()
{
  v0 = &stru_10000C988;
  v1 = qword_100010260;
  if (!qword_100010260)
  {
    sub_1000017A0();
    v1 = qword_100010260;
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        sub_100001044(&stru_10000C988, [*(*(&v8 + 1) + 8 * v6) UTF8String]);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100000D24(io_connect_t *a1, const char *a2, const unsigned __int8 *a3)
{
  existing = -1431655766;
  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "IOP connect to coproc %s\n", a2);
  sub_1000010E4(__b);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v7 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  CFDictionaryAddValue(Mutable, @"role", v7);
  v8 = IOServiceMatching("RTBuddy");
  CFDictionaryAddValue(v8, @"IOPropertyMatch", Mutable);
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v8, &existing);
  if (MatchingServices)
  {
    v10 = MatchingServices;
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "IOServiceGetMatchingServices returned 0x%08X\n", v10);
    sub_1000010E4(__b);
  }

  else
  {
    v11 = IOIteratorNext(existing);
    if (v11)
    {
      v12 = v11;
      v10 = IOServiceOpen(v11, mach_task_self_, 0, a1);
      if (v10)
      {
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "IOServiceOpen returned 0x%08X\n", v10);
        sub_1000010E4(__b);
      }

      if (a3)
      {
        *&out[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *out = v13;
        *&out[16] = v13;
        uuid_unparse(a3, out);
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "IOP connect to subrole uuid %s \n", out);
        sub_1000010E4(__b);
        v14 = *a1;
        __b[0] = 0xAAAAAAAAAAAAAAAALL;
        __b[1] = 0xAAAAAAAAAAAAAAAALL;
        uuid_copy(__b, a3);
        v15 = IOConnectCallMethod(v14, 2u, 0, 0, __b, 0x10uLL, 0, 0, 0, 0);
        if (v15)
        {
          v16 = v15;
          memset(__b, 170, sizeof(__b));
          snprintf(__b, 0x400uLL, "attach to firmware role using uuid returned 0x%08X\n", v16);
          sub_1000010E4(__b);
        }
      }

      IOObjectRelease(v12);
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "Coprocessor %s not found.\n", a2);
      sub_1000010E4(__b);
      v10 = 4;
    }

    IOObjectRelease(existing);
  }

  CFRelease(Mutable);
  CFRelease(@"IOPropertyMatch");
  CFRelease(@"role");
  CFRelease(v7);
  return v10;
}

void sub_100001044(id a1, const char *a2)
{
  connection = -1431655766;
  if (!sub_100000D24(&connection, a2, 0))
  {
    inputStruct[0] = 3;
    inputStruct[1] = 0;
    IOConnectCallMethod(connection, 0, 0, 0, inputStruct, 0x10uLL, 0, 0, 0, 0);
    IOServiceClose(connection);
  }
}

void sub_1000010E4(uint64_t a1)
{
  if (qword_100010278 != -1)
  {
    dispatch_once_f(&qword_100010278, 0, sub_100003800);
  }

  if (!dispatch_get_specific(off_100010098))
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 0x40000000;
    v2[2] = sub_1000011D4;
    v2[3] = &unk_10000C668;
    v2[4] = a1;
    dispatch_sync(qword_100010280, v2);
  }
}

uint64_t sub_1000011D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(qword_100010280);
  memset(__b, 170, sizeof(__b));
  memset(v9, 170, 18);
  v7.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.tm_mon = v2;
  *&v7.tm_isdst = v2;
  *&v7.tm_sec = v2;
  v6 = time(0);
  localtime_r(&v6, &v7);
  strftime(v8, 0x1AuLL, "%F %T%z", &v7);
  v3 = getprogname();
  v4 = getpid();
  result = snprintf(__b, 0x400uLL, "%s %s[%d]: %s\n", v8, v3, v4, v1);
  if (result >= 1)
  {
    if (result >= 0x400)
    {
      __b[1022] = 10;
    }

    dispatch_assert_queue_V2(qword_100010280);
    sub_100001314();
    result = dword_1000100A0;
    if ((dword_1000100A0 & 0x80000000) == 0)
    {
      _os_trace_write();
      return sub_100001370();
    }
  }

  return result;
}

void sub_100001314()
{
  dispatch_assert_queue_V2(qword_100010280);
  if (dword_1000100A0 < 0)
  {
    sub_10000379C();
    if ((dword_1000100A0 & 0x80000000) == 0)
    {

      sub_100001370();
    }
  }
}

uint64_t sub_100001370()
{
  dispatch_assert_queue_V2(qword_100010280);
  v0 = lseek(dword_1000100A0, 0, 2);
  result = fsync(dword_1000100A0);
  if (v0 >= 0x100000)
  {
    if (close(dword_1000100A0) == -1)
    {
      v3 = *__error();
      result = *__error();
      if (v3 == 9)
      {
        qword_100010120 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100010150 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    rename(qword_100010290, qword_100010298, v2);

    return sub_10000379C();
  }

  return result;
}

uint64_t sub_100001448(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v5 = 0;
  v6 = "__cstring";
  do
  {
    if (*a2 == *v6 && a2[1] == *(v6 + 1))
    {
      v9 = *(a1 + 40) + 12 * v5;
      *(v9 + 16) = a3;
      *(v9 + 24) = a4;
      v8 = (v9 + 20);
      goto LABEL_10;
    }

    ++v5;
    v6 += 16;
  }

  while (v5 != 5);
  if (*a2 ^ 0x74736E6F635F5FLL | a2[1])
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = a3;
  *(*(*(a1 + 32) + 8) + 32) = a4;
  v8 = (*(*(a1 + 32) + 8) + 28);
LABEL_10:
  *v8 = a5;
  return 0;
}

uint64_t sub_1000014E4(void *a1, uint64_t a2)
{
  result = 0;
  v5 = *a2;
  if (*a2 > 26)
  {
    if (v5 == 44 || v5 == 33)
    {
      v15 = a1[9];
      if (!v15 || !*(a2 + 16))
      {
        goto LABEL_58;
      }

      goto LABEL_29;
    }

    if (v5 != 27)
    {
      goto LABEL_59;
    }

    v12 = a1[8];
    if (v12)
    {
      *v12 = *(a2 + 8);
    }

    v13 = a1[9];
    if (v13)
    {
      *(v13 + 8) = a2 + 8;
    }

    v14 = 5;
LABEL_26:
    v15 = (*(a1[v14] + 8) + 24);
LABEL_29:
    result = 0;
    *v15 = 1;
    goto LABEL_59;
  }

  switch(v5)
  {
    case 1:
      *(*(a1[6] + 8) + 24) = *(a2 + 36);
      v16 = a1[9];
      if (v16)
      {
        if ((*(a2 + 52) & 8) != 0)
        {
          *v16 = 1;
        }

        v17 = *(a2 + 48);
        if (68 * v17 + 56 <= *(a2 + 4))
        {
          if (v17)
          {
            v27 = a1[4];
            v28 = (a2 + 56);
            v29 = 1;
            do
            {
              result = (*(v27 + 16))(v27, v28, v28[10], (v28[8] - *(a2 + 24)), v28[9]);
              if (result)
              {
                v30 = 1;
              }

              else
              {
                v30 = v29 >= v17;
              }

              ++v29;
              v28 += 17;
            }

            while (!v30);
            break;
          }

          goto LABEL_58;
        }

LABEL_34:
        result = 88;
        break;
      }

LABEL_58:
      result = 0;
      break;
    case 12:
      v19 = *(a2 + 4);
      v18 = *(a2 + 8);
      if (v19 <= v18)
      {
        return 88;
      }

      if (v19 - v18 < 0x18 || a1[9] == 0)
      {
        goto LABEL_58;
      }

      v21 = (a2 + v18);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(v21 + 15);
      v25 = v22 == 0x6C2F687461707240 && v23 == 0x5F676E616C636269;
      if (!v25 || v24 != 0x6E6173612E74725FLL)
      {
        goto LABEL_58;
      }

      v14 = 7;
      goto LABEL_26;
    case 25:
      *(*(a1[6] + 8) + 24) = *(a2 + 48);
      v6 = a1[9];
      if (v6)
      {
        if ((*(a2 + 68) & 8) != 0)
        {
          *v6 = 1;
        }

        v7 = *(a2 + 64);
        if (80 * v7 + 72 <= *(a2 + 4))
        {
          if (v7)
          {
            v8 = a1[4];
            v9 = a2 + 72;
            v10 = 1;
            while (!HIDWORD(*(v9 + 40)))
            {
              result = (*(v8 + 16))(v8, v9, *(v9 + 48), (*(v9 + 32) - *(a2 + 24)));
              if (result)
              {
                v11 = 1;
              }

              else
              {
                v11 = v10 >= v7;
              }

              ++v10;
              v9 += 80;
              if (v11)
              {
                goto LABEL_59;
              }
            }

            result = 34;
            break;
          }

          goto LABEL_58;
        }

        goto LABEL_34;
      }

      goto LABEL_58;
  }

LABEL_59:
  if (!a1[9] && *(*(a1[5] + 8) + 24) == 1)
  {
    if (*(*(a1[6] + 8) + 24))
    {
      return 89;
    }
  }

  return result;
}

void sub_1000017A0()
{
  v0 = dword_100010090;
  if (dword_100010090 == -1)
  {
    if (qword_1000102B8 != -1)
    {
      dispatch_once(&qword_1000102B8, &stru_10000C9C8);
    }

    v0 = open(qword_1000102A0, 0x100000);
    dword_100010090 = v0;
    if (v0 < 0)
    {
      v12 = *__error();
      qword_100010120 = "BUG IN LIBTRACE: failed to open log store directory";
      qword_100010150 = v12;
      __break(1u);
      return;
    }
  }

  v1 = openat(v0, "roles.plist", 256);
  if (v1 == -1)
  {
    if (*__error() != 2)
    {
      _os_assumes_log();
    }

    goto LABEL_15;
  }

  v2 = [[NSFileHandle alloc] initWithFileDescriptor:v1];
  v14 = 0;
  v3 = [v2 readDataToEndOfFileAndReturnError:&v14];
  v4 = v14;
  v5 = v4;
  if (!v3)
  {
    v7 = [v4 domain];
    v8 = v7;
    if (v7 == NSCocoaErrorDomain)
    {
      v9 = [v5 code];

      if (v9 == 260)
      {
LABEL_14:
        [v2 closeFile];

LABEL_15:
        v6 = 0;
LABEL_16:
        v13 = objc_alloc_init(NSArray);

        goto LABEL_17;
      }
    }

    else
    {
    }

    _os_assumes_log();
    goto LABEL_14;
  }

  [v2 closeFile];

  v6 = [NSPropertyListSerialization propertyListWithData:v3 options:1 format:0 error:0];

  if (!v6)
  {
    goto LABEL_16;
  }

  v13 = v6;
  if (([v6 isNSArray] & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_17:
  v10 = [NSMutableSet setWithArray:v13];
  v11 = qword_100010260;
  qword_100010260 = v10;
}

void start()
{
  os_trace_set_mode();
  sub_100003978();
  memset(&v0[20], 170, 0x3ECuLL);
  strcpy(v0, "Started logd_helper");
  sub_1000010E4(v0);
  sub_100001A44();
  dispatch_main();
}

void sub_100001A44()
{
  qword_100010268 = dispatch_queue_create_with_target_V2("com.apple.logd_helper", 0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.logd_helper", qword_100010268, 1uLL);
  xpc_connection_set_event_handler(mach_service, &stru_10000C5C8);
  xpc_connection_activate(mach_service);
  qword_100010270 = mach_service;
}

void sub_100001AB0(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {

    sub_100001B24(a2);
  }

  else
  {
    qword_100010120 = "BUG IN LIBTRACE: Unexpected xpc object";
    qword_100010150 = type;
    __break(1u);
  }
}

void sub_100001B24(_xpc_connection_s *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_100000AC8;
  v2[3] = &unk_10000C5E8;
  v2[4] = a1;
  xpc_connection_set_event_handler(a1, v2);
  xpc_connection_set_target_queue(a1, qword_100010268);
  xpc_connection_activate(a1);
}

void sub_100001BE0(_xpc_connection_s *a1, xpc_object_t xdict)
{
  memset(dst, 170, sizeof(dst));
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  if (uuid)
  {
    v5 = uuid;
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v6;
    *&out[16] = v6;
    uuid_copy(dst, uuid);
    uuid_unparse(dst, out);
    v7 = CSGetBinaryPathForExclaveWithUUIDBytes();
    if (v7)
    {
      v8 = sub_100004060(v7, v5, 0, 0, 1);
      if (v8)
      {
        v9 = v8;
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "Harvesting from exclave failed (uuid: %s, err: %#x)", out, v9);
        sub_1000010E4(__b);
        v10 = a1;
        v11 = xdict;
        v12 = v9;
      }

      else
      {
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "Harvesting from exclave succeded: %s", out);
        sub_1000010E4(__b);
        v10 = a1;
        v11 = xdict;
        v12 = 0;
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "Harvesting from exclave failed (uuid: %s, err: %#x)", out, 2);
      sub_1000010E4(__b);
      v10 = a1;
      v11 = xdict;
      v12 = 2;
    }

    sub_100001DD0(v10, v11, v12);
  }

  else
  {

    sub_100001DD0(a1, xdict, 22);
  }
}

void sub_100001DD0(_xpc_connection_s *a1, xpc_object_t original, int a3)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_int64(reply, "status", a3);
    xpc_connection_send_message(a1, v6);

    xpc_release(v6);
  }
}

void sub_100001E5C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "directory");
  v5 = 22;
  if (uint64 > 1u)
  {
    if (uint64 == 2)
    {
      if (qword_1000102B8 != -1)
      {
        dispatch_once(&qword_1000102B8, &stru_10000C9C8);
      }

      v6 = qword_1000102B0;
      if (!qword_1000102B0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (uint64 != 3)
      {
        goto LABEL_53;
      }

      v6 = _os_trace_prefsdir_path();
      if (!v6)
      {
LABEL_25:
        v5 = 22;
        goto LABEL_53;
      }
    }
  }

  else if (uint64)
  {
    if (uint64 != 1)
    {
      goto LABEL_53;
    }

    if (qword_1000102B8 != -1)
    {
      dispatch_once(&qword_1000102B8, &stru_10000C9C8);
    }

    v6 = qword_1000102A8;
    if (!qword_1000102A8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_1000102B8 != -1)
    {
      dispatch_once(&qword_1000102B8, &stru_10000C9C8);
    }

    v6 = qword_1000102A0;
    if (!qword_1000102A0)
    {
      goto LABEL_25;
    }
  }

  memset(__b, 170, sizeof(__b));
  snprintf(__b, 0x400uLL, "Migrating: %s", v6);
  sub_1000010E4(__b);
  v7 = word_100007288[6 * uint64 + 4];
  v8 = mkpathat_np(-2, v6, v7);
  if (v8)
  {
    v9 = v8 == 17;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v5 = v8;
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Failed to create %s, error %d", v6, v5);
    sub_1000010E4(__b);
    goto LABEL_53;
  }

  if (fchmodat(-2, v6, v7, 32))
  {
    memset(__b, 170, sizeof(__b));
    v10 = __error();
    snprintf(__b, 0x400uLL, "Failed to chmod %s, error %d", v6, *v10);
    sub_1000010E4(__b);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v30[0] = v6;
  v30[1] = 0;
  v12 = fts_open(v30, 2132, 0);
  if (!v12)
  {
    v5 = *__error();
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Failed to open %s, error %d", v6, v5);
    sub_1000010E4(__b);
    goto LABEL_53;
  }

  v13 = v12;
  v14 = fts_read(v12);
  if (v14)
  {
    v15 = v14;
    while (1)
    {
      fts_info = v15->fts_info;
      if (fts_info <= 0xD)
      {
        v17 = 1 << fts_info;
        if (((1 << fts_info) & 0x490) != 0)
        {
          goto LABEL_39;
        }

        if ((v17 & 0x140) != 0)
        {
          goto LABEL_35;
        }

        if ((v17 & 0x3000) != 0)
        {
          break;
        }
      }

      if (fts_info == 2)
      {
        v15->fts_errno = 62;
LABEL_39:
        memset(__b, 170, sizeof(__b));
        fts_path = v15->fts_path;
        fts_errno = v15->fts_errno;
        snprintf(__b, 0x400uLL, "%s, error %d");
LABEL_40:
        sub_1000010E4(__b);
        ++v11;
      }

LABEL_41:
      v15 = fts_read(v13);
      if (!v15)
      {
        goto LABEL_42;
      }
    }

    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Warning: %s is a symlink", v15->fts_path);
    sub_1000010E4(__b);
LABEL_35:
    if (fchownat(-2, v15->fts_path, 0x110u, 0x110u, 32))
    {
      memset(__b, 170, sizeof(__b));
      v18 = v15->fts_path;
      v19 = *__error();
      snprintf(__b, 0x400uLL, "Failed to chown %s, error %d");
      goto LABEL_40;
    }

    goto LABEL_41;
  }

LABEL_42:
  fts_close(v13);
  if (v11)
  {
    v5 = 0;
  }

  else
  {
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "%s/%s", v6, ".migrated");
    v21 = openat(-2, __b, 1538, 420);
    if (v21 < 0)
    {
      memset(__str, 170, sizeof(__str));
      v26 = __error();
      snprintf(__str, 0x400uLL, "Failed to create marker file %s, error %d", __b, *v26);
      sub_1000010E4(__str);
    }

    else
    {
      v22 = v21;
      if (fchown(v21, 0x110u, 0x110u) == -1)
      {
        v27 = *__error();
        _os_assumes_log();
      }

      if (close(v22) == -1)
      {
        v23 = *__error();
        v24 = *__error();
        if (v23 == 9)
        {
          qword_100010120 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
          qword_100010150 = v24;
          __break(1u);
          return;
        }

        _os_assumes_log();
        v25 = *__error();
        _os_assumes_log();
      }
    }

    v5 = 0;
  }

LABEL_53:

  sub_100001DD0(a1, xdict, v5);
}

void sub_10000239C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v4;
  *&out[16] = v4;
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  if (uuid)
  {
    v6 = uuid;
    uuid_unparse(uuid, out);
    if (xpc_dictionary_get_string(xdict, "path"))
    {
      v7 = xpc_dictionary_get_BOOL(xdict, "coproc_free_only");
      string = xpc_dictionary_get_string(xdict, "role");
      size = 0xAAAAAAAAAAAAAAAALL;
      address = 0;
      connection = -1431655766;
      v9 = sub_100000D24(&connection, string, v6);
      if (v9)
      {
        v10 = v9;
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "Harvesting failed: can't connect to RTBuddyClient(returned: 0x%x, role: %s)", v10, string);
        sub_1000010E4(__b);
        v11 = 22;
        goto LABEL_15;
      }

      if (v7)
      {
        v11 = 0;
      }

      else
      {
        __b[0] = 0xAAAAAAAA00000000;
        __b[1] = &size;
        v14 = IOConnectCallMethod(connection, 0, 0, 0, __b, 0x10uLL, 0, 0, 0, 0);
        if (v14)
        {
          v15 = v14;
          memset(__b, 170, sizeof(__b));
          snprintf(__b, 0x400uLL, "Harvesting failed: can't get OSLog segment size(returned: 0x%x, role: %s)", v15, string);
          sub_1000010E4(__b);
          v11 = 22;
          goto LABEL_14;
        }

        v16 = mach_vm_allocate(mach_task_self_, &address, size, 1);
        if (v16)
        {
          v17 = v16;
          memset(__b, 170, sizeof(__b));
          snprintf(__b, 0x400uLL, "Harvesting failed: can't allocate memory for OSLog segment(returned: 0x%x, vm_size: 0x%llx, role: %s)", v17, size, string);
          sub_1000010E4(__b);
          v11 = 12;
          goto LABEL_14;
        }

        __b[0] = 0xAAAAAAAA00000001;
        __b[1] = address;
        v18 = IOConnectCallMethod(connection, 0, 0, 0, __b, 0x10uLL, 0, 0, 0, 0);
        if (v18)
        {
          v19 = v18;
          memset(__b, 170, sizeof(__b));
          snprintf(__b, 0x400uLL, "Harvesting failed: can't copy OSLogSegment to allocated memory(returned: 0x%x, addr: 0x%llx, role: %s)", v19, address, string);
          sub_1000010E4(__b);
          v11 = 22;
        }

        else
        {
          v24 = xmmword_1000071B0;
          v25 = 1;
          v26 = size;
          v28 = &v24;
          v29 = 24;
          v30 = address;
          v31 = size;
          v32 = string;
          v33 = strlen(string) + 1;
          v11 = sub_1000039E4(v6, 1);
        }

        v20 = mach_vm_deallocate(mach_task_self_, address, size);
        if (v20)
        {
          qword_100010120 = "BUG IN LIBTRACE: mach_vm_deallocate failed";
          qword_100010150 = v20;
          __break(1u);
        }
      }

      __b[0] = 2;
      __b[1] = 0;
      v12 = IOConnectCallMethod(connection, 0, 0, 0, __b, 0x10uLL, 0, 0, 0, 0);
      if (v12)
      {
        v13 = v12;
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "OSLog segment memory free failed(returned: 0x%x, role: %s)", v13, string);
        sub_1000010E4(__b);
      }

LABEL_14:
      IOServiceClose(connection);
      sub_100005F30(string);
      if (!v11)
      {
        memset(__b, 170, sizeof(__b));
        snprintf(__b, 0x400uLL, "Harvesting from memory succeded: %s");
        goto LABEL_16;
      }

LABEL_15:
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "Harvesting from memory failed(uuid: %s, err: 0x%x)");
LABEL_16:
      sub_1000010E4(__b);
      goto LABEL_17;
    }
  }

  v11 = 22;
LABEL_17:
  sub_100001DD0(a1, xdict, v11);
}

void sub_1000027D0(_xpc_connection_s *a1, xpc_object_t xdict)
{
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&out[16] = v4;
  *out = v4;
  string = xpc_dictionary_get_string(xdict, "path");
  if (!string || (v6 = string, (uuid = xpc_dictionary_get_uuid(xdict, "uuid")) == 0))
  {
    v22 = 22;
    goto LABEL_53;
  }

  v8 = uuid;
  uuid_unparse(uuid, out);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51[3] = v9;
  v51[4] = v9;
  v51[1] = v9;
  v51[2] = v9;
  v51[0] = v9;
  array = xpc_dictionary_get_array(xdict, "sections");
  v11 = array;
  if (array)
  {
    if (xpc_array_get_count(array) == 5)
    {
      v12 = 0;
      v13 = v51 + 1;
      while (1)
      {
        value = xpc_array_get_value(v11, v12);
        if (xpc_get_type(value) != &_xpc_type_data)
        {
          break;
        }

        memset(__str, 170, 16);
        data = xpc_array_get_data(v11, v12, &__str[8]);
        v16 = *&__str[8];
        *(v13 - 1) = data;
        *v13 = v16;
        ++v12;
        v13 += 2;
        if (v12 == 5)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_48:
    v22 = 22;
    goto LABEL_53;
  }

LABEL_8:
  if (!xpc_dictionary_get_BOOL(xdict, "ftab"))
  {
    v41 = xpc_dictionary_get_BOOL(xdict, "fake_uuid");
    if (v11)
    {
      v42 = v51;
    }

    else
    {
      v42 = 0;
    }

    v22 = sub_100004060(v6, v8, v42, v41, 0);
    goto LABEL_53;
  }

  v17 = xpc_dictionary_get_string(xdict, "role");
  if (!v17)
  {
    goto LABEL_48;
  }

  v18 = v17;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  memset(__b, 170, sizeof(__b));
  v19 = opendir("/private/var/tmp/FTABHarvest");
  if (!v19)
  {
    memset(__str, 170, sizeof(__str));
    v44 = __error();
    v45 = strerror(*v44);
    snprintf(__str, 0x400uLL, "Error opening FTAB harvesting folder %s", v45);
    sub_1000010E4(__str);
    v22 = 9;
    goto LABEL_57;
  }

  v20 = v19;
  v21 = 0;
  v22 = 0;
  while (1)
  {
    v23 = readdir(v20);
    if (!v23)
    {
      break;
    }

    v22 = 2;
    if ((v23->d_type | 2) == 0xA)
    {
      snprintf(__b, 0x400uLL, "%s/%s", "/private/var/tmp/FTABHarvest", v23->d_name);
      v24 = _os_trace_mmap_at();
      v21 = v24;
      if (v24)
      {
        if (v47 >> 31)
        {
          memset(__str, 170, sizeof(__str));
          snprintf(__str, 0x400uLL, "Invalid FTAB size 0x%zx", v47);
          sub_1000010E4(__str);
          munmap(v21, v47);
          v22 = 2;
        }

        else
        {
          v56 = v47;
          v50 = -1431655766;
          v49 = v24;
          if (v47 < 0x30)
          {
            goto LABEL_17;
          }

          if (!*(v24 + 4) || *(v24 + 32) != 0x62617466736F6B72)
          {
            goto LABEL_21;
          }

          v28 = *(v24 + 40);
          if (16 * v28 + 48 > v47)
          {
LABEL_17:
            v22 = 22;
          }

          else
          {
            if (!v28)
            {
              v22 = 2;
              goto LABEL_22;
            }

            v29 = 0;
            while (2)
            {
              v30 = (v24 + 48 + 16 * v29);
              v31 = v30[1];
              if (v47 < v31 || (v32 = v30[2], v47 - v31 < v32))
              {
LABEL_21:
                v22 = 9;
                break;
              }

              v33 = 0;
              v34 = v24 + v31;
              while (1)
              {
                v35 = dword_100007214[v33];
                if (v35 + 64 > v32)
                {
                  goto LABEL_38;
                }

                v36 = v34 + v35;
                if (*v36 == 1684632949)
                {
                  break;
                }

                if (++v33 == 8)
                {
                  goto LABEL_38;
                }
              }

              *__str = *(v36 + 16);
              if (*__str == *v8 && *&__str[8] == *(v8 + 8))
              {
                v50 = *v30;
                v38 = sub_1000036B8(v24, v47, "_osl", &v49, &v56);
                if (v38)
                {
                  v39 = v38;
                  memset(__str, 170, sizeof(__str));
                  snprintf(__str, 0x400uLL, "Error finding OS LOG file in FTAB 0x%x");
LABEL_45:
                  sub_1000010E4(__str);
                  v22 = v39;
                  goto LABEL_23;
                }

                v40 = sub_1000036B8(v49, v56, &v50, &v48, &v46);
                if (v40)
                {
                  v39 = v40;
                  memset(__str, 170, sizeof(__str));
                  snprintf(__str, 0x400uLL, "Error finding tag %.4s in OS LOG FTAB 0x%x");
                  goto LABEL_45;
                }

                closedir(v20);
                goto LABEL_60;
              }

LABEL_38:
              ++v29;
              v22 = 2;
              if (v29 != v28)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:
          *&v55[29] = 0xAAAAAAAAAAAAAAAALL;
          *&v27 = 0xAAAAAAAAAAAAAAAALL;
          *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v55 = v27;
          *&v55[16] = v27;
          uuid_unparse(v8, v55);
          memset(__str, 170, sizeof(__str));
          snprintf(__str, 0x400uLL, "Error finding UUID %s in ftab 0x%x", v55, v22);
          sub_1000010E4(__str);
LABEL_23:
          munmap(v21, v47);
        }
      }

      else
      {
        memset(__str, 170, sizeof(__str));
        v25 = __error();
        v26 = strerror(*v25);
        snprintf(__str, 0x400uLL, "Error mapping FTAB: %s err: %s", __b, v26);
        sub_1000010E4(__str);
        v22 = 2;
      }
    }
  }

  closedir(v20);
  if (v22)
  {
    *&v55[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v43 = 0xAAAAAAAAAAAAAAAALL;
    *(&v43 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v55 = v43;
    *&v55[16] = v43;
    uuid_unparse(v8, v55);
    memset(__str, 170, sizeof(__str));
    snprintf(__str, 0x400uLL, "Error finding OS LOG section for uuid: %s", v55);
    sub_1000010E4(__str);
    goto LABEL_57;
  }

LABEL_60:
  *v55 = xmmword_1000071B0;
  LODWORD(v56) = 1;
  HIDWORD(v56) = v46;
  *__str = v55;
  *&__str[8] = 16;
  *&__str[16] = &v56;
  *&__str[24] = 8;
  *&__str[32] = v48;
  *&__str[40] = v46;
  *&__str[48] = v6;
  *&__str[56] = strlen(v6) + 1;
  v22 = sub_1000039E4(v8, 1);
  munmap(v21, v47);
  sub_100005F30(v18);
  if (v22)
  {
LABEL_57:
    memset(__str, 170, sizeof(__str));
    snprintf(__str, 0x400uLL, "Harvesting from ftab failed(uuid: %s, err: 0x%x)");
    goto LABEL_58;
  }

  memset(__str, 170, sizeof(__str));
  snprintf(__str, 0x400uLL, "Harvesting from ftab succeded: %s");
LABEL_58:
  sub_1000010E4(__str);
LABEL_53:
  sub_100001DD0(a1, xdict, v22);
}

void sub_100002EA0(_xpc_connection_s *a1, xpc_object_t xdict)
{
  if (qword_1000102E0 != -1)
  {
    dispatch_once(&qword_1000102E0, &stru_10000CA88);
  }

  if (byte_100010108 != 1 || (uuid = xpc_dictionary_get_uuid(xdict, "uuid")) == 0)
  {
    v6 = 22;
    goto LABEL_8;
  }

  v5 = uuid;
  if (!sub_10000642C(uuid))
  {
    address[0] = 0xAAAAAAAAAAAAAAAALL;
    memset(__b, 170, sizeof(__b));
    v63 = 0;
    v64 = &v63;
    v65 = 0x2000000000;
    v66 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2000000000;
    v62 = 0;
    v7 = CFArrayCreate(kCFAllocatorDefault, off_1000100A8, 9, &kCFTypeArrayCallBacks);
    if (!v7)
    {
      v6 = 88;
LABEL_61:
      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&v63, 8);
      goto LABEL_8;
    }

    v8 = v7;
    v9 = OSKextCopyLoadedKextInfo();
    if (!v9)
    {
      v6 = 12;
LABEL_60:
      CFRelease(v8);
      goto LABEL_61;
    }

    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFDictionaryGetTypeID())
    {
      Count = CFDictionaryGetCount(v10);
      v13 = Count;
      v14 = vm_page_size + 232 * Count + 15;
      v15 = -vm_page_size;
      if (!vm_allocate(mach_task_self_, address, v14 & -vm_page_size, 1))
      {
        v16 = address[0];
        v17 = address[0];
        *address[0] = 0x264736368;
        v17 += 16;
        v50 = 5 * Count;
        v18 = (v17 + 120 * Count);
        v19 = &v18[8 * Count];
        context[0] = _NSConcreteStackBlock;
        context[1] = 0x40000000;
        context[2] = sub_100004C40;
        context[3] = &unk_10000C6F0;
        v58 = Count;
        v20 = v17;
        v51 = v16;
        v52 = v13;
        context[6] = v16;
        context[7] = v17;
        v21 = &v19[10 * v13];
        context[4] = &v59;
        context[5] = &v63;
        context[8] = v21;
        context[9] = v19;
        v49 = v19;
        context[10] = v18;
        CFDictionaryApplyFunction(v10, sub_100005104, context);
        if (*(v60 + 24) == 1)
        {
          _os_assumes_log();
          v6 = 88;
          goto LABEL_44;
        }

        v53 = v15;
        v54 = v14;
        v55 = v10;
        v56 = v8;
        v22 = *(address[0] + 8);
        v23 = *(address[0] + 12);
        v48 = v20;
        qsort_b(v20, v22, 0x18uLL, &stru_10000C730);
        qsort_b(v21, v22, 0x10uLL, &stru_10000C770);
        v24 = *(v64 + 6) + 24 * v22 + 16 + 32 * v23;
        if (v23)
        {
          v25 = v51 + 24 * v50;
          v26 = (v25 + 32 * v52 + 48);
          v27 = (v25 + 44);
          v28 = v23;
          while (1)
          {
            *v27 = v24;
            if (!CFStringGetCString(*v26, __b, 1024, 0x8000100u))
            {
              break;
            }

            v24 += strnlen(__b, 0x400uLL) + 1;
            v26 += 5;
            v27 += 8;
            if (!--v28)
            {
              goto LABEL_20;
            }
          }

          v6 = 2;
          goto LABEL_43;
        }

LABEL_20:
        qsort_b(v18, v23, 0x20uLL, &stru_10000C7B0);
        if (v22)
        {
          v29 = 0;
          v30 = 24 * v22 + 16 + 32 * v23;
          v31 = v30;
          while (1)
          {
            v32 = &v48[24 * v29];
            v33 = *&v49[10 * *(v32 + 4) + 4];
            *(v32 + 2) = v31;
            if (!v23)
            {
              goto LABEL_30;
            }

            v34 = 0;
            v35 = v23;
            do
            {
              v36 = (v35 + v34) >> 1;
              v37 = &v18[8 * v36];
              if (v33 >= *v37)
              {
                if (v33 - *v37 < v37[2])
                {
                  goto LABEL_31;
                }

                v34 = v36 + 1;
              }

              else
              {
                v35 = (v35 + v34) >> 1;
              }
            }

            while (v34 < v35);
            if (!v18[2])
            {
              LODWORD(v36) = 0;
            }

            else
            {
LABEL_30:
              LODWORD(v36) = -1;
            }

LABEL_31:
            *(v32 + 4) = v36;
            v38 = *(v32 + 3);
            v39 = __CFADD__(v31, v38);
            v31 += v38;
            if (v39)
            {
              break;
            }

            if (++v29 == v22)
            {
              goto LABEL_39;
            }
          }

          v6 = 88;
          goto LABEL_43;
        }

        v30 = 32 * v23 + 16;
        v31 = v30;
LABEL_39:
        if (*(v64 + 6) + v30 != v31)
        {
          _os_assert_log();
          _os_crash();
          __break(1u);
        }

        v69 = -1431655766;
        *&v40 = 0xAAAAAAAAAAAAAAAALL;
        *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v68[3] = v40;
        v68[4] = v40;
        v68[1] = v40;
        v68[2] = v40;
        v68[0] = v40;
        if (sub_100003A94(v5, 3, v68))
        {
          v6 = 0;
LABEL_43:
          v10 = v55;
          v8 = v56;
          v15 = v53;
          v14 = v54;
LABEL_44:
          vm_deallocate(mach_task_self_, address[0], v14 & v15);
LABEL_59:
          CFRelease(v10);
          goto LABEL_60;
        }

        address[1] = address[0];
        address[2] = 24 * v22 + 16;
        address[3] = v18;
        address[4] = 32 * v23;
        if (_os_trace_writev() != -1)
        {
          if (!v22)
          {
LABEL_50:
            if (!v23)
            {
LABEL_55:
              v10 = v55;
              v8 = v56;
              v15 = v53;
              v14 = v54;
              if (lseek(SDWORD1(v68[0]), 0, 1) != v24)
              {
                qword_100010120 = "BUG IN LIBTRACE: Unexpected resulting size";
                qword_100010150 = v24;
                __break(1u);
                return;
              }

              v46 = 0;
              goto LABEL_66;
            }

            v45 = (32 * v52 + 24 * v50 + v51 + 48);
            while (CFStringGetCString(*v45, __b, 1024, 0x8000100u))
            {
              strnlen(__b, 0x400uLL);
              if (_os_trace_write() == -1)
              {
                goto LABEL_64;
              }

              v45 += 5;
              if (!--v23)
              {
                goto LABEL_55;
              }
            }

            v46 = 2;
LABEL_65:
            v10 = v55;
            v8 = v56;
            v15 = v53;
            v14 = v54;
LABEL_66:
            v6 = sub_100003EC4(v68, v46);
            goto LABEL_44;
          }

          v41 = (v51 + 28);
          v42 = (24 * v50 + 72 * v52 + v51 + 24);
          while (1)
          {
            v43 = *v42;
            v44 = *v41;
            v41 += 6;
            if (_os_trace_write() == -1)
            {
              break;
            }

            v42 += 2;
            if (!--v22)
            {
              goto LABEL_50;
            }
          }
        }

LABEL_64:
        v47 = *__error();
        _os_assumes_log();
        v46 = *__error();
        goto LABEL_65;
      }

      _os_assumes_log();
    }

    v6 = 88;
    goto LABEL_59;
  }

  v6 = 0;
LABEL_8:

  sub_100001DD0(a1, xdict, v6);
}

void sub_10000352C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  if (uuid)
  {
    v5 = sub_1000048D4(uuid);
  }

  else
  {
    v5 = 22;
  }

  sub_100001DD0(a1, xdict, v5);
}

void sub_10000358C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uuid = xpc_dictionary_get_uuid(xdict, "uuid");
  if (uuid)
  {
    if (sub_10000642C(uuid))
    {
      v5 = 0;
    }

    else
    {
      v6 = 0;
      v7 = &v6;
      v8 = 0x2000000000;
      v9 = 2;
      dyld_for_each_installed_shared_cache();
      v5 = *(v7 + 6);
      _Block_object_dispose(&v6, 8);
    }
  }

  else
  {
    v5 = 22;
  }

  sub_100001DD0(a1, xdict, v5);
}

uint64_t sub_1000036B8(uint64_t a1, unint64_t a2, _DWORD *a3, void *a4, void *a5)
{
  *a4 = 0;
  *a5 = 0;
  v5 = 22;
  if (a2 >= 0x30 && a1 && a3)
  {
    if (*(a1 + 4) && *(a1 + 32) == 0x62617466736F6B72)
    {
      v7 = *(a1 + 40);
      if (16 * v7 + 48 <= a2)
      {
        if (!v7)
        {
          return 2;
        }

        for (i = (a1 + 48); *i != *a3; i += 4)
        {
          v5 = 2;
          if (!--v7)
          {
            return v5;
          }
        }

        v9 = i[1];
        if (a2 >= v9)
        {
          v10 = i[2];
          if (a2 - v9 >= v10)
          {
            v5 = 0;
            *a4 = a1 + v9;
            *a5 = v10;
            return v5;
          }
        }
      }

      return 22;
    }

    else
    {
      return 9;
    }
  }

  return v5;
}

uint64_t sub_10000379C()
{
  result = open(qword_100010290, 778, 420);
  dword_1000100A0 = result;
  if ((result & 0x80000000) == 0)
  {

    return fchown(result, 0x110u, 0x110u);
  }

  return result;
}

int *sub_100003800()
{
  asprintf(&qword_100010288, "com.apple.%s.log", "logd_helper");
  if (!qword_100010288)
  {
    v1 = *__error();
    qword_100010120 = "BUG IN LIBTRACE: failed to create queue target from subsystem";
    qword_100010150 = v1;
    __break(1u);
LABEL_10:
    result = __error();
    v2 = *result;
    qword_100010120 = "BUG IN LIBTRACE: failed to create log file path";
    qword_100010150 = v2;
    __break(1u);
    return result;
  }

  qword_100010280 = dispatch_queue_create_with_target_V2(qword_100010288, 0, 0);
  dispatch_queue_set_specific(qword_100010280, off_100010098, qword_100010280, 0);
  if (qword_1000102B8 != -1)
  {
    dispatch_once(&qword_1000102B8, &stru_10000C9C8);
  }

  asprintf(&qword_100010290, "%s/%s.0.log", qword_1000102A0, "logd_helper");
  if (qword_1000102B8 != -1)
  {
    dispatch_once(&qword_1000102B8, &stru_10000C9C8);
  }

  result = asprintf(&qword_100010298, "%s/%s.1.log", qword_1000102A0, "logd_helper");
  if (!qword_100010290 || !qword_100010298)
  {
    goto LABEL_10;
  }

  return result;
}

void sub_100003978()
{
  if (qword_100010278 != -1)
  {
    dispatch_once_f(&qword_100010278, 0, sub_100003800);
  }

  v1 = qword_100010280;

  dispatch_sync(v1, &stru_10000C6A8);
}

uint64_t sub_1000039E4(unsigned __int8 *a1, int a2)
{
  v6 = -1431655766;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v5[3] = v2;
  v5[4] = v2;
  v5[1] = v2;
  v5[2] = v2;
  v5[0] = v2;
  v3 = sub_100003A94(a1, a2, v5);
  if (!v3)
  {
    if (_os_trace_writev() == -1)
    {
      v3 = *__error();
    }

    else
    {
      v3 = 0;
    }
  }

  return sub_100003EC4(v5, v3);
}

uint64_t sub_100003A94(unsigned __int8 *a1, int a2, uint64_t a3)
{
  memset(__b, 170, sizeof(__b));
  memset(__str, 170, sizeof(__str));
  sub_1000061E0(a1, a2 | 0x10, __b);
  v6 = mkpath_np(__b, 0x1EDu);
  if (!v6 || (v7 = v6, v6 == 17))
  {
    if (chown(__b, 0x110u, 0x110u) == -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v8 = open(__b, 17826052);
      if (v8 == -1)
      {
        v23 = *__error();
        _os_assumes_log();
        v7 = *__error();
        goto LABEL_35;
      }

      v9 = v8;
      if (qword_1000102C0 != -1)
      {
        dispatch_once(&qword_1000102C0, &stru_10000CA08);
      }

      if (byte_1000102C8 == 1)
      {
        v27[1] = 0;
        v27[2] = 0;
        v27[0] = 0x4000000000000005;
        v26 = 4;
        if (fsetattrlist(v9, v27, &v26, 4uLL, 0) == -1)
        {
          goto LABEL_25;
        }
      }

      if ((a2 - 1) >= 2)
      {
        v13 = 0;
        v14 = (a3 + 8);
        do
        {
          *v14 = a0123456789abcd[a1[v13] >> 4];
          v12 = v14 + 2;
          v14[1] = a0123456789abcd[a1[v13++] & 0xF];
          v14 += 2;
        }

        while (v13 != 16);
      }

      else
      {
        v10 = 1;
        v11 = (a3 + 8);
        do
        {
          *v11 = a0123456789abcd[a1[v10] >> 4];
          v12 = v11 + 2;
          v11[1] = a0123456789abcd[a1[v10++] & 0xF];
          v11 += 2;
        }

        while (v10 != 16);
      }

      *v12 = 0;
      snprintf(__str, 0x400uLL, "%s/%s", __b, (a3 + 8));
      __strlcat_chk();
      if (qword_1000102C0 != -1)
      {
        dispatch_once(&qword_1000102C0, &stru_10000CA08);
      }

      v15 = byte_1000102C8 == 1 ? mkstemp_dprotected_np(__str, 4, 0) : mkostemp(__str, 0x1000000);
      a1 = v15;
      if (v15 == -1)
      {
LABEL_25:
        v18 = *__error();
        _os_assumes_log();
        v7 = *__error();
      }

      else
      {
        if (a2 != 2 || (boot_uuid = _os_trace_get_boot_uuid(), fsetxattr(a1, "com.apple.uuiddb.boot-uuid", boot_uuid, 0x25uLL, 0, 0) != -1))
        {
          if (fchmod(a1, 0x1A4u) != -1)
          {
            *a3 = v9;
            *(a3 + 4) = a1;
            v17 = strrchr(__str, 47);
            strcpy((a3 + 41), v17 + 1);
            return 0;
          }
        }

        v19 = *__error();
        _os_assumes_log();
        v7 = *__error();
        if (unlink(__str) == -1)
        {
          v25 = *__error();
          _os_assumes_log();
        }

        if (close(a1) == -1)
        {
          a2 = *__error();
          result = *__error();
          if (a2 == 9)
          {
            qword_100010120 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
            qword_100010150 = result;
            __break(1u);
            return result;
          }

          _os_assumes_log();
        }
      }

      if (close(v9) != -1)
      {
        goto LABEL_35;
      }

      v20 = *__error();
      v21 = *__error();
      if (v20 != 9)
      {
        break;
      }

      qword_100010120 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_100010150 = v21;
      __break(1u);
LABEL_32:
      v22 = *__error();
      _os_assumes_log();
    }
  }

  _os_assumes_log();
LABEL_35:
  *a3 = -1;
  return v7;
}

uint64_t sub_100003EC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    if (fchown(*(a1 + 4), 0x110u, 0x110u) == -1)
    {
      v8 = *__error();
      _os_assumes_log();
    }

    if (fsync(*(a1 + 4)) == -1)
    {
      v9 = *__error();
      _os_assumes_log();
    }

    v2 = renameat(*a1, (a1 + 41), *a1, (a1 + 8));
    if (v2 == -1)
    {
      v10 = *__error();
      _os_assumes_log();
      v2 = *__error();
    }
  }

  if ((*(a1 + 4) & 0x80000000) == 0)
  {
    if (v2 && unlinkat(*a1, (a1 + 41), 0) == -1)
    {
      v7 = *__error();
      _os_assumes_log();
    }

    if (close(*(a1 + 4)) == -1)
    {
      v5 = *__error();
      result = *__error();
      if (v5 == 9)
      {
        qword_100010120 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_100010150 = result;
        __break(1u);
        goto LABEL_21;
      }

      _os_assumes_log();
    }
  }

  if ((*a1 & 0x80000000) != 0 || close(*a1) != -1)
  {
    return v2;
  }

  v6 = *__error();
  result = *__error();
  if (v6 != 9)
  {
    _os_assumes_log();
    return v2;
  }

LABEL_21:
  qword_100010120 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_100010150 = result;
  __break(1u);
  return result;
}

uint64_t sub_100004060(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v10 = _os_trace_mmap_at();
  if (!v10)
  {
    return *__error();
  }

  v11 = v10;
  v12 = v38;
  if (v38 >> 31)
  {
    munmap(v10, v38);
    return 34;
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 0x40000000;
  v31 = sub_100004328;
  v32 = &unk_10000C6C8;
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v37 = a5;
  v35 = a1;
  v15 = *v10;
  v14 = 88;
  if (*v10 <= -805638659)
  {
    switch(v15)
    {
      case -1095041334:
        v17 = bswap32(v10[1]);
        v18 = 1;
        break;
      case -889275714:
        v18 = 0;
        v17 = v10[1];
        break;
      case -822415874:
        goto LABEL_15;
      default:
        goto LABEL_16;
    }

    v19 = 20 * v17;
    if (20 * v17 == v19 && v38 - 8 >= v19)
    {
      v21 = v17;
      if (v17)
      {
        v22 = v10 + 5;
        v23 = 1;
        while (1)
        {
          LODWORD(v24) = *(v22 - 1);
          v25 = bswap32(v24);
          v24 = v18 ? v25 : v24;
          if (v12 < v24)
          {
            break;
          }

          v26 = bswap32(*v22);
          v27 = v18 ? v26 : *v22;
          if (v12 - v24 < v27)
          {
            break;
          }

          v14 = (v31)(v30, v11 + v24);
          if (v14)
          {
            v28 = 1;
          }

          else
          {
            v28 = v23 >= v21;
          }

          ++v23;
          v22 += 5;
          if (v28)
          {
            goto LABEL_16;
          }
        }

        v14 = 88;
      }

      else
      {
        v14 = 0;
      }
    }

    goto LABEL_16;
  }

  if (v15 != -17958193 && v15 != -17958194 && v15 != -805638658)
  {
    goto LABEL_16;
  }

LABEL_15:
  v14 = sub_100004328(v30, v10, v38);
LABEL_16:
  if (munmap(v11, v38) == -1)
  {
    v29 = *__error();
    _os_assumes_log();
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 2;
  }

  if (v14 == 89)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

uint64_t sub_100004328(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75[4] = v6;
  v75[5] = v6;
  v75[2] = v6;
  v75[3] = v6;
  v75[0] = v6;
  v75[1] = v6;
  v74 = 0xAAAAAAAAAAAAAAAALL;
  v73[0] = v6;
  v73[1] = v6;
  memset(uu, 170, sizeof(uu));
  v67 = 0;
  v68 = &v67;
  v69 = 0x2000000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2000000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2800000000;
  v57 = 0;
  v58 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75[6] = v6;
  v76 = 0u;
  BYTE1(v76) = _dyld_is_memory_immutable() ^ 1;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 0x40000000;
  v53[2] = sub_100001448;
  v53[3] = &unk_10000C560;
  v53[4] = &v54;
  v53[5] = &v76;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 0x40000000;
  v45 = sub_1000014E4;
  v46 = &unk_10000C588;
  v51 = uu;
  v52 = &v76;
  v47 = v53;
  v48 = &v67;
  v49 = &v59;
  v50 = &v63;
  if (a3 < 4)
  {
    goto LABEL_9;
  }

  if (*a2 != -17958194)
  {
    if (*a2 == -17958193 && a3 >= 0x20)
    {
      v7 = a2[5];
      if (a3 - 32 >= v7)
      {
        v43 = 1;
        v8 = 8;
        goto LABEL_48;
      }
    }

LABEL_9:
    v9 = 88;
    goto LABEL_10;
  }

  if (a3 < 0x1C)
  {
    goto LABEL_9;
  }

  v7 = a2[5];
  if (a3 - 28 < v7)
  {
    goto LABEL_9;
  }

  v43 = 0;
  v8 = 7;
LABEL_48:
  v30 = 0;
  v31 = a2[4];
  LOBYTE(v32) = v31 == 0;
  if (v31 && v7 >= 8)
  {
    v33 = &a2[v8];
    v34 = v7;
    v35 = 1;
    while (1)
    {
      v36 = v33[1];
      v16 = v34 >= v36;
      v34 -= v36;
      if (!v16)
      {
        goto LABEL_9;
      }

      v30 = 0;
      v37 = *v33;
      if (*v33 > 26)
      {
        switch(v37)
        {
          case 44:
            v40 = v43;
            if (v36 <= 0x17)
            {
              v40 = 0;
            }

            if ((v40 & 1) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_78;
          case 33:
            v41 = v43;
            if (v36 < 0x14)
            {
              v41 = 1;
            }

            if (v41)
            {
              goto LABEL_9;
            }

            goto LABEL_78;
          case 27:
LABEL_61:
            if (v36 < 0x18)
            {
              goto LABEL_9;
            }

LABEL_78:
            v30 = v45(v44, v33);
            break;
        }
      }

      else
      {
        switch(v37)
        {
          case 1:
            v38 = v36 >= 0x38;
            v39 = v43;
            break;
          case 12:
            goto LABEL_61;
          case 25:
            v38 = v36 >= 0x48;
            v39 = v43 ^ 1;
            break;
          default:
            goto LABEL_79;
        }

        if (!v38)
        {
          v39 = 1;
        }

        if (v39)
        {
          goto LABEL_9;
        }

        if (!strcmp(v33 + 8, "__TEXT") || !strcmp(v33 + 8, "__CTF") || !strcmp(v33 + 8, "__OS_LOG"))
        {
          goto LABEL_78;
        }

        v30 = 0;
      }

LABEL_79:
      if (v30)
      {
        v42 = 1;
      }

      else
      {
        v42 = v35 >= v31;
      }

      v32 = v42;
      if (v34 >= 8)
      {
        v33 = (v33 + v36);
        ++v35;
        if (!v32)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v32)
  {
    v9 = v30;
  }

  else
  {
    v9 = 88;
  }

LABEL_10:
  if (*(v64 + 24) == 1 && !DWORD2(v78))
  {
    v10 = *(v55 + 8);
    *(&v78 + 1) = v55[3];
    LODWORD(v79) = v10;
  }

  v11 = 0;
  v12 = &v77;
  do
  {
    v13 = *(&v77 + v11 + 4);
    if (v13)
    {
      v14 = *(&v76 + v11 + 16);
      v16 = a3 >= v14;
      v15 = a3 - v14;
      v16 = v16 && v15 >= v13;
      if (!v16)
      {
        goto LABEL_45;
      }
    }

    v11 += 12;
  }

  while (v11 != 60);
  if (v9 != 89 && v9 || *(v68 + 24) != 1 || !v60[3])
  {
    uuid_clear(uu);
LABEL_45:
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v67, 8);
    return 0;
  }

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  v17 = *(a1 + 56);
  if ((v17 & 1) == 0)
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      if (*v18 != *uu || v18[1] != *&uu[8])
      {
        return 0;
      }
    }
  }

  if (v76 == 1 && !*(a1 + 40))
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v72 = xmmword_1000071C0;
  v21 = 1;
  while (1)
  {
    v22 = v12[1];
    if (v22)
    {
      break;
    }

LABEL_41:
    v19 += 16;
    v12 += 3;
    if (v19 == 80)
    {
      goto LABEL_42;
    }
  }

  v23 = *(a1 + 40);
  if (v23)
  {
    v24 = v23 + v19;
    if (*(v24 + 8) != v22)
    {
      return 72;
    }

    v75[v21] = *v24;
  }

  else
  {
    v25 = &v75[v21];
    *v25 = a2 + *v12;
    v25[1] = v22;
  }

  if (v19 != 64)
  {
    if (*(a1 + 57) == 1)
    {
      *v12 = v12[2];
    }

    *(v73 + v20++) = *v12;
    HIDWORD(v72) = v20;
    ++v21;
    goto LABEL_41;
  }

LABEL_42:
  *&v75[0] = &v72;
  *(&v75[0] + 1) = 8 * v20 + 16;
  v26 = *(a1 + 48);
  v27 = &v75[v21];
  *v27 = v26;
  v27[1] = (strlen(v26) + 1);
  if (v17)
  {
    v28 = *(a1 + 32);
  }

  else
  {
    v28 = uu;
  }

  LODWORD(result) = sub_1000039E4(v28, 1);
  if (result)
  {
    return result;
  }

  else
  {
    return 89;
  }
}

uint64_t sub_1000048D4(unsigned __int8 *a1)
{
  *&out.sysname[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out.sysname = v3;
  *&out.sysname[16] = v3;
  uuid_unparse(a1, out.sysname);
  values[0] = CFStringCreateWithCString(kCFAllocatorDefault, out.sysname, 0x8000100u);
  if (values[0])
  {
    v4 = CFArrayCreate(kCFAllocatorDefault, values, 1, &kCFTypeArrayCallBacks);
    if (v4)
    {
      v5 = CFArrayCreate(kCFAllocatorDefault, off_1000100F0, 3, &kCFTypeArrayCallBacks);
      if (v5 && (v6 = OSKextCopyLoadedKextInfoByUUID()) != 0)
      {
        v7 = v6;
        Value = CFDictionaryGetValue(v6, values[0]);
        v9 = Value;
        if (Value)
        {
          CFRetain(Value);
        }

        CFRelease(v7);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v5 = 0;
    }

    if (values[0])
    {
      CFRelease(values[0]);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    memset(values, 170, sizeof(values));
    if (v9)
    {
      v10 = CFGetTypeID(v9);
      if (v10 == CFDictionaryGetTypeID())
      {
        v1 = &selRef_UTF8String;
        if (qword_1000102E0 == -1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      dispatch_once(&qword_1000102E0, &stru_10000CA88);
LABEL_19:
      if (byte_100010108)
      {
        BytePtr = 0;
        Length = 0;
      }

      else
      {
        v14 = CFDictionaryGetValue(v9, @"OSBundleLogStrings");
        if (!v14)
        {
          goto LABEL_28;
        }

        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 != CFDataGetTypeID())
        {
          goto LABEL_28;
        }

        BytePtr = CFDataGetBytePtr(v15);
        Length = CFDataGetLength(v15);
      }

      v17 = CFDictionaryGetValue(v9, @"OSBundleExecutablePath");
      if (v17)
      {
        v18 = v17;
        v19 = CFGetTypeID(v17);
        if (v19 != CFStringGetTypeID() || (v20 = values, !CFStringGetCString(v18, values, 1024, 0x8000100u)))
        {
LABEL_28:
          v13 = 22;
          goto LABEL_40;
        }
      }

      else
      {
        memset(&out, 170, sizeof(out));
        if (uname(&out) || !strcasestr(out.version, "development"))
        {
          v20 = "/kernel";
        }

        else
        {
          v20 = "/kernel.development";
        }
      }

      v22 = xmmword_1000071C0;
      v23 = &v22;
      v24 = 16;
      v25 = 0;
      v26 = 0;
      v27 = v20;
      v28 = 0xAAAAAAAAAAAAAAAALL;
      v28 = strlen(v20) + 1;
      if (v1[92] != -1)
      {
        dispatch_once(&qword_1000102E0, &stru_10000CA88);
      }

      if ((byte_100010108 & 1) == 0)
      {
        v13 = 22;
        if (!BytePtr || Length < 8)
        {
          goto LABEL_40;
        }

        v25 = BytePtr + 8;
        v26 = Length - 8;
        HIDWORD(v22) = *(BytePtr + 1);
      }

      v13 = sub_1000039E4(a1, 2);
LABEL_40:
      CFRelease(v9);
      return v13;
    }
  }

  return 2;
}

unint64_t sub_100004C40(unint64_t result, CFTypeRef cf, const void *a3)
{
  if (cf)
  {
    v3 = result;
    if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
    {
      v5 = CFGetTypeID(cf);
      result = CFStringGetTypeID();
      if (a3)
      {
        if (v5 == result)
        {
          v6 = CFGetTypeID(a3);
          result = CFDictionaryGetTypeID();
          if (v6 == result)
          {
            Value = CFDictionaryGetValue(a3, @"OSBundleExecutablePath");
            if (Value)
            {
              v8 = Value;
              v9 = CFGetTypeID(Value);
              result = CFStringGetTypeID();
              if (v9 != result)
              {
                return result;
              }
            }

            else
            {
              memset(&v39[24], 170, 0x500uLL);
              if (uname(&v39[24]) || !strcasestr(&v39[792], "development"))
              {
                v8 = @"/kernel";
              }

              else
              {
                v8 = @"/kernel.development";
              }
            }

            result = CFDictionaryGetValue(a3, @"OSBundleTextUUID");
            if (result)
            {
              v10 = result;
              TypeID = CFDataGetTypeID();
              result = CFGetTypeID(v10);
              if (TypeID == result)
              {
                result = CFDataGetLength(v10);
                if (result == 16)
                {
                  v12 = CFDictionaryGetValue(a3, @"OSBundleLogStrings");
                  v13 = v12;
                  if (v12)
                  {
                    v14 = CFGetTypeID(v12);
                    if (v14 == CFDataGetTypeID())
                    {
                      BytePtr = CFDataGetBytePtr(v13);
                      result = CFDataGetLength(v13);
                      if (result < 8)
                      {
                        return result;
                      }

                      goto LABEL_22;
                    }

                    v13 = 0;
                  }

                  BytePtr = 0;
LABEL_22:
                  memset(v39, 170, 32);
                  result = CFDictionaryGetValue(a3, @"OSBundleCacheLoadAddress");
                  if (result)
                  {
                    v16 = result;
                    v17 = CFNumberGetTypeID();
                    result = CFGetTypeID(v16);
                    if (v17 == result)
                    {
                      result = CFNumberGetValue(v16, kCFNumberSInt64Type, &v39[24]);
                      if (result)
                      {
                        result = CFDictionaryGetValue(a3, @"OSBundleLoadAddress");
                        if (result)
                        {
                          v18 = result;
                          v19 = CFNumberGetTypeID();
                          result = CFGetTypeID(v18);
                          if (v19 == result)
                          {
                            result = CFNumberGetValue(v18, kCFNumberSInt64Type, &v39[16]);
                            if (result)
                            {
                              result = CFDictionaryGetValue(a3, @"OSBundleExecLoadAddress");
                              if (result)
                              {
                                v20 = result;
                                v21 = CFNumberGetTypeID();
                                result = CFGetTypeID(v20);
                                if (v21 == result)
                                {
                                  result = CFNumberGetValue(v20, kCFNumberSInt64Type, &v39[8]);
                                  if (result)
                                  {
                                    result = CFDictionaryGetValue(a3, @"OSBundleExecLoadSize");
                                    if (result)
                                    {
                                      v22 = result;
                                      v23 = CFNumberGetTypeID();
                                      result = CFGetTypeID(v22);
                                      if (v23 == result)
                                      {
                                        result = CFNumberGetValue(v22, kCFNumberSInt64Type, v39);
                                        if (result)
                                        {
                                          if (*&v39[16] && *&v39[8])
                                          {
                                            result = CFDictionaryGetValue(a3, @"OSBundleKextsInKernelText");
                                            if (result)
                                            {
                                              *v39 = 0;
                                            }

                                            v24 = *(v3 + 48);
                                            v25 = *(v24 + 12);
                                            if (v25 >= *(v3 + 88))
                                            {
LABEL_48:
                                              *(*(*(v3 + 32) + 8) + 24) = 1;
                                            }

                                            else
                                            {
                                              v26 = *(v24 + 8);
                                              if (BytePtr)
                                              {
                                                v27 = *(BytePtr + 1);
                                                if (v27)
                                                {
                                                  v28 = 0;
                                                  v29 = &BytePtr[8 * v27 + 8];
                                                  v30 = (BytePtr + 12);
                                                  do
                                                  {
                                                    v31 = *v30;
                                                    if (*v30)
                                                    {
                                                      v32 = *(v3 + 56) + 24 * v26;
                                                      *(v32 + 16) = v25;
                                                      *v32 = *&v39[16] + *(v30 - 1) - *&v39[24];
                                                      *(v32 + 12) = v31;
                                                      v33 = *(*(v3 + 40) + 8);
                                                      v34 = *(v33 + 24);
                                                      *(v33 + 24) = v34 + v31;
                                                      if (__CFADD__(v34, v31))
                                                      {
                                                        goto LABEL_48;
                                                      }

                                                      *(*(v3 + 64) + 16 * v26 + 8) = v29;
                                                      *(*(v3 + 64) + 16 * v26) = *(*(v3 + 56) + 24 * v26);
                                                      v29 += *v30;
                                                      ++v26;
                                                      v27 = *(BytePtr + 1);
                                                    }

                                                    ++v28;
                                                    v30 += 2;
                                                  }

                                                  while (v28 < v27);
                                                  v24 = *(v3 + 48);
                                                }
                                              }

                                              *(v24 + 8) = v26;
                                              *(*(v3 + 72) + 40 * v25 + 24) = v13;
                                              *(*(v3 + 72) + 40 * v25 + 32) = v8;
                                              v35 = *(v3 + 72) + 40 * v25;
                                              *(v35 + 8) = *&v39[16] - *&v39[24];
                                              v36 = *&v39[8] - *&v39[24];
                                              *(v35 + 16) = *&v39[8] - *&v39[24];
                                              v37 = *(v3 + 80) + 32 * v25;
                                              *v37 = v36;
                                              *(v37 + 8) = *v39;
                                              v38 = CFDataGetBytePtr(v10);
                                              uuid_copy((v37 + 12), v38);
                                              ++*(*(v3 + 48) + 12);
                                              return sub_1000048D4((*(v3 + 80) + 32 * v25 + 12));
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int sub_1000050BC(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 != *a3;
  }
}

int sub_1000050D4(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 != *a3;
  }
}

int sub_1000050EC(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 != *a3;
  }
}

void sub_100005120(uint64_t a1)
{
  memset(uu, 170, sizeof(uu));
  dyld_shared_cache_copy_uuid();
  v2 = *(a1 + 40);
  if (*v2 == *uu && v2[1] == *&uu[8])
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&out[16] = v3;
    *out = v3;
    uuid_unparse(uu, out);
    memset(__b, 170, sizeof(__b));
    snprintf(__b, 0x400uLL, "Harvesting: %s", out);
    sub_1000010E4(__b);
    address = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = 0;
    v4 = vm_page_size + 1760015;
    v5 = -vm_page_size;
    if (vm_allocate(mach_task_self_, &address, (vm_page_size + 1760015) & -vm_page_size, 1))
    {
      _os_assumes_log();
      v38 = 12;
LABEL_43:
      _Block_object_dispose(&v50, 8);
      *(*(*(a1 + 32) + 8) + 24) = v38;
      memset(__b, 170, sizeof(__b));
      snprintf(__b, 0x400uLL, "Harvest Complete for %s: %d", out, *(*(*(a1 + 32) + 8) + 24));
      sub_1000010E4(__b);
      return;
    }

    v41 = v5;
    v6 = address;
    v7 = address;
    *address = 0x264736368;
    v8 = (v7 + 16);
    v9 = (v6 + 1520016);
    v46 = 0;
    v47 = &v46;
    v48 = 0x2000000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2000000000;
    v45 = 0;
    v10 = (v6 + 1200016);
    dyld_shared_cache_get_base_address();
    dyld_shared_cache_for_each_image();
    v11 = *(address + 12);
    if (*(v51 + 6) || *(v43 + 24) == 1)
    {
      _os_assumes_log();
      v36 = 88;
      goto LABEL_39;
    }

    v12 = (v6 + 1200024);
    v13 = *(address + 8);
    v40 = v4;
    v14 = 24 * v13 + 16 + 32 * v11;
    qsort_b(v8, v13, 0x18uLL, &stru_10000C890);
    v15 = *(v47 + 6) + v14;
    if (v11)
    {
      v16 = (v9 + 1);
      v17 = v12 + 5;
      v18 = v11;
      do
      {
        *v17 = v15;
        v17 += 8;
        v19 = *v16;
        v16 += 6;
        v15 += v19 + 1;
        --v18;
      }

      while (v18);
    }

    qsort_b(v10, v11, 0x20uLL, &stru_10000C8D0);
    if (v13)
    {
      v20 = 0;
      v21 = 24 * v13 + 16 + 32 * v11;
      while (1)
      {
        v22 = &v8[24 * v20];
        v23 = v9[3 * *(v22 + 4) + 2];
        *(v22 + 2) += v14;
        if (!v11)
        {
          goto LABEL_19;
        }

        v24 = 0;
        v25 = v11;
        do
        {
          v26 = (v25 + v24) >> 1;
          v27 = &v10[32 * v26];
          if (v23 >= *v27)
          {
            if (&v23[-*v27] < *(v27 + 2))
            {
              goto LABEL_20;
            }

            v24 = v26 + 1;
          }

          else
          {
            v25 = (v25 + v24) >> 1;
          }
        }

        while (v24 < v25);
        if (!*v12)
        {
          LODWORD(v26) = 0;
        }

        else
        {
LABEL_19:
          LODWORD(v26) = -1;
        }

LABEL_20:
        *(v22 + 4) = v26;
        v28 = *(v22 + 3);
        v29 = __CFADD__(v21, v28);
        v21 += v28;
        if (v29)
        {
          break;
        }

        if (++v20 == v13)
        {
          goto LABEL_25;
        }
      }

      v36 = 88;
      v4 = v40;
      goto LABEL_39;
    }

    v21 = 32 * v11 + 16;
LABEL_25:
    if (*(v47 + 6) + v14 != v21)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    v68[0] = 0xAAAAAAAAAAAAAAAALL;
    v68[1] = 0xAAAAAAAAAAAAAAAALL;
    dyld_shared_cache_copy_uuid();
    v67 = -1431655766;
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65 = v30;
    v66 = v30;
    v63 = v30;
    v64 = v30;
    v62 = v30;
    v4 = v40;
    if (sub_100003A94(v68, 3, &v62))
    {
      goto LABEL_40;
    }

    v58 = address;
    v59 = 24 * v13 + 16;
    v60 = v10;
    v61 = 32 * v11;
    if (_os_trace_writev() != -1)
    {
      __b[0] = _NSConcreteStackBlock;
      __b[1] = 0x40000000;
      *&__b[9] = v64;
      *&__b[11] = v65;
      *&__b[13] = v66;
      *&__b[5] = v62;
      __b[2] = sub_100005A8C;
      __b[3] = &unk_10000C948;
      __b[4] = &v50;
      LODWORD(__b[15]) = v67;
      *&__b[7] = v63;
      dyld_shared_cache_for_each_image();
      v31 = *(v51 + 6);
      if (v31)
      {
LABEL_37:
        v36 = sub_100003EC4(&v62, v31);
LABEL_39:
        *(v51 + 6) = v36;
LABEL_40:
        if (v11)
        {
          do
          {
            v37 = *v9;
            v9 += 3;
            free(v37);
            --v11;
          }

          while (v11);
        }

        vm_deallocate(mach_task_self_, address, v4 & v41);
        v38 = *(v51 + 6);
        _Block_object_dispose(&v42, 8);
        _Block_object_dispose(&v46, 8);
        goto LABEL_43;
      }

      if (!v11)
      {
LABEL_35:
        if (lseek(SDWORD1(v62), 0, 1) != v15)
        {
          qword_100010120 = "BUG IN LIBTRACE: Unexpected resulting size";
          qword_100010150 = v15;
          __break(1u);
          return;
        }

        v31 = *(v51 + 6);
        goto LABEL_37;
      }

      v32 = 1;
      while (1)
      {
        v33 = &v9[3 * v32 - 3];
        v58 = *v33;
        v59 = (*(v33 + 2) + 1);
        if (v32 < v11)
        {
          v34 = &v9[3 * v32];
          v60 = *v34;
          v61 = (*(v34 + 2) + 1);
        }

        if (_os_trace_writev() == -1)
        {
          break;
        }

        v35 = v32 + 1;
        v32 += 2;
        if (v35 >= v11)
        {
          goto LABEL_35;
        }
      }
    }

    v39 = *__error();
    _os_assumes_log();
    v31 = *__error();
    *(v51 + 6) = v31;
    goto LABEL_37;
  }
}

void sub_100005774(void *a1)
{
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v2 = a1[6];
    v24 = *(v2 + 8);
    v3 = *(v2 + 12);
    if (v3 >> 4 < 0x271)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2000000000;
      v20 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2000000000;
      v16 = 0;
      v12 = a1[7];
      dyld_image_for_each_segment_info();
      v8 = a1[4];
      v10 = a1[7];
      v11 = a1[8];
      v9 = a1[5];
      dyld_image_for_each_section_info();
      *(a1[6] + 8) = *(v22 + 6);
      installname = dyld_image_get_installname();
      if (!installname)
      {
        memset(&v26[28], 170, 0x3E4uLL);
        strcpy(v26, "Warning: missing image path");
        sub_1000010E4(v26);
        installname = "<missing image path>";
      }

      memset(uu, 170, sizeof(uu));
      if ((dyld_image_copy_uuid() & 1) == 0)
      {
        memset(&v26[28], 170, 0x3E4uLL);
        strcpy(v26, "Warning: missing image uuid");
        sub_1000010E4(v26);
        uuid_clear(uu);
      }

      *(a1[9] + 24 * v3) = _os_trace_strdup();
      v5 = strlen(installname);
      v6 = a1[9] + 24 * v3;
      *(v6 + 8) = v5;
      *(v6 + 16) = v18[3];
      v7 = a1[10] + 32 * v3;
      *v7 = v18[3];
      *(v7 + 8) = v14[3];
      *(v7 + 12) = *uu;
      ++*(a1[6] + 12);
      _Block_object_dispose(&v13, 8);
      _Block_object_dispose(&v17, 8);
    }

    else
    {
      memset(&v26[37], 170, 0x3DBuLL);
      strcpy(v26, "Exceeded LOGD_HELPER_MAX_IMAGE_COUNT");
      sub_1000010E4(v26);
      *(*(a1[4] + 8) + 24) = 1;
    }

    _Block_object_dispose(&v21, 8);
  }
}

uint64_t sub_100005A8C(uint64_t result)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v4 = *(result + 72);
    v5 = *(result + 88);
    v6 = *(result + 104);
    v7 = *(result + 120);
    v2 = *(result + 40);
    v3 = *(result + 56);
    v1 = *(result + 32);
    return dyld_image_for_each_section_info();
  }

  return result;
}

uint64_t sub_100005B64(uint64_t a1, const char *a2, const char *a3)
{
  result = sub_100005C58(a2, a3);
  if (result)
  {
    v5 = *(a1 + 40);
    v9 = *(a1 + 80);
    v10 = *(a1 + 96);
    v11 = *(a1 + 112);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v12 = *(a1 + 128);
    v6 = *(a1 + 32);
    return dyld_image_content_for_section();
  }

  return result;
}

BOOL sub_100005C58(const char *a1, const char *a2)
{
  if (strcmp(a1, "__TEXT") && strcmp(a1, "__CTF"))
  {
    return 0;
  }

  v5 = "__cstring";
  v6 = 4;
  do
  {
    v7 = v6;
    v8 = strcmp(a2, v5);
    result = v8 == 0;
    if (!v8)
    {
      break;
    }

    v6 = v7 - 1;
    v5 += 16;
  }

  while (v7);
  return result;
}

_DWORD *sub_100005CE8(uint64_t a1)
{
  v2 = *(a1 + 44);
  result = _os_trace_write();
  if (result == -1)
  {
    v4 = *__error();
    _os_assumes_log();
    result = __error();
    *(*(*(a1 + 32) + 8) + 24) = *result;
  }

  return result;
}

int sub_100005D40(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 != *a3;
  }
}

int sub_100005D58(id a1, const void *a2, const void *a3)
{
  if (*a2 < *a3)
  {
    return -1;
  }

  else
  {
    return *a2 != *a3;
  }
}

uint64_t sub_100005D70(void *a1, char *__s1, unint64_t a3, uint64_t a4)
{
  result = strcmp(__s1, "__TEXT");
  if (!result)
  {
    v8 = a1[7];
    v9 = a3 >= v8;
    v10 = a3 - v8;
    if (v9)
    {
      *(*(a1[5] + 8) + 24) = v10;
      *(*(a1[6] + 8) + 24) = a4;
    }

    else
    {
      result = _os_assumes_log();
      *(*(a1[4] + 8) + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_100005DF8(uint64_t a1, const char *a2, const char *a3, unint64_t a4, uint64_t a5)
{
  result = sub_100005C58(a2, a3);
  if (result)
  {
    v9 = *(a1 + 56);
    v10 = a4 >= v9;
    v11 = a4 - v9;
    if (!v10)
    {
LABEL_3:
      result = _os_assumes_log();
      *(*(*(a1 + 32) + 8) + 24) = 1;
      return result;
    }

    v12 = *(*(*(a1 + 40) + 8) + 24);
    if (v12 >> 4 >= 0xC35)
    {
      _os_assert_log();
      result = _os_crash();
      __break(1u);
    }

    else
    {
      v13 = *(a1 + 64);
      *(v13 + 24 * v12 + 16) = *(a1 + 72);
      *(v13 + 24 * *(*(*(a1 + 40) + 8) + 24)) = v11;
      *(v13 + 24 * *(*(*(a1 + 40) + 8) + 24) + 8) = *(*(*(a1 + 48) + 8) + 24);
      *(v13 + 24 * *(*(*(a1 + 40) + 8) + 24) + 12) = a5;
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 24);
      v10 = __CFADD__(v15, a5);
      v16 = v15 + a5;
      *(v14 + 24) = v16;
      if (v10 || HIDWORD(v16))
      {
        goto LABEL_3;
      }

      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  return result;
}

void sub_100005F30(uint64_t a1)
{
  if (!qword_100010260)
  {
    sub_1000017A0();
  }

  v10 = [NSString stringWithUTF8String:a1];
  if (([qword_100010260 containsObject:?] & 1) == 0)
  {
    [qword_100010260 addObject:v10];
    if (dword_100010090 == -1)
    {
      if (qword_1000102B8 != -1)
      {
        dispatch_once(&qword_1000102B8, &stru_10000C9C8);
      }

      dword_100010090 = open(qword_1000102A0, 0x100000);
      if (dword_100010090 < 0)
      {
        v9 = *__error();
        qword_100010120 = "BUG IN LIBTRACE: failed to open log store directory";
        qword_100010150 = v9;
        __break(1u);
        return;
      }
    }

    [qword_100010260 allObjects];
    memset(v12, 170, 22);
    v2 = *__str = 0xAAAAAAAAAAAAAAAALL;
    snprintf(__str, 0x1EuLL, "%s.tmp", "roles.plist");
    v3 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:0];

    v4 = openat(dword_100010090, __str, 1794, 420);
    if (v4 == -1)
    {
      v7 = *__error();
      _os_assumes_log();
    }

    else
    {
      v5 = v4;
      fchown(v4, 0x110u, 0x110u);
      v6 = [[NSFileHandle alloc] initWithFileDescriptor:v5];
      [v6 writeData:v3 error:0];
      [v6 synchronizeAndReturnError:0];
      [v6 closeAndReturnError:0];
      if (renameat(dword_100010090, __str, dword_100010090, "roles.plist") == -1)
      {
        v8 = *__error();
        _os_assumes_log();
      }
    }
  }
}

void sub_100006184(id a1)
{
  qword_1000102A0 = "/private/var/db/diagnostics";
  qword_1000102A8 = "/private/var/db/diagnostics/timesync";
  qword_1000102B0 = "/private/var/db/uuidtext";
}

uint64_t sub_1000061E0(unsigned __int8 *a1, unsigned int a2, char *__str)
{
  if (qword_1000102B8 != -1)
  {
    dispatch_once(&qword_1000102B8, &stru_10000C9C8);
  }

  result = snprintf(__str, 0x400uLL, "%s/", qword_1000102B0);
  v7 = &__str[result];
  v8 = 1024 - result;
  if (a2 - 17 < 2)
  {
    return snprintf(v7, v8, "%02X", *a1);
  }

  if (a2 == 3)
  {
    result = snprintf(v7, v8, "dsc");
    if (result + 33 < v8)
    {
      v9 = 0;
      v7[result] = 47;
      v10 = &v7[result + 1];
      do
      {
        *v10 = a0123456789abcd[a1[v9] >> 4];
        v10[1] = a0123456789abcd[a1[v9] & 0xF];
        v10 += 2;
        ++v9;
      }

      while (v9 != 16);
      *v10 = 0;
      return result;
    }

LABEL_15:
    qword_100010120 = "BUG IN CLIENT OF LIBTRACE: Path buffer is too small";
    qword_100010150 = v8;
    __break(1u);
    return result;
  }

  if (a2 != 19)
  {
    qword_100010120 = "BUG IN LIBTRACE: Invalid type";
    qword_100010150 = a2;
    __break(1u);
    goto LABEL_15;
  }

  return snprintf(v7, v8, "dsc");
}

void sub_10000639C(id a1)
{
  getpid();
  if (qword_1000102B8 != -1)
  {
    dispatch_once(&qword_1000102B8, &stru_10000C9C8);
  }

  byte_1000102D8 = sandbox_check() == 0;
}

BOOL sub_10000642C(unsigned __int8 *a1)
{
  if (qword_1000102D0 != -1)
  {
    dispatch_once(&qword_1000102D0, &stru_10000CA48);
  }

  if (byte_1000102D8 != 1)
  {
    return 0;
  }

  memset(__b, 170, sizeof(__b));
  sub_1000061E0(a1, 3u, __b);
  return access(__b, 0) == 0;
}

void sub_1000064F4(id a1)
{
  memset(__b, 170, sizeof(__b));
  v1 = 1024;
  byte_100010108 = sysctlbyname("kern.filesetuuid", __b, &v1, 0, 0) != 0;
  if (!sysctlbyname("kern.bootargs", __b, &v1, 0, 0))
  {
    if (strstr(__b, "libtrace_kic=0"))
    {
      byte_100010108 = 0;
    }

    if (strstr(__b, "libtrace_kic=1"))
    {
      byte_100010108 = 1;
    }
  }
}