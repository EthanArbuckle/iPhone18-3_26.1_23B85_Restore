uint64_t sub_100024A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v6 = 1002;
  }

  else
  {
    v6 = 1001;
  }

  *a5 = v6;
  return 0;
}

uint64_t sub_100024B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (_SCUnserializeString())
  {
    CFStringGetTypeID();
    v6 = 1002;
  }

  else
  {
    v6 = 1001;
  }

  *a5 = v6;
  return 0;
}

uint64_t sub_100024C00(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return 2003;
  }

  v2 = (a1 + 40);
  if (*(sub_1000022F8(*(a1 + 40)) + 32))
  {
    if (!qword_1000816E8)
    {
      qword_1000816E8 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
    }

    v3 = CFNumberCreate(0, kCFNumberIntType, v2);
    CFSetAddValue(qword_1000816E8, v3);
    CFRelease(v3);
  }

  return 0;
}

uint64_t sub_100024CC8(int a1, mach_port_name_t a2, int a3, int *a4)
{
  v7 = sub_1000022F8(a1);
  v8 = fileport_makefd();
  mach_port_deallocate(mach_task_self_, a2);
  if (v8 < 0)
  {
    *a4 = *__error();
    return 0;
  }

  v9 = fcntl(v8, 3, 0);
  if (v9 == -1 || fcntl(v8, 4, v9 | 4u) == -1)
  {
    v12 = *__error();
LABEL_8:
    *a4 = v12;
    goto LABEL_9;
  }

  if (!v7)
  {
    v12 = 2001;
    goto LABEL_8;
  }

  v10 = *(v7 + 56);
  v11 = sub_100024C00(v10);
  *a4 = v11;
  if (v11)
  {
LABEL_9:
    close(v8);
    return 0;
  }

  v10[12] = 3;
  v10[48] = v8;
  v10[49] = a3;
  return 0;
}

uint64_t sub_100024DEC(int a1, int *a2)
{
  v3 = sub_1000022F8(a1);
  if (v3)
  {
    sub_100007D40(*(v3 + 56));
    v4 = 0;
  }

  else
  {
    v4 = 2001;
  }

  *a2 = v4;
  return 0;
}

uint64_t sub_100024E64()
{
  unlink("/var/tmp/configd-state");
  v0 = open("/var/tmp/configd-state", 3585, 420);
  if (v0 == -1)
  {
    return 1001;
  }

  v1 = fdopen(v0, "w");
  if (!v1)
  {
    return 1001;
  }

  v2 = v1;
  SCPrint();
  CFRunLoopGetCurrent();
  SCPrint();
  sub_100022C80(v2);
  fclose(v2);
  unlink("/var/tmp/configd-store.plist");
  v3 = open("/var/tmp/configd-store.plist", 3585, 420);
  if (v3 == -1)
  {
    return 1001;
  }

  v4 = v3;
  v5 = sub_1000251AC(qword_1000816C0);
  Data = CFPropertyListCreateData(0, v5, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFRelease(v5);
  if (!Data)
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_12:
      close(v4);
      return 1001;
    }

LABEL_11:
    v15 = _os_log_pack_size();
    __chkstk_darwin(v15, v16, v17);
    v18 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
    goto LABEL_12;
  }

  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  write(v4, BytePtr, Length);
  close(v4);
  CFRelease(Data);
  unlink("/var/tmp/configd-pattern.plist");
  v9 = open("/var/tmp/configd-pattern.plist", 3585, 420);
  if (v9 != -1)
  {
    v4 = v9;
    v10 = CFPropertyListCreateData(0, qword_1000816C8, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = CFDataGetBytePtr(v10);
      v13 = CFDataGetLength(v11);
      write(v4, v12, v13);
      close(v4);
      CFRelease(v11);
      return 0;
    }

    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return 1001;
}

CFDictionaryRef sub_1000251AC(const __CFDictionary *a1)
{
  memset(v23, 0, 512);
  memset(v22, 0, 512);
  memset(v21, 0, 512);
  Count = CFDictionaryGetCount(a1);
  v3 = Count;
  if (Count <= 0)
  {
    return CFDictionaryCreate(0, v23, v22, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  if (Count < 0x65)
  {
    Typed = v23;
    v6 = v22;
    v5 = v21;
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
    v5 = CFAllocatorAllocateTyped();
    v6 = CFAllocatorAllocateTyped();
  }

  bzero(v6, 8 * v3);
  CFDictionaryGetKeysAndValues(a1, Typed, v5);
  v8 = 0;
  *&v9 = 138412290;
  v18 = v9;
  do
  {
    if (CFDictionaryGetValue(v5[v8], @"data"))
    {
      v20 = 0;
      v6[v8] = CFDictionaryCreateMutableCopy(0, 0, v5[v8]);
      if (_SCUnserialize())
      {
        CFDictionarySetValue(v6[v8], @"data", v20);
        CFRelease(v20);
      }

      else
      {
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v10 = _os_log_pack_size();
          v19 = &v18;
          __chkstk_darwin(v10, v11, v12);
          v13 = *__error();
          v14 = _os_log_pack_fill();
          v15 = Typed[v8];
          *v14 = v18;
          *(v14 + 4) = v15;
          __SC_log_send();
        }
      }
    }

    else
    {
      v6[v8] = CFRetain(v5[v8]);
    }

    ++v8;
  }

  while (v3 != v8);
  v7 = CFDictionaryCreate(0, Typed, v6, v3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = 0;
  do
  {
    CFRelease(v6[v16++]);
  }

  while (v3 != v16);
  if (Typed != v23)
  {
    CFAllocatorDeallocate(0, Typed);
    CFAllocatorDeallocate(0, v5);
    CFAllocatorDeallocate(0, v6);
  }

  return v7;
}

uint64_t sub_1000255EC(int a1, _DWORD *a2)
{
  v3 = sub_1000022F8(a1);
  if (!v3)
  {
    return 2001;
  }

  if (!sub_100022EE0(v3))
  {
    return 1003;
  }

  v4 = sub_100024E64();
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t sub_100025670(uint64_t a1)
{
  v1 = *(a1 + 20);
  if ((v1 - 20030) >= 0xFFFFFFE2)
  {
    return *(&off_100079E80 + 5 * (v1 - 20000) + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000256F0(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v3 = -304;
LABEL_9:
    *(a2 + 32) = v3;
    goto LABEL_10;
  }

  if (*(result + 39) != 1 || *(result + 40) != *(result + 52))
  {
    v3 = -300;
    goto LABEL_9;
  }

  *(a2 + 36) = 16777473;
  result = sub_100023FEC(*(result + 12), *(result + 28), *(result + 40), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_10:
    *(a2 + 24) = NDR_record;
    return result;
  }

  *(a2 + 40) = *(a2 + 52);
  *(a2 + 44) = NDR_record;
  *a2 |= 0x80000000;
  *(a2 + 4) = 60;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100025810(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_100024220(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_10002591C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_100024690(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100025A04(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v5 = -304;
LABEL_11:
    *(a2 + 32) = v5;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || (v3 = *(result + 40), v3 != *(result + 68)) || (v4 = *(result + 56), v4 != *(result + 72)))
  {
    v5 = -300;
    goto LABEL_11;
  }

  result = sub_100024354(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t sub_100025B10(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_10002490C(*(result + 12), *(result + 28), v3, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100025BF8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_100024A08(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100025CE4(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 60)
  {
    v4 = -304;
LABEL_9:
    *(a2 + 32) = v4;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || (v3 = *(result + 40), v3 != *(result + 52)))
  {
    v4 = -300;
    goto LABEL_9;
  }

  result = sub_100024B04(*(result + 12), *(result + 28), v3, *(result + 56), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100025DD0(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_100024DEC(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

uint64_t sub_100025E80(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 52)
  {
    v3 = -304;
LABEL_8:
    *(a2 + 32) = v3;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 38) << 16 != 1114112)
  {
    v3 = -300;
    goto LABEL_8;
  }

  result = sub_100024CC8(*(result + 12), *(result + 28), *(result + 48), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *sub_100025F60(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = sub_1000255EC(result[3], (a2 + 36));
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
    if (!result)
    {
      *(a2 + 4) = 40;
    }
  }

  return result;
}

void sub_100026010(uint64_t a1, uint64_t a2)
{
  if (qword_1000817C8 && CFArrayGetCount(qword_1000817C8) <= 99)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = CFStringCreateWithFormat(0, 0, @"%12.8f: %s %s", *&Current, a1, a2);
    if (qword_1000817C8 && CFArrayGetCount(qword_1000817C8) <= 99)
    {
      CFArrayAppendValue(qword_1000817C8, v5);
      byte_1000817D0 = 1;
    }

    CFRelease(v5);
  }
}

void sub_100026118(const char *a1)
{
  if (a1)
  {
    v2 = xpc_array_create(0, 0);
    xpc_array_set_string(v2, 0xFFFFFFFFFFFFFFFFLL, a1);
    network_config_check_interface_settings();

    xpc_release(v2);
  }

  else
  {

    network_config_check_interface_settings();
  }
}

void sub_1000261E4()
{
  v0 = qword_1000817B8;

  dispatch_async(v0, &stru_10007A370);
}

void sub_10002624C(id a1)
{

  sub_1000262A4();
}

void sub_1000262A4()
{
  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
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

  _SCDynamicStoreCacheOpen();
  qword_1000817C8 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  sub_100026E50("prime", 1);
  _SCDynamicStoreCacheCommitChanges();
  _SCDynamicStoreCacheClose();
  byte_1000816F8 = 1;
  sub_100008C3C();
  if (qword_1000817C8 && byte_1000817D0)
  {
    SCDynamicStoreSetValue(0, @"Plugin:KernelEventMonitor", qword_1000817C8);
    byte_1000817D0 = 0;
  }

  dispatch_resume(qword_1000817C0);
  v4 = dispatch_time(0, 6000000000);
  dispatch_after_f(v4, qword_1000817B8, 0, sub_100027090);
}

void sub_100026484(__CFBundle *a1, int a2)
{
  if (a2)
  {
    byte_100081708 = 1;
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  v48 = 0;
  v47 = 0;
  v46 = 0;
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    Identifier = CFBundleGetIdentifier(a1);
    *v11 = 138412290;
    *(v11 + 4) = Identifier;
    __SC_log_send();
  }

  if (sub_100026C8C())
  {
    v13 = socket(32, 3, 1);
    if (v13 == -1)
    {
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v23 = _os_log_pack_size();
        __chkstk_darwin(v23, v24, v25);
        v26 = *__error();
        v27 = _os_log_pack_fill();
        v28 = __error();
        v29 = strerror(*v28);
        *v27 = 136315138;
        *(v27 + 4) = v29;
        __SC_log_send();
      }

      goto LABEL_38;
    }

    v14 = v13;
    v47 = 0x100000001;
    v48 = 0;
    if (ioctl(v13, 0x800C6502uLL, &v47))
    {
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_37;
      }

      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17);
      v18 = *__error();
    }

    else
    {
      v45 = 1;
      if (ioctl(v14, 0x8004667EuLL, &v45))
      {
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_37;
        }
      }

      else
      {
        v46 = 0x40000;
        if (!setsockopt(v14, 0xFFFF, 4098, &v46, 4u))
        {
          qword_1000817B8 = dispatch_queue_create("com.apple.SystemConfiguration.KernelEventMonitor", 0);
          qword_1000817C0 = dispatch_source_create(&_dispatch_source_type_read, v14, 0, qword_1000817B8);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 0x40000000;
          handler[2] = sub_100026DF4;
          handler[3] = &unk_10007A390;
          v44 = v14;
          dispatch_source_set_cancel_handler(qword_1000817C0, handler);
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 0x40000000;
          v41[2] = sub_100008D94;
          v41[3] = &unk_10007A3B0;
          v42 = v14;
          dispatch_source_set_event_handler(qword_1000817C0, v41);
          return;
        }

        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (!__SC_log_enabled())
        {
          goto LABEL_37;
        }
      }

      v30 = _os_log_pack_size();
      __chkstk_darwin(v30, v31, v32);
      v33 = *__error();
    }

    v34 = _os_log_pack_fill();
    v35 = __error();
    v36 = strerror(*v35);
    *v34 = 136315138;
    *(v34 + 4) = v36;
    __SC_log_send();
LABEL_37:
    close(v14);
LABEL_38:
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v37 = _os_log_pack_size();
      __chkstk_darwin(v37, v38, v39);
      v40 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    CFRelease(qword_100081700);
    return;
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v19 = _os_log_pack_size();
    __chkstk_darwin(v19, v20, v21);
    v22 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }
}

uint64_t sub_100026C8C()
{
  qword_100081700 = SCDynamicStoreCreate(0, @"Kernel Event Monitor plug-in", 0, 0);
  if (qword_100081700)
  {
    return 1;
  }

  if (!qword_1000817B0)
  {
    qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v1 = _os_log_pack_size();
    __chkstk_darwin(v1, v2, v3);
    v4 = *__error();
    v5 = _os_log_pack_fill();
    v6 = SCError();
    v7 = SCErrorString(v6);
    *v5 = 136315138;
    *(v5 + 4) = v7;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_100026DF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  return close(v1);
}

void sub_100026E50(uint64_t a1, int a2)
{
  v20 = 0;
  if (getifaddrs(&v20) == -1)
  {
    v11 = __error();
    v12 = strerror(*v11);
    sub_100026010("getifaddrs", v12);
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      v18 = __error();
      v19 = strerror(*v18);
      *v17 = 136315138;
      *(v17 + 4) = v19;
      __SC_log_send();
    }
  }

  else
  {
    v4 = sub_100027A48();
    v5 = v20;
    if (v20)
    {
      v6 = 0;
      do
      {
        ifa_addr = v5->ifa_addr;
        if (ifa_addr && ifa_addr->sa_family == 18)
        {
          ifa_data = v5->ifa_data;
          v9 = !ifa_data || *ifa_data != 254;
          if (sub_100027CF4(v4, v5->ifa_name))
          {
            sub_100026010(a1, v5->ifa_name);
            v10 = !v9;
            if (a2)
            {
              v10 = 1;
            }

            if ((v10 & 1) == 0)
            {
              sub_100026118(v5->ifa_name);
            }

            v6 = 1;
          }
        }

        v5 = v5->ifa_next;
      }

      while (v5);
      if (v6)
      {
        sub_100027BA0(v4);
      }
    }

    CFRelease(v4);
    if (a2)
    {
      sub_10000D8D0(v20, 0);
      sub_10000A848(v20, 0);
    }

    freeifaddrs(v20);
  }

  if (a2)
  {
    network_config_check_interface_settings();
  }
}

void sub_100027090()
{
  snprintf(__str, 0x20uLL, "update %d (of %d)", ++dword_1000817D4, 20);
  _SCDynamicStoreCacheOpen();
  sub_100026E50(__str, 0);
  _SCDynamicStoreCacheCommitChanges();
  _SCDynamicStoreCacheClose();
  if (qword_1000817C8 && byte_1000817D0)
  {
    SCDynamicStoreSetValue(0, @"Plugin:KernelEventMonitor", qword_1000817C8);
    byte_1000817D0 = 0;
  }

  if (dword_1000817D4 > 19)
  {
    if (qword_1000817C8)
    {
      CFRelease(qword_1000817C8);
      qword_1000817C8 = 0;
    }
  }

  else
  {
    v0 = dispatch_time(0, 6000000000);
    dispatch_after_f(v0, qword_1000817B8, 0, sub_100027090);
  }
}

uint64_t sub_1000271BC(uint64_t result)
{
  if (byte_100081708)
  {
    v1 = result;
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v2 = _os_log_pack_size();
      __chkstk_darwin(v2, v3, v4);
      v5 = *__error();
      v6 = _os_log_pack_fill();
      *v6 = 138412290;
      *(v6 + 4) = @"Error processing (Apple network subclass)";
      __SC_log_send();
    }

    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      v12 = *v1;
      v13 = v1[1];
      v14 = v1[2];
      v15 = v1[3];
      v16 = v1[4];
      v17 = v1[5];
      *v11 = 67110400;
      *(v11 + 4) = v12;
      *(v11 + 8) = 1024;
      *(v11 + 10) = v16;
      *(v11 + 14) = 1024;
      *(v11 + 16) = v13;
      *(v11 + 20) = 1024;
      *(v11 + 22) = v14;
      *(v11 + 26) = 1024;
      *(v11 + 28) = v15;
      *(v11 + 32) = 1024;
      *(v11 + 34) = v17;
      result = __SC_log_send();
    }

    if (*v1 >= 0x19)
    {
      v18 = 0;
      v19 = 6;
      do
      {
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v20 = _os_log_pack_size();
          __chkstk_darwin(v20, v21, v22);
          v23 = *__error();
          v24 = _os_log_pack_fill();
          v25 = v1[v19];
          *v24 = 67109376;
          *(v24 + 4) = v18;
          *(v24 + 8) = 1024;
          *(v24 + 10) = v25;
          result = __SC_log_send();
        }

        ++v19;
        ++v18;
      }

      while ((v19 * 4) < *v1);
    }
  }

  return result;
}

void sub_10002751C(char *cStr, unint64_t a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, CFIndex a6)
{
  v12 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v12, kSCEntNetLinkIssues);
  v14 = sub_10000A670(NetworkInterfaceEntity);
  v15 = CFDataCreate(0, a3, a4);
  CFDictionarySetValue(v14, kSCPropNetLinkIssuesModuleID, v15);
  CFRelease(v15);
  if (a6)
  {
    v16 = CFDataCreate(0, a5, a6);
    CFDictionarySetValue(v14, kSCPropNetLinkIssuesInfo, v16);
    CFRelease(v16);
  }

  else
  {
    CFDictionaryRemoveValue(v14, kSCPropNetLinkIssuesInfo);
  }

  v17 = CFDateCreate(0, a2);
  CFDictionarySetValue(v14, kSCPropNetLinkIssuesTimeStamp, v17);
  CFRelease(v17);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v18 = _os_log_pack_size();
    __chkstk_darwin(v18, v19, v20);
    v21 = *__error();
    v22 = _os_log_pack_fill();
    *v22 = 136315394;
    *(v22 + 4) = cStr;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v14;
    __SC_log_send();
  }

  SCDynamicStoreSetValue(qword_100081700, NetworkInterfaceEntity, v14);
  CFRelease(v12);
  CFRelease(v14);
  CFRelease(NetworkInterfaceEntity);
}

void sub_100027788(const char *a1)
{
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 136315138;
    *(v6 + 4) = a1;
    __SC_log_send();
  }

  v7 = CFStringCreateWithCString(0, a1, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetLink);
  v9 = sub_10000A670(NetworkInterfaceEntity);
  CFDictionarySetValue(v9, kSCPropNetLinkDetaching, kCFBooleanTrue);
  SCDynamicStoreSetValue(qword_100081700, NetworkInterfaceEntity, v9);
  CFRelease(v7);
  CFRelease(v9);
  CFRelease(NetworkInterfaceEntity);
}

void sub_10002792C(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v2, kSCEntNetLink);
  v4 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterfaceEntity);
  if (!v4)
  {
    sub_100006850(cStr, v2, 0, 0);
    v5 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterfaceEntity);
    if (!v5)
    {
      goto LABEL_5;
    }

    v4 = v5;
    sub_100026010("added missing link status", cStr);
  }

  CFRelease(v4);
LABEL_5:
  CFRelease(v2);

  CFRelease(NetworkInterfaceEntity);
}

CFMutableArrayRef sub_100027A48()
{
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  v1 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterface);
  CFRelease(NetworkInterface);
  if (v1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v1) == TypeID && (Value = CFDictionaryGetValue(v1, kSCPropNetInterfaces), v4 = CFArrayGetTypeID(), Value) && CFGetTypeID(Value) == v4)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
      CFRelease(v1);
      if (MutableCopy)
      {
        return MutableCopy;
      }
    }

    else
    {
      CFRelease(v1);
    }
  }

  return CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
}

void sub_100027BA0(const void *a1)
{
  v9 = a1;
  NetworkInterface = SCDynamicStoreKeyCreateNetworkInterface(0, kSCDynamicStoreDomainState);
  v3 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterface);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  TypeID = CFDictionaryGetTypeID();
  if (CFGetTypeID(v4) != TypeID)
  {
    CFRelease(v4);
LABEL_5:
    v8 = CFDictionaryCreate(0, &kSCPropNetInterfaces, &v9, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    SCDynamicStoreSetValue(qword_100081700, NetworkInterface, v8);
    v7 = v8;
    goto LABEL_6;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFRelease(v4);
  CFDictionarySetValue(MutableCopy, kSCPropNetInterfaces, a1);
  SCDynamicStoreSetValue(qword_100081700, NetworkInterface, MutableCopy);
  v7 = MutableCopy;
LABEL_6:
  CFRelease(v7);
  CFRelease(NetworkInterface);
}

uint64_t sub_100027CF4(const __CFArray *a1, char *a2)
{
  v4 = CFStringCreateWithCString(0, a2, 0x8000100u);
  v12.length = CFArrayGetCount(a1);
  v12.location = 0;
  if (CFArrayContainsValue(a1, v12, v4))
  {
    sub_100006E68(a2, 0, 1);
    v5 = 0;
  }

  else
  {
    CFArrayAppendValue(a1, v4);
    sub_100006E68(a2, 1, 0);
    v6 = sub_10000A6F0(2);
    if (v6 == -1)
    {
      sub_10000A3BC(a2, -1);
    }

    else
    {
      v7 = v6;
      *__str = 0u;
      v11 = 0u;
      snprintf(__str, 0x10uLL, "%s", a2);
      if (ioctl(v7, 0xC020698AuLL, __str) == -1)
      {
        v8 = -1;
      }

      else
      {
        v8 = v11;
      }

      sub_10000A3BC(a2, v8);
      close(v7);
    }

    v5 = 1;
  }

  CFRelease(v4);
  return v5;
}

void sub_100027E44(char *a1)
{
  v2 = sub_100027A48();
  if (sub_100027CF4(v2, a1))
  {
    sub_100026010("link_add", a1);
    sub_100027BA0(v2);
    if (strncmp(a1, "pktap", 5uLL))
    {
      sub_100026118(a1);
    }
  }

  CFRelease(v2);
}

void sub_100027EF8(const char *a1)
{
  v2 = sub_100027A48();
  v3 = CFStringCreateWithCString(0, a1, 0x8000100u);
  v6.length = CFArrayGetCount(v2);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v2, v6, v3);
  CFRelease(v3);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(v2, FirstIndexOfValue);
    sub_10002833C(a1);
    sub_100027BA0(v2);
  }

  CFRelease(v2);
}

void sub_100027FD4(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v2, kSCEntNetInterfaceDelegation);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    *v8 = 136315138;
    *(v8 + 4) = cStr;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v2);
}

void sub_100028150(const char *a1)
{
  v2 = sub_10000A6F0(2);
  if (v2 != -1)
  {
    v3 = v2;
    *__str = 0u;
    v14 = 0u;
    snprintf(__str, 0x10uLL, "%s", a1);
    v4 = ioctl(v3, 0xC0206989uLL, __str);
    v5 = v14;
    close(v3);
    if (v4 != -1 && !v5)
    {
      v6 = CFStringCreateWithCString(0, a1, 0x8000100u);
      NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v6, kSCEntNetIdleRoute);
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        *v12 = 136315138;
        *(v12 + 4) = a1;
        __SC_log_send();
      }

      SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
      CFRelease(NetworkInterfaceEntity);
      CFRelease(v6);
    }
  }
}

void sub_10002833C(const char *a1)
{
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    *v6 = 136315138;
    *(v6 + 4) = a1;
    __SC_log_send();
  }

  v7 = CFStringCreateWithCString(0, a1, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetLink);
  SCDynamicStoreRemoveValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v9 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetNAT64);
  SCDynamicStoreRemoveValue(qword_100081700, v9);
  CFRelease(v9);
  v10 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetLinkQuality);
  SCDynamicStoreRemoveValue(qword_100081700, v10);
  CFRelease(v10);
  v11 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetLinkIssues);
  SCDynamicStoreRemoveValue(qword_100081700, v11);
  CFRelease(v11);
  CFRelease(v7);
}

void sub_100028550(const __CFDictionary *a1, const void *a2, unsigned __int8 *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v8 = MutableCopy;
  v9 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d.%d", *a3, a3[1], a3[2], a3[3]);
  CFArrayAppendValue(v8, v9);
  CFRelease(v9);
  CFDictionarySetValue(a1, a2, v8);

  CFRelease(v8);
}

void sub_10002864C(char *cStr, int a2, int a3, uint64_t a4)
{
  v7 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetIPv4ARPCollision);
  MutableCopy = CFStringCreateMutableCopy(0, 0, NetworkInterfaceEntity);
  CFStringAppendFormat(MutableCopy, 0, @"/%d.%d.%d.%d", a2, BYTE1(a2), BYTE2(a2), HIBYTE(a2));
  if (a3 >= 1)
  {
    v10 = 0;
    do
    {
      if (v10)
      {
        v11 = ":";
      }

      else
      {
        v11 = "/";
      }

      CFStringAppendFormat(MutableCopy, 0, @"%s%02x", v11, *(a4 + v10++));
    }

    while (a3 != v10);
  }

  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    __chkstk_darwin(v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 138412290;
    *(v16 + 4) = MutableCopy;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v7);
}

void sub_100028878(char *a1)
{
  v1 = kSCEntNetIPv4RouterARPFailure;

  sub_1000288E4(a1, "Router ARP failure", v1);
}

void sub_1000288E4(char *cStr, uint64_t a2, const __CFString *a3)
{
  v5 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v5, a3);
  CFRelease(v5);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 136315394;
    *(v11 + 4) = a2;
    *(v11 + 12) = 2112;
    *(v11 + 14) = NetworkInterfaceEntity;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
}

void sub_100028A64(char *a1)
{
  v1 = kSCEntNetIPv4RouterARPAlive;

  sub_1000288E4(a1, "Router ARP alive", v1);
}

void sub_100028AD0(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v8 = MutableCopy;
  if (!inet_ntop(30, (a3 + 8), v17, 0x2Eu))
  {
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      v14 = __error();
      v15 = strerror(*v14);
      *v13 = 136315138;
      *(v13 + 4) = v15;
      __SC_log_send();
    }

    v17[0] = 0;
  }

  v16 = CFStringCreateWithFormat(0, 0, @"%s", v17);
  CFArrayAppendValue(v8, v16);
  CFRelease(v16);
  CFDictionarySetValue(a1, a2, v8);
  CFRelease(v8);
}

void sub_100028CA4(char *cStr, const void *a2, int a3, uint64_t a4)
{
  v7 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, @"IPv6DuplicatedAddress");
  v12[0] = 0;
  inet_ntop(30, a2, v12, 0x2Eu);
  MutableCopy = CFStringCreateMutableCopy(0, 0, NetworkInterfaceEntity);
  CFStringAppendFormat(MutableCopy, 0, @"/%s", v12);
  if (a3 >= 1)
  {
    v10 = 0;
    do
    {
      if (v10)
      {
        v11 = ":";
      }

      else
      {
        v11 = "/";
      }

      CFStringAppendFormat(MutableCopy, 0, @"%s%02x", v11, *(a4 + v10++));
    }

    while (a3 != v10);
  }

  SCDynamicStoreNotifyValue(qword_100081700, MutableCopy);
  CFRelease(MutableCopy);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v7);
}

void sub_100028E1C(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v1, kSCEntNetNAT64PrefixRequest);
  CFRelease(v1);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 138412290;
    *(v7 + 4) = NetworkInterfaceEntity;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
}

void sub_100028F88(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x600u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v1, kSCEntNetIPv6RouterExpired);
  CFRelease(v1);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 138412290;
    *(v7 + 4) = NetworkInterfaceEntity;
    __SC_log_send();
  }

  SCDynamicStoreNotifyValue(qword_100081700, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
}

uint64_t sub_1000290F4(int a1, uint64_t a2, int a3)
{
  v16 = 0u;
  v17 = 0u;
  __strlcpy_chk();
  v6 = ioctl(a1, 0xC02069A0uLL, &v16);
  if (v6 == -1 && *__error() != 1)
  {
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_10:
      v8 = _os_log_pack_size();
      __chkstk_darwin(v8, v9, v10);
      v11 = *__error();
      v12 = _os_log_pack_fill();
      v13 = __error();
      v14 = strerror(*v13);
      *v12 = 136315394;
      *(v12 + 4) = a2;
      *(v12 + 12) = 2080;
      *(v12 + 14) = v14;
      __SC_log_send();
    }

    return 0xFFFFFFFFLL;
  }

  if (v17 != a3)
  {
    LODWORD(v17) = a3;
    v7 = ioctl(a1, 0xC02069A1uLL, &v16);
    if (v7 != -1)
    {
      return v7;
    }

    if (*__error() != 1)
    {
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_10;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v6;
}

void sub_10002934C(const void *a1)
{
  v2 = SCPreferencesCreate(0, @"KernelEventMonitor", 0);
  if (v2)
  {
    v3 = v2;
    v4 = SCNetworkSetCopyCurrent(v2);
    if (!v4)
    {
      goto LABEL_25;
    }

    v5 = v4;
    v6 = SCNetworkSetCopyServices(v4);
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        v9 = Count;
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
          if (SCNetworkServiceGetEnabled(ValueAtIndex))
          {
            Interface = SCNetworkServiceGetInterface(ValueAtIndex);
            if (Interface)
            {
              v13 = Interface;
              BSDName = SCNetworkInterfaceGetBSDName(Interface);
              if (BSDName)
              {
                if (CFEqual(BSDName, a1))
                {
                  break;
                }
              }
            }
          }

          if (v9 == ++v10)
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        CFRetain(v13);
LABEL_12:
        CFRelease(v5);
        CFRelease(v7);
        if (v13)
        {
          EnableLowDataModeValue = __SCNetworkInterfaceGetEnableLowDataModeValue();
          if (EnableLowDataModeValue)
          {
            valuePtr = 0;
            CFNumberGetValue(EnableLowDataModeValue, kCFNumberIntType, &valuePtr);
            sub_100006F0C();
            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
LABEL_19:
              CFRelease(v3);
              v22 = v13;
LABEL_28:
              CFRelease(v22);
              return;
            }

            v16 = _os_log_pack_size();
            __chkstk_darwin(v16, v17, v18);
            v19 = *__error();
            v20 = _os_log_pack_fill();
            v21 = "true";
            if (!valuePtr)
            {
              v21 = "false";
            }

            *v20 = 138412546;
            *(v20 + 4) = a1;
            *(v20 + 12) = 2080;
            *(v20 + 14) = v21;
          }

          else
          {
            if (SCNetworkInterfaceSetEnableLowDataMode())
            {
              if (SCPreferencesCommitChanges(v3))
              {
                v35 = SCPreferencesApplyChanges(v3);
                sub_100006F0C();
                _SC_syslog_os_log_mapping();
                v36 = __SC_log_enabled();
                if (v35)
                {
                  if (!v36)
                  {
                    goto LABEL_19;
                  }

                  v37 = _os_log_pack_size();
                  __chkstk_darwin(v37, v38, v39);
                  v40 = *__error();
                  v41 = _os_log_pack_fill();
                  *v41 = 138412290;
                  *(v41 + 4) = a1;
                  goto LABEL_18;
                }

                if (!v36)
                {
                  goto LABEL_19;
                }

                v56 = _os_log_pack_size();
                __chkstk_darwin(v56, v57, v58);
                v59 = *__error();
                v60 = _os_log_pack_fill();
                v61 = SCError();
                v62 = SCErrorString(v61);
                *v60 = 136315138;
                *(v60 + 4) = v62;
              }

              else
              {
                sub_100006F0C();
                _SC_syslog_os_log_mapping();
                if (!__SC_log_enabled())
                {
                  goto LABEL_19;
                }

                v49 = _os_log_pack_size();
                __chkstk_darwin(v49, v50, v51);
                v52 = *__error();
                v53 = _os_log_pack_fill();
                v54 = SCError();
                v55 = SCErrorString(v54);
                *v53 = 136315138;
                *(v53 + 4) = v55;
              }

              __SC_log_send();
              goto LABEL_19;
            }

            sub_100006F0C();
            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_19;
            }

            v42 = _os_log_pack_size();
            __chkstk_darwin(v42, v43, v44);
            v45 = *__error();
            v46 = _os_log_pack_fill();
            v47 = SCError();
            v48 = SCErrorString(v47);
            *v46 = 138412546;
            *(v46 + 4) = a1;
            *(v46 + 12) = 2080;
            *(v46 + 14) = v48;
          }

LABEL_18:
          __SC_log_send();
          goto LABEL_19;
        }

LABEL_25:
        sub_100006F0C();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v30 = _os_log_pack_size();
          __chkstk_darwin(v30, v31, v32);
          v33 = *__error();
          v34 = _os_log_pack_fill();
          *v34 = 138412290;
          *(v34 + 4) = a1;
          __SC_log_send();
        }

        v22 = v3;
        goto LABEL_28;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = v5;
    }

    CFRelease(v7);
    goto LABEL_25;
  }

  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v23 = _os_log_pack_size();
    __chkstk_darwin(v23, v24, v25);
    v26 = *__error();
    v27 = _os_log_pack_fill();
    v28 = SCError();
    v29 = SCErrorString(v28);
    *v27 = 136315138;
    *(v27 + 4) = v29;
    __SC_log_send();
  }
}

uint64_t sub_1000299B0(uint64_t a1, uint64_t a2)
{

  return __SCControlPrefsCreate("com.apple.InterfaceNamer.control.plist", a1, a2);
}

uint64_t sub_100029A18(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  return __SCControlPrefsGetBoolean();
}

uint64_t sub_100029AA4(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  return __SCControlPrefsGetBoolean();
}

uint64_t NetworkInterfaceGetReservedRange(uint64_t a1, _DWORD *a2)
{
  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  if (IOInterfaceNamePrefix)
  {
    v5 = IOInterfaceNamePrefix;
    IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
    v7 = sub_100029D1C(IORegistryEntryID);
    v8 = CFStringCreateWithFormat(0, 0, @"network-interface-unit-%@", v5);
    v9 = IORegistryEntrySearchCFProperty(v7, "IOService", v8, 0, 3u);
    TypeID = CFDataGetTypeID();
    if (v9 && CFGetTypeID(v9) == TypeID)
    {
      v11 = sub_100029F68(v9, a2);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      if (!v7)
      {
LABEL_8:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v8)
        {
          CFRelease(v8);
        }

        return v11;
      }
    }

    IOObjectRelease(v7);
    goto LABEL_8;
  }

  sub_10002A504();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v12 = _os_log_pack_size();
    __chkstk_darwin(v12, v13, v14);
    v15 = *__error();
    v16 = _os_log_pack_fill();
    *v16 = 136315394;
    *(v16 + 4) = "NetworkInterfaceGetReservedRange";
    *(v16 + 12) = 2112;
    *(v16 + 14) = a1;
    __SC_log_send();
  }

  return 0;
}

uint64_t sub_100029D1C(uint64_t a1)
{
  existing = 0;
  v2 = IORegistryEntryIDMatching(a1);
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v2, &existing);
  if (MatchingServices)
  {
    v4 = 1;
  }

  else
  {
    v4 = existing == 0;
  }

  if (v4)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      *v9 = 136315650;
      *(v9 + 4) = "getRegistryEntryWithID";
      *(v9 + 12) = 2048;
      *(v9 + 14) = a1;
      *(v9 + 22) = 1024;
      *(v9 + 24) = MatchingServices;
LABEL_11:
      __SC_log_send();
    }

LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v10 = IOIteratorNext(existing);
  v11 = v10;
  if (!v10)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      *v16 = 136315394;
      *(v16 + 4) = "getRegistryEntryWithID";
      *(v16 + 12) = 2048;
      *(v16 + 14) = a1;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v11;
}

uint64_t sub_100029F68(const __CFData *a1, _DWORD *a2)
{
  Length = CFDataGetLength(a1);
  v5 = Length;
  if (Length < 4 || (Length & 3) != 0)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v17 = _os_log_pack_size();
    __chkstk_darwin(v17, v18, v19);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136315394;
    *(v21 + 4) = "IFUnitRangeInitWithData";
    *(v21 + 12) = 1024;
    *(v21 + 14) = v5;
    goto LABEL_12;
  }

  v6 = Length >> 2;
  *a2 = 0;
  BytePtr = CFDataGetBytePtr(a1);
  if (v6 >= 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = v6;
  }

  memmove(a2, BytePtr, (4 * v8));
  if (v5 < 5)
  {
    a2[1] = *a2;
  }

  else if (a2[1] < *a2)
  {
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    v16 = *a2;
    v15 = a2[1];
    *v14 = 136315650;
    *(v14 + 4) = "IFUnitRangeInitWithData";
    *(v14 + 12) = 1024;
    *(v14 + 14) = v15;
    *(v14 + 18) = 1024;
    *(v14 + 20) = v16;
LABEL_12:
    __SC_log_send();
    return 0;
  }

  return 1;
}

uint64_t NetworkInterfacePrefixGetReservedUnits(void *key)
{
  iterator = 0;
  if (qword_1000817F0)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(qword_1000817F0, key, &value))
    {
      v2 = 0;
      v3 = 0;
      v4 = value;
      goto LABEL_27;
    }
  }

  v2 = CFStringCreateWithFormat(0, 0, @"network-interface-unit-%@", key);
  v5 = IORegistryCreateIterator(kIOMainPortDefault, "IODeviceTree", 1u, &iterator);
  if (v5)
  {
    v6 = v5;
    sub_10002A504();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v7 = _os_log_pack_size();
      __chkstk_darwin(v7, v8, v9);
      v10 = *__error();
      v11 = _os_log_pack_fill();
      *v11 = 67109120;
      v11[1] = v6;
      __SC_log_send();
      v3 = 1;
      v4 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    value = 0;
    v12 = IOIteratorNext(iterator);
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        CFProperty = IORegistryEntryCreateCFProperty(v12, v2, 0, 0);
        if (CFProperty)
        {
          v16 = CFProperty;
          TypeID = CFDataGetTypeID();
          if (CFGetTypeID(v16) == TypeID && sub_100029F68(v16, &value) && (!v14 || HIDWORD(value) > v13))
          {
            v14 = 1;
            v13 = HIDWORD(value);
          }

          CFRelease(v16);
        }

        value = 0;
        v12 = IOIteratorNext(iterator);
      }

      while (v12);
      if (v14)
      {
        v4 = v13 + 1;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_26;
    }
  }

  v4 = 0;
LABEL_26:
  v3 = 1;
LABEL_27:
  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    Mutable = qword_1000817F0;
    if (!qword_1000817F0)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &unk_1000815A0);
      qword_1000817F0 = Mutable;
    }

    CFDictionarySetValue(Mutable, key, v4);
  }

  return v4;
}

os_log_t sub_10002A504()
{
  result = qword_1000817F8;
  if (!qword_1000817F8)
  {
    result = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    qword_1000817F8 = result;
  }

  return result;
}

uint64_t sub_10002A578(void *a1)
{
  memset(&v4, 0, sizeof(v4));
  v3 = 0;
  CFRetain(a1);
  pthread_attr_init(&v4);
  pthread_attr_setscope(&v4, 1);
  pthread_attr_setdetachstate(&v4, 2);
  pthread_create(&v3, &v4, sub_10002A628, a1);
  return pthread_attr_destroy(&v4);
}

uint64_t sub_10002A628(__CFBundle *a1)
{
  pthread_setname_np("InterfaceNamer thread");
  Current = CFRunLoopGetCurrent();
  v3 = sub_1000299B0(Current, sub_10002A9F4);
  sub_10002A9F4(v3);
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  TypeID = CFDictionaryGetTypeID();
  if (InfoDictionary && CFGetTypeID(InfoDictionary) == TypeID)
  {
    Value = CFDictionaryGetValue(InfoDictionary, @"WaitStackTimeout");
    if (Value)
    {
      v7 = Value;
      v8 = CFNumberGetTypeID();
      if (CFGetTypeID(v7) != v8 || !CFNumberGetValue(v7, kCFNumberDoubleType, &qword_1000815C8) || *&qword_1000815C8 <= 0.0)
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          __chkstk_darwin(v9, v10, v11);
          v12 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        qword_1000815C8 = 0x4072C00000000000;
      }
    }

    v13 = CFDictionaryGetValue(InfoDictionary, @"WaitQuietTimeout");
    if (v13)
    {
      v14 = v13;
      v15 = CFNumberGetTypeID();
      if (CFGetTypeID(v14) != v15 || !CFNumberGetValue(v14, kCFNumberDoubleType, &qword_1000815D0) || *&qword_1000815D0 <= 0.0)
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v16 = _os_log_pack_size();
          __chkstk_darwin(v16, v17, v18);
          v19 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }

        qword_1000815D0 = 0x406E000000000000;
      }
    }
  }

  if (!sub_10002AC60() || !sub_10002AF90())
  {
    if (dword_100081800)
    {
      IOServiceClose(dword_100081800);
      dword_100081800 = 0;
    }

    if (qword_100081808)
    {
      CFRelease(qword_100081808);
      qword_100081808 = 0;
    }

    if (dword_100081810)
    {
      IOObjectRelease(dword_100081810);
      dword_100081810 = 0;
    }

    if (qword_100081818)
    {
      IONotificationPortDestroy(qword_100081818);
    }

    if (dword_100081820)
    {
      IOObjectRelease(dword_100081820);
      dword_100081820 = 0;
    }

    if (dword_100081824)
    {
      IOObjectRelease(dword_100081824);
      dword_100081824 = 0;
    }

    if (qword_100081828)
    {
      CFRelease(qword_100081828);
      qword_100081828 = 0;
    }

    if (qword_100081830)
    {
      CFRunLoopTimerInvalidate(qword_100081830);
      CFRelease(qword_100081830);
      qword_100081830 = 0;
    }
  }

  CFRelease(a1);
  CFRunLoopRun();
  return 0;
}

uint64_t sub_10002A9F4(uint64_t a1)
{
  v2 = sub_100029A18(a1);
  if (v2 != byte_100081838)
  {
    v3 = v2;
    byte_100081838 = v2;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      v8 = _os_log_pack_fill();
      v9 = "enabled";
      if (!v3)
      {
        v9 = "disabled";
      }

      *v8 = 136315138;
      *(v8 + 4) = v9;
      __SC_log_send();
    }
  }

  result = sub_100029AA4(a1);
  if (result != byte_100081839)
  {
    v11 = result;
    byte_100081839 = result;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v12 = _os_log_pack_size();
      __chkstk_darwin(v12, v13, v14);
      v15 = *__error();
      v16 = _os_log_pack_fill();
      v17 = "enabled";
      if (!v11)
      {
        v17 = "disabled";
      }

      *v16 = 136315138;
      *(v16 + 4) = v17;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_10002AC60()
{
  v0 = SCPreferencesCreate(0, @"InterfaceNamer:setup_Virtual", 0);
  qword_100081840 = v0;
  if (v0)
  {
    if (SCPreferencesSetCallback(v0, sub_10002B7AC, 0))
    {
      v1 = qword_100081840;
      Current = CFRunLoopGetCurrent();
      if (SCPreferencesScheduleWithRunLoop(v1, Current, kCFRunLoopDefaultMode) || SCError() == 2002)
      {
        return 1;
      }

      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_18;
      }
    }

    v11 = _os_log_pack_size();
    __chkstk_darwin(v11, v12, v13);
    v14 = *__error();
    v15 = _os_log_pack_fill();
    v16 = SCError();
    v17 = SCErrorString(v16);
    *v15 = 136315138;
    *(v15 + 4) = v17;
    __SC_log_send();
LABEL_18:
    CFRelease(qword_100081840);
    return 0;
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v4 = _os_log_pack_size();
    __chkstk_darwin(v4, v5, v6);
    v7 = *__error();
    v8 = _os_log_pack_fill();
    v9 = SCError();
    v10 = SCErrorString(v9);
    *v8 = 136315138;
    *(v8 + 4) = v10;
    __SC_log_send();
    return 0;
  }

  return result;
}

uint64_t sub_10002AF90()
{
  qword_100081808 = sub_10002BC5C();
  if (qword_100081808)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(qword_100081808);
    if (Count >= 1)
    {
      v2 = Count;
      for (i = 0; i != v2; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081808, i);
        if (CFDictionaryContainsKey(ValueAtIndex, @"Active"))
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, ValueAtIndex);
          CFDictionaryRemoveValue(MutableCopy, @"Active");
          CFArraySetValueAtIndex(qword_100081808, i, MutableCopy);
          CFArrayAppendValue(Mutable, MutableCopy);
          CFRelease(MutableCopy);
        }
      }
    }
  }

  else
  {
    Mutable = 0;
  }

  busyState = 0;
  qword_100081858 = Mutable;
  qword_100081828 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_10002BF54(qword_100081828, @"*START*");
  qword_100081818 = IONotificationPortCreate(kIOMainPortDefault);
  if (!qword_100081818)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return 0;
    }

    goto LABEL_23;
  }

  v6 = IORegistryEntryFromPath(kIOMainPortDefault, "IOService:/");
  if (v6)
  {
    v7 = v6;
    v8 = IOServiceAddInterestNotification(qword_100081818, v6, "IOBusyInterest", sub_10002C0E0, qword_100081818, &dword_100081820);
    if (v8)
    {
      v9 = v8;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_32;
      }

      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
    }

    else
    {
      v19 = IOServiceGetBusyState(v7, &busyState);
      if (!v19)
      {
        Current = CFAbsoluteTimeGetCurrent();
        qword_100081830 = CFRunLoopTimerCreate(0, Current + *&qword_1000815C8, 0.0, 0, 0, sub_10002C37C, 0);
        if (!qword_100081830)
        {
          if (!qword_1000817F8)
          {
            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v32 = _os_log_pack_size();
            __chkstk_darwin(v32, v33, v34);
            v35 = *__error();
            *_os_log_pack_fill() = 0;
            __SC_log_send();
          }

          goto LABEL_32;
        }

        v27 = CFRunLoopGetCurrent();
        CFRunLoopAddTimer(v27, qword_100081830, kCFRunLoopDefaultMode);
        v28 = qword_100081818;
        v29 = IOServiceMatching("IONetworkStack");
        v30 = IOServiceAddMatchingNotification(v28, "IOServiceFirstMatch", v29, sub_10002C4EC, qword_100081818, &dword_100081824);
        if (v30)
        {
          v31 = v30;
          if (!qword_1000817F8)
          {
            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
          }

          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_10002C4EC(0, dword_100081824);
          v36 = qword_100081818;
          v37 = IOServiceMatching("IONetworkInterface");
          v38 = IOServiceAddMatchingNotification(v36, "IOServiceFirstMatch", v37, sub_10002C77C, qword_100081818, &dword_100081810);
          if (!v38)
          {
            sub_10002C77C(0, dword_100081810);
            sub_10002C0E0(v44, v45, -536870624, busyState);
            v46 = CFRunLoopGetCurrent();
            RunLoopSource = IONotificationPortGetRunLoopSource(qword_100081818);
            CFRunLoopAddSource(v46, RunLoopSource, kCFRunLoopDefaultMode);
            v18 = 1;
            goto LABEL_33;
          }

          v31 = v38;
          if (!qword_1000817F8)
          {
            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
          }

          _SC_syslog_os_log_mapping();
          if (!__SC_log_enabled())
          {
LABEL_32:
            v18 = 0;
LABEL_33:
            IOObjectRelease(v7);
            return v18;
          }
        }

        v39 = _os_log_pack_size();
        __chkstk_darwin(v39, v40, v41);
        v42 = *__error();
        v43 = _os_log_pack_fill();
        *v43 = 67109120;
        v43[1] = v31;
LABEL_31:
        __SC_log_send();
        goto LABEL_32;
      }

      v9 = v19;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_32;
      }

      v20 = _os_log_pack_size();
      __chkstk_darwin(v20, v21, v22);
      v23 = *__error();
    }

    v24 = _os_log_pack_fill();
    *v24 = 67109120;
    v24[1] = v9;
    goto LABEL_31;
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
LABEL_23:
    v14 = _os_log_pack_size();
    __chkstk_darwin(v14, v15, v16);
    v17 = *__error();
    *_os_log_pack_fill() = 0;
    __SC_log_send();
  }

  return 0;
}

void sub_10002B7AC(const __SCPreferences *a1, char a2)
{
  if ((a2 & 2) != 0)
  {
    v2 = a1;
    if (!a1)
    {
      v2 = qword_100081840;
      if (qword_100081848)
      {
        CFRelease(qword_100081848);
        qword_100081848 = 0;
      }

      if (qword_100081850)
      {
        CFRelease(qword_100081850);
        qword_100081850 = 0;
      }
    }

    sub_10002B884();
    sub_10002BA70(v2);

    SCPreferencesSynchronize(v2);
  }
}

void sub_10002B884()
{
  v0 = SCBridgeInterfaceCopyAll();
  v1 = v0;
  if (v0 && !CFArrayGetCount(v0))
  {
    CFRelease(v1);
    v1 = 0;
  }

  v2 = qword_100081848;
  if (qword_100081848 == v1)
  {
    if (!v1)
    {
      return;
    }
  }

  else
  {
    if (!v1 || !qword_100081848)
    {
      goto LABEL_9;
    }

    if (!CFEqual(qword_100081848, v1))
    {
      v2 = qword_100081848;
LABEL_9:
      if (v2)
      {
        CFRelease(v2);
      }

      qword_100081848 = v1;
      if (!_SCBridgeInterfaceUpdateConfiguration())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v3 = _os_log_pack_size();
          __chkstk_darwin(v3, v4, v5);
          v6 = *__error();
          v7 = _os_log_pack_fill();
          v8 = SCError();
          v9 = SCErrorString(v8);
          *v7 = 136315138;
          *(v7 + 4) = v9;
          __SC_log_send();
        }
      }

      return;
    }
  }

  CFRelease(v1);
}

void sub_10002BA70(const __SCPreferences *a1)
{
  v1 = SCVLANInterfaceCopyAll(a1);
  v2 = v1;
  if (v1 && !CFArrayGetCount(v1))
  {
    CFRelease(v2);
    v2 = 0;
  }

  v3 = qword_100081850;
  if (qword_100081850 == v2)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    if (!v2 || !qword_100081850)
    {
      goto LABEL_9;
    }

    if (!CFEqual(qword_100081850, v2))
    {
      v3 = qword_100081850;
LABEL_9:
      if (v3)
      {
        CFRelease(v3);
      }

      qword_100081850 = v2;
      if (!_SCVLANInterfaceUpdateConfiguration())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v4 = _os_log_pack_size();
          __chkstk_darwin(v4, v5, v6);
          v7 = *__error();
          v8 = _os_log_pack_fill();
          v9 = SCError();
          v10 = SCErrorString(v9);
          *v8 = 136315138;
          *(v8 + 4) = v10;
          __SC_log_send();
        }
      }

      return;
    }
  }

  CFRelease(v2);
}

__CFArray *sub_10002BC5C()
{
  v0 = SCPreferencesCreate(0, @"InterfaceNamer:readInterfaceList", @"NetworkInterfaces.plist");
  if (v0)
  {
    v1 = v0;
    Value = SCPreferencesGetValue(v0, @"Interfaces");
    TypeID = CFArrayGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v4 = Value;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v13 = SCPreferencesGetValue(v1, @"Model");
    if (!v13 || (v14 = v13, v15 = _SC_hw_model(), v14 == v15))
    {
      if (v4)
      {
        goto LABEL_19;
      }
    }

    else if (v15)
    {
      v16 = CFEqual(v14, v15);
      Mutable = 0;
      if (!v16 || !v4)
      {
        goto LABEL_32;
      }

LABEL_19:
      Count = CFArrayGetCount(v4);
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          v20 = CFDictionaryGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v20 && CFDictionaryContainsKey(ValueAtIndex, @"IOInterfaceNamePrefix") && CFDictionaryContainsKey(ValueAtIndex, @"IOInterfaceUnit") && CFDictionaryContainsKey(ValueAtIndex, @"IOMACAddress"))
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }
        }
      }

      if (Mutable)
      {
        v21 = CFArrayGetCount(Mutable);
        if (v21 >= 2)
        {
          v23.length = v21;
          v23.location = 0;
          CFArraySortValues(Mutable, v23, sub_10002C85C, 0);
        }
      }

      goto LABEL_32;
    }

    Mutable = 0;
LABEL_32:
    CFRelease(v1);
    return Mutable;
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    v10 = SCError();
    v11 = SCErrorString(v10);
    *v9 = 136315138;
    *(v9 + 4) = v11;
    __SC_log_send();
  }

  return 0;
}

void sub_10002BF54(__CFDictionary *a1, const void *a2)
{
  valuePtr = CFAbsoluteTimeGetCurrent();
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionaryAddValue(a1, a2, v4);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315650;
    *(v9 + 4) = "addTimestamp";
    *(v9 + 12) = 2112;
    *(v9 + 14) = a2;
    *(v9 + 22) = 2112;
    *(v9 + 24) = v4;
    __SC_log_send();
  }

  CFRelease(v4);
}

void sub_10002C0E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    if (a3 == -536870624)
    {
      sub_10002BF54(qword_100081828, @"*QUIET*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v5 = _os_log_pack_size();
        __chkstk_darwin(v5, v6, v7);
        v8 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }

    if (dword_100081800)
    {
      if (dword_100081820)
      {
        IOObjectRelease(dword_100081820);
        dword_100081820 = 0;
      }

      v9 = qword_100081830;
      if (qword_100081830)
      {
        CFRunLoopTimerInvalidate(qword_100081830);
        CFRelease(qword_100081830);
        qword_100081830 = 0;
      }

      sub_10002C77C(v9, dword_100081810);
      if (a3 == -536870624)
      {
        sub_10002BF54(qword_100081828, @"*QUIET&NAMED*");
        sub_10000B7F4();
        if (qword_100081860 != -1)
        {
          sub_100067904();
        }
      }
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v10 = _os_log_pack_size();
        __chkstk_darwin(v10, v11, v12);
        v13 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }
  }
}

void sub_10002C37C()
{
  sub_10002BF54(qword_100081828, @"*TIMEOUT*");
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
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

  v4 = sub_10002D3B8();
  sub_10002C0E0(v4, v5, 0, 0);
  sub_10002BF54(qword_100081828, @"*TIMEOUT&NAMED*");
  sub_10000B7F4();
  if (qword_100081860 != -1)
  {
    sub_100067904();
  }
}

uint64_t sub_10002C4EC(int a1, io_iterator_t iterator)
{
  result = IOIteratorNext(iterator);
  if (result)
  {
    v3 = result;
    v4 = IOServiceOpen(result, mach_task_self_, 0, &dword_100081800);
    if (v4)
    {
      v5 = v4;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8);
        v9 = *__error();
        v10 = _os_log_pack_fill();
        *v10 = 67109120;
        v10[1] = v5;
        __SC_log_send();
      }
    }

    else
    {
      sub_10002BF54(qword_100081828, @"*STACK*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13);
        v14 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      if (dword_100081824)
      {
        IOObjectRelease(dword_100081824);
        dword_100081824 = 0;
      }

      if (qword_100081830 && CFRunLoopTimerIsValid(qword_100081830))
      {
        v15 = qword_100081830;
        Current = CFAbsoluteTimeGetCurrent();
        CFRunLoopTimerSetNextFireDate(v15, Current + *&qword_1000815D0);
      }

      sub_10002DE20();
    }

    return IOObjectRelease(v3);
  }

  return result;
}

void sub_10002C77C(int a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
      if (v5)
      {
        v6 = v5;
        Mutable = qword_100081868;
        if (!qword_100081868)
        {
          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          qword_100081868 = Mutable;
        }

        CFArrayAppendValue(Mutable, v6);
        CFRelease(v6);
      }

      IOObjectRelease(v4);
      v4 = IOIteratorNext(iterator);
    }

    while (v4);
  }

  sub_10002DE20();
}

CFComparisonResult sub_10002C85C(const __CFDictionary *a1, const __CFDictionary *a2)
{
  Value = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
  v5 = CFDictionaryGetValue(a2, @"IOInterfaceNamePrefix");
  result = CFStringCompare(Value, v5, 0);
  if (result == kCFCompareEqualTo)
  {
    v7 = CFDictionaryGetValue(a1, @"IOInterfaceUnit");
    v8 = CFDictionaryGetValue(a2, @"IOInterfaceUnit");

    return CFNumberCompare(v7, v8, 0);
  }

  return result;
}

void sub_10002C95C(id a1)
{
  keys = @"avoid-deadlock";
  values = kCFBooleanFalse;
  sub_10002CC28(qword_100081808);
  v1 = CFDictionaryCreate(0, &keys, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v14 = SCPreferencesCreateWithOptions();
  CFRelease(v1);
  if (v14)
  {
    v2 = __SCNetworkConfigurationUpgrade();
    CFRelease(v14);
    if (v2)
    {
      if (qword_100081808)
      {
        CFRelease(qword_100081808);
      }

      qword_100081808 = sub_10002BC5C();
      sub_10002BF54(qword_100081828, @"*UPGRADED*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
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

      sub_10000B7F4();
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
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
}

void sub_10002CC28(CFPropertyListRef a1)
{
  TypeID = CFArrayGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v3 = SCPreferencesCreate(0, @"InterfaceNamer:writeInterfaceList", @"NetworkInterfaces.plist");
    if (v3)
    {
      v4 = v3;
      Value = SCPreferencesGetValue(v3, @"Interfaces");
      if (Value != a1)
      {
        v6 = Value;
        if (!Value || !CFEqual(Value, a1))
        {
          v7 = SCPreferencesGetValue(v4, @"Model");
          v8 = _SC_hw_model();
          v9 = v8;
          if (v7 && v7 != v8)
          {
            v10 = v8 && CFEqual(v7, v8) != 0;
            if (v6 && !v10)
            {
              if (!qword_1000817F8)
              {
                qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
              }

              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v18 = _os_log_pack_size();
                __chkstk_darwin(v18, v19, v20);
                v21 = *__error();
                v22 = _os_log_pack_fill();
                *v22 = 138412546;
                *(v22 + 4) = v7;
                *(v22 + 12) = 2112;
                *(v22 + 14) = v9;
                __SC_log_send();
              }

              sub_10002D07C(v4, v7);
            }
          }

          SCPreferencesSetValue(v4, @"Model", v9);
          SCPreferencesSetValue(v4, @"Interfaces", a1);
          if (!v6)
          {
            valuePtr = 20191120;
            v23 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            SCPreferencesSetValue(v4, kSCPrefVersion, v23);
            CFRelease(v23);
          }

          if (!SCPreferencesCommitChanges(v4) && SCError() != 30)
          {
            if (!qword_1000817F8)
            {
              qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v24 = _os_log_pack_size();
              __chkstk_darwin(v24, v25, v26);
              v27 = *__error();
              v28 = _os_log_pack_fill();
              v29 = SCError();
              v30 = SCErrorString(v29);
              *v28 = 136315138;
              *(v28 + 4) = v30;
              __SC_log_send();
            }
          }
        }
      }

      CFRelease(v4);
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13);
        v14 = *__error();
        v15 = _os_log_pack_fill();
        v16 = SCError();
        v17 = SCErrorString(v16);
        *v15 = 136315138;
        *(v15 + 4) = v17;
        __SC_log_send();
      }
    }
  }
}

void sub_10002D07C(const __SCPreferences *a1, uint64_t a2)
{
  v3 = CFStringCreateWithFormat(0, 0, @"%@-%@", @"NetworkInterfaces.plist", a2);
  v4 = SCPreferencesCreate(0, @"InterfaceNamer:writeInterfaceListForModel", v3);
  CFRelease(v3);
  if (v4)
  {
    Value = SCPreferencesPathGetValue(a1, @"/");
    if (!SCPreferencesPathSetValue(v4, @"/", Value))
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8);
        v9 = *__error();
        v10 = _os_log_pack_fill();
        v11 = SCError();
        v12 = SCErrorString(v11);
        *v10 = 136315138;
        *(v10 + 4) = v12;
        __SC_log_send();
      }
    }

    v13 = SCPreferencesCommitChanges(v4);
    CFRelease(v4);
    if (!v13)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_15:
        v14 = _os_log_pack_size();
        __chkstk_darwin(v14, v15, v16);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        v19 = SCError();
        v20 = SCErrorString(v19);
        *v18 = 136315138;
        *(v18 + 4) = v20;
        __SC_log_send();
      }
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_15;
    }
  }
}

uint64_t sub_10002D3B8()
{
  *iterator = 0;
  v0 = IORegistryCreateIterator(kIOMainPortDefault, "IOService", 0, iterator);
  if (v0)
  {
    v1 = v0;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v3 = _os_log_pack_size();
      __chkstk_darwin(v3, v4, v5);
      v6 = *__error();
      v7 = _os_log_pack_fill();
      *v7 = 67109120;
      v7[1] = v1;
      return __SC_log_send();
    }
  }

  else
  {
    sub_10002D5F4(iterator[0], 0, &iterator[1]);
    if (!iterator[1])
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }

    return IOObjectRelease(iterator[0]);
  }

  return result;
}

uint64_t sub_10002D5F4(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v5 = a1;
  result = IOIteratorNext(a1);
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = &selRef_qosMarkingIsEnabled_;
  v29 = a3;
  v31 = a2;
  v30 = v5;
  while (1)
  {
    memset(v33, 0, 128);
    memset(v32, 0, sizeof(v32));
    if (a2)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, a2);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v10 = MutableCopy;
    if (!MutableCopy)
    {
      sub_100067960();
    }

    Name = IORegistryEntryGetName(v7, v32);
    if (Name)
    {
      v23 = Name;
      if (!v8[255])
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendCString(Mutable, v32, 0x8000100u);
    LocationInPlane = IORegistryEntryGetLocationInPlane(v7, "IOService", v33);
    if (LocationInPlane == -536870160)
    {
      break;
    }

    v14 = LocationInPlane;
    if (!LocationInPlane)
    {
      CFStringAppendCString(Mutable, "@", 0x8000100u);
      CFStringAppendCString(Mutable, v33, 0x8000100u);
      break;
    }

    if (!v8[255])
    {
      v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      a3 = v29;
      v22 = _os_log_pack_fill();
      *v22 = 67109120;
      v22[1] = v14;
      v8 = &selRef_qosMarkingIsEnabled_;
      __SC_log_send();
    }

    CFRelease(Mutable);
    CFRelease(v10);
    result = IOObjectRelease(v7);
    a2 = v31;
    v5 = v30;
    if (v14)
    {
      return result;
    }

LABEL_20:
    result = IOIteratorNext(v5);
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  CFArrayAppendValue(v10, Mutable);
  CFRelease(Mutable);
  BusyStateAndTime = IOServiceGetBusyStateAndTime();
  if (BusyStateAndTime)
  {
    v23 = BusyStateAndTime;
    if (!v8[255])
    {
      v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  v16 = IORegistryIteratorEnterEntry(v5);
  if (v16)
  {
    v23 = v16;
    if (!v8[255])
    {
      v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

  sub_10002D5F4(v5, v10, a3);
  v17 = IORegistryIteratorExitEntry(v5);
  if (!v17)
  {
    CFRelease(v10);
    IOObjectRelease(v7);
    goto LABEL_20;
  }

  v23 = v17;
  if (!v8[255])
  {
    v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
LABEL_37:
    v24 = _os_log_pack_size();
    __chkstk_darwin(v24, v25, v26);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    *v28 = 67109120;
    v28[1] = v23;
    __SC_log_send();
  }

LABEL_38:
  CFRelease(v10);
  return IOObjectRelease(v7);
}

void sub_10002DE20()
{
  if (!dword_100081800)
  {
    return;
  }

  v0 = qword_100081868;
  if (qword_100081868)
  {
    Count = CFArrayGetCount(qword_100081868);
    if (Count >= 2)
    {
      v12.length = Count;
      v12.location = 0;
      CFArraySortValues(qword_100081868, v12, &_SCNetworkInterfaceCompare, 0);
    }

    sub_10002E120(qword_100081868);
    v0 = qword_100081868;
  }

  sub_10002E5DC(v0);
  if (&kLockdownNotificationTrustedPTPAttached)
  {
    v2 = &kLockdownNotificationTrustedHostAttached == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2 || &kLockdownNotificationHostDetached == 0;
  if (!v3 && &_lockdown_is_host_trusted && &kLockdownNotificationHostAttached)
  {
    sub_10002E994(qword_100081868);
  }

  if (dword_100081820)
  {
    if (qword_100081858 && !CFArrayGetCount(qword_100081858))
    {
      sub_10002BF54(qword_100081828, @"*COMPLETE*");
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
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

      sub_10000B7F4();
      v8 = &qword_100081858;
      CFRelease(qword_100081858);
      goto LABEL_33;
    }

    return;
  }

  sub_10002EDE0();
  sub_10002CC28(qword_100081808);
  sub_10002B7AC(0, 2);
  sub_10000B7F4();
  if ((os_variant_is_darwinos() & 1) != 0 || byte_100081839)
  {
    v9 = qword_100081868;
    if (qword_1000818B8 == -1)
    {
      if (!qword_100081868)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    sub_10006798C();
    if (v9)
    {
LABEL_28:
      v10 = qword_1000818C0;
      CFRetain(v9);
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100033E8C;
      block[3] = &unk_10007A570;
      block[4] = v9;
      dispatch_async(v10, block);
    }
  }

LABEL_29:
  sub_10002F140();
  if (qword_100081858)
  {
    CFRelease(qword_100081858);
    qword_100081858 = 0;
  }

  if (qword_100081868)
  {
    CFRelease(qword_100081868);
    v8 = &qword_100081868;
LABEL_33:
    *v8 = 0;
  }
}

void sub_10002E120(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; v3 != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8);
        v9 = *__error();
        v10 = _os_log_pack_fill();
        *v10 = 136315650;
        *(v10 + 4) = "nameInterfaces";
        *(v10 + 12) = 1024;
        *(v10 + 14) = i;
        *(v10 + 18) = 2112;
        *(v10 + 20) = ValueAtIndex;
        __SC_log_send();
      }

      if (_SCNetworkInterfaceIsSelfNamed())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v11 = _os_log_pack_size();
          __chkstk_darwin(v11, v12, v13);
          v14 = *__error();
          *_os_log_pack_fill() = 0;
          __SC_log_send();
        }
      }

      else
      {
        if (_SCNetworkInterfaceGetIOInterfaceUnit())
        {
          v25 = 0;
          BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          if (!BSDName || !CFDictionaryContainsKey(qword_100081828, BSDName))
          {
            if (!qword_1000817F8)
            {
              qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v16 = _os_log_pack_size();
              __chkstk_darwin(v16, v17, v18);
              v19 = *__error();
              *_os_log_pack_fill() = 0;
              __SC_log_send();
            }

            sub_10002F444(ValueAtIndex);
          }

          if (qword_100081858 && sub_10002F648(qword_100081858, ValueAtIndex, &v25))
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        v20 = sub_10002FC68(ValueAtIndex, a1, i);
        if (v20)
        {
          ValueAtIndex = v20;
          sub_10002F444(v20);
          CFArraySetValueAtIndex(a1, i, ValueAtIndex);
          CFRelease(ValueAtIndex);
          if (_SCNetworkInterfaceIsBuiltin())
          {
            if (qword_100081858)
            {
              v25 = 0;
              if (sub_100030A74(qword_100081858, ValueAtIndex, &v25))
              {
                if (!qword_1000817F8)
                {
                  qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
                }

                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v21 = _os_log_pack_size();
                  __chkstk_darwin(v21, v22, v23);
                  v24 = *__error();
                  *_os_log_pack_fill() = 0;
                  __SC_log_send();
                }

LABEL_22:
                CFArrayRemoveValueAtIndex(qword_100081858, v25);
              }
            }
          }

LABEL_23:
          if (!_SCNetworkInterfaceIsEphemeral())
          {
            sub_10002F790(ValueAtIndex);
          }
        }
      }
    }
  }
}

void sub_10002E5DC(const __CFArray *a1)
{
  if (!a1)
  {
    return;
  }

  Count = CFArrayGetCount(a1);
  v4 = Count - 1;
  if (Count < 1)
  {
    return;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  v8 = &selRef_qosMarkingIsEnabled_;
  *&v3 = 138412290;
  v34 = v3;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      if (_SCNetworkInterfaceIsApplePreconfigured())
      {
        if (!sub_100032664(qword_100081880, ValueAtIndex))
        {
          v11 = sub_100032744(ValueAtIndex, sub_100032934);
          if (v11)
          {
            break;
          }
        }
      }

      if (v5 == ++v9)
      {
        if (v7)
        {
          return;
        }

        goto LABEL_29;
      }
    }

    v12 = v11;
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    v14 = v8[255];
    if (BSDName)
    {
      v15 = BSDName;
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v33 = v4;
      v16 = _os_log_pack_size();
      v32 = &v32;
      __chkstk_darwin(v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = v34;
      *(v20 + 4) = v15;
    }

    else
    {
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      v21 = __SC_log_enabled();
      v33 = v4;
      if (v21)
      {
        v22 = _os_log_pack_size();
        v32 = &v32;
        __chkstk_darwin(v22, v23, v24);
        v25 = *__error();
        v4 = v33;
        *_os_log_pack_fill() = 0;
        v8 = &selRef_qosMarkingIsEnabled_;
        __SC_log_send();
      }

      if (!v8[255])
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v26 = _os_log_pack_size();
      v32 = &v32;
      __chkstk_darwin(v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = v34;
      *(v30 + 4) = ValueAtIndex;
    }

    __SC_log_send();
    v4 = v33;
    v8 = &selRef_qosMarkingIsEnabled_;
LABEL_24:
    Mutable = qword_100081880;
    if (!qword_100081880)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      qword_100081880 = Mutable;
    }

    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    v7 = 0;
    v6 = v9 + 1;
    if (v4 != v9)
    {
      continue;
    }

    break;
  }

LABEL_29:
  sub_100032C68();
}

void sub_10002E994(const __CFArray *a1)
{
  if (!a1)
  {
    return;
  }

  Count = CFArrayGetCount(a1);
  v4 = Count - 1;
  if (Count < 1)
  {
    return;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  v8 = &selRef_qosMarkingIsEnabled_;
  *&v3 = 138412290;
  v35 = v3;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      if (_SCNetworkInterfaceIsTrustRequired())
      {
        if (!sub_100032664(qword_100081888, ValueAtIndex))
        {
          v11 = sub_100032744(ValueAtIndex, sub_100033188);
          if (v11)
          {
            break;
          }
        }
      }

      if (v5 == ++v9)
      {
        if (v7)
        {
          return;
        }

        goto LABEL_29;
      }
    }

    v12 = v11;
    BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
    v14 = v8[255];
    if (BSDName)
    {
      v15 = BSDName;
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v34 = v4;
      v16 = _os_log_pack_size();
      v33 = &v33;
      __chkstk_darwin(v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = v35;
      *(v20 + 4) = v15;
    }

    else
    {
      if (!v14)
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      v21 = __SC_log_enabled();
      v34 = v4;
      if (v21)
      {
        v22 = _os_log_pack_size();
        v33 = &v33;
        __chkstk_darwin(v22, v23, v24);
        v25 = *__error();
        v4 = v34;
        *_os_log_pack_fill() = 0;
        v8 = &selRef_qosMarkingIsEnabled_;
        __SC_log_send();
      }

      if (!v8[255])
      {
        v8[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        goto LABEL_24;
      }

      v26 = _os_log_pack_size();
      v33 = &v33;
      __chkstk_darwin(v26, v27, v28);
      v29 = *__error();
      v30 = _os_log_pack_fill();
      *v30 = v35;
      *(v30 + 4) = ValueAtIndex;
    }

    __SC_log_send();
    v4 = v34;
    v8 = &selRef_qosMarkingIsEnabled_;
LABEL_24:
    Mutable = qword_100081888;
    if (!qword_100081888)
    {
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      qword_100081888 = Mutable;
    }

    CFArrayAppendValue(Mutable, v12);
    CFRelease(v12);
    v7 = 0;
    v6 = v9 + 1;
    if (v4 != v9)
    {
      continue;
    }

    break;
  }

LABEL_29:
  Current = CFRunLoopGetCurrent();
  if (qword_100081890 != -1)
  {
    sub_1000679F4();
  }

  CFRetain(Current);
  if (qword_100081898 != -1)
  {
    sub_100067A50();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100033740;
  block[3] = &unk_10007A490;
  block[4] = Current;
  dispatch_async(qword_1000818A0, block);
}

void sub_10002EDE0()
{
  if (qword_100081808)
  {
    v0 = qword_100081858 == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    Count = CFArrayGetCount(qword_100081858);
    if (Count >= 1)
    {
      v3 = Count;
      *&v2 = 138412290;
      v28 = v2;
      do
      {
        v4 = v3--;
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081858, v3);
        v6 = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        TypeID = CFStringGetTypeID();
        if (v6)
        {
          if (CFGetTypeID(v6) == TypeID)
          {
            v8 = CFDictionaryGetValue(ValueAtIndex, @"HiddenConfiguration");
            v9 = CFBooleanGetTypeID();
            if (v8)
            {
              if (CFGetTypeID(v8) == v9 && CFBooleanGetValue(v8))
              {
                v10 = CFDictionaryGetValue(ValueAtIndex, @"IOBuiltin");
                v11 = CFBooleanGetTypeID();
                if (v10)
                {
                  if (CFGetTypeID(v10) == v11 && CFBooleanGetValue(v10))
                  {
                    goto LABEL_15;
                  }
                }

                v23 = CFDictionaryGetValue(ValueAtIndex, @"SCNetworkInterfaceInfo");
                v24 = CFDictionaryGetTypeID();
                if (v23)
                {
                  if (CFGetTypeID(v23) == v24)
                  {
                    valuePtr = 0;
                    value = 0;
                    if (CFDictionaryGetValueIfPresent(v23, @"idVendor", &value))
                    {
                      v25 = value;
                      v26 = CFNumberGetTypeID();
                      if (v25)
                      {
                        if (CFGetTypeID(v25) == v26 && CFNumberGetValue(value, kCFNumberIntType, &valuePtr) && valuePtr == 1452)
                        {
LABEL_15:
                          if (!qword_1000817F8)
                          {
                            qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
                          }

                          _SC_syslog_os_log_mapping();
                          if (__SC_log_enabled())
                          {
                            v12 = _os_log_pack_size();
                            v27[1] = v27;
                            __chkstk_darwin(v12, v13, v14);
                            v15 = *__error();
                            v16 = _os_log_pack_fill();
                            *v16 = v28;
                            *(v16 + 4) = v6;
                            __SC_log_send();
                          }

                          v17 = qword_100081808;
                          if (qword_100081808)
                          {
                            v18 = CFArrayGetCount(qword_100081808);
                            if (v18 >= 1)
                            {
                              v19 = v18;
                              v20 = 0;
                              while (1)
                              {
                                v21 = CFArrayGetValueAtIndex(v17, v20);
                                v22 = CFDictionaryGetValue(v21, @"BSD Name");
                                if (v22 == v6 || v22 && CFEqual(v22, v6))
                                {
                                  break;
                                }

                                if (v19 == ++v20)
                                {
                                  goto LABEL_37;
                                }
                              }

                              if (v21)
                              {
                                CFArrayRemoveValueAtIndex(qword_100081808, v20);
                                CFArrayRemoveValueAtIndex(qword_100081858, v3);
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

LABEL_37:
        ;
      }

      while (v4 > 1);
    }
  }
}

CFIndex sub_10002F140()
{
  result = qword_100081858;
  if (qword_100081858)
  {
    result = CFArrayGetCount(qword_100081858);
    v20 = result;
    if (result >= 1)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v1 = _os_log_pack_size();
        __chkstk_darwin(v1, v2, v3);
        v4 = *__error();
        v5 = _os_log_pack_fill();
        v6 = "s";
        if (v20 == 1)
        {
          v6 = "";
        }

        *v5 = 136315138;
        *(v5 + 4) = v6;
        __SC_log_send();
      }

      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100081858, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        v10 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
        v11 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v12 = _os_log_pack_size();
          __chkstk_darwin(v12, v13, v14);
          v15 = *__error();
          v16 = _os_log_pack_fill();
          *v16 = 136316162;
          v17 = "";
          v18 = "BSD Name: ";
          if (!Value)
          {
            v18 = "";
          }

          *(v16 + 4) = v18;
          v19 = &stru_10007C038;
          if (Value)
          {
            v19 = Value;
            v17 = ", ";
          }

          *(v16 + 12) = 2112;
          *(v16 + 14) = v19;
          *(v16 + 22) = 2080;
          *(v16 + 24) = v17;
          *(v16 + 32) = 2112;
          *(v16 + 34) = v10;
          *(v16 + 42) = 2112;
          *(v16 + 44) = v11;
          result = __SC_log_send();
        }

        ++v7;
      }

      while (v20 != v7);
    }
  }

  return result;
}

uint64_t sub_10002F444(const __SCNetworkInterface *a1)
{
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  HardwareAddressString = SCNetworkInterfaceGetHardwareAddressString(a1);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    v12 = "BSD Name: ";
    v13 = "";
    *v11 = 136316930;
    if (!BSDName)
    {
      v12 = "";
    }

    *(v11 + 4) = v12;
    *(v11 + 12) = 2112;
    v14 = &stru_10007C038;
    if (BSDName)
    {
      v15 = BSDName;
    }

    else
    {
      v15 = &stru_10007C038;
    }

    *(v11 + 14) = v15;
    *(v11 + 22) = 2080;
    if (BSDName)
    {
      v16 = ", ";
    }

    else
    {
      v16 = "";
    }

    *(v11 + 24) = v16;
    *(v11 + 32) = 2112;
    *(v11 + 34) = IOInterfaceNamePrefix;
    v17 = "Unit: ";
    if (IOInterfaceUnit)
    {
      v14 = IOInterfaceUnit;
    }

    else
    {
      v17 = "";
    }

    if (IOInterfaceUnit)
    {
      v13 = ", ";
    }

    *(v11 + 42) = 2080;
    *(v11 + 44) = v17;
    *(v11 + 52) = 2112;
    *(v11 + 54) = v14;
    if (HardwareAddressString)
    {
      v18 = HardwareAddressString;
    }

    else
    {
      v18 = @"?";
    }

    *(v11 + 62) = 2080;
    *(v11 + 64) = v13;
    *(v11 + 72) = 2112;
    *(v11 + 74) = v18;
    return __SC_log_send();
  }

  return result;
}

const __CFDictionary *sub_10002F648(const __CFArray *a1, uint64_t a2, CFIndex *a3)
{
  if (!a1)
  {
    return 0;
  }

  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
  ValueAtIndex = 0;
  if (!IOInterfaceNamePrefix)
  {
    return ValueAtIndex;
  }

  v8 = HardwareAddress;
  if (!HardwareAddress)
  {
    return ValueAtIndex;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v10 = Count;
  v16 = a3;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v11);
    Value = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
    v13 = CFDictionaryGetValue(ValueAtIndex, @"IOMACAddress");
    if (Value)
    {
      v14 = v13;
      if (v13)
      {
        if (CFEqual(IOInterfaceNamePrefix, Value) && CFEqual(v8, v14))
        {
          break;
        }
      }
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  if (v16)
  {
    *v16 = v11;
  }

  return ValueAtIndex;
}

void sub_10002F790(const __SCNetworkInterface *a1)
{
  cf = 0;
  if (qword_100081808)
  {
    sub_100030BBC(qword_100081808, a1, &cf);
    Mutable = qword_100081808;
    v3 = cf;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v3 = 0;
    qword_100081808 = Mutable;
  }

  Count = CFArrayGetCount(Mutable);
  BSDName = SCNetworkInterfaceGetBSDName(a1);
  if (BSDName)
  {
    sub_10002BF54(qword_100081828, BSDName);
  }

  IsBuiltin = _SCNetworkInterfaceIsBuiltin();
  v7 = 0;
  if (v3 && !IsBuiltin)
  {
    Value = CFDictionaryGetValue(v3, @"MatchingMACs");
    v7 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    v9 = CFDictionaryGetValue(v3, @"IOMACAddress");
    HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
    if (v9)
    {
      v11 = HardwareAddress;
      if (HardwareAddress)
      {
        if (!CFEqual(v9, HardwareAddress))
        {
          if (v7)
          {
            MutableCopy = CFArrayCreateMutableCopy(0, 0, v7);
            CFRelease(v7);
            v37.length = CFArrayGetCount(MutableCopy);
            v37.location = 0;
            FirstIndexOfValue = CFArrayGetFirstIndexOfValue(MutableCopy, v37, v11);
            if (FirstIndexOfValue != -1)
            {
              CFArrayRemoveValueAtIndex(MutableCopy, FirstIndexOfValue);
            }

            v38.length = CFArrayGetCount(MutableCopy);
            v38.location = 0;
            v14 = CFArrayGetFirstIndexOfValue(MutableCopy, v38, v9);
            if (v14 != -1)
            {
              CFArrayRemoveValueAtIndex(MutableCopy, v14);
            }
          }

          else
          {
            MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          }

          CFArrayInsertValueAtIndex(MutableCopy, 0, v9);
          v15 = CFArrayGetCount(MutableCopy);
          if (v15 >= 33)
          {
            v16 = v15 + 1;
            do
            {
              CFArrayRemoveValueAtIndex(MutableCopy, v16 - 2);
              --v16;
            }

            while (v16 > 0x21);
          }

          v7 = MutableCopy;
        }
      }
    }
  }

  v17 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v18 = _SCNetworkInterfaceCopyInterfaceInfo();
  if (v18)
  {
    v19 = v18;
    CFDictionarySetValue(v17, @"SCNetworkInterfaceInfo", v18);
    CFRelease(v19);
  }

  IOPath = _SCNetworkInterfaceGetIOPath();
  if (IOPath)
  {
    CFDictionarySetValue(v17, @"IOPathMatch", IOPath);
  }

  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  if (IOInterfaceNamePrefix)
  {
    CFDictionarySetValue(v17, @"IOInterfaceNamePrefix", IOInterfaceNamePrefix);
  }

  IOInterfaceType = _SCNetworkInterfaceGetIOInterfaceType();
  if (IOInterfaceType)
  {
    CFDictionarySetValue(v17, @"IOInterfaceType", IOInterfaceType);
  }

  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  if (IOInterfaceUnit)
  {
    CFDictionarySetValue(v17, @"IOInterfaceUnit", IOInterfaceUnit);
  }

  v24 = _SCNetworkInterfaceGetHardwareAddress();
  if (v24)
  {
    CFDictionarySetValue(v17, @"IOMACAddress", v24);
  }

  v25 = SCNetworkInterfaceGetBSDName(a1);
  if (v25)
  {
    CFDictionarySetValue(v17, @"BSD Name", v25);
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  if (InterfaceType)
  {
    CFDictionarySetValue(v17, @"SCNetworkInterfaceType", InterfaceType);
  }

  if (_SCNetworkInterfaceIsBuiltin())
  {
    v27 = kCFBooleanTrue;
  }

  else
  {
    v27 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v17, @"IOBuiltin", v27);
  if (_SCNetworkInterfaceIsHiddenConfiguration())
  {
    CFDictionarySetValue(v17, @"HiddenConfiguration", kCFBooleanTrue);
  }

  if (_SCNetworkInterfaceIsHiddenInterface())
  {
    CFDictionarySetValue(v17, @"HiddenInterface", kCFBooleanTrue);
  }

  CFDictionarySetValue(v17, @"Active", kCFBooleanTrue);
  if (v7)
  {
    CFDictionarySetValue(v17, @"MatchingMACs", v7);
    CFRelease(v7);
  }

  v28 = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  v29 = _SCNetworkInterfaceGetIOInterfaceUnit();
  if (v28)
  {
    v30 = v29;
    if (v29)
    {
      if (Count < 1)
      {
LABEL_56:
        CFArrayAppendValue(qword_100081808, v17);
      }

      else
      {
        v31 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v31);
          v33 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
          v34 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
          v35 = CFStringCompare(v28, v33, 0);
          if (v35 == kCFCompareEqualTo)
          {
            v35 = CFNumberCompare(v30, v34, 0);
          }

          if (v35 == kCFCompareLessThan)
          {
            break;
          }

          if (Count == ++v31)
          {
            goto LABEL_56;
          }
        }

        CFArrayInsertValueAtIndex(Mutable, v31, v17);
      }
    }
  }

  CFRelease(v17);
  if (cf)
  {
    CFRelease(cf);
  }
}

const void *sub_10002FC68(const __SCNetworkInterface *a1, const __CFArray *a2, uint64_t a3)
{
  v111 = 0;
  IOPath = _SCNetworkInterfaceGetIOPath();
  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  IsBuiltin = _SCNetworkInterfaceIsBuiltin();
  if (_SCNetworkInterfaceIsEphemeral())
  {
    LODWORD(valuePtr[0]) = 0;
    v9 = CFNumberCreate(0, kCFNumberIntType, valuePtr);
LABEL_3:
    v10 = 0;
    goto LABEL_19;
  }

  v11 = &selRef_qosMarkingIsEnabled_;
  v12 = sub_10002F648(qword_100081808, a1, 0);
  if (!v12)
  {
    ReservedRange = NetworkInterfaceGetReservedRange(a1, &v111);
    if (ReservedRange)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v38 = _os_log_pack_size();
        __chkstk_darwin(v38, v39, v40);
        v41 = *__error();
        v42 = _os_log_pack_fill();
        v43 = v111;
        *v42 = 136315650;
        *(v42 + 4) = "assignNameAndCopyInterface";
        *(v42 + 12) = 2112;
        *(v42 + 14) = a1;
        *(v42 + 22) = 1024;
        *(v42 + 24) = v43;
        __SC_log_send();
        IsBuiltin = 1;
        v11 = &selRef_qosMarkingIsEnabled_;
      }

      else
      {
        IsBuiltin = 1;
      }
    }

    else if (dword_100081820)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v44 = _os_log_pack_size();
        __chkstk_darwin(v44, v45, v46);
        v47 = *__error();
        v48 = _os_log_pack_fill();
        *v48 = 136315394;
        *(v48 + 4) = "assignNameAndCopyInterface";
        *(v48 + 12) = 2112;
        *(v48 + 14) = a1;
        __SC_log_send();
      }

      sub_10002BF54(qword_100081828, IOPath);
      return 0;
    }

    if (_SCNetworkInterfaceIsApplePreconfigured())
    {
      goto LABEL_52;
    }

    v50 = v11[257];
    v51 = (IsBuiltin ? &kCFBooleanTrue : &kCFBooleanFalse);
    InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
    if (!InterfaceType)
    {
      goto LABEL_52;
    }

    v53 = InterfaceType;
    v54 = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
    if (!v54)
    {
      goto LABEL_52;
    }

    v55 = *v51;
    valuePtr[1] = v53;
    valuePtr[2] = v54;
    valuePtr[0] = _SCNetworkInterfaceCopyInterfaceInfo();
    valuePtr[3] = v55;
    v113 = 0;
    if (v50)
    {
      v120.length = CFArrayGetCount(v50);
      v120.location = 0;
      CFArrayApplyFunction(v50, v120, sub_100031320, valuePtr);
    }

    if (a2)
    {
      Count = CFArrayGetCount(a2);
      if (Count > a3 + 1)
      {
        v121.location = a3 + 1;
        v121.length = Count - (a3 + 1);
        CFArrayApplyFunction(a2, v121, sub_1000314C0, valuePtr);
      }
    }

    if (v113)
    {
      if (CFArrayGetCount(v113) == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v113, 0);
        CFRelease(v113);
        if (!ValueAtIndex)
        {
          goto LABEL_125;
        }

        Value = CFDictionaryGetValue(ValueAtIndex, @"BSD Name");
        TypeID = CFStringGetTypeID();
        if (Value && CFGetTypeID(Value) == TypeID)
        {
          v110 = IOInterfaceNamePrefix;
          v59 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
          v60 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
          v61 = CFStringGetTypeID();
          if (v59 && CFGetTypeID(v59) == v61 && (v62 = CFNumberGetTypeID(), v60) && CFGetTypeID(v60) == v62)
          {
            existing = 0;
            keys = @"IOInterfaceNamePrefix";
            v118 = @"IOInterfaceUnit";
            values = v59;
            v116 = v60;
            v63 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            keys = @"IOProviderClass";
            v118 = @"IOPropertyMatch";
            values = @"IONetworkInterface";
            v116 = v63;
            v64 = CFDictionaryCreate(0, &keys, &values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFRelease(v63);
            MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v64, &existing);
            v66 = existing;
            v67 = 1;
            if (!MatchingServices && existing)
            {
              v68 = IOIteratorNext(existing);
              v67 = v68 == 0;
              if (v68)
              {
                IOObjectRelease(v68);
              }

              v66 = existing;
            }

            if (v66)
            {
              IOObjectRelease(v66);
            }

            if (!v67)
            {
              ValueAtIndex = 0;
            }
          }

          else
          {
            ValueAtIndex = 0;
          }

          IOInterfaceNamePrefix = v110;
          v11 = &selRef_qosMarkingIsEnabled_;
LABEL_125:
          if (valuePtr[0])
          {
            CFRelease(valuePtr[0]);
          }

          if (ValueAtIndex)
          {
            v97 = CFDictionaryGetValue(ValueAtIndex, @"MatchingMACs");
            if (!v97)
            {
              goto LABEL_11;
            }

            v98 = v97;
            HardwareAddress = _SCNetworkInterfaceGetHardwareAddress();
            if (!HardwareAddress)
            {
              goto LABEL_11;
            }

            v100 = HardwareAddress;
            v122.length = CFArrayGetCount(v98);
            v122.location = 0;
            if (!CFArrayContainsValue(v98, v122, v100))
            {
              goto LABEL_11;
            }

            v9 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
            CFRetain(v9);
            if (!qword_1000817F8)
            {
              qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (!__SC_log_enabled())
            {
              goto LABEL_10;
            }

            v101 = _os_log_pack_size();
            __chkstk_darwin(v101, v102, v103);
            v104 = *__error();
            goto LABEL_9;
          }

LABEL_52:
          LODWORD(keys) = 0;
          if (IsBuiltin)
          {
            if (ReservedRange)
            {
              v49 = v111;
            }

            else
            {
              v49 = sub_100030D98(a2, a3, IOInterfaceNamePrefix);
            }

            LODWORD(keys) = v49;
            v9 = CFNumberCreate(0, kCFNumberIntType, &keys);
            v69 = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
            v70 = v11[257];
            if (!v70)
            {
              goto LABEL_102;
            }

            v71 = CFArrayGetCount(v70);
            if (v71 < 1)
            {
              goto LABEL_102;
            }

            v72 = v71;
            v73 = 0;
            while (1)
            {
              v74 = CFArrayGetValueAtIndex(qword_100081808, v73);
              v75 = CFDictionaryGetValue(v74, @"IOInterfaceNamePrefix");
              if (v69 == v75 || v69 && v75 && CFEqual(v69, v75))
              {
                v76 = CFDictionaryGetValue(v74, @"IOInterfaceUnit");
                if (v76 == v9 || v9 && v76 && CFEqual(v9, v76))
                {
                  break;
                }
              }

              if (v72 == ++v73)
              {
                goto LABEL_102;
              }
            }

            v77 = _SCNetworkInterfaceGetIOPath();
            v78 = CFDictionaryGetValue(v74, @"IOPathMatch");
            if (v77 == v78 || v77 && v78 && CFEqual(v77, v78))
            {
LABEL_102:
              v11 = &selRef_qosMarkingIsEnabled_;
              if (v9)
              {
LABEL_117:
                if (!qword_1000817F8)
                {
                  qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
                }

                _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v91 = _os_log_pack_size();
                  __chkstk_darwin(v91, v92, v93);
                  v94 = *__error();
                  v95 = _os_log_pack_fill();
                  v96 = "built-in";
                  if (!IsBuiltin)
                  {
                    v96 = "next available";
                  }

                  *v95 = 138412546;
                  *(v95 + 4) = v9;
                  *(v95 + 12) = 2080;
                  *(v95 + 14) = v96;
                  __SC_log_send();
                }

                goto LABEL_3;
              }
            }

            else
            {
              if (!qword_1000817F8)
              {
                qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
              }

              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v105 = _os_log_pack_size();
                __chkstk_darwin(v105, v106, v107);
                v108 = *__error();
                v109 = _os_log_pack_fill();
                *v109 = 138412290;
                *(v109 + 4) = v9;
                __SC_log_send();
              }

              v11 = &selRef_qosMarkingIsEnabled_;
              if (v9)
              {
                CFRelease(v9);
              }
            }
          }

          v79 = CFArrayGetCount(a2);
          v80 = sub_100030D98(a2, v79, IOInterfaceNamePrefix);
          LODWORD(keys) = v80;
          v81 = v11[257];
          if (v81)
          {
            v82 = CFArrayGetCount(v81);
            if (v82 >= 1)
            {
              v83 = v82;
              for (i = 0; i != v83; ++i)
              {
                v85 = CFArrayGetValueAtIndex(v11[257], i);
                v86 = CFDictionaryGetValue(v85, @"IOInterfaceNamePrefix");
                if (CFEqual(v86, IOInterfaceNamePrefix))
                {
                  LODWORD(valuePtr[0]) = 0;
                  v87 = CFDictionaryGetValue(v85, @"IOInterfaceUnit");
                  v88 = CFNumberGetTypeID();
                  if (v87 && CFGetTypeID(v87) == v88)
                  {
                    v89 = CFNumberGetValue(v87, kCFNumberIntType, valuePtr);
                    v90 = valuePtr[0];
                    if (!v89)
                    {
                      v90 = 0;
                    }
                  }

                  else
                  {
                    v90 = 0;
                  }

                  v11 = &selRef_qosMarkingIsEnabled_;
                  if (v90 == v80)
                  {
                    ++v80;
                  }
                }
              }
            }
          }

          LODWORD(keys) = v80;
          v9 = CFNumberCreate(0, kCFNumberIntType, &keys);
          goto LABEL_117;
        }
      }

      else
      {
        CFRelease(v113);
      }
    }

    ValueAtIndex = 0;
    goto LABEL_125;
  }

  ValueAtIndex = v12;
  v9 = CFDictionaryGetValue(v12, @"IOInterfaceUnit");
  CFRetain(v9);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v14 = _os_log_pack_size();
    __chkstk_darwin(v14, v15, v16);
    v17 = *__error();
LABEL_9:
    v18 = _os_log_pack_fill();
    *v18 = 138412290;
    *(v18 + 4) = v9;
    __SC_log_send();
  }

LABEL_10:
  if (!v9)
  {
LABEL_11:
    v9 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
    CFRetain(v9);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 138412290;
      *(v23 + 4) = v9;
      __SC_log_send();
    }
  }

  v24 = qword_100081858;
  if (qword_100081858)
  {
    v119.length = CFArrayGetCount(qword_100081858);
    v119.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v24, v119, ValueAtIndex);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_100081858, FirstIndexOfValue);
    }
  }

  v10 = 1;
LABEL_19:
  v26 = 2;
  while (1)
  {
    if (v26 != 2)
    {
      usleep(0xC350u);
    }

    v27 = sub_1000315E4(a1, v10, v9);
    if (v27)
    {
      break;
    }

    v29 = v26-- != 0;
    if (!v10 || !v29)
    {
      if (v10)
      {
        sub_100030F50(a1, v9);
      }

      goto LABEL_36;
    }
  }

  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  if (!_SCNetworkInterfaceIsEphemeral() && !CFEqual(v9, IOInterfaceUnit))
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = _os_log_pack_size();
      __chkstk_darwin(v31, v32, v33);
      v34 = *__error();
      v35 = _os_log_pack_fill();
      *v35 = 138412802;
      *(v35 + 4) = IOInterfaceNamePrefix;
      *(v35 + 12) = 2112;
      *(v35 + 14) = IOInterfaceUnit;
      *(v35 + 22) = 2112;
      *(v35 + 24) = v9;
      __SC_log_send();
    }
  }

LABEL_36:
  if (v9)
  {
    CFRelease(v9);
  }

  return v27;
}

const __CFDictionary *sub_100030A74(const __CFArray *a1, uint64_t a2, CFIndex *a3)
{
  if (!a1)
  {
    return 0;
  }

  IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
  IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
  ValueAtIndex = 0;
  if (!IOInterfaceNamePrefix)
  {
    return ValueAtIndex;
  }

  v8 = IOInterfaceUnit;
  if (!IOInterfaceUnit)
  {
    return ValueAtIndex;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v10 = Count;
  v16 = a3;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v11);
    Value = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceNamePrefix");
    v13 = CFDictionaryGetValue(ValueAtIndex, @"IOInterfaceUnit");
    if (Value)
    {
      v14 = v13;
      if (v13)
      {
        if (CFEqual(IOInterfaceNamePrefix, Value) && CFEqual(v8, v14))
        {
          break;
        }
      }
    }

    if (v10 == ++v11)
    {
      return 0;
    }
  }

  if (v16)
  {
    *v16 = v11;
  }

  return ValueAtIndex;
}

const void *sub_100030BBC(const __CFArray *a1, uint64_t a2, CFTypeRef *a3)
{
  v14 = 0;
  v6 = sub_10002F648(a1, a2, &v14);
  for (i = 0; v6; v6 = sub_10002F648(a1, a2, &v14))
  {
    if (a3 && !*a3)
    {
      *a3 = CFRetain(v6);
    }

    CFArrayRemoveValueAtIndex(a1, v14);
    ++i;
  }

  while (1)
  {
    result = sub_100030A74(a1, a2, &v14);
    if (!result)
    {
      break;
    }

    if (a3 && !*a3)
    {
      *a3 = CFRetain(result);
    }

    CFArrayRemoveValueAtIndex(a1, v14);
    ++i;
  }

  if (i >= 2)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 67109378;
      *(v13 + 4) = i;
      *(v13 + 8) = 2112;
      *(v13 + 10) = a2;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_100030D98(CFArrayRef theArray, uint64_t a2, void *a3)
{
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      CFArrayGetValueAtIndex(theArray, v6);
      IOInterfaceNamePrefix = _SCNetworkInterfaceGetIOInterfaceNamePrefix();
      if (CFEqual(a3, IOInterfaceNamePrefix) && _SCNetworkInterfaceIsBuiltin())
      {
        ++v7;
      }

      ++v6;
    }

    while (a2 != v6);
  }

  ReservedUnits = NetworkInterfacePrefixGetReservedUnits(a3);
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 138412546;
    *(v14 + 4) = a3;
    *(v14 + 12) = 1024;
    *(v14 + 14) = ReservedUnits;
    __SC_log_send();
  }

  if (v7 <= ReservedUnits)
  {
    return ReservedUnits;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100030F50(const void *a1, const void *a2)
{
  notification = 0;
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  v5 = IORegistryEntryIDMatching(IORegistryEntryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (MatchingService)
  {
    v7 = MatchingService;
    Mutable = CFDataCreateMutable(0, 32);
    v9 = IOServiceAddInterestNotification(qword_100081818, v7, "IOGeneralInterest", sub_100031C10, Mutable, &notification);
    if (v9)
    {
      v10 = v9;
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13);
        v14 = *__error();
        v15 = _os_log_pack_fill();
        *v15 = 136315394;
        *(v15 + 4) = "addNamingRequest";
        *(v15 + 12) = 1024;
        *(v15 + 14) = v10;
        __SC_log_send();
      }

      CFRelease(Mutable);
      return IOObjectRelease(v7);
    }

    CFDataSetLength(Mutable, 32);
    BytePtr = CFDataGetBytePtr(Mutable);
    *BytePtr = 0u;
    *(BytePtr + 1) = 0u;
    *BytePtr = CFRetain(a1);
    *(BytePtr + 2) = CFRetain(a2);
    v22 = notification;
    *(BytePtr + 2) = v7;
    *(BytePtr + 3) = v22;
    v23 = qword_100081870;
    if (!qword_100081870)
    {
      qword_100081870 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      sub_100032078();
      v23 = qword_100081870;
    }

    CFArrayAppendValue(v23, Mutable);
    CFRelease(Mutable);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v24 = _os_log_pack_size();
      __chkstk_darwin(v24, v25, v26);
      v27 = *__error();
      goto LABEL_18;
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18, v19);
      v20 = *__error();
LABEL_18:
      v28 = _os_log_pack_fill();
      *v28 = 136315650;
      *(v28 + 4) = "addNamingRequest";
      *(v28 + 12) = 2112;
      *(v28 + 14) = a1;
      *(v28 + 22) = 2112;
      *(v28 + 24) = a2;
      return __SC_log_send();
    }
  }

  return result;
}

void sub_100031320(const __CFDictionary *a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(a1, @"IOInterfaceNamePrefix");
  v5 = *(a2 + 16);
  if (Value == v5 || Value && v5 && CFEqual(Value, v5))
  {
    v6 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceType");
    v7 = *(a2 + 8);
    if (v6 == v7 || v6 && v7 && CFEqual(v6, v7))
    {
      v8 = CFDictionaryGetValue(a1, @"SCNetworkInterfaceInfo");
      v9 = *a2;
      if (v8 == *a2 || v8 && v9 && CFEqual(v8, v9))
      {
        if (!*(a2 + 24))
        {
          goto LABEL_21;
        }

        v10 = CFDictionaryGetValue(a1, @"IOBuiltin");
        TypeID = CFBooleanGetTypeID();
        if (!v10 || CFGetTypeID(v10) != TypeID)
        {
          v10 = kCFBooleanFalse;
        }

        v12 = *(a2 + 24);
        if (v10 == v12 || v10 && v12 && CFEqual(v10, v12))
        {
LABEL_21:
          Mutable = *(a2 + 32);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
            *(a2 + 32) = Mutable;
          }

          CFArrayAppendValue(Mutable, a1);
        }
      }
    }
  }
}

void sub_1000314C0(const __SCNetworkInterface *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    return;
  }

  InterfaceType = SCNetworkInterfaceGetInterfaceType(a1);
  v4 = *(a2 + 8);
  if (InterfaceType != v4 && (!InterfaceType || !v4 || !CFEqual(InterfaceType, v4)))
  {
    return;
  }

  v5 = _SCNetworkInterfaceCopyInterfaceInfo();
  v6 = v5;
  v7 = *a2;
  if (v5 == *a2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v7)
    {
      v8 = CFEqual(v5, v7);
LABEL_12:
      CFRelease(v6);
      goto LABEL_13;
    }
  }

  if (v5)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v8)
  {
    if (!*(a2 + 24))
    {
      goto LABEL_21;
    }

    IsBuiltin = _SCNetworkInterfaceIsBuiltin();
    v10 = &kCFBooleanTrue;
    if (!IsBuiltin)
    {
      v10 = &kCFBooleanFalse;
    }

    v11 = *v10;
    v12 = *(a2 + 24);
    if (*v10 == v12 || v11 && v12 && CFEqual(v11, v12))
    {
LABEL_21:
      CFRelease(*(a2 + 32));
      *(a2 + 32) = 0;
    }
  }
}

const void *sub_1000315E4(const __SCNetworkInterface *a1, int a2, const void *a3)
{
  IOPath = _SCNetworkInterfaceGetIOPath();
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  v8 = dword_100081800;
  *bytes = IORegistryEntryID;
  valuePtr = a2 == 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, @"IONetworkStackUserCommand", v10);
  CFRelease(v10);
  v11 = CFDataCreate(0, bytes, 8);
  CFDictionarySetValue(Mutable, @"IORegistryEntryID", v11);
  CFRelease(v11);
  CFDictionarySetValue(Mutable, @"IOInterfaceUnit", a3);
  v12 = IOConnectSetCFProperties(v8, Mutable);
  CFRelease(Mutable);
  v13 = sub_100031984(IORegistryEntryID);
  if (v13)
  {
    v14 = v13;
    if (_SCNetworkInterfaceGetIOInterfaceUnit())
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v15 = _os_log_pack_size();
        __chkstk_darwin(v15, v16, v17);
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = "Known";
        *v19 = 136315650;
        if (!a2)
        {
          v20 = "New";
        }

        *(v19 + 4) = v20;
        *(v19 + 12) = 2112;
        *(v19 + 14) = IOPath;
        *(v19 + 22) = 2112;
        *(v19 + 24) = a3;
        __SC_log_send();
      }

      return v14;
    }

    CFRelease(v14);
  }

  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v21 = _os_log_pack_size();
    v28 = &v28;
    __chkstk_darwin(v21, v22, v23);
    v24 = *__error();
    v25 = _os_log_pack_fill();
    *v25 = 136316162;
    v26 = "Known";
    if (!a2)
    {
      v26 = "New";
    }

    *(v25 + 4) = v26;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v12;
    *(v25 + 18) = 2112;
    *(v25 + 20) = IOPath;
    *(v25 + 28) = 2048;
    *(v25 + 30) = IORegistryEntryID;
    *(v25 + 38) = 2112;
    *(v25 + 40) = a3;
    __SC_log_send();
  }

  sub_10002F444(a1);
  return 0;
}

uint64_t sub_100031984(uint64_t a1)
{
  existing = 0;
  v2 = IORegistryEntryIDMatching(a1);
  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v2, &existing);
  if (MatchingServices)
  {
    v4 = 1;
  }

  else
  {
    v4 = existing == 0;
  }

  if (v4)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      v10 = existing;
      *v9 = 134218496;
      *(v9 + 4) = a1;
      *(v9 + 12) = 1024;
      *(v9 + 14) = MatchingServices;
      *(v9 + 18) = 1024;
      *(v9 + 20) = v10;
      __SC_log_send();
    }
  }

  else
  {
    v11 = IOIteratorNext(existing);
    if (v11)
    {
      v12 = v11;
      v13 = _SCNetworkInterfaceCreateWithIONetworkInterfaceObject();
      IOObjectRelease(v12);
      goto LABEL_17;
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 134217984;
      *(v18 + 4) = a1;
      __SC_log_send();
    }
  }

  v13 = 0;
LABEL_17:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  return v13;
}

const __CFData *sub_100031C10(const __CFData *result, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v3 = result;
    BytePtr = CFDataGetBytePtr(result);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      v10 = *BytePtr;
      v11 = *(BytePtr + 2);
      *v9 = 136315650;
      *(v9 + 4) = "entryForNamingRequestChanged";
      *(v9 + 12) = 2112;
      *(v9 + 14) = v10;
      *(v9 + 22) = 2112;
      *(v9 + 24) = v11;
      __SC_log_send();
    }

    sub_100031DBC(BytePtr);
    if (qword_100081870)
    {
      v13.length = CFArrayGetCount(qword_100081870);
      v13.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_100081870, v13, v3);
    }

    else
    {
      FirstIndexOfValue = -1;
    }

    return sub_100031E50(FirstIndexOfValue);
  }

  return result;
}

uint64_t sub_100031DBC(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 12);
  if (v4)
  {
    IOObjectRelease(v4);
    *(a1 + 12) = 0;
  }

  result = *(a1 + 8);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 8) = 0;
  }

  return result;
}

CFIndex sub_100031E50(CFIndex a1)
{
  if (!qword_100081870)
  {
    sub_100067AD8();
  }

  if (CFArrayGetCount(qword_100081870) <= a1)
  {
    sub_100067AAC();
  }

  CFArrayRemoveValueAtIndex(qword_100081870, a1);
  result = CFArrayGetCount(qword_100081870);
  if (!result)
  {
    if (qword_100081870)
    {
      CFRelease(qword_100081870);
      qword_100081870 = 0;
    }

    return sub_100031F24();
  }

  return result;
}

uint64_t sub_100031F24()
{
  result = qword_100081878;
  if (qword_100081878)
  {
    CFRunLoopTimerInvalidate(qword_100081878);
    if (qword_100081878)
    {
      CFRelease(qword_100081878);
      qword_100081878 = 0;
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      v5 = _os_log_pack_fill();
      *v5 = 136315138;
      *(v5 + 4) = "disableNamingRequestCallBacks";
      return __SC_log_send();
    }
  }

  return result;
}

void sub_100032078()
{
  if (!qword_100081878)
  {
    qword_100081878 = CFRunLoopTimerCreateWithHandler(0, 0.0, 1.0, 0, 0, &stru_10007A430);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddTimer(Current, qword_100081878, kCFRunLoopDefaultMode);
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      v5 = _os_log_pack_fill();
      *v5 = 136315138;
      *(v5 + 4) = "enableNamingRequestCallBacks";
      __SC_log_send();
    }
  }
}

void sub_1000321F4(id a1, __CFRunLoopTimer *a2)
{

  sub_10003224C();
}

void sub_10003224C()
{
  if (qword_100081870)
  {
    v0 = &selRef_qosMarkingIsEnabled_;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      v5 = _os_log_pack_fill();
      *v5 = 136315138;
      *(v5 + 4) = "handleDeferredNamingRequests";
      __SC_log_send();
    }

    Count = CFArrayGetCount(qword_100081870);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = 1;
      *&v7 = 136315906;
      v32 = v7;
      *&v7 = 136315650;
      v30 = v7;
      while (2)
      {
        LODWORD(v31) = v10;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_100081870, v9);
          BytePtr = CFDataGetBytePtr(ValueAtIndex);
          ++*(BytePtr + 6);
          v13 = sub_1000315E4(*BytePtr, 1, *(BytePtr + 2));
          if (v13)
          {
            break;
          }

          if (*(BytePtr + 6) >= 0x1Eu)
          {
            if (!v0[255])
            {
              v0[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
            }

            _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v14 = _os_log_pack_size();
              __chkstk_darwin(v14, v15, v16);
              v17 = *__error();
              v18 = _os_log_pack_fill();
              v19 = *BytePtr;
              v20 = *(BytePtr + 2);
              v21 = *(BytePtr + 6);
              *v18 = v32;
              *(v18 + 4) = "handleDeferredNamingRequests";
              *(v18 + 12) = 2112;
              *(v18 + 14) = v19;
              *(v18 + 22) = 2112;
              *(v18 + 24) = v20;
              *(v18 + 32) = 1024;
              *(v18 + 34) = v21;
              __SC_log_send();
              v0 = &selRef_qosMarkingIsEnabled_;
            }

            sub_100031DBC(BytePtr);
            sub_100031E50(v9);
            --v8;
          }

          if (++v9 >= v8)
          {
            if (v31)
            {
              return;
            }

            goto LABEL_25;
          }
        }

        v22 = v13;
        if (!v0[255])
        {
          v0[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v23 = _os_log_pack_size();
          v31 = &v30;
          __chkstk_darwin(v23, v24, v25);
          v26 = *__error();
          v27 = _os_log_pack_fill();
          v28 = *BytePtr;
          v29 = *(BytePtr + 2);
          *v27 = v30;
          *(v27 + 4) = "handleDeferredNamingRequests";
          *(v27 + 12) = 2112;
          *(v27 + 14) = v28;
          *(v27 + 22) = 2112;
          *(v27 + 24) = v29;
          __SC_log_send();
        }

        sub_100031DBC(BytePtr);
        sub_100031E50(v9);
        --v8;
        CFRelease(v22);
        v10 = 0;
        ++v9;
        v0 = &selRef_qosMarkingIsEnabled_;
        if (v9 < v8)
        {
          continue;
        }

        break;
      }

LABEL_25:
      sub_10002DE20();
    }
  }
}

BOOL sub_100032664(_BOOL8 result, const void *a2)
{
  if (result)
  {
    v3 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v5 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      if (CFEqual(*BytePtr, a2))
      {
        return 1;
      }

      else
      {
        v8 = 1;
        do
        {
          v9 = v8;
          if (v5 == v8)
          {
            break;
          }

          v10 = CFArrayGetValueAtIndex(v3, v8);
          v11 = CFDataGetBytePtr(v10);
          v12 = CFEqual(*v11, a2);
          v8 = v9 + 1;
        }

        while (!v12);
        return v9 < v5;
      }
    }
  }

  return result;
}

__CFData *sub_100032744(const void *a1, uint64_t a2)
{
  IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
  v5 = IORegistryEntryIDMatching(IORegistryEntryID);
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
  if (!MatchingService)
  {
    return 0;
  }

  v7 = MatchingService;
  Mutable = CFDataCreateMutable(0, 24);
  CFDataSetLength(Mutable, 24);
  BytePtr = CFDataGetBytePtr(Mutable);
  *(BytePtr + 1) = 0;
  *(BytePtr + 2) = 0;
  *BytePtr = 0;
  *BytePtr = CFRetain(a1);
  *(BytePtr + 2) = v7;
  *(BytePtr + 2) = a2;
  v10 = IOServiceAddInterestNotification(qword_100081818, v7, "IOGeneralInterest", sub_100032F24, Mutable, BytePtr + 3);
  if (v10)
  {
    v11 = v10;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

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

    sub_100033100(Mutable);
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void sub_100032934(const __CFData *a1, int a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (a2 != -536870896)
  {
    return;
  }

  v5 = BytePtr;
  BSDName = SCNetworkInterfaceGetBSDName(*BytePtr);
  if (BSDName)
  {
    v7 = BSDName;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_16;
    }

    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 138412290;
    *(v12 + 4) = v7;
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_16;
    }

    v17 = _os_log_pack_size();
    __chkstk_darwin(v17, v18, v19);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    v22 = *v5;
    *v21 = 138412290;
    *(v21 + 4) = v22;
  }

  __SC_log_send();
LABEL_16:
  if (qword_100081880)
  {
    v24.length = CFArrayGetCount(qword_100081880);
    v24.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_100081880, v24, a1);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(qword_100081880, FirstIndexOfValue);
      if (!CFArrayGetCount(qword_100081880))
      {
        CFRelease(qword_100081880);
        qword_100081880 = 0;
      }

      sub_100032C68();
    }
  }
}

void sub_100032C68()
{
  v0 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081880 && (Count = CFArrayGetCount(qword_100081880), Count >= 1))
  {
    v2 = Count;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    for (i = 0; i != v2; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v0[272], i);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      BSDName = SCNetworkInterfaceGetBSDName(*BytePtr);
      if (BSDName)
      {
        CFArrayAppendValue(Mutable, BSDName);
      }

      else
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v8 = _os_log_pack_size();
          __chkstk_darwin(v8, v9, v10);
          v11 = *__error();
          *_os_log_pack_fill() = 0;
          v0 = &selRef_qosMarkingIsEnabled_;
          __SC_log_send();
        }

        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v12 = _os_log_pack_size();
          __chkstk_darwin(v12, v13, v14);
          v15 = *__error();
          v0 = &selRef_qosMarkingIsEnabled_;
          v16 = _os_log_pack_fill();
          v17 = *BytePtr;
          *v16 = 138412290;
          *(v16 + 4) = v17;
          __SC_log_send();
        }
      }
    }

    CFDictionarySetValue(qword_100081828, @"_PreConfigured_", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    CFDictionaryRemoveValue(qword_100081828, @"_PreConfigured_");
  }

  sub_10000B7F4();
}

void sub_100032F24(const __CFData *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == -536870896)
  {
    BytePtr = CFDataGetBytePtr(a1);
    v7 = *BytePtr;
    if (_SCNetworkInterfaceIsBuiltin() || !_SCNetworkInterfaceIsApplePreconfigured())
    {
      v7 = 0;
    }

    else
    {
      CFRetain(v7);
    }

    CFRetain(a1);
    (*(BytePtr + 2))(a1, 3758096400, a4);
    sub_100033100(a1);
    CFRelease(a1);
    if (v7)
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        IOInterfaceUnit = _SCNetworkInterfaceGetIOInterfaceUnit();
        *v12 = 138412290;
        *(v12 + 4) = IOInterfaceUnit;
        __SC_log_send();
      }

      sub_100030BBC(qword_100081808, v7, 0);
      CFRelease(v7);
      sub_10002CC28(qword_100081808);
    }
  }
}

void sub_100033100(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  v2 = *(BytePtr + 3);
  if (v2)
  {
    IOObjectRelease(v2);
    *(BytePtr + 3) = 0;
  }

  v3 = *(BytePtr + 2);
  if (v3)
  {
    IOObjectRelease(v3);
    *(BytePtr + 2) = 0;
  }

  if (*BytePtr)
  {
    CFRelease(*BytePtr);
    *BytePtr = 0;
  }
}

void sub_100033188(const __CFData *a1, int a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  if (a2 == -536870896)
  {
    v5 = BytePtr;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v6 = _os_log_pack_size();
      __chkstk_darwin(v6, v7, v8);
      v9 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      v15 = *v5;
      IOPath = _SCNetworkInterfaceGetIOPath();
      *v14 = 138412290;
      *(v14 + 4) = IOPath;
      __SC_log_send();
    }

    if (qword_100081888)
    {
      v20.length = CFArrayGetCount(qword_100081888);
      v20.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(qword_100081888, v20, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(qword_100081888, FirstIndexOfValue);
        if (!CFArrayGetCount(qword_100081888))
        {
          CFRelease(qword_100081888);
          qword_100081888 = 0;
        }

        Current = CFRunLoopGetCurrent();
        CFRetain(Current);
        if (qword_100081898 != -1)
        {
          sub_100067A50();
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 0x40000000;
        block[2] = sub_100033A3C;
        block[3] = &unk_10007A4B0;
        block[4] = Current;
        dispatch_async(qword_1000818A0, block);
      }
    }
  }
}

void sub_100033470(id a1)
{
  sub_100033524(kLockdownNotificationHostAttached, @"Host attached");
  sub_100033524(kLockdownNotificationHostDetached, @"Host detached");
  sub_100033524(kLockdownNotificationTrustedHostAttached, @"Trusted Host attached");
  v1 = kLockdownNotificationTrustedPTPAttached;

  sub_100033524(v1, @"Trusted PTP attached");
}

void sub_100033524(const __CFString *a1, const void *a2)
{
  out_token = -1;
  Current = CFRunLoopGetCurrent();
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (!CStringPtr)
  {
    sub_100067B6C();
  }

  v6 = CStringPtr;
  CFRetain(Current);
  CFRetain(a2);
  if (qword_100081898 != -1)
  {
    sub_100067B04();
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100033AB4;
  handler[3] = &unk_10007A4D0;
  handler[4] = Current;
  handler[5] = a2;
  v7 = notify_register_dispatch(v6, &out_token, qword_1000818A0, handler);
  if (v7)
  {
    v8 = v7;
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v9 = _os_log_pack_size();
      __chkstk_darwin(v9, v10, v11);
      v12 = *__error();
      v13 = _os_log_pack_fill();
      *v13 = 138412546;
      *(v13 + 4) = a1;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v8;
      __SC_log_send();
    }

    CFRelease(Current);
    CFRelease(a2);
  }
}

void sub_100033740(uint64_t a1)
{
  sub_1000337B8(*(a1 + 32), @"TrustRequired interface added");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_1000337B8(__CFRunLoop *a1, uint64_t a2)
{
  v19 = 0;
  is_host_trusted = lockdown_is_host_trusted();
  if (qword_100081888)
  {
    Count = CFArrayGetCount(qword_100081888);
  }

  else
  {
    Count = 0;
  }

  v7 = qword_1000818A8 == Count && byte_1000818B0 == is_host_trusted;
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v8 = _os_log_pack_size();
    v18[1] = v18;
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    v13 = v19;
    v14 = "No";
    *v12 = 138413826;
    *(v12 + 4) = a2;
    if (is_host_trusted)
    {
      v14 = "Yes";
    }

    v15 = ", error = ";
    if (!v13)
    {
      v15 = "";
    }

    *(v12 + 12) = 2080;
    *(v12 + 14) = v14;
    if (!v13)
    {
      v13 = &stru_10007C038;
    }

    *(v12 + 22) = 2080;
    *(v12 + 24) = v15;
    v16 = "s";
    if (Count == 1)
    {
      v16 = "";
    }

    *(v12 + 32) = 2112;
    *(v12 + 34) = v13;
    v17 = " *";
    *(v12 + 42) = 2048;
    *(v12 + 44) = Count;
    *(v12 + 52) = 2080;
    *(v12 + 54) = v16;
    if (v7)
    {
      v17 = "";
    }

    *(v12 + 62) = 2080;
    *(v12 + 64) = v17;
    __SC_log_send();
  }

  if (!v7)
  {
    byte_1000818B0 = is_host_trusted;
    qword_1000818A8 = Count;
    CFRunLoopPerformBlock(a1, kCFRunLoopDefaultMode, &stru_10007A550);
    CFRunLoopWakeUp(a1);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void sub_100033A3C(uint64_t a1)
{
  sub_1000337B8(*(a1 + 32), @"TrustRequired interface removed");
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_100033AB4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  sub_1000337B8(v2, v3);
}

void sub_100033B6C(id a1)
{

  sub_100033BC4();
}

void sub_100033BC4()
{
  v0 = &selRef_qosMarkingIsEnabled_;
  if (qword_100081888 && ((Count = CFArrayGetCount(qword_100081888), Count >= 1) ? (v2 = byte_1000818B0 == 0) : (v2 = 0), v2))
  {
    v3 = Count;
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v0[273], v5);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      BSDName = SCNetworkInterfaceGetBSDName(*BytePtr);
      if (BSDName)
      {
        CFArrayAppendValue(Mutable, BSDName);
      }

      else
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          __chkstk_darwin(v9, v10, v11);
          v12 = *__error();
          *_os_log_pack_fill() = 0;
          v0 = &selRef_qosMarkingIsEnabled_;
          __SC_log_send();
        }

        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v13 = _os_log_pack_size();
          __chkstk_darwin(v13, v14, v15);
          v16 = *__error();
          v0 = &selRef_qosMarkingIsEnabled_;
          v17 = _os_log_pack_fill();
          v18 = *BytePtr;
          *v17 = 138412290;
          *(v17 + 4) = v18;
          __SC_log_send();
        }
      }

      ++v5;
    }

    while (v3 != v5);
    CFDictionarySetValue(qword_100081828, @"_Excluded_", Mutable);
    CFRelease(Mutable);
  }

  else
  {
    CFDictionaryRemoveValue(qword_100081828, @"_Excluded_");
  }

  sub_10000B7F4();
}

void sub_100033E8C(uint64_t a1)
{
  sub_100033EFC(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void sub_100033EFC(const __CFArray *a1)
{
  v2 = SCPreferencesCreate(0, @"InterfaceNamer:updateNetworkConfiguration", 0);
  v3 = &selRef_qosMarkingIsEnabled_;
  if (!v2)
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      v23 = SCError();
      v24 = SCErrorString(v23);
      *v22 = 136315138;
      *(v22 + 4) = v24;
      __SC_log_send();
    }

    return;
  }

  v4 = v2;
  v85 = a1;
  if (!qword_1000817F8)
  {
    qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315394;
    *(v9 + 4) = "updateNetworkConfigurationAsync";
    *(v9 + 12) = 2112;
    *(v9 + 14) = a1;
    __SC_log_send();
  }

  v10 = 0;
  while (!SCPreferencesLock(v4, 1u))
  {
    v11 = SCError();
    v12 = v3[255];
    if (v11 != 3005)
    {
      if (!v12)
      {
        v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v26 = _os_log_pack_size();
        __chkstk_darwin(v26, v27, v28);
        v29 = *__error();
        v30 = _os_log_pack_fill();
        v31 = SCError();
        v32 = SCErrorString(v31);
        *v30 = 136315394;
        *(v30 + 4) = "updateNetworkConfigurationAsync";
        *(v30 + 12) = 2080;
        *(v30 + 14) = v32;
        __SC_log_send();
        v3 = &selRef_qosMarkingIsEnabled_;
      }

LABEL_26:
      if (!v3[255])
      {
        v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v33 = _os_log_pack_size();
        __chkstk_darwin(v33, v34, v35);
        v36 = *__error();
        v37 = _os_log_pack_fill();
        *v37 = 136315138;
        *(v37 + 4) = "updateNetworkConfigurationAsync";
        __SC_log_send();
      }

      goto LABEL_84;
    }

    if (!v12)
    {
      v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v13 = _os_log_pack_size();
      __chkstk_darwin(v13, v14, v15);
      v16 = *__error();
      v17 = _os_log_pack_fill();
      *v17 = 136315650;
      ++v10;
      *(v17 + 4) = "updateNetworkConfigurationAsync";
      *(v17 + 12) = 1024;
      *(v17 + 14) = v10;
      *(v17 + 18) = 1024;
      *(v17 + 20) = 10;
      __SC_log_send();
      v3 = &selRef_qosMarkingIsEnabled_;
    }

    else
    {
      ++v10;
    }

    SCPreferencesSynchronize(v4);
    if (v10 == 10)
    {
      goto LABEL_26;
    }
  }

  Default = SCNetworkSetCopyCurrent(v4);
  if (Default)
  {
    v25 = v85;
  }

  else
  {
    v25 = v85;
    if (!v3[255])
    {
      v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v38 = _os_log_pack_size();
      __chkstk_darwin(v38, v39, v40);
      v41 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
      v3 = &selRef_qosMarkingIsEnabled_;
    }

    Default = _SCNetworkSetCreateDefault();
    if (!Default)
    {
      if (!v3[255])
      {
        v3[255] = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v70 = _os_log_pack_size();
        __chkstk_darwin(v70, v71, v72);
        v73 = *__error();
        v74 = _os_log_pack_fill();
        v75 = SCError();
        v76 = SCErrorString(v75);
        *v74 = 136315138;
        *(v74 + 4) = v76;
        __SC_log_send();
      }

      SCPreferencesUnlock(v4);
      goto LABEL_84;
    }
  }

  if (!v25)
  {
    goto LABEL_83;
  }

  Count = CFArrayGetCount(v25);
  if (Count < 1)
  {
    goto LABEL_83;
  }

  v43 = Count;
  v44 = v4;
  v86 = 0;
  for (i = 0; i != v43; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v25, i);
    if (_SCNetworkInterfaceIsHiddenInterface())
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v47 = _os_log_pack_size();
        __chkstk_darwin(v47, v48, v49);
        v50 = *__error();
        v51 = _os_log_pack_fill();
        BSDName = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        *v51 = 138412290;
        *(v51 + 4) = BSDName;
LABEL_58:
        __SC_log_send();
        continue;
      }
    }

    else if (SCNetworkInterfaceGetAutoConfigure())
    {
      if (SCNetworkSetEstablishDefaultInterfaceConfiguration())
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v53 = _os_log_pack_size();
          __chkstk_darwin(v53, v54, v55);
          v56 = *__error();
          v57 = _os_log_pack_fill();
          v58 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
          *v57 = 138412290;
          *(v57 + 4) = v58;
          __SC_log_send();
        }

        v86 = 1;
      }

      else
      {
        if (!qword_1000817F8)
        {
          qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
LABEL_57:
        v59 = _os_log_pack_size();
        __chkstk_darwin(v59, v60, v61);
        v62 = *__error();
        v63 = _os_log_pack_fill();
        v64 = SCNetworkInterfaceGetBSDName(ValueAtIndex);
        *v63 = 138412290;
        *(v63 + 4) = v64;
        goto LABEL_58;
      }
    }
  }

  v4 = v44;
  if (!v86)
  {
    goto LABEL_83;
  }

  if (SCPreferencesCommitChanges(v44))
  {
    if (SCPreferencesApplyChanges(v44))
    {
      if (!qword_1000817F8)
      {
        qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v65 = _os_log_pack_size();
        __chkstk_darwin(v65, v66, v67);
        v68 = *__error();
        v69 = _os_log_pack_fill();
        *v69 = 136315138;
        *(v69 + 4) = "updateNetworkConfigurationAsync";
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_83;
    }
  }

  else
  {
    if (!qword_1000817F8)
    {
      qword_1000817F8 = os_log_create("com.apple.SystemConfiguration", "InterfaceNamer");
    }

    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_83;
    }
  }

  v77 = _os_log_pack_size();
  __chkstk_darwin(v77, v78, v79);
  v80 = *__error();
  v81 = _os_log_pack_fill();
  v82 = SCError();
  v83 = SCErrorString(v82);
  *v81 = 136315138;
  *(v81 + 4) = v83;
LABEL_82:
  __SC_log_send();
LABEL_83:
  SCPreferencesUnlock(v4);
  CFRelease(Default);
LABEL_84:
  CFRelease(v4);
}

char *sub_100034C70(unsigned int *a1, size_t a2)
{
  v3 = bswap32(a1[12]) + 56;
  if (v3 == a2)
  {
    v5 = bswap32(a1[13]);
    v6 = 0x100000 - a2;
    if (0x100000 - a2 >= v5)
    {
      v19 = v5 + a2;
      if (v5 + a2 <= 0x100000)
      {
        v17 = malloc_type_malloc(v5 + a2, 0xAC30884BuLL);
        memcpy(v17, a1, a2);
        bzero(&v17[a2], v5);
        return v17;
      }

      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v20 = _os_log_pack_size();
        __chkstk_darwin(v20, v21, v22);
        v23 = *__error();
        v24 = _os_log_pack_fill();
        *v24 = 134218240;
        *(v24 + 4) = v19;
        *(v24 + 12) = 1024;
        *(v24 + 14) = 0x100000;
        __SC_log_send();
      }
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
        *v11 = 67109376;
        *(v11 + 4) = v5;
        *(v11 + 8) = 2048;
        *(v11 + 10) = v6;
LABEL_7:
        __SC_log_send();
      }
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
      *v16 = 134218240;
      *(v16 + 4) = v3;
      *(v16 + 12) = 2048;
      *(v16 + 14) = a2;
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t sub_100034F74(int *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 136315138;
    *(v7 + 4) = "DNS configuration";
    result = __SC_log_send();
  }

  if (*a1 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(a1 + 1) + 8 * v8++);
      result = sub_100035A68(a1[11], v9, v8);
    }

    while (v8 < *a1);
  }

  if (a1[3] >= 1 && *(a1 + 2))
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
      *(v14 + 4) = "";
      __SC_log_send();
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      *v19 = 136315138;
      *(v19 + 4) = "DNS configuration (for scoped queries)";
      result = __SC_log_send();
    }

    if (a1[3] >= 1)
    {
      v20 = 0;
      do
      {
        v21 = *(*(a1 + 2) + 8 * v20++);
        result = sub_100035A68(a1[11], v21, v20);
      }

      while (v20 < a1[3]);
    }
  }

  if (a1[8] >= 1 && *(a1 + 9))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      __chkstk_darwin(v22, v23, v24);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      *v26 = 136315138;
      *(v26 + 4) = "";
      __SC_log_send();
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v27 = _os_log_pack_size();
      __chkstk_darwin(v27, v28, v29);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      *v31 = 136315138;
      *(v31 + 4) = "DNS configuration (for service-specific queries)";
      result = __SC_log_send();
    }

    if (a1[8] >= 1)
    {
      v32 = 0;
      do
      {
        v33 = *(*(a1 + 9) + 8 * v32++);
        result = sub_100035A68(a1[11], v33, v32);
      }

      while (v32 < a1[8]);
    }
  }

  return result;
}

void sub_100035420(uint64_t a1, uint64_t a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_1000354DC;
  v2[3] = &unk_10007A5D0;
  v2[4] = a1;
  v2[5] = a2;
  v3 = dispatch_queue_create("dns_configuration_monitor", 0);
  dispatch_async(v3, v2);
}

void sub_1000354DC(uint64_t a1)
{
  sub_100035550(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);

  dispatch_release(v2);
}

uint64_t sub_100035550(NSObject *a1, void *a2)
{
  memset(&v13, 0, sizeof(v13));
  __strlcpy_chk();
  if (realpath_DARWIN_EXTSN(v15, v14))
  {
    goto LABEL_2;
  }

  v7 = strrchr(v15, 47);
  if (v7)
  {
    *v7 = 0;
    if (realpath_DARWIN_EXTSN(v15, v14))
    {
      __strlcat_chk();
      __strlcat_chk();
LABEL_2:
      v13.info = a2;
      v15[0] = CFStringCreateWithCString(0, v14, 0x8000100u);
      v4 = CFArrayCreate(0, v15, 1, &kCFTypeArrayCallBacks);
      CFRelease(v15[0]);
      v5 = FSEventStreamCreate(0, sub_100036AA8, &v13, v4, 0xFFFFFFFFFFFFFFFFLL, 0.0, 0x15u);
      CFRelease(v4);
      FSEventStreamSetDispatchQueue(v5, a1);
      return FSEventStreamStart(v5);
    }
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v8 = _os_log_pack_size();
    __chkstk_darwin(v8, v9, v10);
    v11 = *__error();
    v12 = _os_log_pack_fill();
    *v12 = 136315138;
    *(v12 + 4) = "/Library/Preferences/SystemConfiguration/resolver";
    return __SC_log_send();
  }

  return result;
}

CFTypeID sub_100035790(__CFBundle *a1)
{
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  result = CFDictionaryGetTypeID();
  if (InfoDictionary)
  {
    v3 = result;
    result = CFGetTypeID(InfoDictionary);
    if (result == v3)
    {
      Value = CFDictionaryGetValue(InfoDictionary, @"mdns_timeout");
      qword_1000818E8 = Value;
      TypeID = CFNumberGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == TypeID)
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

      qword_1000818E8 = v6;
      v7 = CFDictionaryGetValue(InfoDictionary, @"pdns_timeout");
      qword_1000818F0 = v7;
      result = CFNumberGetTypeID();
      if (v7)
      {
        v8 = result;
        result = CFGetTypeID(v7);
        if (result == v8)
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      qword_1000818F0 = v9;
    }
  }

  return result;
}

uint64_t sub_100035894(const __CFDictionary *a1, const __CFDictionary *a2)
{
  v4 = 200000;
  v15 = 200000;
  valuePtr = 200000;
  v5 = CFDictionaryGetValue(a1, kSCPropNetDNSSearchOrder);
  value = v5;
  TypeID = CFNumberGetTypeID();
  if (!v5 || CFGetTypeID(v5) != TypeID || !CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr))
  {
    valuePtr = 200000;
  }

  v7 = CFDictionaryGetValue(a2, kSCPropNetDNSSearchOrder);
  number = v7;
  v8 = CFNumberGetTypeID();
  if (v7 && CFGetTypeID(v7) == v8 && CFNumberGetValue(v7, kCFNumberSInt32Type, &v15))
  {
    v4 = v15;
  }

  else
  {
    v15 = 200000;
  }

  v9 = valuePtr >= v4;
  if (valuePtr == v4)
  {
    if (!CFDictionaryGetValueIfPresent(a1, @"__ORDER__", &value))
    {
      return 0;
    }

    if (!CFDictionaryGetValueIfPresent(a2, @"__ORDER__", &number))
    {
      return 0;
    }

    v10 = value;
    v11 = CFNumberGetTypeID();
    if (!v10)
    {
      return 0;
    }

    if (CFGetTypeID(v10) != v11)
    {
      return 0;
    }

    v12 = number;
    v13 = CFNumberGetTypeID();
    if (!v12)
    {
      return 0;
    }

    if (CFGetTypeID(v12) != v13)
    {
      return 0;
    }

    if (!CFNumberGetValue(value, kCFNumberSInt32Type, &valuePtr))
    {
      return 0;
    }

    if (!CFNumberGetValue(number, kCFNumberSInt32Type, &v15))
    {
      return 0;
    }

    v9 = valuePtr >= v15;
    if (valuePtr == v15)
    {
      return 0;
    }
  }

  if (v9)
  {
    return 1;
  }

  return -1;
}

uint64_t sub_100035A68(unsigned int a1, uint64_t *a2, int a3)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v5 = _os_log_pack_size();
    __chkstk_darwin(v5, v6, v7);
    v8 = *__error();
    v9 = _os_log_pack_fill();
    *v9 = 136315138;
    *(v9 + 4) = "";
    __SC_log_send();
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v10 = _os_log_pack_size();
    __chkstk_darwin(v10, v11, v12);
    v13 = *__error();
    v14 = _os_log_pack_fill();
    *v14 = 67109120;
    v14[1] = a3;
    __SC_log_send();
  }

  if (*a2)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      v20 = *a2;
      *v19 = 136315138;
      *(v19 + 4) = v20;
      __SC_log_send();
    }
  }

  if (*(a2 + 6) >= 1)
  {
    v21 = 0;
    do
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v22 = _os_log_pack_size();
        __chkstk_darwin(v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        v27 = *(*(a2 + 28) + 8 * v21);
        *v26 = 67109378;
        *(v26 + 4) = v21;
        *(v26 + 8) = 2080;
        *(v26 + 10) = v27;
        __SC_log_send();
      }

      ++v21;
    }

    while (v21 < *(a2 + 6));
  }

  if (*(a2 + 2) >= 1)
  {
    v28 = 0;
    do
    {
      v29 = *(*(a2 + 12) + 8 * v28);
      _SC_sockaddr_to_string();
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v30 = _os_log_pack_size();
        __chkstk_darwin(v30, v31, v32);
        v33 = *__error();
        v34 = _os_log_pack_fill();
        *v34 = 67109378;
        *(v34 + 4) = v28;
        *(v34 + 8) = 2080;
        *(v34 + 10) = __str;
        __SC_log_send();
      }

      ++v28;
    }

    while (v28 < *(a2 + 2));
  }

  if (*(a2 + 9) >= 1)
  {
    v35 = 0;
    do
    {
      inet_ntop(2, *(a2[5] + 8 * v35), __str, 0x20u);
      inet_ntop(2, (*(a2[5] + 8 * v35) + 4), v110, 0x20u);
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v36 = _os_log_pack_size();
        __chkstk_darwin(v36, v37, v38);
        v39 = *__error();
        v40 = _os_log_pack_fill();
        *v40 = 67109634;
        *(v40 + 4) = v35;
        *(v40 + 8) = 2080;
        *(v40 + 10) = __str;
        *(v40 + 18) = 2080;
        *(v40 + 20) = v110;
        __SC_log_send();
      }

      ++v35;
    }

    while (v35 < *(a2 + 9));
  }

  if (a2[6])
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v41 = _os_log_pack_size();
      __chkstk_darwin(v41, v42, v43);
      v44 = *__error();
      v45 = _os_log_pack_fill();
      v46 = a2[6];
      *v45 = 136315138;
      *(v45 + 4) = v46;
      __SC_log_send();
    }
  }

  if (*(a2 + 10))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v47 = _os_log_pack_size();
      __chkstk_darwin(v47, v48, v49);
      v50 = *__error();
      v51 = _os_log_pack_fill();
      v52 = *(a2 + 10);
      *v51 = 67109120;
      v51[1] = v52;
      __SC_log_send();
    }
  }

  if (*(a2 + 14))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v53 = _os_log_pack_size();
      __chkstk_darwin(v53, v54, v55);
      v56 = *__error();
      v57 = _os_log_pack_fill();
      v58 = *(a2 + 14);
      *v57 = 67109120;
      v57[1] = v58;
      __SC_log_send();
    }
  }

  v59 = *(a2 + 16);
  if (v59)
  {
    if (a1 < 0x133C785 || (v60 = a2[11]) == 0)
    {
      v60 = if_indextoname(v59, __str);
    }

    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v61 = _os_log_pack_size();
      __chkstk_darwin(v61, v62, v63);
      v64 = *__error();
      v65 = _os_log_pack_fill();
      v66 = *(a2 + 16);
      v67 = "?";
      if (v60)
      {
        v67 = v60;
      }

      *v65 = 67109378;
      *(v65 + 4) = v66;
      *(v65 + 8) = 2080;
      *(v65 + 10) = v67;
      __SC_log_send();
    }
  }

  if (*(a2 + 19))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v68 = _os_log_pack_size();
      __chkstk_darwin(v68, v69, v70);
      v71 = *__error();
      v72 = _os_log_pack_fill();
      v73 = *(a2 + 19);
      *v72 = 67109120;
      v72[1] = v73;
      __SC_log_send();
    }
  }

  v74 = *(a2 + 17);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"  flags    : ");
  CFStringAppendFormat(Mutable, 0, @"0x%08x", v74);
  if (v74)
  {
    CFStringAppendFormat(Mutable, 0, @" (");
    if ((v74 & 0x1000) != 0)
    {
      v74 = v74 & 0xFFFFEFFF;
      v104 = "";
      if (v74)
      {
        v104 = ", ";
      }

      CFStringAppendFormat(Mutable, 0, @"Scoped%s", v104);
      if ((v74 & 0x2000) == 0)
      {
LABEL_46:
        if ((v74 & 0x4000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_105;
      }
    }

    else if ((v74 & 0x2000) == 0)
    {
      goto LABEL_46;
    }

    v74 = v74 & 0xFFFFDFFF;
    v105 = "";
    if (v74)
    {
      v105 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Service-specific%s", v105);
    if ((v74 & 0x4000) == 0)
    {
LABEL_47:
      if ((v74 & 2) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_108;
    }

LABEL_105:
    v74 = v74 & 0xFFFFBFFF;
    v106 = "";
    if (v74)
    {
      v106 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Supplemental%s", v106);
    if ((v74 & 2) == 0)
    {
LABEL_48:
      if ((v74 & 4) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_111;
    }

LABEL_108:
    v74 = v74 & 0xFFFFFFFD;
    v107 = "";
    if (v74)
    {
      v107 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Request A records%s", v107);
    if ((v74 & 4) == 0)
    {
LABEL_49:
      if (!v74)
      {
LABEL_51:
        CFStringAppend(Mutable, @""));
        goto LABEL_52;
      }

LABEL_50:
      CFStringAppendFormat(Mutable, 0, @"0x%08x", v74);
      goto LABEL_51;
    }

LABEL_111:
    v74 = v74 & 0xFFFFFFFB;
    v108 = "";
    if (v74)
    {
      v108 = ", ";
    }

    CFStringAppendFormat(Mutable, 0, @"Request AAAA records%s", v108);
    if (!v74)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

LABEL_52:
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v76 = _os_log_pack_size();
    __chkstk_darwin(v76, v77, v78);
    v79 = *__error();
    v80 = _os_log_pack_fill();
    *v80 = 138412290;
    *(v80 + 4) = Mutable;
    __SC_log_send();
  }

  CFRelease(Mutable);
  v81 = *(a2 + 18);
  v82 = snprintf(__str, 0x64uLL, "0x%08x (", v81);
  if (v81 || v82 > 0x53)
  {
    v84 = v82;
    v83 = v82;
    v85 = v81;
    if ((v81 & 2) != 0)
    {
      v83 = v82;
      v85 = v81;
      if (v82 <= 0x57)
      {
        v83 = __strlcat_chk();
        v85 = v81 & 0xFFFFFFFD;
      }
    }

    if ((v85 & 1) != 0 && v83 <= 0x4C)
    {
      v83 = __strlcat_chk();
      v85 &= ~1u;
    }

    if ((v85 & 4) != 0 && v83 <= 0x4D)
    {
      v83 = __strlcat_chk();
      v85 &= ~4u;
    }

    if ((v85 & 8) != 0 && v83 <= 0x41)
    {
      v83 = __strlcat_chk();
      v85 &= ~8u;
    }

    if ((v85 & 0x20) != 0 && v83 <= 0x42)
    {
      v83 = __strlcat_chk();
      v85 &= ~0x20u;
    }

    if ((v85 & 0x10) != 0 && v83 <= 0x4B)
    {
      v83 = __strlcat_chk();
      v85 &= ~0x10u;
    }

    if ((v85 & 0x10000) != 0 && v83 <= 0x53)
    {
      v83 = __strlcat_chk();
      v85 &= ~0x10000u;
    }

    if ((v85 & 0x20000) != 0 && v83 <= 0x46)
    {
      v83 = __strlcat_chk();
      v85 &= ~0x20000u;
    }

    if ((v85 & 0x40000) != 0 && v83 <= 0x5C)
    {
      v83 = __strlcat_chk();
      v85 &= ~0x40000u;
    }

    if (v85)
    {
      if (v83 >= 0x57)
      {
        __str[v84] = 0;
        v83 = v84;
        v85 = v81;
      }

      v83 += snprintf(&__str[v83], 99 - v83, "0x%08x,", v85);
    }
  }

  else
  {
    v83 = __strlcat_chk();
  }

  if (v83)
  {
    __str[v83 - 1] = 41;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    v87 = _os_log_pack_size();
    __chkstk_darwin(v87, v88, v89);
    v90 = *__error();
    v91 = _os_log_pack_fill();
    *v91 = 136315138;
    *(v91 + 4) = __str;
    result = __SC_log_send();
  }

  if (*(a2 + 15))
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v92 = _os_log_pack_size();
      __chkstk_darwin(v92, v93, v94);
      v95 = *__error();
      v96 = _os_log_pack_fill();
      v97 = *(a2 + 15);
      *v96 = 67109120;
      v96[1] = v97;
      result = __SC_log_send();
    }
  }

  if (a2[10])
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v98 = _os_log_pack_size();
      __chkstk_darwin(v98, v99, v100);
      v101 = *__error();
      v102 = _os_log_pack_fill();
      v103 = a2[10];
      *v102 = 136315138;
      *(v102 + 4) = v103;
      return __SC_log_send();
    }
  }

  return result;
}

uint64_t sub_100036AA8(uint64_t a1, uint64_t (*a2)(void))
{
  memset(&v8, 0, sizeof(v8));
  result = stat("/Library/Preferences/SystemConfiguration/resolver", &v8);
  if (byte_1000818F8 || !result)
  {
    byte_1000818F8 = result == 0;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v4 = _os_log_pack_size();
      __chkstk_darwin(v4, v5, v6);
      v7 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    return a2();
  }

  return result;
}

void sub_100036BF4(void **a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = a2[1];
  if (v4 == 2)
  {
    v7 = 16777343;
    v8 = 4;
    goto LABEL_8;
  }

  if (v4 == 30 && !*(a2 + 2) && !*(a2 + 3) && !*(a2 + 4))
  {
    v7 = 0x1000000;
    v8 = 20;
LABEL_8:
    v9 = *&a2[v8];
    v6 = v9 != v7;
    if (v9 == v7)
    {
      v5 = 100663296;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_11;
  }

  v5 = 0;
  v6 = 1;
LABEL_11:
  v10 = v3[17];
  v3[2] = bswap32(bswap32(v3[2]) + 1);
  sub_10001C5F8(a1, 0xBu, *a2, a2);
  if (!v6)
  {
    *(*a1 + 17) = v5 | v10;
  }
}

void sub_100036CF4(void **a1, char *__s)
{
  *(*a1 + 6) = bswap32(bswap32(*(*a1 + 6)) + 1);
  v4 = strlen(__s) + 1;

  sub_10001C5F8(a1, 0xCu, v4, __s);
}

void sub_100036D8C(void **a1, const void *a2)
{
  *(*a1 + 9) = bswap32(bswap32(*(*a1 + 9)) + 1);

  sub_10001C5F8(a1, 0xDu, 8u, a2);
}

void sub_100036E08(void **a1, unsigned int a2, char *__s)
{
  *(*a1 + 16) = bswap32(a2);
  if (__s)
  {
    v5 = strlen(__s);

    sub_10001C5F8(a1, 0x10u, v5, __s);
  }
}

FILE *sub_100036F68(char *a1)
{
  v55 = 0;
  v56 = 0;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v59[0] = 0;
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  result = fopen(v59, "r");
  if (result)
  {
    v3 = result;
    v4 = fgetln(result, &v56);
    if (v4)
    {
      v6 = v4;
      v51 = a1;
      v7 = 0;
      v8 = 0;
      *&v5 = 136315394;
      v52 = v5;
      while (1)
      {
        v54 = 0;
        v9 = v56;
        if (v56)
        {
          if (v6[v56 - 1] == 10)
          {
            v6[v56 - 1] = 0;
            v9 = v56;
          }

          v10 = reallocf(v8, v9 + 1);
          v8 = v10;
          if (v10)
          {
            strlcpy(v10, v6, v56 + 1);
            v54 = v8;
            v11 = strsep(&v54, " \t");
            if (v11)
            {
              v12 = v11;
              v13 = *v11;
              if (v13 != 35 && v13 != 59)
              {
                v14 = &dword_10007A5FC;
                v15 = 10;
                while (strcasecmp(v12, *(v14 - 3)))
                {
                  v14 += 4;
                  if (!--v15)
                  {
                    goto LABEL_33;
                  }
                }

                v16 = *(v14 - 1);
                if (v16 == -1)
                {
LABEL_33:
                  sub_1000035EC();
                  _SC_syslog_os_log_mapping();
                  if (__SC_log_enabled())
                  {
                    v23 = _os_log_pack_size();
                    v53 = &v50;
                    __chkstk_darwin(v23, v24, v25);
                    v26 = *__error();
                    v27 = _os_log_pack_fill();
                    *v27 = v52;
                    *(v27 + 4) = v12;
                    *(v27 + 12) = 2080;
                    *(v27 + 14) = v59;
                    __SC_log_send();
                  }

                  goto LABEL_35;
                }

                v17 = *v14;
                v18 = strsep(&v54, " \t");
                if (!v18)
                {
                  goto LABEL_35;
                }

                v19 = *(v57 + v16);
                *(v57 + v16) = v19 + 1;
                if (v19 >= v17)
                {
                  goto LABEL_35;
                }

                v20 = v18;
                if (!v55)
                {
                  v55 = sub_10001C4BC();
                  if (!v55)
                  {
                    goto LABEL_111;
                  }
                }

                if (v16 > 4)
                {
                  if (v16 <= 6)
                  {
                    if (v16 == 5)
                    {
                      v40 = strtol(v20, 0, 0);
                      if (!(v40 >> 16))
                      {
                        sub_100036EC0(&v55, v40);
                      }
                    }

                    else
                    {
                      v37 = 0;
                      do
                      {
                        if (v37 == 6)
                        {
                          break;
                        }

                        v38 = strlen(v20);
                        if (v38)
                        {
                          while (v20[v38 - 1] == 46)
                          {
                            v20[--v38] = 0;
                            if (!v38)
                            {
                              goto LABEL_80;
                            }
                          }

                          sub_100036CF4(&v55, v20);
                        }

LABEL_80:
                        ++v37;
                        v20 = strsep(&v54, " \t");
                      }

                      while (v20);
                    }
                  }

                  else
                  {
                    switch(v16)
                    {
                      case 7:
                        v42 = strtol(v20, 0, 0);
                        if (!HIDWORD(v42))
                        {
                          sub_10001CCF0(&v55, v42);
                        }

                        break;
                      case 9:
                        v44 = strtol(v20, 0, 0);
                        if (!HIDWORD(v44))
                        {
                          sub_10001CD44(&v55, v44);
                        }

                        break;
                      case 8:
                        v28 = 11;
                        while (--v28)
                        {
                          v29 = strchr(v20, 47);
                          v30 = v29;
                          if (v29)
                          {
                            *v29 = 0;
                          }

                          v31 = sub_100037784(v20);
                          if (!v31)
                          {
                            break;
                          }

                          if (*(v31 + 1) != 2)
                          {
                            goto LABEL_95;
                          }

                          v32 = *(v31 + 1);
                          free(v31);
                          if (v30)
                          {
                            v31 = sub_100037784(v30 + 1);
                            if (!v31)
                            {
                              goto LABEL_35;
                            }

                            if (*(v31 + 1) != 2)
                            {
                              goto LABEL_95;
                            }

                            v33 = *(v31 + 1);
                            free(v31);
                          }

                          else
                          {
                            v34 = bswap32(v32);
                            if ((v34 & 0x80000000) != 0)
                            {
                              if (v34 >> 30 == 2)
                              {
                                v35 = -65536;
                              }

                              else
                              {
                                if (v34 >> 29 != 6)
                                {
                                  goto LABEL_35;
                                }

                                v35 = -256;
                              }
                            }

                            else
                            {
                              v35 = -16777216;
                            }

                            v33 = bswap32(v35);
                          }

                          v36 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
                          *v36 = v32;
                          v36[1] = v33;
                          sub_100036D8C(&v55, v36);
                          free(v36);
                          v20 = strsep(&v54, " \t");
                          if (!v20)
                          {
                            goto LABEL_35;
                          }
                        }

                        break;
                    }
                  }

                  goto LABEL_35;
                }

                if (v16 <= 1)
                {
                  if (v16)
                  {
                    if (v16 == 1)
                    {
                      do
                      {
                        if (*v20)
                        {
                          if (!strcasecmp(v20, "scoped"))
                          {
                            v7 |= 0x1000u;
                          }

                          else if (!strcasecmp(v20, "a"))
                          {
                            v7 |= 2u;
                          }

                          else if (!strcasecmp(v20, "aaaa"))
                          {
                            v7 |= 4u;
                          }
                        }

                        v20 = strsep(&v54, " \t");
                      }

                      while (v20);
                    }
                  }

                  else
                  {
                    v39 = strlen(v20);
                    if (v39)
                    {
                      while (v20[v39 - 1] == 46)
                      {
                        v20[--v39] = 0;
                        if (!v39)
                        {
                          goto LABEL_35;
                        }
                      }

                      sub_10001CC70(&v55, v20);
                    }
                  }
                }

                else if (v16 == 2)
                {
                  v41 = if_nametoindex(v20);
                  if (v41)
                  {
                    sub_100036E08(&v55, v41, v20);
                  }
                }

                else
                {
                  if (v16 == 3)
                  {
                    v43 = sub_1000376B4(v20);
                    if (!v43)
                    {
                      goto LABEL_35;
                    }

                    v21 = v43;
                    sub_100036BF4(&v55, v43);
                    goto LABEL_94;
                  }

                  v21 = 0;
                  do
                  {
                    if (*v20)
                    {
                      if (v21)
                      {
                        strlcat(v21, " ", v56 + 1);
                        strlcat(v21, v20, v56 + 1);
                      }

                      else
                      {
                        v22 = malloc_type_malloc(v56 + 1, 0x925756BFuLL);
                        if (!v22)
                        {
                          goto LABEL_35;
                        }

                        v21 = v22;
                        strlcpy(v22, v20, v56 + 1);
                      }
                    }

                    v20 = strsep(&v54, " \t");
                  }

                  while (v20);
                  if (v21)
                  {
                    sub_10001CD98(&v55, v21);
LABEL_94:
                    v31 = v21;
LABEL_95:
                    free(v31);
                  }
                }
              }
            }
          }
        }

LABEL_35:
        v6 = fgetln(v3, &v56);
        if (!v6)
        {
          v45 = LODWORD(v57[0]) == 0;
          a1 = v51;
          goto LABEL_100;
        }
      }
    }

    v8 = 0;
    v7 = 0;
    v45 = 1;
LABEL_100:
    v46 = v55;
    if (v55 && v45)
    {
      v47 = strrchr(a1, 47);
      if (v47)
      {
        v48 = v47 + 1;
      }

      else
      {
        v48 = a1;
      }

      sub_10001CC70(&v55, v48);
      v46 = v55;
    }

    if (v46)
    {
      if (v7)
      {
        v49 = v7;
      }

      else
      {
        v49 = bswap32(v46[17]) | dword_1000818FC;
      }

      sub_10001C524(&v55, v49);
    }

LABEL_111:
    if (v8)
    {
      free(v8);
    }

    fclose(v3);
    return v55;
  }

  return result;
}

unsigned __int8 *sub_1000376B4(char *a1)
{
  result = sub_100037784(a1);
  if (!result)
  {
    result = strrchr(a1, 46);
    if (result)
    {
      v3 = result;
      v4 = strtol(result + 1, 0, 10);
      if (v4 >> 16)
      {
        return 0;
      }

      else
      {
        v5 = v4;
        *v3 = 0;
        result = sub_100037784(a1);
        if (result)
        {
          v6 = result[1];
          if (v6 == 30 || v6 == 2)
          {
            *(result + 1) = bswap32(v5) >> 16;
          }
        }
      }
    }
  }

  return result;
}

void *sub_100037784(const char *a1)
{
  v7 = 0;
  memset(&v6, 0, sizeof(v6));
  v6.ai_flags = 4;
  v1 = 0;
  if (!getaddrinfo(a1, 0, &v6, &v7))
  {
    v2 = v7;
    ai_family = v7->ai_family;
    if (ai_family == 30 || ai_family == 2)
    {
      v1 = malloc_type_malloc(v7->ai_addrlen, 0x66E24583uLL);
      memcpy(v1, v7->ai_addr, v7->ai_addrlen);
      v2 = v7;
    }

    else
    {
      v1 = 0;
    }

    freeaddrinfo(v2);
  }

  return v1;
}

uint64_t sub_100037850(uint64_t a1, const void *a2)
{
  sub_1000575FC(&qword_100081900);
  sub_100037A20();
  qword_100081920 = _Block_copy(a2);
  v3 = "com.apple.SystemConfiguration.DNSConfiguration";
  v4 = getenv("com.apple.SystemConfiguration.DNSConfiguration");
  if (v4)
  {
    v3 = v4;
  }

  if (qword_100081928 != -1)
  {
    sub_100067BF0();
  }

  mach_service = xpc_connection_create_mach_service(v3, qword_100081930, 1uLL);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100002F1C;
  handler[3] = &unk_10007A690;
  handler[4] = mach_service;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_resume(mach_service);
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

uint64_t sub_100037A20()
{
  if (qword_100081928 != -1)
  {
    sub_100067BF0();
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

uint64_t sub_100037B50(CFDataRef *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = *(v1 + 3);
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

    v1 = CFDataCreate(0, v1, bswap32(*(v1 + 12)) + 56);
  }

  else
  {
    v2 = 0;
  }

  if (qword_100081928 != -1)
  {
    sub_100067C58();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100037DFC;
  block[3] = &unk_10007A6B0;
  block[4] = v1;
  block[5] = v2;
  dispatch_sync(qword_100081930, block);
  if (v1)
  {
    CFRelease(v1);
  }

  sub_100057714(&qword_100081900);
  if (qword_100081920)
  {
    (*(qword_100081920 + 16))();
  }

  v8 = dns_configuration_notify_key();
  if (v8)
  {
    v9 = notify_post(v8);
    if (v9)
    {
      v10 = v9;
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v11 = _os_log_pack_size();
        __chkstk_darwin(v11, v12, v13);
        v14 = *__error();
        v15 = _os_log_pack_fill();
        *v15 = 67109120;
        v15[1] = v10;
        __SC_log_send();
      }
    }
  }

  return 1;
}

void sub_100037DFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  sub_100057678(&qword_100081900, v1, v2);
}

os_state_data_s *__cdecl sub_100037E60(id a1, os_state_hints_s *a2)
{
  if (qword_100081900)
  {
    Length = CFDataGetLength(qword_100081900);
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

  v7 = malloc_type_calloc(1uLL, v3, 0x9D6E6BCEuLL);
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
    BytePtr = CFDataGetBytePtr(qword_100081900);
    memcpy(v8->var4, BytePtr, v6);
  }

  return v8;
}

uint64_t sub_100038118(_xpc_connection_s *a1, xpc_object_t xdict)
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

  sub_100057768(&qword_100081900, a1, uint64);
  sub_100057714(&qword_100081900);
  result = qword_100081920;
  if (qword_100081920)
  {
    return (*(qword_100081920 + 16))();
  }

  return result;
}

uint64_t sub_100038A68(int a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100038B5C;
  v4[3] = &unk_10007A7A0;
  v5 = a1;
  v4[4] = &v6;
  v4[5] = a2;
  if (qword_100081950 != -1)
  {
    sub_100067CB4();
  }

  dispatch_sync(qword_100081958, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

char *sub_100038B5C(char *result)
{
  v1 = result;
  if (qword_100081940)
  {
    v2 = *qword_100081940;
    if (*qword_100081940)
    {
      for (i = qword_100081940 + 8; *i; i += 16)
      {
        if (v2 == *(result + 12))
        {
          v4 = *(result + 5);
          *(*(*(v1 + 4) + 8) + 24) = v4;
          v5 = *i;

          return strlcpy(v4, v5, 0x10uLL);
        }

        v2 = *(i + 8);
        if (!v2)
        {
          return result;
        }
      }
    }
  }

  else
  {
    result = if_indextoname(*(result + 12), *(result + 5));
    *(*(*(v1 + 4) + 8) + 24) = result;
  }

  return result;
}

char *sub_100038C50(int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (!sub_100038A68(a1, a2))
  {
    snprintf(v2, 0x10uLL, "[%u]", a1);
  }

  return v2;
}

uint64_t sub_100038CD8()
{
  result = dword_100081948;
  if (!dword_100081948)
  {
    result = sub_100013354("lo0");
    dword_100081948 = result;
  }

  return result;
}

uint64_t sub_100038D44(int a1, __int16 a2, _OWORD *a3, char a4)
{
  memset(v5, 0, sizeof(v5));
  v6 = 0u;
  LOWORD(v5[0]) = 7708;
  *(v5 + 8) = *a3;
  BYTE12(v5[1]) = a4;
  WORD4(v6) = a2;
  return ioctl(a1, 0xC0307586uLL, v5);
}

uint64_t sub_100038DC4(int a1, __int16 a2, _OWORD *a3)
{
  memset(v4, 0, sizeof(v4));
  v5 = 0u;
  LOWORD(v4[0]) = 7708;
  *(v4 + 8) = *a3;
  WORD4(v5) = a2;
  return ioctl(a1, 0xC0307587uLL, v4);
}

uint64_t sub_100038E40(int a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  __strlcpy_chk();
  LOBYTE(v11) = a3;
  if (a5)
  {
    if (a5 >= 0x14)
    {
      v8 = 20;
    }

    else
    {
      v8 = a5;
    }

    BYTE1(v11) = v8;
    __memcpy_chk();
  }

  return ioctl(a1, 0xC02869AEuLL, &v10);
}

uint64_t sub_100038FCC(uint64_t a1, void *a2)
{
  result = sub_100039190(a1, a2);
  if (result)
  {
    v3 = dispatch_queue_create("IPMonitorControlServer", 0);
    mach_service = xpc_connection_create_mach_service("com.apple.SystemConfiguration.IPMonitorControl", v3, 1uLL);
    if (mach_service)
    {
      v5 = mach_service;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 0x40000000;
      handler[2] = sub_100039534;
      handler[3] = &unk_10007A8A8;
      handler[4] = mach_service;
      qword_100081988 = v3;
      xpc_connection_set_event_handler(mach_service, handler);
      xpc_connection_resume(v5);
      qword_100081960 = v5;
      os_state_add_handler();
      return 1;
    }

    else
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v6 = _os_log_pack_size();
        __chkstk_darwin(v6, v7, v8);
        v9 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      dispatch_release(v3);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100039190(uint64_t a1, void *aBlock)
{
  if (qword_100081968)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (!result)
    {
      return result;
    }

LABEL_8:
    v3 = _os_log_pack_size();
    __chkstk_darwin(v3, v4, v5);
    v6 = *__error();
    v7 = _os_log_pack_fill();
    *v7 = 136315138;
    *(v7 + 4) = "SetNotificationInfo";
    __SC_log_send();
    return 0;
  }

  if (a1 && aBlock)
  {
    qword_100081968 = a1;
    qword_100081970 = _Block_copy(aBlock);
    return 1;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  result = __SC_log_enabled();
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100039354(void *a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100039458;
  block[3] = &unk_10007A888;
  block[4] = &v5;
  block[5] = &v9;
  dispatch_sync(qword_100081988, block);
  *a1 = v6[3];
  v2 = v10[3];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
  return v2;
}

void sub_100039458(uint64_t a1)
{
  v7 = 0;
  v2 = S_ControlSessions;
  if (S_ControlSessions)
  {
    do
    {
      v3 = v2[6];
      if (v3)
      {
        CFDictionaryApplyFunction(v3, sub_10003B6E0, &v7);
      }

      v4 = v2[5];
      if (v4)
      {
        CFDictionaryApplyFunction(v4, sub_10003B7C8, &v7);
      }

      v2 = *v2;
    }

    while (v2);
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  v6 = qword_100081978;
  qword_100081978 = 0;
  *(*(*(a1 + 40) + 8) + 24) = v6;
}

void sub_100039534(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = sub_100039838;
    handler[3] = &unk_10007A8C8;
    handler[4] = object;
    xpc_connection_set_event_handler(object, handler);
    xpc_connection_set_target_queue(object, qword_100081988);
    xpc_connection_resume(object);
    return;
  }

  string = type;
  if (type != &_xpc_type_error)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    v6 = _os_log_pack_size();
    __chkstk_darwin(v6, v7, v8);
    v9 = *__error();
    v10 = _os_log_pack_fill();
    v11 = 134217984;
LABEL_9:
    *v10 = v11;
    *(v10 + 4) = string;
    __SC_log_send();
    return;
  }

  string = xpc_dictionary_get_string(object, _xpc_error_key_description);
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  v12 = __SC_log_enabled();
  if (object != &_xpc_error_connection_invalid)
  {
    if (!v12)
    {
      return;
    }

    v13 = _os_log_pack_size();
    __chkstk_darwin(v13, v14, v15);
    v16 = *__error();
    v10 = _os_log_pack_fill();
    v11 = 136315138;
    goto LABEL_9;
  }

  if (v12)
  {
    v17 = _os_log_pack_size();
    __chkstk_darwin(v17, v18, v19);
    v20 = *__error();
    v21 = _os_log_pack_fill();
    *v21 = 136315138;
    *(v21 + 4) = string;
    __SC_log_send();
  }

  xpc_release(*(a1 + 32));
}

void sub_100039838(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);

  sub_100039894(v2, a2);
}

void sub_100039894(_xpc_connection_s *a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "Type");
    reply = xpc_dictionary_create_reply(object);
    v11 = 22;
    if (int64 <= 4)
    {
      if (int64 > 2)
      {
        if (int64 == 3)
        {
          v11 = sub_10003A374(a1, object);
          goto LABEL_93;
        }

        if (!reply)
        {
          return;
        }

        string = xpc_dictionary_get_string(object, "InterfaceName");
        if (string)
        {
          v21 = CFStringCreateWithCString(0, string, 0x8000100u);
          v22 = xpc_dictionary_get_int64(object, "Advisory");
          v23 = S_ControlSessions;
          if (S_ControlSessions)
          {
            v24 = v22;
            while (1)
            {
              v25 = v23[6];
              if (v25)
              {
                Value = CFDictionaryGetValue(v25, v21);
                if (Value)
                {
                  LODWORD(context) = 0;
                  if (!v24)
                  {
                    break;
                  }

                  CFNumberGetValue(Value, kCFNumberSInt32Type, &context);
                  if (context == v24)
                  {
                    break;
                  }
                }
              }

              v23 = *v23;
              if (!v23)
              {
                goto LABEL_42;
              }
            }

            v27 = 1;
          }

          else
          {
LABEL_42:
            v27 = 0;
          }

          xpc_dictionary_set_BOOL(reply, "AdvisoryIsSet", v27);
          CFRelease(v21);
          goto LABEL_92;
        }
      }

      else
      {
        if (int64 == 1)
        {
          v11 = sub_100039FEC(a1, object);
          goto LABEL_93;
        }

        if (int64 != 2)
        {
          goto LABEL_93;
        }

        if (!reply)
        {
          return;
        }

        v14 = xpc_connection_get_context(a1);
        if (!v14)
        {
          goto LABEL_87;
        }

        v15 = v14;
        v16 = xpc_dictionary_get_string(object, "InterfaceName");
        if (v16)
        {
          LODWORD(context) = 0;
          if (*(v15 + 5) && (v17 = CFStringCreateWithCString(0, v16, 0x8000100u), v18 = CFDictionaryGetValue(*(v15 + 5), v17), CFRelease(v17), v18))
          {
            CFNumberGetValue(v18, kCFNumberSInt32Type, &context);
            v19 = context;
          }

          else
          {
            v19 = 0;
          }

          xpc_dictionary_set_int64(reply, "PrimaryRank", v19);
          v11 = 0;
          goto LABEL_94;
        }
      }
    }

    else if (int64 <= 6)
    {
      if (int64 == 5)
      {
        if (!reply)
        {
          return;
        }

        v48 = &S_ControlSessions;
        do
        {
          v48 = *v48;
        }

        while (v48 && !v48[6]);
        xpc_dictionary_set_BOOL(reply, "AdvisoryIsSet", v48 != 0);
        goto LABEL_92;
      }

      if (!reply)
      {
        return;
      }

      v28 = xpc_dictionary_get_string(object, "InterfaceName");
      if (v28)
      {
        v29 = CFStringCreateWithCString(0, v28, 0x8000100u);
        v30 = S_ControlSessions;
        if (S_ControlSessions)
        {
          empty = 0;
          do
          {
            LODWORD(context) = 0;
            v32 = *(v30 + 40);
            if (v32)
            {
              v33 = CFDictionaryGetValue(v32, v29);
              if (v33)
              {
                CFNumberGetValue(v33, kCFNumberSInt32Type, &context);
                if (!empty)
                {
                  empty = xpc_array_create_empty();
                }

                v34 = *(v30 + 32);
                v35 = *(v30 + 24);
                v36 = context;
                v37 = xpc_dictionary_create_empty();
                xpc_dictionary_set_string(v37, "ProcessName", v34);
                xpc_dictionary_set_int64(v37, "ProcessID", v35);
                xpc_dictionary_set_int64(v37, "PrimaryRank", v36);
                xpc_array_append_value(empty, v37);
                xpc_release(v37);
              }
            }

            v30 = *v30;
          }

          while (v30);
          CFRelease(v29);
          if (!empty)
          {
            goto LABEL_85;
          }

          v38 = "RankAssertionInfo";
          goto LABEL_70;
        }

        goto LABEL_86;
      }
    }

    else
    {
      if (int64 != 7)
      {
        if (int64 == 8)
        {
          if (!reply)
          {
            return;
          }

          context = 0;
          v49 = S_ControlSessions;
          if (S_ControlSessions)
          {
            do
            {
              v50 = v49[5];
              if (v50)
              {
                CFDictionaryApplyFunction(v50, sub_10003ADB0, &context);
              }

              v49 = *v49;
            }

            while (v49);
LABEL_81:
            v51 = context;
            if (context)
            {
              xpc_dictionary_set_value(reply, "InterfaceNames", context);
              v47 = v51;
              goto LABEL_83;
            }

LABEL_85:
            v11 = 2;
            goto LABEL_93;
          }
        }

        else
        {
          if (int64 != 9)
          {
            goto LABEL_93;
          }

          if (!reply)
          {
            return;
          }

          context = 0;
          v12 = S_ControlSessions;
          if (S_ControlSessions)
          {
            do
            {
              v13 = v12[6];
              if (v13)
              {
                CFDictionaryApplyFunction(v13, sub_10003ADB0, &context);
              }

              v12 = *v12;
            }

            while (v12);
            goto LABEL_81;
          }
        }

        goto LABEL_87;
      }

      if (!reply)
      {
        return;
      }

      v39 = xpc_dictionary_get_string(object, "InterfaceName");
      if (v39)
      {
        v29 = CFStringCreateWithCString(0, v39, 0x8000100u);
        v40 = S_ControlSessions;
        if (S_ControlSessions)
        {
          empty = 0;
          do
          {
            LODWORD(context) = 0;
            v41 = *(v40 + 48);
            if (v41)
            {
              v42 = CFDictionaryGetValue(v41, v29);
              if (v42)
              {
                CFNumberGetValue(v42, kCFNumberSInt32Type, &context);
                if (!empty)
                {
                  empty = xpc_array_create_empty();
                }

                v43 = *(v40 + 32);
                v44 = *(v40 + 24);
                v45 = context;
                v46 = xpc_dictionary_create_empty();
                xpc_dictionary_set_string(v46, "ProcessName", v43);
                xpc_dictionary_set_int64(v46, "ProcessID", v44);
                xpc_dictionary_set_int64(v46, "Advisory", v45);
                xpc_array_append_value(empty, v46);
                xpc_release(v46);
              }
            }

            v40 = *v40;
          }

          while (v40);
          CFRelease(v29);
          if (!empty)
          {
            goto LABEL_85;
          }

          v38 = "AdvisoryInfo";
LABEL_70:
          xpc_dictionary_set_value(reply, v38, empty);
          v47 = empty;
LABEL_83:
          xpc_release(v47);
LABEL_92:
          v11 = 0;
LABEL_93:
          if (!reply)
          {
            return;
          }

          goto LABEL_94;
        }

LABEL_86:
        CFRelease(v29);
LABEL_87:
        v11 = 2;
        goto LABEL_94;
      }
    }

    v11 = 22;
LABEL_94:
    xpc_dictionary_set_int64(reply, "Error", v11);
    remote_connection = xpc_dictionary_get_remote_connection(object);
    xpc_connection_send_message(remote_connection, reply);
    xpc_release(reply);
    return;
  }

  if (type != &_xpc_type_error)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      return;
    }

    goto LABEL_4;
  }

  if (object == &_xpc_error_connection_invalid)
  {

    sub_10003A778(a1);
  }

  else if (object == &_xpc_error_connection_interrupted)
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
LABEL_4:
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }
}