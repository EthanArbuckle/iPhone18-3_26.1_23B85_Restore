void sub_1000011B0(mach_port_context_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 13:

      sub_100005CC4(a1);
      break;
    case 8:

      sub_100007400(a1);
      break;
    case 2:
      if (dispatch_mach_mig_demux())
      {

        sub_100001DBC();
      }

      else
      {
        msg = dispatch_mach_msg_get_msg();

        mach_msg_destroy(msg);
      }

      break;
  }
}

uint64_t sub_100001320(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6, int *a7, __int128 *a8)
{
  v23 = 0;
  *a6 = 0;
  *a7 = 0;
  if (_SCUnserializeString())
  {
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *a7 = 1001;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (a5 && !_SCUnserialize())
  {
LABEL_17:
    v20 = 1001;
    goto LABEL_18;
  }

LABEL_7:
  if (*a7)
  {
    return 0;
  }

  TypeID = CFStringGetTypeID();
  if (!v23 || CFGetTypeID(v23) != TypeID)
  {
    v20 = 1002;
LABEL_18:
    *a7 = v20;
    return 0;
  }

  v15 = a8[1];
  v24[0] = *a8;
  v24[1] = v15;
  v16 = sub_100001720(a1, v24);
  if (!v16)
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      _os_log_pack_size();
      __chkstk_darwin();
      v21 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    goto LABEL_17;
  }

  v17 = v16;
  *a6 = *(v16 + 16);
  v18 = sub_100001D48();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_100067664(a6, &v23, v18);
  }

  Private = __SCDynamicStoreCreatePrivate();
  *(v17 + 56) = Private;
  *a7 = 0;
  *(Private + 40) = *a6;
  *(v17 + 40) = v23;
  return 0;
}

uint64_t sub_1000015BC(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_12;
  }

  if (*(result + 76) || *(result + 80) <= 0x1Fu)
  {
    v3 = -309;
LABEL_12:
    *(a2 + 32) = v3;
    goto LABEL_13;
  }

  *(a2 + 32) = 0x11000000000000;
  v4 = *(result + 12);
  v5 = *(result + 28);
  v6 = *(result + 40);
  v7 = *(result + 44);
  v8 = *(result + 56);
  v9 = *(result + 112);
  v10[0] = *(result + 96);
  v10[1] = v9;
  result = sub_100001320(v4, v5, v6, v7, v8, (a2 + 28), (a2 + 48), v10);
  if (!result)
  {
    *(a2 + 40) = NDR_record;
    *a2 |= 0x80000000;
    *(a2 + 4) = 52;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_13:
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t sub_100001720(int a1, __int128 *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (qword_100081788 != -1)
  {
    sub_10000A360();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  v4 = a2[1];
  v14 = *a2;
  block[2] = sub_100001848;
  block[3] = &unk_100079CE8;
  v13 = a1;
  block[4] = &v8;
  v15 = v4;
  dispatch_sync(qword_100081790, block);
  v5 = v9[3];
  if (v5)
  {
    sub_100001C8C(v5, 0);
    v6 = v9[3];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v6;
}

void sub_100001848(uint64_t a1)
{
  if (!CFDictionaryContainsKey(qword_100081778, *(a1 + 40)))
  {
    *(*(*(a1 + 32) + 8) + 24) = sub_100001938(0);
    v2 = *(*(*(a1 + 32) + 8) + 24);
    if (v2)
    {
      CFDictionarySetValue(qword_100081778, v2[4], v2);
      v3 = *(*(*(a1 + 32) + 8) + 24);
      v4 = *(a1 + 60);
      *(v3 + 68) = *(a1 + 44);
      *(v3 + 84) = v4;
      v5 = *(*(*(a1 + 32) + 8) + 24);
      v6 = *(v5 + 84);
      *v7.val = *(v5 + 68);
      *&v7.val[4] = v6;
      *(*(*(*(a1 + 32) + 8) + 24) + 64) = audit_token_to_euid(&v7);
      CFRelease(*(*(*(a1 + 32) + 8) + 24));
    }
  }
}

mach_port_context_t sub_100001938(mach_port_name_t a1)
{
  if (qword_100081798 != -1)
  {
    sub_1000674F0();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
LABEL_5:
      *(Instance + 64) = 1;
      *(Instance + 104) = 0;
      *(Instance + 16) = a1;
      return Instance;
    }

    *&options.flags = 1;
    options.8 = 0uLL;
    name = 0;
    v3 = mach_port_construct(mach_task_self_, &options, Instance, &name);
    if (v3)
    {
      v4 = v3;
      while (1)
      {
        v15 = 0;
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          _os_log_pack_size();
          __chkstk_darwin();
          v5 = *__error();
          v6 = _os_log_pack_fill();
          v7 = mach_error_string(v4);
          *v6 = 136315138;
          *(v6 + 4) = v7;
          __SC_log_send();
        }

        if (v4 == 6 || v4 == 3)
        {
          sleep(1u);
        }

        else
        {
          v8 = mach_error_string(v4);
          asprintf(&v15, "Could not allocate mach port: %s", v8);
          _SC_crash();
          if (v15)
          {
            free(v15);
          }

          CFRelease(Instance);
        }

        if (v4 != 6 && v4 != 3)
        {
          break;
        }

        *&options.flags = 1;
        options.8 = 0uLL;
        v4 = mach_port_construct(mach_task_self_, &options, Instance, &name);
        if (!v4)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
LABEL_19:
      inserted = mach_port_insert_right(mach_task_self_, name, name, 0x14u);
      if (!inserted)
      {
        a1 = name;
        goto LABEL_5;
      }

      v10 = inserted;
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        __chkstk_darwin();
        v11 = *__error();
        v12 = _os_log_pack_fill();
        v13 = mach_error_string(v10);
        *v12 = 136315138;
        *(v12 + 4) = v13;
        __SC_log_send();
      }

      CFRelease(Instance);
    }

    return 0;
  }

  return Instance;
}

uint64_t sub_100001C8C(uint64_t a1, int a2)
{
  sub_1000026BC();
  *(a1 + 24) = dispatch_mach_create_f();
  if (!a2)
  {
    dispatch_mach_notify_no_senders();
    v4 = *(a1 + 24);
  }

  dispatch_set_qos_class_fallback();
  v5 = *(a1 + 24);
  v6 = *(a1 + 16);

  return _dispatch_mach_connect(v5, v6, 0, 0);
}

os_log_t sub_100001D48()
{
  result = qword_100081728;
  if (!qword_100081728)
  {
    result = os_log_create("com.apple.SystemConfiguration", "SCDynamicStore");
    qword_100081728 = result;
  }

  return result;
}

void sub_100001DBC()
{
  if (qword_1000816E8)
  {
    valuePtr = 0;
    *values = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    Count = CFSetGetCount(qword_1000816E8);
    if (Count >= 65)
    {
      Typed = CFAllocatorAllocateTyped();
      CFSetGetValues(qword_1000816E8, Typed);
      goto LABEL_5;
    }

    Typed = values;
    CFSetGetValues(qword_1000816E8, values);
    if (Count >= 1)
    {
      while (1)
      {
LABEL_5:
        CFNumberGetValue(Typed[Count - 1], kCFNumberIntType, &valuePtr);
        v2 = sub_1000022F8(valuePtr);
        if (!v2)
        {
          sub_100067430();
        }

        v3 = *(v2 + 56);
        v4 = v3[12];
        if (v4 != 2)
        {
          goto LABEL_13;
        }

        if (v3[46])
        {
          break;
        }

LABEL_21:
        if (Count-- <= 1)
        {
          if (Typed != values)
          {
            CFAllocatorDeallocate(0, Typed);
          }

          goto LABEL_25;
        }
      }

      v5 = sub_100001D48();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v11 = v3[10];
        v12 = v3[46];
        *buf = 67109376;
        v18 = v11;
        v19 = 1024;
        v20 = v12;
        _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "-->port : %5u : port = %u", buf, 0xEu);
      }

      if (!v3[47])
      {
        do
        {
          v6 = random();
          v3[47] = v6;
        }

        while (!v6);
      }

      v7 = v3[46];
      _SC_sendMachMessage();
      v4 = v3[12];
LABEL_13:
      if (v4 == 3 && (v3[48] & 0x80000000) == 0)
      {
        v8 = sub_100001D48();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v13 = v3[10];
          v14 = v3[48];
          v15 = v3[49];
          *buf = 67109632;
          v18 = v13;
          v19 = 1024;
          v20 = v14;
          v21 = 1024;
          v22 = v15;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "-->fd   : %5u : fd = %d, msgid = %d", buf, 0x14u);
        }

        v9 = write(v3[48], v3 + 49, 4uLL);
        if (v9 != 4 && (v9 != -1 || *__error() != 35))
        {
          v3[48] = -1;
        }
      }

      goto LABEL_21;
    }

LABEL_25:
    CFRelease(qword_1000816E8);
    qword_1000816E8 = 0;
  }
}

uint64_t sub_100002094(int a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  *a6 = 0;
  if (a2 && a3 && !_SCUnserialize())
  {
    *a6 = 1001;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    goto LABEL_7;
  }

  if (a5 && !_SCUnserialize())
  {
    v11 = 1001;
LABEL_14:
    *a6 = v11;
    return 0;
  }

LABEL_7:
  if (!*a6)
  {
    v10 = sub_1000022F8(a1);
    if (v10)
    {
      v11 = sub_10000246C(*(v10 + 56), 0, 0);
    }

    else
    {
      v11 = 2001;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000021F0(uint64_t result, uint64_t a2)
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

  result = sub_100002094(*(result + 12), *(result + 28), v3, *(result + 44), v4, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_1000022F8(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (!a1)
  {
    sub_1000674C4();
  }

  if (qword_100081788 != -1)
  {
    sub_10000A360();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000023FC;
  block[3] = &unk_100079CC0;
  block[4] = &v6;
  v5 = a1;
  dispatch_sync(qword_100081790, block);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

const void *sub_1000023FC(uint64_t a1)
{
  result = CFDictionaryGetValue(qword_100081778, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_10000246C(uint64_t a1, const __CFArray *a2, const __CFArray *a3)
{
  v22 = 0;
  v6 = sub_100001D48();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 40);
    if (a2)
    {
      Count = CFArrayGetCount(a2);
      if (a3)
      {
        goto LABEL_17;
      }
    }

    else
    {
      Count = 0;
      if (a3)
      {
LABEL_17:
        v18 = CFArrayGetCount(a3);
LABEL_20:
        *buf = 67109632;
        v24 = v16;
        v25 = 2048;
        v26 = Count;
        v27 = 2048;
        v28 = v18;
        _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "watch   : %5u : %ld keys, %ld patterns", buf, 0x1Cu);
        goto LABEL_2;
      }
    }

    v18 = 0;
    goto LABEL_20;
  }

LABEL_2:
  HIDWORD(v22) = 0;
  v19 = a1;
  cf = 0;
  v21 = a2;
  LOBYTE(v22) = 0;
  v7 = *(a1 + 168);
  if (v7)
  {
    cf = CFArrayCreateCopy(0, v7);
    v8 = *(a1 + 168);
    v9 = CFGetAllocator(v8);
    Copy = CFArrayCreateCopy(v9, v8);
    v29.length = CFArrayGetCount(Copy);
    v29.location = 0;
    CFArrayApplyFunction(Copy, v29, sub_10000554C, &v19);
    CFRelease(Copy);
  }

  if (a2)
  {
    v30.length = CFArrayGetCount(a2);
    v30.location = 0;
    CFArrayApplyFunction(a2, v30, sub_1000028C4, &v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  v21 = a3;
  LOBYTE(v22) = 1;
  v11 = *(a1 + 176);
  if (v11)
  {
    cf = CFArrayCreateCopy(0, v11);
    v12 = *(a1 + 176);
    v13 = CFGetAllocator(v12);
    v14 = CFArrayCreateCopy(v13, v12);
    v31.length = CFArrayGetCount(v14);
    v31.location = 0;
    CFArrayApplyFunction(v14, v31, sub_10000554C, &v19);
    CFRelease(v14);
  }

  if (a3)
  {
    v32.length = CFArrayGetCount(a3);
    v32.location = 0;
    CFArrayApplyFunction(a3, v32, sub_1000028C4, &v19);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return HIDWORD(v22);
}

uint64_t sub_1000026BC()
{
  if (qword_100081758 != -1)
  {
    sub_10006745C();
  }

  return qword_100081760;
}

uint64_t sub_100002724(void *a1, __CFString *a2, int a3, int a4)
{
  v8 = sub_100001D48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16 = "*watch+";
    v17 = *(a1 + 10);
    if (!a4)
    {
      v16 = "watch+ ";
    }

    v19 = 136315906;
    v20 = v16;
    v21 = 1024;
    v22 = v17;
    if (a3)
    {
      v18 = "pattern";
    }

    else
    {
      v18 = "key";
    }

    v23 = 2080;
    v24 = v18;
    v25 = 2112;
    v26 = a2;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %5u : %s : %@", &v19, 0x26u);
  }

  v9 = CFNumberCreate(0, kCFNumberIntType, a1 + 5);
  if (a3)
  {
    v11 = a1[22];
    v10 = (a1 + 22);
    v12 = sub_100002BA0(v11, a2);
    if (!v12)
    {
      if (!sub_100023C40(a2, v9))
      {
        v13 = 1002;
        if (!v9)
        {
          return v13;
        }

        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = a1[21];
    v10 = (a1 + 21);
    v12 = sub_100002BA0(v14, a2);
    if (!v12)
    {
      sub_10000296C(v9, a2);
LABEL_12:
      sub_100002C24(v10, a2);
      v13 = 0;
      if (!v9)
      {
        return v13;
      }

      goto LABEL_9;
    }
  }

  v13 = v12;
  if (v9)
  {
LABEL_9:
    CFRelease(v9);
  }

  return v13;
}

uint64_t sub_1000028C4(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 28))
  {
    v3 = result;
    v4 = *(a2 + 8);
    if (!v4 || (v5.length = CFArrayGetCount(*(a2 + 8)), v5.location = 0, result = CFArrayContainsValue(v4, v5, v3), !result))
    {
      result = sub_100002724(*a2, v3, *(a2 + 24), 1);
      *(a2 + 28) = result;
    }
  }

  return result;
}

void sub_10000296C(const void *a1, const void *a2)
{
  Value = CFDictionaryGetValue(qword_1000816C0, a2);
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v6 = MutableCopy;
  v7 = CFDictionaryGetValue(MutableCopy, @"watchers");
  v8 = CFDictionaryGetValue(v6, @"watcherRefs");
  if (v7)
  {
    v9 = v8;
    Mutable = CFArrayCreateMutableCopy(0, 0, v7);
    v11 = CFArrayCreateMutableCopy(0, 0, v9);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v11 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  }

  v12 = v11;
  valuePtr = 0;
  v18.length = CFArrayGetCount(Mutable);
  v18.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(Mutable, v18, a1);
  if (FirstIndexOfValue == -1)
  {
    CFArrayAppendValue(Mutable, a1);
    valuePtr = 1;
    v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(v12, v16);
  }

  else
  {
    v14 = FirstIndexOfValue;
    ValueAtIndex = CFArrayGetValueAtIndex(v12, FirstIndexOfValue);
    CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
    ++valuePtr;
    v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFArraySetValueAtIndex(v12, v14, v16);
  }

  CFRelease(v16);
  CFDictionarySetValue(v6, @"watchers", Mutable);
  CFRelease(Mutable);
  CFDictionarySetValue(v6, @"watcherRefs", v12);
  CFRelease(v12);
  CFDictionarySetValue(qword_1000816C0, a2, v6);
  CFRelease(v6);
}

uint64_t sub_100002BA0(const __CFArray *a1, const void *a2)
{
  if (a1 && (v5.length = CFArrayGetCount(a1), v5.location = 0, CFArrayContainsValue(a1, v5, a2)))
  {
    return 1005;
  }

  else
  {
    return 0;
  }
}

void sub_100002C24(__CFArray **a1, void *value)
{
  Mutable = *a1;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *a1 = Mutable;
  }

  CFArrayAppendValue(Mutable, value);
}

uint64_t sub_100002CAC(int a1, mach_port_name_t a2, int a3, _DWORD *a4)
{
  v7 = sub_1000022F8(a1);
  if (v7)
  {
    v8 = *(v7 + 56);
    v9 = sub_100002E48(v8, a3, a2);
    *a4 = v9;
    if (!v9)
    {
      *(v8 + 48) = 2;
      *(v8 + 184) = a2;
      return 0;
    }
  }

  else
  {
    *a4 = 2001;
  }

  if (a2)
  {
    mach_port_deallocate(mach_task_self_, a2);
  }

  return 0;
}

uint64_t sub_100002D68(uint64_t result, uint64_t a2)
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

  result = sub_100002CAC(*(result + 12), *(result + 28), *(result + 48), (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t sub_100002E48(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48))
  {
    return 2003;
  }

  result = 1002;
  if (!a2 && a3)
  {
    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    if (*(sub_1000022F8(v6) + 32))
    {
      if (!qword_1000816E8)
      {
        qword_1000816E8 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
      }

      v7 = CFNumberCreate(0, kCFNumberIntType, v5);
      CFSetAddValue(qword_1000816E8, v7);
      CFRelease(v7);
    }

    return 0;
  }

  return result;
}

void sub_100002F1C(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {

    sub_100003274(object);
  }

  else
  {
    string = type;
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(object, _xpc_error_key_description);
      if (object == &_xpc_error_connection_invalid)
      {
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          _os_log_pack_size();
          v12 = *__error();
          v13 = _os_log_pack_fill();
          *v13 = 136315138;
          *(v13 + 4) = string;
          __SC_log_send();
        }

        xpc_release(*(a1 + 32));
      }

      else
      {
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        v9 = __SC_log_enabled();
        if (object == &_xpc_error_connection_interrupted)
        {
          if (v9)
          {
            _os_log_pack_size();
            v14 = *__error();
            v7 = _os_log_pack_fill();
            v8 = 136315138;
            goto LABEL_5;
          }
        }

        else if (v9)
        {
          _os_log_pack_size();
          v10 = *__error();
          v11 = _os_log_pack_fill();
          *v11 = 134218242;
          *(v11 + 4) = object;
          *(v11 + 12) = 2080;
          *(v11 + 14) = string;
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
        _os_log_pack_size();
        v6 = *__error();
        v7 = _os_log_pack_fill();
        v8 = 134217984;
LABEL_5:
        *v7 = v8;
        *(v7 + 4) = string;
        __SC_log_send();
      }
    }
  }
}

void sub_100003274(_xpc_connection_s *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    pid = xpc_connection_get_pid(a1);
    *v6 = 134218240;
    *(v6 + 4) = a1;
    *(v6 + 12) = 1024;
    *(v6 + 14) = pid;
    __SC_log_send();
  }

  sub_100003660(&qword_100081900, a1);
  if (qword_100081928 != -1)
  {
    sub_100067C58();
  }

  xpc_connection_set_target_queue(a1, qword_100081930);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100003734;
  handler[3] = &unk_10007A750;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

void sub_100003430(_xpc_connection_s *a1)
{
  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v2 = _os_log_pack_size();
    __chkstk_darwin(v2, v3, v4);
    v5 = *__error();
    v6 = _os_log_pack_fill();
    pid = xpc_connection_get_pid(a1);
    *v6 = 134218240;
    *(v6 + 4) = a1;
    *(v6 + 12) = 1024;
    *(v6 + 14) = pid;
    __SC_log_send();
  }

  sub_100003660(&qword_100081B28, a1);
  if (qword_100081B58 != -1)
  {
    sub_10006811C();
  }

  xpc_connection_set_target_queue(a1, qword_100081B60);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_100003B58;
  handler[3] = &unk_10007AF20;
  handler[4] = a1;
  xpc_connection_set_event_handler(a1, handler);
  xpc_connection_resume(a1);
}

os_log_t sub_1000035EC()
{
  result = qword_100081998;
  if (!qword_100081998)
  {
    result = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    qword_100081998 = result;
  }

  return result;
}

void sub_100003660(uint64_t a1, _xpc_connection_s *a2)
{
  v7 = a2;
  v4 = CFDataCreate(0, &v7, 8);
  Mutable = CFDataCreateMutable(0, 24);
  CFDataSetLength(Mutable, 24);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = xpc_connection_get_pid(a2);
  *(MutableBytePtr + 1) = 0;
  *(MutableBytePtr + 2) = 0;
  CFDictionarySetValue(*(a1 + 16), v4, Mutable);
  CFRelease(v4);
  CFRelease(Mutable);
}

void sub_100003734(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v11 = *(a1 + 32);

    sub_100003F7C(v11, object);
  }

  else
  {
    v5 = type;
    if (type != &_xpc_type_error)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      _os_log_pack_size();
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 32);
      pid = xpc_connection_get_pid(v8);
      *v7 = 134218496;
      *(v7 + 4) = v8;
      *(v7 + 12) = 1024;
      *(v7 + 14) = pid;
      v10 = 2048;
      goto LABEL_5;
    }

    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (object == &_xpc_error_connection_invalid)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = *(a1 + 32);
        v21 = xpc_connection_get_pid(v20);
        *v19 = 134218240;
        *(v19 + 4) = v20;
        *(v19 + 12) = 1024;
        *(v19 + 14) = v21;
        __SC_log_send();
      }

      if (sub_100004708(&qword_100081900, *(a1 + 32)))
      {
        sub_100057714(&qword_100081900);
        if (qword_100081920)
        {
          (*(qword_100081920 + 16))();
        }
      }
    }

    else
    {
      v5 = string;
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      v13 = __SC_log_enabled();
      if (object == &_xpc_error_connection_interrupted)
      {
        if (v13)
        {
          _os_log_pack_size();
          v22 = *__error();
          v7 = _os_log_pack_fill();
          v23 = *(a1 + 32);
          v24 = xpc_connection_get_pid(v23);
          *v7 = 134218498;
          *(v7 + 4) = v23;
          *(v7 + 12) = 1024;
          *(v7 + 14) = v24;
          v10 = 2080;
LABEL_5:
          *(v7 + 18) = v10;
          *(v7 + 20) = v5;
          __SC_log_send();
        }
      }

      else if (v13)
      {
        _os_log_pack_size();
        v14 = *__error();
        v15 = _os_log_pack_fill();
        v16 = *(a1 + 32);
        v17 = xpc_connection_get_pid(v16);
        *v15 = 134218754;
        *(v15 + 4) = v16;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v17;
        *(v15 + 18) = 2048;
        *(v15 + 20) = object;
        *(v15 + 28) = 2080;
        *(v15 + 30) = v5;
        __SC_log_send();
      }
    }
  }
}

void sub_100003B58(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_dictionary)
  {
    v11 = *(a1 + 32);

    sub_100004168(v11, object);
  }

  else
  {
    v5 = type;
    if (type != &_xpc_type_error)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (!__SC_log_enabled())
      {
        return;
      }

      _os_log_pack_size();
      v6 = *__error();
      v7 = _os_log_pack_fill();
      v8 = *(a1 + 32);
      pid = xpc_connection_get_pid(v8);
      *v7 = 134218496;
      *(v7 + 4) = v8;
      *(v7 + 12) = 1024;
      *(v7 + 14) = pid;
      v10 = 2048;
      goto LABEL_5;
    }

    string = xpc_dictionary_get_string(object, _xpc_error_key_description);
    if (object == &_xpc_error_connection_invalid)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        _os_log_pack_size();
        v18 = *__error();
        v19 = _os_log_pack_fill();
        v20 = *(a1 + 32);
        v21 = xpc_connection_get_pid(v20);
        *v19 = 134218240;
        *(v19 + 4) = v20;
        *(v19 + 12) = 1024;
        *(v19 + 14) = v21;
        __SC_log_send();
      }

      if (sub_100004708(&qword_100081B28, *(a1 + 32)))
      {
        sub_100057714(&qword_100081B28);
        if (qword_100081B48)
        {
          (*(qword_100081B48 + 16))();
        }
      }
    }

    else
    {
      v5 = string;
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      v13 = __SC_log_enabled();
      if (object == &_xpc_error_connection_interrupted)
      {
        if (v13)
        {
          _os_log_pack_size();
          v22 = *__error();
          v7 = _os_log_pack_fill();
          v23 = *(a1 + 32);
          v24 = xpc_connection_get_pid(v23);
          *v7 = 134218498;
          *(v7 + 4) = v23;
          *(v7 + 12) = 1024;
          *(v7 + 14) = v24;
          v10 = 2080;
LABEL_5:
          *(v7 + 18) = v10;
          *(v7 + 20) = v5;
          __SC_log_send();
        }
      }

      else if (v13)
      {
        _os_log_pack_size();
        v14 = *__error();
        v15 = _os_log_pack_fill();
        v16 = *(a1 + 32);
        v17 = xpc_connection_get_pid(v16);
        *v15 = 134218754;
        *(v15 + 4) = v16;
        *(v15 + 12) = 1024;
        *(v15 + 14) = v17;
        *(v15 + 18) = 2048;
        *(v15 + 20) = object;
        *(v15 + 28) = 2080;
        *(v15 + 30) = v5;
        __SC_log_send();
      }
    }
  }
}

void sub_100003F7C(_xpc_connection_s *a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "request_op");
  if (int64 == 65538)
  {

    sub_100038118(a1, xdict);
  }

  else
  {
    v5 = int64;
    if (int64 == 65537)
    {

      sub_1000043B0(a1, xdict);
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
        v10 = _os_log_pack_fill();
        *v10 = 134218240;
        *(v10 + 4) = a1;
        *(v10 + 12) = 2048;
        *(v10 + 14) = v5;
        __SC_log_send();
      }
    }
  }
}

void sub_100004168(_xpc_connection_s *a1, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "request_op");
  if (int64 == 131075)
  {

    sub_100047C6C(a1, xdict);
  }

  else
  {
    v5 = int64;
    if (int64 == 131074)
    {

      sub_100047AD8(a1, xdict);
    }

    else if (int64 == 131073)
    {

      sub_1000081D4(a1, xdict);
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
        v10 = _os_log_pack_fill();
        *v10 = 134218240;
        *(v10 + 4) = a1;
        *(v10 + 12) = 2048;
        *(v10 + 14) = v5;
        __SC_log_send();
      }
    }
  }
}

void sub_1000043B0(_xpc_connection_s *a1, xpc_object_t xdict)
{
  v24 = 0;
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v6 = reply;
    v7 = sub_100004658(&qword_100081900, a1, &v24);
    string = xpc_dictionary_get_string(xdict, "proc_name");
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      if (string)
      {
        v9 = string;
      }

      else
      {
        v9 = "???";
      }

      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      pid = xpc_connection_get_pid(a1);
      v16 = v24;
      *v14 = 134218754;
      *(v14 + 4) = a1;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v9;
      *(v14 + 22) = 1024;
      *(v14 + 24) = pid;
      *(v14 + 28) = 2048;
      *(v14 + 30) = v16;
      __SC_log_send();
    }

    if (v7)
    {
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v7);
      xpc_dictionary_set_data(v6, "configuration", BytePtr, Length);
    }

    xpc_connection_send_message(remote_connection, v6);
    xpc_release(v6);
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 134217984;
      *(v23 + 4) = a1;
      __SC_log_send();
    }
  }
}

uint64_t sub_100004658(uint64_t *a1, uint64_t a2, void *a3)
{
  v11 = a2;
  v5 = CFDataCreate(0, &v11, 8);
  Value = CFDictionaryGetValue(a1[2], v5);
  CFRelease(v5);
  MutableBytePtr = CFDataGetMutableBytePtr(Value);
  result = *a1;
  v9 = a1[1];
  *(MutableBytePtr + 1) = v9;
  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  *a3 = v10;
  return result;
}

uint64_t sub_100004708(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = CFDataCreate(0, &v8, 8);
  Value = CFDictionaryGetValue(*(a1 + 16), v3);
  if (Value && (v5 = *(CFDataGetMutableBytePtr(Value) + 2)) != 0)
  {
    if (v5 == *(a1 + 8))
    {
      v6 = 0;
      --*(a1 + 28);
    }

    else
    {
      --*(a1 + 24);
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  CFDictionaryRemoveValue(*(a1 + 16), v3);
  CFRelease(v3);
  return v6;
}

uint64_t sub_1000047E8(int a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, int *a7)
{
  v20 = 0;
  cf = 0;
  v19 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  if (_SCUnserializeString())
  {
    TypeID = CFStringGetTypeID();
    if (cf && CFGetTypeID(cf) == TypeID)
    {
      v11 = sub_1000022F8(a1);
      if (v11)
      {
        v12 = v11;
        v13 = sub_100004A70(v11, cf, 0);
        v14 = v13;
        if (v13 == 10100 || !v13)
        {
          v15 = sub_100004F2C(*(v12 + 56), cf, 0, &v19, 0);
          *a7 = v15;
          if (v15)
          {
            goto LABEL_14;
          }

          v16 = _SCSerializeData();
          v17 = v19;
          *a5 = v20;
          CFRelease(v17);
          if (!v16)
          {
            v14 = 1001;
          }
        }
      }

      else
      {
        v14 = 2001;
      }
    }

    else
    {
      v14 = 1002;
    }
  }

  else
  {
    v14 = 1001;
  }

  *a7 = v14;
LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t sub_100004950(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 1 || *(result + 4) != 56)
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
  result = sub_1000047E8(*(result + 12), *(result + 28), *(result + 40), (a2 + 28), (a2 + 52), (a2 + 56), (a2 + 60));
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
  *(a2 + 4) = 64;
  *(a2 + 24) = 1;
  return result;
}

uint64_t sub_100004A70(uint64_t a1, void *a2, const __CFDictionary *a3)
{
  v6 = *(a1 + 84);
  *atoken.val = *(a1 + 68);
  *&atoken.val[4] = v6;
  v7 = audit_token_to_pid(&atoken);
  if (v7 == getpid())
  {
    return 0;
  }

  if (a3 || (result = sub_100004E5C(a2), (a3 = result) != 0))
  {
    Value = CFDictionaryGetValue(a3, @"read-deny");
    if (Value && sub_10000508C(a1, Value))
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        goto LABEL_14;
      }

      return 1003;
    }

    v10 = CFDictionaryContainsKey(a3, @"read-deny-background");
    if (&_ba_is_process_extension && v10)
    {
      v11 = *(a1 + 112);
      if (v11)
      {
        if (CFBooleanGetValue(v11))
        {
          goto LABEL_13;
        }
      }

      else
      {
        is_process_extension = ba_is_process_extension();
        v18 = &kCFBooleanTrue;
        if (!is_process_extension)
        {
          v18 = &kCFBooleanFalse;
        }

        *(a1 + 112) = *v18;
        if (is_process_extension)
        {
LABEL_13:
          sub_100001D48();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
LABEL_14:
            v12 = _os_log_pack_size();
            __chkstk_darwin(v12, v13, v14);
            v15 = *__error();
            v16 = _os_log_pack_fill();
            *v16 = 136315650;
            *(v16 + 4) = "checkReadAccess";
            *(v16 + 12) = 2112;
            *(v16 + 14) = a2;
            *(v16 + 22) = 2112;
            *(v16 + 24) = a1;
            __SC_log_send();
            return 1003;
          }

          return 1003;
        }
      }
    }

    result = CFDictionaryGetValue(a3, @"read-allow");
    if (result)
    {
      if (sub_10000508C(a1, result))
      {
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v19 = _os_log_pack_size();
          __chkstk_darwin(v19, v20, v21);
          v22 = *__error();
          v23 = _os_log_pack_fill();
          *v23 = 136315650;
          *(v23 + 4) = "checkReadAccess";
          *(v23 + 12) = 2112;
          *(v23 + 14) = a2;
          *(v23 + 22) = 2112;
          *(v23 + 24) = a1;
          __SC_log_send();
          return 0;
        }
      }

      else
      {
        if (CFDictionaryContainsKey(a3, @"read-allow-system") && sub_10001EF04(a1))
        {
          return 0;
        }

        v24 = sub_100022F34(a1, @"com.apple.SystemConfiguration.SCDynamicStore-read-no-fault");
        if (CFDictionaryContainsKey(a3, @"read-allow-platform") && sub_100022FE8(a1))
        {
          if (v24)
          {
            return 0;
          }

          else
          {
            return 10100;
          }
        }

        else if (v24)
        {
          return 1003;
        }

        else
        {
          return 10003;
        }
      }
    }
  }

  return result;
}

void *sub_100004E5C(void *key)
{
  value = 0;
  v7 = 0;
  if (CFDictionaryGetValueIfPresent(qword_1000816C0, key, &value) && (v1 = value, TypeID = CFDictionaryGetTypeID(), v1) && CFGetTypeID(v1) == TypeID && CFDictionaryGetValueIfPresent(value, @"access-controls", &v7) && (v3 = v7, v4 = CFDictionaryGetTypeID(), v3) && CFGetTypeID(v3) == v4)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004F2C(uint64_t a1, void *key, void *a3, const void **a4, int a5)
{
  if (!a3)
  {
    v10 = sub_100001D48();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = "*copy  ";
      v16 = *(a1 + 40);
      v17 = 136315650;
      if (!a5)
      {
        v15 = "copy   ";
      }

      v18 = v15;
      v19 = 1024;
      v20 = v16;
      v21 = 2112;
      v22 = key;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s : %5u : %@", &v17, 0x1Cu);
    }
  }

  Value = CFDictionaryGetValue(qword_1000816C0, key);
  if (!Value)
  {
    return 1004;
  }

  v12 = Value;
  if (!CFDictionaryGetValueIfPresent(Value, @"data", a4))
  {
    return 1004;
  }

  CFRetain(*a4);
  if (!a3)
  {
    return 0;
  }

  v13 = CFDictionaryGetValue(v12, @"access-controls");
  result = 0;
  *a3 = v13;
  return result;
}

BOOL sub_10000508C(uint64_t a1, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (sub_100005164(a1, ValueAtIndex))
  {
    return 1;
  }

  v8 = 1;
  do
  {
    v9 = v8;
    if (v5 == v8)
    {
      break;
    }

    v10 = CFArrayGetValueAtIndex(theArray, v8);
    v11 = sub_100005164(a1, v10);
    v8 = v9 + 1;
  }

  while (!v11);
  return v9 < v5;
}

const __CFNull *sub_100005164(uint64_t a1, const __CFString *key)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      if (Value == kCFNull)
      {
        return 0;
      }

      else
      {
        return Value;
      }
    }
  }

  v7 = *(a1 + 84);
  *token.val = *(a1 + 68);
  *&token.val[4] = v7;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (v8)
  {
    v9 = v8;
    *token.val = 0;
    v6 = SecTaskCopyValueForEntitlement(v8, key, &token);
    if (!v6 && *token.val)
    {
      Code = CFErrorGetCode(*token.val);
      Domain = CFErrorGetDomain(*token.val);
      if (!CFEqual(Domain, kCFErrorDomainMach) || Code != -536870911 && Code != -536870160)
      {
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          _os_log_pack_size();
          __chkstk_darwin();
          v12 = *__error();
          v13 = _os_log_pack_fill();
          v14 = *token.val;
          v15 = *(a1 + 40);
          *v13 = 138412802;
          *(v13 + 4) = key;
          *(v13 + 12) = 2112;
          *(v13 + 14) = v14;
          *(v13 + 22) = 2112;
          *(v13 + 24) = v15;
          __SC_log_send();
        }
      }

      CFRelease(*token.val);
    }

    Mutable = *(a1 + 104);
    if (Mutable)
    {
      if (v6)
      {
LABEL_17:
        CFDictionarySetValue(Mutable, key, v6);
        CFRelease(v6);
LABEL_23:
        CFRelease(v9);
        return v6;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      *(a1 + 104) = Mutable;
      if (v6)
      {
        goto LABEL_17;
      }
    }

    CFDictionarySetValue(Mutable, key, kCFNull);
    goto LABEL_23;
  }

  sub_100001D48();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    _os_log_pack_size();
    __chkstk_darwin();
    v17 = *__error();
    v18 = _os_log_pack_fill();
    v19 = *(a1 + 40);
    *v18 = 138412290;
    *(v18 + 4) = v19;
    __SC_log_send();
  }

  return 0;
}

__CFString *sub_100005474(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<serverSession %p [%p]> {", a1, v2);
  CFStringAppendFormat(Mutable, 0, @"port = 0x%x (%u)", *(a1 + 16), *(a1 + 16));
  if (*(a1 + 40))
  {
    CFStringAppendFormat(Mutable, 0, @", name = %@", *(a1 + 40));
  }

  CFStringAppendFormat(Mutable, 0, @"}");
  return Mutable;
}

uint64_t sub_10000554C(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 28))
  {
    v3 = result;
    v4 = *(a2 + 16);
    if (!v4 || (v5.length = CFArrayGetCount(*(a2 + 16)), v5.location = 0, result = CFArrayContainsValue(v4, v5, v3), !result))
    {
      result = sub_1000055F4(*a2, v3, *(a2 + 24), 1);
      *(a2 + 28) = result;
    }
  }

  return result;
}

uint64_t sub_1000055F4(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = sub_100001D48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = "*watch-";
    v12 = *(a1 + 40);
    if (!a4)
    {
      v11 = "watch- ";
    }

    v14 = 136315906;
    v15 = v11;
    v16 = 1024;
    v17 = v12;
    if (a3)
    {
      v13 = "pattern";
    }

    else
    {
      v13 = "key";
    }

    v18 = 2080;
    v19 = v13;
    v20 = 2112;
    v21 = a2;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s : %5u : %s : %@", &v14, 0x26u);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else if (a3)
  {
LABEL_3:
    result = sub_100005778(*(a1 + 176), a2);
    if (result)
    {
      return result;
    }

    v10 = CFNumberCreate(0, kCFNumberIntType, (a1 + 40));
    sub_100023D54(a2, v10);
    goto LABEL_13;
  }

  result = sub_100005778(*(a1 + 168), a2);
  if (result)
  {
    return result;
  }

  v10 = CFNumberCreate(0, kCFNumberIntType, (a1 + 40));
  sub_10000580C(v10, a2);
LABEL_13:
  CFRelease(v10);
  return 0;
}

uint64_t sub_100005778(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return 1004;
  }

  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if (FirstIndexOfValue == -1)
  {
    return 1004;
  }

  CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  return 0;
}

void sub_10000580C(const void *a1, const void *a2)
{
  Value = CFDictionaryGetValue(qword_1000816C0, a2);
  if (Value)
  {
    v5 = Value;
    if (CFDictionaryContainsKey(Value, @"watchers"))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v5);
      v7 = CFDictionaryGetValue(MutableCopy, @"watchers");
      v8 = CFArrayCreateMutableCopy(0, 0, v7);
      v9 = CFDictionaryGetValue(MutableCopy, @"watcherRefs");
      v10 = CFArrayCreateMutableCopy(0, 0, v9);
      v18.length = CFArrayGetCount(v8);
      v18.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v8, v18, a1);
      if (FirstIndexOfValue == -1)
      {
        CFRelease(MutableCopy);
        CFRelease(v8);

        CFRelease(v10);
      }

      else
      {
        v12 = FirstIndexOfValue;
        valuePtr = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v10, FirstIndexOfValue);
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        v14 = valuePtr--;
        if (v14 < 2)
        {
          CFArrayRemoveValueAtIndex(v8, v12);
          CFArrayRemoveValueAtIndex(v10, v12);
        }

        else
        {
          v15 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFArraySetValueAtIndex(v10, v12, v15);
          CFRelease(v15);
        }

        if (CFArrayGetCount(v8) < 1)
        {
          CFDictionaryRemoveValue(MutableCopy, @"watchers");
          CFDictionaryRemoveValue(MutableCopy, @"watcherRefs");
        }

        else
        {
          CFDictionarySetValue(MutableCopy, @"watchers", v8);
          CFDictionarySetValue(MutableCopy, @"watcherRefs", v10);
        }

        CFRelease(v8);
        CFRelease(v10);
        if (CFDictionaryGetCount(MutableCopy) < 1)
        {
          CFDictionaryRemoveValue(qword_1000816C0, a2);
        }

        else
        {
          CFDictionarySetValue(qword_1000816C0, a2, MutableCopy);
        }

        CFRelease(MutableCopy);
      }
    }
  }
}

uint64_t sub_100005A88(int a1, void *a2, _DWORD *a3, int *a4)
{
  v7 = sub_1000022F8(a1);
  *a2 = 0;
  *a3 = 0;
  if (!v7)
  {
    v10 = 2001;
    goto LABEL_5;
  }

  v12 = 0;
  v13 = 0;
  sub_100005C34(*(v7 + 56), &v12);
  *a4 = 0;
  v8 = v12;
  v9 = _SCSerialize();
  *a3 = v13;
  CFRelease(v8);
  if (!v9)
  {
    v10 = 1001;
LABEL_5:
    *a4 = v10;
  }

  return 0;
}

_DWORD *sub_100005B54(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 36) = 16777473;
  result = sub_100005A88(result[3], (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_6:
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

uint64_t sub_100005C34(uint64_t a1, CFArrayRef *a2)
{
  v3 = sub_1000022F8(*(a1 + 40));
  v4 = *(v3 + 32);
  if (v4)
  {
    *a2 = v4;
    *(v3 + 32) = 0;
  }

  else
  {
    *a2 = CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
  }

  return 0;
}

void sub_100005CC4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    dispatch_mach_cancel();
    dispatch_release(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

const __CFBoolean *sub_100005D30(char *cStr)
{
  v2 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  if (qword_1000817E8 && (Value = CFDictionaryGetValue(qword_1000817E8, v2)) != 0)
  {
    v4 = Value;
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v5 = _os_log_pack_size();
      __chkstk_darwin(v5, v6, v7);
      v8 = *__error();
      v9 = _os_log_pack_fill();
      *v9 = 136315650;
      *(v9 + 4) = "interface_update_expensive";
      *(v9 + 12) = 2080;
      *(v9 + 14) = cStr;
      *(v9 + 22) = 2112;
      *(v9 + 24) = v4;
      __SC_log_send();
    }

    CFRetain(v4);
    v10 = 1;
  }

  else
  {
    v11 = _SCNetworkInterfaceCreateWithBSDName();
    if (!v11)
    {
      v22 = 0;
      goto LABEL_31;
    }

    v4 = v11;
    v10 = 0;
  }

  BSDName = SCNetworkInterfaceGetBSDName(v4);
  InterfaceType = SCNetworkInterfaceGetInterfaceType(v4);
  if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
  {
    v14 = BSDName == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = CFStringHasPrefix(BSDName, @"en") ? v10 : 1;
    if ((v15 & 1) == 0)
    {
      Mutable = qword_1000817E8;
      if (!qword_1000817E8)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        qword_1000817E8 = Mutable;
      }

      CFDictionarySetValue(Mutable, v2, v4);
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        __chkstk_darwin(v17, v18, v19);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        *v21 = 136315650;
        *(v21 + 4) = "interface_update_expensive";
        *(v21 + 12) = 2080;
        *(v21 + 14) = cStr;
        *(v21 + 22) = 2112;
        *(v21 + 24) = v4;
        __SC_log_send();
      }
    }
  }

  v22 = sub_1000060C8(v4);
  if (_os_feature_enabled_impl())
  {
    v23 = SCNetworkInterfaceSupportsLowDataMode() != 0;
  }

  else
  {
    v23 = 0;
  }

  CFRelease(v4);
  if (v22)
  {
    v24 = sub_10000A6F0(2);
    if (v24 != -1)
    {
      v25 = v24;
      v26 = CFBooleanGetValue(v22);
      if (!v26)
      {
        v23 = 0;
      }

      v27 = sub_1000290F4(v25, cStr, v26 != 0);
      close(v25);
      if (v23 && !v27)
      {
        sub_10002934C(v2);
      }
    }
  }

LABEL_31:
  CFRelease(v2);
  return v22;
}

CFBooleanRef sub_1000060C8(const __SCNetworkInterface *Interface)
{
  do
  {
    v1 = Interface;
    Interface = SCNetworkInterfaceGetInterface(Interface);
  }

  while (Interface);
  if (_SCNetworkInterfaceIsTetheredHotspot() || _SCNetworkInterfaceIsBluetoothPAN())
  {
    return kCFBooleanTrue;
  }

  BSDName = SCNetworkInterfaceGetBSDName(v1);
  InterfaceType = SCNetworkInterfaceGetInterfaceType(v1);
  if (CFEqual(InterfaceType, kSCNetworkInterfaceTypeIEEE80211))
  {
    v6 = BSDName == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || !CFStringHasPrefix(BSDName, @"en"))
  {
    v21 = SCNetworkInterfaceGetInterfaceType(v1);
    if (CFEqual(v21, kSCNetworkInterfaceTypeWWAN))
    {
      return kCFBooleanTrue;
    }

    else
    {
      return 0;
    }
  }

  v2 = kCFBooleanFalse;
  v7 = CFStringCreateWithFormat(0, 0, @"%@%@/%@/%@/%@/%@", &stru_10007C038, kSCDynamicStoreDomainSetup, kSCCompNetwork, @"Override", @"InterfaceType", kSCNetworkInterfaceTypeIEEE80211);
  v8 = SCDynamicStoreCopyValue(0, v7);
  CFRelease(v7);
  TypeID = CFDictionaryGetTypeID();
  if (!v8)
  {
    goto LABEL_17;
  }

  if (CFGetTypeID(v8) != TypeID)
  {
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v8, @"Expiration");
  v11 = CFDateGetTypeID();
  if (!Value || CFGetTypeID(Value) != v11 || (Current = CFAbsoluteTimeGetCurrent(), v13 = CFDateCreate(0, Current), v14 = CFDateCompare(v13, Value, 0), CFRelease(v13), v14 != kCFCompareLessThan) || (v22 = CFDictionaryGetValue(v8, @"Cost"), v23 = CFStringGetTypeID(), !v22) || CFGetTypeID(v22) != v23)
  {
LABEL_16:
    CFRelease(v8);
    goto LABEL_17;
  }

  v24 = CFEqual(v22, @"Expensive");
  if (!v24)
  {
    v25 = CFEqual(v22, @"Inexpensive");
    CFRelease(v8);
    if (v25)
    {
      goto LABEL_28;
    }

LABEL_17:
    if (!sub_10005BAA0())
    {
      return v2;
    }

    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v15 = _os_log_pack_size();
      __chkstk_darwin(v15, v16, v17);
      v18 = *__error();
      v19 = _os_log_pack_fill();
      v20 = SCNetworkInterfaceGetBSDName(v1);
      *v19 = 138412290;
      *(v19 + 4) = v20;
      __SC_log_send();
    }

    return kCFBooleanTrue;
  }

  CFRelease(v8);
LABEL_28:
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v26 = _os_log_pack_size();
    __chkstk_darwin(v26, v27, v28);
    v29 = *__error();
    v30 = _os_log_pack_fill();
    v31 = SCNetworkInterfaceGetBSDName(v1);
    v32 = "";
    if (!v24)
    {
      v32 = "in";
    }

    *v30 = 138412546;
    *(v30 + 4) = v31;
    *(v30 + 12) = 2080;
    *(v30 + 14) = v32;
    __SC_log_send();
  }

  if (v24)
  {
    return kCFBooleanTrue;
  }

  return v2;
}

void sub_10000650C(uint64_t a1, CFStringRef ifname, const void *a3, int a4, const void *a5, int a6)
{
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, ifname, kSCEntNetLink);
  v12 = SCDynamicStoreCopyValue(qword_100081700, NetworkInterfaceEntity);
  if (v12)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v12) != TypeID)
    {
      CFRelease(v12);
      v12 = 0;
    }
  }

  v14 = sub_100006990(v12);
  v15 = v14;
  if (!a3)
  {
    CFDictionaryRemoveValue(v14, kSCPropNetLinkActive);
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  CFDictionarySetValue(v14, kSCPropNetLinkActive, a3);
  if (a4)
  {
LABEL_6:
    CFDictionaryRemoveValue(v15, kSCPropNetLinkDetaching);
  }

LABEL_7:
  if (a5 && CFBooleanGetValue(a5))
  {
    CFDictionarySetValue(v15, kSCPropNetLinkExpensive, a5);
  }

  else
  {
    CFDictionaryRemoveValue(v15, kSCPropNetLinkExpensive);
  }

  if (CFDictionaryGetCount(v15) < 1)
  {
    if (!a6 || v12)
    {
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v21 = _os_log_pack_size();
        __chkstk_darwin(v21, v22, v23);
        v24 = *__error();
        v25 = _os_log_pack_fill();
        *v25 = 136315138;
        *(v25 + 4) = a1;
        __SC_log_send();
      }

      SCDynamicStoreRemoveValue(qword_100081700, NetworkInterfaceEntity);
    }
  }

  else if (!a6 || !v12 || !CFEqual(v12, v15))
  {
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = 136315394;
      *(v20 + 4) = a1;
      *(v20 + 12) = 2112;
      *(v20 + 14) = v15;
      __SC_log_send();
    }

    SCDynamicStoreSetValue(qword_100081700, NetworkInterfaceEntity, v15);
  }

  CFRelease(NetworkInterfaceEntity);
  CFRelease(v15);
  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t sub_100006850(char *a1, const __CFString *a2, int a3, int a4)
{
  result = sub_10000A6F0(2);
  if (result != -1)
  {
    v9 = result;
    memset(v13, 0, 44);
    __strlcpy_chk();
    v10 = 0;
    if (ioctl(v9, 0xC02C6948uLL, v13) != -1 && LODWORD(v13[2]))
    {
      if (BYTE8(v13[1]))
      {
        if ((BYTE8(v13[1]) & 2) != 0)
        {
          v11 = &kCFBooleanTrue;
        }

        else
        {
          v11 = &kCFBooleanFalse;
        }

        v10 = *v11;
        if (*v11 && !CFBooleanGetValue(*v11))
        {
          v12 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    v12 = sub_100005D30(a1);
LABEL_12:
    sub_10000650C(a1, a2, v10, a3, v12, a4);
    return close(v9);
  }

  return result;
}

CFMutableDictionaryRef sub_100006990(const __CFDictionary *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {

    return CFDictionaryCreateMutableCopy(0, 0, a1);
  }

  else
  {

    return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

uint64_t sub_100006A6C(int a1)
{
  memset(v22, 0, 512);
  v1 = recv(a1, v22, 0x400uLL, 0);
  if (v1 == -1)
  {
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    result = __SC_log_enabled();
    if (result)
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      v16 = __error();
      v17 = strerror(*v16);
      *v15 = 136315138;
      *(v15 + 4) = v17;
      __SC_log_send();
      return 0;
    }
  }

  else
  {
    v2 = v1;
    if ((byte_1000817D8 & 1) == 0)
    {
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
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

      byte_1000817D8 = 1;
    }

    _SCDynamicStoreCacheOpen();
    if (v2 >= 1)
    {
      v7 = 0;
      v8 = v22;
      while (1)
      {
        v9 = v7 + *(v22 + v7);
        if (v9 > v2)
        {
          break;
        }

        if (*(v8 + 1) == 1 && *(v8 + 2) == 1)
        {
          sub_100008ECC(v8);
          v9 = v7 + *(v22 + v7);
        }

        v8 = v22 + v9;
        v7 = v9;
        if (v9 >= v2)
        {
          goto LABEL_24;
        }
      }

      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        __chkstk_darwin(v18, v19, v20);
        v21 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }

LABEL_24:
    _SCDynamicStoreCacheCommitChanges();
    _SCDynamicStoreCacheClose();
    sub_100008C3C();
    result = 1;
    if (qword_1000817C8)
    {
      if (byte_1000817D0)
      {
        SCDynamicStoreSetValue(0, @"Plugin:KernelEventMonitor", qword_1000817C8);
        byte_1000817D0 = 0;
        return 1;
      }
    }
  }

  return result;
}

void sub_100006E68(char *cStr, int a2, int a3)
{
  v6 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  sub_100006850(cStr, v6, a2, a3);

  CFRelease(v6);
}

os_log_t sub_100006F0C()
{
  result = qword_1000817B0;
  if (!qword_1000817B0)
  {
    result = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    qword_1000817B0 = result;
  }

  return result;
}

void sub_100006F80(uint64_t a1, xpc_object_t object)
{
  type = xpc_get_type(object);
  if (type == &_xpc_type_connection)
  {

    sub_100003430(object);
  }

  else
  {
    string = type;
    if (type == &_xpc_type_error)
    {
      string = xpc_dictionary_get_string(object, _xpc_error_key_description);
      if (object == &_xpc_error_connection_invalid)
      {
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          _os_log_pack_size();
          v12 = *__error();
          v13 = _os_log_pack_fill();
          *v13 = 136315138;
          *(v13 + 4) = string;
          __SC_log_send();
        }

        xpc_release(*(a1 + 32));
      }

      else
      {
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        v9 = __SC_log_enabled();
        if (object == &_xpc_error_connection_interrupted)
        {
          if (v9)
          {
            _os_log_pack_size();
            v14 = *__error();
            v7 = _os_log_pack_fill();
            v8 = 136315138;
            goto LABEL_5;
          }
        }

        else if (v9)
        {
          _os_log_pack_size();
          v10 = *__error();
          v11 = _os_log_pack_fill();
          *v11 = 134218242;
          *(v11 + 4) = object;
          *(v11 + 12) = 2080;
          *(v11 + 14) = string;
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
        _os_log_pack_size();
        v6 = *__error();
        v7 = _os_log_pack_fill();
        v8 = 134217984;
LABEL_5:
        *v7 = v8;
        *(v7 + 4) = string;
        __SC_log_send();
      }
    }
  }
}

uint64_t sub_1000072D8(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 3 || *(result + 4) != 96)
  {
    v6 = -304;
LABEL_13:
    *(a2 + 32) = v6;
    *(a2 + 24) = NDR_record;
    return result;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 71) != 1 || (v3 = *(result + 40), v3 != *(result + 84)) || (v4 = *(result + 56), v4 != *(result + 88)) || (v5 = *(result + 72), v5 != *(result + 92)))
  {
    v6 = -300;
    goto LABEL_13;
  }

  result = sub_100007528(*(result + 12), *(result + 28), v3, *(result + 44), v4, *(result + 60), v5, (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

void sub_100007400(mach_port_context_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_100001D48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000675C0(v2, v3);
  }

  sub_10000787C((a1 + 56));
  mach_port_destruct(mach_task_self_, v2, 0, a1);
  v4 = *(a1 + 104);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 104) = 0;
  }

  if (qword_100081788 != -1)
  {
    sub_10000A360();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100007E28;
  v5[3] = &unk_100079D08;
  v6 = v2;
  dispatch_sync(qword_100081790, v5);
}

uint64_t sub_100007528(int a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int *a8)
{
  *a8 = 0;
  if (a2 && a3 && !_SCUnserialize())
  {
    *a8 = 1001;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    goto LABEL_7;
  }

  if (a5 && !_SCUnserialize())
  {
    *a8 = 1001;
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_7:
  if (!a6)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (a7 && !_SCUnserialize())
  {
    v15 = 1001;
    goto LABEL_18;
  }

LABEL_10:
  if (!*a8)
  {
    v14 = sub_1000022F8(a1);
    if (v14)
    {
      sub_100007E90(*(v14 + 56), 0, 0, 0);
      *a8 = 0;
      return 0;
    }

    v15 = 2001;
LABEL_18:
    *a8 = v15;
  }

  return 0;
}

uint64_t sub_10000787C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_100001D48();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000676F4(v2, v3);
  }

  sub_100007C28(*a1, 0);
  sub_100007C28(*a1, 1);
  sub_100007D40(*a1);
  v4 = sub_1000022F8(*(v2 + 40));
  v5 = *(v4 + 48);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    v7 = CFStringCreateWithFormat(0, 0, @"%u", *(v2 + 40));
    v8 = v7;
    if (Count < 1)
    {
      CFRelease(v7);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v4 + 48), v9);
        Value = CFDictionaryGetValue(qword_1000816C0, ValueAtIndex);
        if (Value)
        {
          v13 = CFDictionaryGetValue(Value, @"session");
          if (v13)
          {
            if (CFEqual(v8, v13))
            {
              v10 = 1;
              sub_10000D56C(*a1, ValueAtIndex, 1);
            }
          }
        }

        ++v9;
      }

      while (Count != v9);
      CFRelease(v8);
      if (v10)
      {
        sub_10000880C();
      }
    }
  }

  *(v2 + 40) = 0;
  CFRelease(*a1);
  *a1 = 0;
  return 0;
}

uint64_t sub_100007A20(uint64_t a1, __CFString *key)
{
  v4 = sub_100004E5C(key);
  if (v4 && CFDictionaryContainsKey(v4, @"write-protect"))
  {
    if (!sub_1000231FC(a1, key))
    {
      if (sub_100022F34(a1, @"com.apple.SystemConfiguration.SCDynamicStore-write-no-fault"))
      {
        return 1003;
      }

      else
      {
        return 10002;
      }
    }

    return 0;
  }

  v6 = *(a1 + 84);
  *atoken.val = *(a1 + 68);
  *&atoken.val[4] = v6;
  v7 = audit_token_to_pid(&atoken);
  if (v7 == getpid())
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    if (sub_100022F34(a1, @"com.apple.SystemConfiguration.SCDynamicStore-write-access"))
    {
      return 0;
    }

    if (sub_1000231FC(a1, key))
    {
      return 0;
    }

    else
    {
      return 1003;
    }
  }

  else
  {
    result = CFStringHasPrefix(key, kSCDynamicStoreDomainSetup);
    if (result)
    {
      sub_100001D48();
      _SC_syslog_os_log_mapping();
      result = __SC_log_enabled();
      if (result)
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        v12 = _os_log_pack_fill();
        v13 = *(a1 + 84);
        *atoken.val = *(a1 + 68);
        *&atoken.val[4] = v13;
        v14 = audit_token_to_pid(&atoken);
        *v12 = 67109378;
        *(v12 + 4) = v14;
        *(v12 + 8) = 2112;
        *(v12 + 10) = key;
        __SC_log_send();
        return 0;
      }
    }
  }

  return result;
}

void sub_100007C28(uint64_t a1, int a2)
{
  v2 = 176;
  if (!a2)
  {
    v2 = 168;
  }

  v3 = *(a1 + v2);
  if (v3)
  {
    Count = CFArrayGetCount(*(a1 + v2));
    if (Count >= 1)
    {
      v7 = Count;
      Copy = CFArrayCreateCopy(0, v3);
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Copy, i);
        sub_1000055F4(a1, ValueAtIndex, a2, 1);
      }

      CFRelease(Copy);
    }
  }
}

uint64_t sub_100007D40(_DWORD *a1)
{
  v2 = a1[46];
  if (v2)
  {
    mach_port_deallocate(mach_task_self_, v2);
    a1[46] = 0;
  }

  v3 = a1[48];
  if (v3 != -1)
  {
    close(v3);
    a1[48] = -1;
  }

  if (qword_1000816E8)
  {
    v4 = CFNumberCreate(0, kCFNumberIntType, a1 + 10);
    CFSetRemoveValue(qword_1000816E8, v4);
    CFRelease(v4);
    if (!CFSetGetCount(qword_1000816E8))
    {
      CFRelease(qword_1000816E8);
      qword_1000816E8 = 0;
    }
  }

  a1[12] = 0;
  return 0;
}

void sub_100007E28(uint64_t a1)
{
  v2 = qword_100081778;
  v3 = *(a1 + 32);

  CFDictionaryRemoveValue(v2, v3);
}

uint64_t sub_100007E90(_DWORD *a1, const __CFDictionary *a2, const __CFArray *a3, const __CFArray *a4)
{
  v8 = sub_100001D48();
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = a1[10];
  if (!a2)
  {
    Count = 0;
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if (a4)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  Count = CFDictionaryGetCount(a2);
  if (!a3)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = CFArrayGetCount(a3);
  if (a4)
  {
LABEL_12:
    v13 = CFArrayGetCount(a4);
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14[0] = 67109888;
  v14[1] = v10;
  v15 = 2048;
  v16 = Count;
  v17 = 2048;
  v18 = v12;
  v19 = 2048;
  v20 = v13;
  _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "set m   : %5u : %ld set, %ld remove, %ld notify", v14, 0x26u);
  if (a2)
  {
LABEL_3:
    CFDictionaryApplyFunction(a2, sub_100008040, a1);
  }

LABEL_4:
  if (a3)
  {
    v21.length = CFArrayGetCount(a3);
    v21.location = 0;
    CFArrayApplyFunction(a3, v21, sub_10000D4A8, a1);
  }

  if (a4)
  {
    v22.length = CFArrayGetCount(a4);
    v22.location = 0;
    CFArrayApplyFunction(a4, v22, sub_1000245CC, a1);
  }

  sub_10000880C();
  return 0;
}

CFTypeID sub_100008040(void *a1, const void *a2, uint64_t a3)
{
  result = CFStringGetTypeID();
  if (a1)
  {
    v7 = result;
    result = CFGetTypeID(a1);
    if (result == v7)
    {
      result = CFDataGetTypeID();
      if (a2)
      {
        v8 = result;
        result = CFGetTypeID(a2);
        if (result == v8)
        {

          return sub_10000847C(a3, a1, a2, 1);
        }
      }
    }
  }

  return result;
}

void sub_100008128(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

void sub_1000081D4(_xpc_connection_s *a1, xpc_object_t xdict)
{
  v24 = 0;
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  reply = xpc_dictionary_create_reply(xdict);
  if (reply)
  {
    v6 = reply;
    v7 = sub_100004658(&qword_100081B28, a1, &v24);
    string = xpc_dictionary_get_string(xdict, "proc_name");
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      if (string)
      {
        v9 = string;
      }

      else
      {
        v9 = "???";
      }

      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      pid = xpc_connection_get_pid(a1);
      v16 = v24;
      *v14 = 134218754;
      *(v14 + 4) = a1;
      *(v14 + 12) = 2080;
      *(v14 + 14) = v9;
      *(v14 + 22) = 1024;
      *(v14 + 24) = pid;
      *(v14 + 28) = 2048;
      *(v14 + 30) = v16;
      __SC_log_send();
    }

    if (v7)
    {
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v7);
      xpc_dictionary_set_data(v6, "configuration", BytePtr, Length);
    }

    xpc_connection_send_message(remote_connection, v6);
    xpc_release(v6);
  }

  else
  {
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v19 = _os_log_pack_size();
      __chkstk_darwin(v19, v20, v21);
      v22 = *__error();
      v23 = _os_log_pack_fill();
      *v23 = 134217984;
      *(v23 + 4) = a1;
      __SC_log_send();
    }
  }
}

uint64_t sub_10000847C(uint64_t a1, void *a2, const void *a3, int a4)
{
  value = 0;
  v8 = sub_100001D48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v23 = "*set ";
    v24 = *(a1 + 44);
    v25 = *(a1 + 40);
    if (!a4)
    {
      v23 = "set  ";
    }

    v29 = v23;
    v30 = 2080;
    v26 = "  ";
    *buf = 136315906;
    if (v24)
    {
      v26 = "t ";
    }

    v31 = v26;
    v32 = 1024;
    v33 = v25;
    v34 = 2112;
    v35 = a2;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s%s : %5u : %@", buf, 0x26u);
  }

  v9 = CFDictionaryGetValue(qword_1000816C0, a2);
  if (v9)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v11 = MutableCopy;
  v12 = CFDictionaryContainsKey(MutableCopy, @"data");
  CFDictionarySetValue(v11, @"data", a3);
  v13 = CFStringCreateWithFormat(0, 0, @"%u", *(a1 + 40));
  v14 = v13;
  if (*(a1 + 44))
  {
    if (v12)
    {
      v15 = CFDictionaryGetValue(qword_1000816C0, a2);
      if (!CFDictionaryGetValueIfPresent(v15, @"session", &value) || !CFEqual(v14, value))
      {
        CFRelease(v14);
        CFRelease(v11);
        v16 = 1005;
        if (!a4)
        {
          goto LABEL_28;
        }

        return v16;
      }

LABEL_21:
      CFRelease(v14);
      CFDictionarySetValue(qword_1000816C0, a2, v11);
      CFRelease(v11);
      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v18 = sub_1000022F8(*(a1 + 40));
    v19 = v18;
    v20 = *(v18 + 48);
    if (!v20)
    {
      goto LABEL_18;
    }

    v36.length = CFArrayGetCount(*(v18 + 48));
    v36.location = 0;
    if (CFArrayContainsValue(v20, v36, a2))
    {
LABEL_20:
      CFDictionarySetValue(v11, @"session", v14);
      goto LABEL_21;
    }

    Mutable = *(v19 + 48);
    if (!Mutable)
    {
LABEL_18:
      Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
      *(v19 + 48) = Mutable;
    }

    CFArrayAppendValue(Mutable, a2);
    goto LABEL_20;
  }

  if (v12)
  {
    if (CFDictionaryGetValueIfPresent(v11, @"session", &value) && !CFEqual(v14, value))
    {
      CFDictionaryRemoveValue(v11, @"session");
      v17 = CFStringCreateWithFormat(0, 0, @"%@:%@", value, a2);
      CFSetAddValue(qword_1000816E0, v17);
      CFRelease(v17);
    }

    goto LABEL_21;
  }

  CFRelease(v13);
  CFDictionarySetValue(qword_1000816C0, a2, v11);
  CFRelease(v11);
LABEL_24:
  if (CFSetContainsValue(qword_1000816D8, a2))
  {
    CFSetRemoveValue(qword_1000816D8, a2);
  }

  else
  {
    sub_10000D0FC(a2);
  }

LABEL_27:
  CFSetAddValue(qword_1000816D0, a2);
  v16 = 0;
  if (!a4)
  {
LABEL_28:
    sub_10000880C();
  }

  return v16;
}

uint64_t sub_10000880C()
{
  Count = CFSetGetCount(qword_1000816D0);
  if (!Count)
  {
    goto LABEL_27;
  }

  v1 = Count;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *values = 0u;
  v41 = 0u;
  if (Count < 33)
  {
    Typed = values;
    CFSetGetValues(qword_1000816D0, values);
    if (v1 < 1)
    {
      goto LABEL_26;
    }
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
    CFSetGetValues(qword_1000816D0, Typed);
  }

  v23 = Typed;
  do
  {
    v3 = Typed[v1 - 1];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    Value = CFDictionaryGetValue(qword_1000816C0, v3);
    if (Value)
    {
      v5 = Value;
      if (CFDictionaryContainsKey(Value, @"watchers"))
      {
        v6 = CFDictionaryGetValue(v5, @"watchers");
        v7 = CFArrayGetCount(v6);
        if (v7)
        {
          v8 = v7;
          if (v7 < 33)
          {
            v9 = v24;
            v57.location = 0;
            v57.length = v7;
            CFArrayGetValues(v6, v57, v24);
            if (v8 < 1)
            {
              continue;
            }
          }

          else
          {
            v9 = CFAllocatorAllocateTyped();
            v56.location = 0;
            v56.length = v8;
            CFArrayGetValues(v6, v56, v9);
          }

          v10 = v8 - 1;
          do
          {
            v11 = v9[v10];
            v12 = sub_100008BDC(v11);
            Mutable = *(v12 + 32);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
              *(v12 + 32) = Mutable;
            }

            v58.length = CFArrayGetCount(Mutable);
            v58.location = 0;
            if (!CFArrayContainsValue(Mutable, v58, v3))
            {
              CFArrayAppendValue(*(v12 + 32), v3);
            }

            v14 = qword_1000816E8;
            if (!qword_1000816E8)
            {
              v14 = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
              qword_1000816E8 = v14;
            }

            CFSetAddValue(v14, v11);
            v15 = v10-- + 1;
          }

          while (v15 > 1);
          Typed = v23;
          if (v9 != v24)
          {
            CFAllocatorDeallocate(0, v9);
          }
        }
      }
    }
  }

  while (v1-- > 1);
  if (Typed != values)
  {
    CFAllocatorDeallocate(0, Typed);
  }

LABEL_26:
  CFSetRemoveAllValues(qword_1000816D0);
LABEL_27:
  v17 = CFSetGetCount(qword_1000816D8);
  if (v17)
  {
    v18 = v17;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *values = 0u;
    v41 = 0u;
    if (v17 >= 33)
    {
      v19 = CFAllocatorAllocateTyped();
      CFSetGetValues(qword_1000816D8, v19);
      goto LABEL_31;
    }

    v19 = values;
    CFSetGetValues(qword_1000816D8, values);
    if (v18 >= 1)
    {
LABEL_31:
      v20 = v18 - 1;
      do
      {
        sub_10000BD1C(v19[v20]);
        v21 = v20-- + 1;
      }

      while (v21 > 1);
      if (v19 != values)
      {
        CFAllocatorDeallocate(0, v19);
      }
    }

    CFSetRemoveAllValues(qword_1000816D8);
  }

  CFSetApplyFunction(qword_1000816E0, sub_100023EC4, 0);
  CFSetRemoveAllValues(qword_1000816E0);
  return 0;
}

uint64_t sub_100008BDC(const __CFNumber *a1)
{
  v2 = 0;
  CFNumberGetValue(a1, kCFNumberSInt64Type, &v2);
  return sub_1000022F8(v2);
}

void sub_100008C3C()
{
  if (byte_1000816F8)
  {
    v0 = notify_post("com.apple.system.config.network_change");
    if (v0)
    {
      v1 = v0;
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
        *v6 = 67109120;
        v6[1] = v1;
        __SC_log_send();
      }
    }

    byte_1000816F8 = 0;
  }
}

void sub_100008D94(uint64_t a1)
{
  if (!sub_100006A6C(*(a1 + 32)))
  {
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v1 = _os_log_pack_size();
      __chkstk_darwin(v1, v2, v3);
      v4 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    dispatch_source_cancel(qword_1000817C0);
  }
}

void sub_100008ECC(const char *a1)
{
  v2 = *a1 - 24;
  v3 = *(a1 + 3);
  if (v3 > 5)
  {
    if (v3 != 6)
    {
      if (v3 != 7)
      {
        return;
      }

      v14 = *(a1 + 5);
      if (v14 - 6 >= 3)
      {
        if (v14 != 9)
        {
          return;
        }

        v5 = *a1 - 68 < 0;
        if (v2 < 0x2C)
        {
          goto LABEL_139;
        }

        snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v41 = _os_log_pack_size();
          __chkstk_darwin(v41, v42, v43);
          v44 = *__error();
          v45 = _os_log_pack_fill();
          v46 = *(a1 + 5);
          *v45 = 136315394;
          *(v45 + 4) = __str;
          *(v45 + 12) = 1024;
          *(v45 + 14) = v46;
          __SC_log_send();
        }

        sub_100028F88(__str);
      }

      else
      {
        v5 = *a1 - 68 < 0;
        if (v2 < 0x2C)
        {
          goto LABEL_139;
        }

        snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v15 = _os_log_pack_size();
          __chkstk_darwin(v15, v16, v17);
          v18 = *__error();
          v19 = _os_log_pack_fill();
          v20 = *(a1 + 5);
          *v19 = 136315394;
          *(v19 + 4) = __str;
          *(v19 + 12) = 1024;
          *(v19 + 14) = v20;
          __SC_log_send();
        }

        sub_10000A848(0, __str);
      }

      return;
    }

    v28 = *(a1 + 5);
    if (v28 - 1 >= 5)
    {
      if (v28 != 7)
      {
        return;
      }

      v5 = *a1 - 192 < 0;
      if (v2 < 0xA8)
      {
        goto LABEL_139;
      }

      snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v52 = _os_log_pack_size();
        __chkstk_darwin(v52, v53, v54);
        v55 = *__error();
        v56 = _os_log_pack_fill();
        *v56 = 136315138;
        *(v56 + 4) = __str;
        __SC_log_send();
      }

      sub_100028E1C(__str);
      return;
    }

    v5 = *a1 - 192 < 0;
    if (v2 < 0xA8)
    {
      goto LABEL_139;
    }

    snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v29 = _os_log_pack_size();
      __chkstk_darwin(v29, v30, v31);
      v32 = *__error();
      v33 = _os_log_pack_fill();
      v34 = *(a1 + 5);
      *v33 = 136315394;
      *(v33 + 4) = __str;
      *(v33 + 12) = 1024;
      *(v33 + 14) = v34;
      __SC_log_send();
    }

    sub_10000A848(0, __str);
    v35 = *(a1 + 5);
    if (v35 == 1)
    {
      if ((a1[164] & 4) != 0)
      {
        sub_100028CA4(__str, a1 + 56, 6, (a1 + 184));
LABEL_112:
        v35 = *(a1 + 5);
        goto LABEL_113;
      }

      v35 = 1;
    }

LABEL_113:
    if (v35 != 3 && qword_1000817C8)
    {
      sub_10002792C(__str);
    }

    return;
  }

  if (v3 == 1)
  {
    v21 = *(a1 + 5);
    if (v21 > 6)
    {
      switch(v21)
      {
        case 7:
          v5 = *a1 - 56 < 0;
          if (v2 < 0x20 || v2 < *(a1 + 52) + 32)
          {
            goto LABEL_139;
          }

          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v73 = _os_log_pack_size();
            __chkstk_darwin(v73, v74, v75);
            v76 = *__error();
            v77 = _os_log_pack_fill();
            *v77 = 136315138;
            *(v77 + 4) = __str;
            __SC_log_send();
          }

          sub_10002864C(__str, *(a1 + 12), *(a1 + 52), (a1 + 53));
          break;
        case 9:
          v5 = *a1 - 48 < 0;
          if (v2 < 0x18)
          {
            goto LABEL_139;
          }

          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v78 = _os_log_pack_size();
            __chkstk_darwin(v78, v79, v80);
            v81 = *__error();
            v82 = _os_log_pack_fill();
            *v82 = 136315138;
            *(v82 + 4) = __str;
            __SC_log_send();
          }

          sub_100028878(__str);
          break;
        case 10:
          v5 = *a1 - 48 < 0;
          if (v2 < 0x18)
          {
            goto LABEL_139;
          }

          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v47 = _os_log_pack_size();
            __chkstk_darwin(v47, v48, v49);
            v50 = *__error();
            v51 = _os_log_pack_fill();
            *v51 = 136315138;
            *(v51 + 4) = __str;
            __SC_log_send();
          }

          sub_100028A64(__str);
          break;
        default:
          return;
      }

      return;
    }

    if ((v21 - 1) >= 6)
    {
      return;
    }

    v5 = *a1 - 76 < 0;
    if (v2 < 0x34)
    {
      goto LABEL_139;
    }

    snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
    if (!qword_1000817B0)
    {
      qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v22 = _os_log_pack_size();
      __chkstk_darwin(v22, v23, v24);
      v25 = *__error();
      v26 = _os_log_pack_fill();
      v27 = *(a1 + 5);
      *v26 = 136315394;
      *(v26 + 4) = __str;
      *(v26 + 12) = 1024;
      *(v26 + 14) = v27;
      __SC_log_send();
    }

    sub_10000D8D0(0, __str);
    goto LABEL_112;
  }

  if (v3 != 2)
  {
    return;
  }

  v4 = *(a1 + 5);
  if (v4 <= 13)
  {
    if (v4 > 11)
    {
      v5 = *a1 - 48 < 0;
      if (v2 < 0x18)
      {
        goto LABEL_139;
      }

      snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
      if (!qword_1000817B0)
      {
        qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v62 = _os_log_pack_size();
        __chkstk_darwin(v62, v63, v64);
        v65 = *__error();
        v66 = _os_log_pack_fill();
        if (*(a1 + 5) == 13)
        {
          v67 = "active";
        }

        else
        {
          v67 = "inactive";
        }

        *v66 = 136315394;
        *(v66 + 4) = v67;
        *(v66 + 12) = 2080;
        *(v66 + 14) = __str;
        __SC_log_send();
      }

      sub_100006E68(__str, 0, 0);
    }

    else
    {
      switch(v4)
      {
        case 9:
          v5 = *a1 - 48 < 0;
          if (v2 < 0x18)
          {
            goto LABEL_139;
          }

          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v96 = _os_log_pack_size();
            __chkstk_darwin(v96, v97, v98);
            v99 = *__error();
            v100 = _os_log_pack_fill();
            *v100 = 136315138;
            *(v100 + 4) = __str;
            __SC_log_send();
          }

          sub_100027E44(__str);
          break;
        case 10:
          v5 = *a1 - 48 < 0;
          if (v2 < 0x18)
          {
            goto LABEL_139;
          }

          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v83 = _os_log_pack_size();
            __chkstk_darwin(v83, v84, v85);
            v86 = *__error();
            v87 = _os_log_pack_fill();
            *v87 = 136315138;
            *(v87 + 4) = __str;
            __SC_log_send();
          }

          sub_100027788(__str);
          break;
        case 11:
          v5 = *a1 - 48 < 0;
          if (v2 < 0x18)
          {
            goto LABEL_139;
          }

          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v36 = _os_log_pack_size();
            __chkstk_darwin(v36, v37, v38);
            v39 = *__error();
            v40 = _os_log_pack_fill();
            *v40 = 136315138;
            *(v40 + 4) = __str;
            __SC_log_send();
          }

          sub_100027EF8(__str);
          break;
        default:
          return;
      }
    }
  }

  else
  {
    if (v4 <= 19)
    {
      if ((v4 - 14) < 2)
      {
        v5 = *a1 - 56 < 0;
        if (v2 >= 0x20)
        {
          snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
          if (!qword_1000817B0)
          {
            qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v6 = _os_log_pack_size();
            __chkstk_darwin(v6, v7, v8);
            v9 = *__error();
            v10 = _os_log_pack_fill();
            v11 = "detach";
            v12 = *(a1 + 12);
            v13 = *(a1 + 13);
            if (*(a1 + 5) == 14)
            {
              v11 = "attach";
            }

            *v10 = 136315906;
            *(v10 + 4) = v11;
            *(v10 + 12) = 2080;
            *(v10 + 14) = __str;
            *(v10 + 22) = 1024;
            *(v10 + 24) = v12;
            *(v10 + 28) = 1024;
            *(v10 + 30) = v13;
            __SC_log_send();
          }

          return;
        }

        goto LABEL_139;
      }

      if (v4 != 18)
      {
        return;
      }

      v5 = *a1 - 48 < 0;
      if (v2 >= 0x18)
      {
        snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v68 = _os_log_pack_size();
          __chkstk_darwin(v68, v69, v70);
          v71 = *__error();
          v72 = _os_log_pack_fill();
          *v72 = 136315138;
          *(v72 + 4) = __str;
          __SC_log_send();
        }

        sub_100028150(__str);
        return;
      }

LABEL_139:

      sub_1000271BC(a1);
      return;
    }

    switch(v4)
    {
      case 20:
        v5 = *a1 - 48 < 0;
        if (v2 < 0x18)
        {
          goto LABEL_139;
        }

        snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v101 = _os_log_pack_size();
          __chkstk_darwin(v101, v102, v103);
          v104 = *__error();
          v105 = _os_log_pack_fill();
          v106 = *(a1 + 12);
          *v105 = 136315394;
          *(v105 + 4) = __str;
          *(v105 + 12) = 1024;
          *(v105 + 14) = v106;
          __SC_log_send();
        }

        sub_10000A3BC(__str, *(a1 + 12));
        break;
      case 24:
        v5 = *a1 - 48 < 0;
        if (v2 < 0x18)
        {
          goto LABEL_139;
        }

        snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v88 = _os_log_pack_size();
          __chkstk_darwin(v88, v89, v90);
          v91 = *__error();
          v92 = _os_log_pack_fill();
          *v92 = 136315138;
          *(v92 + 4) = __str;
          __SC_log_send();
        }

        v94 = *(a1 + 10);
        v93 = (a1 + 80);
        if (v94 ^ qword_1000817D9 | v93[2] ^ dword_1000817E1)
        {
          v95 = 12;
        }

        else
        {
          v95 = 0;
        }

        sub_10002751C(__str, *(v93 - 1), v93 - 32, 20, v93, v95);
        break;
      case 25:
        v5 = *a1 - 48 < 0;
        if (v2 < 0x18)
        {
          goto LABEL_139;
        }

        snprintf(__str, 0x10uLL, "%s%u", a1 + 32, *(a1 + 7));
        if (!qword_1000817B0)
        {
          qword_1000817B0 = os_log_create("com.apple.SystemConfiguration", "KernelEventMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v57 = _os_log_pack_size();
          __chkstk_darwin(v57, v58, v59);
          v60 = *__error();
          v61 = _os_log_pack_fill();
          *v61 = 136315138;
          *(v61 + 4) = __str;
          __SC_log_send();
        }

        sub_100027FD4(__str);
        break;
      default:
        return;
    }
  }
}

void sub_10000A3BC(char *cStr, int a2)
{
  valuePtr = a2;
  v4 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v4, kSCEntNetLinkQuality);
  v6 = sub_10000A670(NetworkInterfaceEntity);
  v7 = v6;
  if (a2 == -1)
  {
    CFDictionaryRemoveValue(v6, kSCPropNetLinkQuality);
  }

  else
  {
    v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v7, kSCPropNetLinkQuality, v8);
    CFRelease(v8);
  }

  Count = CFDictionaryGetCount(v7);
  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  v10 = __SC_log_enabled();
  if (Count < 1)
  {
    if (v10)
    {
      v16 = _os_log_pack_size();
      __chkstk_darwin(v16, v17, v18);
      v19 = *__error();
      v20 = _os_log_pack_fill();
      *v20 = 136315138;
      *(v20 + 4) = cStr;
      __SC_log_send();
    }

    SCDynamicStoreRemoveValue(qword_100081700, NetworkInterfaceEntity);
  }

  else
  {
    if (v10)
    {
      v11 = _os_log_pack_size();
      __chkstk_darwin(v11, v12, v13);
      v14 = *__error();
      v15 = _os_log_pack_fill();
      *v15 = 136315394;
      *(v15 + 4) = cStr;
      *(v15 + 12) = 2112;
      *(v15 + 14) = v7;
      __SC_log_send();
    }

    SCDynamicStoreSetValue(qword_100081700, NetworkInterfaceEntity, v7);
  }

  CFRelease(v4);
  CFRelease(NetworkInterfaceEntity);
  CFRelease(v7);
}

CFMutableDictionaryRef sub_10000A670(CFStringRef key)
{
  v1 = SCDynamicStoreCopyValue(qword_100081700, key);
  v2 = sub_100006990(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

uint64_t sub_10000A6F0(int a1)
{
  v1 = socket(a1, 2, 0);
  if (v1 == -1)
  {
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
      v7 = __error();
      v8 = strerror(*v7);
      *v6 = 136315138;
      *(v6 + 4) = v8;
      __SC_log_send();
    }
  }

  return v1;
}

void sub_10000A848(ifaddrs *a1, const char *a2)
{
  v69 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v68 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!a1)
  {
    if (getifaddrs(&v69) == -1)
    {
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v50 = _os_log_pack_size();
        __chkstk_darwin(v50, v51, v52);
        v53 = *__error();
        v54 = _os_log_pack_fill();
        v55 = __error();
        v56 = strerror(*v55);
        *v54 = 136315138;
        *(v54 + 4) = v56;
        __SC_log_send();
      }

      v6 = -1;
      goto LABEL_60;
    }

    a1 = v69;
    if (!v69)
    {
      v45 = 0;
      v6 = -1;
      if (a2)
      {
        goto LABEL_57;
      }

      goto LABEL_59;
    }
  }

  v60 = 0;
  v62 = kSCEntNetIPv6;
  v63 = kSCDynamicStoreDomainState;
  v61 = kSCPropNetIPv6Addresses;
  v5 = kSCPropNetIPv6PrefixLength;
  v67 = kSCPropNetIPv6Flags;
  v58 = kSCPropNetIPv6DestAddresses;
  v6 = -1;
  *&v4 = 136315138;
  v57 = v4;
  v64 = a2;
  do
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v71 = 0u;
    memset(v72, 0, sizeof(v72));
    if (a1->ifa_addr->sa_family != 30)
    {
      goto LABEL_55;
    }

    if (a2)
    {
      if (strncmp(a2, a1->ifa_name, 0x10uLL))
      {
        goto LABEL_55;
      }

      v60 = 1;
    }

    if (v6 == -1)
    {
      v6 = sub_10000A6F0(30);
      if (v6 == -1)
      {
        goto LABEL_60;
      }
    }

    v7 = v5;
    v8 = CFStringCreateWithCString(0, a1->ifa_name, 0);
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, v63, v8, v62);
    CFRelease(v8);
    v10 = sub_10000B1A0(NetworkInterfaceEntity, Mutable, v68);
    ifa_addr = a1->ifa_addr;
    v12 = *(ifa_addr + 8);
    if (v12 == 255)
    {
      v13 = *(ifa_addr + 9);
      if ((v13 & 0xF0) != 0x30 && (v13 & 0xF) == 2)
      {
LABEL_15:
        v14 = *(ifa_addr + 10);
        if (*(ifa_addr + 10))
        {
          *(ifa_addr + 10) = 0;
          if (!*(ifa_addr + 24))
          {
            *(ifa_addr + 24) = __rev16(v14);
          }
        }
      }
    }

    else if (v12 == 254 && (*(ifa_addr + 9) & 0xC0) == 0x80)
    {
      goto LABEL_15;
    }

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v71 = 0u;
    memset(v72, 0, sizeof(v72));
    ifa_name = a1->ifa_name;
    __strlcpy_chk();
    v16 = *(ifa_addr + 12);
    v72[0] = *ifa_addr;
    *(v72 + 12) = v16;
    v66 = v6;
    if (ioctl(v6, 0xC1206949uLL, &v71) == -1)
    {
      sub_100006F0C();
      *__error();
      _SC_syslog_os_log_mapping();
      *__error();
      if (__SC_log_enabled())
      {
        v17 = _os_log_pack_size();
        v59 = &v57;
        __chkstk_darwin(v17, v18, v19);
        v20 = *__error();
        v21 = _os_log_pack_fill();
        v22 = __error();
        v23 = strerror(*v22);
        *v21 = v57;
        *(v21 + 4) = v23;
        *__error();
        __SC_log_send();
      }
    }

    sub_100028AD0(v10, v61, ifa_addr);
    v24 = 0;
    v25 = 0;
    ifa_netmask = a1->ifa_netmask;
    v27 = &ifa_netmask->sa_data[6];
    v5 = v7;
    while (v27[v24] == 255)
    {
      ++v24;
      v25 += 8;
      if (v24 == 16)
      {
        v70 = 128;
        goto LABEL_36;
      }
    }

    v70 = v25;
    v28 = 0;
    v29 = v27[v24];
    while (1)
    {
      v30 = v28 + 7;
      if (((v29 >> (v28 + 7)) & 1) == 0)
      {
        break;
      }

      if (--v28 == -7)
      {
        v70 = v25 + 7;
LABEL_32:
        v31 = &ifa_netmask->sa_data[7];
        while (v24 != 15)
        {
          if (v31[v24++])
          {
            goto LABEL_35;
          }
        }

        goto LABEL_36;
      }
    }

    v70 = v25 - v28;
    while (((v29 >> v30) & 1) == 0)
    {
      if (!--v30)
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    v70 = 0;
LABEL_36:
    Value = CFDictionaryGetValue(v10, v7);
    if (Value)
    {
      MutableCopy = CFArrayCreateMutableCopy(0, 0, Value);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v35 = MutableCopy;
    v6 = v66;
    v36 = CFNumberCreate(0, kCFNumberIntType, &v70);
    CFArrayAppendValue(v35, v36);
    CFRelease(v36);
    CFDictionarySetValue(v10, v7, v35);
    CFRelease(v35);
    v70 = v72[0];
    v37 = CFDictionaryGetValue(v10, v67);
    a2 = v64;
    if (v37)
    {
      v38 = CFArrayCreateMutableCopy(0, 0, v37);
    }

    else
    {
      v38 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    }

    v39 = v38;
    v40 = CFNumberCreate(0, kCFNumberIntType, &v70);
    CFArrayAppendValue(v39, v40);
    CFRelease(v40);
    CFDictionarySetValue(v10, v67, v39);
    CFRelease(v39);
    if ((a1->ifa_flags & 0x10) == 0)
    {
      goto LABEL_54;
    }

    ifa_dstaddr = a1->ifa_dstaddr;
    if (!ifa_dstaddr)
    {
      goto LABEL_54;
    }

    v42 = *(ifa_dstaddr + 8);
    if (v42 == 255)
    {
      v43 = *(ifa_dstaddr + 9);
      if ((v43 & 0xF0) != 0x30 && (v43 & 0xF) == 2)
      {
LABEL_50:
        v44 = *(ifa_dstaddr + 10);
        if (*(ifa_dstaddr + 10))
        {
          *(ifa_dstaddr + 10) = 0;
          if (!*(ifa_dstaddr + 24))
          {
            *(ifa_dstaddr + 24) = __rev16(v44);
          }
        }
      }
    }

    else if (v42 == 254 && (*(ifa_dstaddr + 9) & 0xC0) == 0x80)
    {
      goto LABEL_50;
    }

    sub_100028AD0(v10, v58, ifa_dstaddr);
LABEL_54:
    CFDictionarySetValue(v68, NetworkInterfaceEntity, v10);
    CFRelease(v10);
    CFRelease(NetworkInterfaceEntity);
LABEL_55:
    a1 = a1->ifa_next;
  }

  while (a1);
  v45 = v60 != 0;
  if (a2)
  {
LABEL_57:
    if (!v45)
    {
      v46 = CFStringCreateWithCString(0, a2, 0);
      v47 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v46, kSCEntNetIPv6);
      CFRelease(v46);
      v48 = v68;
      v49 = sub_10000B1A0(v47, Mutable, v68);
      CFDictionarySetValue(v48, v47, v49);
      CFRelease(v49);
      CFRelease(v47);
    }
  }

LABEL_59:
  CFDictionaryApplyFunction(v68, sub_10000B580, Mutable);
LABEL_60:
  if (v69)
  {
    freeifaddrs(v69);
  }

  if (v6 != -1)
  {
    close(v6);
  }

  CFRelease(Mutable);
  CFRelease(v68);
}

CFMutableDictionaryRef sub_10000B02C(const __CFString *key, __CFDictionary *a2, CFDictionaryRef theDict)
{
  theDicta = 0;
  if (CFDictionaryGetValueIfPresent(theDict, key, &theDicta))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDicta);
    if (!MutableCopy)
    {
      return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }

  else
  {
    v6 = SCDynamicStoreCopyValue(qword_100081700, key);
    theDicta = v6;
    if (!v6)
    {
      return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFDictionarySetValue(a2, key, v6);
    MutableCopy = theDicta;
    TypeID = CFDictionaryGetTypeID();
    if (MutableCopy)
    {
      if (CFGetTypeID(MutableCopy) == TypeID)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDicta);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv4Addresses);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv4SubnetMasks);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv4DestAddresses);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv4BroadcastAddresses);
      }

      else
      {
        MutableCopy = 0;
      }
    }

    CFRelease(theDicta);
    if (!MutableCopy)
    {
      return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }

  return MutableCopy;
}

CFMutableDictionaryRef sub_10000B1A0(const __CFString *key, __CFDictionary *a2, CFDictionaryRef theDict)
{
  theDicta = 0;
  if (CFDictionaryGetValueIfPresent(theDict, key, &theDicta))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDicta);
    if (!MutableCopy)
    {
      return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }

  else
  {
    v6 = SCDynamicStoreCopyValue(qword_100081700, key);
    theDicta = v6;
    if (!v6)
    {
      return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFDictionarySetValue(a2, key, v6);
    MutableCopy = theDicta;
    TypeID = CFDictionaryGetTypeID();
    if (MutableCopy)
    {
      if (CFGetTypeID(MutableCopy) == TypeID)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDicta);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv6Addresses);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv6DestAddresses);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv6Flags);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetIPv6PrefixLength);
      }

      else
      {
        MutableCopy = 0;
      }
    }

    CFRelease(theDicta);
    if (!MutableCopy)
    {
      return CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }
  }

  return MutableCopy;
}

uint64_t sub_10000B314(const __CFString *key, const void *a2, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    result = CFEqual(Value, a2);
    if (result)
    {
      return result;
    }

    if (CFDictionaryGetCount(a2) < 1)
    {
      v7 = SCDynamicStoreCopyValue(qword_100081700, key);
      if (v7)
      {
        v8 = v7;
        sub_100006F0C();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v9 = _os_log_pack_size();
          __chkstk_darwin(v9, v10, v11);
          v12 = *__error();
          v13 = _os_log_pack_fill();
          *v13 = 138412290;
          *(v13 + 4) = key;
          __SC_log_send();
        }

        CFRelease(v8);
      }

      result = SCDynamicStoreRemoveValue(qword_100081700, key);
      goto LABEL_13;
    }

LABEL_10:
    sub_100006F0C();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v14 = _os_log_pack_size();
      __chkstk_darwin(v14, v15, v16);
      v17 = *__error();
      v18 = _os_log_pack_fill();
      *v18 = 138412546;
      *(v18 + 4) = key;
      *(v18 + 12) = 2112;
      *(v18 + 14) = a2;
      __SC_log_send();
    }

    result = SCDynamicStoreSetValue(qword_100081700, key, a2);
    goto LABEL_13;
  }

  result = CFDictionaryGetCount(a2);
  if (result > 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  byte_1000816F8 = 1;
  return result;
}

uint64_t sub_10000B580(const __CFString *key, const void *a2, CFDictionaryRef theDict)
{
  result = CFDictionaryGetValue(theDict, key);
  v6 = result;
  if (result && (result = CFEqual(result, a2), result))
  {
    if (!a2)
    {
LABEL_10:
      if (v6)
      {
        v12 = SCDynamicStoreCopyValue(qword_100081700, key);
        if (v12)
        {
          v13 = v12;
          sub_100006F0C();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v14 = _os_log_pack_size();
            __chkstk_darwin(v14, v15, v16);
            v17 = *__error();
            v18 = _os_log_pack_fill();
            *v18 = 138412290;
            *(v18 + 4) = key;
            __SC_log_send();
          }

          CFRelease(v13);
        }

        return SCDynamicStoreRemoveValue(qword_100081700, key);
      }

      return result;
    }
  }

  else
  {
    byte_1000816F8 = 1;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  result = CFDictionaryGetCount(a2);
  if (result < 1)
  {
    goto LABEL_10;
  }

  sub_100006F0C();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v7 = _os_log_pack_size();
    __chkstk_darwin(v7, v8, v9);
    v10 = *__error();
    v11 = _os_log_pack_fill();
    *v11 = 138412546;
    *(v11 + 4) = key;
    *(v11 + 12) = 2112;
    *(v11 + 14) = a2;
    __SC_log_send();
  }

  return SCDynamicStoreSetValue(qword_100081700, key, a2);
}

void sub_10000B7F4()
{
  v0 = SCDynamicStoreKeyCreate(0, @"%@InterfaceNamer", kSCDynamicStoreDomainPlugin);
  SCDynamicStoreSetValue(0, v0, qword_100081828);

  CFRelease(v0);
}

uint64_t sub_10000B890(uint64_t result)
{
  if (result)
  {
    if (gethostname(v34, 0x100uLL) == -1)
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v1 = _os_log_pack_size();
        __chkstk_darwin(v1, v2, v3);
        v4 = *__error();
        v5 = _os_log_pack_fill();
        v6 = __error();
        v7 = strerror(*v6);
        *v5 = 136315138;
        *(v5 + 4) = v7;
        __SC_log_send();
      }

      v34[0] = 0;
    }

    if (!_SC_cfstring_to_cstring())
    {
      sub_1000035EC();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v8 = _os_log_pack_size();
        __chkstk_darwin(v8, v9, v10);
        v11 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }

      v33[0] = 0;
    }

    v34[255] = 0;
    v33[255] = 0;
    result = strcmp(v34, v33);
    if (result)
    {
      v12 = strlen(v33);
      v13 = sethostname(v33, v12);
      sub_1000035EC();
      if (v13)
      {
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (!result)
        {
          return result;
        }

        v14 = _os_log_pack_size();
        __chkstk_darwin(v14, v15, v16);
        v17 = *__error();
        v18 = _os_log_pack_fill();
        v19 = strlen(v33);
        v20 = __error();
        v21 = strerror(*v20);
        *v18 = 136315650;
        *(v18 + 4) = v33;
        *(v18 + 12) = 2048;
        *(v18 + 14) = v19;
        *(v18 + 22) = 2080;
        *(v18 + 24) = v21;
        return __SC_log_send();
      }

      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v22 = _os_log_pack_size();
        __chkstk_darwin(v22, v23, v24);
        v25 = *__error();
        v26 = _os_log_pack_fill();
        *v26 = 136315138;
        *(v26 + 4) = v33;
        __SC_log_send();
      }

      result = notify_post("com.apple.system.hostname");
      if (result)
      {
        v27 = result;
        sub_1000035EC();
        _SC_syslog_os_log_mapping();
        result = __SC_log_enabled();
        if (result)
        {
          v28 = _os_log_pack_size();
          __chkstk_darwin(v28, v29, v30);
          v31 = *__error();
          v32 = _os_log_pack_fill();
          *v32 = 67109120;
          v32[1] = v27;
          return __SC_log_send();
        }
      }
    }
  }

  return result;
}

void sub_10000BD1C(void *a1)
{
  v2 = qword_1000816C8;
  v3 = CFGetAllocator(qword_1000816C8);
  Copy = CFDictionaryCreateCopy(v3, v2);
  CFDictionaryApplyFunction(Copy, sub_10000D778, a1);

  CFRelease(Copy);
}

uint64_t sub_10000BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, int *a8)
{
  *a7 = 0;
  *a8 = 0;
  if (!_SCUnserializeString())
  {
    *a8 = 1001;
  }

  if (!_SCUnserializeData())
  {
    v9 = 1001;
    goto LABEL_7;
  }

  if (!*a8)
  {
    CFStringGetTypeID();
    v9 = 1002;
LABEL_7:
    *a8 = v9;
  }

  return 0;
}

void sub_10000BEF4(const __SCDynamicStore *a1)
{
  if (qword_100081B78)
  {
    sub_1000483BC();
  }

  ComputerName = SCDynamicStoreKeyCreateComputerName(0);
  v3 = SCDynamicStoreCopyValue(a1, ComputerName);
  CFRelease(ComputerName);
  if (v3)
  {
    TypeID = CFDictionaryGetTypeID();
    if (CFGetTypeID(v3) == TypeID)
    {
      Value = CFDictionaryGetValue(v3, kSCPropSystemHostName);
      v6 = CFStringGetTypeID();
      if (Value)
      {
        if (CFGetTypeID(Value) == v6)
        {
          CFRetain(Value);
          CFRelease(v3);
          sub_1000035EC();
          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v7 = _os_log_pack_size();
            __chkstk_darwin(v7, v8, v9);
            v10 = *__error();
            v11 = _os_log_pack_fill();
            *v11 = 138412290;
            *(v11 + 4) = Value;
            __SC_log_send();
          }

          v12 = 0;
LABEL_35:
          sub_10000B890(Value);
          goto LABEL_36;
        }
      }
    }

    CFRelease(v3);
  }

  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  v14 = SCDynamicStoreCopyValue(a1, NetworkGlobalEntity);
  CFRelease(NetworkGlobalEntity);
  if (!v14)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v15 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v14) != v15)
  {
    goto LABEL_18;
  }

  v12 = CFDictionaryGetValue(v14, kSCDynamicStorePropNetPrimaryService);
  v16 = CFStringGetTypeID();
  if (!v12)
  {
LABEL_19:
    CFRelease(v14);
LABEL_21:
    ValueAtIndex = 0;
    goto LABEL_22;
  }

  if (CFGetTypeID(v12) != v16)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  CFRetain(v12);
  CFRelease(v14);
  v17 = sub_10003D338(v12);
  if (v17)
  {
    Value = v17;
    sub_1000035EC();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v18 = _os_log_pack_size();
      __chkstk_darwin(v18, v19, v20);
      v21 = *__error();
      v22 = _os_log_pack_fill();
      *v22 = 138412290;
      *(v22 + 4) = Value;
      __SC_log_send();
    }

    goto LABEL_35;
  }

  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, v12, kSCEntNetIPv4);
  v14 = SCDynamicStoreCopyValue(a1, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  if (!v14)
  {
    goto LABEL_21;
  }

  v32 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v14) != v32)
  {
    goto LABEL_19;
  }

  v33 = CFDictionaryGetValue(v14, kSCPropNetIPv4Addresses);
  v34 = CFArrayGetTypeID();
  if (!v33)
  {
    goto LABEL_19;
  }

  if (CFGetTypeID(v33) != v34)
  {
    goto LABEL_19;
  }

  if (CFArrayGetCount(v33) < 1)
  {
    goto LABEL_19;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v33, 0);
  v35 = CFStringGetTypeID();
  if (!ValueAtIndex || CFGetTypeID(ValueAtIndex) != v35)
  {
    goto LABEL_19;
  }

  CFRetain(ValueAtIndex);
  CFRelease(v14);
  if (!sub_10003D3D4(v12) && sub_1000484F0())
  {
    Value = 0;
    goto LABEL_29;
  }

LABEL_22:
  Value = SCDynamicStoreCopyLocalHostName(a1);
  if (!Value)
  {
    sub_10000B890(@"localhost");
    if (!ValueAtIndex)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  sub_1000035EC();
  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v24 = _os_log_pack_size();
    __chkstk_darwin(v24, v25, v26);
    v27 = *__error();
    v28 = _os_log_pack_fill();
    *v28 = 138412290;
    *(v28 + 4) = Value;
    __SC_log_send();
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, Value);
  if (!MutableCopy)
  {
    sub_100068178();
  }

  v30 = MutableCopy;
  CFStringAppend(MutableCopy, @".local");
  sub_10000B890(v30);
  CFRelease(v30);
  if (ValueAtIndex)
  {
LABEL_29:
    CFRelease(ValueAtIndex);
  }

LABEL_30:
  if (!Value)
  {
    if (!v12)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_36:
  CFRelease(Value);
  if (v12)
  {
LABEL_32:
    CFRelease(v12);
  }
}

uint64_t sub_10000C450(int a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, int *a8)
{
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  if (a2 && a3 && !_SCUnserialize())
  {
    *a8 = 1001;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else if (!a4)
  {
    goto LABEL_7;
  }

  if (a5 && !_SCUnserialize())
  {
    v13 = 0;
    goto LABEL_21;
  }

LABEL_7:
  if (*a8)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v14 = sub_1000022F8(a1);
  if (!v14)
  {
    v13 = 0;
    v20 = 2001;
    goto LABEL_23;
  }

  v15 = v14;
  v16 = *(v14 + 56);
  v17 = sub_100001D48();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(v16 + 40);
    LODWORD(context) = 67109632;
    HIDWORD(context) = v22;
    *v24 = 2048;
    *&v24[2] = 0;
    *&v24[10] = 2048;
    *&v24[12] = 0;
    _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "copy m  : %5u : %ld keys, %ld patterns", &context, 0x1Cu);
  }

  context = 0;
  *v24 = v16;
  *&v24[8] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = context;
  v18 = *&v24[8];
  if (*&v24[8])
  {
    if (context && CFDictionaryGetCount(*&v24[8]) >= 1)
    {
      context = v15;
      *v24 = CFDictionaryCreateMutableCopy(0, 0, v18);
      CFDictionaryApplyFunction(v13, sub_1000244A8, &context);
      CFRelease(v18);
      v18 = *v24;
    }

    v19 = _SCSerialize();
    *a7 = 0;
    CFRelease(v18);
    if (!v19)
    {
LABEL_21:
      v20 = 1001;
LABEL_23:
      *a8 = v20;
    }
  }

LABEL_24:
  if (v13)
  {
    CFRelease(v13);
  }

  return 0;
}

uint64_t sub_10000C79C(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 76)
  {
    v3 = -304;
LABEL_11:
    *(a2 + 32) = v3;
    goto LABEL_12;
  }

  if (*(result + 39) != 1 || *(result + 55) != 1 || *(result + 40) != *(result + 68) || *(result + 56) != *(result + 72))
  {
    v3 = -300;
    goto LABEL_11;
  }

  *(a2 + 36) = 16777473;
  result = sub_10000C450(*(result + 12), *(result + 28), *(result + 40), *(result + 44), *(result + 56), (a2 + 28), (a2 + 52), (a2 + 56));
  if (result)
  {
    *(a2 + 32) = result;
LABEL_12:
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

void sub_10000C8DC(__CFString *a1, uint64_t *a2)
{
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    theArray = 0;
    if (!sub_10000C9AC(a2[1], a1, 1, &theArray))
    {
      v5 = theArray;
      v7.length = CFArrayGetCount(theArray);
      v7.location = 0;
      CFArrayApplyFunction(v5, v7, sub_10000CE60, a2);
      CFRelease(theArray);
    }
  }
}

uint64_t sub_10000C9AC(uint64_t a1, __CFString *a2, int a3, CFArrayRef *a4)
{
  v8 = sub_100001D48();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    *buf = 67109634;
    *&buf[4] = v11;
    if (a3)
    {
      v12 = "pattern";
    }

    else
    {
      v12 = "key";
    }

    *&buf[8] = 2080;
    *&buf[10] = v12;
    *&buf[18] = 2112;
    *&buf[20] = a2;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "list    : %5u : %s : %@", buf, 0x1Cu);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else if (a3)
  {
LABEL_3:
    v9 = sub_10000CC88(a2);
    *a4 = v9;
    if (v9)
    {
      return 0;
    }

    else
    {
      return 1001;
    }
  }

  Count = CFDictionaryGetCount(qword_1000816C0);
  Mutable = CFArrayCreateMutable(0, Count, &kCFTypeArrayCallBacks);
  if (Count >= 1)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
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
    memset(buf, 0, sizeof(buf));
    memset(v20, 0, sizeof(v20));
    if (Count < 0x41)
    {
      v16 = v20;
      Typed = buf;
    }

    else
    {
      Typed = CFAllocatorAllocateTyped();
      v16 = CFAllocatorAllocateTyped();
    }

    CFDictionaryGetKeysAndValues(qword_1000816C0, Typed, v16);
    for (i = 0; i != Count; ++i)
    {
      v18 = Typed[i];
      v19 = v16[i];
      if ((!CFStringGetLength(a2) || CFStringHasPrefix(v18, a2)) && CFDictionaryContainsKey(v19, @"data"))
      {
        CFArrayAppendValue(Mutable, v18);
      }
    }

    if (Typed != buf)
    {
      CFAllocatorDeallocate(0, Typed);
      CFAllocatorDeallocate(0, v16);
    }
  }

  *a4 = CFArrayCreateCopy(0, Mutable);
  CFRelease(Mutable);
  return 0;
}

CFArrayRef sub_10000CC88(__CFString *a1)
{
  v2 = sub_10000CD5C(a1);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10001E6C4(a1);
  if (v3)
  {
    v2 = v3;
    ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    regfree(BytePtr);
LABEL_4:
    v8.location = 0;
    v8.length = 2;
    CFArrayReplaceValues(v2, v8, 0, 0);
    Copy = CFArrayCreateCopy(0, v2);
    CFRelease(v2);
    return Copy;
  }

  return 0;
}

CFMutableArrayRef sub_10000CD5C(void *key)
{
  Value = CFDictionaryGetValue(qword_1000816C8, key);
  if (!Value)
  {
    return 0;
  }

  return CFArrayCreateMutableCopy(0, 0, Value);
}

void sub_10000CE00(id a1, int a2)
{
  v2 = qword_100081B70;

  sub_10000BEF4(v2);
}

void sub_10000CE60(void *a1, uint64_t a2)
{
  v9 = 0;
  TypeID = CFStringGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      value = 0;
      if (!sub_100004F2C(*(a2 + 8), a1, &v9, &value, 1))
      {
        CFDictionaryAddValue(*(a2 + 16), a1, value);
        CFRelease(value);
        v5 = v9;
        if (v9)
        {
          Mutable = *a2;
          if (!*a2)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            *a2 = Mutable;
            v5 = v9;
          }

          CFDictionarySetValue(Mutable, a1, v5);
        }

        else
        {
          v7 = *(a2 + 8);
          v8 = sub_100001D48();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            sub_100067898(v7);
          }
        }
      }
    }
  }
}

uint64_t sub_10000CF80(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 || *(result + 24) != 2 || *(result + 4) != 80)
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

  result = sub_10000BDBC(*(result + 12), *(result + 28), v3, *(result + 44), v4, *(result + 76), (a2 + 36), (a2 + 40));
  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

void sub_10000D090(id a1)
{
  if (qword_100081940)
  {
    if_freenameindex(qword_100081940);
    qword_100081940 = 0;
  }

  qword_100081940 = if_nameindex();
}

void sub_10000D0FC(void *a1)
{
  v2 = qword_1000816C8;
  v3 = CFGetAllocator(qword_1000816C8);
  Copy = CFDictionaryCreateCopy(v3, v2);
  CFDictionaryApplyFunction(Copy, sub_10000D19C, a1);

  CFRelease(Copy);
}

void sub_10000D19C(const void *a1, const __CFArray *a2, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (CFStringGetMaximumSizeForEncoding(Length, 0x600u) < 256)
  {
    Typed = v27;
  }

  else
  {
    Typed = CFAllocatorAllocateTyped();
  }

  if (_SC_cfstring_to_cstring())
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    BytePtr = CFDataGetBytePtr(ValueAtIndex);
    v10 = regexec(BytePtr, Typed, 0, 0, 0);
    if (v10 != 1)
    {
      if (v10)
      {
        regerror(v10, BytePtr, v26, 0x100uLL);
        sub_100001D48();
        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v21 = _os_log_pack_size();
          __chkstk_darwin(v21, v22, v23);
          v24 = *__error();
          v25 = _os_log_pack_fill();
          *v25 = 136315138;
          *(v25 + 4) = v26;
          __SC_log_send();
        }
      }

      else
      {
        v11 = CFArrayGetValueAtIndex(a2, 1);
        Count = CFArrayGetCount(v11);
        if (Count >= 1)
        {
          v13 = Count;
          for (i = 0; i != v13; ++i)
          {
            v15 = CFArrayGetValueAtIndex(v11, i);
            sub_10000296C(v15, theString);
          }
        }

        MutableCopy = CFArrayCreateMutableCopy(0, 0, a2);
        CFArrayAppendValue(MutableCopy, theString);
        CFDictionarySetValue(qword_1000816C8, a1, MutableCopy);
        CFRelease(MutableCopy);
      }
    }
  }

  else
  {
    sub_100001D48();
    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v17 = _os_log_pack_size();
      __chkstk_darwin(v17, v18, v19);
      v20 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }
  }

  if (Typed != v27)
  {
    CFAllocatorDeallocate(0, Typed);
  }
}

CFTypeID sub_10000D4A8(const void *a1, uint64_t a2)
{
  result = CFStringGetTypeID();
  if (a1)
  {
    v5 = result;
    result = CFGetTypeID(a1);
    if (result == v5)
    {

      return sub_10000D56C(a2, a1, 1);
    }
  }

  return result;
}

uint64_t sub_10000D56C(uint64_t a1, const void *a2, int a3)
{
  v6 = sub_100001D48();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v14 = "*remove";
    v15 = *(a1 + 40);
    *buf = 136315650;
    if (!a3)
    {
      v14 = "remove ";
    }

    v17 = v14;
    v18 = 1024;
    v19 = v15;
    v20 = 2112;
    v21 = a2;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s : %5u : %@", buf, 0x1Cu);
  }

  Value = CFDictionaryGetValue(qword_1000816C0, a2);
  if (!Value)
  {
    return 1004;
  }

  v8 = Value;
  if (!CFDictionaryContainsKey(Value, @"data"))
  {
    return 1004;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v8);
  CFSetAddValue(qword_1000816D0, a2);
  CFSetAddValue(qword_1000816D8, a2);
  v10 = CFDictionaryGetValue(MutableCopy, @"session");
  if (v10)
  {
    v11 = v10;
    CFDictionaryRemoveValue(MutableCopy, @"session");
    v12 = CFStringCreateWithFormat(0, 0, @"%@:%@", v11, a2);
    CFSetAddValue(qword_1000816E0, v12);
    CFRelease(v12);
  }

  CFDictionaryRemoveValue(MutableCopy, @"data");
  if (CFDictionaryGetCount(MutableCopy) < 1)
  {
    CFDictionaryRemoveValue(qword_1000816C0, a2);
  }

  else
  {
    CFDictionarySetValue(qword_1000816C0, a2, MutableCopy);
  }

  CFRelease(MutableCopy);
  if (!a3)
  {
    sub_10000880C();
  }

  return 0;
}

void sub_10000D778(const void *a1, CFArrayRef theArray, const void *a3)
{
  Count = CFArrayGetCount(theArray);
  if (Count >= 3)
  {
    v16.length = Count - 2;
    v16.location = 2;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v16, a3);
    if (FirstIndexOfValue != -1)
    {
      v8 = FirstIndexOfValue;
      MutableCopy = CFArrayCreateMutableCopy(0, 0, theArray);
      CFArrayRemoveValueAtIndex(MutableCopy, v8);
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 1);
      v11 = CFArrayGetCount(ValueAtIndex);
      if (v11 >= 1)
      {
        v12 = v11;
        for (i = 0; i != v12; ++i)
        {
          v14 = CFArrayGetValueAtIndex(ValueAtIndex, i);
          sub_10000580C(v14, a3);
        }
      }

      CFDictionarySetValue(qword_1000816C8, a1, MutableCopy);

      CFRelease(MutableCopy);
    }
  }
}

void sub_10000D8D0(ifaddrs *a1, const char *a2)
{
  v26 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!a1)
  {
    if (getifaddrs(&v26) == -1)
    {
      sub_100006F0C();
      _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v18 = _os_log_pack_size();
        __chkstk_darwin(v18, v19, v20);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = __error();
        v24 = strerror(*v23);
        *v22 = 136315138;
        *(v22 + 4) = v24;
        __SC_log_send();
      }

      goto LABEL_16;
    }

    a1 = v26;
    if (!v26)
    {
      v14 = 0;
      if (a2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  v25 = 0;
  do
  {
    if (a1->ifa_addr->sa_family != 2)
    {
      goto LABEL_11;
    }

    ifa_name = a1->ifa_name;
    if (a2)
    {
      if (strncmp(a2, a1->ifa_name, 0x10uLL))
      {
        goto LABEL_11;
      }

      v25 = 1;
    }

    v7 = CFStringCreateWithCString(0, ifa_name, 0);
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v7, kSCEntNetIPv4);
    CFRelease(v7);
    v9 = sub_10000B02C(NetworkInterfaceEntity, Mutable, v5);
    sub_100028550(v9, kSCPropNetIPv4Addresses, &a1->ifa_addr->sa_data[2]);
    ifa_dstaddr = a1->ifa_dstaddr;
    if ((a1->ifa_flags & 0x10) != 0)
    {
      v11 = &ifa_dstaddr->sa_data[2];
      v12 = v9;
      v13 = kSCPropNetIPv4DestAddresses;
    }

    else
    {
      sub_100028550(v9, kSCPropNetIPv4BroadcastAddresses, &ifa_dstaddr->sa_data[2]);
      v11 = &a1->ifa_netmask->sa_data[2];
      v12 = v9;
      v13 = kSCPropNetIPv4SubnetMasks;
    }

    sub_100028550(v12, v13, v11);
    CFDictionarySetValue(v5, NetworkInterfaceEntity, v9);
    CFRelease(v9);
    CFRelease(NetworkInterfaceEntity);
LABEL_11:
    a1 = a1->ifa_next;
  }

  while (a1);
  v14 = v25 != 0;
  if (a2)
  {
LABEL_13:
    if (!v14)
    {
      v15 = CFStringCreateWithCString(0, a2, 0);
      v16 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v15, kSCEntNetIPv4);
      CFRelease(v15);
      v17 = sub_10000B02C(v16, Mutable, v5);
      CFDictionarySetValue(v5, v16, v17);
      CFRelease(v17);
      CFRelease(v16);
    }
  }

LABEL_15:
  CFDictionaryApplyFunction(v5, sub_10000B314, Mutable);
LABEL_16:
  if (v26)
  {
    freeifaddrs(v26);
  }

  CFRelease(Mutable);
  CFRelease(v5);
}

void sub_10000DC80(const __SCDynamicStore *a1, const __CFArray *a2)
{

  sub_10000DCDC(a1, a2, 0);
}

void sub_10000DCDC(const __SCDynamicStore *a1, const __CFArray *a2, const __CFArray *a3)
{
  v215 = 0;
  v216 = 0;
  Mutable = 0;
  v213 = 0;
  v214 = 0;
  sub_10000FCE4();
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (byte_1000819B4 == 1)
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
        *v10 = 138412546;
        *(v10 + 4) = a2;
        *(v10 + 12) = 2048;
        *(v10 + 14) = Count;
        __SC_log_send();
      }
    }
  }

  else
  {
    Count = 0;
  }

  if (!a3 && !Count)
  {
    return;
  }

  if (qword_1000819F8 && (v11 = sub_100010FF4(qword_1000819F8, kSCEntNetDNS)) != 0)
  {
    Copy = CFDictionaryCreateCopy(0, v11);
  }

  else
  {
    Copy = 0;
  }

  if (qword_100081A00 && (v12 = sub_100010FF4(qword_100081A00, kSCEntNetProxies)) != 0)
  {
    v187 = CFDictionaryCreateCopy(0, v12);
  }

  else
  {
    v187 = 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v213 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v214 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v198 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v13 = &selRef_qosMarkingIsEnabled_;
  if (Count < 1)
  {
    v186 = 0;
    v200 = 0;
    v206 = 0;
    goto LABEL_56;
  }

  v206 = 0;
  v200 = 0;
  v14 = 0;
  v15 = 0;
  v16 = kSCEntNetInterfaceDelegation;
  do
  {
    valuePtr[0] = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
    if (CFEqual(ValueAtIndex, qword_1000819E0))
    {
      HIDWORD(v206) = 1;
      goto LABEL_26;
    }

    if (CFEqual(ValueAtIndex, v13[318]) || CFEqual(ValueAtIndex, qword_1000819E8) || CFEqual(ValueAtIndex, @"/Library/Preferences/SystemConfiguration/resolver"))
    {
      LODWORD(v206) = 1;
      goto LABEL_26;
    }

    if (CFStringHasPrefix(ValueAtIndex, qword_100081A08) && CFStringHasSuffix(ValueAtIndex, v16))
    {
      v14 = 1;
      v206 = 0x100000001;
      goto LABEL_26;
    }

    if (CFStringHasPrefix(ValueAtIndex, qword_100081A10))
    {
      v211 = 0;
      v18 = sub_10000FD64(ValueAtIndex, &v211);
      if (!v18)
      {
        goto LABEL_53;
      }

      v19 = v18;
      sub_100010060(v198, v18);
      if (v211)
      {
        if (CFEqual(v211, kSCEntNetIPv4))
        {
          v20 = &v216;
LABEL_51:
          sub_10000FE40(v20, v19);
          goto LABEL_52;
        }

        if (CFEqual(v211, kSCEntNetIPv6))
        {
          v20 = &v215;
          goto LABEL_51;
        }
      }

LABEL_52:
      CFRelease(v19);
LABEL_53:
      if (v211)
      {
        CFRelease(v211);
      }

      goto LABEL_26;
    }

    if (CFStringHasPrefix(ValueAtIndex, qword_100081A18))
    {
      v21 = sub_10000FD64(ValueAtIndex, 0);
      if (v21)
      {
        v22 = v21;
        sub_100010060(v198, v21);
        CFRelease(v22);
      }

      v23 = 0;
      v24 = 0;
      do
      {
        v25 = v23;
        HasSuffix = CFStringHasSuffix(ValueAtIndex, **(&off_10007AB78 + v24));
        if (HasSuffix)
        {
          break;
        }

        v23 = 1;
        v24 = 1;
      }

      while ((v25 & 1) == 0);
      if (HasSuffix)
      {
        v14 = 1;
      }

      if (CFStringHasSuffix(ValueAtIndex, kSCEntNetInterface))
      {
        v14 = 1;
      }

      v13 = &selRef_qosMarkingIsEnabled_;
    }

    else if (sub_100049098(ValueAtIndex, valuePtr))
    {
      sub_10003FD7C(0, valuePtr[0]);
      v200 = 1;
    }

LABEL_26:
    ++v15;
  }

  while (v15 != Count);
  v186 = v14 != 0;
LABEL_56:
  v27 = v198;
  if (a3)
  {
    v28 = CFArrayGetCount(a3);
    if (v28 >= 1)
    {
      v29 = v28;
      v30 = 0;
      v203 = v28;
      do
      {
        v31 = CFArrayGetValueAtIndex(a3, v30);
        if (byte_1000819B4 == 1)
        {
          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v32 = _os_log_pack_size();
            __chkstk_darwin(v32, v33, v34);
            v35 = *__error();
            v13 = &selRef_qosMarkingIsEnabled_;
            v36 = _os_log_pack_fill();
            *v36 = 138412290;
            *(v36 + 4) = v31;
            v27 = v198;
            __SC_log_send();
            v29 = v203;
          }
        }

        sub_10003FE50(v27, v31);
        ++v30;
      }

      while (v29 != v30);
    }
  }

  v37 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v38 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(v37, qword_1000819E0);
  CFArrayAppendValue(v37, v13[318]);
  CFArrayAppendValue(v37, qword_1000819E8);
  v39 = CFArrayGetCount(v27);
  if (v39 >= 1)
  {
    v40 = v39;
    for (i = 0; i != v40; ++i)
    {
      v42 = CFArrayGetValueAtIndex(v27, i);
      sub_10000FEC8(v42, v37);
      sub_100010114(v42, v37);
    }
  }

  for (j = 0; j != 40; j += 8)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, **(&off_10007ABC8 + j));
    sub_100010060(v38, NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
  }

  v45 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, kSCEntNetVPN);
  sub_100010060(v38, v45);
  CFRelease(v45);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetLink);
  sub_100010060(v38, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  v47 = SCDynamicStoreCopyMultiple(a1, v37, v38);
  if (v37)
  {
    CFRelease(v37);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (!v47)
  {
    sub_100067FD8();
  }

  v48 = sub_1000101D0(v47, qword_1000819E0);
  if (v48)
  {
    v49 = v48;
    LODWORD(valuePtr[0]) = 0;
    Value = CFDictionaryGetValue(v48, kSCPropNetServiceOrder);
    TypeID = CFArrayGetTypeID();
    if (Value)
    {
      if (CFGetTypeID(Value) == TypeID)
      {
        v52 = Value;
      }

      else
      {
        v52 = 0;
      }

      v190 = v52;
    }

    else
    {
      v190 = 0;
    }

    v53 = CFDictionaryGetValue(v49, kSCPropNetPPPOverridePrimary);
    v54 = CFNumberGetTypeID();
    if (v53 && CFGetTypeID(v53) == v54)
    {
      CFNumberGetValue(v53, kCFNumberIntType, valuePtr);
      v55 = LODWORD(valuePtr[0]) != 0;
    }

    else
    {
      v55 = 0;
    }

    dword_100081A68 = v55;
    if (v190)
    {
      if (byte_1000819B4 == 1)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v56 = _os_log_pack_size();
          __chkstk_darwin(v56, v57, v58);
          v59 = *__error();
          v60 = _os_log_pack_fill();
          *v60 = 138412290;
          *(v60 + 4) = v190;
          __SC_log_send();
        }
      }
    }

    else
    {
      v190 = 0;
    }
  }

  else
  {
    v190 = 0;
    dword_100081A68 = 0;
  }

  v197 = CFArrayGetCount(v198);
  if (v197 < 1)
  {
    v61 = 0;
    v191 = 0;
  }

  else
  {
    v191 = 0;
    v61 = 0;
    v62 = 0;
    v195 = v216;
    v193 = v215;
    do
    {
      v204 = v61;
      v201 = v62;
      v63 = CFArrayGetValueAtIndex(v198, v62);
      v64 = sub_100010280(v47, v63, 0);
      v65 = sub_100010314(v47, v63, 0);
      v66 = 0;
      v67 = (sub_1000103A8(v63, v64, v65, v47) != 0) << 30;
      do
      {
        v68 = off_10007ABF0[v66];
        v69 = **(&off_10007AB20 + v66);
        v70 = sub_100010280(v47, v63, v69);
        v71 = sub_100010314(v47, v63, v69);
        v72 = (v68)(v63, v70, v71, v47);
        v73 = 1 << v66;
        if (!v72)
        {
          v73 = 0;
        }

        v67 |= v73;
        ++v66;
      }

      while (v66 != 5);
      v74 = 0;
      v75 = &off_10007AB50;
      v76 = 3;
      do
      {
        v77 = *(v75 - 1);
        v78 = sub_100010280(v47, v63, *v77);
        if (v78)
        {
          v79 = *v75;
          v80 = CFDictionaryGetValue(v78, **v75);
          v81 = CFNumberGetTypeID();
          if (v80 && CFGetTypeID(v80) == v81)
          {
            v82 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            CFDictionaryAddValue(v82, *v79, v80);
          }

          else
          {
            v82 = 0;
          }
        }

        else
        {
          CFNumberGetTypeID();
          v82 = 0;
        }

        if (sub_100010D40(v63, *v77, v82))
        {
          v74 = 1;
        }

        if (v82)
        {
          CFRelease(v82);
        }

        v75 += 2;
        --v76;
      }

      while (v76);
      if (v74)
      {
        v83 = v67 | 0x40;
      }

      else
      {
        v83 = v67;
      }

      if (v195 && CFSetContainsValue(v195, v63))
      {
        v83 |= 1u;
      }

      v84 = v206;
      v61 = v204;
      if (v193 && CFSetContainsValue(v193, v63))
      {
        v83 |= 2u;
        v85 = sub_100010280(v47, v63, kSCEntNetDNS);
        v86 = v200;
        if (v85)
        {
          v86 = 1;
        }

        v200 = v86;
      }

      if ((v83 & 0x40000000) != 0)
      {
        HIDWORD(v206) = 1;
      }

      else
      {
        if (v83)
        {
          v61 = 1;
        }

        v87 = HIDWORD(v206);
        if (v83)
        {
          v87 = 1;
        }

        HIDWORD(v206) = v87;
        if (v83)
        {
          v84 = 1;
        }

        if ((v83 & 2) != 0)
        {
          v61 = 1;
          v200 = 1;
          HIDWORD(v206) = 1;
          v84 = 1;
        }
      }

      if ((v83 & 4) != 0)
      {
        if (qword_1000819F8)
        {
          v88 = CFEqual(qword_1000819F8, v63);
          v89 = v191;
          if (v88)
          {
            v89 = 1;
          }

          v191 = v89;
        }

        v200 = 1;
        v84 = 1;
      }

      if ((v83 & 8) != 0)
      {
        v61 = 1;
      }

      if ((v83 & 0x10) != 0)
      {
        v84 = 1;
      }

      if ((v83 & 0x40) != 0 && (sub_100010FF4(v63, kSCEntNetIPv4) || sub_100010FF4(v63, kSCEntNetIPv6)))
      {
        v84 = 1;
      }

      LODWORD(v206) = v84;
      v62 = v201 + 1;
    }

    while (v201 + 1 != v197);
  }

  v90 = CFDictionaryGetCount(qword_1000819C0);
  v91 = sub_100012838(qword_1000819A0);
  v92 = sub_100012904(qword_1000819A0, v90);
  qword_1000819A0 = v92;
  if (HIDWORD(v206))
  {
    if (qword_100081A20)
    {
      sub_100012AB4(qword_100081A20);
    }

    qword_100081A20 = sub_100012B7C(2, v190);
    sub_100013C6C(qword_100081A20, "IPv4");
    if (qword_100081A28)
    {
      sub_100012AB4(qword_100081A28);
    }

    qword_100081A28 = sub_100012B7C(30, v190);
    sub_100013C6C(qword_100081A28, "IPv6");
    v92 = qword_1000819A0;
LABEL_157:
    valuePtr[0] = 0;
    if (v92)
    {
      *(v92 + 1) = 0;
    }

    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v93 = _os_log_pack_size();
      __chkstk_darwin(v93, v94, v95);
      v96 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    valuePtr[0] = 0;
    if (qword_100081A28)
    {
      v97 = qword_100081A28 + 16;
    }

    else
    {
      v97 = 0;
    }

    v98 = sub_100014050(qword_100081A20, v97, qword_1000819A0, 2, valuePtr, v47, v216);
    v99 = v98;
    if (v98)
    {
      v100 = *v98;
    }

    else
    {
      v100 = 0;
    }

    sub_100014B84(&qword_100081A30, v100, "IPv4");
    sub_100014EE8(qword_100081A30, valuePtr[0], &Mutable);
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v101 = _os_log_pack_size();
      __chkstk_darwin(v101, v102, v103);
      v104 = *__error();
      *_os_log_pack_fill() = 0;
      __SC_log_send();
    }

    valuePtr[0] = 0;
    v105 = sub_100014050(qword_100081A28, v99, qword_1000819A0, 30, valuePtr, v47, v215);
    if (v105)
    {
      v106 = *v105;
    }

    else
    {
      v106 = 0;
    }

    sub_100014B84(&qword_100081A38, v106, "IPv6");
    sub_100016C1C(qword_100081A38, valuePtr[0], &Mutable);
    if (qword_1000819A0)
    {
      sub_100017508(qword_1000819A0);
    }

    if (qword_100081A30 && qword_100081A38)
    {
      v107 = sub_100040118(qword_100081A40, qword_100081A30, kSCEntNetDNS);
      if (v107 <= sub_100040118(qword_100081A48, qword_100081A38, kSCEntNetDNS))
      {
        v108 = qword_100081A30;
      }

      else
      {
        v108 = qword_100081A38;
      }

      v109 = sub_100040118(qword_100081A40, qword_100081A30, kSCEntNetProxies);
      if (v109 <= sub_100040118(qword_100081A48, qword_100081A38, kSCEntNetProxies))
      {
        v110 = qword_100081A30;
      }

      else
      {
        v110 = qword_100081A38;
      }
    }

    else
    {
      if (qword_100081A38)
      {
        v110 = qword_100081A38;
      }

      else
      {
        v110 = qword_100081A30;
      }

      v108 = v110;
    }

    v111 = sub_100014B84(&qword_1000819F8, v108, "DNS");
    if (v111)
    {
      v112 = 1;
    }

    else
    {
      v112 = v206;
    }

    v113 = v191;
    if (v111)
    {
      v113 = 1;
    }

    if (sub_100014B84(&qword_100081A00, v110, "Proxies"))
    {
      v114 = 1;
    }

    else
    {
      v114 = v61;
    }

    v115 = v112 != 0;
    if (!v114 && v112 && G_supplemental_proxies_follow_dns)
    {
      v114 = CFBooleanGetValue(G_supplemental_proxies_follow_dns) != 0;
      v115 = 1;
      v112 = 1;
    }
  }

  else
  {
    if (v206)
    {
      goto LABEL_157;
    }

    v115 = 0;
    v112 = 0;
    v114 = v61;
    v113 = v191;
  }

  v116 = sub_10001775C(v91, qword_1000819A0);
  if (HIDWORD(v206) != 0 || v115 || v186)
  {
    if (qword_1000819A0)
    {
      v117 = mach_absolute_time();
      v118 = qword_1000819A0;
      *(qword_1000819A0 + 32) = v117;
      if (HIDWORD(v206) != 0 || v186)
      {
        LODWORD(valuePtr[0]) = 0;
        LODWORD(v211) = 0;
        sub_100017CB4(v47, valuePtr, &v211);
        v118 = qword_1000819A0;
        v119 = v211;
        *(qword_1000819A0 + 24) = valuePtr[0];
        *(v118 + 28) = v119;
      }

      sub_10001858C(v91, v118, v116);
      v120 = qword_1000819A0;
    }

    else
    {
      v120 = 0;
    }

    v121 = sub_100018900(v120);
    v122 = (v121 | v112) == 0;
  }

  else
  {
    v121 = 0;
    v122 = 1;
  }

  if (v113)
  {
    if (qword_1000819F8 && (v123 = CFDictionaryGetValue(qword_1000819C0, qword_1000819F8)) != 0)
    {
      v124 = CFDictionaryGetValue(v123, kSCEntNetDNS);
    }

    else
    {
      v124 = 0;
    }

    v125 = qword_100081AB0;
    if (qword_100081AB0 == v124)
    {
      v126 = 0;
    }

    else
    {
      v126 = 1;
      if (v124 && qword_100081AB0)
      {
        v126 = CFEqual(qword_100081AB0, v124) == 0;
        goto LABEL_222;
      }
    }

    if (v124)
    {
LABEL_222:
      CFRetain(v124);
      v125 = qword_100081AB0;
    }

    if (v125)
    {
      CFRelease(v125);
    }

    qword_100081AB0 = v124;
    if (v126)
    {
      v121 |= 2u;
      v196 = 1;
      goto LABEL_228;
    }
  }

  v196 = 0;
  v127 = 0;
  if (!v122)
  {
LABEL_228:
    v128 = qword_1000819F8;
    valuePtr[0] = 0;
    v129 = CFDictionaryGetValue(v47, qword_1000819F0);
    v130 = CFDictionaryGetValue(v47, qword_1000819E8);
    if (v128)
    {
      v131 = CFDictionaryGetValue(qword_1000819C0, v128);
      if (v131)
      {
        v131 = CFDictionaryGetValue(v131, kSCEntNetDNS);
      }
    }

    else
    {
      v131 = 0;
    }

    v132 = sub_100018CCC(v131, v128, qword_1000819C0, v190, v129, v130, valuePtr);
    if (v132)
    {
      v133 = valuePtr[0];
      v134 = qword_100081AC0;
      if (qword_100081AC0 == valuePtr[0])
      {
        goto LABEL_237;
      }

      if (valuePtr[0] && qword_100081AC0)
      {
        if (CFEqual(qword_100081AC0, valuePtr[0]))
        {
LABEL_237:
          sub_100010060(Mutable, qword_100081AB8);
          goto LABEL_244;
        }

LABEL_239:
        CFRetain(v133);
        v135 = 0;
        v134 = qword_100081AC0;
        if (qword_100081AC0)
        {
          goto LABEL_240;
        }
      }

      else
      {
        if (valuePtr[0])
        {
          goto LABEL_239;
        }

        v135 = 1;
        if (qword_100081AC0)
        {
LABEL_240:
          CFRelease(v134);
        }
      }

      qword_100081AC0 = v133;
      if (v135)
      {
        v136 = qword_100081AB8;
        sub_100010060(v213, qword_100081AB8);
        CFDictionaryRemoveValue(v214, v136);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v133);
        CFDictionaryRemoveValue(MutableCopy, kSCPropInterfaceName);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSupplementalMatchDomains);
        CFDictionaryRemoveValue(MutableCopy, kSCPropNetDNSSupplementalMatchOrders);
        CFDictionaryRemoveValue(MutableCopy, @"__SCOPED_QUERY__");
        sub_10003EE58(&Mutable, qword_100081AB8, MutableCopy);
        CFRelease(MutableCopy);
      }
    }

LABEL_244:
    if (valuePtr[0])
    {
      CFRelease(valuePtr[0]);
    }

    v138 = v132 == 0;
    v127 = v132 != 0;
    if (!v138)
    {
      v121 |= 2u;
    }
  }

  v194 = v127;
  if (v114)
  {
    if (qword_100081A00)
    {
      v139 = CFDictionaryGetValue(qword_1000819C0, qword_100081A00);
      if (v139)
      {
        v139 = CFDictionaryGetValue(v139, kSCEntNetProxies);
      }
    }

    else
    {
      v139 = 0;
    }

    v141 = sub_10001D02C(v139, qword_1000819C0, v190, v47);
    v142 = qword_100081AC8;
    if (qword_100081AC8 == v141)
    {
      v140 = 1;
      if (qword_100081AC8)
      {
        goto LABEL_266;
      }
    }

    else
    {
      if (v141 && qword_100081AC8)
      {
        if (CFEqual(qword_100081AC8, v141))
        {
          v140 = 1;
          goto LABEL_265;
        }

LABEL_262:
        sub_10003EE58(&Mutable, qword_100081AD0, v141);
      }

      else
      {
        if (v141)
        {
          goto LABEL_262;
        }

        v143 = qword_100081AD0;
        sub_100010060(v213, qword_100081AD0);
        CFDictionaryRemoveValue(v214, v143);
      }

      v140 = 0;
LABEL_265:
      v142 = qword_100081AC8;
      if (qword_100081AC8)
      {
LABEL_266:
        CFRelease(v142);
      }
    }

    qword_100081AC8 = v141;
    if (!v140)
    {
      v121 |= 4u;
    }
  }

  else
  {
    LOBYTE(v140) = 1;
  }

  if (v200)
  {
    v144 = v121 | 0x10;
  }

  else
  {
    v144 = v121;
  }

  if (v198)
  {
    CFRelease(v198);
  }

  CFRelease(v47);
  if (v216)
  {
    CFRelease(v216);
    v216 = 0;
  }

  if (v215)
  {
    CFRelease(v215);
    v215 = 0;
  }

  v205 = v116;
  if (!v144)
  {
    sub_10001E078(&Mutable, a1);
    if (Copy)
    {
      CFRelease(Copy);
    }

    if (v187)
    {
      CFRelease(v187);
    }

    v148 = 0;
    v149 = 1;
    v150 = v91;
LABEL_371:
    v199 = v148;
    if (CFDictionaryGetCount(v214) <= 0 && CFArrayGetCount(v213) <= 0 && CFArrayGetCount(Mutable) < 1)
    {
      if (v200)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          goto LABEL_377;
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
          goto LABEL_377;
        }
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
LABEL_377:
        v182 = _os_log_pack_size();
        __chkstk_darwin(v182, v183, v184);
        v185 = *__error();
        *_os_log_pack_fill() = 0;
        __SC_log_send();
      }
    }

    if ((v149 & 1) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_380;
  }

  v192 = v144;
  v199 = CFStringCreateMutable(0, 0);
  if (v116)
  {
    v145 = qword_1000819A0;
    v146 = sub_1000136F8();
    if (!(v91 | v145))
    {
      goto LABEL_281;
    }

    if (v91 && v145 && (v151 = *(v145 + 16), v151 == *(v91 + 16)))
    {
      if (v151 > 0)
      {
        v152 = (v91 + 40 + 224 * *(v91 + 4));
        v153 = (v145 + 40 + 224 * *(v145 + 4));
        while (!strcmp((v145 + 40 + 112 * *v153), (v91 + 40 + 112 * *v152)))
        {
          ++v153;
          ++v152;
          if (!--v151)
          {
            goto LABEL_281;
          }
        }

        goto LABEL_295;
      }

LABEL_281:
      v207 = v146 != -1;
      v147 = v116;
    }

    else
    {
LABEL_295:
      v147 = v116;
      if (v146 == -1)
      {
        v207 = 0;
      }

      else
      {
        sub_100045A10(v145, v146);
        v207 = 1;
      }
    }

    v154 = 0;
    v202 = (v147 + 10);
    v155 = 1;
    do
    {
      v156 = v155;
      v157 = byte_10006CADC[v154];
      if (v207)
      {
        v158 = 3;
        if (v155)
        {
          v158 = 2;
        }

        v159 = v202;
        if (!v155)
        {
          v159 = v202 + 112 * v147[1];
        }

        v160 = v147[v158];
        if (v160 >= 1)
        {
          do
          {
            sub_100045CEC(v159, v157, v146);
            v159 += 112;
            --v160;
          }

          while (v160);
        }
      }

      v208 = v156;
      first_ifstate = nwi_state_get_first_ifstate();
      if (first_ifstate)
      {
        next = first_ifstate;
        v163 = 0;
        v164 = 0;
        do
        {
          v165 = "?";
          if ((*(next + 16) & 0xE00uLL) <= 0x5FF)
          {
            v165 = *(&off_10007A998 + ((*(next + 16) >> 8) & 0xFLL));
          }

          v166 = inet_ntop(*(next + 32), (next + 36), valuePtr, 0x2Eu);
          if (v163)
          {
            if (!v164)
            {
              v164 = CFStringCreateMutable(0, 0);
            }

            ifname = nwi_ifstate_get_ifname();
            CFStringAppendFormat(v164, 0, @", %s", ifname);
            if (*v165)
            {
              CFStringAppendFormat(v164, 0, @"%s:%s", v165, v166);
            }
          }

          else
          {
            v163 = CFStringCreateMutable(0, 0);
            v168 = nwi_ifstate_get_ifname();
            CFStringAppendFormat(v163, 0, @"%s%s:%s", v168, v165, v166);
          }

          v169 = *(next + 32);
          next = nwi_ifstate_get_next();
        }

        while (next);
        v147 = v205;
        if (v163)
        {
          v170 = 54;
          if (v208)
          {
            v170 = 52;
          }

          CFStringAppendFormat(v199, 0, @" v%c(%@"), v170, v163;
          if (v164)
          {
            if (CFStringGetLength(v164))
            {
              CFStringAppendFormat(v199, 0, @"%@", v164);
            }

            CFStringAppend(v199, @""));
            CFRelease(v163);
          }

          else
          {
            CFStringAppend(v199, @""));
            v164 = v163;
          }

          CFRelease(v164);
        }
      }

      v155 = 0;
      v154 = &_mh_execute_header.magic + 1;
    }

    while ((v208 & 1) != 0);
  }

  if (v194 | v196)
  {
    v171 = v140;
    if (!qword_1000819F8)
    {
      v148 = v199;
      if (!Copy)
      {
        goto LABEL_339;
      }

      goto LABEL_336;
    }

    v172 = sub_100010FF4(qword_1000819F8, kSCEntNetDNS);
    if (Copy)
    {
      v148 = v199;
      if (v172)
      {
        if (!CFEqual(Copy, v172))
        {
          v173 = "!";
          goto LABEL_340;
        }

LABEL_339:
        v173 = "";
        goto LABEL_340;
      }

LABEL_336:
      v173 = "-";
      goto LABEL_340;
    }

    v148 = v199;
    if (!v172)
    {
      goto LABEL_339;
    }

    v173 = "+";
LABEL_340:
    if (v194 && *v173 == 0)
    {
      v173 = "*";
    }

    CFStringAppendFormat(v148, 0, @" DNS%s", v173);
  }

  else
  {
    v148 = v199;
    v171 = v140;
    if (qword_1000819F8)
    {
      CFStringAppend(v199, @" DNS");
    }
  }

  if ((v171 & 1) == 0)
  {
    v150 = v91;
    v174 = v192;
    if (qword_100081A00)
    {
      v175 = sub_100010FF4(qword_100081A00, kSCEntNetProxies);
      if (!v187)
      {
        if (v175)
        {
          v176 = "+";
          goto LABEL_356;
        }

        goto LABEL_355;
      }

      if (v175)
      {
        if (!CFEqual(v187, v175))
        {
          v176 = "!";
LABEL_356:
          CFStringAppendFormat(v148, 0, @" Proxy%s", v176);
          goto LABEL_357;
        }

LABEL_355:
        v176 = "";
        goto LABEL_356;
      }
    }

    else if (!v187)
    {
      goto LABEL_355;
    }

    v176 = "-";
    goto LABEL_356;
  }

  v150 = v91;
  v174 = v192;
  if (qword_100081A00)
  {
    CFStringAppend(v148, @" Proxy");
  }

LABEL_357:
  sub_10001E078(&Mutable, a1);
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (v187)
  {
    CFRelease(v187);
  }

  if (qword_100081AE8 != -1)
  {
    sub_100067F7C();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000401C0;
  block[3] = &unk_10007AB88;
  v210 = v174;
  dispatch_async(qword_100081AF0, block);
  if (!v148)
  {
    v149 = 1;
    goto LABEL_371;
  }

  if (!CFStringGetLength(v148))
  {
    v149 = 0;
    goto LABEL_371;
  }

  if (!qword_100081998)
  {
    qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
  }

  _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v177 = _os_log_pack_size();
    __chkstk_darwin(v177, v178, v179);
    v180 = *__error();
    v181 = _os_log_pack_fill();
    *v181 = 138412290;
    *(v181 + 4) = v199;
    __SC_log_send();
  }

LABEL_379:
  CFRelease(v199);
LABEL_380:
  if (v205)
  {
    free(v205);
  }

  if (v150)
  {
    free(v150);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  if (v213)
  {
    CFRelease(v213);
    v213 = 0;
  }

  if (v214)
  {
    CFRelease(v214);
    v214 = 0;
  }

  sub_10001E3C0();
  sub_10001E4A4();
  sub_10001E5EC();
  sub_10001E658();
}

void sub_10000FCE4()
{
  if (qword_100081950 != -1)
  {
    sub_100067D10();
  }

  v0 = qword_100081958;

  dispatch_sync(v0, &stru_10007A820);
}

const void *sub_10000FD64(CFStringRef theString, void *a2)
{
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, theString, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  v5 = 0;
  if (Count < 4 || (v6 = Count, v5 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 3), CFRetain(v5), !a2) || v6 == 4)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 4);
    CFRetain(ValueAtIndex);
  }

  *a2 = ValueAtIndex;
LABEL_8:
  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  return v5;
}

void sub_10000FE40(__CFSet **a1, void *value)
{
  Mutable = *a1;
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
    *a1 = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void sub_10000FEC8(CFStringRef serviceID, const __CFArray *a2)
{
  for (i = 0; i != 40; i += 8)
  {
    v5 = **(&off_10007AB20 + i);
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, serviceID, v5);
    sub_100010060(a2, NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
    v7 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, v5);
    sub_100010060(a2, v7);
    CFRelease(v7);
  }

  v8 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, kSCEntNetDHCP);
  sub_100010060(a2, v8);
  CFRelease(v8);
  v9 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, serviceID, 0);
  sub_100010060(a2, v9);
  CFRelease(v9);
  v10 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, 0);
  sub_100010060(a2, v10);

  CFRelease(v10);
}

void sub_100010060(const __CFArray *a1, const void *a2)
{
  v5.length = CFArrayGetCount(a1);
  v5.location = 0;
  if (!CFArrayContainsValue(a1, v5, a2))
  {

    CFArrayAppendValue(a1, a2);
  }
}

void sub_100010114(CFStringRef serviceID, const __CFArray *a2)
{
  for (i = 0; i != 48; i += 16)
  {
    NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, **(&off_10007AB48 + i));
    sub_100010060(a2, NetworkServiceEntity);
    CFRelease(NetworkServiceEntity);
  }
}

const void *sub_1000101D0(const void *a1, const void *a2)
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
  v6 = CFDictionaryGetTypeID();
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

const void *sub_100010280(const void *a1, CFStringRef serviceID, CFStringRef entity)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainState, serviceID, entity);
  v5 = sub_1000101D0(a1, NetworkServiceEntity);
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  return v5;
}

const void *sub_100010314(const void *a1, CFStringRef serviceID, CFStringRef entity)
{
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, serviceID, entity);
  v5 = sub_1000101D0(a1, NetworkServiceEntity);
  if (NetworkServiceEntity)
  {
    CFRelease(NetworkServiceEntity);
  }

  return v5;
}

uint64_t sub_1000103A8(__CFString *serviceID, const __CFDictionary *a2, const __CFDictionary *a3, const void *a4)
{
  v56 = 0x1000000;
  v8 = sub_100010314(a4, serviceID, kSCEntNetCommCenter);
  v9 = v8;
  if (v8)
  {
    value = 0;
    valuePtr = 0;
    if (CFDictionaryGetValueIfPresent(v8, kSCPropNetCommCenterAvailable, &value))
    {
      v10 = value;
      TypeID = CFNumberGetTypeID();
      if (v10)
      {
        if (CFGetTypeID(v10) == TypeID && CFNumberGetValue(value, kCFNumberIntType, &valuePtr) && valuePtr < 1)
        {
          a3 = 0;
          v12 = 0;
          v56 = 0x4000000;
LABEL_76:
          v47 = a3 != 0;
          v48 = v12;
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          goto LABEL_82;
        }
      }
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  if (a3)
  {
    v14 = CFDictionaryGetValue(a3, kSCPropNetServicePrimaryRank);
    v15 = CFStringGetTypeID();
    if (v14)
    {
      if (CFGetTypeID(v14) != v15)
      {
        v14 = 0;
      }

      if (v9)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        if (!qword_100081998)
        {
          qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
        }

        _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v17 = _os_log_pack_size();
          v53[1] = v53;
          __chkstk_darwin(v17, v18, v19);
          v20 = *__error();
          v21 = _os_log_pack_fill();
          *v21 = 138412546;
          *(v21 + 4) = serviceID;
          *(v21 + 12) = 2112;
          *(v21 + 14) = v14;
          __SC_log_send();
        }

        v14 = 0;
      }
    }

    v22 = CFDictionaryGetValue(a3, @"IPIsCoupled");
    v23 = CFBooleanGetTypeID();
    if (v22 && CFGetTypeID(v22) == v23 && CFBooleanGetValue(v22))
    {
      v13 = 1;
    }

    a3 = sub_100010AB0(a3, serviceID, kSCDynamicStoreDomainSetup, 0);
    if (a2)
    {
LABEL_28:
      v24 = CFDictionaryGetValue(a2, kSCPropNetServicePrimaryRank);
      v25 = CFStringGetTypeID();
      if (v24 && CFGetTypeID(v24) != v25)
      {
        v24 = 0;
      }

      v26 = CFDictionaryGetValue(a2, @"IPIsCoupled");
      v27 = CFBooleanGetTypeID();
      if (v26 && CFGetTypeID(v26) == v27 && CFBooleanGetValue(v26))
      {
        v13 = 1;
      }

      if (!a3)
      {
        a3 = sub_100010AB0(a2, serviceID, kSCDynamicStoreDomainState, 0);
      }

      if (v13)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v14 = 0;
    if (a2)
    {
      goto LABEL_28;
    }
  }

  v24 = 0;
  if (v13)
  {
LABEL_38:
    v12 = 1;
    goto LABEL_44;
  }

LABEL_41:
  v28 = sub_100010C70(a4, serviceID);
  if (v28)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, v28, kSCEntNetLink);
    v30 = CFDictionaryGetValue(a4, NetworkInterfaceEntity);
    CFRelease(NetworkInterfaceEntity);
    v12 = sub_10003ED9C(v30);
  }

  else
  {
    v12 = 0;
  }

LABEL_44:
  if (v14 | v24)
  {
    LOBYTE(value) = 0;
    LOBYTE(valuePtr) = 0;
    v31 = sub_100040678(v14, &value);
    v32 = sub_100040678(v24, &valuePtr);
    if (value && valuePtr)
    {
      if (v31 <= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31;
      }

      v56 = v33;
      goto LABEL_55;
    }

    if (value)
    {
      v56 = v31;
LABEL_55:
      v34 = 1;
      goto LABEL_57;
    }

    if (valuePtr)
    {
      v56 = v32;
      goto LABEL_55;
    }
  }

  v34 = 0;
LABEL_57:
  v35 = sub_100010C70(a4, serviceID);
  if (v35)
  {
    v36 = v35;
    if (qword_100081A70)
    {
      v37 = CFDictionaryGetValue(qword_100081A70, v35);
      if (v37)
      {
        LODWORD(value) = 0;
        if (CFNumberGetValue(v37, kCFNumberSInt32Type, &value))
        {
          if (value)
          {
            if (value == 1)
            {
              v38 = 0;
            }

            else
            {
              v38 = value << 24;
            }

            if (!v34 || v38 > v56)
            {
              v56 = v38;
              v39 = "Interface";
LABEL_70:
              if (!qword_100081998)
              {
                qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
              }

              _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v40 = _os_log_pack_size();
                __chkstk_darwin(v40, v41, v42);
                v43 = *__error();
                v44 = _os_log_pack_fill();
                v45 = v56;
                v46 = " [coupled]";
                *v44 = 138413314;
                *(v44 + 4) = serviceID;
                if (!v12)
                {
                  v46 = "";
                }

                *(v44 + 12) = 2112;
                *(v44 + 14) = v36;
                *(v44 + 22) = 1024;
                *(v44 + 24) = v45;
                *(v44 + 28) = 2080;
                *(v44 + 30) = v39;
                *(v44 + 38) = 2080;
                *(v44 + 40) = v46;
                __SC_log_send();
              }

              goto LABEL_76;
            }

LABEL_69:
            v39 = "Service";
            goto LABEL_70;
          }
        }
      }
    }

    if (v34)
    {
      goto LABEL_69;
    }
  }

  v47 = a3 != 0;
  v48 = v12;
  if (!a3 && !v34 && !v12)
  {
    return sub_100010D40(serviceID, kSCEntNetService, 0);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v34)
  {
LABEL_82:
    v51 = CFNumberCreate(0, kCFNumberSInt32Type, &v56);
    CFDictionarySetValue(Mutable, @"RankAssertion", v51);
    CFRelease(v51);
    if (!v48)
    {
      goto LABEL_83;
    }

LABEL_86:
    CFDictionarySetValue(Mutable, @"IPIsCoupled", kCFBooleanTrue);
    if (!v47)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

  if (v12)
  {
    goto LABEL_86;
  }

LABEL_83:
  if (v47)
  {
LABEL_87:
    CFDictionarySetValue(Mutable, kSCPropNetServiceServiceIndex, a3);
  }

LABEL_88:
  v50 = sub_100010D40(serviceID, kSCEntNetService, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v50;
}

const void *sub_100010AB0(const __CFDictionary *a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, kSCPropNetServiceServiceIndex);
  TypeID = CFNumberGetTypeID();
  if (!Value)
  {
    return Value;
  }

  if (CFGetTypeID(Value) != TypeID)
  {
    return 0;
  }

  valuePtr = 0;
  if (CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr))
  {
    v9 = valuePtr <= 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v10 = _os_log_pack_size();
      __chkstk_darwin(v10, v11, v12);
      v13 = *__error();
      v14 = _os_log_pack_fill();
      *v14 = 138412802;
      *(v14 + 4) = a3;
      *(v14 + 12) = 2112;
      *(v14 + 14) = a2;
      *(v14 + 22) = 2112;
      *(v14 + 24) = Value;
      __SC_log_send();
    }

    return 0;
  }

  if (a4)
  {
    *a4 = valuePtr;
  }

  return Value;
}

const void *sub_100010C70(const void *a1, const __CFString *a2)
{
  v4 = sub_100010280(a1, a2, kSCEntNetIPv4);
  if (!v4)
  {
    v4 = sub_100010280(a1, a2, kSCEntNetIPv6);
    if (!v4)
    {
      return 0;
    }
  }

  return CFDictionaryGetValue(v4, kSCPropInterfaceName);
}

uint64_t sub_100010D40(void *key, const void *a2, const __CFDictionary *a3)
{
  Value = CFDictionaryGetValue(qword_1000819C0, key);
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v8 = MutableCopy;
  v9 = CFDictionaryGetValue(MutableCopy, a2);
  v10 = v9;
  if (a3)
  {
    if (!v9 || !CFEqual(a3, v9))
    {
      if (byte_1000819B4 == 1)
      {
        sub_100040728(key, a2, @"Changed: old", v10);
        sub_100040728(key, a2, @"Changed: new", a3);
      }

      CFDictionarySetValue(v8, a2, a3);
LABEL_14:
      v11 = 1;
      goto LABEL_16;
    }
  }

  else if (v9)
  {
    if (byte_1000819B4 == 1)
    {
      sub_100040728(key, a2, @"Removed:", v9);
    }

    CFDictionaryRemoveValue(v8, a2);
    goto LABEL_14;
  }

  v11 = 0;
LABEL_16:
  if (!CFDictionaryGetCount(v8))
  {
    CFDictionaryRemoveValue(qword_1000819C0, key);
    if (!v8)
    {
      return v11;
    }

    goto LABEL_18;
  }

  CFDictionarySetValue(qword_1000819C0, key, v8);
  if (v8)
  {
LABEL_18:
    CFRelease(v8);
  }

  return v11;
}

uint64_t sub_100010EE8(void *key, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (!a2)
  {
    v8 = sub_100010D40(key, kSCEntNetIPv4, 0);
LABEL_8:
    CFDictionaryRemoveValue(qword_100081A40, key);
    return v8;
  }

  v6 = sub_100010FF4(key, kSCEntNetService);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"RankAssertion");
  }

  else
  {
    Value = 0;
  }

  v9 = sub_100040BD0(2, a2, a3, Value);
  v8 = sub_100010D40(key, kSCEntNetIPv4, v9);
  if (!v9)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
  return v8;
}

const void *sub_100010FF4(void *key, const void *a2)
{
  if (!qword_1000819C0)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(qword_1000819C0, key);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, a2);
}

uint64_t sub_1000110A0(void *key, const __CFDictionary *a2, const __CFDictionary *a3)
{
  if (!a2)
  {
    v8 = 0;
LABEL_9:
    v11 = 1;
    goto LABEL_10;
  }

  v6 = sub_100010FF4(key, kSCEntNetService);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"RankAssertion");
  }

  else
  {
    Value = 0;
  }

  v9 = sub_100040BD0(30, a2, a3, Value);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = sub_10001C324(v9);
  v11 = 0;
  if (v10)
  {
LABEL_12:
    v13 = v10;
LABEL_15:
    CFRetain(v13);
    v14 = kSCEntNetIPv6;
    goto LABEL_16;
  }

LABEL_10:
  v12 = sub_100010FF4(key, kSCEntNetIPv4);
  if (v12)
  {
    v10 = sub_10001C324(v12);
    if (v10)
    {
      goto LABEL_12;
    }
  }

  v14 = kSCEntNetIPv6;
  v15 = sub_100010FF4(key, kSCEntNetIPv6);
  if (v15)
  {
    v13 = sub_10001C324(v15);
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:
  sub_1000112A8(key, v8);
  v16 = sub_100010D40(key, v14, v8);
  v17 = v16;
  if (v13)
  {
    if (v16)
    {
      BOOLean = 0;
      if (v11)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
        if (a2)
        {
          if (CFDictionaryGetValueIfPresent(a2, kSCPropNetIPv6PerformPLATDiscovery, &BOOLean))
          {
            v19 = BOOLean;
            TypeID = CFBooleanGetTypeID();
            if (v19)
            {
              if (CFGetTypeID(v19) == TypeID && CFBooleanGetValue(BOOLean))
              {
                v18 = 0;
              }
            }
          }
        }
      }

      sub_10003FD7C(v18, v13);
    }

    CFRelease(v13);
  }

  if (v11)
  {
    CFDictionaryRemoveValue(qword_100081A48, key);
  }

  else
  {
    CFRelease(v8);
  }

  return v17;
}

uint64_t sub_1000112A8(void *a1, const __CFDictionary *a2)
{
  v43 = 0;
  v42 = 0;
  v3 = sub_100010FF4(a1, kSCEntNetIPv6);
  v4 = sub_100011820(v3, &v43, &v42);
  result = sub_100011820(a2, &v43, &v42);
  v6 = v42;
  v7 = v43;
  if (v42)
  {
    v8 = v43 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return result;
  }

  v9 = result;
  result = sub_1000172E8();
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  v10 = result;
  if (v4)
  {
    if (v9)
    {
      if (*v4 == *v9 && *(v4 + 1) == v9[1])
      {
        goto LABEL_25;
      }
    }

    if ((sub_100038DC4(result, v7, v4) & 0x80000000) != 0)
    {
      if (!qword_100081998)
      {
        qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
      }

      *__error();
      _SC_syslog_os_log_mapping();
      *__error();
      result = __SC_log_enabled();
      if (result)
      {
        v18 = _os_log_pack_size();
        v41 = &v41;
        __chkstk_darwin(v18, v19, v20);
        v21 = *__error();
        v22 = _os_log_pack_fill();
        v23 = inet_ntop(30, v4, v44, 0x2Eu);
        v24 = __error();
        v25 = strerror(*v24);
        *v22 = 138412802;
        *(v22 + 4) = v6;
        *(v22 + 12) = 2080;
        *(v22 + 14) = v23;
        *(v22 + 22) = 2080;
        *(v22 + 24) = v25;
        *__error();
        goto LABEL_23;
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
        v12 = _os_log_pack_size();
        __chkstk_darwin(v12, v13, v14);
        v15 = *__error();
        v16 = _os_log_pack_fill();
        v17 = inet_ntop(30, v4, v44, 0x2Eu);
        *v16 = 138412546;
        *(v16 + 4) = v6;
        *(v16 + 12) = 2080;
        *(v16 + 14) = v17;
LABEL_23:
        result = __SC_log_send();
      }
    }

    if (!v9)
    {
      return result;
    }

LABEL_25:
    if (*v4 == *v9 && *(v4 + 1) == v9[1])
    {
      return result;
    }

    goto LABEL_29;
  }

  if (!v9)
  {
    return result;
  }

LABEL_29:
  if ((sub_100038D44(v10, v7, v9, 0) & 0x80000000) != 0)
  {
    if (!qword_100081998)
    {
      qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
    }

    *__error();
    _SC_syslog_os_log_mapping();
    *__error();
    result = __SC_log_enabled();
    if (result)
    {
      v33 = _os_log_pack_size();
      __chkstk_darwin(v33, v34, v35);
      v36 = *__error();
      v37 = _os_log_pack_fill();
      v38 = inet_ntop(30, v9, v44, 0x2Eu);
      v39 = __error();
      v40 = strerror(*v39);
      *v37 = 138412802;
      *(v37 + 4) = v6;
      *(v37 + 12) = 2080;
      *(v37 + 14) = v38;
      *(v37 + 22) = 2080;
      *(v37 + 24) = v40;
      *__error();
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
      v27 = _os_log_pack_size();
      __chkstk_darwin(v27, v28, v29);
      v30 = *__error();
      v31 = _os_log_pack_fill();
      v32 = inet_ntop(30, v9, v44, 0x2Eu);
      *v31 = 138412546;
      *(v31 + 4) = v6;
      *(v31 + 12) = 2080;
      *(v31 + 14) = v32;
      return __SC_log_send();
    }
  }

  return result;
}

const UInt8 *sub_100011820(const __CFDictionary *a1, _DWORD *a2, const void **a3)
{
  v6 = sub_1000118D0(a1);
  if (!v6 || (*(v6 + 4) & 3) != 2)
  {
    return 0;
  }

  v7 = v6 + 48;
  if (!*a2)
  {
    *a2 = *(v6 + 4);
  }

  if (!*a3)
  {
    *a3 = sub_10001C324(a1);
  }

  return v7;
}

const UInt8 *sub_1000118D0(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Routes");
  if (!Value)
  {
    return 0;
  }

  return CFDataGetBytePtr(Value);
}

uint64_t sub_100011964(__CFString *a1, const __CFDictionary *a2, const __CFDictionary *a3, const void *a4)
{
  v46[7] = kSCPropNetDNSSearchDomains;
  v47 = 0;
  v48 = 0;
  v49 = kSCPropNetDNSSortList;
  v50 = 0;
  v51 = 0;
  v52 = kSCPropNetDNSSupplementalMatchDomains;
  v53 = 1;
  v54 = 1;
  v55 = kSCPropNetDNSSupplementalMatchOrders;
  v56 = 0;
  v57 = 1;
  v46[0] = kSCPropNetDNSDomainName;
  v46[1] = kSCPropNetDNSOptions;
  v46[2] = kSCPropNetDNSSearchOrder;
  v46[3] = kSCPropNetDNSServerPort;
  v46[4] = kSCPropNetDNSServerTimeout;
  v46[5] = kSCPropNetDNSServiceIdentifier;
  v46[6] = kSCPropNetDNSSupplementalMatchDomainsNoSearch;
  if (!(a2 | a3))
  {
    Mutable = 0;
    goto LABEL_78;
  }

  v43 = kSCPropNetDNSServiceIdentifier;
  serviceID = a1;
  v8 = sub_100010FF4(a1, kSCEntNetIPv4);
  v9 = sub_1000118D0(v8);
  if (v9 && (*(v9 + 4) & 3) == 2)
  {
    v10 = sub_100010314(a4, serviceID, kSCEntNetIPv4) != 0;
    v11 = sub_10001C324(v8);
    v12 = 1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v13 = sub_100010FF4(serviceID, kSCEntNetIPv6);
  v14 = sub_1000118D0(v13);
  if (v14 && (*(v14 + 4) & 3) == 2)
  {
    v10 = v10 || sub_100010314(a4, serviceID, kSCEntNetIPv6) != 0;
    v12 |= 2u;
    if (!v11)
    {
      v11 = sub_10001C324(v13);
      if (v10)
      {
        goto LABEL_14;
      }

LABEL_16:
      v15 = sub_100010314(a4, serviceID, kSCEntNetCommCenter) != 0;
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_14:
  v15 = 1;
LABEL_17:
  if (v12)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0;
  }

  if (!a2 && !v12)
  {
    Mutable = 0;
    goto LABEL_23;
  }

  if (a2)
  {
    value = 0;
    v20 = CFDictionaryGetValueIfPresent(a2, kSCPropNetDNSConfirmedServiceID, &value) && (v18 = value, TypeID = CFStringGetTypeID(), v18) && CFGetTypeID(v18) == TypeID && CFEqual(serviceID, value) != 0;
    v21 = v11;
  }

  else
  {
    v21 = v11;
    v20 = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v22 = sub_100042F38(a2, kSCPropNetDNSServerAddresses);
  if (v12)
  {
    v23 = sub_100042F38(a3, kSCPropNetDNSServerAddresses);
    v24 = v22;
    v11 = v21;
    sub_100042BAC(Mutable, v24, v23, v15, v20, v12, v21);
  }

  else
  {
    sub_100042BAC(Mutable, v22, 0, 0, v20, 3, 0);
    v11 = v21;
  }

  v25 = &v48;
  v26 = 4;
  do
  {
    v27 = *(v25 - 12);
    v28 = *(v25 - 1);
    v29 = *v25;
    v25 += 16;
    sub_100042FE8(Mutable, v27, a2, v16, v28, v29);
    --v26;
  }

  while (v26);
  do
  {
    v30 = *(v46 + v26);
    if (v16)
    {
      v31 = CFDictionaryGetValue(v16, *(v46 + v26));
      v32 = sub_100043710(v31, 0);
      if (!a2)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v32 = 0;
      if (!a2)
      {
        goto LABEL_44;
      }
    }

    if (!v32)
    {
      v33 = CFDictionaryGetValue(a2, v30);
      v32 = sub_100043710(v33, 0);
    }

LABEL_44:
    if (v32)
    {
      CFDictionarySetValue(Mutable, v30, v32);
      CFRelease(v32);
    }

    v26 += 8;
  }

  while (v26 != 56);
  v17 = v12;
  if (v12)
  {
    goto LABEL_56;
  }

  if (!CFDictionaryContainsKey(Mutable, kSCPropNetDNSSupplementalMatchDomains))
  {
    v34 = CFDictionaryContainsKey(Mutable, v43);
    if (!a2 || !v34 || v11)
    {
LABEL_23:
      v17 = 0;
      if (!v11)
      {
        goto LABEL_77;
      }

LABEL_71:
      CFRetain(v11);
      v41 = sub_100010D40(serviceID, kSCEntNetDNS, Mutable);
      if (v41 && (v17 & 2) != 0)
      {
        sub_10003FD7C(1, v11);
      }

      CFRelease(v11);
      if (Mutable)
      {
        goto LABEL_79;
      }

      return v41;
    }

LABEL_55:
    v11 = CFDictionaryGetValue(a2, kSCPropInterfaceName);
    goto LABEL_56;
  }

  CFDictionaryRemoveValue(Mutable, kSCPropNetDNSDomainName);
  CFDictionaryRemoveValue(Mutable, kSCPropNetDNSSearchDomains);
  CFDictionaryRemoveValue(Mutable, kSCPropNetDNSSearchOrder);
  CFDictionaryRemoveValue(Mutable, kSCPropNetDNSSortList);
  if (a2 && !v11)
  {
    goto LABEL_55;
  }

LABEL_56:
  if (!CFDictionaryGetCount(Mutable))
  {
    v40 = 0;
    MutableCopy = Mutable;
    if (Mutable)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  if (v11)
  {
    CFDictionarySetValue(Mutable, kSCPropInterfaceName, v11);
  }

  if (!dword_1000819B0 || (v35 = CFDictionaryGetValue(Mutable, kSCPropNetDNSDomainName), v36 = CFStringGetTypeID(), !v35) || CFGetTypeID(v35) != v36)
  {
LABEL_70:
    if (!v11)
    {
      goto LABEL_77;
    }

    goto LABEL_71;
  }

  v37 = CFDictionaryGetValue(Mutable, kSCPropNetDNSSearchDomains);
  v38 = CFArrayGetTypeID();
  if (v37 && CFGetTypeID(v37) == v38)
  {
    v58.length = CFArrayGetCount(v37);
    v58.location = 0;
    v17 = v12;
    if (CFArrayContainsValue(v37, v58, v35))
    {
      goto LABEL_70;
    }

    MutableCopy = CFArrayCreateMutableCopy(0, 0, v37);
    CFArrayAppendValue(MutableCopy, v35);
    CFDictionarySetValue(Mutable, kSCPropNetDNSSearchDomains, MutableCopy);
    v40 = Mutable;
    if (!MutableCopy)
    {
      goto LABEL_70;
    }

LABEL_68:
    CFRelease(MutableCopy);
LABEL_69:
    Mutable = v40;
    goto LABEL_70;
  }

  v17 = v12;
  if (v11)
  {
    goto LABEL_71;
  }

LABEL_77:
  a1 = serviceID;
LABEL_78:
  v41 = sub_100010D40(a1, kSCEntNetDNS, Mutable);
  if (Mutable)
  {
LABEL_79:
    CFRelease(Mutable);
  }

  return v41;
}

uint64_t sub_100011FB0(__CFString *key, const __CFDictionary *a2, const __CFDictionary *a3, const void *a4)
{
  number[1] = kSCPropNetProxiesFTPEnable;
  number[2] = kSCPropNetProxiesFTPProxy;
  v53[0] = kSCPropNetProxiesFTPPort;
  v53[1] = kSCPropNetProxiesGopherEnable;
  v53[2] = kSCPropNetProxiesGopherProxy;
  v53[3] = kSCPropNetProxiesGopherPort;
  v53[4] = kSCPropNetProxiesHTTPEnable;
  v53[5] = kSCPropNetProxiesHTTPProxy;
  v53[6] = kSCPropNetProxiesHTTPPort;
  v53[7] = kSCPropNetProxiesHTTPSEnable;
  v53[8] = kSCPropNetProxiesHTTPSProxy;
  v53[9] = kSCPropNetProxiesHTTPSPort;
  v53[10] = kSCPropNetProxiesRTSPEnable;
  v53[11] = kSCPropNetProxiesRTSPProxy;
  v53[12] = kSCPropNetProxiesRTSPPort;
  v53[13] = kSCPropNetProxiesSOCKSEnable;
  v53[14] = kSCPropNetProxiesSOCKSProxy;
  v53[15] = kSCPropNetProxiesSOCKSPort;
  v53[16] = kSCPropNetProxiesTransportConverterEnable;
  v53[17] = kSCPropNetProxiesTransportConverterProxy;
  v53[18] = kSCPropNetProxiesTransportConverterPort;
  v53[19] = kSCPropNetProxiesProxyAutoConfigEnable;
  v5 = kSCPropNetProxiesProxyAutoConfigURLString;
  v53[20] = kSCPropNetProxiesProxyAutoConfigURLString;
  v53[21] = kSCPropNetProxiesProxyAutoConfigJavaScript;
  v53[23] = 0;
  v53[24] = 0;
  v53[22] = kSCPropNetProxiesProxyAutoDiscoveryEnable;
  if (!(a2 | a3))
  {
    goto LABEL_61;
  }

  v6 = a3;
  v8 = sub_100010FF4(key, kSCEntNetIPv4);
  v9 = sub_1000118D0(v8);
  if (v9 && (*(v9 + 4) & 3) == 2)
  {
    value = sub_10001C324(v8);
    v10 = 0;
  }

  else
  {
    value = 0;
    v10 = 1;
  }

  v11 = sub_100010FF4(key, kSCEntNetIPv6);
  v12 = sub_1000118D0(v11);
  if (v12 && (*(v12 + 4) & 3) == 2)
  {
    if (!value)
    {
      value = sub_10001C324(v11);
    }
  }

  else
  {
    if (a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10;
    }

    if (v10)
    {
      v6 = 0;
    }

    if (v13)
    {
      goto LABEL_61;
    }
  }

  if (!a2 || !v6)
  {
    if (v6)
    {
      v26 = v6;
    }

    else
    {
      if (!a2)
      {
        goto LABEL_61;
      }

      v26 = a2;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v26);
    if (MutableCopy)
    {
      goto LABEL_44;
    }

    goto LABEL_61;
  }

  v14 = kSCPropNetProxiesSupplementalMatchDomains;
  v15 = kSCPropNetProxiesSupplementalMatchOrders;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
  sub_100042FE8(MutableCopy, v14, a2, v6, 1, 1);
  sub_100042FE8(MutableCopy, v15, a2, v6, 0, 1);
  v17 = CFDictionaryCreateMutableCopy(0, 0, v6);
  v18 = v53;
  v19 = 9;
  do
  {
    v20 = *(v18 - 2);
    if (CFDictionaryContainsKey(v17, v20))
    {
      CFDictionaryRemoveValue(MutableCopy, v20);
      v21 = *(v18 - 1);
      if (v21)
      {
        CFDictionaryRemoveValue(MutableCopy, v21);
      }

      v22 = *v18;
      if (*v18)
      {
        v23 = MutableCopy;
LABEL_29:
        CFDictionaryRemoveValue(v23, v22);
      }
    }

    else if (CFDictionaryContainsKey(a2, v20) || (v25 = *(v18 - 1)) != 0 && CFDictionaryContainsKey(a2, v25) || *v18 && CFDictionaryContainsKey(a2, *v18))
    {
      CFDictionaryRemoveValue(v17, v20);
      v24 = *(v18 - 1);
      if (v24)
      {
        CFDictionaryRemoveValue(v17, v24);
      }

      v22 = *v18;
      if (*v18)
      {
        v23 = v17;
        goto LABEL_29;
      }
    }

    v18 += 3;
    --v19;
  }

  while (v19);
  CFDictionaryApplyFunction(v17, sub_1000437D0, MutableCopy);
  CFRelease(v17);
  v5 = kSCPropNetProxiesProxyAutoConfigURLString;
  if (!MutableCopy)
  {
    goto LABEL_61;
  }

LABEL_44:
  if (CFDictionaryGetCount(MutableCopy))
  {
    if (value)
    {
      CFDictionarySetValue(MutableCopy, kSCPropInterfaceName, value);
    }

    number[0] = 0;
    valuePtr = 0;
    if (CFDictionaryGetValueIfPresent(MutableCopy, kSCPropNetProxiesProxyAutoDiscoveryEnable, number) && (v27 = number[0], TypeID = CFNumberGetTypeID(), v27) && CFGetTypeID(v27) == TypeID)
    {
      v29 = number[0];
      if (!CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr))
      {
LABEL_87:
        valuePtr = 0;
        if (!v29)
        {
LABEL_86:
          v47 = sub_100010D40(key, kSCEntNetProxies, MutableCopy);
          CFRelease(MutableCopy);
          return v47;
        }

LABEL_85:
        number[0] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(MutableCopy, kSCPropNetProxiesProxyAutoDiscoveryEnable, number[0]);
        CFRelease(number[0]);
        goto LABEL_86;
      }
    }

    else
    {
      v29 = 0;
    }

    if (!valuePtr)
    {
      goto LABEL_84;
    }

    v50 = 0;
    v30 = CFDictionaryGetValue(MutableCopy, kSCPropNetProxiesProxyAutoConfigEnable);
    number[0] = v30;
    v31 = CFNumberGetTypeID();
    if (v30 && CFGetTypeID(v30) == v31 && CFNumberGetValue(number[0], kCFNumberIntType, &v50))
    {
      if (!v50)
      {
        goto LABEL_70;
      }

      v32 = CFDictionaryGetValue(MutableCopy, v5);
      if (v32)
      {
        v33 = v32;
        v34 = CFStringGetTypeID();
LABEL_65:
        if (CFGetTypeID(v33) == v34 && CFStringGetLength(v33))
        {
          if (v50)
          {
            goto LABEL_87;
          }

LABEL_70:
          v36 = sub_100010280(a4, key, kSCEntNetDHCP);
          if (v36)
          {
            OptionData = DHCPInfoGetOptionData(v36, 0xFCu);
            if (OptionData)
            {
              v38 = OptionData;
              BytePtr = CFDataGetBytePtr(OptionData);
              Length = CFDataGetLength(v38);
              if (Length >= 1)
              {
                v41 = Length;
                while (!BytePtr[v41 - 1])
                {
                  if (v41-- <= 1)
                  {
                    goto LABEL_82;
                  }
                }

                v43 = CFURLCreateWithBytes(0, BytePtr, v41, 0x8000100u, 0);
                if (v43)
                {
                  v44 = v43;
                  v45 = CFURLGetString(v43);
                  if (v45)
                  {
                    v46 = v45;
                    CFRetain(v45);
                    CFRelease(v44);
                    goto LABEL_83;
                  }

                  CFRelease(v44);
                }
              }
            }
          }

LABEL_82:
          v46 = sub_100043838();
          if (!v46)
          {
            goto LABEL_87;
          }

LABEL_83:
          v50 = 1;
          number[0] = CFNumberCreate(0, kCFNumberIntType, &v50);
          CFDictionarySetValue(MutableCopy, kSCPropNetProxiesProxyAutoConfigEnable, number[0]);
          CFRelease(number[0]);
          CFDictionarySetValue(MutableCopy, v5, v46);
          CFRelease(v46);
LABEL_84:
          if (!v29)
          {
            goto LABEL_86;
          }

          goto LABEL_85;
        }
      }

      else
      {
        v33 = CFDictionaryGetValue(MutableCopy, kSCPropNetProxiesProxyAutoConfigJavaScript);
        v34 = CFStringGetTypeID();
        if (v33)
        {
          goto LABEL_65;
        }
      }
    }

    v50 = 0;
    goto LABEL_70;
  }

  CFRelease(MutableCopy);
LABEL_61:

  return sub_100010D40(key, kSCEntNetProxies, 0);
}

uint64_t sub_1000126F0(__CFString *serviceID, int a2, int a3, const void *a4)
{
  v5 = kSCEntNetCommCenter;
  v6 = sub_100010280(a4, serviceID, kSCEntNetCommCenter);
  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"AvailableProtocols");
    TypeID = CFNumberGetTypeID();
    if (Value && CFGetTypeID(Value) == TypeID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, @"AvailableProtocols", Value);
      v10 = sub_100010D40(serviceID, v5, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return v10;
    }
  }

  else
  {
    CFNumberGetTypeID();
  }

  return sub_100010D40(serviceID, v5, 0);
}

void *sub_100012838(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = 4 * a1[1] + 224 * a1[1];
  v3 = malloc_type_malloc(v2 + 40, 0x10000404FC79BA4uLL);
  if (!v3)
  {
    return 0;
  }

  return memcpy(v3, a1, v2 + 40);
}

_DWORD *sub_100012904(_DWORD *a1, unsigned int a2)
{
  if (!a1 && !a2)
  {
    return 0;
  }

  if (a1 && a1[1] >= a2)
  {
    return a1;
  }

  v5 = 4 * a2 + 224 * a2;
  v4 = malloc_type_malloc(v5 + 40, 0x10000404FC79BA4uLL);
  bzero(v4, v5 + 40);
  *v4 = 538379777;
  v4[1] = a2;
  if (a1)
  {
    v6 = a1[3];
    v4[3] = v6;
    if (v6 >= 1)
    {
      memcpy(&v4[28 * a2 + 10], &a1[28 * a1[1] + 10], 112 * v6);
    }

    v7 = a1[2];
    v4[2] = v7;
    if (v7 <= 0)
    {
      v8 = v4[1];
      v9 = v8 - a1[1];
    }

    else
    {
      memcpy(v4 + 10, a1 + 10, 112 * v7);
      v8 = v4[1];
      v9 = v8 - a1[1];
      v10 = v4 + 16;
      do
      {
        if (*v10)
        {
          *v10 += v9;
        }

        v10 += 28;
        LODWORD(v7) = v7 - 1;
      }

      while (v7);
    }

    v11 = v4[3];
    if (v11 >= 1)
    {
      v12 = &v4[28 * v8 + 16];
      do
      {
        if (*v12)
        {
          *v12 -= v9;
        }

        v12 += 28;
        --v11;
      }

      while (v11);
    }

    sub_100017508(v4);
    free(a1);
  }

  else
  {
    *(v4 + 1) = 0;
  }

  return v4;
}

void sub_100012AB4(CFTypeRef *a1)
{
  if (*(a1 + 1) >= 1)
  {
    v2 = 0;
    v3 = a1 + 15;
    do
    {
      v4 = *(v3 - 13);
      if (v4)
      {
        CFRelease(v4);
        *(v3 - 13) = 0;
      }

      v5 = *(v3 - 12);
      if (v5)
      {
        CFRelease(v5);
        *(v3 - 12) = 0;
      }

      if (*v3)
      {
        CFRelease(*v3);
        *v3 = 0;
      }

      ++v2;
      v3 += 14;
    }

    while (v2 < *(a1 + 1));
  }

  free(a1);
}

void *sub_100012B7C(int a1, const __CFArray *a2)
{
  Count = CFDictionaryGetCount(qword_1000819C0);
  v5 = Count;
  if (!Count)
  {
    return 0;
  }

  v9[0] = a1;
  v11 = 0;
  v6 = &qword_100081A40;
  if (a1 != 2)
  {
    v6 = &qword_100081A48;
  }

  v13 = *v6;
  v7 = malloc_type_malloc(112 * Count + 16, 0x10E0040FB664607uLL);
  *v7 = a1;
  v7[1] = 0;
  v7[2] = v5;
  v9[1] = v5;
  v12 = v7;
  v10 = a2;
  if (a2)
  {
    v11 = CFArrayGetCount(a2);
  }

  else
  {
    v10 = 0;
  }

  CFDictionaryApplyFunction(qword_1000819C0, sub_100012C98, v9);
  result = v12;
  if (!*(v12 + 1))
  {
    sub_100012AB4(v12);
    return 0;
  }

  return result;
}

uint64_t sub_100012C98(uint64_t a1, CFDictionaryRef theDict, uint64_t a3)
{
  v6 = &kSCEntNetIPv4;
  if (*a3 != 2)
  {
    v6 = &kSCEntNetIPv6;
  }

  result = CFDictionaryGetValue(theDict, *v6);
  if (result)
  {
    v8 = result;
    v9 = sub_1000118D0(result);
    result = CFDictionaryGetValue(v8, @"Service");
    if (v9 && result != 0)
    {
      v11 = result;
      result = CFDictionaryGetValue(result, kSCPropInterfaceName);
      if (result)
      {
        v12 = result;
        result = CFEqual(result, @"lo0");
        if (!result)
        {
          v36 = 0u;
          memset(v35, 0, sizeof(v35));
          v33 = 0u;
          v34 = 0u;
          v32 = 0u;
          if (CFStringGetCString(v12, &v33, 16, 0x8000100u))
          {
            *&v32 = a1;
            if ((*(v9 + 4) & 2) == 0)
            {
              DWORD1(v35[0]) = 1;
            }

            Value = CFDictionaryGetValue(theDict, kSCEntNetService);
            v14 = sub_10001304C(Value, *(a3 + 8), *(a3 + 16), v32);
            v15 = *(v9 + 6);
            if (*a3 == 2)
            {
              HIDWORD(v35[0]) = *(v9 + 11);
            }

            else
            {
              *(v35 + 12) = *(v9 + 4);
            }

            v21 = v15 & 0xFF000000;
            if (dword_100081A68 && !(v33 ^ 0x7070 | BYTE2(v33) ^ 0x70))
            {
              v21 = 0;
            }

            DWORD2(v34) = v21 | v14 & 0xFFFFFF;
            if (!CFStringHasPrefix(v12, @"stf") && !CFStringHasPrefix(v12, @"gif"))
            {
              if (sub_100013248(v32))
              {
                v23 = 0;
                v22 = 1;
                goto LABEL_26;
              }

              v30 = 0;
              if (*a3 == 2)
              {
                v29 = 30;
              }

              else
              {
                v29 = 2;
              }

              if (!sub_1000132B8(theDict, v29, &v30) || v30 == v15)
              {
                v23 = 0;
                v22 = byte_100081A78 == 0;
                goto LABEL_26;
              }
            }

            v22 = 0;
            v23 = 1;
LABEL_26:
            *(&v32 + 1) = v12;
            v24 = sub_100013354(&v33);
            HIDWORD(v34) = v23;
            LODWORD(v35[0]) = v22;
            LODWORD(v34) = v24;
            DWORD1(v34) = sub_1000134F8(&v33, v24);
            v25 = *(a3 + 32);
            v26 = v32;
            valuePtr = DWORD2(v34);
            v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
            if (v27)
            {
              v28 = v27;
              CFDictionarySetValue(v25, v26, v27);
              CFRelease(v28);
            }

            *(&v36 + 1) = sub_1000438CC(v11);
            return sub_100013A9C(*(a3 + 24), &v32);
          }

          if (!qword_100081998)
          {
            qword_100081998 = os_log_create("com.apple.SystemConfiguration", "IPMonitor");
          }

          _SC_syslog_os_log_mapping();
          result = __SC_log_enabled();
          if (result)
          {
            v16 = _os_log_pack_size();
            __chkstk_darwin(v16, v17, v18);
            v19 = *__error();
            v20 = _os_log_pack_fill();
            *v20 = 136315394;
            *(v20 + 4) = "elect_ip";
            *(v20 + 12) = 2112;
            *(v20 + 14) = v12;
            return __SC_log_send();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001304C(const __CFDictionary *a1, const __CFArray *a2, uint64_t a3, const void *a4)
{
  v19 = 0xFFFFFF;
  v7 = sub_100010AB0(a1, a4, &stru_10007C038, &v19);
  if (v7)
  {
    v8 = v7;
    v19 += a3;
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
      v14 = v19;
      *v13 = 138412802;
      *(v13 + 4) = a4;
      *(v13 + 12) = 2112;
      *(v13 + 14) = v8;
      *(v13 + 22) = 1024;
      *(v13 + 24) = v14;
      __SC_log_send();
    }
  }

  else if (a3 >= 1 && a2 && a4)
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v15);
      TypeID = CFStringGetTypeID();
      if (ValueAtIndex)
      {
        if (CFGetTypeID(ValueAtIndex) == TypeID && CFEqual(a4, ValueAtIndex))
        {
          break;
        }
      }

      if (a3 == ++v15)
      {
        return v19;
      }
    }

    return (v15 + 1);
  }

  return v19;
}