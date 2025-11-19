uint64_t sub_100039FEC(_xpc_connection_s *a1, void *a2)
{
  if (xpc_connection_get_euid(a1))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      v8 = _os_log_pack_fill();
      pid = xpc_connection_get_pid(a1);
      *v8 = 134218240;
      *(v8 + 4) = a1;
      *(v8 + 12) = 1024;
      *(v8 + 14) = pid;
      __SC_log_send();
    }

    return 1;
  }

  string = xpc_dictionary_get_string(a2, "InterfaceName");
  if (!string)
  {
    return 22;
  }

  v12 = string;
  int64 = xpc_dictionary_get_int64(a2, "PrimaryRank");
  v14 = int64;
  if (int64 > 4)
  {
    return 22;
  }

  v15 = off_10007A950[int64 & 7];
  context = xpc_connection_get_context(a1);
  if (!context)
  {
    context = sub_10003A898(a1, a2);
  }

  valuePtr = v14;
  if (context[5])
  {
    v17 = CFStringCreateWithCString(0, v12, 0x8000100u);
    if (!v14)
    {
      CFDictionaryRemoveValue(context[5], v17);
      if (!CFDictionaryGetCount(context[5]))
      {
        CFRelease(context[5]);
        context[5] = 0;
      }

      goto LABEL_19;
    }

LABEL_18:
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(context[5], v17, v18);
    CFRelease(v18);
LABEL_19:
    sub_10003ABCC(v17);
    if (qword_100081968 && qword_100081970)
    {
      dispatch_async(qword_100081968, qword_100081970);
    }

    sub_10003AC88(v17);
    CFRelease(v17);
    goto LABEL_23;
  }

  if (v14)
  {
    context[5] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v17 = CFStringCreateWithCString(0, v12, 0x8000100u);
    goto LABEL_18;
  }

LABEL_23:
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v19 = _os_log_pack_size();
    __chkstk_darwin(v19, v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    v24 = context[4];
    v25 = *(context + 6);
    *v23 = 136316162;
    *(v23 + 4) = v24;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v25;
    *(v23 + 18) = 2080;
    *(v23 + 20) = v12;
    *(v23 + 28) = 2080;
    *(v23 + 30) = v15;
    *(v23 + 38) = 1024;
    *(v23 + 40) = v14;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_10003A374(_xpc_connection_s *a1, void *a2)
{
  if (xpc_connection_get_euid(a1))
  {
    v4 = xpc_connection_copy_entitlement_value();
    if (!v4)
    {
LABEL_14:
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        __chkstk_darwin(v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        pid = xpc_connection_get_pid(a1);
        *v19 = 134218240;
        *(v19 + 4) = a1;
        *(v19 + 12) = 1024;
        *(v19 + 14) = pid;
        __SC_log_send();
      }

      return 1;
    }

    v5 = v4;
    if (xpc_get_type(v4) != &_xpc_type_BOOL)
    {
      xpc_release(v5);
      goto LABEL_14;
    }

    value = xpc_BOOL_get_value(v5);
    xpc_release(v5);
    if (!value)
    {
      goto LABEL_14;
    }
  }

  string = xpc_dictionary_get_string(a2, "InterfaceName");
  if (!string)
  {
    return 22;
  }

  v8 = string;
  v9 = xpc_dictionary_get_string(a2, "Reason");
  int64 = xpc_dictionary_get_int64(a2, "Advisory");
  v11 = int64;
  if (int64 > 3)
  {
    return 22;
  }

  v12 = off_10007A978[int64 & 3];
  context = xpc_connection_get_context(a1);
  if (!context)
  {
    context = sub_10003A898(a1, a2);
  }

  valuePtr = v11;
  if (context[6])
  {
    v14 = CFStringCreateWithCString(0, v8, 0x8000100u);
    if (!v11)
    {
      CFDictionaryRemoveValue(context[6], v14);
      if (!CFDictionaryGetCount(context[6]))
      {
        CFRelease(context[6]);
        context[6] = 0;
      }

      goto LABEL_22;
    }

LABEL_21:
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(context[6], v14, v22);
    CFRelease(v22);
LABEL_22:
    sub_10003ABCC(v14);
    sub_10003AD1C(v14);
    if (qword_100081968 && qword_100081970)
    {
      dispatch_async(qword_100081968, qword_100081970);
    }

    CFRelease(v14);
    goto LABEL_26;
  }

  if (v11)
  {
    context[6] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = CFStringCreateWithCString(0, v8, 0x8000100u);
    goto LABEL_21;
  }

LABEL_26:
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v23 = _os_log_pack_size();
    __chkstk_darwin(v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    v28 = context[4];
    v29 = *(context + 6);
    v30 = "";
    if (v9)
    {
      v30 = v9;
    }

    *v27 = 136316418;
    *(v27 + 4) = v28;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v29;
    *(v27 + 18) = 2080;
    *(v27 + 20) = v8;
    *(v27 + 28) = 2080;
    *(v27 + 30) = v12;
    *(v27 + 38) = 1024;
    *(v27 + 40) = v11;
    *(v27 + 44) = 2080;
    *(v27 + 46) = v30;
    __SC_log_send();
    return 0;
  }

  return result;
}

void sub_10003A778(_xpc_connection_s *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    __SC_log_send();
  }

  context = xpc_connection_get_context(a1);
  if (context)
  {
    sub_10003AF54(context);
  }
}

_OWORD *sub_10003A898(_xpc_connection_s *a1, void *a2)
{
  v4 = malloc_type_malloc(0x38uLL, 0x10B004087C588CDuLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 6) = 0;
  *(v4 + 2) = a1;
  *(v4 + 6) = xpc_connection_get_pid(a1);
  string = xpc_dictionary_get_string(a2, "ProcessName");
  if (!string)
  {
    string = "<unknown>";
  }

  *(v4 + 4) = strdup(string);
  xpc_connection_set_finalizer_f(a1, sub_10003AA8C);
  xpc_connection_set_context(a1, v4);
  v6 = S_ControlSessions;
  *v4 = S_ControlSessions;
  if (v6)
  {
    *(v6 + 8) = v4;
  }

  S_ControlSessions = v4;
  *(v4 + 1) = &S_ControlSessions;
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = *(v4 + 4);
    v13 = *(v4 + 6);
    *v11 = 136315906;
    *(v11 + 4) = v12;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v13;
    *(v11 + 18) = 2048;
    *(v11 + 20) = v4;
    *(v11 + 28) = 2048;
    *(v11 + 30) = a1;
    __SC_log_send();
  }

  return v4;
}

void sub_10003AA8C(uint64_t a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    *v6 = 136315650;
    *(v6 + 4) = v7;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v8;
    *(v6 + 18) = 2048;
    *(v6 + 20) = a1;
    __SC_log_send();
  }

  free(*(a1 + 32));
  free(a1);
}

void sub_10003ABCC(void *value)
{
  if (qword_100081978)
  {
    v3.length = qword_100081980;
    v3.location = 0;
    if (CFArrayContainsValue(qword_100081978, v3, value))
    {
      return;
    }

    CFArrayAppendValue(qword_100081978, value);
    v2 = qword_100081980 + 1;
  }

  else
  {
    qword_100081978 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(qword_100081978, value);
    v2 = 1;
  }

  qword_100081980 = v2;
}

void sub_10003AC88(CFStringRef ifname)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, @"RankAssertion");
  SCDynamicStoreNotifyValue(0, NetworkInterfaceEntity);

  CFRelease(NetworkInterfaceEntity);
}

void sub_10003AD1C(CFStringRef ifname)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, @"Advisory");
  SCDynamicStoreNotifyValue(0, NetworkInterfaceEntity);

  CFRelease(NetworkInterfaceEntity);
}

void sub_10003ADB0(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = _SC_cfstring_to_cstring();
  v5 = *a3;
  if (!*a3)
  {
    empty = xpc_array_create_empty();
    *a3 = empty;
    goto LABEL_5;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 0x40000000;
  applier[2] = sub_10003AED4;
  applier[3] = &unk_10007A8F0;
  applier[4] = &v9;
  applier[5] = v4;
  xpc_array_apply(v5, applier);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  if ((v6 & 1) == 0)
  {
    empty = *a3;
LABEL_5:
    xpc_array_set_string(empty, 0xFFFFFFFFFFFFFFFFLL, v4);
  }

  CFAllocatorDeallocate(0, v4);
}

BOOL sub_10003AED4(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  v5 = strcmp(string_ptr, *(a1 + 40));
  if (!v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v5 != 0;
}

void sub_10003AF54(uint64_t *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    __SC_log_send();
  }

  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    *(v7 + 8) = v8;
  }

  *v8 = v7;
  v9 = a1[6];
  if (!a1[5])
  {
    if (!v9)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v9)
  {
LABEL_9:
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      pid = xpc_connection_get_pid(a1[2]);
      v16 = a1[6];
      *v14 = 67109378;
      *(v14 + 4) = pid;
      *(v14 + 8) = 2112;
      *(v14 + 10) = v16;
      __SC_log_send();
    }

    CFDictionaryApplyFunction(a1[6], sub_10003B294, 0);
    v17 = a1[6];
    if (v17)
    {
      CFRelease(v17);
      a1[6] = 0;
    }
  }

  if (a1[5])
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = xpc_connection_get_pid(a1[2]);
      v24 = a1[5];
      *v22 = 67109378;
      *(v22 + 4) = v23;
      *(v22 + 8) = 2112;
      *(v22 + 10) = v24;
      __SC_log_send();
    }

    CFDictionaryApplyFunction(a1[5], sub_10003B300, 0);
    v25 = a1[5];
    if (v25)
    {
      CFRelease(v25);
      a1[5] = 0;
    }
  }

  if (qword_100081968)
  {
    if (qword_100081970)
    {
      dispatch_async(qword_100081968, qword_100081970);
    }
  }
}

void sub_10003B294(__CFString *a1)
{
  sub_10003ABCC(a1);

  sub_10003AD1C(a1);
}

void sub_10003B300(__CFString *a1)
{
  sub_10003ABCC(a1);

  sub_10003AC88(a1);
}

os_state_data_s *__cdecl sub_10003B36C(id a1, os_state_hints_s *a2)
{

  return sub_10003B3C4();
}

_DWORD *sub_10003B3C4()
{
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  for (i = S_ControlSessions; i; i = *i)
  {
    if (*(i + 40) || *(i + 48))
    {
      v26 = 0;
      v27 = 0;
      v23 = 0;
      v24 = 0;
      v2 = CFNumberCreate(0, kCFNumberSInt32Type, (i + 24));
      v3 = CFStringCreateWithCString(0, *(i + 32), 0x8000100u);
      keys[0] = @"ProcessID";
      keys[1] = @"ProcessName";
      values[0] = v2;
      values[1] = v3;
      v4 = *(i + 40);
      if (v4)
      {
        v26 = @"Assertions";
        v23 = v4;
        v5 = &v24;
        v6 = &v27;
        v7 = 3;
      }

      else
      {
        v5 = &v23;
        v6 = &v26;
        v7 = 2;
      }

      v8 = *(i + 48);
      if (v8)
      {
        *v6 = @"Advisories";
        *v5 = v8;
        ++v7;
      }

      v9 = CFDictionaryCreate(0, keys, values, v7, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFRelease(v2);
      CFRelease(v3);
      if (v9)
      {
        CFArrayAppendValue(Mutable, v9);
        CFRelease(v9);
      }
    }
  }

  Data = CFPropertyListCreateData(0, Mutable, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  CFRelease(Mutable);
  Length = CFDataGetLength(Data);
  v12 = Length + 200;
  if ((Length + 200) <= 0x8000)
  {
    v19 = Length;
    v18 = malloc_type_calloc(1uLL, v12, 0x5FAEB7F9uLL);
    *v18 = 1;
    v18[1] = v19;
    __strlcpy_chk();
    BytePtr = CFDataGetBytePtr(Data);
    memcpy(v18 + 50, BytePtr, v19);
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136315650;
      *(v17 + 4) = "IPMonitorControlCopyOSStateData";
      *(v17 + 12) = 2048;
      *(v17 + 14) = v12;
      *(v17 + 22) = 1024;
      *(v17 + 24) = 0x8000;
      __SC_log_send();
    }

    v18 = 0;
  }

  CFRelease(Data);
  return v18;
}

void sub_10003B6E0(void *key, uint64_t a2, CFDictionaryRef *a3)
{
  v5 = qword_100081990;
  if (!qword_100081990)
  {
    valuePtr = 2;
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    qword_100081990 = v5;
  }

  if (!*a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a3 = Mutable;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(*a3, key);
  if (!Value || CFNumberCompare(v5, Value, 0) == kCFCompareGreaterThan)
  {
    Mutable = *a3;
LABEL_8:
    CFDictionarySetValue(Mutable, key, v5);
  }
}

void sub_10003B7C8(void *key, const __CFNumber *a2, CFDictionaryRef *a3)
{
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, key);
    if (Value && CFNumberCompare(a2, Value, 0) != kCFCompareGreaterThan)
    {
      return;
    }

    Mutable = *a3;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *a3 = Mutable;
  }

  CFDictionarySetValue(Mutable, key, a2);
}

uint64_t sub_10003D258(int a1, const void *a2, void *a3, size_t a4)
{
  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID || a1 != 2 && (a1 != 30 || a4 < 0x10) || (_SC_cfstring_to_cstring(), result = inet_pton(a1, v10, a3), result != 1))
  {
    bzero(a3, a4);
    return 0;
  }

  return result;
}

const void *sub_10003D338(void *a1)
{
  v1 = sub_100010FF4(a1, kSCEntNetIPv4);
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"Service");
  if (!Value)
  {
    return 0;
  }

  v3 = CFDictionaryGetValue(Value, @"Hostname");
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return v4;
}

BOOL sub_10003D3D4(void *a1)
{
  v2 = sub_100010FF4(a1, kSCEntNetIPv4);
  if (!v2)
  {
    v2 = sub_100010FF4(a1, kSCEntNetIPv6);
    if (!v2)
    {
      return 0;
    }
  }

  v3 = sub_10001C324(v2);
  if (!v3)
  {
    return 0;
  }

  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v3, kSCEntNetLink);
  v5 = SCDynamicStoreCopyValue(qword_1000819A8, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  if (!v5)
  {
    return 0;
  }

  v6 = sub_10003ED9C(v5);
  CFRelease(v5);
  return v6;
}

void sub_10003D4DC()
{
  sub_100014EE8(0, 0, 0);
  if (qword_1000819A8)
  {
    if (qword_100081AD8 != -1)
    {
      sub_100067DFC();
    }

    dispatch_async(qword_100081AE0, &stru_10007A9E8);

    process_AgentMonitor();
  }
}

void sub_10003D5A0(id a1)
{

  sub_10003D5F8();
}

void sub_10003D5F8()
{
  values[0] = qword_1000819E0;
  values[1] = qword_1000819E8;
  values[2] = qword_1000819F0;
  v0 = CFArrayCreate(0, values, 3, &kCFTypeArrayCallBacks);
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  sub_10000FEC8(kSCCompAnyRegex, Mutable);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetPPP);
  CFArrayAppendValue(Mutable, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v3 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetVPN);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v3);
  v4 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetInterface);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v4);
  sub_100010114(kSCCompAnyRegex, Mutable);
  sub_1000491F4(Mutable);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetInterfaceDelegation);
  CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  if (SCDynamicStoreSetNotificationKeys(qword_1000819A8, v0, Mutable))
  {
    v6 = qword_1000819A8;
    if (qword_100081AD8 != -1)
    {
      sub_100067E60();
    }

    if (SCDynamicStoreSetDispatchQueue(v6, qword_100081AE0))
    {
      sub_10003F998(v0, Mutable);
      goto LABEL_14;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_13:
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = SCError();
      v13 = SCErrorString(v12);
      *v11 = 136315138;
      *(v11 + 4) = v13;
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  CFRelease(v0);
  CFRelease(Mutable);
}

void sub_10003D9A0(CFBundleRef bundle, int a2)
{
  if (qword_100081AD8 != -1)
  {
    sub_100067DFC();
  }

  v4 = qword_100081AE0;
  InfoDictionary = CFBundleGetInfoDictionary(bundle);
  if (InfoDictionary)
  {
    Value = CFDictionaryGetValue(InfoDictionary, @"AppendStateArrayToSetupArray");
    TypeID = CFBooleanGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      v8 = CFBooleanGetValue(Value);
    }

    else
    {
      v8 = 0;
    }

    dword_1000819B0 = v8;
  }

  if (a2)
  {
    byte_1000819B4 = 1;
    byte_1000819B5 = 1;
  }

  if (qword_100081AD8 != -1)
  {
    sub_100067DFC();
  }

  sub_1000583F0();
  sub_10004619C();
  sub_100037850(bundle, &stru_10007AA28);
  sub_1000471F0(bundle, &stru_10007AA88);
  sub_100035790(bundle);
  sub_100047ED0(bundle);
  sub_10003E690();
  sub_10003EBB4();
  if (qword_1000819A8)
  {
    sub_100035420(v4, sub_10003ED04);
  }

  sub_100047F90(v4);
  if (&_wd_endpoint_add_queue)
  {
    wd_endpoint_add_queue();
  }
}

void sub_10003DB40(id a1, unsigned __int8 a2)
{
  if (qword_100081AE8 != -1)
  {
    sub_100067EBC();
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10003DC04;
  v3[3] = &unk_10007AA48;
  v4 = a2;
  dispatch_async(qword_100081AF0, v3);
}

void sub_10003DC04(uint64_t a1)
{
  byte_100081698 = *(a1 + 32);
  if (!byte_100081698 || (dword_1000819B8 & 2) != 0)
  {

    sub_10003DE18();
  }

  else
  {

    sub_10003DCB0(2);
  }
}

void sub_10003DCB0(int a1)
{
  if (qword_100081AE8 != -1)
  {
    sub_100067EBC();
  }

  dispatch_assert_queue_V2(qword_100081AF0);
  v2 = dword_1000819B8;
  if (!dword_1000819B8)
  {
    gettimeofday(&qword_100081AF8, 0);
    v2 = dword_1000819B8;
  }

  dword_1000819B8 = v2 | a1;
  if (qword_100081B08)
  {
    dispatch_source_cancel(qword_100081B08);
    dispatch_release(qword_100081B08);
    qword_100081B08 = 0;
    byte_100081B10 = 0;
  }

  if (!byte_100081698 || !byte_100081699)
  {
    if (qword_100081AE8 != -1)
    {
      sub_100067EBC();
    }

    qword_100081B08 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100081AF0);
    dispatch_source_set_event_handler(qword_100081B08, &stru_10007AD50);
    v3 = qword_100081B08;
    v4 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    dispatch_resume(qword_100081B08);
  }

  sub_10003DE18();
}

void sub_10003DE18()
{
  if (qword_100081AE8 != -1)
  {
    sub_100067EBC();
  }

  dispatch_assert_queue_V2(qword_100081AF0);
  if (dword_1000819B8)
  {
    if ((byte_100081B10 & 1) != 0 || byte_100081698 && byte_100081699)
    {
      if (qword_100081B08)
      {
        dispatch_source_cancel(qword_100081B08);
        dispatch_release(qword_100081B08);
        qword_100081B08 = 0;
        byte_100081B10 = 0;
      }

      v50.tv_sec = 0;
      *&v50.tv_usec = 0;
      gettimeofday(&v50, 0);
      tv_sec = v50.tv_sec;
      v1 = qword_100081AF8;
      v2 = v50.tv_usec - dword_100081B00;
      if (v50.tv_usec >= dword_100081B00)
      {
        v3 = v50.tv_usec - dword_100081B00;
      }

      else
      {
        v3 = v50.tv_usec - dword_100081B00 + 1000000;
      }

      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v4 = tv_sec - v1 + (v2 >> 31);
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7);
        v8 = *__error();
        v9 = _os_log_pack_fill();
        v10 = "delayed";
        v11 = byte_100081B10 == 0;
        v12 = dword_1000819B8;
        *v9 = 136315906;
        if (!v11)
        {
          v10 = "timeout";
        }

        *(v9 + 4) = v10;
        *(v9 + 12) = 2048;
        *(v9 + 14) = v4;
        *(v9 + 22) = 1024;
        *(v9 + 24) = v3;
        *(v9 + 28) = 1024;
        *(v9 + 30) = v12;
        __SC_log_send();
      }

      v13 = dword_1000819B8;
      if ((dword_1000819B8 & 2) != 0)
      {
        process_AgentMonitor_DNS();
        v13 = dword_1000819B8;
      }

      if (v13)
      {
        v14 = notify_post("com.apple.system.config.network_change.nwi");
        if (v14)
        {
          v15 = v14;
          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v16 = _os_log_pack_size();
            __chkstk_darwin(v16, v17, v18);
            v19 = *__error();
            v20 = _os_log_pack_fill();
            *v20 = 67109120;
            v20[1] = v15;
            __SC_log_send();
          }
        }
      }

      if ((dword_1000819B8 & 2) != 0)
      {
        v21 = notify_post("com.apple.system.config.network_change.dns");
        if (v21)
        {
          v22 = v21;
          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v23 = _os_log_pack_size();
            __chkstk_darwin(v23, v24, v25);
            v26 = *__error();
            v27 = _os_log_pack_fill();
            *v27 = 67109120;
            v27[1] = v22;
            __SC_log_send();
          }
        }
      }

      if ((dword_1000819B8 & 4) != 0)
      {
        process_AgentMonitor_Proxy();
        v28 = notify_post("com.apple.system.config.proxy_change");
        if (v28)
        {
          v29 = v28;
          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v30 = _os_log_pack_size();
            __chkstk_darwin(v30, v31, v32);
            v33 = *__error();
            v34 = _os_log_pack_fill();
            *v34 = 67109120;
            v34[1] = v29;
            __SC_log_send();
          }
        }
      }

      v35 = dword_1000819B8;
      if ((dword_1000819B8 & 0x10) != 0)
      {
        if (qword_100081A50 || qword_100081A58 || qword_100081A60)
        {
          sub_100049298(qword_100081A50, qword_100081A58, qword_100081A60);
          if (qword_100081A50)
          {
            CFRelease(qword_100081A50);
            qword_100081A50 = 0;
          }

          if (qword_100081A58)
          {
            CFRelease(qword_100081A58);
            qword_100081A58 = 0;
          }

          if (qword_100081A60)
          {
            CFRelease(qword_100081A60);
            qword_100081A60 = 0;
          }
        }

        v35 = dword_1000819B8 & 0xFFFFFFEF;
        dword_1000819B8 &= ~0x10u;
      }

      if (v35)
      {
        v36 = notify_post("com.apple.system.config.network_change");
        if (v36)
        {
          v37 = v36;
          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v38 = _os_log_pack_size();
            __chkstk_darwin(v38, v39, v40);
            v41 = *__error();
            v42 = _os_log_pack_fill();
            *v42 = 67109120;
            v42[1] = v37;
            __SC_log_send();
          }
        }
      }

      dword_1000819B8 = 0;
    }

    else
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v43 = _os_log_pack_size();
        __chkstk_darwin(v43, v44, v45);
        v46 = *__error();
        v47 = _os_log_pack_fill();
        if (byte_100081698)
        {
          v48 = "DNS";
        }

        else
        {
          v48 = "!DNS";
        }

        v49 = "nwi";
        if (!byte_100081699)
        {
          v49 = "!nwi";
        }

        *v47 = 136315394;
        *(v47 + 4) = v48;
        *(v47 + 12) = 2080;
        *(v47 + 14) = v49;
        __SC_log_send();
      }
    }
  }
}

void sub_10003E568(id a1, unsigned __int8 a2)
{
  if (qword_100081AE8 != -1)
  {
    sub_100067EBC();
  }

  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_10003E62C;
  v3[3] = &unk_10007AAA8;
  v4 = a2;
  dispatch_async(qword_100081AF0, v3);
}

void sub_10003E62C(uint64_t a1)
{
  byte_100081699 = *(a1 + 32);

  sub_10003DE18();
}

char *sub_10003E690()
{
  v17 = 0;
  *v19 = 0x2800000001;
  v18 = 4;
  sysctl(v19, 2u, &v17, &v18, 0, 0);
  if (v17)
  {
    byte_1000819D8 = 1;
  }

  else
  {
    if (sub_100046558())
    {
      if (qword_100081B18 != -1)
      {
        sub_100067F20();
      }

      v0 = byte_100081B14;
    }

    else
    {
      v0 = 0;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      v5 = _os_log_pack_fill();
      v6 = "";
      if (v0)
      {
        v6 = "not ";
      }

      *v5 = 136315138;
      *(v5 + 4) = v6;
      __SC_log_send();
    }

    if ((v0 & 1) == 0)
    {
      v7 = sub_10001539C();
      if (v7 != -1)
      {
        v8 = v7;
        sub_100046B00(v7);
        close(v8);
      }
    }
  }

  qword_1000819A8 = SCDynamicStoreCreate(0, @"IPMonitor", sub_10000DC80, 0);
  if (qword_1000819A8)
  {
    qword_1000819C8 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    qword_100081A80 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv6);
    qword_100081AB8 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
    qword_100081AD0 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetProxies);
    qword_1000819E0 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
    qword_100081A10 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, &stru_10007C038, 0);
    qword_100081A18 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, &stru_10007C038, 0);
    qword_100081A08 = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
    qword_1000819C0 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qword_100081A40 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qword_100081A48 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    qword_1000819F0 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@", kSCDynamicStoreDomainState, kSCCompNetwork, @"MulticastDNS");
    qword_1000819E8 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@", kSCDynamicStoreDomainState, kSCCompNetwork, @"PrivateDNS");
    sub_100018CCC(0, 0, 0, 0, 0, 0, 0);
    SCDynamicStoreRemoveValue(qword_1000819A8, qword_100081AB8);
    qword_100081B20 = dispatch_queue_create("com.apple.SystemConfiguration.IPMonitor.proxy", 0);
    return _scprefs_observer_watch(2, "com.apple.SystemConfiguration.plist", qword_100081B20, &stru_10007ADD0);
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = SCError();
      v16 = SCErrorString(v15);
      *v14 = 136315138;
      *(v14 + 4) = v16;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_10003EBB4()
{
  if (qword_100081AD8 != -1)
  {
    sub_100067DFC();
  }

  result = sub_100038FCC(qword_100081AE0, &stru_10007AE10);
  if (!result)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      *_os_log_pack_fill() = 0;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_10003ED04()
{
  v0 = CFArrayCreate(0, &off_10007AE30, 1, &kCFTypeArrayCallBacks);
  sub_10000DCDC(qword_1000819A8, v0, 0);

  CFRelease(v0);
}

BOOL sub_10003ED9C(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID && (Value = CFDictionaryGetValue(a1, kSCPropNetLinkExpensive), v4 = CFBooleanGetTypeID(), Value) && CFGetTypeID(Value) == v4)
  {
    return CFBooleanGetValue(Value) != 0;
  }

  else
  {
    return 0;
  }
}

void sub_10003EE58(uint64_t a1, const void *a2, const void *a3)
{
  v6 = *(a1 + 8);
  v10.length = CFArrayGetCount(v6);
  v10.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v6, v10, a2);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(v6, FirstIndexOfValue);
  }

  v8 = *(a1 + 16);

  CFDictionarySetValue(v8, a2, a3);
}

void sub_10003EF0C(unsigned int *a1)
{
  v1 = sub_10003F8A8(a1);
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 138412290;
    *(v6 + 4) = v1;
    __SC_log_send();
  }

  CFRelease(v1);
}

char *sub_10003F048(uint64_t a1, int *a2, const void *a3, int a4, int a5, char a6)
{
  v12 = (*a1)(0);
  if (*a2 < 1)
  {
    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = a2 + v12;
  while (1)
  {
    v16 = *(v15 + 1);
    if (!v16 || *(v15 + 2))
    {
      goto LABEL_5;
    }

    if (a6)
    {
      if (v16 == a5)
      {
        goto LABEL_5;
      }
    }

    else if (v16 != a5)
    {
      goto LABEL_5;
    }

    v17 = *(v15 + 8);
    if ((v17 & 2) != 0)
    {
      v18 = (*(a1 + 24))(v15);
      if (!memcmp(v18, a3, *(a1 + 76)))
      {
        goto LABEL_5;
      }

      v17 = *(v15 + 8);
    }

    if ((v17 & 4) != 0)
    {
      break;
    }

    if ((*(a1 + 48))(v15, a3))
    {
      v19 = *v15;
      if (*v15 == a4)
      {
        return v15;
      }

      if (v19 <= a4 && (!v14 || v19 > *v14))
      {
        v14 = v15;
      }
    }

LABEL_5:
    ++v13;
    v15 += *(a1 + 72);
    if (v13 >= *a2)
    {
      return v14;
    }
  }

  if (*(a1 + 80) != a4)
  {
    goto LABEL_5;
  }

  v20 = (*(a1 + 40))(v15);
  if (memcmp(v20, a3, *(a1 + 76)))
  {
    goto LABEL_5;
  }

  return v15;
}

void sub_10003F2CC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_10003F574(a2, Mutable);
  if (a3)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      *v10 = 136315394;
      *(v10 + 4) = a3;
      *(v10 + 12) = 2112;
      *(v10 + 14) = Mutable;
LABEL_10:
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 138412290;
      *(v15 + 4) = Mutable;
      goto LABEL_10;
    }
  }

  CFRelease(Mutable);
}

__CFString *sub_10003F500(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_10003F574(a1, Mutable);
  return Mutable;
}

void sub_10003F574(unsigned int *a1, CFMutableStringRef theString)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  v6 = *(a1 + 22);
  v7 = *(a1 + 23);
  if ((a1[4] & 4) != 0)
  {
    CFStringAppendFormat(theString, 0, @"Host %d.%d.%d.%d", v4, v5, *(a1 + 22), v7);
  }

  else
  {
    CFStringAppendFormat(theString, 0, @"Net %d.%d.%d.%d", v4, v5, *(a1 + 22), v7);
    CFStringAppendFormat(theString, 0, @"/%d", *a1, v8, v9, v10);
  }

  if ((a1[4] & 2) != 0)
  {
    CFStringAppendFormat(theString, 0, @" Gate %d.%d.%d.%d", *(a1 + 28), *(a1 + 29), *(a1 + 30), *(a1 + 31));
  }

  sub_10003F6BC(a1, theString);
  if (a1[8])
  {
    CFStringAppendFormat(theString, 0, @" Ifa %d.%d.%d.%d", a1[8], BYTE1(a1[8]), BYTE2(a1[8]), HIBYTE(a1[8]));
  }

  sub_10003F774(a1, theString);
}

void sub_10003F6BC(uint64_t a1, __CFString *a2)
{
  if (sub_100038C50(*(a1 + 4), v4))
  {
    CFStringAppendFormat(a2, 0, @" Ifp %s", v4);
  }

  if (sub_100038C50(*(a1 + 8), v4))
  {
    CFStringAppendFormat(a2, 0, @" !Ifp %s", v4);
  }
}

void sub_10003F774(uint64_t a1, CFMutableStringRef theString)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    v6 = @" [null]";
LABEL_16:

    CFStringAppend(theString, v6);
    return;
  }

  v4 = *(a1 + 15) << 24;
  if (v4)
  {
    if (v4 == 50331648)
    {
      v5 = @" [never]";
    }

    else
    {
      if (v4 != 0x2000000)
      {
        goto LABEL_10;
      }

      v5 = @" [last]";
    }
  }

  else
  {
    v5 = @" [first]";
  }

  CFStringAppend(theString, v5);
LABEL_10:
  v7 = *(a1 + 16);
  if ((v7 & 0x10) != 0)
  {
    CFStringAppend(theString, @" [kern]");
    v7 = *(a1 + 16);
  }

  if (v7)
  {
    CFStringAppend(theString, @" [SCOPED]");
  }

  if ((*(a1 + 18) & 4) != 0)
  {
    v6 = @" [force]";
    goto LABEL_16;
  }
}

__CFString *sub_10003F8A8(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<IPv4RouteList[%d]> = {", *a1);
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = a1 + 3;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"\n%2d. ", v3);
      sub_10003F574(v4, Mutable);
      v3 = (v3 + 1);
      v4 += 9;
    }

    while (v3 < *a1);
  }

  CFStringAppend(Mutable, @"\n}");
  return Mutable;
}

void sub_10003F998(CFArrayRef keys, CFArrayRef patterns)
{
  v2 = SCDynamicStoreCopyMultiple(qword_1000819A8, keys, patterns);
  if (v2)
  {
    v3 = v2;
    v4 = sub_10003FC98(v2);
    CFRelease(v3);
    if (v4)
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7);
        v8 = *__error();
        v9 = _os_log_pack_fill();
        Count = CFArrayGetCount(v4);
        *v9 = 134218242;
        *(v9 + 4) = Count;
        *(v9 + 12) = 2112;
        *(v9 + 14) = v4;
        __SC_log_send();
      }

      sub_10000DCDC(qword_1000819A8, v4, 0);
      CFRelease(v4);
      return;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_15:
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315138;
      *(v15 + 4) = "prime_notifications";
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_15;
    }
  }
}

CFArrayRef sub_10003FC98(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  __chkstk_darwin(Count, v3, v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v6 >= 0x200)
  {
    v8 = 512;
  }

  else
  {
    v8 = v6;
  }

  bzero(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  CFDictionaryGetKeysAndValues(a1, v7, 0);
  return CFArrayCreate(0, v7, v5, &kCFTypeArrayCallBacks);
}

void sub_10003FD7C(__int16 a1, CFTypeRef cf)
{
  CFRetain(cf);
  if (qword_100081AE8 != -1)
  {
    sub_100067EBC();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10004021C;
  block[3] = &unk_10007ABA8;
  v5 = a1;
  block[4] = cf;
  dispatch_async(qword_100081AF0, block);
}

void sub_10003FE50(const __CFArray *a1, const void *a2)
{
  if (qword_1000819C0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *keys = 0u;
    v20 = 0u;
    Count = CFDictionaryGetCount(qword_1000819C0);
    if (Count >= 11)
    {
      v3 = malloc_type_malloc(16 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(qword_1000819C0, v3, &v3[Count]);
    }

    else
    {
      v3 = keys;
      CFDictionaryGetKeysAndValues(qword_1000819C0, keys, &keys[Count]);
      if (Count < 1)
      {
        return;
      }
    }

    v4 = 0;
    v5 = kSCEntNetIPv4;
    v6 = &v3[Count];
    v16 = v3;
    do
    {
      v7 = v3[v4];
      v8 = v6[v4];
      Value = CFDictionaryGetValue(v8, v5);
      if (Value || (Value = CFDictionaryGetValue(v8, kSCEntNetIPv6)) != 0)
      {
        v10 = sub_10001C324(Value);
        if (v10)
        {
          if (CFEqual(v10, a2))
          {
            if (!qword_100081998)
            {
              qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v11 = _os_log_pack_size();
              __chkstk_darwin(v11, v12, v13);
              v14 = *__error();
              v15 = _os_log_pack_fill();
              *v15 = 138412546;
              *(v15 + 4) = v7;
              *(v15 + 12) = 2112;
              *(v15 + 14) = a2;
              __SC_log_send();
              v3 = v16;
              v5 = kSCEntNetIPv4;
            }

            sub_100010060(a1, v7);
          }
        }
      }

      ++v4;
    }

    while (Count != v4);
    if (v3 != keys)
    {
      free(v3);
    }
  }
}

uint64_t sub_100040118(const __CFDictionary *a1, void *key, const void *a3)
{
  v5 = 0x1FFFFFFLL;
  if (sub_100010FF4(key, a3))
  {
    valuePtr = 0x1FFFFFF;
    Value = CFDictionaryGetValue(a1, key);
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
      {
        return valuePtr;
      }

      else
      {
        return 0x1000000;
      }
    }
  }

  return v5;
}

void sub_1000401C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  sub_10003DCB0(v1);
}

void sub_10004021C(uint64_t a1)
{
  sub_100040290(*(a1 + 40), *(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_100040290(int a1, void *a2)
{
  if (a1 == 2)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 138412290;
      *(v17 + 4) = a2;
      __SC_log_send();
    }

    sub_1000405FC(&qword_100081A50, a2);
    sub_1000405FC(&qword_100081A58, a2);
    sub_10000FE40(&qword_100081A60, a2);
  }

  else
  {
    if (a1 == 1)
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        *v12 = 138412290;
        *(v12 + 4) = a2;
        __SC_log_send();
      }

      if (!qword_100081A50 || !CFSetContainsValue(qword_100081A50, a2))
      {
        sub_10000FE40(&qword_100081A58, a2);
      }
    }

    else
    {
      if (a1)
      {
        return;
      }

      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5);
        v6 = *__error();
        v7 = _os_log_pack_fill();
        *v7 = 138412290;
        *(v7 + 4) = a2;
        __SC_log_send();
      }

      sub_10000FE40(&qword_100081A50, a2);
      sub_1000405FC(&qword_100081A58, a2);
    }

    sub_1000405FC(&qword_100081A60, a2);
  }
}

void sub_1000405FC(CFTypeRef *a1, const void *a2)
{
  v3 = *a1;
  if (v3)
  {
    CFSetRemoveValue(v3, a2);
    if (!CFSetGetCount(*a1))
    {
      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }
    }
  }
}

uint64_t sub_100040678(CFTypeRef cf1, _BYTE *a2)
{
  if (cf1)
  {
    v4 = &dword_10007AC20;
    v5 = 4;
    while (!CFEqual(cf1, **(v4 - 1)))
    {
      v4 += 4;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    if (a2)
    {
      *a2 = 1;
    }

    return *v4;
  }

  else
  {
LABEL_5:
    if (a2)
    {
      *a2 = 0;
    }

    return 0x1000000;
  }
}

void sub_100040728(uint64_t a1, CFTypeRef cf1, uint64_t a3, const __CFDictionary *a4)
{
  v4 = a4;
  if (!a4)
  {
    goto LABEL_11;
  }

  if (!CFEqual(cf1, kSCEntNetIPv4))
  {
    if (CFEqual(cf1, kSCEntNetIPv6))
    {
      v10 = sub_1000118D0(v4);
      if (v10)
      {
        v9 = sub_100040944(v10);
        goto LABEL_8;
      }
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  v8 = sub_1000118D0(v4);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = sub_10003F8A8(v8);
LABEL_8:
  v11 = v9;
  Value = CFDictionaryGetValue(v4, @"Service");
  if (Value)
  {
    CFStringAppendFormat(v11, 0, @"\n<Service> = %@", Value);
  }

  v4 = v11;
LABEL_12:
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    if (v4)
    {
      v13 = v4;
    }

    else
    {
      v13 = @"<none>";
    }

    v14 = _os_log_pack_size();
    __chkstk_darwin(v14, v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 138413058;
    *(v18 + 4) = a1;
    *(v18 + 12) = 2112;
    *(v18 + 14) = a3;
    *(v18 + 22) = 2112;
    *(v18 + 24) = cf1;
    *(v18 + 32) = 2112;
    *(v18 + 34) = v13;
    __SC_log_send();
  }

  if (v11)
  {
    CFRelease(v11);
  }
}

__CFString *sub_100040944(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"<IPv6RouteList[%d]> = {", *a1);
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = a1 + 3;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"\n%2d. ", v3);
      sub_100040A34(v4, Mutable);
      v3 = (v3 + 1);
      v4 += 17;
    }

    while (v3 < *a1);
  }

  CFStringAppend(Mutable, @"\n}");
  return Mutable;
}

void sub_100040A34(unsigned int *a1, CFMutableStringRef theString)
{
  if ((a1[4] & 4) != 0)
  {
    CFStringAppend(theString, @"Host ");
    v5 = inet_ntop(30, a1 + 5, v9, 0x2Eu);
    CFStringAppendCString(theString, v5, 0x600u);
  }

  else
  {
    CFStringAppend(theString, @"Net ");
    v4 = inet_ntop(30, a1 + 5, v9, 0x2Eu);
    CFStringAppendCString(theString, v4, 0x600u);
    CFStringAppendFormat(theString, 0, @"/%d", *a1);
  }

  if ((a1[4] & 2) != 0)
  {
    CFStringAppend(theString, @" Gate ");
    v6 = inet_ntop(30, a1 + 9, v9, 0x2Eu);
    CFStringAppendCString(theString, v6, 0x600u);
  }

  sub_10003F6BC(a1, theString);
  if (*(a1 + 13) != *in6addr_any.__u6_addr8 || *(a1 + 15) != *&in6addr_any.__u6_addr32[2])
  {
    CFStringAppend(theString, @" Ifa ");
    v8 = inet_ntop(30, a1 + 13, v9, 0x2Eu);
    CFStringAppendCString(theString, v8, 0x600u);
  }

  sub_10003F774(a1, theString);
}

CFDictionaryRef sub_100040BD0(int a1, const __CFDictionary *a2, CFDictionaryRef theDict, const __CFNumber *a4)
{
  if (theDict)
  {
    v8 = &kSCPropNetIPv4Router;
    keys = 0;
    v76 = 0;
    if (a1 != 2)
    {
      v8 = &kSCPropNetIPv6Router;
    }

    v9 = *v8;
    v10 = &kSCPropNetIPv4AdditionalRoutes;
    if (a1 != 2)
    {
      v10 = &kSCPropNetIPv6AdditionalRoutes;
    }

    v11 = *v10;
    Value = CFDictionaryGetValue(theDict, v9);
    if (Value)
    {
      v13 = Value;
      if (sub_10003D258(a1, Value, &keys, 0x10uLL))
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = CFDictionaryGetValue(theDict, v11);
    TypeID = CFArrayGetTypeID();
    if (v16)
    {
      if (CFGetTypeID(v16) == TypeID)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    if (v14 | v18)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
      v20 = MutableCopy;
      if (v14)
      {
        CFDictionarySetValue(MutableCopy, v9, v14);
      }

      if (v18)
      {
        v21 = CFDictionaryGetValue(a2, v11);
        v22 = CFArrayGetTypeID();
        if (v21 && CFGetTypeID(v21) == v22)
        {
          v23 = CFArrayCreateMutableCopy(0, 0, v18);
          v87.length = CFArrayGetCount(v21);
          v87.location = 0;
          CFArrayAppendArray(v23, v21, v87);
          CFDictionarySetValue(v20, v11, v23);
          if (v23)
          {
            CFRelease(v23);
          }
        }

        else
        {
          CFDictionarySetValue(v20, v11, v18);
        }
      }

      v15 = v20;
    }

    else
    {
      v15 = 0;
      v20 = a2;
    }

    a2 = v20;
  }

  else
  {
    v15 = 0;
  }

  if (a1 == 2)
  {
    keys = 0x500000000;
    LOWORD(v76) = 0;
    v24 = sub_100041458(&keys, a2, a4);
    if (v24)
    {
      v25 = v24;
      v26 = CFDataCreate(0, v24, 36 * *v24 + 12);
      if (v25 == &keys)
      {
        goto LABEL_95;
      }

      v27 = v25;
      goto LABEL_33;
    }

    goto LABEL_94;
  }

  keys = 0x300000000;
  LOWORD(v76) = 0;
  valuePtr = 0x1000000;
  v74 = 0;
  v82 = in6addr_any;
  if (!a2)
  {
    goto LABEL_94;
  }

  v84 = 0uLL;
  v28 = sub_100041B7C(a2, kSCPropInterfaceName, v83);
  if (!v28)
  {
    goto LABEL_94;
  }

  v29 = v28;
  v30 = sub_100013354(v83);
  if (!v30)
  {
    goto LABEL_94;
  }

  v31 = v30;
  v32 = sub_100013930(a2, v29);
  v33 = CFDictionaryGetValue(a2, kSCPropNetIPv6Router);
  if (!sub_10003D258(30, v33, &v82, 0x10uLL))
  {
    sub_1000424BC(a2, kSCPropNetIPv6DestAddresses, &v82);
  }

  if (!sub_1000424BC(a2, kSCPropNetIPv6Addresses, &v84) || (vmaxv_u16(vmovn_s32(vtstq_s32(v84, v84))) & 1) == 0)
  {
LABEL_94:
    v26 = 0;
    goto LABEL_95;
  }

  v34 = CFDictionaryGetValue(a2, kSCPropNetIPv6PrefixLength);
  v35 = CFArrayGetTypeID();
  if (v34)
  {
    if (CFGetTypeID(v34) == v35 && CFArrayGetCount(v34) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v34, 0);
      if (sub_100042B18(ValueAtIndex, &v74))
      {
        if (v84.u8[0] == 254)
        {
          if ((v84.i8[1] & 0xC0) != 0x80 && v74 <= 0x80)
          {
            goto LABEL_48;
          }
        }

        else if (v74 < 0x81)
        {
LABEL_48:
          v71 = 0;
          v37 = 1;
          goto LABEL_51;
        }
      }
    }
  }

  v37 = 0;
  v74 = 0;
  v71 = 1;
LABEL_51:
  if (a4)
  {
    CFNumberGetValue(a4, kCFNumberSInt32Type, &valuePtr);
  }

  if (vmaxv_u16(vmovn_s32(vtstq_s32(v82, v82))))
  {
    v38 = sub_100038CD8();
    v70 = v31 != v38;
    if (v31 != v38)
    {
      ++v37;
    }

    if (v74 != 128 && v82.i64[1] == v84.i64[1] && v82.i64[0] == v84.i64[0])
    {
      v41 = 0;
    }

    else
    {
      v41 = 2;
    }

    if (!a4 && sub_100041DA0(a2))
    {
      valuePtr = 0;
    }
  }

  else
  {
    v41 = 0;
    v70 = 0;
  }

  v68 = sub_100041E78(a2, @"IsNULL");
  if (v68)
  {
    v42 = v41 | 8;
  }

  else
  {
    v42 = v41;
  }

  v43 = valuePtr;
  if (valuePtr == 50331648)
  {
    v67 = 0;
    v42 |= 1u;
    v43 = 0x2000000;
  }

  else if (valuePtr == 0x4000000)
  {
    v43 = 50331648;
    valuePtr = 50331648;
    v42 |= 1u;
    v67 = 1;
  }

  else
  {
    v67 = 0;
  }

  if (!v32)
  {
    v44 = 0;
    range = 0;
    theArray = 0;
    Count = 0;
    goto LABEL_91;
  }

  v44 = CFDictionaryGetValue(a2, kSCPropNetIPv6AdditionalRoutes);
  v45 = CFArrayGetTypeID();
  if (!v44)
  {
    v46 = v42;
LABEL_84:
    range = 0;
    goto LABEL_85;
  }

  if (CFGetTypeID(v44) != v45)
  {
    v46 = v42;
    v44 = 0;
    goto LABEL_84;
  }

  v46 = v42;
  range = CFArrayGetCount(v44);
  v37 += range;
LABEL_85:
  Count = CFDictionaryGetValue(a2, kSCPropNetIPv6ExcludedRoutes);
  v48 = CFArrayGetTypeID();
  if (Count)
  {
    if (CFGetTypeID(Count) == v48)
    {
      theArray = Count;
      Count = CFArrayGetCount(Count);
      v37 += Count;
    }

    else
    {
      theArray = 0;
      Count = 0;
    }
  }

  else
  {
    theArray = 0;
  }

  v42 = v46;
LABEL_91:
  if (!v37)
  {
    goto LABEL_94;
  }

  v49 = v37 + 1;
  if (v37 >= 3)
  {
    v65 = v43;
    v53 = Count;
    v54 = v44;
    v55 = v42;
    v56 = 68 * v49;
    p_keys = malloc_type_malloc(v56 + 12, 0x1000040243B508CuLL);
    v57 = v56 + 12;
    v42 = v55;
    v44 = v54;
    Count = v53;
    v43 = v65;
    bzero(p_keys, v57);
    p_keys->i32[1] = v49;
  }

  else
  {
    p_keys = &keys;
    __memset_chk();
  }

  p_keys->i32[0] = v49;
  v58 = v67 ^ 1;
  if (v68)
  {
    v58 = 0;
  }

  if ((v58 & 1) == 0)
  {
    if (v68)
    {
      v59 = 1;
    }

    else
    {
      v59 = 4;
    }

    p_keys->i16[4] |= v59;
  }

  if (v70)
  {
    p_keys->i16[4] |= 2u;
    p_keys[1].i32[0] = v31;
    v60 = v84;
    v61 = &v82;
    if ((v42 & 2) == 0)
    {
      v61 = &v84;
    }

    p_keys[3] = *v61;
    p_keys[4] = v60;
    p_keys[1].i32[2] = valuePtr;
    p_keys[1].i16[6] = v42 | 0x10;
    i32 = p_keys[5].i32;
  }

  else
  {
    i32 = &p_keys->i32[3];
  }

  *(i32 + 10) = -32514;
  *i32 = 64;
  i32[1] = v31;
  i32[3] = v43;
  *(i32 + 8) |= 0x10u;
  v72 = (i32 + 17);
  if ((v71 & 1) == 0)
  {
    *(i32 + 42) |= v42 & 8 | 0x10;
    i32[18] = v31;
    v63 = v84;
    *(i32 + 26) = v84;
    *(i32 + 22) = v63;
    sub_10004257C((i32 + 22), v74);
    v64 = v72;
    *v72 = v74;
    *(v64 + 13) = v84;
    v64[3] = v43;
    v72 = v64 + 17;
  }

  if (v44 | theArray)
  {
    values = 0;
    v79 = 0;
    v81 = 0u;
    v78 = p_keys;
    v80 = &v72;
    LODWORD(v81) = v43;
    if (v44)
    {
      LODWORD(v79) = v31;
      values = &v84;
      *(&v81 + 1) = "AdditionalRoutes";
      v85.location = 0;
      v85.length = range;
      CFArrayApplyFunction(v44, v85, sub_100042634, &values);
    }

    if (theArray)
    {
      *(&v81 + 1) = "ExcludedRoutes";
      LODWORD(v79) = 0;
      HIDWORD(v79) = v31;
      values = 0;
      v86.location = 0;
      v86.length = Count;
      CFArrayApplyFunction(theArray, v86, sub_100042634, &values);
    }
  }

  v26 = CFDataCreate(0, p_keys, 68 * p_keys->i32[0] + 12);
  if (p_keys != &keys)
  {
    v27 = p_keys;
LABEL_33:
    free(v27);
  }

LABEL_95:
  if (!v26)
  {
    v51 = 0;
    if (!v15)
    {
      return v51;
    }

    goto LABEL_97;
  }

  keys = @"Service";
  v76 = @"Routes";
  values = a2;
  v78 = v26;
  v51 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFRelease(v26);
  if (v15)
  {
LABEL_97:
    CFRelease(v15);
  }

  return v51;
}

_DWORD *sub_100041458(_DWORD *a1, const __CFDictionary *a2, const __CFNumber *a3)
{
  v68 = 0;
  valuePtr = 0x1000000;
  v65 = 0;
  if (!a2)
  {
    return 0;
  }

  v6 = sub_100041B7C(a2, kSCPropInterfaceName, v69);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_100013354(v69);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_100013930(a2, v7);
  Value = CFDictionaryGetValue(a2, kSCPropNetIPv4Router);
  if (!sub_10003D258(2, Value, &v65, 4uLL))
  {
    sub_100041C24(a2, kSCPropNetIPv4DestAddresses, &v65);
  }

  v12 = sub_100041C24(a2, kSCPropNetIPv4Addresses, &v68 + 4);
  if (v12 && (v12 = sub_100041C24(a2, kSCPropNetIPv4SubnetMasks, &v68)) != 0)
  {
    v13 = v68 & HIDWORD(v68);
    v12 = sub_100041CE4(v68);
    if (v12 < 0)
    {
      v55 = v12;
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v28 = _os_log_pack_size();
        v60 = &v52;
        __chkstk_darwin(v28, v29, v30);
        v31 = *__error();
        v32 = _os_log_pack_fill();
        v33 = v68;
        v34 = BYTE1(v68);
        v35 = BYTE2(v68);
        v36 = BYTE3(v68);
        *v32 = 67110146;
        *(v32 + 4) = v33;
        *(v32 + 8) = 1024;
        *(v32 + 10) = v34;
        *(v32 + 14) = 1024;
        *(v32 + 16) = v35;
        *(v32 + 20) = 1024;
        *(v32 + 22) = v36;
        *(v32 + 26) = 2080;
        *(v32 + 28) = v69;
        __SC_log_send();
        v14 = 1;
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v14 = 1;
      }

      v12 = v55;
    }

    else
    {
      v14 = 0;
      v15 = 1;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v14 = 1;
  }

  if (!HIDWORD(v68))
  {
    return 0;
  }

  v55 = v12;
  if (a3)
  {
    CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
  }

  v54 = v13;
  if (v65)
  {
    if (v68 != -1 && HIDWORD(v68) == v65)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    if (!a3 && sub_100041DA0(a2))
    {
      valuePtr = 0;
    }
  }

  else
  {
    v17 = 0;
    if (valuePtr != 0x2000000 && valuePtr != 50331648 && valuePtr != 0x4000000)
    {
      v17 = 0;
      valuePtr = 0x2000000;
    }
  }

  v19 = sub_100041E78(a2, @"IsNULL");
  if (v19)
  {
    v20 = v17 | 8;
  }

  else
  {
    v20 = v17;
  }

  v21 = valuePtr;
  LODWORD(v60) = v14;
  if (valuePtr == 50331648)
  {
    v57 = 0;
    v20 |= 1u;
    v21 = 0x2000000;
  }

  else if (valuePtr == 0x4000000)
  {
    v21 = 50331648;
    valuePtr = 50331648;
    v20 |= 1u;
    v57 = 1;
  }

  else
  {
    v57 = 0;
  }

  v59 = v20 & 2;
  v22 = v15 + (v59 >> 1);
  v58 = sub_100038CD8();
  if (v9 == v58)
  {
    v56 = 1;
    if (v10)
    {
      goto LABEL_40;
    }

LABEL_47:
    v26 = 0;
    v27 = 0;
    Count = 0;
    v23 = 0;
    if (!a1)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v56 = v65 == 0;
  if (v65)
  {
    v25 = v22 + 1;
  }

  else
  {
    v25 = v15 + ((v20 & 2) >> 1);
  }

  v22 = v25 + 2;
  if (!v10)
  {
    goto LABEL_47;
  }

LABEL_40:
  v23 = CFDictionaryGetValue(a2, kSCPropNetIPv4AdditionalRoutes);
  TypeID = CFArrayGetTypeID();
  if (v23)
  {
    if (CFGetTypeID(v23) == TypeID)
    {
      Count = CFArrayGetCount(v23);
      v22 += Count;
      goto LABEL_55;
    }

    v23 = 0;
  }

  Count = 0;
LABEL_55:
  v27 = CFDictionaryGetValue(a2, kSCPropNetIPv4ExcludedRoutes);
  v37 = CFArrayGetTypeID();
  if (v27)
  {
    if (CFGetTypeID(v27) == v37)
    {
      v26 = CFArrayGetCount(v27);
      v22 += v26;
      if (!a1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
      if (!a1)
      {
LABEL_63:
        v38 = 36 * v22;
        a1 = malloc_type_malloc(v38 + 12, 0x1000040E90652E6uLL);
        bzero(a1, v38 + 12);
        a1[1] = v22;
        goto LABEL_65;
      }
    }
  }

  else
  {
    v26 = 0;
    if (!a1)
    {
      goto LABEL_63;
    }
  }

LABEL_62:
  if (a1[1] < v22)
  {
    goto LABEL_63;
  }

  bzero(a1 + 3, 36 * v22);
LABEL_65:
  *a1 = v22;
  v39 = v57 ^ 1;
  if (v19)
  {
    v39 = 0;
  }

  v40 = v59;
  if ((v39 & 1) == 0)
  {
    if (v19)
    {
      v41 = 1;
    }

    else
    {
      v41 = 4;
    }

    *(a1 + 4) |= v41;
  }

  v42 = a1 + 3;
  v66 = a1 + 3;
  v43 = v60;
  if (!v56)
  {
    *(a1 + 4) |= 2u;
    a1[4] = v9;
    v44 = HIDWORD(v68);
    *(a1 + 14) = v20;
    v45 = v65;
    if (!v40)
    {
      v45 = v44;
    }

    a1[10] = v45;
    a1[11] = v44;
    a1[6] = valuePtr;
    v42 = a1 + 12;
    v66 = a1 + 12;
  }

  if (v9 == v58)
  {
    if (v43)
    {
      goto LABEL_78;
    }

LABEL_85:
    if ((v20 & 8) != 0)
    {
      *(v42 + 8) |= 8u;
    }

    v48 = v68;
    v47 = HIDWORD(v68);
    v42[5] = v54;
    v42[6] = v48;
    *v42 = v55;
    v42[1] = v9;
    v49 = HIDWORD(v68);
    v42[7] = v47;
    v42[8] = v49;
    v42[3] = v21;
    v42 += 9;
    v66 = v42;
    if (!v40)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  if ((v20 & 8) != 0)
  {
    *(v42 + 8) |= 8u;
  }

  *(v42 + 5) = -1;
  *v42 = 32;
  v42[1] = v9;
  v46 = HIDWORD(v68);
  v42[8] = HIDWORD(v68);
  v42[3] = v21;
  if ((v20 & 8) != 0)
  {
    *(v42 + 26) |= 8u;
  }

  *(v42 + 7) = 0xF0000000E0;
  v42[9] = 4;
  v42[10] = v9;
  v42[17] = v46;
  v42[12] = v21;
  v42 += 18;
  v66 = v42;
  if ((v43 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_78:
  if (v40)
  {
LABEL_88:
    if ((v20 & 8) != 0)
    {
      *(v42 + 8) |= 8u;
    }

    v50 = HIDWORD(v68);
    v42[5] = v65;
    v42[6] = -1;
    *v42 = 32;
    v42[1] = v9;
    v51 = HIDWORD(v68);
    v42[7] = v50;
    v42[8] = v51;
    v42[3] = v21;
    v66 = v42 + 9;
  }

LABEL_91:
  if (v27 | v23)
  {
    context[0] = 0;
    v62 = 0;
    v64 = 0u;
    context[1] = a1;
    v63 = &v66;
    LODWORD(v64) = v21;
    if (v23)
    {
      LODWORD(v62) = v9;
      LODWORD(context[0]) = HIDWORD(v68);
      *(&v64 + 1) = "AdditionalRoutes";
      v70.location = 0;
      v70.length = Count;
      CFArrayApplyFunction(v23, v70, sub_100041F30, context);
    }

    if (v27)
    {
      *(&v64 + 1) = "ExcludedRoutes";
      LODWORD(v62) = 0;
      HIDWORD(v62) = v9;
      v71.location = 0;
      v71.length = v26;
      CFArrayApplyFunction(v27, v71, sub_100041F30, context);
    }
  }

  return a1;
}

const __CFString *sub_100041B7C(const __CFDictionary *a1, const void *a2, char *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  if (CFStringGetCString(Value, a3, 16, 0x8000100u))
  {
    return Value;
  }

  return 0;
}

BOOL sub_100041C24(const __CFDictionary *a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  result = 0;
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID && CFArrayGetCount(Value) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      if (sub_10003D258(2, ValueAtIndex, a3, 4uLL))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_100041CE4(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    v2 = a1;
    do
    {
      if ((0x2EFEuLL >> (v2 & 0xF)))
      {
        return 0xFFFFFFFFLL;
      }

      v1 = (v1 + byte_10006CAB0[v2 & 0xF]);
      v3 = v2 > 0xF;
      v2 >>= 4;
    }

    while (v3);
    if ((v1 & 0x80000000) != 0)
    {
      return v1;
    }
  }

  v4 = 0xFFFFFFFFLL;
  if ((v1 - 33) >= 0xFFFFFFE0)
  {
    v5 = -1 << -v1;
  }

  else
  {
    v5 = 0;
  }

  if (bswap32(a1) == v5)
  {
    return v1;
  }

  return v4;
}

uint64_t sub_100041DA0(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kSCPropNetOverridePrimary);
  TypeID = CFNumberGetTypeID();
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      valuePtr = 0;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (!valuePtr)
      {
        return 0;
      }
    }

    else
    {
      v3 = CFBooleanGetTypeID();
      if (CFGetTypeID(Value) != v3 || !CFBooleanGetValue(Value))
      {
        return 0;
      }
    }

    return 1;
  }

  CFBooleanGetTypeID();
  return 0;
}

uint64_t sub_100041E78(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  return CFBooleanGetValue(Value);
}

uint64_t sub_100041F30(const void *a1, uint64_t a2)
{
  v4 = **(a2 + 24);
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = *(a2 + 40);
      *v17 = 136315138;
      *(v17 + 4) = v18;
      result = __SC_log_send();
    }

    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(a1, kSCPropNetIPv4RouteDestinationAddress);
  if (!sub_10003D258(2, Value, (v4 + 20), 4uLL) || (v7 = CFDictionaryGetValue(a1, kSCPropNetIPv4RouteSubnetMask), !sub_10003D258(2, v7, (v4 + 24), 4uLL)))
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = _os_log_pack_size();
    __chkstk_darwin(v19, v20, v21);
    v22 = *__error();
    v23 = _os_log_pack_fill();
    v24 = *(a2 + 40);
    *v23 = 136315394;
    *(v23 + 4) = v24;
    *(v23 + 12) = 2112;
    *(v23 + 14) = a1;
LABEL_19:
    result = __SC_log_send();
LABEL_20:
    --**(a2 + 8);
    return result;
  }

  result = sub_100041CE4(*(v4 + 24));
  if ((result & 0x80000000) != 0)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  *v4 = result;
  v9 = *(a2 + 32);
  v10 = *(a2 + 16);
  *(v4 + 8) = *(a2 + 20);
  *(v4 + 12) = v9;
  if (v10)
  {
    *(v4 + 4) = v10;
    *(v4 + 32) = *a2;
    if (!*(a2 + 20))
    {
      v11 = CFDictionaryGetValue(a1, kSCPropNetIPv4RouteGatewayAddress);
      result = sub_10003D258(2, v11, (v4 + 28), 4uLL);
      if (result)
      {
        v12 = *(v4 + 16);
        *(v4 + 16) = v12 | 2;
        if (*v4 == 32)
        {
          *(v4 + 16) = v12 | 6;
        }
      }
    }

    goto LABEL_37;
  }

  result = sub_100041B7C(a1, kSCPropNetIPv4RouteInterfaceName, v31);
  if (result)
  {
    result = sub_100013354(v31);
    if (!result)
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        goto LABEL_20;
      }

LABEL_35:
      v25 = _os_log_pack_size();
      __chkstk_darwin(v25, v26, v27);
      v28 = *__error();
      v29 = _os_log_pack_fill();
      v30 = *(a2 + 40);
      *v29 = 136315650;
      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      *(v29 + 14) = v31;
      *(v29 + 22) = 2112;
      *(v29 + 24) = a1;
      goto LABEL_19;
    }

    if (result == *(a2 + 16))
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

    *(v4 + 4) = result;
  }

LABEL_37:
  **(a2 + 24) += 36;
  return result;
}

BOOL sub_1000424BC(const __CFDictionary *a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFArrayGetTypeID();
  result = 0;
  if (Value)
  {
    if (CFGetTypeID(Value) == TypeID && CFArrayGetCount(Value) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      if (sub_10003D258(30, ValueAtIndex, a3, 0x10uLL))
      {
        return 1;
      }
    }
  }

  return result;
}

int8x16_t sub_10004257C(int8x16_t *a1, int a2)
{
  v4 = 0;
  v7 = 0uLL;
  if (a2 >= 8)
  {
    v4 = a2 >> 3;
    memset(&v7, 255, v4);
  }

  if (a2 <= 0)
  {
    v5 = -(-a2 & 7);
  }

  else
  {
    v5 = a2 & 7;
  }

  if (v5)
  {
    v7.i8[v4] = 0xFF00u >> v5;
  }

  result = vandq_s8(*a1, v7);
  *a1 = result;
  return result;
}

uint64_t sub_100042634(const void *a1, uint64_t a2)
{
  v4 = **(a2 + 24);
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      v20 = *(a2 + 40);
      *v19 = 136315138;
      *(v19 + 4) = v20;
      result = __SC_log_send();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a1, kSCPropNetIPv6RouteDestinationAddress);
  if (!sub_10003D258(30, Value, v4 + 5, 0x10uLL) || (v7 = CFDictionaryGetValue(a1, kSCPropNetIPv6RoutePrefixLength), result = sub_100042B18(v7, v4), !result) || *v4 > 0x80u)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      goto LABEL_15;
    }

    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = *(a2 + 40);
    *v13 = 136315394;
    *(v13 + 4) = v14;
    *(v13 + 12) = 2112;
    *(v13 + 14) = a1;
LABEL_10:
    result = __SC_log_send();
LABEL_15:
    --**(a2 + 8);
    return result;
  }

  v21 = *(a2 + 32);
  v22 = *(a2 + 16);
  v4[2] = *(a2 + 20);
  v4[3] = v21;
  if (v22)
  {
    v4[1] = v22;
    *(v4 + 13) = **a2;
    if (!*(a2 + 20))
    {
      v23 = CFDictionaryGetValue(a1, kSCPropNetIPv6RouteGatewayAddress);
      result = sub_10003D258(30, v23, v4 + 9, 0x10uLL);
      if (result)
      {
        v24 = *(v4 + 8);
        *(v4 + 8) = v24 | 2;
        if (*v4 == 128)
        {
          *(v4 + 8) = v24 | 6;
        }
      }
    }

    goto LABEL_33;
  }

  result = sub_100041B7C(a1, kSCPropNetIPv6RouteInterfaceName, v31);
  if (result)
  {
    result = sub_100013354(v31);
    if (!result)
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        goto LABEL_15;
      }

LABEL_31:
      v25 = _os_log_pack_size();
      __chkstk_darwin(v25, v26, v27);
      v28 = *__error();
      v29 = _os_log_pack_fill();
      v30 = *(a2 + 40);
      *v29 = 136315650;
      *(v29 + 4) = v30;
      *(v29 + 12) = 2080;
      *(v29 + 14) = v31;
      *(v29 + 22) = 2112;
      *(v29 + 24) = a1;
      goto LABEL_10;
    }

    if (result == *(a2 + 16))
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (!result)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

    v4[1] = result;
  }

LABEL_33:
  **(a2 + 24) += 68;
  return result;
}

uint64_t sub_100042B18(const __CFNumber *a1, void *a2)
{
  TypeID = CFNumberGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    return CFNumberGetValue(a1, kCFNumberIntType, a2);
  }

  else
  {
    return 0;
  }
}

void sub_100042BAC(__CFDictionary *a1, unint64_t a2, const __CFArray *a3, int a4, int a5, int a6, uint64_t a7)
{
  if (!(a2 | a3))
  {
    return;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  if (a3)
  {
    sub_100043258(a3, a6, Mutable, a7);
    v15 = CFArrayGetCount(Mutable) < 1;
  }

  else
  {
    v15 = 1;
  }

  if (CFArrayGetCount(Mutable))
  {
    v16 = dword_1000819B0 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (!a2 || !v17)
  {
    goto LABEL_43;
  }

  v41 = xmmword_10006CAA0;
  v40[0] = xmmword_10006CAC0;
  *(v40 + 12) = *(&xmmword_10006CAC0 + 12);
  if ((~a6 & 3) != 0)
  {
    v18 = CFRetain(a2);
    goto LABEL_42;
  }

  v18 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  Count = CFArrayGetCount(a2);
  if (Count < 1)
  {
    goto LABEL_42;
  }

  theArray = v18;
  v30 = v15;
  v31 = a6;
  v32 = a7;
  v33 = a5;
  v34 = a4;
  v35 = a1;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  while (1)
  {
    v24 = v23;
    v38 = 0;
    v39 = 0uLL;
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v19);
    v26 = sub_10003D258(2, ValueAtIndex, &v38, 4uLL);
    if (v26)
    {
      break;
    }

    if (!sub_10003D258(30, ValueAtIndex, &v39, 0x10uLL))
    {
      goto LABEL_41;
    }

    if (v20)
    {
      v27 = v20 + 1;
      v23 = 2;
      ++v20;
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    *(v40 + 8) = v39;
    v23 = 2;
    v27 = 1;
    v20 = 1;
    if (v19)
    {
      goto LABEL_27;
    }

LABEL_30:
    if (v26 && v22)
    {
      v28 = v21 - 1;
    }

    else
    {
      if (v26 || v22)
      {
        CFArrayAppendValue(theArray, ValueAtIndex);
        goto LABEL_38;
      }

      v28 = v20 - 1;
    }

    CFArrayInsertValueAtIndex(theArray, v28, ValueAtIndex);
LABEL_38:
    if (Count == ++v19)
    {
      a1 = v35;
      a5 = v33;
      a4 = v34;
      a7 = v32;
      v15 = v30;
      LOBYTE(a6) = v31;
      v18 = theArray;
      goto LABEL_42;
    }
  }

  if (v21)
  {
    v27 = v21 + 1;
    v23 = 1;
    ++v21;
    if (!v19)
    {
      goto LABEL_30;
    }
  }

  else
  {
    DWORD1(v41) = v38;
    v27 = 1;
    v21 = 1;
    v23 = 1;
    if (!v19)
    {
      goto LABEL_30;
    }
  }

LABEL_27:
  if (v23 == v24)
  {
    goto LABEL_30;
  }

  if (v27 == 1)
  {
    v22 = sa_dst_compare_no_dependencies() >= 0;
    goto LABEL_30;
  }

LABEL_41:
  CFRelease(theArray);
  v18 = CFRetain(a2);
  a1 = v35;
  a5 = v33;
  a4 = v34;
  a7 = v32;
  v15 = v30;
  LOBYTE(a6) = v31;
LABEL_42:
  sub_100043258(v18, a6, Mutable, a7);
  CFRelease(v18);
LABEL_43:
  if (CFArrayGetCount(Mutable))
  {
    CFDictionarySetValue(a1, kSCPropNetDNSServerAddresses, Mutable);
    v29 = a5 != 0;
    if (a4)
    {
      v29 = v15;
    }

    if (v29)
    {
      CFDictionarySetValue(a1, @"__SCOPED_QUERY__", kCFBooleanTrue);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

const void *sub_100042F38(const void *a1, const void *a2)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  v6 = CFArrayGetTypeID();
  if (!Value)
  {
    return 0;
  }

  if (CFGetTypeID(Value) == v6)
  {
    return Value;
  }

  return 0;
}

void sub_100042FE8(__CFDictionary *a1, void *key, const __CFDictionary *a3, CFDictionaryRef theDict, char a5, int a6)
{
  if (theDict && (Value = CFDictionaryGetValue(theDict, key), TypeID = CFArrayGetTypeID(), Value))
  {
    if (CFGetTypeID(Value) == TypeID)
    {
      v13 = Value;
    }

    else
    {
      v13 = 0;
    }

    if (!a3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
    if (!a3)
    {
LABEL_13:
      v16 = 0;
      goto LABEL_14;
    }
  }

  v14 = CFDictionaryGetValue(a3, key);
  v15 = CFArrayGetTypeID();
  if (!v14)
  {
    goto LABEL_13;
  }

  if (CFGetTypeID(v14) == v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:
  if (v13 | v16)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    if (v13)
    {
      Count = CFArrayGetCount(v13);
      if (Count >= 1)
      {
        v19 = Count;
        for (i = 0; i != v19; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v22 = sub_100043710(ValueAtIndex, a5);
          if (v22)
          {
            v23 = v22;
            CFArrayAppendValue(Mutable, v22);
            CFRelease(v23);
          }
        }
      }
    }

    if (v16 && (!v13 || dword_1000819B0))
    {
      v24 = CFArrayGetCount(Mutable);
      v25 = CFArrayGetCount(v16);
      if (v25 >= 1)
      {
        v26 = v25;
        for (j = 0; j != v26; ++j)
        {
          v28 = CFArrayGetValueAtIndex(v16, j);
          v29 = sub_100043710(v28, a5);
          if (v29)
          {
            v30 = v29;
            if (a6 || (v32.location = 0, v32.length = v24, !CFArrayContainsValue(Mutable, v32, v29)))
            {
              CFArrayAppendValue(Mutable, v30);
            }

            CFRelease(v30);
          }
        }
      }
    }

    if (CFArrayGetCount(Mutable) >= 1)
    {
      CFDictionarySetValue(a1, key, Mutable);
    }

    CFRelease(Mutable);
  }
}

void sub_100043258(const __CFArray *a1, char a2, __CFArray *a3, uint64_t a4)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v8 = Count;
    v9 = 0;
    v10 = &selRef_qosMarkingIsEnabled_;
    v33 = Count;
    do
    {
      v37 = 0uLL;
      v35 = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      if (!ValueAtIndex)
      {
        sub_100068030();
      }

      v12 = ValueAtIndex;
      if (sub_10003D258(2, ValueAtIndex, &v35, 4uLL))
      {
        if ((a2 & 1) != 0 || v35 == 16777343)
        {
          goto LABEL_32;
        }

        if (!v10[307])
        {
          v10[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_34;
        }

        v13 = _os_log_pack_size();
        __chkstk_darwin(v13, v14, v15);
        v16 = *__error();
        v17 = _os_log_pack_fill();
        v18 = v35;
        v19 = BYTE1(v35);
        v20 = BYTE2(v35);
        v21 = HIBYTE(v35);
        *v17 = 67109888;
        *(v17 + 4) = v18;
        *(v17 + 8) = 1024;
        *(v17 + 10) = v19;
        *(v17 + 14) = 1024;
        *(v17 + 16) = v20;
        *(v17 + 20) = 1024;
        *(v17 + 22) = v21;
      }

      else
      {
        if (!sub_10003D258(30, v12, &v37, 0x10uLL))
        {
          if (!v10[307])
          {
            v10[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v28 = _os_log_pack_size();
            __chkstk_darwin(v28, v29, v30);
            v31 = *__error();
            v32 = _os_log_pack_fill();
            *v32 = 138412290;
            *(v32 + 4) = v12;
            v10 = &selRef_qosMarkingIsEnabled_;
            __SC_log_send();
            v8 = v33;
          }

          goto LABEL_34;
        }

        if ((a2 & 2) != 0)
        {
          if (v37.u8[0] == 255)
          {
            if ((v37.i8[1] & 0xF0) != 0x30 && a4 && (v37.i8[1] & 0xF) == 2)
            {
              goto LABEL_31;
            }

LABEL_32:
            CFRetain(v12);
          }

          else
          {
            if (v37.u8[0] != 254 || !a4 || (v37.i8[1] & 0xC0) != 0x80)
            {
              goto LABEL_32;
            }

LABEL_31:
            if (CFStringFind(v12, @"%", 0).location != -1)
            {
              goto LABEL_32;
            }

            v12 = CFStringCreateWithFormat(0, 0, @"%@%%%@", v12, a4);
          }

          CFArrayAppendValue(a3, v12);
          CFRelease(v12);
          goto LABEL_34;
        }

        if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(v37, xmmword_10006CA80)))) & 1) == 0)
        {
          goto LABEL_32;
        }

        if (!v10[307])
        {
          v10[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_34;
        }

        v22 = _os_log_pack_size();
        __chkstk_darwin(v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = inet_ntop(30, &v37, v36, 0x2Eu);
        *v26 = 136315138;
        *(v26 + 4) = v27;
      }

      __SC_log_send();
      v10 = &selRef_qosMarkingIsEnabled_;
LABEL_34:
      ++v9;
    }

    while (v8 != v9);
  }
}

CFMutableStringRef sub_100043710(__CFString *a1, char a2)
{
  MutableCopy = a1;
  if (a1)
  {
    TypeID = CFStringGetTypeID();
    if (CFGetTypeID(MutableCopy) == TypeID)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, MutableCopy);
      CFStringTrimWhitespace(MutableCopy);
      if ((a2 & 1) == 0 && !CFStringGetLength(MutableCopy))
      {
        CFRelease(MutableCopy);
        return 0;
      }
    }

    else
    {
      CFRetain(MutableCopy);
    }
  }

  return MutableCopy;
}

void sub_1000437D0(void *key, void *value, CFMutableDictionaryRef theDict)
{

  CFDictionarySetValue(theDict, key, value);
}

CFStringRef sub_100043838()
{
  v0 = CFURLCreateWithString(0, @"http://wpad/wpad.dat", 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFURLGetString(v0);
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  CFRelease(v1);
  return v3;
}

const void *sub_1000438CC(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, kSCPropInterfaceName);
  TypeID = CFStringGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID || !sub_100013930(a1, Value))
  {
    return 0;
  }

  v4 = @"NetworkSignatureHash";
  v5 = CFDictionaryGetValue(a1, @"NetworkSignatureHash");
  if (!v5)
  {
    v4 = @"NetworkSignature";
    v6 = CFDictionaryGetValue(a1, @"NetworkSignature");
    if (!v6)
    {
      return v6;
    }

    v13 = CFStringGetTypeID();
    if (CFGetTypeID(v6) == v13)
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_21;
      }

      return v6;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 138412546;
      *(v23 + 4) = Value;
      *(v23 + 12) = 2112;
      *(v23 + 14) = @"NetworkSignature";
      goto LABEL_15;
    }

    return 0;
  }

  v6 = v5;
  v7 = CFDataGetTypeID();
  if (CFGetTypeID(v6) != v7 || CFDataGetLength(v6) != 20)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      *v12 = 138412546;
      *(v12 + 4) = Value;
      *(v12 + 12) = 2112;
      *(v12 + 14) = @"NetworkSignatureHash";
LABEL_15:
      __SC_log_send();
      return 0;
    }

    return 0;
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
LABEL_21:
    v14 = _os_log_pack_size();
    __chkstk_darwin(v14, v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    *v18 = 138412546;
    *(v18 + 4) = Value;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v4;
    __SC_log_send();
  }

  return v6;
}

uint64_t sub_100043D14(unsigned int *a1, char a2, int __fd)
{
  v3 = *(a1 + 8);
  if ((v3 & 0x18) != 0)
  {
    return 1001;
  }

  v5 = a1[1];
  if (!v5)
  {
    sub_100044130(5, a1, "no interface specified");
    return 6;
  }

  if (__fd == -1)
  {
    return 9;
  }

  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  BYTE3(v17) = a2;
  BYTE2(v17) = 5;
  DWORD1(v18) = ++dword_1000819DC;
  HIDWORD(v17) = 19;
  v7 = a1 + 13;
  if (a1[13] || a1[14] || a1[15] || a1[16])
  {
    v8 = 51;
    HIDWORD(v17) = 51;
    if ((v3 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 19;
    if ((v3 & 4) == 0)
    {
LABEL_11:
      v8 |= 4u;
      HIDWORD(v17) = v8;
      if ((v3 & 2) != 0)
      {
        v9 = 2051;
      }

      else
      {
        v9 = 2305;
      }

      goto LABEL_19;
    }
  }

  v9 = 2053;
  DWORD2(v17) = 2053;
  if ((v3 & 2) == 0)
  {
    goto LABEL_20;
  }

  v9 = 2055;
LABEL_19:
  DWORD2(v17) = v9;
LABEL_20:
  if (v3)
  {
    WORD2(v17) = v5;
    v9 |= 0x1000000u;
    DWORD2(v17) = v9;
  }

  WORD6(v22[0]) = 7708;
  *(&v22[1] + 4) = *(a1 + 5);
  if (BYTE4(v22[1]) == 254 && (BYTE5(v22[1]) & 0xC0) == 0x80)
  {
    WORD3(v22[1]) = bswap32(v5) >> 16;
  }

  if ((v9 & 2) != 0)
  {
    WORD4(v22[2]) = 7708;
    v22[3] = *(a1 + 9);
    if (LOBYTE(v22[3]) != 254 || (BYTE1(v22[3]) & 0xC0) != 0x80)
    {
      v11 = 148;
      goto LABEL_32;
    }

    v10 = &v22[3] + 2;
    v12 = bswap32(v5) >> 16;
    v11 = 148;
  }

  else
  {
    v10 = &v22[2] + 10;
    WORD4(v22[2]) = 4628;
    v11 = 140;
    LOWORD(v12) = v5;
  }

  *v10 = v12;
LABEL_32:
  v13 = &v17 + v11;
  if ((v8 & 4) != 0)
  {
    v14 = 0;
    *v13 = 7708;
    *(v13 + 1) = 0;
    v15 = *a1;
    *(v13 + 2) = 0;
    if (v15 >= 8)
    {
      v14 = v15 >> 3;
      memset(v13 + 8, 255, v15 >> 3);
    }

    if (v15 <= 0)
    {
      v16 = -(-v15 & 7);
    }

    else
    {
      v16 = v15 & 7;
    }

    if (v16)
    {
      v13[v14 + 8] = 0xFF00u >> v16;
    }

    v13 += 28;
    LOBYTE(v8) = BYTE12(v17);
  }

  if ((v8 & 0x10) != 0)
  {
    *v13 = 4628;
    *(v13 + 1) = v5;
    v13 += 20;
  }

  if ((v8 & 0x20) != 0)
  {
    *v13 = 7708;
    *(v13 + 8) = *v7;
    LODWORD(v13) = v13 + 28;
  }

  LOWORD(v17) = v13 - (v22 + 12) + 92;
  if (write(__fd, &v17, (v13 - (v22 + 12) + 92)) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

__n128 sub_100044060(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 36) = *a2;
  return result;
}

BOOL sub_1000440B0(uint64_t a1, int8x16_t *a2)
{
  v5 = *a2;
  sub_10004257C(&v5, *a1);
  return v5.i64[0] == *(a1 + 20) && v5.i64[1] == *(a1 + 28);
}

void sub_100044130(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_100040A34(a2, Mutable);
  if (a3)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8);
      v9 = *__error();
      v10 = _os_log_pack_fill();
      *v10 = 136315394;
      *(v10 + 4) = a3;
      *(v10 + 12) = 2112;
      *(v10 + 14) = Mutable;
LABEL_10:
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 138412290;
      *(v15 + 4) = Mutable;
      goto LABEL_10;
    }
  }

  CFRelease(Mutable);
}

__CFString *sub_100044364(unsigned int *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  sub_100040A34(a1, Mutable);
  return Mutable;
}

void sub_1000443D8(unsigned int *a1)
{
  v1 = sub_100040944(a1);
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 138412290;
    *(v6 + 4) = v1;
    __SC_log_send();
  }

  CFRelease(v1);
}

uint64_t sub_100044514(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  v3 = a3;
  valuePtr = a3;
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFNumberGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v3;
}

uint64_t sub_1000445B0(unsigned int *a1)
{
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    generation = nwi_state_get_generation();
    v8 = 4 * a1[1] + 224 * a1[1] + 40;
    *v6 = 134218240;
    *(v6 + 4) = generation;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v8;
    __SC_log_send();
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 136315138;
    *(v13 + 4) = "IPv4 network interface information";
    __SC_log_send();
  }

  if (a1[2] < 1)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = 136315138;
      *(v20 + 4) = "   No IPv4 states found";
      __SC_log_send();
    }
  }

  else
  {
    v14 = 0;
    v15 = (a1 + 10);
    do
    {
      sub_100044C9C(v15);
      ++v14;
      v15 += 112;
    }

    while (v14 < a1[2]);
  }

  sub_100045668();
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v21 = _os_log_pack_size();
    __chkstk_darwin(v21, v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    *v25 = 136315138;
    *(v25 + 4) = "IPv6 network interface information";
    __SC_log_send();
  }

  if (a1[3] < 1)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      *v32 = 136315138;
      *(v32 + 4) = "   No IPv6 states found\n";
      __SC_log_send();
    }
  }

  else
  {
    v26 = 0;
    v27 = &a1[28 * a1[1] + 10];
    do
    {
      sub_100044C9C(v27);
      ++v26;
      v27 += 112;
    }

    while (v26 < a1[3]);
  }

  sub_100045668();
  result = nwi_state_get_interface_names();
  if (result)
  {
    __chkstk_darwin(result, v34, v35);
    v38 = &v50 - v37;
    v39 = v36 >= 0x200 ? 512 : v36;
    bzero(&v50 - v37, v39);
    result = nwi_state_get_interface_names();
    if (result)
    {
      v42 = result;
      v43 = (17 * result);
      __chkstk_darwin(result, v40, v41);
      bzero(&v50 - ((v43 + 15) & 0x1FFFFFFF0), v43);
      v44 = 0;
      do
      {
        if (v44)
        {
          strlcat(&v50 - ((v43 + 15) & 0x1FFFFFFF0), " ", v43);
        }

        strlcat(&v50 - ((v43 + 15) & 0x1FFFFFFF0), *&v38[v44], v43);
        v44 += 8;
      }

      while (8 * v42 != v44);
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v45 = _os_log_pack_size();
        __chkstk_darwin(v45, v46, v47);
        v48 = *__error();
        v49 = _os_log_pack_fill();
        *v49 = 136315138;
        *(v49 + 4) = &v50 - ((v43 + 15) & 0x1FFFFFFF0);
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_100044C9C(uint64_t a1)
{
  flags = nwi_ifstate_get_flags();
  v3 = *(a1 + 16) & 0xEFLL;
  v4 = v3 | flags & 0xFFFFFFFFFFFFFFEFLL;
  v5 = (v3 | flags & 0xEF);
  if (v3 | flags & 0xEF)
  {
    v6 = __strlcpy_chk();
    v7 = v6;
    v8 = v5;
    if ((v4 & 1) != 0 && v6 <= 0x5C)
    {
      v7 = __strlcat_chk();
      v8 = v4 & 0xEE;
    }

    if ((v8 & 2) != 0 && v7 <= 0x5C)
    {
      v7 = __strlcat_chk();
      v8 = v8 & 0xED;
    }

    if ((v8 & 4) != 0 && v7 <= 0x5D)
    {
      v7 = __strlcat_chk();
      v8 &= ~4uLL;
    }

    if ((v8 & 0x40) != 0 && v7 <= 0x5A)
    {
      v7 = __strlcat_chk();
      v8 &= ~0x40uLL;
    }

    if ((v8 & 8) != 0 && v7 <= 0x55)
    {
      v7 = __strlcat_chk();
      v8 &= ~8uLL;
    }

    if ((v8 & 0x10) != 0 && v7 <= 0x57)
    {
      v7 = __strlcat_chk();
      v8 &= ~0x10uLL;
    }

    if ((v8 & 0x20) != 0 && v7 <= 0x53)
    {
      v7 = __strlcat_chk();
      v8 &= ~0x20uLL;
    }

    if (v8)
    {
      if (v7 >= 0x57)
      {
        v7 = __strlcpy_chk();
        v8 = v5;
      }

      v7 += snprintf(&v58[v7], 99 - v7, ",%p", v8);
    }

    if (v7)
    {
      v58[v7 - 1] = 41;
    }
  }

  else
  {
    v58[0] = 0;
  }

  ifname = nwi_ifstate_get_ifname();
  reachability_flags = nwi_ifstate_get_reachability_flags();
  if (!inet_ntop(*(a1 + 32), (a1 + 36), v59, 0x2Eu))
  {
    __strlcpy_chk();
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136315650;
    *(v15 + 4) = ifname;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v4;
    *(v15 + 22) = 2080;
    *(v15 + 24) = v58;
    __SC_log_send();
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v16 = _os_log_pack_size();
    __chkstk_darwin(v16, v17, v18);
    v19 = *__error();
    v20 = _os_log_pack_fill();
    *v20 = 136315138;
    *(v20 + 4) = v59;
    __SC_log_send();
  }

  if (nwi_ifstate_get_vpn_server())
  {
    _SC_sockaddr_to_string();
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v21 = _os_log_pack_size();
      __chkstk_darwin(v21, v22, v23);
      v24 = *__error();
      v25 = _os_log_pack_fill();
      *v25 = 136315138;
      *(v25 + 4) = v57;
      __SC_log_send();
    }
  }

  sub_1000457A4(reachability_flags, v57);
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v26 = _os_log_pack_size();
    __chkstk_darwin(v26, v27, v28);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    *v30 = 136315138;
    *(v30 + 4) = v57;
    __SC_log_send();
  }

  v31 = *(a1 + 28);
  if (BYTE3(v31) > 4u)
  {
    v32 = "???";
  }

  else
  {
    v32 = *(off_10007AE38 + ((v31 >> 21) & 0x7F8));
  }

  if ((v31 & 0xFFFFFF) == 0xFFFFFF)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v33 = _os_log_pack_size();
      __chkstk_darwin(v33, v34, v35);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      *v37 = 67109378;
      *(v37 + 4) = v31;
      *(v37 + 8) = 2080;
      *(v37 + 10) = v32;
LABEL_61:
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v38 = _os_log_pack_size();
      __chkstk_darwin(v38, v39, v40);
      v41 = *__error();
      v42 = _os_log_pack_fill();
      *v42 = 67109634;
      *(v42 + 4) = v31;
      *(v42 + 8) = 2080;
      *(v42 + 10) = v32;
      *(v42 + 18) = 1024;
      *(v42 + 20) = v31 & 0xFFFFFF;
      goto LABEL_61;
    }
  }

  signature = nwi_ifstate_get_signature();
  if (signature)
  {
    v44 = CFDataCreate(0, signature, 0);
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v45 = _os_log_pack_size();
      __chkstk_darwin(v45, v46, v47);
      v48 = *__error();
      v49 = _os_log_pack_fill();
      *v49 = 138412290;
      *(v49 + 4) = v44;
      __SC_log_send();
    }

    CFRelease(v44);
  }

  generation = nwi_ifstate_get_generation();
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v52 = _os_log_pack_size();
    __chkstk_darwin(v52, v53, v54);
    v55 = *__error();
    v56 = _os_log_pack_fill();
    *v56 = 134217984;
    *(v56 + 4) = generation;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_100045668()
{
  reachability_flags = nwi_state_get_reachability_flags();
  sub_1000457A4(reachability_flags, __str);
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 136315138;
    *(v6 + 4) = __str;
    return __SC_log_send();
  }

  return result;
}

unint64_t sub_1000457A4(unsigned int a1, char *__str)
{
  result = snprintf(__str, 0x64uLL, "0x%08x (", a1);
  if (a1 || result > 0x53)
  {
    v6 = result;
    v5 = result;
    v7 = a1;
    if ((a1 & 2) != 0)
    {
      v5 = result;
      v7 = a1;
      if (result <= 0x57)
      {
        result = strlcat(__str, "Reachable,", 0x63uLL);
        v5 = result;
        v7 = a1 & 0xFFFFFFFD;
      }
    }

    if ((v7 & 1) != 0 && v5 <= 0x4C)
    {
      result = strlcat(__str, "Transient Connection,", 0x63uLL);
      v5 = result;
      v7 &= ~1u;
    }

    if ((v7 & 4) != 0 && v5 <= 0x4D)
    {
      result = strlcat(__str, "Connection Required,", 0x63uLL);
      v5 = result;
      v7 &= ~4u;
    }

    if ((v7 & 8) != 0 && v5 <= 0x41)
    {
      result = strlcat(__str, "Automatic Connection On Traffic,", 0x63uLL);
      v5 = result;
      v7 &= ~8u;
    }

    if ((v7 & 0x20) != 0 && v5 <= 0x42)
    {
      result = strlcat(__str, "Automatic Connection On Demand,", 0x63uLL);
      v5 = result;
      v7 &= ~0x20u;
    }

    if ((v7 & 0x10) != 0 && v5 <= 0x4B)
    {
      result = strlcat(__str, "Intervention Required,", 0x63uLL);
      v5 = result;
      v7 &= ~0x10u;
    }

    if ((v7 & 0x10000) != 0 && v5 <= 0x53)
    {
      result = strlcat(__str, "Local Address,", 0x63uLL);
      v5 = result;
      v7 &= ~0x10000u;
    }

    if ((v7 & 0x20000) != 0 && v5 <= 0x46)
    {
      result = strlcat(__str, "Directly Reachable Address,", 0x63uLL);
      v5 = result;
      v7 &= ~0x20000u;
    }

    if ((v7 & 0x40000) != 0 && v5 <= 0x5C)
    {
      result = strlcat(__str, "WWAN,", 0x63uLL);
      v5 = result;
      v7 &= ~0x40000u;
    }

    if (v7)
    {
      if (v5 >= 0x57)
      {
        __str[v6] = 0;
        v5 = v6;
        v7 = a1;
      }

      result = snprintf(&__str[v5], 99 - v5, "0x%08x,", v7);
      v5 += result;
    }
  }

  else
  {
    result = strlcat(__str, "Not Reachable,", 0x63uLL);
    v5 = result;
  }

  if (v5)
  {
    __str[v5 - 1] = 41;
  }

  return result;
}

void sub_100045A10(uint64_t a1, int a2)
{
  v24 = 0;
  v4 = *(a1 + 16);
  LODWORD(v24) = v4;
  v5 = malloc_type_calloc(v4, 4uLL, 0x100004052888210uLL);
  v25 = v5;
  if (v5 && *(a1 + 16) >= 1)
  {
    v6 = v5;
    v7 = 0;
    v8 = a1 + 40 + 224 * *(a1 + 4);
    do
    {
      v6[v7] = sub_100013354(a1 + 40 + 112 * *(v8 + 4 * v7));
      ++v7;
    }

    while (v7 < *(a1 + 16));
  }

  if (ioctl(a2, 0xC01069B2uLL, &v24))
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = v24;
      v15 = v25;
      v16 = __error();
      v17 = strerror(*v16);
      *v13 = 67109890;
      *(v13 + 4) = v14;
      *(v13 + 8) = 2048;
      *(v13 + 10) = v15;
      *(v13 + 18) = 1024;
      *(v13 + 20) = a2;
      *(v13 + 24) = 2080;
      *(v13 + 26) = v17;
LABEL_14:
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = v24;
      *v22 = 67109120;
      v22[1] = v23;
      goto LABEL_14;
    }
  }

  if (v25)
  {
    free(v25);
  }
}

uint64_t sub_100045CEC(uint64_t result, int a2, int a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = (v5 >> 8) & 0xF;
  if (v6 != 3)
  {
    if (v6 == 2)
    {
      v8 = 0;
      v9 = 0;
      v7 = "Cleared";
      goto LABEL_11;
    }

    if (v6 != 1)
    {
      return result;
    }
  }

  if ((v5 & 0x10) != 0)
  {
    v7 = "Set";
  }

  else
  {
    v7 = "Cleared";
  }

  v8 = (v5 & 0x10) != 0;
  if ((v5 & 0x10) != 0)
  {
    v9 = 20;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  v10 = (result + 92);
  if ((sub_100038E40(a3, result, a2, result + 92, v9) & 0x80000000) != 0)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v28 = _os_log_pack_size();
      __chkstk_darwin(v28, v29, v30);
      v31 = *__error();
      v32 = _os_log_pack_fill();
      if (a2 == 2)
      {
        v33 = 52;
      }

      else
      {
        v33 = 54;
      }

      v34 = __error();
      v35 = strerror(*v34);
      *v32 = 136315906;
      *(v32 + 4) = v4;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v33;
      *(v32 + 18) = 1024;
      *(v32 + 20) = v9;
      *(v32 + 24) = 2080;
      *(v32 + 26) = v35;
      return __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v13 = _os_log_pack_size();
      v36 = v9;
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 67109634;
      if (a2 == 2)
      {
        v18 = 52;
      }

      else
      {
        v18 = 54;
      }

      *(v17 + 4) = v18;
      *(v17 + 8) = 2080;
      *(v17 + 10) = v7;
      *(v17 + 18) = 2080;
      *(v17 + 20) = v4;
      result = __SC_log_send();
      v9 = v36;
    }

    if (v8 && byte_1000819B4 == 1)
    {
      __chkstk_darwin(result, v11, v12);
      v20 = &__str[-v19 - 4];
      __str[-v19 - 4] = 0;
      if (v9 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v9;
      }

      do
      {
        v22 = *v10++;
        snprintf(__str, 4uLL, "%02x ", v22);
        strlcat(v20, __str, (3 * v9) | 1);
        --v21;
      }

      while (v21);
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v23 = _os_log_pack_size();
        __chkstk_darwin(v23, v24, v25);
        v26 = *__error();
        v27 = _os_log_pack_fill();
        *v27 = 136315138;
        *(v27 + 4) = v20;
        return __SC_log_send();
      }
    }
  }

  return result;
}

uint64_t sub_10004619C()
{
  if ((byte_1000819B5 & 1) != 0 || sub_100058458())
  {
    byte_1000819B4 = 1;
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2);
      v3 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    byte_1000819B4 = 0;
  }

  byte_100081A78 = sub_100058514();
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    if (byte_100081A78)
    {
      v14 = "disabled";
    }

    else
    {
      v14 = "enabled";
    }

    *v13 = 136315138;
    *(v13 + 4) = v14;
    return __SC_log_send();
  }

  return result;
}

void sub_1000464F4(id a1)
{
  byte_100081B10 = 1;

  sub_10003DE18();
}

uint64_t sub_100046558()
{
  multiuser_flags = 0;
  v0 = mach_host_self();
  multiuser_config_flags = host_get_multiuser_config_flags(v0, &multiuser_flags);
  if (multiuser_config_flags)
  {
    v2 = multiuser_config_flags;
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5);
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = mach_error_string(v2);
      *v7 = 136315394;
      *(v7 + 4) = v8;
      *(v7 + 12) = 1024;
      *(v7 + 14) = v2;
      __SC_log_send();
      v9 = "false";
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v9 = "false";
    }
  }

  else
  {
    if ((multiuser_flags & 0x80000000) == 0)
    {
      v9 = "false";
    }

    else
    {
      v9 = "true";
    }

    v10 = multiuser_flags >> 31;
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    *v15 = 136315394;
    *(v15 + 4) = "host_is_multiuser";
    *(v15 + 12) = 2080;
    *(v15 + 14) = v9;
    __SC_log_send();
  }

  return v10;
}

void sub_1000467E0(id a1)
{
  v1 = sem_open("com.apple.configd.first-boot", 0);
  if (v1 == -1)
  {
    byte_100081B14 = 1;

    sub_100046890();
  }

  else
  {

    sem_close(v1);
  }
}

uint64_t sub_100046890()
{
  v0 = sem_open("com.apple.configd.first-boot", 512, 256);
  if (v0 == -1)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      v13 = __error();
      v14 = strerror(*v13);
      *v12 = 136315650;
      *(v12 + 4) = "my_sem_establish";
      *(v12 + 12) = 2080;
      *(v12 + 14) = "com.apple.configd.first-boot";
      *(v12 + 22) = 2080;
      *(v12 + 24) = v14;
      return __SC_log_send();
    }
  }

  else
  {
    v1 = v0;
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 136315394;
      *(v6 + 4) = "my_sem_establish";
      *(v6 + 12) = 2080;
      *(v6 + 14) = "com.apple.configd.first-boot";
      __SC_log_send();
    }

    return sem_close(v1);
  }

  return result;
}

void sub_100046B00(uint64_t a1)
{
  v37 = 0;
  *v38 = xmmword_10006CA90;
  v39 = 0x81000000002;
  v2 = 3;
  while (1)
  {
    if (sysctl(v38, 6u, 0, &v37, 0, 0) < 0)
    {
      return;
    }

    v3 = malloc_type_malloc(v37, 0x2B82A6BAuLL);
    if (!v3)
    {
      return;
    }

    v4 = v3;
    if ((sysctl(v38, 6u, v3, &v37, 0, 0) & 0x80000000) == 0)
    {
      break;
    }

    free(v4);
    if (!--v2)
    {
      return;
    }
  }

  if (v37 >= 1)
  {
    v5 = v4 + v37;
    v6 = &selRef_qosMarkingIsEnabled_;
    v7 = v4;
    v35 = v4 + v37;
    do
    {
      v8 = bswap32(*(v7 + 24));
      if (HIBYTE(v8) == 127)
      {
        if (!v6[307])
        {
          v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v8 >> 8 != 14680064)
        {
          *(v7 + 3) = 2;
          *(v7 + 5) = ++dword_1000819DC;
          v13 = write(a1, v7, *v7);
          v14 = v6[307];
          if (v13 < 0)
          {
            if (!v14)
            {
              v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
            }

            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_25;
            }

            v24 = _os_log_pack_size();
            __chkstk_darwin(v24, v25, v26);
            v27 = *__error();
            v28 = _os_log_pack_fill();
            v29 = a1;
            v30 = *(v7 + 96);
            v31 = *(v7 + 97);
            v32 = *(v7 + 98);
            v36 = *(v7 + 99);
            v33 = __error();
            v34 = strerror(*v33);
            *v28 = 67110146;
            *(v28 + 4) = v30;
            a1 = v29;
            *(v28 + 8) = 1024;
            *(v28 + 10) = v31;
            v6 = &selRef_qosMarkingIsEnabled_;
            *(v28 + 14) = 1024;
            *(v28 + 16) = v32;
            v5 = v35;
            *(v28 + 20) = 1024;
            *(v28 + 22) = v36;
            *(v28 + 26) = 2080;
            *(v28 + 28) = v34;
          }

          else
          {
            if (!v14)
            {
              v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
            }

            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_25;
            }

            v15 = _os_log_pack_size();
            __chkstk_darwin(v15, v16, v17);
            v18 = *__error();
            v19 = _os_log_pack_fill();
            v20 = *(v7 + 96);
            v21 = *(v7 + 97);
            v22 = *(v7 + 98);
            v23 = *(v7 + 99);
            *v19 = 67109888;
            *(v19 + 4) = v20;
            *(v19 + 8) = 1024;
            *(v19 + 10) = v21;
            *(v19 + 14) = 1024;
            *(v19 + 16) = v22;
            *(v19 + 20) = 1024;
            *(v19 + 22) = v23;
          }

          goto LABEL_24;
        }

        if (!v6[307])
        {
          v6[307] = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_25;
        }
      }

      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      *_os_log_pack_fill() = 0;
LABEL_24:
      __SC_log_send();
LABEL_25:
      v7 = (v7 + *v7);
    }

    while (v7 < v5);
  }

  free(v4);
}

void sub_100046FFC(id a1)
{
  SCDynamicStoreNotifyValue(0, qword_100081AD0);
  process_AgentMonitor_Proxy();
  notify_post("com.apple.system.config.proxy_change");
  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v1 = _os_log_pack_size();
    __chkstk_darwin(v1, v2, v3);
    v4 = *__error();
    v5 = _os_log_pack_fill();
    v6 = qword_100081AD0;
    *v5 = 138412290;
    *(v5 + 4) = v6;
    __SC_log_send();
  }
}

void sub_10004714C(id a1)
{
  v2 = 0;
  v1 = sub_100039354(&v2);
  if (qword_100081A70)
  {
    CFRelease(qword_100081A70);
  }

  qword_100081A70 = v2;
  if (v1)
  {
    sub_10000DCDC(qword_1000819A8, 0, v1);
    CFRelease(v1);
  }
}

uint64_t sub_1000471F0(uint64_t a1, const void *a2)
{
  sub_1000575FC(qword_100081B28);
  sub_1000473C8();
  qword_100081B48 = _Block_copy(a2);
  v3 = "com.apple.SystemConfiguration.NetworkInformation";
  v4 = getenv("com.apple.SystemConfiguration.NetworkInformation");
  if (v4)
  {
    v3 = v4;
  }

  if (qword_100081B58 != -1)
  {
    sub_1000680B4();
  }

  mach_service = xpc_connection_create_mach_service(v3, qword_100081B60, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100006F80;
  handler[3] = &unk_10007AE60;
  handler[4] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
  qword_100081B50 = mach_service;
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315138;
    *(v11 + 4) = v3;
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_1000473C8()
{
  if (qword_100081B58 != -1)
  {
    sub_1000680B4();
  }

  result = os_state_add_handler();
  if (!result)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      *_os_log_pack_fill() = 0;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_1000474F8(const __CFData *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 4);
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5);
      v6 = *__error();
      v7 = _os_log_pack_fill();
      *v7 = 134217984;
      *(v7 + 4) = v2;
      __SC_log_send();
    }

    v1 = CFDataCreate(0, v1, 4 * *(v1 + 1) + 112 * (2 * *(v1 + 1)) + 40);
  }

  else
  {
    v2 = 0;
  }

  if (qword_100081B58 != -1)
  {
    sub_10006811C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000477BC;
  block[3] = &unk_10007AE80;
  block[4] = v1;
  block[5] = v2;
  dispatch_sync(qword_100081B60, block);
  if (v1)
  {
    CFRelease(v1);
  }

  sub_100057714(&qword_100081B28);
  if (qword_100081B48)
  {
    (*(qword_100081B48 + 16))();
  }

  notify_key = nwi_state_get_notify_key();
  if (notify_key)
  {
    v9 = notify_key;
    _nwi_state_force_refresh();
    v10 = notify_post(v9);
    if (v10)
    {
      v11 = v10;
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v12 = _os_log_pack_size();
        __chkstk_darwin(v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        *v16 = 67109120;
        v16[1] = v11;
        __SC_log_send();
      }
    }
  }

  return 1;
}

void sub_1000477BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  sub_100057678(&qword_100081B28, v1, v2);
}

os_state_data_s *__cdecl sub_100047820(id a1, os_state_hints_s *a2)
{
  if (qword_100081B28[0])
  {
    Length = CFDataGetLength(qword_100081B28[0]);
    v3 = Length + 200;
    if ((Length + 200) > 0x8000)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        v4 = *__error();
        v5 = _os_log_pack_fill();
        *v5 = 134218240;
        *(v5 + 4) = v3;
        *(v5 + 12) = 2048;
        *(v5 + 14) = 0x8000;
        __SC_log_send();
      }

      return 0;
    }

    v6 = Length;
  }

  else
  {
    v6 = 0;
    v3 = 200;
  }

  v7 = malloc_type_calloc(1uLL, v3, 0x4772D010uLL);
  if (!v7)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      v10 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return 0;
  }

  v8 = v7;
  v7->var0 = 3;
  v7->var1.var1 = v6;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  if (v6 >= 1)
  {
    BytePtr = CFDataGetBytePtr(qword_100081B28[0]);
    memcpy(v8->var4, BytePtr, v6);
  }

  return v8;
}

uint64_t sub_100047AD8(_xpc_connection_s *a1, xpc_object_t xdict)
{
  uint64 = xpc_dictionary_get_uint64(xdict, "generation");
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    pid = xpc_connection_get_pid(a1);
    *v8 = 134218496;
    *(v8 + 4) = a1;
    *(v8 + 12) = 1024;
    *(v8 + 14) = pid;
    *(v8 + 18) = 2048;
    *(v8 + 20) = uint64;
    __SC_log_send();
  }

  result = sub_100057768(&qword_100081B28, a1, uint64);
  if (result)
  {
    sub_100057714(&qword_100081B28);
    result = qword_100081B48;
    if (qword_100081B48)
    {
      return (*(qword_100081B48 + 16))();
    }
  }

  return result;
}

void sub_100047C6C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  v19 = 0;
  memset(dst, 0, sizeof(dst));
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  reply = xpc_dictionary_create_reply(xdict);
  uuid = xpc_dictionary_get_uuid(xdict, "AgentUUID");
  if (!uuid || (uuid_copy(dst, uuid), (string = xpc_dictionary_get_string(xdict, "AgentType")) == 0))
  {
    v17 = 0;
    if (!reply)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = string;
  v9 = xpc_dictionary_get_string(xdict, "proc_name");
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = "???";
    }

    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    pid = xpc_connection_get_pid(a1);
    *v15 = 134218498;
    *(v15 + 4) = a1;
    *(v15 + 12) = 2080;
    *(v15 + 14) = v10;
    *(v15 + 22) = 1024;
    *(v15 + 24) = pid;
    __SC_log_send();
  }

  if (!strcmp(v8, "DNSAgent"))
  {
    v18 = copy_dns_information_for_agent_uuid(dst, &v19);
  }

  else
  {
    if (strcmp(v8, "ProxyAgent"))
    {
      v17 = 0;
      goto LABEL_21;
    }

    v18 = copy_proxy_information_for_agent_uuid(dst, &v19);
  }

  v17 = v18;
  if (v18 && v19)
  {
    xpc_dictionary_set_data(reply, "AgentData", v18, v19);
  }

LABEL_21:
  xpc_connection_send_message(remote_connection, reply);
  if (reply)
  {
LABEL_12:
    xpc_release(reply);
  }

LABEL_13:
  if (v17)
  {
    free(v17);
  }
}

CFTypeID sub_100047ED0(__CFBundle *a1)
{
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  result = CFDictionaryGetTypeID();
  if (InfoDictionary)
  {
    v3 = result;
    result = CFGetTypeID(InfoDictionary);
    if (result == v3)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"SupplementalProxiesFollowSupplementalDNS");
      G_supplemental_proxies_follow_dns = Value;
      result = CFBooleanGetTypeID();
      if (Value)
      {
        v5 = result;
        result = CFGetTypeID(Value);
        if (result == v5)
        {
          v6 = Value;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }

      G_supplemental_proxies_follow_dns = v6;
    }
  }

  return result;
}

void sub_100047F90(NSObject *a1)
{
  out_token = 0;
  qword_100081B68 = a1;
  qword_100081B70 = SCDynamicStoreCreate(0, @"set-hostname", sub_10000BEF4, 0);
  if (!qword_100081B70)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_14;
    }

LABEL_12:
    v14 = _os_log_pack_size();
    __chkstk_darwin(v14, v15, v16);
    v17 = *__error();
    v18 = _os_log_pack_fill();
    v19 = SCError();
    v20 = SCErrorString(v19);
    *v18 = 136315138;
    *(v18 + 4) = v20;
    goto LABEL_13;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v3 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetDHCP);
  CFArrayAppendValue(v3, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  ComputerName = SCDynamicStoreKeyCreateComputerName(0);
  CFArrayAppendValue(Mutable, ComputerName);
  CFRelease(ComputerName);
  HostNames = SCDynamicStoreKeyCreateHostNames(0);
  CFArrayAppendValue(Mutable, HostNames);
  CFRelease(HostNames);
  LODWORD(HostNames) = SCDynamicStoreSetNotificationKeys(qword_100081B70, Mutable, v3);
  CFRelease(Mutable);
  CFRelease(v3);
  if (!HostNames)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (!SCDynamicStoreSetDispatchQueue(qword_100081B70, a1))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v7 = notify_register_dispatch("com.apple.system.config.network_change", &out_token, a1, &stru_10007AF60);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 67109120;
    v13[1] = v8;
LABEL_13:
    __SC_log_send();
  }

LABEL_14:
  if (qword_100081B70)
  {
    SCDynamicStoreSetDispatchQueue(qword_100081B70, 0);
    CFRelease(qword_100081B70);
    qword_100081B70 = 0;
  }
}

void sub_1000483BC()
{
  if (qword_100081B78)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2);
      v3 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    SCNetworkReachabilitySetCallback(qword_100081B78, 0, 0);
    SCNetworkReachabilitySetDispatchQueue(qword_100081B78, 0);
    CFRelease(qword_100081B78);
    qword_100081B78 = 0;
  }
}

uint64_t sub_1000484F0()
{
  *bytes = 0;
  v17 = 0;
  v19 = 0;
  v18 = 0;
  if (!_SC_cfstring_to_cstring())
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

LABEL_8:
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
LABEL_13:
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    return 0;
  }

  if (!_SC_string_to_sockaddr())
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v1 = CFDataCreate(0, bytes, bytes[0]);
  CFDictionarySetValue(Mutable, @"ptr-address", v1);
  CFRelease(v1);
  qword_100081B78 = SCNetworkReachabilityCreateWithOptions();
  CFRelease(Mutable);
  v2 = qword_100081B78;
  sub_1000035EC();
  if (!v2)
  {
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v12 = _os_log_pack_size();
    __chkstk_darwin(v12, v13, v14);
    v15 = *__error();
    goto LABEL_13;
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  gettimeofday(&qword_100081B80, 0);
  SCNetworkReachabilitySetCallback(qword_100081B78, sub_100048874, 0);
  SCNetworkReachabilitySetDispatchQueue(qword_100081B78, qword_100081B68);
  return 1;
}

void sub_100048874(uint64_t a1, char a2)
{
  v53.tv_sec = 0;
  *&v53.tv_usec = 0;
  gettimeofday(&v53, 0);
  if (v53.tv_usec >= dword_100081B88)
  {
    v3 = v53.tv_usec - dword_100081B88;
  }

  else
  {
    v3 = v53.tv_usec - dword_100081B88 + 1000000;
  }

  v4 = v53.tv_sec - qword_100081B80 + ((v53.tv_usec - dword_100081B88) >> 31);
  if ((a2 & 2) == 0)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      *v9 = 134218240;
      *(v9 + 4) = v4;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v3 / 1000;
      __SC_log_send();
    }

LABEL_31:
    v40 = SCDynamicStoreCopyLocalHostName(qword_100081B70);
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    v41 = __SC_log_enabled();
    if (v40)
    {
      if (v41)
      {
        v42 = _os_log_pack_size();
        __chkstk_darwin(v42, v43, v44);
        v45 = *__error();
        v46 = _os_log_pack_fill();
        *v46 = 138412290;
        *(v46 + 4) = v40;
        __SC_log_send();
      }

      MutableCopy = CFStringCreateMutableCopy(0, 0, v40);
      if (!MutableCopy)
      {
        sub_1000681A4();
      }

      v48 = MutableCopy;
      CFStringAppend(MutableCopy, @".local");
      sub_10000B890(v48);
      CFRelease(v48);
      CFRelease(v40);
    }

    else
    {
      if (v41)
      {
        v49 = _os_log_pack_size();
        __chkstk_darwin(v49, v50, v51);
        v52 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      sub_10000B890(@"localhost");
    }

LABEL_39:
    sub_1000483BC();
    return;
  }

  v10 = SCNetworkReachabilityCopyResolvedAddress();
  if (v10)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    v13 = __SC_log_enabled();
    if (Count < 1)
    {
      if (v13)
      {
        v28 = _os_log_pack_size();
        __chkstk_darwin(v28, v29, v30);
        v31 = *__error();
        v32 = _os_log_pack_fill();
        *v32 = 134218240;
        *(v32 + 4) = v4;
        *(v32 + 12) = 1024;
        *(v32 + 14) = v3 / 1000;
        __SC_log_send();
      }

      CFRelease(v11);
      goto LABEL_31;
    }

    if (v13)
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 134218240;
      *(v18 + 4) = v4;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v3 / 1000;
      __SC_log_send();
    }

    v19 = _SCPreferencesCopyComputerName();
    if (v19)
    {
      v20 = v19;
      if (_SC_CFStringIsValidDNSName())
      {
        if (CFStringFind(v20, @".", 0).length)
        {
          v21 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v21);
            if (CFStringCompare(ValueAtIndex, v20, 1uLL) == kCFCompareEqualTo)
            {
              break;
            }

            if (Count == ++v21)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          ValueAtIndex = sub_100048FB0(v11, Count, v20);
        }

        CFRelease(v20);
        if (ValueAtIndex)
        {
LABEL_28:
          sub_1000035EC();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v35 = _os_log_pack_size();
            __chkstk_darwin(v35, v36, v37);
            v38 = *__error();
            v39 = _os_log_pack_fill();
            *v39 = 138412290;
            *(v39 + 4) = ValueAtIndex;
            __SC_log_send();
          }

          sub_10000B890(ValueAtIndex);
          CFRelease(v11);
          if (ValueAtIndex)
          {
            goto LABEL_39;
          }

          goto LABEL_31;
        }
      }

      else
      {
LABEL_17:
        CFRelease(v20);
      }
    }

    v33 = SCDynamicStoreCopyLocalHostName(qword_100081B70);
    if (!v33 || (v34 = v33, ValueAtIndex = sub_100048FB0(v11, Count, v33), CFRelease(v34), !ValueAtIndex))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
    }

    goto LABEL_28;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v23 = _os_log_pack_size();
    __chkstk_darwin(v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    *v27 = 134218240;
    *(v27 + 4) = v4;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v3 / 1000;
    __SC_log_send();
  }
}

const __CFString *sub_100048FB0(CFArrayRef theArray, uint64_t a2, const __CFString *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @".");
    if (ArrayBySeparatingStrings)
    {
      v9 = ArrayBySeparatingStrings;
      v10 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
      v11 = CFStringCompare(v10, a3, 1uLL);
      CFRelease(v9);
      if (v11 == kCFCompareEqualTo)
      {
        break;
      }
    }

    if (a2 == ++v6)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

uint64_t sub_100049098(CFStringRef theString, void *a2)
{
  if (qword_100081B98 != -1)
  {
    sub_1000681D0();
  }

  *a2 = 0;
  if (!CFStringHasPrefix(theString, qword_100081B90) || !CFStringHasSuffix(theString, kSCEntNetNAT64PrefixRequest))
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  if (CFArrayGetCount(ArrayBySeparatingStrings) == 5)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
    *a2 = ValueAtIndex;
    CFRetain(ValueAtIndex);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  CFRelease(ArrayBySeparatingStrings);
  return v6;
}

void sub_1000491F4(__CFArray *a1)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetNAT64PrefixRequest);
  CFArrayAppendValue(a1, NetworkInterfaceEntity);

  CFRelease(NetworkInterfaceEntity);
}

void sub_100049298(CFTypeRef cf, CFTypeRef a2, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100049394;
  v6[3] = &unk_10007AFC0;
  v6[4] = cf;
  v6[5] = a2;
  v6[6] = a3;
  if (qword_100081BA8 != -1)
  {
    sub_100068238();
  }

  dispatch_async(qword_100081BB0, v6);
}

void sub_100049394(void *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    *v6 = 138412802;
    *(v6 + 4) = v7;
    *(v6 + 12) = 2112;
    *(v6 + 14) = v8;
    *(v6 + 22) = 2112;
    *(v6 + 24) = v9;
    __SC_log_send();
  }

  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  context = 0;
  if (v12)
  {
    CFSetApplyFunction(v12, sub_100049558, 0);
  }

  if (v11)
  {
    CFSetApplyFunction(v11, sub_100049784, &context);
  }

  if (v10)
  {
    CFSetApplyFunction(v10, sub_1000499CC, &context);
  }

  if (context)
  {
    dns_configuration_free();
  }

  v13 = a1[4];
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a1[5];
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = a1[6];
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_100049558(CFTypeRef cf1)
{
  v2 = &qword_100081BA0;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (CFEqual(cf1, v2[4]))
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v3 = _os_log_pack_size();
        __chkstk_darwin(v3, v4, v5);
        v6 = *__error();
        v7 = _os_log_pack_fill();
        v8 = v2[3];
        *v7 = 136315394;
        *(v7 + 4) = v8;
        *(v7 + 12) = 2080;
        *(v7 + 14) = "_nat64_process_cancel_request";
        __SC_log_send();
      }

      sub_100049AAC(v2[3], 0, 0);
      sub_10004A030(v2);
      sub_10004A198(v2);
      return;
    }
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    *v13 = 138412546;
    *(v13 + 4) = cf1;
    *(v13 + 12) = 2080;
    *(v13 + 14) = "_nat64_process_cancel_request";
    __SC_log_send();
  }
}

uint64_t sub_100049784(CFTypeRef cf1, uint64_t *a2)
{
  v4 = &qword_100081BA0;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (CFEqual(cf1, v4[4]))
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7);
        v8 = *__error();
        v9 = _os_log_pack_fill();
        *v9 = 138412546;
        *(v9 + 4) = cf1;
        *(v9 + 12) = 2080;
        *(v9 + 14) = "_nat64_process_prefix_update";
        __SC_log_send();
      }

      sub_10004A030(v4);
      sub_10004A198(v4);
      result = sub_10004A948(cf1);
      if (result)
      {
        v11 = result;
        v12 = sub_10004ACBC(a2);
        return sub_10004AEC0(v11, v12);
      }

      return result;
    }
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v13 = _os_log_pack_size();
    __chkstk_darwin(v13, v14, v15);
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 138412546;
    *(v17 + 4) = cf1;
    *(v17 + 12) = 2080;
    *(v17 + 14) = "_nat64_process_prefix_update";
    return __SC_log_send();
  }

  return result;
}

uint64_t sub_1000499CC(CFTypeRef cf1, uint64_t *a2)
{
  v4 = &qword_100081BA0;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    result = CFEqual(cf1, v4[4]);
    if (result)
    {
      return result;
    }
  }

  result = sub_10004A948(cf1);
  if (result)
  {
    v6 = result;
    v7 = sub_10004ACBC(a2);

    return sub_10004AEC0(v6, v7);
  }

  return result;
}

_DWORD *sub_100049AAC(uint64_t a1, int a2, uint64_t a3)
{
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  __strlcpy_chk();
  v41 = a2;
  if (a2)
  {
    if (a2 >= 1)
    {
      v5 = 0;
      v6 = v46;
      do
      {
        v44 = 0;
        memset(v43, 0, sizeof(v43));
        nw_nat64_write_prefix_to_string();
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v7 = _os_log_pack_size();
          __chkstk_darwin(v7, v8, v9);
          v10 = *__error();
          v11 = _os_log_pack_fill();
          *v11 = 136315650;
          *(v11 + 4) = a1;
          *(v11 + 12) = 1024;
          *(v11 + 14) = v5;
          *(v11 + 18) = 2080;
          *(v11 + 20) = v43;
          __SC_log_send();
        }

        if (v5 <= 3)
        {
          *v6 = *a3;
          *(v6 - 2) = *(a3 + 4);
          *(v6 - 2) = *(a3 + 12);
        }

        ++v5;
        v6 += 5;
        a3 += 16;
      }

      while (v41 != v5);
    }
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136315138;
      *(v16 + 4) = a1;
      __SC_log_send();
    }
  }

  v17 = socket(2, 2, 0);
  if (v17 == -1)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v27 = _os_log_pack_size();
    __chkstk_darwin(v27, v28, v29);
    v30 = *__error();
    v31 = _os_log_pack_fill();
    v32 = __error();
    v33 = strerror(*v32);
    *v31 = 136315138;
    *(v31 + 4) = v33;
    return __SC_log_send();
  }

  v18 = v17;
  v19 = ioctl(v17, 0xC06069C2uLL, v45);
  close(v18);
  if (v19 != -1)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v21 = _os_log_pack_size();
    __chkstk_darwin(v21, v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    v26 = "es";
    if (v41 == 1)
    {
      v26 = "";
    }

    *v25 = 136315394;
    *(v25 + 4) = a1;
    *(v25 + 12) = 2080;
    *(v25 + 14) = v26;
    return __SC_log_send();
  }

  result = __error();
  if (v41 || *result != 2)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v34 = _os_log_pack_size();
      __chkstk_darwin(v34, v35, v36);
      v37 = *__error();
      v38 = _os_log_pack_fill();
      v39 = __error();
      v40 = strerror(*v39);
      *v38 = 136315394;
      *(v38 + 4) = a1;
      *(v38 + 12) = 2080;
      *(v38 + 14) = v40;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_10004A030(uint64_t a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 24);
    *v6 = 136315394;
    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    *(v6 + 14) = "NAT64PrefixRequestInvalidate";
    __SC_log_send();
  }

  sub_10004A4B8(a1);
  result = sub_10004A5FC(a1);
  v9 = *(a1 + 48);
  if (v9)
  {
    *(a1 + 48) = v9 & 0xFFFE;
    v10 = *a1;
    v11 = *(a1 + 8);
    if (*a1)
    {
      *(v10 + 8) = v11;
    }

    *v11 = v10;
  }

  if (!qword_100081BA0)
  {
    return sub_10004A738();
  }

  return result;
}

void sub_10004A198(uint64_t a1)
{
  v2 = *(a1 + 44);
  if (v2)
  {
    *(a1 + 44) = v2 - 1;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5);
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 24);
      v9 = *(a1 + 44);
      *v7 = 136315906;
      *(v7 + 4) = v8;
      *(v7 + 12) = 2080;
      *(v7 + 14) = "NAT64PrefixRequestRelease";
      *(v7 + 22) = 2048;
      *(v7 + 24) = a1;
      *(v7 + 32) = 1024;
      *(v7 + 34) = v9;
      __SC_log_send();
    }

    if (!*(a1 + 44))
    {
      sub_10004A030(a1);
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12);
        v13 = *__error();
        v14 = _os_log_pack_fill();
        v15 = *(a1 + 24);
        *v14 = 136315650;
        *(v14 + 4) = v15;
        *(v14 + 12) = 2080;
        *(v14 + 14) = "NAT64PrefixRequestRelease";
        *(v14 + 22) = 2048;
        *(v14 + 24) = a1;
        __SC_log_send();
      }

      v16 = *(a1 + 32);
      if (v16)
      {
        CFRelease(v16);
        *(a1 + 32) = 0;
      }

      v17 = *(a1 + 24);
      if (v17)
      {
        CFAllocatorDeallocate(0, v17);
      }

      free(a1);
    }
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 136315394;
      *(v22 + 4) = "NAT64PrefixRequestRelease";
      *(v22 + 12) = 2048;
      *(v22 + 14) = a1;
      __SC_log_send();
    }
  }
}

void sub_10004A4B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      v7 = *(a1 + 24);
      *v6 = 136315394;
      *(v6 + 4) = v7;
      *(v6 + 12) = 2080;
      *(v6 + 14) = "NAT64PrefixRequestStopResolver";
      __SC_log_send();
    }

    v8 = *(a1 + 16);
    nw_nat64_prefixes_resolver_cancel();
    nw_release(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

uint64_t sub_10004A5FC(uint64_t result)
{
  if ((*(result + 48) & 2) != 0)
  {
    v1 = result;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      v7 = *(v1 + 24);
      *v6 = 136315394;
      *(v6 + 4) = v7;
      *(v6 + 12) = 2080;
      *(v6 + 14) = "NAT64PrefixRequestRemoveFromWaiting";
      result = __SC_log_send();
    }

    *(v1 + 48) &= ~2u;
  }

  return result;
}

uint64_t sub_10004A738()
{
  result = dword_10008169C;
  if (dword_10008169C != -1)
  {
    v1 = notify_cancel(dword_10008169C);
    sub_1000035EC();
    if (v1)
    {
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v2 = _os_log_pack_size();
        __chkstk_darwin(v2, v3, v4);
        v5 = *__error();
        v6 = _os_log_pack_fill();
        v7 = dword_10008169C;
        *v6 = 136315650;
        *(v6 + 4) = "monitor_dnsinfo_stop";
        *(v6 + 12) = 1024;
        *(v6 + 14) = v7;
        *(v6 + 18) = 1024;
        *(v6 + 20) = v1;
LABEL_7:
        result = __SC_log_send();
      }
    }

    else
    {
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        v13 = dword_10008169C;
        *v12 = 136315394;
        *(v12 + 4) = "monitor_dnsinfo_stop";
        *(v12 + 12) = 1024;
        *(v12 + 14) = v13;
        goto LABEL_7;
      }
    }

    dword_10008169C = -1;
  }

  return result;
}

void *sub_10004A948(const void *a1)
{
  v2 = _SC_cfstring_to_cstring();
  if (!v2)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 138412290;
      *(v18 + 4) = a1;
      __SC_log_send();
    }

    return 0;
  }

  v3 = v2;
  v4 = sub_100013354(v2);
  if (!v4)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 136315138;
      *(v23 + 4) = v3;
      __SC_log_send();
    }

    CFAllocatorDeallocate(0, v3);
    return 0;
  }

  v5 = v4;
  v6 = malloc_type_malloc(0x38uLL, 0x10F0040C1D5253AuLL);
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 138412802;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2080;
    *(v11 + 14) = "NAT64PrefixRequestCreate";
    *(v11 + 22) = 2048;
    *(v11 + 24) = v6;
    __SC_log_send();
  }

  v6[6] = 0;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  v12 = CFRetain(a1);
  v6[3] = v3;
  v6[4] = v12;
  *(v6 + 10) = v5;
  v13 = qword_100081BA0;
  *v6 = qword_100081BA0;
  if (v13)
  {
    *(v13 + 8) = v6;
  }

  qword_100081BA0 = v6;
  v6[1] = &qword_100081BA0;
  *(v6 + 24) |= 1u;
  sub_10004B2D4(v6);
  if (qword_100081BA8 != -1)
  {
    sub_100068238();
  }

  sub_10004B424(qword_100081BB0);
  return v6;
}

uint64_t sub_10004ACBC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 || (v1 = dns_configuration_copy(), (*a1 = v1) != 0))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5);
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = *(v1 + 24);
      *v7 = 136315394;
      *(v7 + 4) = "nat64_get_dns_config";
      *(v7 + 12) = 2048;
      *(v7 + 14) = v8;
      __SC_log_send();
    }
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 136315138;
      *(v14 + 4) = "nat64_get_dns_config";
      __SC_log_send();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_10004AEC0(uint64_t a1, uint64_t a2)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    v9 = *(a1 + 24);
    *v8 = 136315394;
    *(v8 + 4) = v9;
    *(v8 + 12) = 2080;
    *(v8 + 14) = "NAT64PrefixRequestCheckStart";
    __SC_log_send();
  }

  if (*(a1 + 16))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = *(a1 + 24);
      *v15 = 136315394;
      *(v15 + 4) = v16;
      *(v15 + 12) = 2080;
      *(v15 + 14) = "NAT64PrefixRequestCheckStart";
      return __SC_log_send();
    }
  }

  else
  {
    if (a2)
    {
      v17 = *(a2 + 12);
      if (v17)
      {
        v18 = 0;
        if (v17 >= 1)
        {
          v19 = *(a2 + 16);
          if (v19)
          {
            v20 = *(a1 + 40);
            v21 = v17 - 1;
            do
            {
              v22 = *v19++;
              v23 = *(v22 + 64);
              v18 = v23 == v20;
            }

            while (v23 != v20 && v21-- != 0);
          }
        }
      }

      else
      {
        v18 = 0;
      }

      v25 = *(a2 + 24);
    }

    else
    {
      v18 = 0;
      v25 = 0;
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v26 = _os_log_pack_size();
      __chkstk_darwin(v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      v31 = *(a1 + 24);
      *v30 = 136315906;
      *(v30 + 4) = v31;
      if (v18)
      {
        v32 = "";
      }

      else
      {
        v32 = "not ";
      }

      *(v30 + 12) = 2080;
      *(v30 + 14) = "NAT64PrefixRequestCheckStart";
      *(v30 + 22) = 2080;
      *(v30 + 24) = v32;
      *(v30 + 32) = 2048;
      *(v30 + 34) = v25;
      __SC_log_send();
    }

    if (v18)
    {
      return sub_10004B818(a1);
    }

    else
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v33 = _os_log_pack_size();
        __chkstk_darwin(v33, v34, v35);
        v36 = *__error();
        v37 = _os_log_pack_fill();
        v38 = *(a1 + 24);
        *v37 = 136315394;
        *(v37 + 4) = v38;
        *(v37 + 12) = 2080;
        *(v37 + 14) = "NAT64PrefixRequestCheckStart";
        __SC_log_send();
      }

      return sub_10004C1C0(a1);
    }
  }

  return result;
}

uint64_t sub_10004B2D4(uint64_t a1)
{
  ++*(a1 + 44);
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    v8 = *(a1 + 24);
    v9 = *(a1 + 44);
    *v7 = 136315906;
    *(v7 + 4) = v8;
    *(v7 + 12) = 2080;
    *(v7 + 14) = "NAT64PrefixRequestRetain";
    *(v7 + 22) = 2048;
    *(v7 + 24) = a1;
    *(v7 + 32) = 1024;
    *(v7 + 34) = v9;
    return __SC_log_send();
  }

  return result;
}

const char *sub_10004B424(NSObject *a1)
{
  result = dns_configuration_notify_key();
  if (dword_10008169C == -1)
  {
    out_token = 0;
    v3 = notify_register_dispatch(result, &out_token, a1, &stru_10007B000);
    sub_1000035EC();
    if (v3)
    {
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v4 = _os_log_pack_size();
        __chkstk_darwin(v4, v5, v6);
        v7 = *__error();
        v8 = _os_log_pack_fill();
        *v8 = 136315394;
        *(v8 + 4) = "monitor_dnsinfo_start";
        *(v8 + 12) = 1024;
        *(v8 + 14) = v3;
        return __SC_log_send();
      }
    }

    else
    {
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v9 = _os_log_pack_size();
        __chkstk_darwin(v9, v10, v11);
        v12 = *__error();
        v13 = _os_log_pack_fill();
        v14 = out_token;
        *v13 = 136315394;
        *(v13 + 4) = "monitor_dnsinfo_start";
        *(v13 + 12) = 1024;
        *(v13 + 14) = v14;
        result = __SC_log_send();
      }

      dword_10008169C = out_token;
    }
  }

  return result;
}

void sub_10004B648(id a1, int a2)
{
  if (dword_10008169C == a2)
  {
    v14 = 0;
    v2 = qword_100081BA0;
    if (qword_100081BA0)
    {
      v3 = 0;
      do
      {
        if ((*(v2 + 48) & 2) != 0)
        {
          sub_10004ACBC(&v14);
          v3 = v14;
          if (!v14)
          {
            return;
          }

          v4 = *(v14 + 12);
          if (v4)
          {
            v5 = *(v14 + 16);
            if (v4 >= 1 && v5 != 0)
            {
              while (*(*v5 + 64) != *(v2 + 40))
              {
                v5 += 8;
                if (!--v4)
                {
                  goto LABEL_15;
                }
              }

              sub_10004B818(v2);
            }
          }
        }

LABEL_15:
        v2 = *v2;
      }

      while (v2);
      if (v3)
      {
        dns_configuration_free();
      }
    }
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      v13 = dword_10008169C;
      *v12 = 136315650;
      *(v12 + 4) = "monitor_dnsinfo_start_block_invoke";
      *(v12 + 12) = 1024;
      *(v12 + 14) = a2;
      *(v12 + 18) = 1024;
      *(v12 + 20) = v13;
      __SC_log_send();
    }
  }
}

uint64_t sub_10004B818(uint64_t a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    v7 = *(a1 + 24);
    *v6 = 136315394;
    *(v6 + 4) = v7;
    *(v6 + 12) = 2080;
    *(v6 + 14) = "NAT64PrefixRequestStart";
    __SC_log_send();
  }

  sub_10004A5FC(a1);
  result = sub_10004BA3C(*(a1 + 40));
  if (result)
  {
    v9 = result;
    sub_10004B2D4(a1);
    CFAbsoluteTimeGetCurrent();
    nw_nat64_prefixes_resolver_set_cancel_handler();
    if (qword_100081BA8 != -1)
    {
      sub_100068238();
    }

    nw_nat64_prefixes_resolver_set_update_handler();
    result = nw_nat64_prefixes_resolver_start();
    *(a1 + 16) = v9;
  }

  return result;
}

uint64_t sub_10004BA3C(int a1)
{
  v2 = nw_parameters_create();
  v3 = nw_interface_create_with_index();
  if (v3)
  {
    v4 = v3;
    nw_parameters_require_interface(v2, v3);
    nw_parameters_set_required_address_family();
    nw_release(v4);
    v5 = nw_nat64_prefixes_resolver_create();
    nw_release(v2);
    return v5;
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 67109120;
      v11[1] = a1;
      __SC_log_send();
    }

    return 0;
  }
}

void sub_10004BBBC(uint64_t a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    v2 = *__error();
    v3 = _os_log_pack_fill();
    v4 = *(*(a1 + 32) + 24);
    *v3 = 136315138;
    *(v3 + 4) = v4;
    __SC_log_send();
  }

  sub_10004A198(*(a1 + 32));
}

void sub_10004BCC8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if ((*(v4 + 48) & 1) == 0)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *v9 = 136315394;
    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v10;
LABEL_10:
    __SC_log_send();
    return;
  }

  if (!a3)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v15 = _os_log_pack_size();
    __chkstk_darwin(v15, v16, v17);
    v18 = *__error();
    v19 = _os_log_pack_fill();
    v20 = *(*(a1 + 32) + 24);
    *v19 = 136315138;
    *(v19 + 4) = v20;
    goto LABEL_10;
  }

  sub_100049AAC(*(v4 + 24), a2, a3);
  sub_10004BF18(*(*(a1 + 32) + 32), a2, a3, *(a1 + 40));
  sub_10004A030(*(a1 + 32));
  v14 = *(a1 + 32);

  sub_10004A198(v14);
}

void sub_10004BF18(CFStringRef ifname, unsigned int a2, uint64_t a3, CFAbsoluteTime a4)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, kSCEntNetNAT64);
  if ((a2 & 0x80000000) != 0)
  {
    SCDynamicStoreRemoveValue(0, NetworkInterfaceEntity);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (a2)
    {
      v10 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      v11 = a2;
      do
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        *cStr = 0u;
        nw_nat64_write_prefix_to_string();
        v12 = CFStringCreateWithCString(0, cStr, 0x600u);
        CFArrayAppendValue(v10, v12);
        CFRelease(v12);
        a3 += 16;
        --v11;
      }

      while (v11);
      CFDictionarySetValue(Mutable, kSCPropNetNAT64PrefixList, v10);
      CFRelease(v10);
    }

    v13 = CFDateCreate(0, a4);
    CFDictionarySetValue(Mutable, kSCPropNetNAT64PLATDiscoveryStartTime, v13);
    CFRelease(v13);
    Current = CFAbsoluteTimeGetCurrent();
    v15 = CFDateCreate(0, Current);
    CFDictionarySetValue(Mutable, kSCPropNetNAT64PLATDiscoveryCompletionTime, v15);
    CFRelease(v15);
    SCDynamicStoreSetValue(0, NetworkInterfaceEntity, Mutable);
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = 138412546;
      *(v20 + 4) = ifname;
      *(v20 + 12) = 2112;
      *(v20 + 14) = Mutable;
      __SC_log_send();
    }

    CFRelease(Mutable);
  }

  CFRelease(NetworkInterfaceEntity);
}

uint64_t sub_10004C1C0(uint64_t result)
{
  if ((*(result + 48) & 2) == 0)
  {
    v1 = result;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      v7 = *(v1 + 24);
      *v6 = 136315394;
      *(v6 + 4) = v7;
      *(v6 + 12) = 2080;
      *(v6 + 14) = "NAT64PrefixRequestAddToWaiting";
      result = __SC_log_send();
    }

    *(v1 + 48) |= 2u;
  }

  return result;
}

void sub_10004C444(id a1)
{
  qword_100081BB8 = objc_alloc_init(AgentController);

  _objc_release_x1();
}

void sub_10004EA44(int a1)
{
  v7 = a1;
  if (sysctlbyname("net.inet.mptcp.allow_aggregate", 0, 0, &v7, 4uLL) == -1)
  {
    if (*__error() == 2)
    {
      return;
    }

    v1 = sub_1000035EC();
    v4 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      os_log_type_enabled(v1, v4);
      v1 = v1;
      v5 = __error();
      v6 = strerror(*v5);
      v8 = 136315138;
      v9 = v6;
      v3 = _os_log_send_and_compose_impl();

LABEL_7:
      __SC_log_send2();
      if (v3 != &v10)
      {
        free(v3);
      }
    }
  }

  else
  {
    v1 = sub_1000035EC();
    v2 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v10 = 0u;
      os_log_type_enabled(v1, v2);
      v8 = 67109120;
      LODWORD(v9) = v7;
      v3 = _os_log_send_and_compose_impl();
      goto LABEL_7;
    }
  }
}

void sub_10004FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004FECC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 && a3)
  {
    v6 = 0;
    do
    {
      v47 = 0u;
      memset(v48, 0, sizeof(v48));
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = *(a2 + v6);
      v35 = 0u;
      v36 = 0u;
      v6 += 1 + v7;
      v34 = 0u;
      if (v6 > a3)
      {
        break;
      }

      __memcpy_chk();
      if (v34 == 7630692)
      {
        v12 = sub_1000035EC();
        v13 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0uLL;
          v19 = 0uLL;
          os_log_type_enabled(v12, v13);
          v14 = _os_log_send_and_compose_impl();
          __SC_log_send2();
          if (v14 != &v18)
          {
            free(v14);
          }
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
      }

      else
      {
        v8 = v34 ^ 0x3268 | BYTE2(v34);
        v9 = sub_1000035EC();
        if (v8)
        {
          v10 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0uLL;
            v19 = 0uLL;
            os_log_type_enabled(v9, v10);
            v11 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v11 != &v18)
            {
              free(v11);
            }
          }
        }

        else
        {
          v15 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0uLL;
            v19 = 0uLL;
            os_log_type_enabled(v9, v15);
            v16 = _os_log_send_and_compose_impl();
            __SC_log_send2();
            if (v16 != &v18)
            {
              free(v16);
            }
          }

          *(*(*(a1 + 32) + 8) + 24) = 2;
        }
      }
    }

    while (v6 < a3);
  }

  return 1;
}

uint64_t sub_1000502A0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a2 && a3 == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = bswap32(*a2) >> 16;
  }

  return 1;
}

uint64_t sub_100050310(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    asprintf((*(*(a1 + 32) + 8) + 24), "%.*s", a3, a2);
  }

  return 1;
}

void process_AgentMonitor()
{
  if (objc_opt_class())
  {
    v0 = sub_1000035EC();
    v1 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      os_log_type_enabled(v0, v1);
      v2 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v2 != &v9)
      {
        free(v2);
      }
    }

    v3 = objc_autoreleasePoolPush();
    v4 = +[AgentController sharedController];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 controllerQueue];
      dispatch_sync(v6, &stru_10007B0E8);
    }

    else
    {
      v6 = sub_1000035EC();
      v7 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        os_log_type_enabled(v6, v7);
        v8 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v8 != &v9)
        {
          free(v8);
        }
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100056958(id a1)
{
  v1 = +[AgentController sharedController];
  [v1 processDNSChanges];

  v2 = +[AgentController sharedController];
  [v2 processProxyChanges];
}

void process_AgentMonitor_DNS()
{
  if (objc_opt_class())
  {
    v0 = sub_1000035EC();
    v1 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      os_log_type_enabled(v0, v1);
      v2 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v2 != &v9)
      {
        free(v2);
      }
    }

    v3 = objc_autoreleasePoolPush();
    v4 = +[AgentController sharedController];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 controllerQueue];
      dispatch_sync(v6, &stru_10007B108);
    }

    else
    {
      v6 = sub_1000035EC();
      v7 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        os_log_type_enabled(v6, v7);
        v8 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v8 != &v9)
        {
          free(v8);
        }
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100056C80(id a1)
{
  v1 = +[AgentController sharedController];
  [v1 processDNSChanges];
}

void process_AgentMonitor_Proxy()
{
  if (objc_opt_class())
  {
    v0 = sub_1000035EC();
    v1 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      os_log_type_enabled(v0, v1);
      v2 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v2 != &v9)
      {
        free(v2);
      }
    }

    v3 = objc_autoreleasePoolPush();
    v4 = +[AgentController sharedController];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 controllerQueue];
      dispatch_sync(v6, &stru_10007B128);
    }

    else
    {
      v6 = sub_1000035EC();
      v7 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v9 = 0u;
        v10 = 0u;
        os_log_type_enabled(v6, v7);
        v8 = _os_log_send_and_compose_impl();
        __SC_log_send2();
        if (v8 != &v9)
        {
          free(v8);
        }
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_100056F88(id a1)
{
  v1 = +[AgentController sharedController];
  [v1 processProxyChanges];
}

uint64_t copy_proxy_information_for_agent_uuid(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!objc_opt_class())
  {
    goto LABEL_6;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = +[AgentController sharedController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 controllerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005726C;
    block[3] = &unk_10007B150;
    block[4] = &v13;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v7, block);
  }

  else
  {
    v7 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v18, 0, sizeof(v18));
      os_log_type_enabled(v7, v10);
      v17 = 0;
      v11 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v11 != v18)
      {
        free(v11);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  if (v6)
  {
    v8 = v14[3];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_10005723C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005726C(void *a1)
{
  v2 = +[AgentController sharedController];
  *(*(a1[4] + 8) + 24) = [v2 copyProxyAgentData:a1[5] length:a1[6]];
}

uint64_t copy_dns_information_for_agent_uuid(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (!objc_opt_class())
  {
    goto LABEL_6;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = +[AgentController sharedController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 controllerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005756C;
    block[3] = &unk_10007B150;
    block[4] = &v13;
    block[5] = a1;
    block[6] = a2;
    dispatch_sync(v7, block);
  }

  else
  {
    v7 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v18, 0, sizeof(v18));
      os_log_type_enabled(v7, v10);
      v17 = 0;
      v11 = _os_log_send_and_compose_impl();
      __SC_log_send2();
      if (v11 != v18)
      {
        free(v11);
      }
    }
  }

  objc_autoreleasePoolPop(v4);
  if (v6)
  {
    v8 = v14[3];
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v8;
}

void sub_10005753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005756C(void *a1)
{
  v2 = +[AgentController sharedController];
  *(*(a1[4] + 8) + 24) = [v2 copyDNSAgentData:a1[5] length:a1[6]];
}

CFMutableDictionaryRef sub_1000575FC(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  result = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a1 + 2) = result;
  return result;
}

void sub_100057678(uint64_t a1, CFTypeRef cf, unint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    CFRelease(v6);
    *a1 = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *a1 = cf;
  }

  if (a3 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  *(a1 + 8) = v7;
  *(a1 + 24) += *(a1 + 28);
  *(a1 + 28) = 0;
}

uint64_t sub_100057768(uint64_t a1, _xpc_connection_s *a2, uint64_t a3)
{
  v6 = xpc_connection_copy_entitlement_value();
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  if (xpc_get_type(v6) == &_xpc_type_BOOL)
  {
    value = xpc_BOOL_get_value(v7);
    xpc_release(v7);
    if (!value)
    {
      goto LABEL_9;
    }

    v16[0] = a2;
    v9 = CFDataCreate(0, v16, 8);
    v10 = CFDictionaryGetValue(*(a1 + 16), v9);
    CFRelease(v9);
    MutableBytePtr = CFDataGetMutableBytePtr(v10);
    v12 = *(MutableBytePtr + 2);
    if (v12)
    {
      if (v12 != a3 && *(a1 + 8) == a3)
      {
        *(a1 + 24) = vadd_s32(*(a1 + 24), 0x1FFFFFFFFLL);
LABEL_17:
        v14 = 1;
        goto LABEL_18;
      }

      v14 = 0;
    }

    else
    {
      if (*(a1 + 8) != a3)
      {
        ++*(a1 + 24);
        goto LABEL_17;
      }

      v14 = 0;
      ++*(a1 + 28);
    }

LABEL_18:
    *(MutableBytePtr + 2) = a3;
    return v14;
  }

  xpc_release(v7);
LABEL_9:
  pid = xpc_connection_get_pid(a2);
  if (qword_100081BD8 != -1)
  {
    sub_1000682FC();
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_1000579D8;
  v16[3] = &unk_10007B1F0;
  v17 = pid;
  dispatch_sync(qword_100081BE8, v16);
  return 0;
}

void sub_1000579D8(uint64_t a1)
{
  v2 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, (a1 + 32));
  v3 = qword_100081BE0;
  v11.length = CFArrayGetCount(qword_100081BE0);
  v11.location = 0;
  if (!CFArrayContainsValue(v3, v11, v2))
  {
    CFArrayAppendValue(qword_100081BE0, v2);
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      v8 = _os_log_pack_fill();
      v9 = *(a1 + 32);
      *v8 = 67109120;
      v8[1] = v9;
      __SC_log_send();
    }

    if ((byte_100081BD0 & 1) == 0)
    {
      byte_100081BD0 = 1;
      v10 = dispatch_time(0, 180000000000);
      dispatch_after(v10, qword_100081BE8, &stru_10007B1D0);
    }
  }

  CFRelease(v2);
}

char *_scprefs_observer_watch(int a1, char *__s, uint64_t a3, const void *a4)
{
  if (qword_100081BF0 != -1)
  {
    sub_100068364();
  }

  v8 = strlen(__s);
  v9 = malloc_type_malloc(v8 + 41, 0x10E0040E60CB9C0uLL);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *v9 = a1;
  strlcpy(v9 + 40, __s, v8 + 1);
  *(v9 + 4) = a3;
  *(v9 + 1) = _Block_copy(a4);
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 136315138;
    *(v14 + 4) = v9 + 40;
    __SC_log_send();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100057F84;
  block[3] = &unk_10007B250;
  block[4] = v9;
  dispatch_sync(qword_100081BF8, block);
  return v9;
}

void sub_100057DD8(id a1)
{

  sub_100057E30();
}

uint64_t sub_100057E30()
{
  qword_100081BF8 = dispatch_queue_create("com.apple.SystemConfiguration.SCPreferencesObserver", 0);
  qword_100081C00 = 0;
  result = notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &unk_100081C08, qword_100081BF8, &stru_10007B290);
  if (result)
  {
    v1 = result;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 67109120;
      v6[1] = v1;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_100057F84(uint64_t result)
{
  *(*(result + 32) + 24) = qword_100081C00;
  qword_100081C00 = *(result + 32);
  return result;
}

void sub_100057FE4(id a1, int a2)
{

  sub_10005803C();
}

void sub_10005803C()
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v0 = _os_log_pack_size();
    __chkstk_darwin(v0, v1, v2);
    v3 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  for (i = qword_100081C00; i; i = *(i + 24))
  {
    if (sub_100058168(i))
    {
      dispatch_async(*(i + 32), *(i + 8));
    }
  }
}

BOOL sub_100058168(int *a1)
{
  v3 = (a1 + 10);
  v2 = *a1;
  *&v16.wbuf[14] = 0;
  if (v2 == 2)
  {
    v4 = "/Library/Managed Preferences/mobile";
  }

  else
  {
    v4 = 0;
  }

  memset(&v16, 0, 96);
  CC_SHA256_Init(&v16);
  memset(&v17, 0, sizeof(v17));
  snprintf(v18, 0x400uLL, "%s/%s", v4, v3);
  if (stat(v18, &v17) || (v17.st_mode & 0xF000) != 0x8000)
  {
    CC_SHA256_Final(v18, &v16);
    v6 = 0;
  }

  else
  {
    v5 = strlen(v18);
    CC_SHA256_Update(&v16, v18, v5);
    CC_SHA256_Update(&v16, &v17.st_mtimespec, 0x10u);
    CC_SHA256_Final(v18, &v16);
    v6 = CFDataCreate(0, v18, 32);
  }

  v7 = *(a1 + 2);
  if (v6 == v7)
  {
    v8 = 0;
    if (v7)
    {
LABEL_13:
      CFRelease(v7);
    }
  }

  else
  {
    v8 = 1;
    if (v6 && v7)
    {
      v8 = CFEqual(v6, v7) == 0;
      v7 = *(a1 + 2);
    }

    if (v7)
    {
      goto LABEL_13;
    }
  }

  *(a1 + 2) = v6;
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v9 = _os_log_pack_size();
    __chkstk_darwin(v9, v10, v11);
    v12 = *__error();
    v13 = _os_log_pack_fill();
    v14 = "did not change";
    if (v8)
    {
      v14 = "changed";
    }

    *v13 = 136315394;
    *(v13 + 4) = v3;
    *(v13 + 12) = 2080;
    *(v13 + 14) = v14;
    __SC_log_send();
  }

  return v8;
}

uint64_t sub_1000583F0()
{

  return _SCControlPrefsCreateWithQueue();
}

uint64_t sub_100058458()
{
  if (!qword_100081C10)
  {
    qword_100081C10 = _SCControlPrefsCreateWithQueue();
    if (!qword_100081C10)
    {
      return 0;
    }
  }

  return __SCControlPrefsGetBoolean();
}

uint64_t sub_100058514()
{
  if (!qword_100081C10)
  {
    qword_100081C10 = _SCControlPrefsCreateWithQueue();
    if (!qword_100081C10)
    {
      return 0;
    }
  }

  return __SCControlPrefsGetBoolean();
}

void sub_1000585D0(__CFBundle *a1)
{
  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8);
    v9 = *__error();
    v10 = _os_log_pack_fill();
    Identifier = CFBundleGetIdentifier(a1);
    *v10 = 138412290;
    *(v10 + 4) = Identifier;
    __SC_log_send();
  }

  qword_100081C18 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100081C20 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100081C28 = SCDynamicStoreCreate(0, @"Link Configuraton plug-in", sub_100058C88, 0);
  if (!qword_100081C28)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

LABEL_27:
    v21 = _os_log_pack_size();
    __chkstk_darwin(v21, v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    v26 = SCError();
    v27 = SCErrorString(v26);
    *v25 = 136315138;
    *(v25 + 4) = v27;
    __SC_log_send();
LABEL_28:
    if (qword_100081C18)
    {
      CFRelease(qword_100081C18);
    }

    if (qword_100081C20)
    {
      CFRelease(qword_100081C20);
    }

    if (qword_100081C28)
    {
      CFRelease(qword_100081C28);
    }

    return;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  qword_100081C30 = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  CFArrayAppendValue(Mutable, qword_100081C30);
  v14 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", &stru_10007C038, kSCDynamicStoreDomainSetup, kSCCompNetwork, @"Override", @"InterfaceType", kSCNetworkInterfaceTypeIEEE80211);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v14);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetAirPort);
  CFArrayAppendValue(v13, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v16 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetEthernet);
  CFArrayAppendValue(v13, v16);
  CFRelease(v16);
  if (_os_feature_enabled_impl())
  {
    v17 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, 0);
    CFArrayAppendValue(v13, v17);
    CFRelease(v17);
  }

  v18 = SCDynamicStoreSetNotificationKeys(qword_100081C28, Mutable, v13);
  CFRelease(Mutable);
  CFRelease(v13);
  if (!v18)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v19 = qword_100081C28;
  v20 = qword_100081C58;
  if (!qword_100081C58)
  {
    v20 = dispatch_queue_create("com.apple.SystemConfiguration.LinkConfiguration", 0);
    qword_100081C58 = v20;
  }

  if (!SCDynamicStoreSetDispatchQueue(v19, v20))
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }
}

uint64_t sub_100058C88(const __SCDynamicStore *a1, const __CFArray *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = SCDynamicStoreCopyMultiple(a1, a2, 0);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = kSCNetworkInterfaceTypeIEEE80211;
      v52 = v2;
      store = v3;
      v50 = Count;
      v51 = v5;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v8);
        Value = CFDictionaryGetValue(v5, ValueAtIndex);
        TypeID = CFDictionaryGetTypeID();
        if (Value && CFGetTypeID(Value) != TypeID)
        {
          Value = 0;
        }

        if (CFEqual(ValueAtIndex, qword_100081C30))
        {
          if (!Value)
          {
            goto LABEL_70;
          }

          v13 = CFDictionaryGetValue(Value, kSCPropNetInterfaces);
          v14 = CFArrayGetTypeID();
          if (!v13 || CFGetTypeID(v13) != v14)
          {
            goto LABEL_70;
          }

          if (qword_100081C40)
          {
            v15 = CFArrayGetCount(qword_100081C40);
          }

          else
          {
            v15 = 0;
          }

          v30 = CFArrayGetCount(v13);
          v31 = _os_feature_enabled_impl();
          v32 = 0;
          Mutable = 0;
          if (v31 && v30 >= 1)
          {
            v34 = CFArrayGetCount(v13);
            Mutable = CFArrayCreateMutable(0, v34, &kCFTypeArrayCallBacks);
            if (v34 >= 1)
            {
              for (i = 0; i != v34; ++i)
              {
                v36 = CFArrayGetValueAtIndex(v13, i);
                NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainSetup, v36, 0);
                CFArrayAppendValue(Mutable, NetworkInterfaceEntity);
                CFRelease(NetworkInterfaceEntity);
              }
            }

            v32 = SCDynamicStoreCopyMultiple(store, Mutable, 0);
          }

          theDict = v32;
          if (v30 >= 1)
          {
            v39 = 0;
            if (Mutable)
            {
              v40 = v32 == 0;
            }

            else
            {
              v40 = 1;
            }

            v41 = !v40;
            do
            {
              v42 = CFArrayGetValueAtIndex(v13, v39);
              if (!CFStringHasPrefix(v42, @"pktap"))
              {
                if (!v15 || (v55.location = 0, v55.length = v15, !CFArrayContainsValue(qword_100081C40, v55, v42)))
                {
                  v43 = CFDictionaryGetValue(qword_100081C20, v42);
                  sub_10005928C(v42, v43);
                  if (v41)
                  {
                    v44 = CFArrayGetValueAtIndex(Mutable, v39);
                    v45 = CFDictionaryGetValue(theDict, v44);
                    v46 = CFDictionaryGetTypeID();
                    if (v45)
                    {
                      if (CFGetTypeID(v45) == v46)
                      {
                        v47 = v45;
                      }

                      else
                      {
                        v47 = 0;
                      }
                    }

                    else
                    {
                      v47 = 0;
                    }

                    sub_100059528(v42, v47);
                  }
                }
              }

              ++v39;
            }

            while (v30 != v39);
          }

          if (qword_100081C40)
          {
            CFRelease(qword_100081C40);
          }

          qword_100081C40 = CFRetain(v13);
          v2 = v52;
          v3 = store;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          v7 = v50;
          v5 = v51;
          v29 = theDict;
          if (!theDict)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        }

        if (CFStringHasSuffix(ValueAtIndex, v9))
        {
          break;
        }

        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, ValueAtIndex, @"/");
        v26 = CFArrayGetCount(ArrayBySeparatingStrings);
        if (v26 <= 3)
        {
          v29 = ArrayBySeparatingStrings;
          goto LABEL_69;
        }

        v27 = v26;
        v28 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3);
        CFRetain(v28);
        if (v27 == 4)
        {
          CFRelease(ArrayBySeparatingStrings);
          if (!v28)
          {
            goto LABEL_70;
          }

          goto LABEL_67;
        }

        v38 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 4);
        CFRetain(v38);
        CFRelease(ArrayBySeparatingStrings);
        if (v28)
        {
          if (v38)
          {
            sub_10005928C(v28, Value);
            CFRelease(v38);
            goto LABEL_68;
          }

LABEL_67:
          sub_100059528(v28, Value);
LABEL_68:
          v29 = v28;
LABEL_69:
          CFRelease(v29);
        }

LABEL_70:
        ++v8;
        v9 = kSCNetworkInterfaceTypeIEEE80211;
        if (v8 == v7)
        {
          goto LABEL_80;
        }
      }

      v16 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", &stru_10007C038, kSCDynamicStoreDomainSetup, kSCCompNetwork, @"Override", @"InterfaceType", v9);
      v17 = SCDynamicStoreCopyValue(v3, v16);
      CFRelease(v16);
      v18 = CFDictionaryGetTypeID();
      if (!v17)
      {
        sub_1000597CC(0);
        sub_100059A40();
        goto LABEL_70;
      }

      if (CFGetTypeID(v17) != v18)
      {
        goto LABEL_19;
      }

      v19 = CFDictionaryGetValue(v17, @"Expiration");
      v20 = CFDateGetTypeID();
      if (!v19)
      {
LABEL_20:
        LODWORD(v24) = 0;
        goto LABEL_21;
      }

      if (CFGetTypeID(v19) != v20 || (Current = CFAbsoluteTimeGetCurrent(), v22 = CFDateCreate(0, Current), v23 = CFDateCompare(v22, v19, 0), CFRelease(v22), v23 != kCFCompareLessThan))
      {
LABEL_19:
        v19 = 0;
        goto LABEL_20;
      }

      v24 = CFDictionaryGetValue(v17, @"Cost");
      v48 = CFStringGetTypeID();
      if (v24)
      {
        if (CFGetTypeID(v24) != v48)
        {
          goto LABEL_19;
        }

        if (CFEqual(v24, @"Expensive"))
        {
          LODWORD(v24) = 2;
        }

        else
        {
          if (!CFEqual(v24, @"Inexpensive"))
          {
            goto LABEL_19;
          }

          LODWORD(v24) = 1;
        }

        v19 = CFRetain(v19);
      }

      else
      {
        v19 = 0;
      }

LABEL_21:
      CFRelease(v17);
      sub_1000597CC(v24);
      if (v24)
      {
        if (v19)
        {
          sub_100059B80(v19);
LABEL_31:
          v29 = v19;
          goto LABEL_69;
        }
      }

      else
      {
        sub_100059A40();
        if (v19)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_70;
    }

LABEL_80:
    CFRelease(v5);
  }

  result = dword_1000816A0;
  if ((dword_1000816A0 & 0x80000000) == 0)
  {
    result = close(dword_1000816A0);
    dword_1000816A0 = -1;
  }

  return result;
}

void sub_10005928C(void *key, void *value)
{
  if (value)
  {
    CFDictionarySetValue(qword_100081C20, key, value);
    v4 = _SCNetworkInterfaceCreateWithBSDName();
    if (!v4)
    {
      return;
    }

    v5 = v4;
    if (!CFDictionaryContainsKey(qword_100081C18, key))
    {
      valuePtr = -1;
      current = 0;
      mtu_cur = -1;
      MutableCopy = 0;
      if (SCNetworkInterfaceCopyMediaOptions(v5, &current, 0, 0, 0) && current)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, current);
        CFRelease(current);
      }

      if (SCNetworkInterfaceCopyMTU(v5, &mtu_cur, 0, 0) && mtu_cur != -1)
      {
        if (!MutableCopy)
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v7 = CFNumberCreate(0, kCFNumberIntType, &mtu_cur);
        CFDictionaryAddValue(MutableCopy, kSCPropNetEthernetMTU, v7);
        CFRelease(v7);
      }

      valuePtr = __SCNetworkInterfaceCreateCapabilities();
      if (valuePtr != -1)
      {
        if (!MutableCopy)
        {
          MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(MutableCopy, @"_CAPABILITIES_", v8);
        CFRelease(v8);
      }

      if (MutableCopy)
      {
        CFDictionarySetValue(qword_100081C18, key, MutableCopy);
        CFRelease(MutableCopy);
      }
    }

    sub_10005A664(v5);
    sub_10005A888(v5, value);
    sub_10005B088(v5, value);
  }

  else
  {
    CFDictionaryRemoveValue(qword_100081C20, key);
    v9 = _SCNetworkInterfaceCreateWithBSDName();
    if (!v9)
    {
      return;
    }

    v5 = v9;
    v10 = CFDictionaryGetValue(qword_100081C18, key);
    if (v10)
    {
      v11 = v10;
      sub_10005A664(v5);
      sub_10005A888(v5, v11);
      sub_10005B088(v5, v11);
      CFDictionaryRemoveValue(qword_100081C18, key);
    }
  }

  CFRelease(v5);
}

uint64_t sub_100059528(const __CFString *a1, const void *a2)
{
  v4 = _SCNetworkInterfaceCreateWithBSDName();
  if (v4)
  {
    v5 = v4;
    v6 = SCNetworkInterfaceSupportsLowDataMode();
    CFRelease(v5);
    if (v6)
    {
      TypeID = CFDictionaryGetTypeID();
      v10 = a2 && CFGetTypeID(a2) == TypeID && (valuePtr = 0, Value = CFDictionaryGetValue(a2, kSCPropEnableLowDataMode), v9 = CFNumberGetTypeID(), Value) && CFGetTypeID(Value) == v9 && CFNumberGetValue(Value, kCFNumberIntType, &valuePtr) && valuePtr != 0;
      return sub_10005B668(a1, v10);
    }

    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
LABEL_18:
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 138412290;
      *(v16 + 4) = a1;
      return __SC_log_send();
    }
  }

  else
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t sub_1000597CC(int a1)
{
  result = sub_100059E44();
  if (result)
  {
    v3 = result;
    if (a1)
    {
      v4 = a1 == 2;
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return sub_10005A03C(v3, v4);
      }

      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      v10 = "in";
      if (a1 == 2)
      {
        v10 = "";
      }

      *v9 = 138412546;
      *(v9 + 4) = v3;
      *(v9 + 12) = 2080;
      *(v9 + 14) = v10;
    }

    else
    {
      v4 = sub_10005BAA0();
      if (!qword_100081C38)
      {
        qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return sub_10005A03C(v3, v4);
      }

      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = "";
      if (!v4)
      {
        v16 = "in";
      }

      *v15 = 138412546;
      *(v15 + 4) = v3;
      *(v15 + 12) = 2080;
      *(v15 + 14) = v16;
    }

    __SC_log_send();
    return sub_10005A03C(v3, v4);
  }

  return result;
}

void sub_100059A40()
{
  if (qword_100081C50)
  {
    if (!qword_100081C38)
    {
      qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v0 = _os_log_pack_size();
      __chkstk_darwin(v0, v1, v2);
      v3 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    dispatch_source_cancel(qword_100081C50);
    dispatch_release(qword_100081C50);
    qword_100081C50 = 0;
  }
}

void sub_100059B80(const __CFDate *a1)
{
  sub_100059A40();
  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 138412290;
    *(v6 + 4) = a1;
    __SC_log_send();
  }

  Current = CFAbsoluteTimeGetCurrent();
  AbsoluteTime = CFDateGetAbsoluteTime(a1);
  if (!qword_100081C38)
  {
    qword_100081C38 = os_log_create("com.apple.SystemConfiguration", "LinkConfiguration");
  }

  v9 = AbsoluteTime - Current;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 134218496;
    *(v14 + 4) = AbsoluteTime;
    *(v14 + 12) = 2048;
    *(v14 + 14) = Current;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v9;
    __SC_log_send();
  }

  v15 = dispatch_time(0xFFFFFFFFFFFFFFFELL, (v9 * 1000000000.0));
  v16 = qword_100081C58;
  if (!qword_100081C58)
  {
    v16 = dispatch_queue_create("com.apple.SystemConfiguration.LinkConfiguration", 0);
    qword_100081C58 = v16;
  }

  qword_100081C50 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
  dispatch_source_set_event_handler(qword_100081C50, &stru_10007B2D0);
  dispatch_source_set_timer(qword_100081C50, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(qword_100081C50);
}