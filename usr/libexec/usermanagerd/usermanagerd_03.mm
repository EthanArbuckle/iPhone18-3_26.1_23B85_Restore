void sub_100034A2C(uint64_t a1, const __CFString *a2)
{
  v3 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (v3)
  {
    v4 = v3;
    sub_1000344FC(v3, a2);

    CFRelease(v4);
  }
}

void sub_100034A90(const void *a1)
{
  v2 = sub_100018360();
  if (CFDictionaryContainsKey(v2, kUMUserSessionSyncTasksKey))
  {
    CFDictionaryReplaceValue(v2, kUMUserSessionSyncTasksKey, a1);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    CFDictionarySetValue(v2, kUMUserSessionSyncTasksKey, a1);
    if (!v2)
    {
      return;
    }
  }

  CFRelease(v2);
}

const void *sub_100034B1C()
{
  v0 = sub_100018360();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (CFDictionaryContainsKey(v0, @"UserSwitchTaskOpqueData"))
  {
    Value = CFDictionaryGetValue(v1, @"UserSwitchTaskOpqueData");
  }

  else
  {
    Value = 0;
  }

  CFRelease(v1);
  return Value;
}

void sub_100034B84(id a1)
{
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v1 = qword_1000EB318;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_1000011A8(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v4 = _os_log_send_and_compose_impl();
      v5 = v4;
      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {
      v5 = 0;
    }

    free(v5);
  }

  dispatch_source_cancel(qword_1000EB5F8);
  v6 = qword_1000EB5F8;
  qword_1000EB5F8 = 0;

  sub_100034CC8();
}

void sub_100034CC8()
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v0 = qword_1000EB308;
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 0;
    v1 = sub_1000011A8(1);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v2 = v1;
    }

    else
    {
      v2 = v1 & 0xFFFFFFFE;
    }

    if (v2)
    {
      LOWORD(valuePtr) = 0;
      v3 = _os_log_send_and_compose_impl();
      v4 = v3;
      if (v3)
      {
        sub_100002A8C(v3);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  valuePtr = -1;
  if (sub_10001B624())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v49 = 0;
    v6 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFE;
    }

    if (v7)
    {
      goto LABEL_20;
    }

LABEL_69:
    v9 = 0;
LABEL_70:
    free(v9);
LABEL_71:

    return;
  }

  if (!qword_1000EB5C0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v49 = 0;
    v14 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (!v15)
    {
      goto LABEL_69;
    }

LABEL_20:
    v8 = _os_log_send_and_compose_impl();
    v9 = v8;
    if (v8)
    {
      sub_100002A8C(v8);
    }

    goto LABEL_70;
  }

  if (!CFArrayGetCount(qword_1000EB5C0))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v49 = 0;
    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (!v17)
    {
      goto LABEL_69;
    }

    goto LABEL_20;
  }

  v10 = +[RDServer sharedServer];
  v11 = [v10 anyBubblePopClients];

  if (v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v49 = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (!v13)
    {
      goto LABEL_69;
    }

    goto LABEL_20;
  }

  v18 = +[RDServer sharedServer];
  v19 = [v18 inLogoutProcess];

  if (v19)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v49 = 0;
    v20 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (!v21)
    {
      goto LABEL_69;
    }

    goto LABEL_20;
  }

  v22 = sub_100088F2C(qword_1000EB608);
  if (!sub_100089A48(v22))
  {
    v24 = dword_1000EB5B8;

    if (v24 != 1)
    {
      goto LABEL_74;
    }

    goto LABEL_62;
  }

  v23 = sub_100088F2C(qword_1000EB608);
  if (sub_100089AC4(v23) == 502)
  {

    goto LABEL_74;
  }

  v27 = dword_1000EB5B8;

  if (v27 == 1)
  {
LABEL_62:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v49 = 0;
    v25 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 & 0xFFFFFFFE;
    }

    if (!v26)
    {
      goto LABEL_69;
    }

    goto LABEL_20;
  }

LABEL_74:
  v28 = sub_10008A58C(qword_1000EB2E0);
  if (CFArrayGetCount(qword_1000EB5C0) >= 1)
  {
    for (i = 0; CFArrayGetCount(qword_1000EB5C0) > i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C0, i);
      if (ValueAtIndex)
      {
        v31 = ValueAtIndex;
        v32 = CFGetTypeID(ValueAtIndex);
        if (v32 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(v31, kCFNumberIntType, &valuePtr))
          {
            if (valuePtr == v28)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v33 = qword_1000EB308;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v49 = 0;
                v34 = sub_1000011A8(1);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v35 = v34;
                }

                else
                {
                  v35 = v34 & 0xFFFFFFFE;
                }

                if (v35)
                {
                  v36 = _os_log_send_and_compose_impl();
                  v37 = v36;
                  if (v36)
                  {
                    sub_100002A8C(v36);
                  }
                }

                else
                {
                  v37 = 0;
                }

                free(v37);
              }
            }

            else
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v38 = qword_1000EB308;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v49 = 0;
                v39 = sub_1000011A8(1);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v40 = v39;
                }

                else
                {
                  v40 = v39 & 0xFFFFFFFE;
                }

                if (v40)
                {
                  v41 = _os_log_send_and_compose_impl();
                  v42 = v41;
                  if (v41)
                  {
                    sub_100002A8C(v41);
                  }
                }

                else
                {
                  v42 = 0;
                }

                free(v42);
              }

              if (!sub_1000315F8(valuePtr))
              {
                return;
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v43 = qword_1000EB308;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                v49 = 0;
                v44 = sub_1000011A8(1);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = v44;
                }

                else
                {
                  v45 = v44 & 0xFFFFFFFE;
                }

                if (v45)
                {
                  v46 = _os_log_send_and_compose_impl();
                  v47 = v46;
                  if (v46)
                  {
                    sub_100002A8C(v46);
                  }
                }

                else
                {
                  v47 = 0;
                }

                free(v47);
              }

              sub_10001BEFC(valuePtr);
              sub_10001BD58(valuePtr);
              if (qword_1000EB5C0)
              {
                if (CFArrayGetCount(qword_1000EB5C0) == 1)
                {
                  return;
                }
              }
            }
          }
        }
      }
    }
  }
}

__CFDictionary *sub_1000354BC(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_10007990C();
  Value = CFDictionaryGetValue(a1, kUMUserSessionIDKey);
  CFDictionarySetValue(v2, kUMUserSessionIDKey, Value);
  v4 = CFDictionaryGetValue(a1, kUMUserSessionGroupIDKey);
  CFDictionarySetValue(v2, kUMUserSessionGroupIDKey, v4);
  if (!CFDictionaryContainsKey(a1, kUMUserSessionLibinfoHomeDirKey))
  {
    sub_1000023E8(a1, kUMUserSessionIDKey);
    bzero(__str, 0x400uLL);
    if (dword_1000EB5B0 == 1)
    {
      snprintf(__str, 0x400uLL, "/var/euser%d");
    }

    else
    {
      snprintf(__str, 0x400uLL, "/var/user%d");
    }

    v5 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(a1, kUMUserSessionLibinfoHomeDirKey, v5);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = CFDictionaryGetValue(a1, kUMUserSessionLibinfoHomeDirKey);
  CFDictionarySetValue(v2, kUMUserSessionLibinfoHomeDirKey, v6);
  v7 = CFDictionaryGetValue(a1, kUMUserSessionShortNameKey);
  CFDictionarySetValue(v2, kUMUserSessionShortNameKey, v7);
  return v2;
}

uint64_t sub_100035668(const __CFDictionary *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_1000023E8(a1, kUMUserSessionIDKey);
    v7 = sub_1000023E8(a1, kUMUserSessionGroupIDKey);
    xpc_dictionary_set_int64(v5, "pw_uid", v6);
    xpc_dictionary_set_int64(v5, "pw_gid", v7);
    bzero(string, 0x400uLL);
    sub_1000795D4(a1, kUMUserSessionLibinfoHomeDirKey, string, 1024);
    xpc_dictionary_set_string(v5, "pw_dir", string);
    bzero(string, 0x400uLL);
    sub_1000795D4(a1, kUMUserSessionShortNameKey, string, 255);
    xpc_dictionary_set_string(v5, "pw_name", string);
    xpc_dictionary_set_string(v5, "pw_shell", "/bin/bash");
    if (a3)
    {
      v8 = "/smx7MYTQIi2M";
    }

    else
    {
      v8 = "*";
    }

    xpc_dictionary_set_string(v5, "pw_passwd", v8);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_100035800(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    v3 = kUMUserSessionGroupIDKey;
    v4 = a2;
    v5 = sub_1000023E8(v2, v3);
    xpc_dictionary_set_int64(v4, "gr_gid", v5);
    bzero(string, 0x400uLL);
    sub_1000795D4(v2, kUMUserSessionShortNameKey, string, 255);
    xpc_dictionary_set_string(v4, "gr_name", string);
    v6 = xpc_array_create(0, 0);
    xpc_array_set_string(v6, 0xFFFFFFFFFFFFFFFFLL, string);
    xpc_dictionary_set_value(v4, "gr_members", v6);

    return 1;
  }

  return result;
}

uint64_t sub_10003590C(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000359C0;
  v3[3] = &unk_1000DD598;
  v3[4] = &v4;
  v3[5] = a1;
  dispatch_sync(qword_1000EB618, v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1000359C0(uint64_t a1)
{
  v2 = qword_1000EB5D0;
  if (!qword_1000EB5D0)
  {
    v2 = sub_1000799A8();
    qword_1000EB5D0 = v2;
  }

  CFArrayAppendValue(v2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t sub_100035A0C(int a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100035AC4;
  v3[3] = &unk_1000DD550;
  v4 = a1;
  v3[4] = &v5;
  dispatch_sync(qword_1000EB618, v3);
  v1 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v1;
}

void sub_100035AC4(uint64_t a1)
{
  valuePtr = 0;
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v2 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v2);
      if (!ValueAtIndex)
      {
        break;
      }

      v4 = ValueAtIndex;
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 != CFDictionaryGetTypeID())
      {
        break;
      }

      Value = CFDictionaryGetValue(v4, kUMUserSessionIDKey);
      if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFNumberGetTypeID()) || !CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v9 = qword_1000EB308;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = sub_1000011A8(1);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
          }

          else
          {
            v13 = v12 & 0xFFFFFFFE;
          }

          if (v13)
          {
            v17 = 67109120;
            v18 = v2;
            goto LABEL_27;
          }

LABEL_29:
          v15 = 0;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (valuePtr == *(a1 + 40))
      {
        CFArrayRemoveValueAtIndex(qword_1000EB5D0, v2);
        *(*(*(a1 + 32) + 8) + 24) = 1;
        return;
      }

LABEL_32:
      if (CFArrayGetCount(qword_1000EB5D0) <= ++v2)
      {
        return;
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (!v11)
      {
        goto LABEL_29;
      }

      LOWORD(v17) = 0;
LABEL_27:
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }

LABEL_30:
      free(v15);
    }

LABEL_31:

    goto LABEL_32;
  }
}

CFTypeRef sub_100035D70(int a1)
{
  result = qword_1000EB5D0;
  if (qword_1000EB5D0)
  {
    valuePtr = 0;
    if (CFArrayGetCount(qword_1000EB5D0) >= 1)
    {
      v2 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v2);
        if (!ValueAtIndex)
        {
          break;
        }

        v4 = ValueAtIndex;
        v5 = CFGetTypeID(ValueAtIndex);
        if (v5 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(v4, kUMUserSessionIDKey);
        if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFNumberGetTypeID()) || !CFNumberGetValue(v7, kCFNumberIntType, &valuePtr))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v9 = qword_1000EB308;
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v12 = sub_1000011A8(1);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
            }

            else
            {
              v13 = v12 & 0xFFFFFFFE;
            }

            if (v13)
            {
              v18 = 67109120;
              v19 = v2;
              goto LABEL_27;
            }

LABEL_29:
            v15 = 0;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        if (valuePtr == a1)
        {
          return CFRetain(v4);
        }

LABEL_32:
        if (CFArrayGetCount(qword_1000EB5D0) <= ++v2)
        {
          return 0;
        }
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (!v11)
        {
          goto LABEL_29;
        }

        LOWORD(v18) = 0;
LABEL_27:
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }

LABEL_30:
        free(v15);
      }

LABEL_31:

      goto LABEL_32;
    }

    return 0;
  }

  return result;
}

CFTypeRef sub_100036010(const __CFString *a1)
{
  if (!qword_1000EB5D0 || CFArrayGetCount(qword_1000EB5D0) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v2);
    if (ValueAtIndex)
    {
      v4 = ValueAtIndex;
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v4, kUMUserSessionShortNameKey);
        if (Value)
        {
          v7 = Value;
          v8 = CFGetTypeID(Value);
          if (v8 == CFStringGetTypeID() && CFStringCompare(v7, a1, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    if (CFArrayGetCount(qword_1000EB5D0) <= ++v2)
    {
      return 0;
    }
  }

  return CFRetain(v4);
}

void sub_100036114(void *a1)
{
  xarray = a1;
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v1 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v1);
      if (ValueAtIndex)
      {
        v3 = ValueAtIndex;
        v4 = CFGetTypeID(ValueAtIndex);
        if (v4 == CFDictionaryGetTypeID())
        {
          v5 = sub_1000023E8(v3, kUMUserSessionGroupIDKey);
          if (v5 != -1)
          {
            xpc_array_set_int64(xarray, 0xFFFFFFFFFFFFFFFFLL, v5);
          }
        }
      }

      ++v1;
    }

    while (CFArrayGetCount(qword_1000EB5D0) > v1);
  }
}

uint64_t sub_1000361E8(void *a1)
{
  v1 = a1;
  strcpy(string, "systemusers");
  xpc_dictionary_set_int64(v1, "gr_gid", 299);
  xpc_dictionary_set_string(v1, "gr_name", string);
  v2 = xpc_array_create(0, 0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aMobile_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aIfccd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aNetworkd_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aWireless_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aInstalld_0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aSecurityd_0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aReportmemoryex);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aAnalyticsd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aTimed);
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v3);
      if (ValueAtIndex)
      {
        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 == CFDictionaryGetTypeID())
        {
          bzero(v8, 0x400uLL);
          sub_1000795D4(v5, kUMUserSessionShortNameKey, v8, 1024);
          xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, v8);
        }
      }

      ++v3;
    }

    while (CFArrayGetCount(qword_1000EB5D0) > v3);
  }

  xpc_dictionary_set_value(v1, "gr_members", v2);

  return 1;
}

uint64_t sub_100036408(void *a1)
{
  v1 = a1;
  strcpy(string, "_analyticsusers");
  xpc_dictionary_set_int64(v1, "gr_gid", 250);
  xpc_dictionary_set_string(v1, "gr_name", string);
  v2 = xpc_array_create(0, 0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aMobile_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aAnalyticsd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aWireless_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aNetworkd_1);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aTimed);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aGpsd);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aReportmemoryex);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aSecurityd_0);
  xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, aNearbyd);
  if (qword_1000EB5D0 && CFArrayGetCount(qword_1000EB5D0) >= 1)
  {
    v3 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5D0, v3);
      if (ValueAtIndex)
      {
        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 == CFDictionaryGetTypeID())
        {
          bzero(v8, 0x400uLL);
          sub_1000795D4(v5, kUMUserSessionShortNameKey, v8, 1024);
          xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, v8);
        }
      }

      ++v3;
    }

    while (CFArrayGetCount(qword_1000EB5D0) > v3);
  }

  xpc_dictionary_set_value(v1, "gr_members", v2);

  return 1;
}

void sub_10003661C()
{
  mach_service = xpc_connection_create_mach_service("com.apple.system.libinfo.muser", qword_1000EB618, 1uLL);
  v1 = qword_1000EB300;
  qword_1000EB300 = mach_service;

  __xpc_connection_set_logging();
  xpc_connection_set_event_handler(qword_1000EB300, &stru_1000DD5D8);
  v2 = qword_1000EB300;

  xpc_connection_resume(v2);
}

void sub_100036694(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  __xpc_connection_set_logging();
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100036734;
  handler[3] = &unk_1000DD600;
  v5 = v2;
  v3 = v2;
  xpc_connection_set_event_handler(v3, handler);
  xpc_connection_resume(v3);
}

void sub_100036734(uint64_t a1, void *a2)
{
  object = a2;
  v3 = xpc_copy_description(object);
  free(v3);
  if (xpc_get_type(object) != &_xpc_type_error)
  {
    reply = xpc_dictionary_create_reply(object);
    string = xpc_dictionary_get_string(object, "reqtype");
    if (!strcmp(string, "username"))
    {
      v7 = xpc_dictionary_get_string(object, "query");
      if (!strcmp(v7, "mobile"))
      {
        v19 = dword_1000EB5B0;
        v20 = sub_100088F2C(qword_1000EB608);
        v21 = v20;
        if (v19 == 2)
        {
          v22 = sub_100089AC4(v20);
        }

        else if (sub_100089A48(v20))
        {
          v25 = sub_100088F2C(qword_1000EB608);
          v22 = sub_100089AC4(v25);
        }

        else
        {
          v22 = -1;
        }

        if (v22 == -1)
        {
          goto LABEL_52;
        }

        v9 = sub_100035D70(v22);
        if (!v9)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v8 = CFStringCreateWithCString(kCFAllocatorDefault, v7, 0x8000100u);
        v9 = sub_100036010(v8);
        if (v8)
        {
          CFRelease(v8);
        }

        if (!v9)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if (strcmp(string, "uid"))
      {
        if (!strcmp(string, "gid"))
        {
          int64 = xpc_dictionary_get_int64(object, "query");
          v15 = int64;
          if (int64 == 250)
          {
            sub_100036408(reply);
            goto LABEL_52;
          }

          if (int64 != 299)
          {
            if (int64 == 501)
            {
              v16 = dword_1000EB5B0;
              v17 = sub_100088F2C(qword_1000EB608);
              v18 = v17;
              if (v16 == 2)
              {
                v15 = sub_100089AC4(v17);
              }

              else if (sub_100089A48(v17))
              {
                v38 = sub_100088F2C(qword_1000EB608);
                v15 = sub_100089AC4(v38);
              }

              else
              {
                v15 = -1;
              }
            }

            if (v15 == -1)
            {
              goto LABEL_52;
            }

            v40 = sub_100035D70(v15);
            if (!v40)
            {
              goto LABEL_52;
            }

            v9 = v40;
LABEL_69:
            sub_100035800(v9, reply);
            goto LABEL_51;
          }
        }

        else
        {
          if (strcmp(string, "groupname"))
          {
            if (!strcmp(string, "grouplist"))
            {
              v27 = xpc_dictionary_get_string(object, "query");
              if (v27)
              {
                v28 = CFStringCreateWithCString(kCFAllocatorDefault, v27, 0x8000100u);
                v29 = sub_100036010(v28);
                if (v28)
                {
                  CFRelease(v28);
                }

                if (v29)
                {
                  v30 = sub_1000023E8(v29, kUMUserSessionGroupIDKey);
                  v31 = xpc_array_create(0, 0);
                  xpc_array_set_int64(v31, 0xFFFFFFFFFFFFFFFFLL, v30);
                  xpc_array_set_int64(v31, 0xFFFFFFFFFFFFFFFFLL, 250);
                  xpc_array_set_int64(v31, 0xFFFFFFFFFFFFFFFFLL, 299);
                  xpc_dictionary_set_value(reply, "grouplist", v31);
                  CFRelease(v29);
                }
              }
            }

            else if (!strcmp(string, "available"))
            {
              v6 = sub_100088F2C(qword_1000EB608);
              sub_100089A48(v6);

              xpc_dictionary_set_BOOL(reply, "available", 1);
            }

            goto LABEL_52;
          }

          v23 = xpc_dictionary_get_string(object, "query");
          if (!strcmp(v23, "mobile"))
          {
            v32 = dword_1000EB5B0;
            v33 = sub_100088F2C(qword_1000EB608);
            v34 = v33;
            if (v32 == 2)
            {
              v35 = sub_100089AC4(v33);
            }

            else if (sub_100089A48(v33))
            {
              v39 = sub_100088F2C(qword_1000EB608);
              v35 = sub_100089AC4(v39);
            }

            else
            {
              v35 = -1;
            }

            if (v35 == -1)
            {
              goto LABEL_52;
            }

            v9 = sub_100035D70(v35);
LABEL_68:
            if (!v9)
            {
              goto LABEL_52;
            }

            goto LABEL_69;
          }

          if (strcmp(v23, "systemusers"))
          {
            v24 = CFStringCreateWithCString(kCFAllocatorDefault, v23, 0x8000100u);
            v9 = sub_100036010(v24);
            if (v24)
            {
              CFRelease(v24);
            }

            goto LABEL_68;
          }
        }

        sub_1000361E8(reply);
LABEL_52:
        v37 = xpc_copy_description(reply);
        free(v37);
        xpc_connection_send_message(*(a1 + 32), reply);

        goto LABEL_53;
      }

      v10 = xpc_dictionary_get_int64(object, "query");
      if (v10 == 501)
      {
        v11 = dword_1000EB5B0;
        v12 = sub_100088F2C(qword_1000EB608);
        v13 = v12;
        if (v11 == 2)
        {
          v10 = sub_100089AC4(v12);
        }

        else if (sub_100089A48(v12))
        {
          v26 = sub_100088F2C(qword_1000EB608);
          v10 = sub_100089AC4(v26);
        }

        else
        {
          v10 = -1;
        }
      }

      if (v10 == -1)
      {
        goto LABEL_52;
      }

      v36 = sub_100035D70(v10);
      if (!v36)
      {
        goto LABEL_52;
      }

      v9 = v36;
    }

    sub_100035668(v9, reply, 1);
LABEL_51:
    CFRelease(v9);
    goto LABEL_52;
  }

LABEL_53:
}

void sub_100036CA4(char *__format, ...)
{
  va_start(va, __format);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__str = 0u;
  v12 = 0u;
  vsnprintf(__str, 0x80uLL, __format, va);
  if (qword_1000EB310 != -1)
  {
    dispatch_once(&qword_1000EB310, &stru_1000DD620);
  }

  v1 = qword_1000EB308;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
    }

    else
    {
      v3 = v2 & 0xFFFFFFFE;
    }

    if (v3)
    {
      v5 = _os_log_send_and_compose_impl();
      v4 = v5;
      if (v5)
      {
        sub_100002A8C(v5);
      }
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }

  sub_100036F10("usermanagerd", __str);
  sub_100036F10("auto-boot", "false");
  if (qword_1000EB310 != -1)
  {
    dispatch_once(&qword_1000EB310, &stru_1000DD620);
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1000011A8(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 & 0xFFFFFFFE;
    }

    if (v8)
    {
      v10 = _os_log_send_and_compose_impl();
      v9 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  fprintf(__stdoutp, "UMD:FATAL OTI LOAD ERROR: %s\n", __str);
  fwrite("UMD:REBOOTING INTO RECOVERY MODE.\n", 0x22uLL, 1uLL, __stdoutp);
  reboot(0);
  exit(71);
}

uint64_t sub_100036F10(char *cStr, const char *a2)
{
  v3 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v4 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      if (IORegistryEntrySetCFProperty(v5, v3, v6))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v8 = qword_1000EB308;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = sub_1000011A8(1);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v10 = v9;
          }

          else
          {
            v10 = v9 & 0xFFFFFFFE;
          }

          if (v10)
          {
            v11 = _os_log_send_and_compose_impl();
            v12 = v11;
            if (v11)
            {
              sub_100002A8C(v11);
            }
          }

          else
          {
            v12 = 0;
          }

          free(v12);
        }

        v23 = 0xFFFFFFFFLL;
      }

      else
      {
        v23 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v18 = qword_1000EB308;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = sub_1000011A8(1);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
        }

        else
        {
          v20 = v19 & 0xFFFFFFFE;
        }

        if (v20)
        {
          v21 = _os_log_send_and_compose_impl();
          v22 = v21;
          if (v21)
          {
            sub_100002A8C(v21);
          }
        }

        else
        {
          v22 = 0;
        }

        free(v22);
      }

      v23 = 0xFFFFFFFFLL;
    }

    IOObjectRelease(v5);
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v13 = qword_1000EB308;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = sub_1000011A8(1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
      }

      else
      {
        v15 = v14 & 0xFFFFFFFE;
      }

      if (v15)
      {
        v16 = _os_log_send_and_compose_impl();
        v17 = v16;
        if (v16)
        {
          sub_100002A8C(v16);
        }
      }

      else
      {
        v17 = 0;
      }

      free(v17);
    }

    v23 = 0xFFFFFFFFLL;
  }

  CFRelease(v3);
  return v23;
}

const void *sub_100037278(NSObject *a1, int a2)
{
  v4 = a1;
  v5 = sub_10008A2F4(qword_1000EB2E0, a1);
  if (!v5)
  {
    if (qword_1000EB310 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_66;
  }

  v2 = v5;
  if (a2)
  {
    if (!sub_10006E308(v5))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v4 = qword_1000EB308;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      v21 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v21;
      }

      else
      {
        v22 = v21 & 0xFFFFFFFE;
      }

      if (v22)
      {
        goto LABEL_62;
      }

      v2 = 0;
      goto LABEL_64;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v6 = qword_1000EB308;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    sub_100018C80();
  }

  v11 = sub_100079590(v2, kUMUserSessionVolumeDeviceNodeKey);
  result = sub_100079590(v2, kUMUserSessionVolumeUUIDKey);
  if (!v11)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_57;
    }

    v16 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 & 0xFFFFFFFE;
    }

    if (v17)
    {
      goto LABEL_54;
    }

    v18 = 0;
    goto LABEL_56;
  }

  if (!result)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v2 = qword_1000EB308;
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_61;
    }

    v19 = sub_1000011A8(1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      goto LABEL_58;
    }

    v4 = 0;
    while (1)
    {
      free(v4);
LABEL_61:

      sleep(2u);
      sub_100018028("UserManagement early boot task missing volumeUUID for the booted user..");
LABEL_62:
      v26 = _os_log_send_and_compose_impl();
      v2 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }

LABEL_64:
      free(v2);
LABEL_65:

      sleep(2u);
      sub_100018028("UserManagement early boot task failed to find device Node or volume uuid of UserVolume during update install");
LABEL_66:
      sub_100089D14();
LABEL_20:
      v13 = qword_1000EB308;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = sub_1000011A8(1);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v23 = _os_log_send_and_compose_impl();
          v2 = v23;
          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v2 = 0;
        }

        free(v2);
      }

      sleep(2u);
      sub_100018028("UserManagement early boot task could not Locate primary user session of Update install user");
LABEL_54:
      v24 = _os_log_send_and_compose_impl();
      v18 = v24;
      if (v24)
      {
        sub_100002A8C(v24);
      }

LABEL_56:
      free(v18);
LABEL_57:

      sleep(2u);
      sub_100018028("UserManagement early boot task missing disknode for the booted user..");
LABEL_58:
      v25 = _os_log_send_and_compose_impl();
      v4 = v25;
      if (v25)
      {
        sub_100002A8C(v25);
      }
    }
  }

  return result;
}

id sub_100037758()
{
  v0 = [@"VolumeMigrationInProgress" dataUsingEncoding:4];
  v1 = sub_1000013A0(qword_1000EB608);
  v2 = [v1 atomicallyWriteData:v0 toPath:@"/private/var//keybags/umVolumeMigration-inprogress.kb" error:0];

  if (v2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 & 0xFFFFFFFE;
      }

      if (v5)
      {
LABEL_17:
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }

        goto LABEL_20;
      }

LABEL_19:
      v9 = 0;
LABEL_20:
      free(v9);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v3 = qword_1000EB308;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v2;
}

void sub_100037918()
{
  v1 = 1;
  v625 = 1;
  v2 = sub_1000561D0(UMDAPFSSupportVolumeHelper, qword_1000EB608, byte_1000EB602);
  v3 = qword_1000EB2D8;
  qword_1000EB2D8 = v2;

  v4 = sub_100053060(UMDUserManager, qword_1000EB2D8);
  v5 = qword_1000EB2E0;
  qword_1000EB2E0 = v4;

  v6 = &off_1000EB000;
  v7 = &off_1000EB000;
  if (![qword_1000EB2D8 splitUserVolumeEnabled])
  {
    v612 = 0;
    v12 = 0;
    goto LABEL_95;
  }

  *err = 0;
  if (sub_100079BA8() == 100)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v9 = sub_1000011A8(1);
      v0 = v8;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFE;
      }

      if (v10)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
        v11 = _os_log_send_and_compose_impl();

        if (v11)
        {
          sub_100002A8C(v11);
        }
      }

      else
      {

        v11 = 0;
      }

      free(v11);
    }

    sub_100037758();
  }

  if (sub_100079BA8() == 101)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v13 = qword_1000EB308;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v14 = sub_1000011A8(1);
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v14;
      }

      else
      {
        v16 = v14 & 0xFFFFFFFE;
      }

      if (v16)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
        v17 = _os_log_send_and_compose_impl();

        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {

        v17 = 0;
      }

      free(v17);
    }

    v18 = sub_1000013A0(qword_1000EB608);
    v0 = [v18 removeFileAtPath:@"/private/var//keybags/usersession.kb" error:0];

    if (v0)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      value[0] = 0;
      v20 = sub_1000011A8(1);
      v19 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
      }

      else
      {
        v21 = v20 & 0xFFFFFFFE;
      }

      if (v21)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
        goto LABEL_45;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v19 = qword_1000EB308;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      value[0] = 0;
      v22 = sub_1000011A8(1);
      v19 = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
LABEL_45:
        v0 = _os_log_send_and_compose_impl();

        if (v0)
        {
          sub_100002A8C(v0);
        }

        goto LABEL_48;
      }
    }

    v0 = 0;
LABEL_48:
    free(v0);
LABEL_49:
  }

  if (sub_1000725AC(err, &v625))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v24 = qword_1000EB308;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v25 = sub_1000011A8(1);
      v0 = v24;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
        v27 = _os_log_send_and_compose_impl();

        if (v27)
        {
          sub_100002A8C(v27);
        }
      }

      else
      {

        v27 = 0;
      }

      free(v27);
    }

    if (!sub_100037758())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v84 = qword_1000EB308;
      if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1326;
      }

      value[0] = 0;
      v517 = sub_1000011A8(1);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v518 = v517;
      }

      else
      {
        v518 = v517 & 0xFFFFFFFE;
      }

      if (!v518)
      {
        v519 = 0;
LABEL_1325:
        free(v519);
LABEL_1326:

        sub_100018028("Creating classD marker file in /var/keybags in early boot task failed");
        goto LABEL_1327;
      }

LABEL_1323:
      LOWORD(uuid[0]) = 0;
      v541 = _os_log_send_and_compose_impl();
      v519 = v541;
      if (v541)
      {
        sub_100002A8C(v541);
      }

      goto LABEL_1325;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_94;
    }

    value[0] = 0;
    v35 = sub_1000011A8(1);
    v0 = v28;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
    }

    else
    {
      v36 = v35 & 0xFFFFFFFE;
    }

    if (v36)
    {
      LOWORD(uuid[0]) = 0;
      LODWORD(v605) = 2;
      v602 = uuid;
LABEL_90:
      v37 = _os_log_send_and_compose_impl();

      if (v37)
      {
        sub_100002A8C(v37);
      }

      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if (sub_100021718())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v28 = qword_1000EB308;
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_94;
    }

    value[0] = 0;
    v29 = sub_1000011A8(1);
    v0 = v28;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
    }

    else
    {
      v30 = v29 & 0xFFFFFFFE;
    }

    if (v30)
    {
      LOWORD(uuid[0]) = 0;
      LODWORD(v605) = 2;
      v602 = uuid;
      goto LABEL_90;
    }

LABEL_92:

    v37 = 0;
LABEL_93:
    free(v37);
LABEL_94:

    v612 = 0;
    v12 = 1;
    goto LABEL_95;
  }

  if (!v625)
  {
    byte_1000EB603 = 1;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v32 = sub_1000011A8(1);
      v0 = v31;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
        v34 = _os_log_send_and_compose_impl();

        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {

        v34 = 0;
      }

      free(v34);
    }

    v182 = sub_100089A80(qword_1000EB608);
    [v182 setIgnoreIdentityMethods:byte_1000EB603];
  }

  v625 = 1;
  if (sub_1000725EC(err, &v625))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v183 = qword_1000EB308;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v184 = sub_1000011A8(1);
      v0 = v183;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v185 = v184;
      }

      else
      {
        v185 = v184 & 0xFFFFFFFE;
      }

      if (v185)
      {
        LOWORD(uuid[0]) = 0;
        LODWORD(v605) = 2;
        v602 = uuid;
        v186 = _os_log_send_and_compose_impl();

        if (v186)
        {
          sub_100002A8C(v186);
        }
      }

      else
      {

        v186 = 0;
      }

      free(v186);
    }

    v12 = 0;
    v612 = 1;
  }

  else
  {
    v612 = 0;
    v12 = 0;
    v1 = *err != 2;
  }

LABEL_95:
  v38 = byte_1000EB603;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v39 = v38 ^ 1;
  v40 = qword_1000EB308;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v41 = sub_1000011A8(1);
    v0 = v40;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v41;
    }

    else
    {
      v42 = v41 & 0xFFFFFFFE;
    }

    if (v42)
    {
      *err = 0;
      LODWORD(v605) = 2;
      v602 = err;
      v43 = _os_log_send_and_compose_impl();

      if (v43)
      {
        sub_100002A8C(v43);
      }
    }

    else
    {

      v43 = 0;
    }

    free(v43);
  }

  v614 = v12 & v39;

  v44 = &off_1000EB000;
  if (sub_10003E524(0))
  {
    v45 = &off_1000EB000;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v46 = qword_1000EB308;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v47 = sub_1000011A8(1);
      v0 = v46;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
      }

      else
      {
        v48 = v47 & 0xFFFFFFFE;
      }

      if (v48)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v602 = err;
        v49 = _os_log_send_and_compose_impl();

        if (v49)
        {
          sub_100002A8C(v49);
        }
      }

      else
      {

        v49 = 0;
      }

      free(v49);
      v44 = &off_1000EB000;
    }

    goto LABEL_133;
  }

  v45 = &off_1000EB000;
  if ([qword_1000EB2D8 splitUserVolumeEnabled] && v612 | v614 ^ 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v84 = qword_1000EB308;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v514 = sub_1000011A8(1);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v515 = v514;
      }

      else
      {
        v515 = v514 & 0xFFFFFFFE;
      }

      if (v515)
      {
        *err = 0;
        v540 = _os_log_send_and_compose_impl();
        v516 = v540;
        if (v540)
        {
          sub_100002A8C(v540);
        }
      }

      else
      {
        v516 = 0;
      }

      free(v516);
    }

    sleep(2u);
    sub_100018028("UserManagement early boot task Erase Install or normal boot, no UserSessions to Load...");
    goto LABEL_1323;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v50 = qword_1000EB308;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v51 = sub_1000011A8(1);
    v0 = v50;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v51;
    }

    else
    {
      v52 = v51 & 0xFFFFFFFE;
    }

    if (v52)
    {
      *err = 0;
      LODWORD(v605) = 2;
      v602 = err;
      v53 = _os_log_send_and_compose_impl();

      if (v53)
      {
        sub_100002A8C(v53);
      }
    }

    else
    {

      v53 = 0;
    }

    free(v53);
    v44 = &off_1000EB000;
  }

  *(v44 + 364) = 0;
  dword_1000EA3D0 = 501;
  qword_1000EB5A0 = sub_1000799A8();
  sub_100018C80();
LABEL_133:
  v54 = [v45[91] splitUserVolumeEnabled] ^ 1;
  if (*(v44 + 364) == 1)
  {
    v54 = 1;
  }

  if (((v1 | v54) & 1) == 0)
  {
    if (qword_1000EB310 == -1)
    {
LABEL_1220:
      v501 = v7[97];
      if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
      {
        value[0] = 0;
        v502 = sub_1000011A8(1);
        if (os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
        {
          v503 = v502;
        }

        else
        {
          v503 = v502 & 0xFFFFFFFE;
        }

        if (v503)
        {
          *err = 0;
          v520 = _os_log_send_and_compose_impl();
          v0 = v520;
          if (v520)
          {
            sub_100002A8C(v520);
          }
        }

        else
        {
          v0 = 0;
        }

        free(v0);
      }

      sleep(2u);
      sub_100018028("Not shared iPad, missing User Volume cannot be located...");
      goto LABEL_1271;
    }

LABEL_1475:
    sub_100089CEC();
    goto LABEL_1220;
  }

  sub_1000897B8(qword_1000EB2E0, qword_1000EB5A0);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v55 = qword_1000EB308;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *err = 0;
    v56 = sub_1000011A8(1);
    v0 = v55;
    if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v56 &= ~1u;
    }

    if (v56)
    {
      v1 = sub_100089624(qword_1000EB2E0);
      LODWORD(value[0]) = 138412290;
      *(value + 4) = v1;
      LODWORD(v605) = 12;
      v603 = value;
      v57 = _os_log_send_and_compose_impl();

      if (v57)
      {
        sub_100002A8C(v57);
      }
    }

    else
    {

      v57 = 0;
    }

    free(v57);
    v44 = &off_1000EB000;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v58 = qword_1000EB308;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v59 = sub_1000011A8(1);
    v0 = v58;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v59;
    }

    else
    {
      v60 = v59 & 0xFFFFFFFE;
    }

    if (v60)
    {
      *err = 0;
      LODWORD(v605) = 2;
      v603 = err;
      v61 = _os_log_send_and_compose_impl();

      if (v61)
      {
        sub_100002A8C(v61);
      }
    }

    else
    {

      v61 = 0;
    }

    free(v61);
    v44 = &off_1000EB000;
  }

  if (*(v44 + 364) == 1)
  {
    v62 = sub_10008A2F4(qword_1000EB2E0, 502);
    if (v62)
    {
      goto LABEL_239;
    }

    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v1 = &off_1000EB000;
    v62 = qword_1000EB318;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      value[0] = 0;
      v63 = sub_1000011A8(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v64 = v63;
      }

      else
      {
        v64 = v63 & 0xFFFFFFFE;
      }

      if (v64)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v65 = _os_log_send_and_compose_impl();
        v66 = v65;
        if (v65)
        {
          sub_100002A8C(v65);
        }
      }

      else
      {
        v66 = 0;
      }

      free(v66);
    }

    v77 = sub_10001D4F4(-1, 0);
    if (v77)
    {
      v62 = v77;
      if (qword_1000EB320 == -1)
      {
        goto LABEL_195;
      }
    }

    else
    {
      sub_100089DEC();
    }

    sub_100089D68();
LABEL_195:
    v44 = &off_1000EB000;
    v0 = qword_1000EB318;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v78 = sub_1000011A8(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v79 = v78;
      }

      else
      {
        v79 = v78 & 0xFFFFFFFE;
      }

      if (v79)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        goto LABEL_234;
      }

      goto LABEL_236;
    }

    goto LABEL_238;
  }

  v62 = sub_10008A2F4(qword_1000EB2E0, 501);
  if (![v45[91] splitUserVolumeEnabled])
  {
    if (v62)
    {
      goto LABEL_239;
    }

    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v1 = &off_1000EB000;
    v62 = qword_1000EB318;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      value[0] = 0;
      v73 = sub_1000011A8(0);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
      {
        v74 = v73;
      }

      else
      {
        v74 = v73 & 0xFFFFFFFE;
      }

      if (v74)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v75 = _os_log_send_and_compose_impl();
        v76 = v75;
        if (v75)
        {
          sub_100002A8C(v75);
        }
      }

      else
      {
        v76 = 0;
      }

      free(v76);
    }

    v87 = sub_10004E3FC(0);
    if (v87)
    {
      v62 = v87;
      if (qword_1000EB320 == -1)
      {
        goto LABEL_228;
      }
    }

    else
    {
      sub_100089DBC();
    }

    sub_100089D68();
LABEL_228:
    v44 = &off_1000EB000;
    v0 = qword_1000EB318;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v88 = sub_1000011A8(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v89 = v88;
      }

      else
      {
        v89 = v88 & 0xFFFFFFFE;
      }

      if (v89)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
LABEL_234:
        v90 = _os_log_send_and_compose_impl();
        v91 = v90;
        if (v90)
        {
          sub_100002A8C(v90);
        }

        goto LABEL_237;
      }

LABEL_236:
      v91 = 0;
LABEL_237:
      free(v91);
      v44 = &off_1000EB000;
    }

LABEL_238:

    goto LABEL_239;
  }

  v67 = v614 ^ 1;
  if (v62)
  {
    v67 = 1;
  }

  if ((v67 & 1) == 0)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v1 = &off_1000EB000;
    v68 = qword_1000EB318;
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v69 = sub_1000011A8(0);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v70 = v69;
      }

      else
      {
        v70 = v69 & 0xFFFFFFFE;
      }

      if (v70)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v71 = _os_log_send_and_compose_impl();
        v72 = v71;
        if (v71)
        {
          sub_100002A8C(v71);
        }
      }

      else
      {
        v72 = 0;
      }

      free(v72);
    }

    v62 = sub_10004E3FC(1);
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v44 = &off_1000EB000;
    v0 = qword_1000EB318;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v80 = sub_1000011A8(0);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v80;
      }

      else
      {
        v81 = v80 & 0xFFFFFFFE;
      }

      if (v81)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v82 = _os_log_send_and_compose_impl();
        v83 = v82;
        if (v82)
        {
          sub_100002A8C(v82);
        }
      }

      else
      {
        v83 = 0;
      }

      free(v83);
      v44 = &off_1000EB000;
    }
  }

  if (!v62)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v84 = qword_1000EB308;
    if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_1330;
    }

    value[0] = 0;
    v85 = sub_1000011A8(1);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v85;
    }

    else
    {
      v86 = v85 & 0xFFFFFFFE;
    }

    if (!v86)
    {
      v0 = 0;
LABEL_1329:
      free(v0);
LABEL_1330:

      sleep(2u);
      sub_100018028("UserManagement early boot task unable to locate Primary user..");
      goto LABEL_1331;
    }

LABEL_1327:
    *err = 0;
    v542 = _os_log_send_and_compose_impl();
    v0 = v542;
    if (v542)
    {
      sub_100002A8C(v542);
    }

    goto LABEL_1329;
  }

LABEL_239:
  CFRelease(v62);
  if ((sub_10008B010(qword_1000EB2E0) & 1) == 0)
  {
    sub_100018028("UserManagement early boot task failed to remove nextSession file");
    goto LABEL_1227;
  }

  if (*(v44 + 364) != 1)
  {
    goto LABEL_262;
  }

  if (byte_1000EA3D8 && qword_1000EB5A0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v92 = qword_1000EB308;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v93 = sub_1000011A8(1);
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v94 = v93;
      }

      else
      {
        v94 = v93 & 0xFFFFFFFE;
      }

      if (v94)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v95 = _os_log_send_and_compose_impl();
        v96 = v95;
        if (v95)
        {
          sub_100002A8C(v95);
        }
      }

      else
      {
        v96 = 0;
      }

      free(v96);
    }

    if (CFArrayGetCount(qword_1000EB5A0) >= 1)
    {
      v97 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v97);
        if (ValueAtIndex)
        {
          v99 = ValueAtIndex;
          v1 = CFGetTypeID(ValueAtIndex);
          if (v1 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryContainsKey(v99, kUMUserSessionVolumeMountedKey))
            {
              CFDictionarySetValue(v99, kUMUserSessionVolumeMountedKey, kCFBooleanFalse);
            }
          }
        }

        ++v97;
      }

      while (CFArrayGetCount(qword_1000EB5A0) > v97);
    }
  }

  sub_10003E710();
  v44 = &off_1000EB000;
  v6 = &off_1000EB000;
  if (dword_1000EB5B0 != 1)
  {
LABEL_262:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v100 = qword_1000EB308;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v101 = sub_1000011A8(1);
      v102 = v100;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = v101;
      }

      else
      {
        v103 = v101 & 0xFFFFFFFE;
      }

      if (v103)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v104 = _os_log_send_and_compose_impl();

        if (v104)
        {
          sub_100002A8C(v104);
        }
      }

      else
      {

        v104 = 0;
      }

      free(v104);
      v44 = &off_1000EB000;
    }

    if (qword_1000EB2E8)
    {
      sub_100089DD4();
    }

    else
    {
      v45 = &off_1000EB000;
      v105 = sub_100056424(UMDPersonaManager, qword_1000EB2E0);
      v106 = qword_1000EB2E8;
      qword_1000EB2E8 = v105;

      LODWORD(uuid[0]) = 0;
      v1 = &off_1000EB000;
      if (!sub_10003E884(uuid))
      {
        if (qword_1000EB330 != -1)
        {
          sub_100089D40();
        }

        v107 = qword_1000EB328;
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          value[0] = 0;
          v108 = sub_1000011A8(0);
          v109 = v107;
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            v110 = v108;
          }

          else
          {
            v110 = v108 & 0xFFFFFFFE;
          }

          if (v110)
          {
            *err = 67109120;
            *&err[4] = uuid[0];
            LODWORD(v605) = 8;
            v603 = err;
            v111 = _os_log_send_and_compose_impl();

            if (v111)
            {
              sub_100002A8C(v111);
            }
          }

          else
          {

            v111 = 0;
          }

          free(v111);
          v44 = &off_1000EB000;
        }

        v112 = sub_100089790(qword_1000EB2E8);
        sub_1000553A0(v112, 1);
      }

      if (qword_1000EB330 == -1)
      {
        goto LABEL_288;
      }
    }

    sub_100089D40();
LABEL_288:
    v113 = *(v1 + 808);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v114 = sub_1000011A8(0);
      v115 = v113;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = v114;
      }

      else
      {
        v116 = v114 & 0xFFFFFFFE;
      }

      if (v116)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v117 = _os_log_send_and_compose_impl();

        if (v117)
        {
          sub_100002A8C(v117);
        }
      }

      else
      {

        v117 = 0;
      }

      free(v117);
      v44 = &off_1000EB000;
    }

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v7 = v45;
    v118 = *(v1 + 808);
    v45 = &off_1000EB000;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
    {
      *err = 0;
      v119 = sub_1000011A8(0);
      v120 = v118;
      if (!os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
      {
        v119 &= ~1u;
      }

      if (v119)
      {
        v121 = sub_1000013A0(qword_1000EB2E8);
        LODWORD(value[0]) = 138412290;
        *(value + 4) = v121;
        LODWORD(v605) = 12;
        v603 = value;
        v122 = _os_log_send_and_compose_impl();

        if (v122)
        {
          sub_100002A8C(v122);
        }
      }

      else
      {

        v122 = 0;
      }

      free(v122);
      v44 = &off_1000EB000;
    }

    v6 = &off_1000EB000;
    if (sub_100056408())
    {
      if (sub_10009501C(qword_1000EB2E8))
      {
        sub_1000953B8(qword_1000EB2E8);
      }

      sub_100095708(qword_1000EB2E8);
    }
  }

  v123 = v612 & v39;
  v613 = v614 | v123;
  v124 = byte_1000EB603;
  v125 = [v45[91] splitUserVolumeEnabled];
  v126 = *(v44 + 364);
  if (!v125)
  {
    if (v126 != 1)
    {
      if ((dword_1000EA3D0 - 501) <= 0x36 && (sub_10008A2F4(qword_1000EB2E0, dword_1000EA3D0), v134 = objc_claimAutoreleasedReturnValue(), v134, v134))
      {
        v132 = 0;
        v133 = dword_1000EA3D0;
      }

      else
      {
        if (qword_1000EB320 != -1)
        {
          sub_100089D68();
        }

        v135 = qword_1000EB318;
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          value[0] = 0;
          v136 = sub_1000011A8(0);
          if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
          {
            v137 = v136;
          }

          else
          {
            v137 = v136 & 0xFFFFFFFE;
          }

          if (v137)
          {
            *err = 67109120;
            *&err[4] = dword_1000EA3D0;
            LODWORD(v606) = 8;
            v604 = err;
            v138 = _os_log_send_and_compose_impl();
            v139 = v138;
            if (v138)
            {
              sub_100002A8C(v138);
            }
          }

          else
          {
            v139 = 0;
          }

          free(v139);
        }

        v132 = 0;
        v133 = 501;
        dword_1000EA3D0 = 501;
      }

      goto LABEL_491;
    }

LABEL_324:
    v132 = 0;
    v133 = 502;
    goto LABEL_492;
  }

  if (v126 == 1)
  {
    goto LABEL_324;
  }

  if (((v613 | v124) & 1) == 0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v140 = v7[97];
    if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v141 = sub_1000011A8(1);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v142 = v141;
      }

      else
      {
        v142 = v141 & 0xFFFFFFFE;
      }

      if (v142)
      {
        *err = 0;
        LODWORD(v606) = 2;
        v604 = err;
        v143 = _os_log_send_and_compose_impl();
        v144 = v143;
        if (v143)
        {
          sub_100002A8C(v143);
        }
      }

      else
      {
        v144 = 0;
      }

      free(v144);
    }

    *err = 0;
    uuid[0] = 0;
    if (!AKSGetLastUser())
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v150 = v7[97];
      if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
      {
        v645 = 0;
        v151 = sub_1000011A8(1);
        if (!os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          v151 &= ~1u;
        }

        if (v151)
        {
          v152 = *err;
          v153 = v150;
          Code = CFErrorGetCode(v152);
          LODWORD(value[0]) = 67109378;
          HIDWORD(value[0]) = Code;
          LOWORD(value[1]) = 2112;
          *(&value[1] + 2) = *err;
          LODWORD(v606) = 18;
          v604 = value;
          v155 = _os_log_send_and_compose_impl();

          if (v155)
          {
            sub_100002A8C(v155);
          }
        }

        else
        {
          v155 = 0;
        }

        free(v155);
      }

      v165 = CFErrorGetCode(*err);
      v133 = 0xFFFFFFFFLL;
      goto LABEL_464;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v145 = v7[97];
    if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
    {
      v645 = 0;
      v146 = sub_1000011A8(1);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v147 = v146;
      }

      else
      {
        v147 = v146 & 0xFFFFFFFE;
      }

      if (v147)
      {
        LODWORD(value[0]) = 138412290;
        *(value + 4) = uuid[0];
        LODWORD(v606) = 12;
        v604 = value;
        v148 = _os_log_send_and_compose_impl();
        v149 = v148;
        if (v148)
        {
          sub_100002A8C(v148);
        }
      }

      else
      {
        v149 = 0;
      }

      free(v149);
    }

    v156 = CFUUIDCreateString(kCFAllocatorDefault, uuid[0]);
    if (v156)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v157 = v7[97];
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v645 = 0;
        v158 = sub_1000011A8(1);
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          v159 = v158;
        }

        else
        {
          v159 = v158 & 0xFFFFFFFE;
        }

        if (v159)
        {
          LODWORD(value[0]) = 138412290;
          *(value + 4) = v156;
          LODWORD(v606) = 12;
          v604 = value;
          v160 = _os_log_send_and_compose_impl();
          v161 = v160;
          if (v160)
          {
            sub_100002A8C(v160);
          }
        }

        else
        {
          v161 = 0;
        }

        free(v161);
      }

      v166 = sub_1000180D4(v156);
      if (v166)
      {
        v167 = v166;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v168 = v7[97];
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          v645 = 0;
          v169 = sub_1000011A8(1);
          if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
          {
            v170 = v169;
          }

          else
          {
            v170 = v169 & 0xFFFFFFFE;
          }

          if (v170)
          {
            LODWORD(value[0]) = 138412290;
            *(value + 4) = v167;
            LODWORD(v606) = 12;
            v604 = value;
            v171 = _os_log_send_and_compose_impl();
            v172 = v171;
            if (v171)
            {
              sub_100002A8C(v171);
            }
          }

          else
          {
            v172 = 0;
          }

          free(v172);
        }

        v133 = sub_1000023E8(v167, kUMUserSessionIDKey);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v187 = v7[97];
        if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
        {
          value[0] = 0;
          v188 = sub_1000011A8(1);
          if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
          {
            v189 = v188;
          }

          else
          {
            v189 = v188 & 0xFFFFFFFE;
          }

          if (v189)
          {
            LODWORD(v645) = 67109120;
            HIDWORD(v645) = v133;
            LODWORD(v606) = 8;
            v604 = &v645;
            v190 = _os_log_send_and_compose_impl();
            v191 = v190;
            if (v190)
            {
              sub_100002A8C(v190);
            }
          }

          else
          {
            v191 = 0;
          }

          free(v191);
          v6 = &off_1000EB000;
        }

        CFRelease(v167);
        v165 = 0;
LABEL_463:
        CFRelease(v156);
LABEL_464:
        if (uuid[0])
        {
          CFRelease(uuid[0]);
        }

        v132 = v133 == -1;
        if (v133 == -1)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v192 = v7[97];
          if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
          {
            value[0] = 0;
            v193 = sub_1000011A8(1);
            if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
            {
              v194 = v193;
            }

            else
            {
              v194 = v193 & 0xFFFFFFFE;
            }

            if (v194)
            {
              *err = 67109120;
              *&err[4] = v165;
              LODWORD(v606) = 8;
              v604 = err;
              v195 = _os_log_send_and_compose_impl();
              v196 = v195;
              if (v195)
              {
                sub_100002A8C(v195);
              }
            }

            else
            {
              v196 = 0;
            }

            free(v196);
          }

          v133 = 501;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v197 = v7[97];
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
        {
          value[0] = 0;
          v198 = sub_1000011A8(1);
          if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
          {
            v199 = v198;
          }

          else
          {
            v199 = v198 & 0xFFFFFFFE;
          }

          if (v199)
          {
            *err = 67109120;
            *&err[4] = v133;
            LODWORD(v606) = 8;
            v604 = err;
            v200 = _os_log_send_and_compose_impl();
            v201 = v200;
            if (v200)
            {
              sub_100002A8C(v200);
            }
          }

          else
          {
            v201 = 0;
          }

          free(v201);
        }

LABEL_491:
        v44 = &off_1000EB000;
        goto LABEL_492;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v162 = v7[97];
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        value[0] = 0;
        v173 = sub_1000011A8(1);
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
        {
          v174 = v173;
        }

        else
        {
          v174 = v173 & 0xFFFFFFFE;
        }

        if (v174)
        {
          LOWORD(v645) = 0;
          LODWORD(v606) = 2;
          v604 = &v645;
LABEL_415:
          v175 = _os_log_send_and_compose_impl();
          v176 = v175;
          if (v175)
          {
            sub_100002A8C(v175);
          }

          goto LABEL_418;
        }

        goto LABEL_417;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v162 = v7[97];
      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
      {
        value[0] = 0;
        v163 = sub_1000011A8(1);
        if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
        {
          v164 = v163;
        }

        else
        {
          v164 = v163 & 0xFFFFFFFE;
        }

        if (v164)
        {
          LOWORD(v645) = 0;
          LODWORD(v606) = 2;
          v604 = &v645;
          goto LABEL_415;
        }

LABEL_417:
        v176 = 0;
LABEL_418:
        free(v176);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v177 = v7[97];
    if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v178 = sub_1000011A8(1);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
      {
        v179 = v178;
      }

      else
      {
        v179 = v178 & 0xFFFFFFFE;
      }

      if (v179)
      {
        LOWORD(v645) = 0;
        LODWORD(v606) = 2;
        v604 = &v645;
        v180 = _os_log_send_and_compose_impl();
        v181 = v180;
        if (v180)
        {
          sub_100002A8C(v180);
        }
      }

      else
      {
        v181 = 0;
      }

      free(v181);
    }

    v133 = 0xFFFFFFFFLL;
    v165 = 2;
    if (!v156)
    {
      goto LABEL_464;
    }

    goto LABEL_463;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v127 = v7[97];
  if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v128 = sub_1000011A8(1);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      v129 = v128;
    }

    else
    {
      v129 = v128 & 0xFFFFFFFE;
    }

    if (v129)
    {
      *err = 0;
      LODWORD(v606) = 2;
      v604 = err;
      v130 = _os_log_send_and_compose_impl();
      v131 = v130;
      if (v130)
      {
        sub_100002A8C(v130);
      }
    }

    else
    {
      v131 = 0;
    }

    free(v131);
  }

  v132 = 0;
  v133 = 501;
LABEL_492:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v0 = v7[97];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v202 = v132;
    value[0] = 0;
    v203 = sub_1000011A8(1);
    v204 = v0;
    if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
    {
      v205 = v203;
    }

    else
    {
      v205 = v203 & 0xFFFFFFFE;
    }

    if (v205)
    {
      *err = 67109120;
      *&err[4] = v133;
      LODWORD(v606) = 8;
      v604 = err;
      v206 = _os_log_send_and_compose_impl();

      if (v206)
      {
        sub_100002A8C(v206);
      }
    }

    else
    {

      v206 = 0;
    }

    v44 = &off_1000EB000;
    free(v206);
    v132 = v202;
  }

  if (v132)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v0 = v7[97];
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v207 = v133;
      v208 = v132;
      value[0] = 0;
      v209 = sub_1000011A8(1);
      v210 = v0;
      if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
      {
        v211 = v209;
      }

      else
      {
        v211 = v209 & 0xFFFFFFFE;
      }

      if (v211)
      {
        *err = 0;
        LODWORD(v606) = 2;
        v604 = err;
        v212 = _os_log_send_and_compose_impl();

        if (v212)
        {
          sub_100002A8C(v212);
        }
      }

      else
      {

        v212 = 0;
      }

      v44 = &off_1000EB000;
      free(v212);
      v132 = v208;
      v133 = v207;
      v6 = &off_1000EB000;
    }
  }

  if ([v45[91] splitUserVolumeEnabled])
  {
    uuid[0] = 0;
    if (v613)
    {
      if (v614)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v0 = v7[97];
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          v213 = v133;
          v214 = v132;
          value[0] = 0;
          v215 = sub_1000011A8(1);
          v216 = v0;
          if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
          {
            v217 = v215;
          }

          else
          {
            v217 = v215 & 0xFFFFFFFE;
          }

          if (v217)
          {
            *err = 0;
            LODWORD(v605) = 2;
            v603 = err;
            v218 = _os_log_send_and_compose_impl();

            if (v218)
            {
              sub_100002A8C(v218);
            }
          }

          else
          {

            v218 = 0;
          }

          v44 = &off_1000EB000;
          free(v218);
          v132 = v214;
          v133 = v213;
        }
      }

      if (!v123)
      {
LABEL_564:
        v609 = v123;
        v227 = sub_10008A2F4(qword_1000EB2E0, v133);
        if (!v227)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v507 = v7[97];
          if (os_log_type_enabled(v507, OS_LOG_TYPE_DEFAULT))
          {
            value[0] = 0;
            v508 = sub_1000011A8(1);
            v0 = v507;
            if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
            {
              v509 = v508;
            }

            else
            {
              v509 = v508 & 0xFFFFFFFE;
            }

            if (v509)
            {
              *err = 0;
              v526 = _os_log_send_and_compose_impl();

              v510 = 0;
              if (v526)
              {
                sub_100002A8C(v526);
                v510 = v526;
              }
            }

            else
            {

              v510 = 0;
            }

            free(v510);
          }

          sleep(2u);
          sub_100018028("UserManagement early boot task could not Locate primary user session of Update install user");
          goto LABEL_1293;
        }

        cf = v227;
        v228 = sub_100079590(v227, kUMUserSessionUUIDKey);
        if (v228)
        {
          v229 = v228;
          v230 = CFUUIDCreateFromString(kCFAllocatorDefault, v228);
          v231 = sub_1000169B4(NSUUID, v230);
          v611 = v230;
          if (v230)
          {
            v0 = v231;
            if (v614)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v6 = v7[97];
              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                *err = 0;
                v232 = sub_1000011A8(1);
                v233 = v6;
                if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
                {
                  v234 = v232;
                }

                else
                {
                  v234 = v232 & 0xFFFFFFFE;
                }

                if (v234)
                {
                  LODWORD(value[0]) = 138412290;
                  *(value + 4) = v611;
                  LODWORD(v605) = 12;
                  v603 = value;
                  v235 = _os_log_send_and_compose_impl();

                  if (v235)
                  {
                    sub_100002A8C(v235);
                  }
                }

                else
                {

                  v235 = 0;
                }

                free(v235);
              }

              v246 = AKSIdentityMigrateFirst();
              v247 = qword_1000EB310 == -1;
              if (v246)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v248 = v7[97];
                if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
                {
                  *err = 0;
                  v249 = sub_1000011A8(1);
                  v250 = v248;
                  if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
                  {
                    v251 = v249;
                  }

                  else
                  {
                    v251 = v249 & 0xFFFFFFFE;
                  }

                  if (v251)
                  {
                    LODWORD(value[0]) = 67109378;
                    HIDWORD(value[0]) = v133;
                    LOWORD(value[1]) = 2112;
                    *(&value[1] + 2) = v611;
                    LODWORD(v605) = 18;
                    v603 = value;
                    v252 = _os_log_send_and_compose_impl();

                    if (v252)
                    {
                      sub_100002A8C(v252);
                    }
                  }

                  else
                  {

                    v252 = 0;
                  }

                  free(v252);
                }

                v624 = 0;
                v253 = sub_100022428(v0, v133, &v624);
                v6 = v624;
                if (v253)
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v254 = v7[97];
                  if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
                  {
                    value[0] = 0;
                    v255 = sub_1000011A8(1);
                    v256 = v254;
                    if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
                    {
                      v257 = v255;
                    }

                    else
                    {
                      v257 = v255 & 0xFFFFFFFE;
                    }

                    if (v257)
                    {
                      *err = 0;
                      LODWORD(v605) = 2;
                      v603 = err;
                      v258 = _os_log_send_and_compose_impl();

                      if (v258)
                      {
                        sub_100002A8C(v258);
                      }
                    }

                    else
                    {

                      v258 = 0;
                    }

                    free(v258);
                  }

                  sub_100036F10("IONVRAM-DELETE-PROPERTY", "usermanagerd");
                  v6 = &off_1000EB000;
                  v45 = &off_1000EB000;
                  if (*(v44 + 364) != 1)
                  {
                    goto LABEL_853;
                  }

                  v643 = 0u;
                  v644 = 0u;
                  v641 = 0u;
                  v642 = 0u;
                  v639 = 0u;
                  v640 = 0u;
                  v637 = 0u;
                  v638 = 0u;
                  v635 = 0u;
                  v636 = 0u;
                  v633 = 0u;
                  v634 = 0u;
                  v631 = 0u;
                  v632 = 0u;
                  memset(value, 0, sizeof(value));
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v259 = v7[97];
                  if (os_log_type_enabled(v259, OS_LOG_TYPE_DEFAULT))
                  {
                    *err = 0;
                    v260 = sub_1000011A8(1);
                    v261 = v259;
                    if (os_log_type_enabled(v261, OS_LOG_TYPE_DEFAULT))
                    {
                      v262 = v260;
                    }

                    else
                    {
                      v262 = v260 & 0xFFFFFFFE;
                    }

                    if (v262)
                    {
                      LOWORD(v645) = 0;
                      LODWORD(v605) = 2;
                      v603 = &v645;
                      v263 = _os_log_send_and_compose_impl();

                      if (v263)
                      {
                        sub_100002A8C(v263);
                      }
                    }

                    else
                    {

                      v263 = 0;
                    }

                    v45 = &off_1000EB000;
                    free(v263);
                  }

                  if (!sub_100054A9C(value, 256))
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v306 = v7[97];
                    if (!os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_852:

                      v6 = &off_1000EB000;
                      if (*(v44 + 364) == 1)
                      {
LABEL_898:
                        CFRelease(v611);
                        CFRelease(cf);
                        if (uuid[0])
                        {
                          CFRelease(uuid[0]);
                          v299 = 0;
                          uuid[0] = 0;
                        }

                        else
                        {
                          v299 = 0;
                        }

                        goto LABEL_1150;
                      }

LABEL_853:
                      if (!CFDictionaryContainsValue(cf, kUMUserSessionKeybagOpaqueDataKey))
                      {
                        value[0] = 0;
                        if (qword_1000EB310 != -1)
                        {
                          sub_100089CEC();
                        }

                        v363 = v7[97];
                        if (os_log_type_enabled(v363, OS_LOG_TYPE_DEFAULT))
                        {
                          *err = 0;
                          v364 = sub_1000011A8(1);
                          v365 = v363;
                          if (os_log_type_enabled(v365, OS_LOG_TYPE_DEFAULT))
                          {
                            v366 = v364;
                          }

                          else
                          {
                            v366 = v364 & 0xFFFFFFFE;
                          }

                          if (v366)
                          {
                            LOWORD(v645) = 0;
                            LODWORD(v605) = 2;
                            v603 = &v645;
                            v367 = _os_log_send_and_compose_impl();

                            if (v367)
                            {
                              sub_100002A8C(v367);
                            }
                          }

                          else
                          {

                            v367 = 0;
                          }

                          free(v367);
                        }

                        v368 = MKBKeyBagCopySystemOpaqueBlob();
                        if (v368)
                        {
                          v369 = v368;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v370 = v7[97];
                          if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
                          {
                            *err = 0;
                            v371 = sub_1000011A8(1);
                            v372 = v370;
                            if (os_log_type_enabled(v372, OS_LOG_TYPE_DEFAULT))
                            {
                              v373 = v371;
                            }

                            else
                            {
                              v373 = v371 & 0xFFFFFFFE;
                            }

                            if (v373)
                            {
                              LODWORD(v645) = 67109120;
                              HIDWORD(v645) = v369;
                              LODWORD(v605) = 8;
                              v603 = &v645;
                              v374 = _os_log_send_and_compose_impl();

                              if (v374)
                              {
                                sub_100002A8C(v374);
                              }
                            }

                            else
                            {

                              v374 = 0;
                            }

                            free(v374);
                          }

                          v45 = &off_1000EB000;
                        }

                        else if (value[0])
                        {
                          CFDictionarySetValue(cf, kUMUserSessionKeybagOpaqueDataKey, value[0]);
                          v45 = &off_1000EB000;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v44 = &off_1000EB000;
                          v375 = v7[97];
                          if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
                          {
                            *err = 0;
                            v376 = sub_1000011A8(1);
                            v377 = v375;
                            if (os_log_type_enabled(v377, OS_LOG_TYPE_DEFAULT))
                            {
                              v378 = v376;
                            }

                            else
                            {
                              v378 = v376 & 0xFFFFFFFE;
                            }

                            if (v378)
                            {
                              LODWORD(v645) = 67109120;
                              HIDWORD(v645) = v133;
                              LODWORD(v605) = 8;
                              v603 = &v645;
                              v379 = _os_log_send_and_compose_impl();

                              if (v379)
                              {
                                sub_100002A8C(v379);
                              }
                            }

                            else
                            {

                              v379 = 0;
                            }

                            v45 = &off_1000EB000;
                            free(v379);
                          }

                          sub_100018C80();
                          if (value[0])
                          {
                            CFRelease(value[0]);
                          }
                        }

                        else
                        {
                          v45 = &off_1000EB000;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v44 = &off_1000EB000;
                          v380 = v7[97];
                          if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
                          {
                            *err = 0;
                            v381 = sub_1000011A8(1);
                            v382 = v380;
                            if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
                            {
                              v383 = v381;
                            }

                            else
                            {
                              v383 = v381 & 0xFFFFFFFE;
                            }

                            if (v383)
                            {
                              LOWORD(v645) = 0;
                              LODWORD(v605) = 2;
                              v603 = &v645;
                              v384 = _os_log_send_and_compose_impl();

                              if (v384)
                              {
                                sub_100002A8C(v384);
                              }
                            }

                            else
                            {

                              v384 = 0;
                            }

                            v45 = &off_1000EB000;
                            free(v384);
                          }
                        }

                        v6 = &off_1000EB000;
                      }

                      goto LABEL_898;
                    }

                    *err = 0;
                    v307 = sub_1000011A8(1);
                    v306 = v306;
                    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                    {
                      v308 = v307;
                    }

                    else
                    {
                      v308 = v307 & 0xFFFFFFFE;
                    }

                    if (v308)
                    {
                      LOWORD(v645) = 0;
                      LODWORD(v605) = 2;
                      v603 = &v645;
                      v309 = _os_log_send_and_compose_impl();

                      if (v309)
                      {
                        sub_100002A8C(v309);
                      }
                    }

                    else
                    {

                      v309 = 0;
                    }

                    free(v309);
LABEL_851:
                    v45 = &off_1000EB000;
                    goto LABEL_852;
                  }

                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v301 = v7[97];
                  if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
                  {
                    v645 = 0;
                    v302 = sub_1000011A8(1);
                    v303 = v301;
                    if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
                    {
                      v304 = v302;
                    }

                    else
                    {
                      v304 = v302 & 0xFFFFFFFE;
                    }

                    if (v304)
                    {
                      *err = 136315138;
                      *&err[4] = value;
                      LODWORD(v605) = 12;
                      v603 = err;
                      v305 = _os_log_send_and_compose_impl();

                      if (v305)
                      {
                        sub_100002A8C(v305);
                      }
                    }

                    else
                    {

                      v305 = 0;
                    }

                    free(v305);
                  }

                  v306 = [NSString stringWithUTF8String:value];
                  if (!v306)
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v315 = v7[97];
                    if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                    {
                      *err = 0;
                      v316 = sub_1000011A8(1);
                      v315 = v315;
                      if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
                      {
                        v317 = v316;
                      }

                      else
                      {
                        v317 = v316 & 0xFFFFFFFE;
                      }

                      if (v317)
                      {
                        LOWORD(v645) = 0;
                        LODWORD(v605) = 2;
                        v603 = &v645;
                        v318 = _os_log_send_and_compose_impl();

                        if (v318)
                        {
                          sub_100002A8C(v318);
                        }
                      }

                      else
                      {

                        v318 = 0;
                      }

                      free(v318);
                    }

                    goto LABEL_850;
                  }

                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v310 = v7[97];
                  if (os_log_type_enabled(v310, OS_LOG_TYPE_DEFAULT))
                  {
                    v645 = 0;
                    v311 = sub_1000011A8(1);
                    v312 = v310;
                    if (os_log_type_enabled(v312, OS_LOG_TYPE_DEFAULT))
                    {
                      v313 = v311;
                    }

                    else
                    {
                      v313 = v311 & 0xFFFFFFFE;
                    }

                    if (v313)
                    {
                      *err = 138412546;
                      *&err[4] = v306;
                      v628 = 1024;
                      v629 = v133;
                      LODWORD(v605) = 18;
                      v603 = err;
                      v314 = _os_log_send_and_compose_impl();

                      if (v314)
                      {
                        sub_100002A8C(v314);
                      }
                    }

                    else
                    {

                      v314 = 0;
                    }

                    free(v314);
                  }

                  v319 = sub_100089A80(qword_1000EB608);
                  v623 = 0;
                  v320 = [v319 mapVolume:v306 toSession:v133 withPersona:0 error:&v623];
                  v315 = v623;

                  if (v320)
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v321 = v7[97];
                    if (!os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_757;
                    }

                    *err = 0;
                    v322 = sub_1000011A8(1);
                    v323 = v321;
                    if (os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT))
                    {
                      v324 = v322;
                    }

                    else
                    {
                      v324 = v322 & 0xFFFFFFFE;
                    }

                    if (v324)
                    {
                      LOWORD(v645) = 0;
                      LODWORD(v605) = 2;
                      v603 = &v645;
                      goto LABEL_753;
                    }
                  }

                  else
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v321 = v7[97];
                    if (!os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_757;
                    }

                    v645 = 0;
                    v325 = sub_1000011A8(1);
                    v323 = v321;
                    if (!os_log_type_enabled(v323, OS_LOG_TYPE_DEFAULT))
                    {
                      v325 &= ~1u;
                    }

                    if (v325)
                    {
                      v326 = [v315 code];
                      *err = 134217984;
                      *&err[4] = v326;
                      LODWORD(v605) = 12;
                      v603 = err;
LABEL_753:
                      v327 = _os_log_send_and_compose_impl();

                      if (v327)
                      {
                        sub_100002A8C(v327);
                      }

                      goto LABEL_756;
                    }
                  }

                  v327 = 0;
LABEL_756:
                  free(v327);
                  v44 = &off_1000EB000;
LABEL_757:

LABEL_850:
                  goto LABEL_851;
                }

                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v84 = v7[97];
                if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                {
LABEL_1338:

                  v547 = MGGetBoolAnswer();
                  v548 = [v6 code];
                  if (v547)
                  {
                    v548 = sub_100018028("UpdateInstall-FATAL OTI LOAD ERROR:%ld", v548);
                  }

                  sub_100036CA4("UpdateInstall-FATAL OTI LOAD ERROR:%ld", v548);
                }

                *err = 0;
                v524 = sub_1000011A8(1);
                v0 = v84;
                if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                {
                  v524 &= ~1u;
                }

                if (!v524)
                {

                  v525 = 0;
LABEL_1337:
                  free(v525);
                  goto LABEL_1338;
                }

LABEL_1335:
                v545 = [v6 code:v603];
                LODWORD(value[0]) = 134217984;
                *(value + 4) = v545;
                v546 = _os_log_send_and_compose_impl();

                v525 = 0;
                if (v546)
                {
                  sub_100002A8C(v546);
                  v525 = v546;
                }

                goto LABEL_1337;
              }

LABEL_1275:
              if (!v247)
              {
                sub_100089CEC();
              }

              v84 = v7[97];
              if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1334;
              }

              value[0] = 0;
              v522 = sub_1000011A8(1);
              v0 = v84;
              if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
              {
                v522 &= ~1u;
              }

              if (!v522)
              {

                v523 = 0;
LABEL_1333:
                free(v523);
LABEL_1334:

                sleep(2u);
                sub_100018028("UserManagement early boot task failed to migrate Primary User AKSIdentity during update install");
                goto LABEL_1335;
              }

LABEL_1331:
              v543 = CFErrorGetCode(uuid[0]);
              *err = 67109120;
              *&err[4] = v543;
              LODWORD(v605) = 8;
              v603 = err;
              v544 = _os_log_send_and_compose_impl();

              v523 = 0;
              if (v544)
              {
                sub_100002A8C(v544);
                v523 = v544;
              }

              goto LABEL_1333;
            }

            if (v609)
            {
              LODWORD(v645) = 0;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v236 = v7[97];
              if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
              {
                *err = 0;
                v237 = sub_1000011A8(1);
                v238 = v236;
                if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                {
                  v239 = v237;
                }

                else
                {
                  v239 = v237 & 0xFFFFFFFE;
                }

                if (v239)
                {
                  LODWORD(value[0]) = 67109378;
                  HIDWORD(value[0]) = v133;
                  LOWORD(value[1]) = 2112;
                  *(&value[1] + 2) = v611;
                  LODWORD(v605) = 18;
                  v603 = value;
                  v240 = _os_log_send_and_compose_impl();

                  if (v240)
                  {
                    sub_100002A8C(v240);
                  }
                }

                else
                {

                  v240 = 0;
                }

                free(v240);
              }

              v622 = 0;
              v264 = sub_100022428(v0, v133, &v622);
              v6 = v622;
              v265 = qword_1000EB310 == -1;
              if (!v264)
              {
LABEL_1297:
                if (!v265)
                {
                  sub_100089CEC();
                }

                v528 = v7[97];
                if (os_log_type_enabled(v528, OS_LOG_TYPE_DEFAULT))
                {
                  *err = 0;
                  v529 = sub_1000011A8(1);
                  v530 = v528;
                  if (!os_log_type_enabled(v530, OS_LOG_TYPE_DEFAULT))
                  {
                    v529 &= ~1u;
                  }

                  if (v529)
                  {
                    v573 = [v6 code];
                    LODWORD(value[0]) = 134217984;
                    *(value + 4) = v573;
                    v574 = _os_log_send_and_compose_impl();

                    v531 = 0;
                    if (v574)
                    {
                      sub_100002A8C(v574);
                      v531 = v574;
                    }
                  }

                  else
                  {

                    v531 = 0;
                  }

                  free(v531);
                }

                v575 = MGGetBoolAnswer();
                v576 = [v6 code];
                if (v575)
                {
                  v576 = sub_100018028("EraseInstall-FATAL OTI LOAD ERROR:%ld", v576);
                }

                sub_100036CA4("EraseInstall-FATAL OTI LOAD ERROR:%ld", v576);
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v266 = v7[97];
              if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
              {
                value[0] = 0;
                v267 = sub_1000011A8(1);
                v268 = v266;
                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEFAULT))
                {
                  v269 = v267;
                }

                else
                {
                  v269 = v267 & 0xFFFFFFFE;
                }

                if (v269)
                {
                  *err = 0;
                  LODWORD(v605) = 2;
                  v603 = err;
                  v270 = _os_log_send_and_compose_impl();

                  if (v270)
                  {
                    sub_100002A8C(v270);
                  }
                }

                else
                {

                  v270 = 0;
                }

                free(v270);
              }

              sub_100036F10("IONVRAM-DELETE-PROPERTY", "usermanagerd");
              CFRelease(cf);
              CFRelease(v611);

              v6 = &off_1000EB000;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v45 = &off_1000EB000;
              v279 = v7[97];
              if (os_log_type_enabled(v279, OS_LOG_TYPE_DEFAULT))
              {
                v280 = v0;
                v281 = v133;
                v282 = v132;
                value[0] = 0;
                v283 = sub_1000011A8(1);
                v284 = v279;
                if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
                {
                  v285 = v283;
                }

                else
                {
                  v285 = v283 & 0xFFFFFFFE;
                }

                if (v285)
                {
                  *err = 0;
                  LODWORD(v605) = 2;
                  v603 = err;
                  v286 = _os_log_send_and_compose_impl();

                  if (v286)
                  {
                    sub_100002A8C(v286);
                  }
                }

                else
                {

                  v286 = 0;
                }

                v132 = v282;
                free(v286);
                v6 = &off_1000EB000;
                v133 = v281;
                v0 = v280;
                v45 = &off_1000EB000;
              }

              if (sub_1000729D4(1, &v645))
              {
                v299 = 0;
                v44 = &off_1000EB000;
LABEL_1150:
                if (*(v44 + 364) != 1)
                {
                  if (v613)
                  {
                    v479 = 1;
                  }

                  else
                  {
                    v479 = byte_1000EB603;
                  }

                  sub_100037278(v133, v479 & 1);
                }

                v123 = v609;
                goto LABEL_1156;
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v536 = v7[97];
              if (os_log_type_enabled(v536, OS_LOG_TYPE_DEFAULT))
              {
                value[0] = 0;
                v537 = sub_1000011A8(1);
                v0 = v536;
                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                {
                  v538 = v537;
                }

                else
                {
                  v538 = v537 & 0xFFFFFFFE;
                }

                if (v538)
                {
                  *err = 67109120;
                  *&err[4] = v645;
                  v581 = _os_log_send_and_compose_impl();

                  v539 = 0;
                  if (v581)
                  {
                    sub_100002A8C(v581);
                    v539 = v581;
                  }
                }

                else
                {

                  v539 = 0;
                }

                free(v539);
              }

              sleep(2u);
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v582 = v7[97];
              if (os_log_type_enabled(v582, OS_LOG_TYPE_DEFAULT))
              {
                value[0] = 0;
                v583 = sub_1000011A8(1);
                v0 = v582;
                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                {
                  v584 = v583;
                }

                else
                {
                  v584 = v583 & 0xFFFFFFFE;
                }

                if (v584)
                {
                  *err = 0;
                  v586 = _os_log_send_and_compose_impl();

                  v585 = 0;
                  if (v586)
                  {
                    sub_100002A8C(v586);
                    v585 = v586;
                  }
                }

                else
                {

                  v585 = 0;
                }

                free(v585);
              }

              sub_100018028("UserManagement early boot task APFSVolumeMigrateMediaKey Failed with Error:%d", v645);
LABEL_1431:
              if (!v393)
              {
                sub_100089CEC();
              }

              v549 = qword_1000EB308;
              if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_1474;
              }

              value[0] = 0;
              v587 = sub_1000011A8(1);
              v0 = v549;
              if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
              {
                v588 = v587;
              }

              else
              {
                v588 = v587 & 0xFFFFFFFE;
              }

              if (!v588)
              {

                v589 = 0;
LABEL_1473:
                free(v589);
LABEL_1474:

                sleep(2u);
                sub_100018028("Failed to unmount 501 User Volume error:%d", v645);
                goto LABEL_1475;
              }

LABEL_1471:
              *err = 67109120;
              *&err[4] = v645;
              v601 = _os_log_send_and_compose_impl();

              v589 = 0;
              if (v601)
              {
                sub_100002A8C(v601);
                v589 = v601;
              }

              goto LABEL_1473;
            }

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v241 = v7[97];
            if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
            {
              *err = 0;
              v242 = sub_1000011A8(1);
              v243 = v241;
              if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
              {
                v244 = v242;
              }

              else
              {
                v244 = v242 & 0xFFFFFFFE;
              }

              if (v244)
              {
                LODWORD(value[0]) = 67109378;
                HIDWORD(value[0]) = v133;
                LOWORD(value[1]) = 2112;
                *(&value[1] + 2) = v611;
                LODWORD(v605) = 18;
                v603 = value;
                v245 = _os_log_send_and_compose_impl();

                if (v245)
                {
                  sub_100002A8C(v245);
                }
              }

              else
              {

                v245 = 0;
              }

              free(v245);
              v44 = &off_1000EB000;
            }

            v621 = 0;
            v271 = sub_100022428(v0, v133, &v621);
            v272 = v621;
            if (!v271)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v532 = v7[97];
              if (os_log_type_enabled(v532, OS_LOG_TYPE_DEFAULT))
              {
                *err = 0;
                v533 = sub_1000011A8(1);
                v534 = v532;
                if (!os_log_type_enabled(v534, OS_LOG_TYPE_DEFAULT))
                {
                  v533 &= ~1u;
                }

                if (v533)
                {
                  v577 = [v272 code];
                  LODWORD(value[0]) = 134217984;
                  *(value + 4) = v577;
                  v578 = _os_log_send_and_compose_impl();

                  v535 = 0;
                  if (v578)
                  {
                    sub_100002A8C(v578);
                    v535 = v578;
                  }
                }

                else
                {

                  v535 = 0;
                }

                free(v535);
              }

              v579 = MGGetBoolAnswer();
              v580 = [v272 code];
              if (v579)
              {
                v580 = sub_100018028("RegularBoot-FATAL OTI LOAD ERROR:%ld", v580);
              }

              sub_100036CA4("RegularBoot-FATAL OTI LOAD ERROR:%ld", v580);
            }

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v273 = v7[97];
            if (os_log_type_enabled(v273, OS_LOG_TYPE_DEFAULT))
            {
              v274 = v7;
              value[0] = 0;
              v275 = sub_1000011A8(1);
              v276 = v273;
              if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
              {
                v277 = v275;
              }

              else
              {
                v277 = v275 & 0xFFFFFFFE;
              }

              if (v277)
              {
                *err = 0;
                LODWORD(v605) = 2;
                v603 = err;
                v278 = _os_log_send_and_compose_impl();

                if (v278)
                {
                  sub_100002A8C(v278);
                }
              }

              else
              {

                v278 = 0;
              }

              free(v278);
              v7 = v274;
              v44 = &off_1000EB000;
            }

            sub_100036F10("IONVRAM-DELETE-PROPERTY", "usermanagerd");
            if (*(v44 + 364) == 1)
            {
              v6 = &off_1000EB000;
              v45 = &off_1000EB000;
              if (sub_100002454(cf, kUMUserSessionNeedsCryptoSetupKey))
              {
                v608 = v229;
                v287 = sub_10008A2F4(qword_1000EB2E0, 501);
                if (v287)
                {
                  v288 = v287;
                  bytes = 0;
                  LODWORD(v645) = 0;
                  v289 = CFDataCreate(kCFAllocatorDefault, &bytes, 1);
                  v290 = sub_100079590(v288, kUMUserSessionUUIDKey);
                  if (v290)
                  {
                    v291 = CFUUIDCreateFromString(kCFAllocatorDefault, v290);
                    if (v291)
                    {
                      v6 = v291;
                      v292 = sub_1000169B4(NSUUID, v291);
                      CFRelease(v6);
                      if (v292)
                      {
                        v615 = v288;
                        if (qword_1000EB310 != -1)
                        {
                          sub_100089CEC();
                        }

                        v293 = v7[97];
                        if (os_log_type_enabled(v293, OS_LOG_TYPE_DEFAULT))
                        {
                          v294 = v7;
                          value[0] = 0;
                          v295 = sub_1000011A8(1);
                          v296 = v293;
                          if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                          {
                            v297 = v295;
                          }

                          else
                          {
                            v297 = v295 & 0xFFFFFFFE;
                          }

                          if (v297)
                          {
                            *err = 0;
                            LODWORD(v605) = 2;
                            v603 = err;
                            v298 = _os_log_send_and_compose_impl();

                            if (v298)
                            {
                              sub_100002A8C(v298);
                            }
                          }

                          else
                          {

                            v298 = 0;
                          }

                          v7 = v294;
                          free(v298);
                        }

                        v619 = 0;
                        v6 = sub_100022428(v292, 501, &v619);
                        v328 = v619;
                        if (v6)
                        {
                          v329 = v328;
                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v330 = v7[97];
                          if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
                          {
                            value[0] = 0;
                            v331 = sub_1000011A8(1);
                            v6 = v330;
                            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                            {
                              v332 = v331;
                            }

                            else
                            {
                              v332 = v331 & 0xFFFFFFFE;
                            }

                            if (v332)
                            {
                              *err = 0;
                              LODWORD(v605) = 2;
                              v603 = err;
                              v333 = _os_log_send_and_compose_impl();

                              if (v333)
                              {
                                sub_100002A8C(v333);
                              }
                            }

                            else
                            {

                              v333 = 0;
                            }

                            free(v333);
                            v45 = &off_1000EB000;
                          }

                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v7 = &off_1000EB000;
                          v334 = v615;
                          v335 = qword_1000EB308;
                          if (os_log_type_enabled(v335, OS_LOG_TYPE_DEFAULT))
                          {
                            value[0] = 0;
                            v336 = sub_1000011A8(1);
                            v337 = v335;
                            if (os_log_type_enabled(v337, OS_LOG_TYPE_DEFAULT))
                            {
                              v338 = v336;
                            }

                            else
                            {
                              v338 = v336 & 0xFFFFFFFE;
                            }

                            if (v338)
                            {
                              *err = 67109120;
                              *&err[4] = v133;
                              LODWORD(v605) = 8;
                              v603 = err;
                              v6 = _os_log_send_and_compose_impl();

                              if (v6)
                              {
                                sub_100002A8C(v6);
                              }
                            }

                            else
                            {

                              v6 = 0;
                            }

                            v334 = v615;
                            free(v6);
                          }

                          if (AKSIdentityTransferPrimary())
                          {
                            if (qword_1000EB310 != -1)
                            {
                              sub_100089CEC();
                            }

                            v339 = qword_1000EB308;
                            if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
                            {
                              value[0] = 0;
                              v340 = sub_1000011A8(1);
                              v6 = v339;
                              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                              {
                                v341 = v340;
                              }

                              else
                              {
                                v341 = v340 & 0xFFFFFFFE;
                              }

                              if (v341)
                              {
                                *err = 0;
                                LODWORD(v605) = 2;
                                v603 = err;
                                v342 = _os_log_send_and_compose_impl();

                                if (v342)
                                {
                                  sub_100002A8C(v342);
                                }
                              }

                              else
                              {

                                v342 = 0;
                              }

                              free(v342);
                              v45 = &off_1000EB000;
                            }

                            if (qword_1000EB310 != -1)
                            {
                              sub_100089CEC();
                            }

                            v343 = qword_1000EB308;
                            if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
                            {
                              value[0] = 0;
                              v344 = sub_1000011A8(1);
                              v6 = v343;
                              if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                              {
                                v345 = v344;
                              }

                              else
                              {
                                v345 = v344 & 0xFFFFFFFE;
                              }

                              if (v345)
                              {
                                *err = 0;
                                LODWORD(v605) = 2;
                                v603 = err;
                                v346 = _os_log_send_and_compose_impl();

                                if (v346)
                                {
                                  sub_100002A8C(v346);
                                }
                              }

                              else
                              {

                                v346 = 0;
                              }

                              free(v346);
                              v45 = &off_1000EB000;
                            }

                            v347 = sub_100079590(v334, kUMUserSessionVolumeDeviceNodeKey);
                            if (!v347)
                            {
                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v354 = qword_1000EB308;
                              if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
                              {
                                value[0] = 0;
                                v355 = sub_1000011A8(1);
                                v354 = v354;
                                if (os_log_type_enabled(v354, OS_LOG_TYPE_DEFAULT))
                                {
                                  v356 = v355;
                                }

                                else
                                {
                                  v356 = v355 & 0xFFFFFFFE;
                                }

                                if (v356)
                                {
                                  *err = 0;
                                  LODWORD(v605) = 2;
                                  v603 = err;
                                  v6 = _os_log_send_and_compose_impl();

                                  if (v6)
                                  {
                                    sub_100002A8C(v6);
                                  }
                                }

                                else
                                {

                                  v6 = 0;
                                }

                                free(v6);
                              }

LABEL_907:

                              if ([v45[91] isVolumeMountedWithSession:v334 fsid:0])
                              {
                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v385 = qword_1000EB308;
                                if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v386 = sub_1000011A8(1);
                                  v6 = v385;
                                  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v387 = v386;
                                  }

                                  else
                                  {
                                    v387 = v386 & 0xFFFFFFFE;
                                  }

                                  if (v387)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
                                    v388 = _os_log_send_and_compose_impl();

                                    if (v388)
                                    {
                                      sub_100002A8C(v388);
                                    }
                                  }

                                  else
                                  {

                                    v388 = 0;
                                  }

                                  free(v388);
                                  v45 = &off_1000EB000;
                                }

                                v392 = [v45[91] unmountVolumeWithSession:v334 mountPath:@"/private/var/mobile" error:&v645];
                                v393 = qword_1000EB310 == -1;
                                if (!v392)
                                {
                                  goto LABEL_1431;
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v389 = qword_1000EB308;
                                if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v394 = sub_1000011A8(1);
                                  v389 = v389;
                                  if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v395 = v394;
                                  }

                                  else
                                  {
                                    v395 = v394 & 0xFFFFFFFE;
                                  }

                                  if (v395)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
LABEL_936:
                                    v6 = _os_log_send_and_compose_impl();

                                    if (v6)
                                    {
                                      sub_100002A8C(v6);
                                    }

                                    goto LABEL_939;
                                  }

                                  goto LABEL_938;
                                }
                              }

                              else
                              {
                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v389 = qword_1000EB308;
                                if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v390 = sub_1000011A8(1);
                                  v389 = v389;
                                  if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v391 = v390;
                                  }

                                  else
                                  {
                                    v391 = v390 & 0xFFFFFFFE;
                                  }

                                  if (v391)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
                                    goto LABEL_936;
                                  }

LABEL_938:

                                  v6 = 0;
LABEL_939:
                                  free(v6);
                                }
                              }

                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v396 = qword_1000EB308;
                              if (os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
                              {
                                value[0] = 0;
                                v397 = sub_1000011A8(1);
                                v6 = v396;
                                if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                                {
                                  v398 = v397;
                                }

                                else
                                {
                                  v398 = v397 & 0xFFFFFFFE;
                                }

                                if (v398)
                                {
                                  *err = 0;
                                  LODWORD(v605) = 2;
                                  v603 = err;
                                  v399 = _os_log_send_and_compose_impl();

                                  if (v399)
                                  {
                                    sub_100002A8C(v399);
                                  }
                                }

                                else
                                {

                                  v399 = 0;
                                }

                                free(v399);
                                v45 = &off_1000EB000;
                              }

                              if ([v45[91] deleteVolumeWithSession:v334 error:&v645])
                              {
                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v400 = qword_1000EB308;
                                if (os_log_type_enabled(v400, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v401 = sub_1000011A8(1);
                                  v402 = v400;
                                  if (os_log_type_enabled(v402, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v403 = v401;
                                  }

                                  else
                                  {
                                    v403 = v401 & 0xFFFFFFFE;
                                  }

                                  if (v403)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
                                    v404 = _os_log_send_and_compose_impl();

                                    if (v404)
                                    {
                                      sub_100002A8C(v404);
                                    }
                                  }

                                  else
                                  {

                                    v404 = 0;
                                  }

                                  free(v404);
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v405 = qword_1000EB308;
                                if (os_log_type_enabled(v405, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v406 = sub_1000011A8(1);
                                  v407 = v405;
                                  if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v408 = v406;
                                  }

                                  else
                                  {
                                    v408 = v406 & 0xFFFFFFFE;
                                  }

                                  if (v408)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
                                    v409 = _os_log_send_and_compose_impl();

                                    if (v409)
                                    {
                                      sub_100002A8C(v409);
                                    }
                                  }

                                  else
                                  {

                                    v409 = 0;
                                  }

                                  free(v409);
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v410 = qword_1000EB308;
                                if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
                                {
                                  *err = 0;
                                  v411 = sub_1000011A8(1);
                                  v412 = v410;
                                  if (os_log_type_enabled(v412, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v413 = v411;
                                  }

                                  else
                                  {
                                    v413 = v411 & 0xFFFFFFFE;
                                  }

                                  if (v413)
                                  {
                                    LODWORD(value[0]) = 138412290;
                                    *(value + 4) = v608;
                                    LODWORD(v605) = 12;
                                    v603 = value;
                                    v414 = _os_log_send_and_compose_impl();

                                    if (v414)
                                    {
                                      sub_100002A8C(v414);
                                    }
                                  }

                                  else
                                  {

                                    v414 = 0;
                                  }

                                  v334 = v615;
                                  free(v414);
                                }

                                v607 = v289;
                                if (sub_1000714B8(v608, v289, 0, &v645))
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v415 = qword_1000EB308;
                                  if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v416 = sub_1000011A8(1);
                                    v415 = v415;
                                    if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v417 = v416;
                                    }

                                    else
                                    {
                                      v417 = v416 & 0xFFFFFFFE;
                                    }

                                    if (v417)
                                    {
                                      *err = 0;
                                      LODWORD(v605) = 2;
                                      v603 = err;
                                      goto LABEL_1002;
                                    }

                                    goto LABEL_1004;
                                  }
                                }

                                else
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v415 = qword_1000EB308;
                                  if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v418 = sub_1000011A8(1);
                                    v415 = v415;
                                    if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v419 = v418;
                                    }

                                    else
                                    {
                                      v419 = v418 & 0xFFFFFFFE;
                                    }

                                    if (v419)
                                    {
                                      *err = 67109120;
                                      *&err[4] = v645;
                                      LODWORD(v605) = 8;
                                      v603 = err;
LABEL_1002:
                                      v420 = _os_log_send_and_compose_impl();

                                      if (v420)
                                      {
                                        sub_100002A8C(v420);
                                      }

                                      goto LABEL_1005;
                                    }

LABEL_1004:

                                    v420 = 0;
LABEL_1005:
                                    free(v420);
                                  }
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v421 = qword_1000EB308;
                                if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v422 = sub_1000011A8(1);
                                  v423 = v421;
                                  if (os_log_type_enabled(v423, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v424 = v422;
                                  }

                                  else
                                  {
                                    v424 = v422 & 0xFFFFFFFE;
                                  }

                                  if (v424)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
                                    v425 = _os_log_send_and_compose_impl();

                                    if (v425)
                                    {
                                      sub_100002A8C(v425);
                                    }
                                  }

                                  else
                                  {

                                    v425 = 0;
                                  }

                                  free(v425);
                                }

                                v6 = sub_100089A80(qword_1000EB608);
                                v617 = 0;
                                v426 = [v6 unloadIdentityFromSession:501 error:&v617];
                                v427 = v617;

                                if (v426)
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v428 = qword_1000EB308;
                                  if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v429 = sub_1000011A8(1);
                                    v428 = v428;
                                    if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v430 = v429;
                                    }

                                    else
                                    {
                                      v430 = v429 & 0xFFFFFFFE;
                                    }

                                    if (v430)
                                    {
                                      *err = 0;
                                      LODWORD(v605) = 2;
                                      v603 = err;
                                      goto LABEL_1033;
                                    }

                                    goto LABEL_1035;
                                  }
                                }

                                else
                                {
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v428 = qword_1000EB308;
                                  if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *err = 0;
                                    v431 = sub_1000011A8(1);
                                    v428 = v428;
                                    if (!os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v431 &= ~1u;
                                    }

                                    if (v431)
                                    {
                                      v432 = [v427 code];
                                      LODWORD(value[0]) = 134217984;
                                      *(value + 4) = v432;
                                      LODWORD(v605) = 12;
                                      v603 = value;
LABEL_1033:
                                      v6 = _os_log_send_and_compose_impl();

                                      if (v6)
                                      {
                                        sub_100002A8C(v6);
                                      }

                                      goto LABEL_1036;
                                    }

LABEL_1035:

                                    v6 = 0;
LABEL_1036:
                                    free(v6);
                                  }
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v433 = qword_1000EB308;
                                if (os_log_type_enabled(v433, OS_LOG_TYPE_DEFAULT))
                                {
                                  value[0] = 0;
                                  v434 = sub_1000011A8(1);
                                  v6 = v433;
                                  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v435 = v434;
                                  }

                                  else
                                  {
                                    v435 = v434 & 0xFFFFFFFE;
                                  }

                                  if (v435)
                                  {
                                    *err = 0;
                                    LODWORD(v605) = 2;
                                    v603 = err;
                                    v436 = _os_log_send_and_compose_impl();

                                    if (v436)
                                    {
                                      sub_100002A8C(v436);
                                    }
                                  }

                                  else
                                  {

                                    v436 = 0;
                                  }

                                  free(v436);
                                }

                                v437 = sub_100079590(v334, kUMUserSessionUUIDKey);
                                if (v437)
                                {
                                  v438 = v437;
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v439 = qword_1000EB308;
                                  if (os_log_type_enabled(v439, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *err = 0;
                                    v440 = sub_1000011A8(1);
                                    v441 = v439;
                                    if (os_log_type_enabled(v441, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v442 = v440;
                                    }

                                    else
                                    {
                                      v442 = v440 & 0xFFFFFFFE;
                                    }

                                    if (v442)
                                    {
                                      LODWORD(value[0]) = 138412290;
                                      *(value + 4) = v438;
                                      LODWORD(v605) = 12;
                                      v603 = value;
                                      v443 = _os_log_send_and_compose_impl();

                                      if (v443)
                                      {
                                        sub_100002A8C(v443);
                                      }
                                    }

                                    else
                                    {

                                      v443 = 0;
                                    }

                                    free(v443);
                                  }

                                  v444 = sub_100016954(NSUUID, v438);
                                  v445 = sub_100089A80(qword_1000EB608);
                                  v616 = 0;
                                  v446 = [v445 deleteIdentity:v444 error:&v616];
                                  v299 = v616;

                                  v6 = &off_1000EB000;
                                  if (v446)
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v447 = qword_1000EB308;
                                    if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
                                    {
                                      value[0] = 0;
                                      v448 = sub_1000011A8(1);
                                      v447 = v447;
                                      if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v449 = v448;
                                      }

                                      else
                                      {
                                        v449 = v448 & 0xFFFFFFFE;
                                      }

                                      if (v449)
                                      {
                                        *err = 0;
                                        LODWORD(v605) = 2;
                                        v603 = err;
                                        goto LABEL_1087;
                                      }

                                      goto LABEL_1089;
                                    }
                                  }

                                  else
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v450 = qword_1000EB308;
                                    if (os_log_type_enabled(v450, OS_LOG_TYPE_DEFAULT))
                                    {
                                      *err = 0;
                                      v451 = sub_1000011A8(1);
                                      v452 = v450;
                                      if (!os_log_type_enabled(v452, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v451 &= ~1u;
                                      }

                                      if (v451)
                                      {
                                        v453 = [v299 code];
                                        LODWORD(value[0]) = 134217984;
                                        *(value + 4) = v453;
                                        LODWORD(v605) = 12;
                                        v603 = value;
                                        v454 = _os_log_send_and_compose_impl();

                                        if (v454)
                                        {
                                          sub_100002A8C(v454);
                                        }
                                      }

                                      else
                                      {

                                        v454 = 0;
                                      }

                                      v7 = &off_1000EB000;
                                      free(v454);
                                      v6 = &off_1000EB000;
                                    }

                                    sleep(2u);
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v447 = qword_1000EB308;
                                    if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
                                    {
                                      value[0] = 0;
                                      v455 = sub_1000011A8(1);
                                      v447 = v447;
                                      if (os_log_type_enabled(v447, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v456 = v455;
                                      }

                                      else
                                      {
                                        v456 = v455 & 0xFFFFFFFE;
                                      }

                                      if (v456)
                                      {
                                        *err = 0;
                                        LODWORD(v605) = 2;
                                        v603 = err;
LABEL_1087:
                                        v457 = _os_log_send_and_compose_impl();

                                        if (v457)
                                        {
                                          sub_100002A8C(v457);
                                        }

                                        goto LABEL_1090;
                                      }

LABEL_1089:

                                      v457 = 0;
LABEL_1090:
                                      free(v457);
                                      v6 = &off_1000EB000;
                                    }
                                  }

                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v458 = qword_1000EB308;
                                  if (os_log_type_enabled(v458, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v459 = sub_1000011A8(1);
                                    v460 = v458;
                                    if (os_log_type_enabled(v460, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v461 = v459;
                                    }

                                    else
                                    {
                                      v461 = v459 & 0xFFFFFFFE;
                                    }

                                    if (v461)
                                    {
                                      *err = 0;
                                      LODWORD(v605) = 2;
                                      v603 = err;
                                      v462 = _os_log_send_and_compose_impl();

                                      if (v462)
                                      {
                                        sub_100002A8C(v462);
                                      }
                                    }

                                    else
                                    {

                                      v462 = 0;
                                    }

                                    v6 = &off_1000EB000;
                                    free(v462);
                                  }

                                  CFRelease(v615);
                                  sub_10002E024(501, 0);
                                  sub_100018C80();
                                  if (qword_1000EB310 != -1)
                                  {
                                    sub_100089CEC();
                                  }

                                  v463 = qword_1000EB308;
                                  if (os_log_type_enabled(v463, OS_LOG_TYPE_DEFAULT))
                                  {
                                    value[0] = 0;
                                    v464 = sub_1000011A8(1);
                                    v465 = v463;
                                    if (os_log_type_enabled(v465, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v466 = v464;
                                    }

                                    else
                                    {
                                      v466 = v464 & 0xFFFFFFFE;
                                    }

                                    if (v466)
                                    {
                                      *err = 0;
                                      LODWORD(v605) = 2;
                                      v603 = err;
                                      v467 = _os_log_send_and_compose_impl();

                                      if (v467)
                                      {
                                        sub_100002A8C(v467);
                                      }
                                    }

                                    else
                                    {

                                      v467 = 0;
                                    }

                                    v6 = &off_1000EB000;
                                    free(v467);
                                  }

                                  v44 = &off_1000EB000;
                                  if (sub_10007324C("/var/Users", &v645))
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v468 = qword_1000EB308;
                                    if (!os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1145;
                                    }

                                    value[0] = 0;
                                    v469 = sub_1000011A8(1);
                                    v468 = v468;
                                    if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v470 = v469;
                                    }

                                    else
                                    {
                                      v470 = v469 & 0xFFFFFFFE;
                                    }

                                    if (v470)
                                    {
                                      *err = 0;
                                      LODWORD(v605) = 2;
                                      v603 = err;
                                      goto LABEL_1141;
                                    }
                                  }

                                  else
                                  {
                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v471 = qword_1000EB308;
                                    if (os_log_type_enabled(v471, OS_LOG_TYPE_DEFAULT))
                                    {
                                      value[0] = 0;
                                      v472 = sub_1000011A8(1);
                                      v473 = v471;
                                      if (os_log_type_enabled(v473, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v474 = v472;
                                      }

                                      else
                                      {
                                        v474 = v472 & 0xFFFFFFFE;
                                      }

                                      if (v474)
                                      {
                                        *err = 0;
                                        LODWORD(v605) = 2;
                                        v603 = err;
                                        v475 = _os_log_send_and_compose_impl();

                                        if (v475)
                                        {
                                          sub_100002A8C(v475);
                                        }
                                      }

                                      else
                                      {

                                        v475 = 0;
                                      }

                                      v6 = &off_1000EB000;
                                      free(v475);
                                      v44 = &off_1000EB000;
                                    }

                                    if (qword_1000EB310 != -1)
                                    {
                                      sub_100089CEC();
                                    }

                                    v468 = qword_1000EB308;
                                    if (!os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                                    {
                                      goto LABEL_1145;
                                    }

                                    value[0] = 0;
                                    v476 = sub_1000011A8(1);
                                    v468 = v468;
                                    if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v477 = v476;
                                    }

                                    else
                                    {
                                      v477 = v476 & 0xFFFFFFFE;
                                    }

                                    if (v477)
                                    {
                                      *err = 0;
                                      LODWORD(v605) = 2;
                                      v603 = err;
LABEL_1141:
                                      v478 = _os_log_send_and_compose_impl();

                                      if (v478)
                                      {
                                        sub_100002A8C(v478);
                                      }

                                      goto LABEL_1144;
                                    }
                                  }

                                  v478 = 0;
LABEL_1144:
                                  free(v478);
                                  v6 = &off_1000EB000;
LABEL_1145:

                                  if (v607)
                                  {
                                    CFRelease(v607);
                                  }

                                  CFDictionarySetValue(cf, kUMUserSessionNeedsCryptoSetupKey, kCFBooleanFalse);
                                  v300 = cf;
                                  v45 = &off_1000EB000;
                                  goto LABEL_1148;
                                }

                                if (qword_1000EB310 != -1)
                                {
                                  sub_100089CEC();
                                }

                                v549 = qword_1000EB308;
                                if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                                {
LABEL_1470:

                                  sleep(2u);
                                  sub_100018028("UserManagement early boot task Unable to find 501 uuid");
                                  goto LABEL_1471;
                                }

                                value[0] = 0;
                                v570 = sub_1000011A8(1);
                                v0 = v549;
                                if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                                {
                                  v571 = v570;
                                }

                                else
                                {
                                  v571 = v570 & 0xFFFFFFFE;
                                }

                                if (!v571)
                                {

                                  v572 = 0;
LABEL_1469:
                                  free(v572);
                                  goto LABEL_1470;
                                }

LABEL_1467:
                                *err = 0;
                                v600 = _os_log_send_and_compose_impl();

                                v572 = 0;
                                if (v600)
                                {
                                  sub_100002A8C(v600);
                                  v572 = v600;
                                }

                                goto LABEL_1469;
                              }

                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v549 = qword_1000EB308;
                              if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                              {
LABEL_1466:

                                sleep(2u);
                                sub_100018028("Failed deletion of 501 User Volume error:%d", v645);
                                goto LABEL_1467;
                              }

                              value[0] = 0;
                              v567 = sub_1000011A8(1);
                              v0 = v549;
                              if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                              {
                                v568 = v567;
                              }

                              else
                              {
                                v568 = v567 & 0xFFFFFFFE;
                              }

                              if (!v568)
                              {

                                v569 = 0;
LABEL_1465:
                                free(v569);
                                goto LABEL_1466;
                              }

LABEL_1463:
                              *err = 67109120;
                              *&err[4] = v645;
                              v599 = _os_log_send_and_compose_impl();

                              v569 = 0;
                              if (v599)
                              {
                                sub_100002A8C(v599);
                                v569 = v599;
                              }

                              goto LABEL_1465;
                            }

                            v348 = v347;
                            if (qword_1000EB310 != -1)
                            {
                              sub_100089CEC();
                            }

                            v349 = qword_1000EB308;
                            if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
                            {
                              *err = 0;
                              v350 = sub_1000011A8(1);
                              v351 = v349;
                              if (os_log_type_enabled(v351, OS_LOG_TYPE_DEFAULT))
                              {
                                v352 = v350;
                              }

                              else
                              {
                                v352 = v350 & 0xFFFFFFFE;
                              }

                              if (v352)
                              {
                                LODWORD(value[0]) = 138412290;
                                *(value + 4) = v348;
                                LODWORD(v605) = 12;
                                v603 = value;
                                v353 = _os_log_send_and_compose_impl();

                                if (v353)
                                {
                                  sub_100002A8C(v353);
                                }
                              }

                              else
                              {

                                v353 = 0;
                              }

                              v7 = &off_1000EB000;
                              free(v353);
                            }

                            v6 = sub_100089A80(qword_1000EB608);
                            v618 = 0;
                            v357 = [v6 unmapVolume:v348 error:&v618];
                            v354 = v618;

                            if (v357)
                            {
                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v45 = &off_1000EB000;
                              v358 = qword_1000EB308;
                              if (!os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_847;
                              }

                              value[0] = 0;
                              v359 = sub_1000011A8(1);
                              v358 = v358;
                              if (os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
                              {
                                v360 = v359;
                              }

                              else
                              {
                                v360 = v359 & 0xFFFFFFFE;
                              }

                              if (v360)
                              {
                                *err = 0;
                                LODWORD(v605) = 2;
                                v603 = err;
                                goto LABEL_843;
                              }
                            }

                            else
                            {
                              if (qword_1000EB310 != -1)
                              {
                                sub_100089CEC();
                              }

                              v45 = &off_1000EB000;
                              v358 = qword_1000EB308;
                              if (!os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
                              {
                                goto LABEL_847;
                              }

                              *err = 0;
                              v361 = sub_1000011A8(1);
                              v358 = v358;
                              if (!os_log_type_enabled(v358, OS_LOG_TYPE_DEFAULT))
                              {
                                v361 &= ~1u;
                              }

                              if (v361)
                              {
                                v362 = [v354 code];
                                LODWORD(value[0]) = 134217984;
                                *(value + 4) = v362;
                                LODWORD(v605) = 12;
                                v603 = value;
LABEL_843:
                                v6 = _os_log_send_and_compose_impl();

                                if (v6)
                                {
                                  sub_100002A8C(v6);
                                }

                                goto LABEL_846;
                              }
                            }

                            v6 = 0;
LABEL_846:
                            free(v6);
LABEL_847:

                            v334 = v615;
                            goto LABEL_907;
                          }

                          if (qword_1000EB310 != -1)
                          {
                            sub_100089CEC();
                          }

                          v549 = qword_1000EB308;
                          if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                          {
LABEL_1462:

                            sleep(2u);
                            v598 = CFErrorGetCode(uuid[0]);
                            sub_100018028("FAILED to transfer Primary from 501 -> 502:with error:%ld", v598);
                            goto LABEL_1463;
                          }

                          value[0] = 0;
                          v564 = sub_1000011A8(1);
                          v0 = v549;
                          if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                          {
                            v565 = v564;
                          }

                          else
                          {
                            v565 = v564 & 0xFFFFFFFE;
                          }

                          if (!v565)
                          {

                            v566 = 0;
LABEL_1461:
                            free(v566);
                            goto LABEL_1462;
                          }

LABEL_1459:
                          *err = 0;
                          v597 = _os_log_send_and_compose_impl();

                          v566 = 0;
                          if (v597)
                          {
                            sub_100002A8C(v597);
                            v566 = v597;
                          }

                          goto LABEL_1461;
                        }

                        if (qword_1000EB310 != -1)
                        {
                          sub_100089CEC();
                        }

                        v549 = v7[97];
                        if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_1458:

                          sleep(2u);
                          v596 = CFErrorGetCode(uuid[0]);
                          sub_100018028("FAILED to ensure 501 user Identity is loaded with error:%ld", v596);
                          goto LABEL_1459;
                        }

                        *err = 0;
                        v562 = sub_1000011A8(1);
                        v0 = v549;
                        if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                        {
                          v562 &= ~1u;
                        }

                        if (!v562)
                        {

                          v563 = 0;
LABEL_1457:
                          free(v563);
                          goto LABEL_1458;
                        }

LABEL_1455:
                        v594 = CFErrorGetCode(uuid[0]);
                        LODWORD(value[0]) = 134217984;
                        *(value + 4) = v594;
                        v595 = _os_log_send_and_compose_impl();

                        v563 = 0;
                        if (v595)
                        {
                          sub_100002A8C(v595);
                          v563 = v595;
                        }

                        goto LABEL_1457;
                      }

                      if (qword_1000EB310 != -1)
                      {
                        sub_100089CEC();
                      }

                      v549 = v7[97];
                      if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                      {
LABEL_1454:

                        sleep(2u);
                        sub_100018028("FAILED to build 501 NSUUID to migrate to 502");
                        goto LABEL_1455;
                      }

                      value[0] = 0;
                      v559 = sub_1000011A8(1);
                      v0 = v549;
                      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                      {
                        v560 = v559;
                      }

                      else
                      {
                        v560 = v559 & 0xFFFFFFFE;
                      }

                      if (!v560)
                      {

                        v561 = 0;
LABEL_1453:
                        free(v561);
                        goto LABEL_1454;
                      }

LABEL_1451:
                      *err = 0;
                      v593 = _os_log_send_and_compose_impl();

                      v561 = 0;
                      if (v593)
                      {
                        sub_100002A8C(v593);
                        v561 = v593;
                      }

                      goto LABEL_1453;
                    }

                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v549 = v7[97];
                    if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                    {
LABEL_1450:

                      sleep(2u);
                      sub_100018028("FAILED to construct CF501 uuid to migrate to 502");
                      goto LABEL_1451;
                    }

                    value[0] = 0;
                    v556 = sub_1000011A8(1);
                    v0 = v549;
                    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                    {
                      v557 = v556;
                    }

                    else
                    {
                      v557 = v556 & 0xFFFFFFFE;
                    }

                    if (!v557)
                    {

                      v558 = 0;
LABEL_1449:
                      free(v558);
                      goto LABEL_1450;
                    }

LABEL_1447:
                    *err = 0;
                    v592 = _os_log_send_and_compose_impl();

                    v558 = 0;
                    if (v592)
                    {
                      sub_100002A8C(v592);
                      v558 = v592;
                    }

                    goto LABEL_1449;
                  }

                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v549 = v7[97];
                  if (!os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_1446:

                    sleep(2u);
                    sub_100018028("FAILED to locate 501 uuid string to migrate OTI to 502");
                    goto LABEL_1447;
                  }

                  value[0] = 0;
                  v553 = sub_1000011A8(1);
                  v0 = v549;
                  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                  {
                    v554 = v553;
                  }

                  else
                  {
                    v554 = v553 & 0xFFFFFFFE;
                  }

                  if (!v554)
                  {

                    v555 = 0;
LABEL_1445:
                    free(v555);
                    goto LABEL_1446;
                  }
                }

                else
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v549 = v7[97];
                  if (os_log_type_enabled(v549, OS_LOG_TYPE_DEFAULT))
                  {
                    value[0] = 0;
                    v550 = sub_1000011A8(1);
                    v0 = v549;
                    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
                    {
                      v551 = v550;
                    }

                    else
                    {
                      v551 = v550 & 0xFFFFFFFE;
                    }

                    if (v551)
                    {
                      *err = 0;
                      v590 = _os_log_send_and_compose_impl();

                      v552 = 0;
                      if (v590)
                      {
                        sub_100002A8C(v590);
                        v552 = v590;
                      }
                    }

                    else
                    {

                      v552 = 0;
                    }

                    free(v552);
                  }

                  sleep(2u);
                  sub_100018028("UserManagement early boot task Unable to find 501 session");
                }

                *err = 0;
                v591 = _os_log_send_and_compose_impl();

                v555 = 0;
                if (v591)
                {
                  sub_100002A8C(v591);
                  v555 = v591;
                }

                goto LABEL_1445;
              }

              v299 = 0;
            }

            else
            {
              v299 = 0;
              v6 = &off_1000EB000;
              v45 = &off_1000EB000;
            }

            v300 = cf;
LABEL_1148:
            CFRelease(v300);
            CFRelease(v611);
            if (uuid[0])
            {
              CFRelease(uuid[0]);
              uuid[0] = 0;
            }

            goto LABEL_1150;
          }
        }

LABEL_1227:
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v501 = v7[97];
        if (!os_log_type_enabled(v501, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_1274;
        }

        value[0] = 0;
        v504 = sub_1000011A8(1);
        v0 = v501;
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          v505 = v504;
        }

        else
        {
          v505 = v504 & 0xFFFFFFFE;
        }

        if (!v505)
        {

          v506 = 0;
LABEL_1273:
          free(v506);
LABEL_1274:

          sleep(2u);
          sub_100018028("UserManagement early boot task unable to find uuid or create CFUUID of Update install user");
          goto LABEL_1275;
        }

LABEL_1271:
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v521 = _os_log_send_and_compose_impl();

        v506 = 0;
        if (v521)
        {
          sub_100002A8C(v521);
          v506 = v521;
        }

        goto LABEL_1273;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v0 = v7[97];
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
LABEL_563:

        goto LABEL_564;
      }

      value[0] = 0;
      v224 = sub_1000011A8(1);
      v0 = v0;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v225 = v224;
      }

      else
      {
        v225 = v224 & 0xFFFFFFFE;
      }

      if (v225)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
LABEL_559:
        v226 = _os_log_send_and_compose_impl();

        if (v226)
        {
          sub_100002A8C(v226);
        }

        goto LABEL_562;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v0 = v7[97];
      if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_563;
      }

      value[0] = 0;
      v222 = sub_1000011A8(1);
      v0 = v0;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v223 = v222;
      }

      else
      {
        v223 = v222 & 0xFFFFFFFE;
      }

      if (v223)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        goto LABEL_559;
      }
    }

    v226 = 0;
LABEL_562:
    free(v226);
    v44 = &off_1000EB000;
    goto LABEL_563;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v0 = v7[97];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v219 = sub_1000011A8(1);
    v0 = v0;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v220 = v219;
    }

    else
    {
      v220 = v219 & 0xFFFFFFFE;
    }

    if (v220)
    {
      *err = 0;
      LODWORD(v605) = 2;
      v603 = err;
      v221 = _os_log_send_and_compose_impl();

      if (v221)
      {
        sub_100002A8C(v221);
      }
    }

    else
    {

      v221 = 0;
    }

    free(v221);
    v44 = &off_1000EB000;
  }

LABEL_1156:

  sub_10003FC14(v133, -1, (v123 | byte_1000EB603) & 1, 0);
  if ([v45[91] splitUserVolumeEnabled] && sub_100079BA8() == 100)
  {
    if (v6[98].isa != -1)
    {
      sub_100089CEC();
    }

    v480 = v7[97];
    if (os_log_type_enabled(v480, OS_LOG_TYPE_DEFAULT))
    {
      value[0] = 0;
      v481 = sub_1000011A8(1);
      v482 = v480;
      if (os_log_type_enabled(v482, OS_LOG_TYPE_DEFAULT))
      {
        v483 = v481;
      }

      else
      {
        v483 = v481 & 0xFFFFFFFE;
      }

      if (v483)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        v484 = _os_log_send_and_compose_impl();

        if (v484)
        {
          sub_100002A8C(v484);
        }
      }

      else
      {

        v484 = 0;
      }

      free(v484);
      v44 = &off_1000EB000;
    }

    v485 = sub_1000013A0(qword_1000EB608);
    v486 = [v485 removeFileAtPath:@"/private/var/mobile/Library/Preferences/com.apple.migration.plist" error:0];

    isa = v6[98].isa;
    if (v486)
    {
      if (isa != -1)
      {
        sub_100089CEC();
      }

      v488 = v7[97];
      if (!os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1190;
      }

      value[0] = 0;
      v489 = sub_1000011A8(1);
      v488 = v488;
      if (os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
      {
        v490 = v489;
      }

      else
      {
        v490 = v489 & 0xFFFFFFFE;
      }

      if (v490)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
        goto LABEL_1186;
      }
    }

    else
    {
      if (isa != -1)
      {
        sub_100089CEC();
      }

      v488 = v7[97];
      if (!os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_1190;
      }

      value[0] = 0;
      v491 = sub_1000011A8(1);
      v488 = v488;
      if (os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
      {
        v492 = v491;
      }

      else
      {
        v492 = v491 & 0xFFFFFFFE;
      }

      if (v492)
      {
        *err = 0;
        LODWORD(v605) = 2;
        v603 = err;
LABEL_1186:
        v493 = _os_log_send_and_compose_impl();

        if (v493)
        {
          sub_100002A8C(v493);
        }

        goto LABEL_1189;
      }
    }

    v493 = 0;
LABEL_1189:
    free(v493);
LABEL_1190:
  }

  if (![v45[91] splitUserVolumeEnabled] || !(v123 | v132))
  {
    goto LABEL_1206;
  }

  LODWORD(uuid[0]) = 0;
  v494 = sub_10007324C("/var/mobile/", uuid);
  v495 = v6[98].isa;
  if (!v494)
  {
    if (v495 != -1)
    {
      sub_100089CEC();
    }

    v507 = v7[97];
    if (!os_log_type_enabled(v507, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_1296;
    }

    value[0] = 0;
    v511 = sub_1000011A8(1);
    v0 = v507;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v512 = v511;
    }

    else
    {
      v512 = v511 & 0xFFFFFFFE;
    }

    if (!v512)
    {

      v513 = 0;
LABEL_1295:
      free(v513);
LABEL_1296:

      sleep(2u);
      sub_100018028("UserManagement early boot task failed to Set LAST BOOTED USER after Erase Install with error:%d", LODWORD(uuid[0]));
      goto LABEL_1297;
    }

LABEL_1293:
    *err = 67109120;
    *&err[4] = uuid[0];
    v527 = _os_log_send_and_compose_impl();

    v513 = 0;
    if (v527)
    {
      sub_100002A8C(v527);
      v513 = v527;
    }

    goto LABEL_1295;
  }

  if (v495 != -1)
  {
    sub_100089CEC();
  }

  v496 = v7[97];
  if (os_log_type_enabled(v496, OS_LOG_TYPE_DEFAULT))
  {
    value[0] = 0;
    v497 = sub_1000011A8(1);
    v498 = v496;
    if (os_log_type_enabled(v498, OS_LOG_TYPE_DEFAULT))
    {
      v499 = v497;
    }

    else
    {
      v499 = v497 & 0xFFFFFFFE;
    }

    if (v499)
    {
      *err = 0;
      v500 = _os_log_send_and_compose_impl();

      if (v500)
      {
        sub_100002A8C(v500);
      }
    }

    else
    {

      v500 = 0;
    }

    free(v500);
    v44 = &off_1000EB000;
  }

LABEL_1206:
  if (*(v44 + 364) == 1 || (sub_10001BB44(), *(v44 + 364) == 1))
  {
    sub_10008B1C0(qword_1000EB2E0);
  }
}

uint64_t sub_10003E524(int a1)
{
  sub_10004C208(a1);
  if (v1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        v5 = _os_log_send_and_compose_impl();
        v6 = v5;
        if (v5)
        {
          sub_100002A8C(v5);
        }
      }

      else
      {
        v6 = 0;
      }

      free(v6);
    }

    v11 = 1;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v2 = qword_1000EB308;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
      }

      else
      {
        v8 = v7 & 0xFFFFFFFE;
      }

      if (v8)
      {
        v9 = _os_log_send_and_compose_impl();
        v10 = v9;
        if (v9)
        {
          sub_100002A8C(v9);
        }
      }

      else
      {
        v10 = 0;
      }

      free(v10);
    }

    v11 = 0;
  }

  return v11;
}

void sub_10003E710()
{
  if (qword_1000EB5A0)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v0 = qword_1000EB308;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = sub_1000011A8(1);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v2 = v1;
      }

      else
      {
        v2 = v1 & 0xFFFFFFFE;
      }

      if (v2)
      {
        v3 = _os_log_send_and_compose_impl();
        v4 = v3;
        if (v3)
        {
          sub_100002A8C(v3);
        }
      }

      else
      {
        v4 = 0;
      }

      free(v4);
    }

    if (CFArrayGetCount(qword_1000EB5A0) >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v5);
        if (ValueAtIndex)
        {
          v7 = ValueAtIndex;
          v8 = CFGetTypeID(ValueAtIndex);
          if (v8 == CFDictionaryGetTypeID())
          {
            CFDictionarySetValue(v7, kUMUserSessionForegroundKey, kCFBooleanFalse);
          }
        }

        ++v5;
      }

      while (CFArrayGetCount(qword_1000EB5A0) > v5);
    }
  }
}

uint64_t sub_10003E884(_DWORD *a1)
{
  if (a1)
  {
    *a1 = 0;
  }

  v4 = &off_1000EB000;
  v5 = sub_1000926B8(qword_1000EB2E8, 0);
  if (v5)
  {
    v6 = v5;
    v7 = [v5 version];
    if (v7 >= +[UMDPersonaManifest currentVersion])
    {
      v15 = v6;
      v8 = [v6 version];
      if (v8 <= +[UMDPersonaManifest currentVersion])
      {
        goto LABEL_72;
      }

      sub_100018028("usermanagerd: persona manifest version %u is from the future! Downgrading is not supported.", [v6 version]);
    }

    else
    {
      v1 = &off_1000EB000;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v2 = &off_1000EB000;
      v8 = qword_1000EB308;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_25:

        v16 = v6;
        v17 = +[UMDPersonaManifest manifest];
        if ([v16 generation])
        {
          v18 = [v16 generation];
        }

        else
        {
          v18 = 1;
        }

        [v17 setGeneration:{v18, v134, v138}];
        v19 = [v16 users];
        v20 = [v19 count];

        if (v20 == 1)
        {
          v21 = [v16 users];
          v22 = [v21 anyObject];

          v23 = objc_alloc_init(UMDPersonaManifestUser);
          v24 = sub_100089624(qword_1000EB2E0);
          v25 = [v24 count];

          if (v25 == 1)
          {
            v26 = sub_100089624(qword_1000EB2E0);
            v27 = [v26 objectAtIndexedSubscript:0];
            v28 = sub_1000990F0(v27, kUMUserSessionUUIDKey);

            if (v28)
            {
              sub_1000897B8(v23, v28);
              v29 = sub_100088F2C(v22);
              sub_100089CC4(v23, v29);

              v30 = [NSSet setWithObject:v23];
              [v17 setUsers:v30];

              v31 = v17;
              v4 = &off_1000EB000;
            }

            else
            {
              if (qword_1000EB330 != -1)
              {
                sub_100089D40();
              }

              v4 = &off_1000EB000;
              v41 = qword_1000EB328;
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v167[0] = 0;
                v42 = sub_1000011A8(0);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  v43 = v42;
                }

                else
                {
                  v43 = v42 & 0xFFFFFFFE;
                }

                if (v43)
                {
                  v44 = qword_1000EB2E0;
                  v45 = v41;
                  v154 = sub_100089624(v44);
                  v152 = [v154 objectAtIndexedSubscript:0];
                  v46 = [v152 objectForKeyedSubscript:kUMUserSessionUUIDKey];
                  *v168 = 138543362;
                  *&v168[4] = v46;
                  LODWORD(v138) = 12;
                  v134 = v168;
                  v47 = v45;
                  v48 = _os_log_send_and_compose_impl();

                  if (v48)
                  {
                    sub_100002A8C(v48);
                  }
                }

                else
                {
                  v48 = 0;
                }

                v4 = &off_1000EB000;
                free(v48);
              }

              v28 = 0;
              v31 = 0;
            }

            v2 = &off_1000EB000;
          }

          else
          {
            if (qword_1000EB330 != -1)
            {
              sub_100089D40();
            }

            v2 = &off_1000EB000;
            v28 = qword_1000EB328;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *v168 = 0;
              v37 = sub_1000011A8(0);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v38 = v37;
              }

              else
              {
                v38 = v37 & 0xFFFFFFFE;
              }

              if (v38)
              {
                LOWORD(v167[0]) = 0;
                LODWORD(v138) = 2;
                v134 = v167;
                v39 = _os_log_send_and_compose_impl();
                v40 = v39;
                if (v39)
                {
                  sub_100002A8C(v39);
                }
              }

              else
              {
                v40 = 0;
              }

              free(v40);
            }

            v31 = 0;
            v4 = &off_1000EB000;
          }
        }

        else
        {
          if (v1[98] != -1)
          {
            sub_100089CEC();
          }

          v22 = v2[97];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v167[0] = 0;
            v32 = sub_1000011A8(1);
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v32 &= ~1u;
            }

            if (v32)
            {
              v33 = v22;
              v34 = [v16 users];
              v35 = [v34 count];
              *v168 = 134217984;
              *&v168[4] = v35;
              LODWORD(v138) = 12;
              v134 = v168;
              v36 = _os_log_send_and_compose_impl();

              if (v36)
              {
                sub_100002A8C(v36);
              }

              v4 = &off_1000EB000;
            }

            else
            {
              v36 = 0;
            }

            free(v36);
          }

          v31 = 0;
        }

        if (v31)
        {
          v15 = v31;
          if (sub_100092EA8(v4[93], v31, 0))
          {
LABEL_72:
            v49 = v15;
            if (a1)
            {
              *a1 = 0;
            }

            v142 = v49;
            v50 = [v49 version];
            if (v50 != +[UMDPersonaManifest currentVersion])
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v59 = qword_1000EB308;
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                v167[0] = 0;
                v60 = sub_1000011A8(1);
                if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  v60 &= ~1u;
                }

                if (v60)
                {
                  v61 = v59;
                  v62 = [v142 version];
                  v63 = +[UMDPersonaManifest currentVersion];
                  *v168 = 67109376;
                  *&v168[4] = v62;
                  *&v168[8] = 1024;
                  *&v168[10] = v63;
                  v64 = _os_log_send_and_compose_impl();

                  if (v64)
                  {
                    sub_100002A8C(v64);
                  }
                }

                else
                {
                  v64 = 0;
                }

                free(v64);
              }

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v75 = qword_1000EB308;
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *v168 = 0;
                v76 = sub_1000011A8(1);
                if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
                {
                  v77 = v76;
                }

                else
                {
                  v77 = v76 & 0xFFFFFFFE;
                }

                if (v77)
                {
                  LOWORD(v167[0]) = 0;
                  v78 = _os_log_send_and_compose_impl();
                  v79 = v78;
                  if (v78)
                  {
                    sub_100002A8C(v78);
                  }
                }

                else
                {
                  v79 = 0;
                }

                free(v79);
              }

              v74 = 0;
              if (a1)
              {
                *a1 = 2;
              }

              goto LABEL_214;
            }

            v51 = sub_1000013A0(v4[93]);
            v52 = [v51 userPersonas];
            v53 = [v52 count];

            if (v53)
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v54 = qword_1000EB308;
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
              {
                *v168 = 0;
                v55 = sub_1000011A8(1);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  v56 = v55;
                }

                else
                {
                  v56 = v55 & 0xFFFFFFFE;
                }

                if (v56)
                {
                  LOWORD(v167[0]) = 0;
                  LODWORD(v139) = 2;
                  v135 = v167;
                  v57 = _os_log_send_and_compose_impl();
                  v58 = v57;
                  if (v57)
                  {
                    sub_100002A8C(v57);
                  }
                }

                else
                {
                  v58 = 0;
                }

                free(v58);
              }
            }

            if ([v142 generation])
            {
              v80 = [v142 generation];
              v81 = sub_100089790(v4[93]);
              sub_1000553A0(v81, v80);

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v82 = qword_1000EB308;
              if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_154;
              }

              v167[0] = 0;
              v83 = sub_1000011A8(1);
              if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                v83 &= ~1u;
              }

              if (v83)
              {
                v84 = v4[93];
                v85 = v82;
                v86 = sub_100089790(v84);
                v87 = sub_100055380(v86);
                *v168 = 134217984;
                *&v168[4] = v87;
                LODWORD(v140) = 12;
                v136 = v168;
                v88 = _os_log_send_and_compose_impl();

                if (!v88)
                {
                  goto LABEL_153;
                }

                goto LABEL_151;
              }
            }

            else
            {
              v89 = sub_100089790(v4[93]);
              sub_1000553A0(v89, 1);

              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v82 = qword_1000EB308;
              if (!os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_154;
              }

              *v168 = 0;
              v90 = sub_1000011A8(1);
              if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
              {
                v91 = v90;
              }

              else
              {
                v91 = v90 & 0xFFFFFFFE;
              }

              if (v91)
              {
                LOWORD(v167[0]) = 0;
                LODWORD(v140) = 2;
                v136 = v167;
                v88 = _os_log_send_and_compose_impl();
                if (!v88)
                {
LABEL_153:
                  free(v88);
LABEL_154:

                  v92 = &MGCopyAnswer_ptr;
                  v93 = +[NSMutableDictionary dictionary];
                  v94 = v142;
                  v95 = [v142 users];
                  v96 = [v95 count];

                  if (!v96)
                  {
                    if (qword_1000EB310 != -1)
                    {
                      sub_100089CEC();
                    }

                    v97 = qword_1000EB308;
                    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                    {
                      *v168 = 0;
                      v98 = sub_1000011A8(1);
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                      {
                        v99 = v98;
                      }

                      else
                      {
                        v99 = v98 & 0xFFFFFFFE;
                      }

                      if (v99)
                      {
                        LOWORD(v167[0]) = 0;
                        LODWORD(v140) = 2;
                        v136 = v167;
                        v100 = _os_log_send_and_compose_impl();
                        v101 = v100;
                        if (v100)
                        {
                          sub_100002A8C(v100);
                        }
                      }

                      else
                      {
                        v101 = 0;
                      }

                      free(v101);
                    }

                    v94 = v142;
                  }

                  v163 = 0u;
                  v164 = 0u;
                  v161 = 0u;
                  v162 = 0u;
                  v102 = [v94 users];
                  v146 = [v102 countByEnumeratingWithState:&v161 objects:v168 count:16];
                  if (v146)
                  {
                    v103 = 0;
                    v143 = *v162;
                    v104 = &off_1000EB000;
                    v144 = v102;
                    v145 = v93;
                    do
                    {
                      v105 = 0;
                      do
                      {
                        if (*v162 != v143)
                        {
                          objc_enumerationMutation(v102);
                        }

                        v155 = *(*(&v161 + 1) + 8 * v105);
                        if (v104[98] != -1)
                        {
                          sub_100089CEC();
                        }

                        v147 = v105;
                        v106 = qword_1000EB308;
                        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                        {
                          v160 = 0;
                          v107 = sub_1000011A8(1);
                          if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
                          {
                            v107 &= ~1u;
                          }

                          if (v107)
                          {
                            v108 = v106;
                            v109 = sub_100089624(v155);
                            v110 = [v109 UUIDString];
                            v165 = 138412290;
                            *v166 = v110;
                            LODWORD(v141) = 12;
                            v137 = &v165;
                            v111 = _os_log_send_and_compose_impl();

                            if (v111)
                            {
                              sub_100002A8C(v111);
                            }

                            v104 = &off_1000EB000;
                          }

                          else
                          {
                            v111 = 0;
                          }

                          free(v111);
                        }

                        v151 = +[NSMutableArray array];
                        v156 = 0u;
                        v157 = 0u;
                        v158 = 0u;
                        v159 = 0u;
                        obj = sub_100088F2C(v155);
                        v153 = [obj countByEnumeratingWithState:&v156 objects:v167 count:16];
                        if (v153)
                        {
                          v150 = *v157;
                          v112 = &off_1000EB000;
                          do
                          {
                            for (i = 0; i != v153; i = i + 1)
                            {
                              if (*v157 != v150)
                              {
                                objc_enumerationMutation(obj);
                              }

                              v114 = *(*(&v156 + 1) + 8 * i);
                              if (v104[98] != -1)
                              {
                                sub_100089CEC();
                              }

                              v115 = v112[97];
                              if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                              {
                                v160 = 0;
                                v116 = sub_1000011A8(1);
                                if (!os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                                {
                                  v116 &= ~1u;
                                }

                                if (v116)
                                {
                                  v149 = v103;
                                  v117 = v92;
                                  v118 = v4;
                                  v119 = v115;
                                  v120 = sub_100001660(v114);
                                  v121 = sub_100089624(v155);
                                  v122 = [v121 UUIDString];
                                  v165 = 67109378;
                                  *v166 = v120;
                                  *&v166[4] = 2112;
                                  *&v166[6] = v122;
                                  LODWORD(v141) = 18;
                                  v137 = &v165;
                                  v123 = _os_log_send_and_compose_impl();

                                  if (v123)
                                  {
                                    sub_100002A8C(v123);
                                  }

                                  v4 = v118;
                                  v92 = v117;
                                  v103 = v149;
                                  v104 = &off_1000EB000;
                                  v112 = &off_1000EB000;
                                }

                                else
                                {
                                  v123 = 0;
                                }

                                free(v123);
                              }

                              v124 = v92[416];
                              v125 = sub_100096838(v114);
                              v126 = [v124 dictionaryWithDictionary:v125];

                              v127 = sub_100089624(v155);
                              v128 = [v127 UUIDString];
                              [v126 setObject:v128 forKeyedSubscript:kUMUserPersonaUserODUUIDKey];

                              if (sub_100001434(v114) == 4 || sub_100001434(v114) == 3)
                              {
                                v103 |= sub_10008BEEC(v4[93], v126);
                              }

                              [v151 addObject:{v126, v137, v141}];
                            }

                            v153 = [obj countByEnumeratingWithState:&v156 objects:v167 count:16];
                          }

                          while (v153);
                        }

                        v129 = sub_100089624(v155);
                        v130 = [v129 UUIDString];
                        v93 = v145;
                        [v145 setObject:v151 forKeyedSubscript:v130];

                        v105 = v147 + 1;
                        v102 = v144;
                      }

                      while ((v147 + 1) != v146);
                      v146 = [v144 countByEnumeratingWithState:&v161 objects:v168 count:16];
                    }

                    while (v146);

                    v131 = sub_1000013A0(v4[93]);
                    [v131 setUserPersonas:v145];

                    if (v103)
                    {
                      sub_10008EBBC(v4[93]);
                    }
                  }

                  else
                  {

                    v132 = sub_1000013A0(v4[93]);
                    [v132 setUserPersonas:v93];
                  }

                  v74 = 1;
LABEL_214:

                  v15 = v142;
                  goto LABEL_215;
                }

LABEL_151:
                sub_100002A8C(v88);
                goto LABEL_153;
              }
            }

            v88 = 0;
            goto LABEL_153;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v69 = v2[97];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *v168 = 0;
            v70 = sub_1000011A8(1);
            if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
            {
              v71 = v70;
            }

            else
            {
              v71 = v70 & 0xFFFFFFFE;
            }

            if (v71)
            {
              LOWORD(v167[0]) = 0;
              v72 = _os_log_send_and_compose_impl();
              v73 = v72;
              if (v72)
              {
                sub_100002A8C(v72);
              }
            }

            else
            {
              v73 = 0;
            }

            free(v73);
          }

          if (!a1)
          {
            goto LABEL_167;
          }

          goto LABEL_115;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v12 = v2[97];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v168 = 0;
          v65 = sub_1000011A8(1);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v66 = v65;
          }

          else
          {
            v66 = v65 & 0xFFFFFFFE;
          }

          if (v66)
          {
            LOWORD(v167[0]) = 0;
LABEL_101:
            v67 = _os_log_send_and_compose_impl();
            v68 = v67;
            if (v67)
            {
              sub_100002A8C(v67);
            }

            goto LABEL_113;
          }

          goto LABEL_112;
        }

        goto LABEL_114;
      }

      v167[0] = 0;
      v9 = sub_1000011A8(1);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 &= ~1u;
      }

      if (v9)
      {
        v10 = v8;
        *v168 = 67109376;
        *&v168[4] = [v6 version];
        *&v168[8] = 1024;
        *&v168[10] = +[UMDPersonaManifest currentVersion];
        LODWORD(v138) = 14;
        v134 = v168;
        v11 = _os_log_send_and_compose_impl();

        if (v11)
        {
          sub_100002A8C(v11);
        }

        goto LABEL_24;
      }
    }

    v11 = 0;
LABEL_24:
    free(v11);
    goto LABEL_25;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v168 = 0;
    v13 = sub_1000011A8(1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (v14)
    {
      LOWORD(v167[0]) = 0;
      goto LABEL_101;
    }

LABEL_112:
    v68 = 0;
LABEL_113:
    free(v68);
  }

LABEL_114:

  v15 = 0;
  if (!a1)
  {
LABEL_167:
    v74 = 0;
    goto LABEL_215;
  }

LABEL_115:
  v74 = 0;
  *a1 = 2;
LABEL_215:

  return v74;
}

uint64_t sub_10003FC14(unsigned int a1, int a2, int a3, int a4)
{
  valuePtr = a2;
  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v10 = qword_1000EB318;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v11 = sub_1000011A8(0);
    v12 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 0xFFFFFFFE;
    }

    if (v13)
    {
      v304.st_dev = 67109120;
      *&v304.st_mode = a1;
      LODWORD(v285) = 8;
      v284 = &v304;
      v4 = _os_log_send_and_compose_impl();

      if (v4)
      {
        sub_100002A8C(v4);
      }
    }

    else
    {

      v4 = 0;
    }

    free(v4);
  }

  if (a1 == -1)
  {
    sub_100089E1C();
  }

  else
  {
    v6 = &off_1000EB000;
    v14 = sub_10008A2F4(qword_1000EB2E0, a1);

    if (v14)
    {
      v4 = &off_1000EB000;
      v7 = &qword_1000EB608;
      v5 = &kUMUserSessionHomeDirKey;
      if (dword_1000EB5B0 == 1)
      {
        if (qword_1000EB310 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_661;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *&v304.st_dev = 0;
        v21 = sub_1000011A8(1);
        v22 = v20;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v21;
        }

        else
        {
          v23 = v21 & 0xFFFFFFFE;
        }

        if (v23)
        {
          *v296 = 67109632;
          *&v296[4] = a1;
          *&v296[8] = 1024;
          *&v296[10] = qword_1000EB5A8;
          *&v296[14] = 1024;
          *&v296[16] = valuePtr;
          v24 = _os_log_send_and_compose_impl();

          if (v24)
          {
            sub_100002A8C(v24);
          }
        }

        else
        {

          v24 = 0;
        }

        free(v24);
      }

      v30 = sub_10008A2F4(qword_1000EB2E0, a1);
      if (qword_1000EB5A8 >= 2)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v31 = qword_1000EB308;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *v296 = 0;
          v32 = sub_1000011A8(1);
          v33 = v31;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v32;
          }

          else
          {
            v34 = v32 & 0xFFFFFFFE;
          }

          if (v34)
          {
            LOWORD(v304.st_dev) = 0;
            v35 = _os_log_send_and_compose_impl();

            if (v35)
            {
              sub_100002A8C(v35);
            }
          }

          else
          {

            v35 = 0;
          }

          free(v35);
        }
      }

      v78 = sub_100088F2C(qword_1000EB608);
      v79 = sub_100089B00(v78, a1);

      v80 = &off_1000EB000;
      if (v79)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v81 = qword_1000EB308;
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *v296 = 0;
          v82 = sub_1000011A8(1);
          v81 = v81;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v83 = v82;
          }

          else
          {
            v83 = v82 & 0xFFFFFFFE;
          }

          if (v83)
          {
            LOWORD(v304.st_dev) = 0;
            goto LABEL_166;
          }

          goto LABEL_169;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v81 = qword_1000EB308;
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          *v296 = 0;
          v84 = sub_1000011A8(1);
          v81 = v81;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            v85 = v84;
          }

          else
          {
            v85 = v84 & 0xFFFFFFFE;
          }

          if (v85)
          {
            LOWORD(v304.st_dev) = 0;
LABEL_166:
            v86 = _os_log_send_and_compose_impl();

            if (v86)
            {
              sub_100002A8C(v86);
            }

            goto LABEL_170;
          }

LABEL_169:

          v86 = 0;
LABEL_170:
          v87 = a1;
          free(v86);
LABEL_171:

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v88 = qword_1000EB308;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
          {
            *v296 = 0;
            v89 = sub_1000011A8(1);
            v90 = v88;
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = v89;
            }

            else
            {
              v91 = v89 & 0xFFFFFFFE;
            }

            if (v91)
            {
              LOWORD(v304.st_dev) = 0;
              v92 = _os_log_send_and_compose_impl();

              if (v92)
              {
                sub_100002A8C(v92);
              }
            }

            else
            {

              v92 = 0;
            }

            v87 = a1;
            free(v92);
          }

          if (![qword_1000EB2D8 splitUserVolumeEnabled])
          {
            goto LABEL_651;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v93 = qword_1000EB308;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            *v296 = 0;
            v94 = sub_1000011A8(1);
            v95 = v93;
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 = v94;
            }

            else
            {
              v96 = v94 & 0xFFFFFFFE;
            }

            if (v96)
            {
              LOWORD(v304.st_dev) = 0;
              v97 = _os_log_send_and_compose_impl();

              if (v97)
              {
                sub_100002A8C(v97);
              }
            }

            else
            {

              v97 = 0;
            }

            v87 = a1;
            free(v97);
          }

          sub_10001A918(v30, v87);
          if (dword_1000EB5B0)
          {
            v98 = 0;
            goto LABEL_230;
          }

          v99 = sub_1000013A0(qword_1000EB608);
          v100 = v87;
          v101 = v99;
          v290 = 0;
          v102 = [v99 fixupPath:@"/private/var/mobile/Library" withMode:493 toUser:v100 group:v100 error:&v290];
          v98 = v290;

          if (v102)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v103 = qword_1000EB308;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *v296 = 0;
              v104 = sub_1000011A8(1);
              v103 = v103;
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v105 = v104;
              }

              else
              {
                v105 = v104 & 0xFFFFFFFE;
              }

              if (v105)
              {
                LOWORD(v304.st_dev) = 0;
                goto LABEL_214;
              }

              goto LABEL_225;
            }
          }

          else if (v98)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v103 = qword_1000EB308;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *v296 = 0;
              v106 = sub_1000011A8(1);
              v103 = v103;
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v107 = v106;
              }

              else
              {
                v107 = v106 & 0xFFFFFFFE;
              }

              if (v107)
              {
                v108 = [v98 code];
                v304.st_dev = 67109120;
                *&v304.st_mode = v108;
LABEL_214:
                v109 = _os_log_send_and_compose_impl();

                if (v109)
                {
                  sub_100002A8C(v109);
                }

                goto LABEL_226;
              }

LABEL_225:

              v109 = 0;
LABEL_226:
              v87 = a1;
              free(v109);
LABEL_229:

LABEL_230:
              v113 = sub_100079590(v30, kUMUserSessionVolumeDeviceNodeKey);
              if (!v113)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v118 = qword_1000EB308;
                if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_649;
                }

                *v296 = 0;
                v119 = sub_1000011A8(1);
                if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                {
                  v120 = v119;
                }

                else
                {
                  v120 = v119 & 0xFFFFFFFE;
                }

                if (v120)
                {
                  LOWORD(v304.st_dev) = 0;
                  v121 = _os_log_send_and_compose_impl();
                  v122 = v121;
                  if (v121)
                  {
                    sub_100002A8C(v121);
                  }
                }

                else
                {
                  v122 = 0;
                }

                v87 = a1;
                v129 = v122;
                goto LABEL_648;
              }

              if (a3)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v114 = qword_1000EB308;
                if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                {
                  *v296 = 0;
                  v115 = sub_1000011A8(1);
                  v114 = v114;
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    v116 = v115;
                  }

                  else
                  {
                    v116 = v115 & 0xFFFFFFFE;
                  }

                  if (v116)
                  {
                    LOWORD(v304.st_dev) = 0;
                    v117 = _os_log_send_and_compose_impl();

                    if (v117)
                    {
                      sub_100002A8C(v117);
                    }
                  }

                  else
                  {

                    v117 = 0;
                  }

                  v87 = a1;
                  free(v117);
                }

LABEL_288:

                if (!a4 || !_os_feature_enabled_impl())
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v118 = qword_1000EB308;
                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_649;
                  }

                  *v296 = 0;
                  v144 = sub_1000011A8(1);
                  v145 = v118;
                  if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                  {
                    v146 = v144;
                  }

                  else
                  {
                    v146 = v144 & 0xFFFFFFFE;
                  }

                  if (v146)
                  {
                    LOWORD(v304.st_dev) = 0;
                    goto LABEL_644;
                  }

LABEL_646:

                  v279 = 0;
LABEL_647:
                  v87 = a1;
                  v129 = v279;
LABEL_648:
                  free(v129);
LABEL_649:

                  goto LABEL_650;
                }

                memset(v302, 0, sizeof(v302));
                v301 = 0u;
                v300 = 0u;
                v299 = 0u;
                v298 = 0u;
                v297 = 0u;
                memset(&v296[20], 0, 128);
                strcpy(v296, "/private/var/mobile");
                if (v87 == 501)
                {
LABEL_636:
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v118 = qword_1000EB308;
                  if (!os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_649;
                  }

                  *&v304.st_dev = 0;
                  v277 = sub_1000011A8(1);
                  v145 = v118;
                  if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                  {
                    v278 = v277;
                  }

                  else
                  {
                    v278 = v277 & 0xFFFFFFFE;
                  }

                  if (v278)
                  {
                    LOWORD(v303.st_dev) = 0;
LABEL_644:
                    v279 = _os_log_send_and_compose_impl();

                    if (v279)
                    {
                      sub_100002A8C(v279);
                    }

                    goto LABEL_647;
                  }

                  goto LABEL_646;
                }

                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v139 = qword_1000EB308;
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                {
                  *&v303.st_dev = 0;
                  v140 = sub_1000011A8(1);
                  v141 = v139;
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                  {
                    v142 = v140;
                  }

                  else
                  {
                    v142 = v140 & 0xFFFFFFFE;
                  }

                  if (v142)
                  {
                    v304.st_dev = 67109378;
                    v87 = a1;
                    *&v304.st_mode = a1;
                    LOWORD(v304.st_ino) = 2080;
                    *(&v304.st_ino + 2) = v296;
                    v143 = _os_log_send_and_compose_impl();

                    if (v143)
                    {
                      sub_100002A8C(v143);
                    }
                  }

                  else
                  {

                    v143 = 0;
                    v87 = a1;
                  }

                  free(v143);
                }

                if (sub_100032B3C(v87, v296, 1))
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v271 = qword_1000EB308;
                  if (!os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_635;
                  }

                  *&v304.st_dev = 0;
                  v272 = sub_1000011A8(1);
                  v271 = v271;
                  if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                  {
                    v273 = v272;
                  }

                  else
                  {
                    v273 = v272 & 0xFFFFFFFE;
                  }

                  if (v273)
                  {
                    v303.st_dev = 67109120;
                    v87 = a1;
                    *&v303.st_mode = a1;
                    goto LABEL_631;
                  }
                }

                else
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v271 = qword_1000EB308;
                  if (!os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_635;
                  }

                  *&v304.st_dev = 0;
                  v274 = sub_1000011A8(1);
                  v271 = v271;
                  if (os_log_type_enabled(v271, OS_LOG_TYPE_DEFAULT))
                  {
                    v275 = v274;
                  }

                  else
                  {
                    v275 = v274 & 0xFFFFFFFE;
                  }

                  if (v275)
                  {
                    v303.st_dev = 67109120;
                    v87 = a1;
                    *&v303.st_mode = a1;
LABEL_631:
                    v276 = _os_log_send_and_compose_impl();

                    if (v276)
                    {
                      sub_100002A8C(v276);
                    }

                    goto LABEL_634;
                  }
                }

                v276 = 0;
                v87 = a1;
LABEL_634:
                free(v276);
LABEL_635:

                goto LABEL_636;
              }

              v123 = v113;
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v124 = qword_1000EB308;
              if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
              {
                *&v304.st_dev = 0;
                v125 = sub_1000011A8(1);
                v126 = v124;
                if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
                {
                  v127 = v125;
                }

                else
                {
                  v127 = v125 & 0xFFFFFFFE;
                }

                if (v127)
                {
                  *v296 = 138412546;
                  *&v296[4] = v123;
                  *&v296[12] = 1024;
                  *&v296[14] = a1;
                  v128 = _os_log_send_and_compose_impl();

                  if (v128)
                  {
                    sub_100002A8C(v128);
                  }
                }

                else
                {

                  v128 = 0;
                }

                free(v128);
                v6 = &off_1000EB000;
                v80 = &off_1000EB000;
              }

              v130 = sub_100089A80(qword_1000EB608);
              v289 = 0;
              v131 = [v130 mapVolume:v123 toSession:a1 withPersona:0 error:&v289];
              v114 = v289;

              if (v131)
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v132 = qword_1000EB308;
                if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                {
                  *v296 = 0;
                  v133 = sub_1000011A8(1);
                  v132 = v132;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    v134 = v133;
                  }

                  else
                  {
                    v134 = v133 & 0xFFFFFFFE;
                  }

                  if (v134)
                  {
                    LOWORD(v304.st_dev) = 0;
                    goto LABEL_282;
                  }

                  goto LABEL_285;
                }
              }

              else
              {
                if (qword_1000EB310 != -1)
                {
                  sub_100089CEC();
                }

                v132 = qword_1000EB308;
                if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                {
                  *&v304.st_dev = 0;
                  v135 = sub_1000011A8(1);
                  v132 = v132;
                  if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
                  {
                    v136 = v135;
                  }

                  else
                  {
                    v136 = v135 & 0xFFFFFFFE;
                  }

                  if (v136)
                  {
                    v137 = [v114 code];
                    *v296 = 134217984;
                    *&v296[4] = v137;
LABEL_282:
                    v138 = _os_log_send_and_compose_impl();

                    if (v138)
                    {
                      sub_100002A8C(v138);
                    }

                    goto LABEL_286;
                  }

LABEL_285:

                  v138 = 0;
LABEL_286:
                  v87 = a1;
                  free(v138);
                  goto LABEL_287;
                }
              }

              v87 = a1;
LABEL_287:

              goto LABEL_288;
            }
          }

          else
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v103 = qword_1000EB308;
            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
            {
              *v296 = 0;
              v110 = sub_1000011A8(1);
              v103 = v103;
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
              {
                v111 = v110;
              }

              else
              {
                v111 = v110 & 0xFFFFFFFE;
              }

              if (v111)
              {
                LOWORD(v304.st_dev) = 0;
                v112 = _os_log_send_and_compose_impl();

                if (v112)
                {
                  sub_100002A8C(v112);
                }
              }

              else
              {

                v112 = 0;
              }

              v87 = a1;
              free(v112);
              v98 = 0;
              goto LABEL_229;
            }

            v98 = 0;
          }

          v87 = a1;
          goto LABEL_229;
        }
      }

      v87 = a1;
      goto LABEL_171;
    }
  }

  sub_100089E04();
LABEL_661:
  sub_100089CEC();
LABEL_16:
  v15 = *(v4 + 97);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v16 = sub_1000011A8(1);
    v17 = v15;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      LOWORD(v304.st_dev) = 0;
      LODWORD(v285) = 2;
      v284 = &v304;
      v19 = _os_log_send_and_compose_impl();

      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {

      v19 = 0;
    }

    free(v19);
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v25 = *(v4 + 97);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v26 = sub_1000011A8(1);
    v27 = v25;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v304.st_dev = 67109120;
      *&v304.st_mode = a1;
      LODWORD(v285) = 8;
      v284 = &v304;
      v29 = _os_log_send_and_compose_impl();

      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {

      v29 = 0;
    }

    free(v29);
  }

  v286 = sub_10008A2F4(v6[92], a1);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v36 = *(v4 + 97);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *&v304.st_dev = 0;
    v37 = sub_1000011A8(1);
    v38 = v36;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v37;
    }

    else
    {
      v39 = v37 & 0xFFFFFFFE;
    }

    if (v39)
    {
      *v296 = 67109378;
      *&v296[4] = a1;
      *&v296[8] = 2112;
      *&v296[10] = v286;
      LODWORD(v285) = 18;
      v284 = v296;
      v40 = _os_log_send_and_compose_impl();

      if (v40)
      {
        sub_100002A8C(v40);
      }
    }

    else
    {

      v40 = 0;
    }

    free(v40);
  }

  if (a1 == 502)
  {
    v41 = sub_1000013A0(*v7);
    [v41 removeFileAtPath:@"/private/var//keybags/nextsession_opaque.kb" error:0];

    v42 = sub_1000013A0(*v7);
    [v42 removeFileAtPath:@"/private/var//keybags/nextsession_SBD_opaque.kb" error:0];
  }

  v287 = sub_1000023E8(v286, kUMUserSessionGroupIDKey);
  v43 = sub_100088F2C(*v7);
  v44 = sub_100089B00(v43, a1);

  if (v44)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = *(v4 + 97);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v296 = 0;
      v46 = sub_1000011A8(1);
      v45 = v45;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
      }

      else
      {
        v47 = v46 & 0xFFFFFFFE;
      }

      if (v47)
      {
        LOWORD(v304.st_dev) = 0;
        LODWORD(v285) = 2;
        v284 = &v304;
        goto LABEL_87;
      }

      goto LABEL_89;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v45 = *(v4 + 97);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *v296 = 0;
      v48 = sub_1000011A8(1);
      v45 = v45;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFE;
      }

      if (v49)
      {
        LOWORD(v304.st_dev) = 0;
        LODWORD(v285) = 2;
        v284 = &v304;
LABEL_87:
        v50 = _os_log_send_and_compose_impl();

        if (v50)
        {
          sub_100002A8C(v50);
        }

        goto LABEL_90;
      }

LABEL_89:

      v50 = 0;
LABEL_90:
      free(v50);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v51 = *(v4 + 97);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v52 = sub_1000011A8(1);
    v53 = v51;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v52;
    }

    else
    {
      v54 = v52 & 0xFFFFFFFE;
    }

    if (v54)
    {
      v304.st_dev = 67109120;
      *&v304.st_mode = a1;
      LODWORD(v285) = 8;
      v284 = &v304;
      v55 = _os_log_send_and_compose_impl();

      if (v55)
      {
        sub_100002A8C(v55);
      }
    }

    else
    {

      v55 = 0;
    }

    free(v55);
    v4 = &off_1000EB000;
  }

  if (a1 == 502)
  {
    v56 = 1;
  }

  else
  {
    v56 = 2;
  }

  dword_1000EB5B8 = v56;
  dword_1000EB5BC = 0;
  memset(&v304, 0, sizeof(v304));
  memset(&v303, 0, sizeof(v303));
  if (lstat("/private/var/mobile", &v304))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v57 = v286;
    v58 = *(v4 + 97);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_329;
    }

    *v293 = 0;
    v59 = sub_1000011A8(1);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 &= ~1u;
    }

    if (v59)
    {
      goto LABEL_112;
    }

LABEL_327:
    v63 = 0;
LABEL_328:
    free(v63);
    goto LABEL_329;
  }

  v64 = v304.st_mode & 0xF000;
  if (v64 != 0x4000)
  {
    if (v64 == 40960)
    {
      v65 = sub_1000013A0(*v7);
      v66 = [v65 removeFileAtPath:@"/private/var/mobile" error:0];

      v57 = v286;
      if (v66)
      {
        goto LABEL_330;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v58 = *(v4 + 97);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      *v296 = 0;
      v67 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v67;
      }

      else
      {
        v68 = v67 & 0xFFFFFFFE;
      }

      if (!v68)
      {
        goto LABEL_327;
      }

      *v293 = 0;
      LODWORD(v285) = 2;
      v284 = v293;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v57 = v286;
      v58 = *(v4 + 97);
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_329;
      }

      *v296 = 0;
      v75 = sub_1000011A8(1);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v75;
      }

      else
      {
        v76 = v75 & 0xFFFFFFFE;
      }

      if (!v76)
      {
        goto LABEL_327;
      }

      *v293 = 67109120;
      *&v293[4] = v304.st_mode;
      LODWORD(v285) = 8;
      v284 = v293;
    }

    v77 = _os_log_send_and_compose_impl();
    v63 = v77;
    if (v77)
    {
      sub_100002A8C(v77);
    }

    goto LABEL_328;
  }

  v57 = v286;
  if (sub_100054EFC("/private/var/mobile", 0x80000))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v69 = *(v4 + 97);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *v293 = 0;
      v70 = sub_1000011A8(1);
      if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 &= ~1u;
      }

      if (v70)
      {
        v71 = v69;
        v72 = __error();
        v73 = strerror(*v72);
        *v296 = 136315138;
        *&v296[4] = v73;
        LODWORD(v285) = 12;
        v284 = v296;
        v74 = _os_log_send_and_compose_impl();

        if (v74)
        {
          sub_100002A8C(v74);
        }

        v4 = &off_1000EB000;
      }

      else
      {
        v74 = 0;
      }

      free(v74);
    }
  }

  if (lstat("/private/var/OLDmobile", &v303))
  {
    rename("/private/var/mobile", "/private/var/OLDmobile", v147);
    if (!v148)
    {
      goto LABEL_330;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v58 = *(v4 + 97);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_329;
    }

    *v293 = 0;
    v149 = sub_1000011A8(1);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v149 &= ~1u;
    }

    if (!v149)
    {
      goto LABEL_327;
    }

    goto LABEL_112;
  }

  if (!rmdir("/private/var/mobile"))
  {
    goto LABEL_330;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v58 = *(v4 + 97);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *v293 = 0;
    v150 = sub_1000011A8(1);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v150 &= ~1u;
    }

    if (!v150)
    {
      goto LABEL_327;
    }

LABEL_112:
    v60 = v58;
    v61 = __error();
    v62 = strerror(*v61);
    *v296 = 136315138;
    *&v296[4] = v62;
    LODWORD(v285) = 12;
    v284 = v296;
    v63 = _os_log_send_and_compose_impl();

    if (v63)
    {
      sub_100002A8C(v63);
    }

    v4 = &off_1000EB000;
    goto LABEL_328;
  }

LABEL_329:

LABEL_330:
  if (mkdir("/private/var/mobile", 0x1FFu))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v151 = *(v4 + 97);
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      *v293 = 0;
      v152 = sub_1000011A8(1);
      if (!os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        v152 &= ~1u;
      }

      if (v152)
      {
        v153 = v151;
        v154 = __error();
        v155 = strerror(*v154);
        *v296 = 136315138;
        *&v296[4] = v155;
        LODWORD(v285) = 12;
        v284 = v296;
        v156 = _os_log_send_and_compose_impl();

        if (v156)
        {
          sub_100002A8C(v156);
        }

        v4 = &off_1000EB000;
      }

      else
      {
        v156 = 0;
      }

      free(v156);
    }
  }

  if (chown("/private/var/mobile", a1, v287))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v157 = *(v4 + 97);
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      *v293 = 0;
      v158 = sub_1000011A8(1);
      if (!os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v158 &= ~1u;
      }

      if (v158)
      {
        v159 = v157;
        v160 = __error();
        v161 = strerror(*v160);
        *v296 = 67109634;
        *&v296[4] = a1;
        *&v296[8] = 1024;
        *&v296[10] = v287;
        *&v296[14] = 2080;
        *&v296[16] = v161;
        LODWORD(v285) = 24;
        v284 = v296;
        v162 = _os_log_send_and_compose_impl();

        if (v162)
        {
          sub_100002A8C(v162);
        }

        v4 = &off_1000EB000;
        goto LABEL_363;
      }

LABEL_362:
      v162 = 0;
LABEL_363:
      free(v162);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v157 = *(v4 + 97);
    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
    {
      *v293 = 0;
      v163 = sub_1000011A8(1);
      if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
      {
        v164 = v163;
      }

      else
      {
        v164 = v163 & 0xFFFFFFFE;
      }

      if (v164)
      {
        *v296 = 67109376;
        *&v296[4] = a1;
        *&v296[8] = 1024;
        *&v296[10] = v287;
        LODWORD(v285) = 14;
        v284 = v296;
        v165 = _os_log_send_and_compose_impl();
        v162 = v165;
        if (v165)
        {
          sub_100002A8C(v165);
        }

        goto LABEL_363;
      }

      goto LABEL_362;
    }
  }

  bzero(v296, 0x400uLL);
  sub_1000795D4(v57, *v5, v296, 1024);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v166 = *(v4 + 97);
  if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
  {
    v292 = 0;
    v167 = sub_1000011A8(1);
    if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
    {
      v168 = v167;
    }

    else
    {
      v168 = v167 & 0xFFFFFFFE;
    }

    if (v168)
    {
      *v293 = 136315138;
      *&v293[4] = v296;
      LODWORD(v285) = 12;
      v284 = v293;
      v169 = _os_log_send_and_compose_impl();
      v170 = v169;
      if (v169)
      {
        sub_100002A8C(v169);
      }
    }

    else
    {
      v170 = 0;
    }

    free(v170);
  }

  v171 = fsctl("/private/var/", 0x2000410FuLL, v296, 0);
  if (v171)
  {
    v172 = v171;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v173 = *(v4 + 97);
    if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
    {
      v292 = 0;
      v174 = sub_1000011A8(1);
      if (!os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
      {
        v174 &= ~1u;
      }

      if (v174)
      {
        v175 = v173;
        v176 = strerror(v172);
        *v293 = 67109634;
        *&v293[4] = a1;
        *&v293[8] = 2080;
        *&v293[10] = v296;
        v294 = 2080;
        v295 = v176;
        LODWORD(v285) = 28;
        v284 = v293;
        v177 = _os_log_send_and_compose_impl();

        if (v177)
        {
          sub_100002A8C(v177);
        }
      }

      else
      {
        v177 = 0;
      }

      v4 = &off_1000EB000;
      free(v177);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v178 = *(v4 + 97);
    if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      v292 = 0;
      v179 = sub_1000011A8(1);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
      {
        v180 = v179;
      }

      else
      {
        v180 = v179 & 0xFFFFFFFE;
      }

      if (v180)
      {
        *v293 = 67109378;
        *&v293[4] = a1;
        *&v293[8] = 2080;
        *&v293[10] = v296;
        LODWORD(v285) = 18;
        v284 = v293;
        v181 = _os_log_send_and_compose_impl();
        v182 = v181;
        if (v181)
        {
          sub_100002A8C(v181);
        }
      }

      else
      {
        v182 = 0;
      }

      free(v182);
    }

    sub_100032B3C(a1, v296, 1);
  }

  strcpy(v296, "/private/var/DELETED");
  if (!lstat("/private/var/DELETED", &v304))
  {
    if (sub_10002D62C(v296))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v183 = *(v4 + 97);
      if (!os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_430;
      }

      v292 = 0;
      v189 = sub_1000011A8(1);
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        v190 = v189;
      }

      else
      {
        v190 = v189 & 0xFFFFFFFE;
      }

      if (!v190)
      {
        goto LABEL_428;
      }

      *v293 = 136315138;
      *&v293[4] = v296;
      LODWORD(v285) = 12;
      v284 = v293;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v183 = *(v4 + 97);
      if (!os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_430;
      }

      v292 = 0;
      v191 = sub_1000011A8(1);
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        v192 = v191;
      }

      else
      {
        v192 = v191 & 0xFFFFFFFE;
      }

      if (!v192)
      {
        goto LABEL_428;
      }

      *v293 = 136315138;
      *&v293[4] = v296;
      LODWORD(v285) = 12;
      v284 = v293;
    }

    v193 = _os_log_send_and_compose_impl();
    v188 = v193;
    if (v193)
    {
      sub_100002A8C(v193);
    }

    goto LABEL_429;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v183 = *(v4 + 97);
  if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
  {
    v292 = 0;
    v184 = sub_1000011A8(1);
    if (!os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      v184 &= ~1u;
    }

    if (v184)
    {
      v185 = v183;
      v186 = __error();
      v187 = strerror(*v186);
      *v293 = 136315138;
      *&v293[4] = v187;
      LODWORD(v285) = 12;
      v284 = v293;
      v188 = _os_log_send_and_compose_impl();

      if (v188)
      {
        sub_100002A8C(v188);
      }

      v4 = &off_1000EB000;
      goto LABEL_429;
    }

LABEL_428:
    v188 = 0;
LABEL_429:
    free(v188);
  }

LABEL_430:

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v194 = *(v4 + 97);
  if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v195 = sub_1000011A8(1);
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT))
    {
      v196 = v195;
    }

    else
    {
      v196 = v195 & 0xFFFFFFFE;
    }

    if (v196)
    {
      v304.st_dev = 67109120;
      *&v304.st_mode = 2;
      LODWORD(v285) = 8;
      v284 = &v304;
      v197 = _os_log_send_and_compose_impl();
      v198 = v197;
      if (v197)
      {
        sub_100002A8C(v197);
      }
    }

    else
    {
      v198 = 0;
    }

    free(v198);
  }

  v199 = 0;
  v200 = 1;
  v87 = a1;
  do
  {
    v201 = v200;
    memset(v296, 0, 144);
    v202 = (&off_1000DD4A8)[6 * v199];
    if (stat(v202, v296))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v203 = *(v4 + 97);
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
      {
        *&v303.st_dev = 0;
        v204 = sub_1000011A8(1);
        if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
        {
          v205 = v204;
        }

        else
        {
          v205 = v204 & 0xFFFFFFFE;
        }

        if (v205)
        {
          v304.st_dev = 136315138;
          *&v304.st_mode = v202;
          LODWORD(v285) = 12;
          v284 = &v304;
          v206 = _os_log_send_and_compose_impl();
          v207 = v206;
          if (v206)
          {
            sub_100002A8C(v206);
          }
        }

        else
        {
          v207 = 0;
        }

        free(v207);
        v4 = &off_1000EB000;
      }

      if (mkpath_np(v202, 0x1EDu))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v213 = *(v4 + 97);
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
        {
          *&v303.st_dev = 0;
          v214 = sub_1000011A8(1);
          if (!os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
          {
            v214 &= ~1u;
          }

          if (v214)
          {
            v215 = v213;
            v216 = __error();
            v217 = strerror(*v216);
            v304.st_dev = 136315394;
            *&v304.st_mode = v202;
            WORD2(v304.st_ino) = 2080;
            *(&v304.st_ino + 6) = v217;
            LODWORD(v285) = 22;
            v284 = &v304;
            v218 = _os_log_send_and_compose_impl();

            if (v218)
            {
              sub_100002A8C(v218);
            }

            v87 = a1;
          }

          else
          {
            v218 = 0;
          }

          free(v218);
          v4 = &off_1000EB000;
        }
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v208 = *(v4 + 97);
      if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
      {
        *&v303.st_dev = 0;
        v209 = sub_1000011A8(1);
        if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
        {
          v210 = v209;
        }

        else
        {
          v210 = v209 & 0xFFFFFFFE;
        }

        if (v210)
        {
          v304.st_dev = 136315138;
          *&v304.st_mode = v202;
          LODWORD(v285) = 12;
          v284 = &v304;
          v211 = _os_log_send_and_compose_impl();
          v212 = v211;
          if (v211)
          {
            sub_100002A8C(v211);
          }
        }

        else
        {
          v212 = 0;
        }

        v87 = a1;
        free(v212);
        v4 = &off_1000EB000;
      }

      if (*&v296[16] != v87 || *&v296[20] != v287)
      {
        if (!chown(v202, v87, v287))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v219 = *(v4 + 97);
          if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
          {
            *&v303.st_dev = 0;
            v220 = sub_1000011A8(1);
            if (os_log_type_enabled(v219, OS_LOG_TYPE_DEFAULT))
            {
              v221 = v220;
            }

            else
            {
              v221 = v220 & 0xFFFFFFFE;
            }

            if (v221)
            {
              v222 = v219;
              v223 = __error();
              v224 = strerror(*v223);
              v304.st_dev = 136315394;
              *&v304.st_mode = v202;
              WORD2(v304.st_ino) = 2080;
              *(&v304.st_ino + 6) = v224;
              LODWORD(v285) = 22;
              v284 = &v304;
              v225 = _os_log_send_and_compose_impl();

              if (v225)
              {
                sub_100002A8C(v225);
              }
            }

            else
            {
              v225 = 0;
            }

            v87 = a1;
            free(v225);
            v4 = &off_1000EB000;
          }
        }

        sub_10001C7AC(v202, v87);
      }
    }

    v200 = 0;
    v199 = 1;
  }

  while ((v201 & 1) != 0);
  v6 = &off_1000EB000;
  v30 = v286;
  if (v87 == 502)
  {
    v226 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (v226)
    {
      v227 = v226;
      CFDictionarySetValue(v286, kUMUserSessionPreviousLoggedinIDKey, v226);
      CFRelease(v227);
    }

    v228 = sub_100079590(v286, kUMUserSessionHomeDirKey);
    sub_100070A64(v228, 0x1F6u, 0x1F6u);
    if (!CFDictionaryContainsKey(v286, kUMUserSessionLanguageKey))
    {
      CFDictionarySetValue(v286, kUMUserSessionLanguageKey, @"en_US");
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v230 = CFDateCreate(kCFAllocatorDefault, Current);
  CFDictionaryReplaceValue(v286, kUMUserSessionLoginTimeStampKey, v230);
  if (v230)
  {
    CFRelease(v230);
  }

  if ([qword_1000EB2D8 splitUserVolumeEnabled])
  {
LABEL_503:
    if (v87 != 502)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v231 = *(v4 + 97);
      if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
      {
        *v296 = 0;
        v232 = sub_1000011A8(1);
        v233 = v231;
        if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
        {
          v234 = v232;
        }

        else
        {
          v234 = v232 & 0xFFFFFFFE;
        }

        if (v234)
        {
          v304.st_dev = 67109120;
          v87 = a1;
          *&v304.st_mode = a1;
          v235 = _os_log_send_and_compose_impl();

          if (v235)
          {
            sub_100002A8C(v235);
          }
        }

        else
        {

          v235 = 0;
          v87 = a1;
        }

        free(v235);
      }

      sub_10001C1B8(v87);
    }

    sub_10001C0D0(v286, v87);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v253 = *(v4 + 97);
    if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
    {
      *v296 = 0;
      v254 = sub_1000011A8(1);
      v255 = v253;
      if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
      {
        v256 = v254;
      }

      else
      {
        v256 = v254 & 0xFFFFFFFE;
      }

      if (v256)
      {
        v304.st_dev = 67109120;
        v87 = a1;
        *&v304.st_mode = a1;
        v257 = _os_log_send_and_compose_impl();

        if (v257)
        {
          sub_100002A8C(v257);
        }
      }

      else
      {

        v257 = 0;
        v87 = a1;
      }

      free(v257);
    }

    CFDictionarySetValue(v286, kUMUserSessionForegroundKey, kCFBooleanTrue);
    sub_100018C80();
    sub_100073538();
    if (dword_1000EB5E0 < 1)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v80 = &off_1000EB000;
      v98 = *(v4 + 97);
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_650;
      }

      *v296 = 0;
      v263 = sub_1000011A8(1);
      v98 = v98;
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        v264 = v263;
      }

      else
      {
        v264 = v263 & 0xFFFFFFFE;
      }

      if (v264)
      {
        LOWORD(v304.st_dev) = 0;
        v265 = _os_log_send_and_compose_impl();

        if (v265)
        {
          sub_100002A8C(v265);
        }
      }

      else
      {

        v265 = 0;
      }

      v87 = a1;
      goto LABEL_608;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v258 = *(v4 + 97);
    if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
    {
      *v296 = 0;
      v259 = sub_1000011A8(1);
      v260 = v258;
      if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
      {
        v261 = v259;
      }

      else
      {
        v261 = v259 & 0xFFFFFFFE;
      }

      if (v261)
      {
        v304.st_dev = 67109120;
        *&v304.st_mode = dword_1000EB5E0;
        v262 = _os_log_send_and_compose_impl();

        if (v262)
        {
          sub_100002A8C(v262);
        }
      }

      else
      {

        v262 = 0;
      }

      v87 = a1;
      free(v262);
    }

    if (sub_10001C98C(dword_1000EB5E0))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v98 = *(v4 + 97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *v296 = 0;
        v266 = sub_1000011A8(1);
        v98 = v98;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v267 = v266;
        }

        else
        {
          v267 = v266 & 0xFFFFFFFE;
        }

        if (v267)
        {
          v304.st_dev = 67109120;
          *&v304.st_mode = dword_1000EB5E0;
          goto LABEL_596;
        }

        goto LABEL_599;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v98 = *(v4 + 97);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *v296 = 0;
        v268 = sub_1000011A8(1);
        v98 = v98;
        if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
        {
          v269 = v268;
        }

        else
        {
          v269 = v268 & 0xFFFFFFFE;
        }

        if (v269)
        {
          v304.st_dev = 67109120;
          *&v304.st_mode = dword_1000EB5E0;
LABEL_596:
          v265 = _os_log_send_and_compose_impl();

          if (v265)
          {
            sub_100002A8C(v265);
          }

          goto LABEL_600;
        }

LABEL_599:

        v265 = 0;
LABEL_600:
        v87 = a1;
        v80 = &off_1000EB000;
LABEL_608:
        free(v265);
        goto LABEL_650;
      }
    }

    v80 = &off_1000EB000;
LABEL_650:

LABEL_651:
    v280 = sub_100079590(v30, kUMUserSessionHomeDirKey);
    v281 = sub_100073D54(v280, v87, v87);
    if (v281)
    {
      v283 = sub_100018028("failed to register the exclaves writable storage: %d\n", v281);
      return sub_100042F8C(v283);
    }

    else
    {
      if (v30)
      {
        CFRelease(v30);
      }

      if (*(v80 + 364) != 1)
      {
        v282 = sub_10008A4DC(v6[92], v87);
        sub_1000940D0();
      }

      return 1;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v236 = *(v4 + 97);
  if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v237 = sub_1000011A8(1);
    v238 = v236;
    if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
    {
      v239 = v237;
    }

    else
    {
      v239 = v237 & 0xFFFFFFFE;
    }

    if (v239)
    {
      v304.st_dev = 67109120;
      v87 = a1;
      *&v304.st_mode = a1;
      v240 = _os_log_send_and_compose_impl();

      if (v240)
      {
        sub_100002A8C(v240);
      }
    }

    else
    {

      v240 = 0;
      v87 = a1;
    }

    free(v240);
  }

  if (!MKBUserSessionLoadKeybagForUser())
  {
    v246 = MKBUserSessionUnloadSessionBags();
    if (v246)
    {
      v247 = v246;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v248 = *(v4 + 97);
      if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
      {
        *v296 = 0;
        v249 = sub_1000011A8(1);
        v250 = v248;
        if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
        {
          v251 = v249;
        }

        else
        {
          v251 = v249 & 0xFFFFFFFE;
        }

        if (v251)
        {
          v304.st_dev = 67109120;
          *&v304.st_mode = v247;
          v252 = _os_log_send_and_compose_impl();

          if (v252)
          {
            sub_100002A8C(v252);
          }
        }

        else
        {

          v252 = 0;
        }

        v87 = a1;
        free(v252);
      }
    }

    goto LABEL_503;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v241 = *(v4 + 97);
  if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
  {
    *v296 = 0;
    v242 = sub_1000011A8(1);
    v243 = v241;
    if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
    {
      v244 = v242;
    }

    else
    {
      v244 = v242 & 0xFFFFFFFE;
    }

    if (v244)
    {
      LOWORD(v304.st_dev) = 0;
      v245 = _os_log_send_and_compose_impl();

      if (v245)
      {
        sub_100002A8C(v245);
      }
    }

    else
    {

      v245 = 0;
    }

    free(v245);
  }

  if (v286)
  {
    CFRelease(v286);
  }

  return 0;
}