void sub_10000114C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained parseReceivedData:*(*(a1 + 32) + 72)];
    WeakRetained = v3;
  }
}

void sub_100001304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100001324(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained resultCodeFromError:v10];
    if (v13)
    {
      v14 = v13;
      v15 = v12;
LABEL_18:
      [v15 sendResponseCode:v14 dictionary:0];
      goto LABEL_19;
    }

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v9 statusCode];
        v18 = v16 == 200 || v16 == 302;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = [v8 length];
    v20 = sub_100002A8C();
    v21 = _SC_syslog_os_log_mapping();
    if (v19 > 0x20000)
    {
      if (os_log_type_enabled(v20, v21))
      {
        v25 = 138412290;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v20, v21, "%@ authentication poll request was responded with too big data", &v25, 0xCu);
      }

      v15 = v12;
      v14 = 4;
      goto LABEL_18;
    }

    v22 = v20;
    if (os_log_type_enabled(v22, v21))
    {
      if (v18)
      {
        v23 = "successful";
      }

      else
      {
        v23 = "unsuccessful";
      }

      [v12 url];
      v25 = 136315650;
      v26 = v23;
      v27 = 2114;
      v28 = v9;
      v30 = v29 = 2114;
      v24 = v30;
      _os_log_impl(&_mh_execute_header, v22, v21, "authentication poll request received %s response %{public}@ for %{public}@", &v25, 0x20u);
    }

    if (v18)
    {
      ++*(*(a1 + 32) + 8);
      objc_storeStrong((*(a1 + 32) + 72), a2);
      [v12 handleAuthReply];
    }
  }

LABEL_19:
}

void sub_10000168C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = sub_100002A8C();
    v4 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v3, v4))
    {
      v9 = 138412290;
      v10 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v3, v4, "%@ starting authentication poll", &v9, 0xCu);
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = 0;

    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    [WeakRetained poll];
  }
}

void sub_100001A80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001AA0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = WeakRetained;
  if (WeakRetained)
  {
    v13 = [WeakRetained resultCodeFromError:v10];
    if (v13)
    {
      v14 = v13;
      v15 = v12;
LABEL_18:
      [v15 sendResponseCode:v14 dictionary:0];
      goto LABEL_19;
    }

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v9 statusCode];
        v18 = v16 == 200 || v16 == 302;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = [v8 length];
    v20 = sub_100002A8C();
    v21 = _SC_syslog_os_log_mapping();
    if (v19 > 0x20000)
    {
      if (os_log_type_enabled(v20, v21))
      {
        v25 = 138412290;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v20, v21, "%@ authentication request was responded with too big data", &v25, 0xCu);
      }

      v15 = v12;
      v14 = 4;
      goto LABEL_18;
    }

    v22 = v20;
    if (os_log_type_enabled(v22, v21))
    {
      if (v18)
      {
        v23 = "successful";
      }

      else
      {
        v23 = "unsuccessful";
      }

      [v12 url];
      v25 = 136315650;
      v26 = v23;
      v27 = 2114;
      v28 = v9;
      v30 = v29 = 2114;
      v24 = v30;
      _os_log_impl(&_mh_execute_header, v22, v21, "authentication request received %s response %{public}@ for %{public}@", &v25, 0x20u);
    }

    if (v18)
    {
      objc_storeStrong((*(a1 + 32) + 72), a2);
      [v12 handleAuthReply];
    }
  }

LABEL_19:
}

void sub_100002654(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  v8 = os_log_type_enabled(v6, v7);
  if (a2 == 4)
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ received parse result AuthPollReply", &v12, 0xCu);
    }

    [*(a1 + 32) handleAuthenticationPollReply:v5];
  }

  else if (a2 == 3)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ received parse result AuthReply", &v12, 0xCu);
    }

    [*(a1 + 32) handleAuthenticationReply:v5];
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 32);
      v12 = 138412546;
      v13 = v11;
      v14 = 2048;
      v15 = a2;
      _os_log_impl(&_mh_execute_header, v6, v7, "%@ received parse result %ld", &v12, 0x16u);
    }

    [*(a1 + 32) sendResponseCode:1 dictionary:0];
  }
}

CNWISPrLoginHandler *sub_100002950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = [[CNWISPrLoginHandler alloc] initWithURLString:a1 queue:v12 responseHandler:v11];

  [(CNWISPrLoginHandler *)v13 setUserAgent:a2];
  [(CNWISPrLoginHandler *)v13 setInterfaceName:a3];
  [(CNWISPrLoginHandler *)v13 start:a4];
  return v13;
}

void sub_1000029FC(void *a1)
{
  if (a1)
  {
    [a1 cancel];
  }
}

os_log_t sub_100002A3C(os_log_t result)
{
  if (result <= 3 && !qword_100022748)
  {
    result = os_log_create("com.apple.captive", (&off_10001C7B0)[result]);
    qword_100022748 = result;
  }

  return result;
}

os_log_t sub_100002A8C()
{
  result = qword_100022748;
  if (!qword_100022748)
  {
    result = os_log_create("com.apple.captive", "Framework");
    qword_100022748 = result;
  }

  return result;
}

const __CFData *sub_100002AE4(CFPropertyListRef propertyList, _DWORD *a2)
{
  address = 0;
  *a2 = 0;
  result = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (result)
  {
    v4 = result;
    Length = CFDataGetLength(result);
    if (!vm_allocate(mach_task_self_, &address, Length, 1))
    {
      v6 = address;
      BytePtr = CFDataGetBytePtr(v4);
      memmove(v6, BytePtr, Length);
      *a2 = Length;
    }

    CFRelease(v4);
    return address;
  }

  return result;
}

const __CFData *sub_100002B9C(UInt8 *bytes, int a2)
{
  result = CFDataCreateWithBytesNoCopy(0, bytes, a2, kCFAllocatorNull);
  if (result)
  {
    v3 = result;
    v4 = CFPropertyListCreateWithData(0, result, 0, 0, 0);
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t sub_100002C08(const void *a1, const void *a2)
{
  if (!a1)
  {
    return a2 == 0;
  }

  if (a2)
  {
    return CFEqual(a1, a2);
  }

  return 0;
}

CFStringRef sub_100002C28(const __CFAllocator *a1)
{
  v2 = CFUUIDCreate(a1);
  v3 = CFUUIDCreateString(a1, v2);
  CFRelease(v2);
  return v3;
}

const __CFArray *sub_100002C9C(const __CFArray *result)
{
  context = 1;
  if (result)
  {
    v1 = result;
    v3.length = CFArrayGetCount(result);
    v3.location = 0;
    CFArrayApplyFunction(v1, v3, sub_100002CFC, &context);
    return context;
  }

  return result;
}

CFTypeID sub_100002CFC(const void *a1, _BYTE *a2)
{
  result = CFStringGetTypeID();
  if (!a1 || (v5 = result, result = CFGetTypeID(a1), result != v5))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_100002D48(CFArrayRef theArray, const __CFArray *a2)
{
  result = 0;
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    v6 = CFArrayGetCount(a2);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v10.location = 0;
        v10.length = v7;
        if (CFArrayContainsValue(a2, v10, ValueAtIndex))
        {
          break;
        }

        if (Count == ++v8)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

void sub_100002DE8(const void **a1, CFTypeRef cf)
{
  v4 = *a1;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = cf;
}

uint64_t sub_100002E34(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  TypeID = CFBooleanGetTypeID();
  if (!Value || CFGetTypeID(Value) != TypeID)
  {
    return a3;
  }

  return CFBooleanGetValue(Value);
}

uint64_t sub_100002EA8(CFArrayRef *a1, const void *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v7.length = CFArrayGetCount(*a1);
    v7.location = 0;
    if (CFArrayContainsValue(v3, v7, a2))
    {
      return 0;
    }

    Mutable = v3;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *a1 = Mutable;
  }

  CFArrayAppendValue(Mutable, a2);
  return 1;
}

CFIndex sub_100002F30(const __CFArray *a1, const void *a2)
{
  if (!a1)
  {
    return -1;
  }

  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(a1, v4, a2);
}

uint64_t sub_100002F84(const __CFArray *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
        Value = CFDictionaryGetValue(ValueAtIndex, a2);
        v11 = a3 == 0;
        if (!Value)
        {
          goto LABEL_7;
        }

        if (a3)
        {
          break;
        }

LABEL_8:
        if (v7 == ++v8)
        {
          return -1;
        }
      }

      v11 = CFEqual(Value, a3);
LABEL_7:
      if (v11)
      {
        return v8;
      }

      goto LABEL_8;
    }
  }

  return -1;
}

CFStringRef sub_100003020(CFStringRef URLString)
{
  if (!URLString)
  {
    return 0;
  }

  v1 = CFURLCreateWithString(0, URLString, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFURLCopyHostName(v1);
  CFRelease(v2);
  return v3;
}

uint64_t start()
{
  sub_100002A3C(2);
  v0 = 1;
  mach_service = xpc_connection_create_mach_service("com.apple.captiveagent", &_dispatch_main_q, 1uLL);
  if (mach_service)
  {
    v2 = mach_service;
    if (xpc_get_type(mach_service) == &_xpc_type_connection)
    {
      xpc_connection_set_event_handler(v2, &stru_10001C7F0);
      xpc_connection_resume(v2);
      CFRunLoopRun();
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return v0;
}

void sub_1000030FC(id a1, void *a2)
{
  if (a2)
  {
    if (xpc_get_type(a2) == &_xpc_type_connection)
    {
      xpc_connection_set_target_queue(a2, &_dispatch_main_q);
      *&v5 = _NSConcreteStackBlock;
      *(&v5 + 1) = 0x40000000;
      v6 = sub_10000326C;
      v7 = &unk_10001C810;
      v8 = a2;
      xpc_connection_set_event_handler(a2, &v5);
      xpc_connection_resume(a2);
    }

    else if (xpc_get_type(a2) == &_xpc_type_error)
    {
      v3 = sub_100002A8C();
      v4 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v3, v4))
      {
        LODWORD(v5) = 136315138;
        *(&v5 + 4) = xpc_dictionary_get_string(a2, _xpc_error_key_description);
        _os_log_impl(&_mh_execute_header, v3, v4, "Got an error on the XPC listener: %s", &v5, 0xCu);
      }

      exit(1);
    }
  }
}

void sub_10000326C(uint64_t a1, xpc_object_t object)
{
  if (!object)
  {
    return;
  }

  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v9 = *(a1 + 32);
    v10 = xpc_connection_copy_entitlement_value();
    if (!v10)
    {
LABEL_22:
      v18 = sub_100002A8C();
      v19 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v18, v19))
      {
        return;
      }

      *buf = 0;
      v20 = "daemon failed to authorize the requesting process.";
      goto LABEL_24;
    }

    v11 = v10;
    if (xpc_get_type(v10) != &_xpc_type_BOOL)
    {
      xpc_release(v11);
      goto LABEL_22;
    }

    value = xpc_BOOL_get_value(v11);
    xpc_release(v11);
    if (!value)
    {
      goto LABEL_22;
    }

    v13 = *(a1 + 32);
    uint64 = xpc_dictionary_get_uint64(object, "MessageType");
    v15 = xpc_dictionary_get_BOOL(object, "EnableDebug");
    sub_10000E3F0(v15);
    if (uint64 <= 5)
    {
      if (uint64)
      {
        if (uint64 != 2)
        {
          if (uint64 == 4)
          {
            v16 = sub_100002A8C();
            v17 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v16, v17))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, v17, "Got Logoff request", buf, 2u);
            }
          }

          goto LABEL_49;
        }

        *buf = 0;
        string = xpc_dictionary_get_string(object, "LoginURL");
        v67 = xpc_dictionary_get_string(object, "InterfaceName");
        v68 = xpc_dictionary_get_string(object, "UserAgent");
        data = xpc_dictionary_get_data(object, "LoginBody", buf);
        LOBYTE(v26) = 0;
        if (string)
        {
          if (v67)
          {
            if (v68)
            {
              v70 = data;
              if (data)
              {
                if (*buf)
                {
                  v71 = CFStringCreateWithCString(kCFAllocatorDefault, string, 0x8000100u);
                  if (v71)
                  {
                    v43 = v71;
                    v72 = CFStringCreateWithCString(kCFAllocatorDefault, v67, 0x8000100u);
                    if (v72)
                    {
                      v73 = v72;
                      v74 = CFStringCreateWithCString(kCFAllocatorDefault, v68, 0x8000100u);
                      if (v74)
                      {
                        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                        v42 = Mutable;
                        if (Mutable)
                        {
                          CFDictionaryAddValue(Mutable, off_100022488, v43);
                          CFDictionaryAddValue(v42, off_1000224E0, v74);
                          v76 = CFDataCreate(kCFAllocatorDefault, v70, *buf);
                          if (v76)
                          {
                            v77 = malloc_type_malloc(0x20uLL, 0x10A0040B5E8CC92uLL);
                            v26 = v77;
                            if (v77)
                            {
                              *v77 = 0u;
                              v77[1] = 0u;
                              *(v77 + 4) = 2;
                              *v77 = xpc_retain(v13);
                              *(v26 + 8) = xpc_retain(object);
                              Current = CFRunLoopGetCurrent();
                              v79 = sub_10000DAE8(v42, v73, v76, Current, sub_100004208, v26);
                              *(v26 + 24) = v79;
                              if (!v79)
                              {
                                sub_100004048(v13, object, 3u);
                                xpc_release(*v26);
                                xpc_release(*(v26 + 8));
                                free(v26);
                                CFRelease(v43);
                                CFRelease(v73);
                                LOBYTE(v26) = 0;
LABEL_115:
                                CFRelease(v74);
                                v43 = v76;
LABEL_116:
                                if (!v42)
                                {
                                  goto LABEL_118;
                                }

                                goto LABEL_117;
                              }

                              xpc_connection_set_context(v13, v26);
                              LOBYTE(v26) = 1;
                            }

LABEL_114:
                            CFRelease(v43);
                            CFRelease(v73);
                            v43 = v76;
                            if (!v74)
                            {
                              goto LABEL_116;
                            }

                            goto LABEL_115;
                          }

LABEL_113:
                          LOBYTE(v26) = 0;
                          goto LABEL_114;
                        }
                      }

                      else
                      {
                        v42 = 0;
                      }

                      v76 = 0;
                      goto LABEL_113;
                    }

                    goto LABEL_122;
                  }

LABEL_93:
                  LOBYTE(v26) = 0;
                }
              }
            }
          }
        }

LABEL_125:
        if (v26)
        {
          return;
        }

        goto LABEL_126;
      }

      v34 = xpc_dictionary_get_string(object, "ProbeURL");
      v35 = xpc_dictionary_get_string(object, "InterfaceName");
      v36 = xpc_dictionary_get_string(object, "UserAgent");
      v37 = xpc_dictionary_get_uint64(object, "ProbeTimeout");
      LOBYTE(v26) = 0;
      if (!v34 || !v35 || !v36)
      {
        goto LABEL_125;
      }

      v38 = v37;
      v39 = CFStringCreateWithCString(kCFAllocatorDefault, v34, 0x8000100u);
      if (!v39)
      {
        goto LABEL_93;
      }

      v40 = v39;
      v41 = CFStringCreateWithCString(kCFAllocatorDefault, v35, 0x8000100u);
      if (v41)
      {
        v42 = v41;
        v43 = CFStringCreateWithCString(kCFAllocatorDefault, v36, 0x8000100u);
        if (v43)
        {
          v44 = malloc_type_malloc(0x20uLL, 0x10A0040B5E8CC92uLL);
          if (v44)
          {
            v45 = v44;
            *v44 = 0u;
            v44[1] = 0u;
            *v44 = xpc_retain(v13);
            *(v45 + 8) = xpc_retain(object);
            v46 = CFRunLoopGetCurrent();
            v47 = sub_10000D64C(v40, v42, v43, 0x20000, v46, v38, sub_100003F0C, v45);
            *(v45 + 24) = v47;
            if (!v47)
            {
              v48 = v13;
              v49 = object;
              v50 = 1;
LABEL_121:
              sub_100004048(v48, v49, v50);
              xpc_release(*v45);
              xpc_release(*(v45 + 8));
              free(v45);
              CFRelease(v40);
              CFRelease(v42);
LABEL_122:
              LOBYTE(v26) = 0;
              goto LABEL_123;
            }

LABEL_91:
            xpc_connection_set_context(v13, v45);
            LOBYTE(v26) = 1;
LABEL_95:
            CFRelease(v40);
LABEL_117:
            CFRelease(v42);
LABEL_118:
            if (!v43)
            {
              goto LABEL_125;
            }

            goto LABEL_123;
          }
        }

        goto LABEL_94;
      }

      goto LABEL_96;
    }

    if (uint64 != 6)
    {
      if (uint64 == 8)
      {
        v80 = xpc_dictionary_get_string(object, "PortalAPIURI");
        v81 = xpc_dictionary_get_string(object, "InterfaceName");
        v82 = xpc_dictionary_get_string(object, "UserAgent");
        v83 = xpc_dictionary_get_uint64(object, "ProbeTimeout");
        LOBYTE(v26) = 0;
        if (!v80 || !v81 || !v82)
        {
          goto LABEL_125;
        }

        v84 = v83;
        v85 = CFStringCreateWithCString(kCFAllocatorDefault, v80, 0x8000100u);
        if (!v85)
        {
          goto LABEL_93;
        }

        v40 = v85;
        v86 = CFStringCreateWithCString(kCFAllocatorDefault, v81, 0x8000100u);
        if (v86)
        {
          v42 = v86;
          v43 = CFStringCreateWithCString(kCFAllocatorDefault, v82, 0x8000100u);
          if (v43)
          {
            v87 = malloc_type_malloc(0x20uLL, 0x10A0040B5E8CC92uLL);
            if (v87)
            {
              v45 = v87;
              *v87 = 0u;
              v87[1] = 0u;
              *(v87 + 4) = 8;
              *v87 = xpc_retain(v13);
              *(v45 + 8) = xpc_retain(object);
              v88 = sub_10000D93C(v40, v42, v43, &_dispatch_main_q, v84, sub_1000040D8, v45);
              *(v45 + 24) = v88;
              if (!v88)
              {
                v48 = v13;
                v49 = object;
                v50 = 9;
                goto LABEL_121;
              }

              goto LABEL_91;
            }
          }

LABEL_94:
          LOBYTE(v26) = 0;
          goto LABEL_95;
        }

LABEL_96:
        LOBYTE(v26) = 0;
        v43 = v40;
LABEL_123:
        v89 = v43;
        goto LABEL_124;
      }

      if (uint64 != 10)
      {
LABEL_49:
        v32 = sub_100002A8C();
        v33 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v32, v33))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Got unknown request", buf, 2u);
        }

LABEL_126:
        v18 = sub_100002A8C();
        v19 = _SC_syslog_os_log_mapping();
        if (!os_log_type_enabled(v18, v19))
        {
          return;
        }

        *buf = 0;
        v20 = "Failed to process request.";
LABEL_24:
        _os_log_impl(&_mh_execute_header, v18, v19, v20, buf, 2u);
        return;
      }

      *buf = 0;
      v21 = xpc_dictionary_get_string(object, "TokenAuthURL");
      v22 = xpc_dictionary_get_string(object, "InterfaceName");
      v23 = xpc_dictionary_get_string(object, "UserAgent");
      v24 = xpc_dictionary_get_data(object, "TokenAuthCredential", buf);
      v25 = xpc_dictionary_get_uint64(object, "TokenAuthTimeout");
      LOBYTE(v26) = 0;
      if (!v22 || !v23 || !v24 || !*buf)
      {
        goto LABEL_125;
      }

      v27 = v25;
      if (v21)
      {
        v21 = CFStringCreateWithCString(kCFAllocatorDefault, v21, 0x8000100u);
        if (!v21)
        {
          goto LABEL_93;
        }
      }

      v28 = CFStringCreateWithCString(kCFAllocatorDefault, v22, 0x8000100u);
      if (v28)
      {
        v29 = CFStringCreateWithCString(kCFAllocatorDefault, v23, 0x8000100u);
        if (v29)
        {
          v30 = CFDataCreate(kCFAllocatorDefault, v24, *buf);
          if (v30)
          {
            v31 = malloc_type_malloc(0x20uLL, 0x10A0040B5E8CC92uLL);
            v26 = v31;
            if (v31)
            {
              *v31 = 0u;
              v31[1] = 0u;
              *(v31 + 4) = 10;
              *v31 = xpc_retain(v13);
              *(v26 + 8) = xpc_retain(object);
              *(v26 + 24) = sub_10000E1F8(v21, v28, v29, v30, &_dispatch_main_q, v27, sub_100004508, v26);
              xpc_connection_set_context(v13, v26);
              LOBYTE(v26) = 1;
            }

LABEL_100:
            if (v21)
            {
              CFRelease(v21);
            }

            if (v28)
            {
              CFRelease(v28);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            if (v30)
            {
              v89 = v30;
LABEL_124:
              CFRelease(v89);
              goto LABEL_125;
            }

            goto LABEL_125;
          }

LABEL_99:
          LOBYTE(v26) = 0;
          goto LABEL_100;
        }
      }

      else
      {
        v29 = 0;
      }

      v30 = 0;
      goto LABEL_99;
    }

    v51 = xpc_dictionary_get_string(object, "CredentialsURL");
    v52 = xpc_dictionary_get_string(object, "ServiceType");
    v53 = xpc_dictionary_get_string(object, "UserAgent");
    v54 = xpc_dictionary_get_uint64(object, "ProbeTimeout");
    if (!v51)
    {
      goto LABEL_93;
    }

    v55 = v54;
    v56 = CFStringCreateWithCString(kCFAllocatorDefault, v51, 0x8000100u);
    if (!v56)
    {
      goto LABEL_93;
    }

    v57 = v56;
    if (!v53 || (v58 = CFStringCreateWithCString(kCFAllocatorDefault, v53, 0x8000100u)) == 0)
    {
      CFRelease(v57);
      goto LABEL_93;
    }

    v59 = v58;
    if (v52)
    {
      v52 = CFStringCreateWithCString(kCFAllocatorDefault, v52, 0x8000100u);
      if (v52)
      {
        v60 = malloc_type_malloc(0x20uLL, 0x10A0040B5E8CC92uLL);
        if (v60)
        {
          v61 = v60;
          *v60 = 0u;
          v60[1] = 0u;
          *(v60 + 4) = 6;
          *v60 = xpc_retain(v13);
          *(v61 + 1) = xpc_retain(object);
          v62 = sub_10000FCF8(v57, v59);
          if (v62)
          {
            v63 = v62;
            v64 = CFRunLoopGetCurrent();
            v65 = sub_10000E9FC(v63, 0, v52, v64, sub_10000432C, v61, 0x4000, v55, 0);
            *(v61 + 3) = v65;
            if (v65)
            {
              xpc_connection_set_context(v13, v61);
              LOBYTE(v26) = 1;
              goto LABEL_109;
            }

            sub_100004048(v13, object, 7u);
          }

          else
          {
            v90 = sub_100002A8C();
            v91 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v90, v91))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v90, v91, "http_client_create_get_message() failed", buf, 2u);
            }
          }

          xpc_release(*v61);
          xpc_release(*(v61 + 1));
          free(v61);
          CFRelease(v57);
          CFRelease(v59);
          LOBYTE(v26) = 0;
LABEL_133:
          v89 = v52;
          goto LABEL_124;
        }
      }
    }

    LOBYTE(v26) = 0;
LABEL_109:
    CFRelease(v57);
    CFRelease(v59);
    if (!v52)
    {
      goto LABEL_125;
    }

    goto LABEL_133;
  }

  if (xpc_get_type(object) == &_xpc_type_error)
  {
    context = xpc_connection_get_context(*(a1 + 32));
    if (context)
    {
      v5 = context;
      v6 = sub_100002A8C();
      v7 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "service event handler found context", buf, 2u);
      }

      xpc_connection_set_context(*(a1 + 32), 0);
      v8 = *(v5 + 4);
      if (v8 > 5)
      {
        if (v8 == 6)
        {
          if (*(v5 + 3))
          {
            sub_10000FCF4(v5 + 24);
          }
        }

        else if (v8 == 8 && *(v5 + 3))
        {
          sub_10000DAE4(v5 + 3);
        }
      }

      else if (v8)
      {
        if (v8 == 2)
        {
          if (*(v5 + 3))
          {
            sub_10000DE8C((v5 + 24));
          }
        }
      }

      else if (*(v5 + 3))
      {
        sub_10000D938(v5 + 3);
      }

      xpc_release(*v5);
      xpc_release(*(v5 + 1));
      free(v5);
    }
  }
}

void sub_100003F0C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 24) = 0;
    reply = xpc_dictionary_create_reply(*(a1 + 8));
    if (reply)
    {
      v8 = reply;
      xpc_dictionary_set_uint64(reply, "MessageType", 1uLL);
      xpc_dictionary_set_uint64(v8, "ResultCode", a2);
      if (a3)
      {
        v9 = _CFXPCCreateXPCObjectFromCFObject();
        if (v9)
        {
          v10 = v9;
          xpc_dictionary_set_value(v8, "ProbeResultDict", v9);
          xpc_release(v10);
        }
      }

      xpc_connection_send_message(*a1, v8);
      xpc_release(v8);
    }

    else
    {
      v11 = sub_100002A8C();
      v12 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v11, v12))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "xpc_dictionary_create_reply() failed.", v13, 2u);
      }
    }

    xpc_connection_set_context(*a1, 0);
    xpc_release(*a1);
    xpc_release(*(a1 + 8));
    free(a1);
  }
}

void sub_100004048(_xpc_connection_s *a1, xpc_object_t original, unsigned int a3)
{
  reply = xpc_dictionary_create_reply(original);
  if (reply)
  {
    v6 = reply;
    xpc_dictionary_set_uint64(reply, "MessageType", a3);
    xpc_dictionary_set_uint64(v6, "ResultCode", 0xDuLL);
    xpc_connection_send_message(a1, v6);

    xpc_release(v6);
  }
}

void sub_1000040D8(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 24) = 0;
    reply = xpc_dictionary_create_reply(*(a1 + 8));
    if (reply)
    {
      v7 = reply;
      xpc_dictionary_set_uint64(reply, "MessageType", 9uLL);
      xpc_dictionary_set_uint64(v7, "ResultCode", a2);
      if (a3)
      {
        v8 = _CFXPCCreateXPCObjectFromCFObject();
        if (v8)
        {
          v9 = v8;
          xpc_dictionary_set_value(v7, "APIResultDict", v8);
          xpc_release(v9);
        }
      }

      xpc_connection_send_message(*a1, v7);
      xpc_release(v7);
    }

    else
    {
      v10 = sub_100002A8C();
      v11 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v10, v11))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "xpc_dictionary_create_reply() failed.", v12, 2u);
      }
    }

    xpc_connection_set_context(*a1, 0);
    xpc_release(*a1);
    xpc_release(*(a1 + 8));
    free(a1);
  }
}

void sub_100004208(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 24) = 0;
    reply = xpc_dictionary_create_reply(*(a1 + 8));
    if (reply)
    {
      v6 = reply;
      xpc_dictionary_set_uint64(reply, "MessageType", 3uLL);
      if (a2)
      {
        v7 = _CFXPCCreateXPCObjectFromCFObject();
        if (v7)
        {
          v8 = v7;
          xpc_dictionary_set_value(v6, "LoginResultDict", v7);
          xpc_release(v8);
        }
      }

      xpc_connection_send_message(*a1, v6);
      xpc_release(v6);
    }

    else
    {
      v9 = sub_100002A8C();
      v10 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v9, v10))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "xpc_dictionary_create_reply() failed.", v11, 2u);
      }
    }

    xpc_connection_set_context(*a1, 0);
    xpc_release(*a1);
    xpc_release(*(a1 + 8));
    free(a1);
  }
}

uint64_t sub_10000432C(uint64_t a1, unsigned int a2, uint64_t a3, const xmlDoc *a4)
{
  if (a1)
  {
    *(a1 + 24) = 0;
    reply = xpc_dictionary_create_reply(*(a1 + 8));
    if (reply)
    {
      v8 = reply;
      xpc_dictionary_set_uint64(reply, "MessageType", 7uLL);
      xpc_dictionary_set_uint64(v8, "ResultCode", a2);
      if (!a4)
      {
        goto LABEL_7;
      }

      v9 = SFRXmlToDict(a4);
      if (v9)
      {
        a4 = v9;
        v10 = _CFXPCCreateXPCObjectFromCFObject();
        if (!v10)
        {
          v17 = sub_100002A8C();
          v18 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v17, v18))
          {
            *v19 = 0;
            _os_log_impl(&_mh_execute_header, v17, v18, "_CFXPCCreateXPCObjectFromCFObject failed", v19, 2u);
          }

          goto LABEL_8;
        }

        v11 = v10;
        xpc_dictionary_set_value(v8, "GetCredsResultDict", v10);
        xpc_release(v11);
LABEL_7:
        xpc_connection_send_message(*a1, v8);
        xpc_release(v8);
        if (!a4)
        {
LABEL_14:
          xpc_connection_set_context(*a1, 0);
          xpc_release(*a1);
          xpc_release(*(a1 + 8));
          free(a1);
          return 1;
        }

LABEL_8:
        CFRelease(a4);
        goto LABEL_14;
      }

      v12 = sub_100002A8C();
      v13 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v14 = "SFRXmlToDict failed";
      v15 = buf;
    }

    else
    {
      v12 = sub_100002A8C();
      v13 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_14;
      }

      v21 = 0;
      v14 = "xpc_dictionary_create_reply() failed.";
      v15 = &v21;
    }

    _os_log_impl(&_mh_execute_header, v12, v13, v14, v15, 2u);
    goto LABEL_14;
  }

  return 1;
}

void sub_100004508(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    v15[0] = 67109120;
    v15[1] = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "handle_token_auth_result received response with result code: %u", v15, 8u);
  }

  if (a1)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      free(v8);
      *(a1 + 24) = 0;
    }

    reply = xpc_dictionary_create_reply(*(a1 + 8));
    if (reply)
    {
      v10 = reply;
      xpc_dictionary_set_uint64(reply, "MessageType", 0xBuLL);
      xpc_dictionary_set_uint64(v10, "ResultCode", a2);
      if (a3)
      {
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        if (v11)
        {
          v12 = v11;
          xpc_dictionary_set_value(v10, "TokenAuthResultDict", v11);
          xpc_release(v12);
        }
      }

      xpc_connection_send_message(*a1, v10);
      xpc_release(v10);
    }

    else
    {
      v13 = sub_100002A8C();
      v14 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v13, v14))
      {
        LOWORD(v15[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "xpc_dictionary_create_reply() failed.", v15, 2u);
      }
    }

    xpc_connection_set_context(*a1, 0);
    xpc_release(*a1);
    xpc_release(*(a1 + 8));
    free(a1);
  }
}

void sub_10000560C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained sendResponseCode:*(a1 + 40) dictionary:0];
    WeakRetained = v3;
  }
}

void sub_10000585C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sendResponseCode:*(a1 + 48) dictionary:*(a1 + 32)];
}

void sub_100006518(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained handleAuthenticationChallenge:*(a1 + 32) task:*(a1 + 40) completionHandler:*(a1 + 48)];
    WeakRetained = v3;
  }
}

BOOL sub_100006CF8(id a1, NSURLQueryItem *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(NSURLQueryItem *)a2 name:a3];
  v5 = [v4 isEqualToString:@"authorized"];

  return v5;
}

CNTokenAuthenticator *sub_1000072C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a7;
  v14 = a6;
  v15 = [[CNTokenAuthenticator alloc] initWithURLString:a1 token:a2 queue:v14 responseHandler:v13];

  [(CNTokenAuthenticator *)v15 setUserAgent:a3];
  [(CNTokenAuthenticator *)v15 setInterfaceName:a4];
  [(CNTokenAuthenticator *)v15 setTimeoutSeconds:a5];
  [(CNTokenAuthenticator *)v15 start];
  return v15;
}

void sub_10000737C(void *a1)
{
  [a1 cancel];
}

void sub_100007FA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained sendResponseCode:*(a1 + 40) dictionary:0];
    WeakRetained = v3;
  }
}

void sub_100008108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained receivedData];
    v4 = [CNHTMLParser parserReadyData:v3];

    if (v4)
    {
      v5 = [[CNHTMLParser alloc] initWithData:v4 purpose:0];
      v6 = v5;
      if (v5)
      {
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100008310;
        v11[3] = &unk_10001C790;
        v11[4] = v2;
        [(CNHTMLParser *)v5 parseWithCompletionHandler:v11];
      }

      else
      {
        v9 = sub_100002A8C();
        v10 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v9, v10))
        {
          *buf = 138412290;
          v13 = v2;
          _os_log_impl(&_mh_execute_header, v9, v10, "%@ failed to create HTML parser", buf, 0xCu);
        }

        [v2 sendResponseCode:11 dictionary:0];
      }
    }

    else
    {
      v7 = sub_100002A8C();
      v8 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138412290;
        v13 = v2;
        _os_log_impl(&_mh_execute_header, v7, v8, "%@ failed to extract parseable data from the received data", buf, 0xCu);
      }

      [v2 sendResponseCode:11 dictionary:0];
    }
  }
}

void sub_100008310(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  v8 = v6;
  if (os_log_type_enabled(v8, v7))
  {
    v9 = *(a1 + 32);
    v10 = [v9 parseResultStr:a2];
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, v7, "%@ received parse result [%@]", &v14, 0x16u);
  }

  v11 = *(a1 + 32);
  if (a2 == 2)
  {
    v12 = [*(a1 + 32) redirectDictionary:v5];
    [*(a1 + 32) sendResponseCode:2 dictionary:v12];
  }

  else if (a2 == 1)
  {
    [*(a1 + 32) sendResponseCode:0 dictionary:0];
  }

  else
  {
    v13 = [*(a1 + 32) redirectDictionary:0];
    [v11 sendResponseCode:3 dictionary:v13];
  }
}

void sub_100008A64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sendResponseCode:*(a1 + 40) dictionary:0];
}

void sub_100008CBC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleAuthenticationChallenge:*(a1 + 32) task:*(a1 + 40) completionHandler:*(a1 + 48)];
    WeakRetained = v3;
  }
}

CNCaptiveProber *sub_100009840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = [[CNCaptiveProber alloc] initWithURLString:a1 queue:v12 responseHandler:v11];

  [(CNCaptiveProber *)v13 setUserAgent:a2];
  [(CNCaptiveProber *)v13 setInterfaceName:a3];
  [(CNCaptiveProber *)v13 setTimeoutSeconds:a4];
  [(CNCaptiveProber *)v13 start];
  return v13;
}

void sub_10000A078(id a1)
{
  v1 = [CNHTMLParser markupElementWithName:@"HTML" required:1 type:objc_opt_class()];
  v2 = [CNHTMLParser markupElementWithName:@"HEAD" required:1 type:objc_opt_class(), v1];
  v6[1] = v2;
  v3 = [CNHTMLParser markupElementWithName:@"TITLE" required:1 type:objc_opt_class()];
  v6[2] = v3;
  v4 = [NSArray arrayWithObjects:v6 count:3];
  v5 = qword_100022750;
  qword_100022750 = v4;
}

void sub_10000A284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A29C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 elementName];
  v7 = [v6 caseInsensitiveCompare:*(a1 + 32)];

  if (!v7)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10000A4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000A4D4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = sub_100002A8C();
  v8 = _SC_syslog_os_log_mapping();
  v9 = v7;
  if (os_log_type_enabled(v9, v8))
  {
    v10 = *(a1 + 32);
    v11 = [v6 elementName];
    v22 = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v9, v8, "%@ looking for HTML element: [%@] in the parsed dictionary", &v22, 0x16u);
  }

  if ([v6 required])
  {
    v12 = [v6 elementName];
    if ([v12 isEqualToString:@"HTML"])
    {
LABEL_7:

      goto LABEL_8;
    }

    v13 = [v6 elementName];
    if ([v13 isEqualToString:@"HEAD"])
    {

      goto LABEL_7;
    }

    v14 = [*(*(a1 + 32) + 56) allKeys];
    v15 = [v6 elementName];
    v16 = [v14 containsObject:v15];

    if ((v16 & 1) == 0)
    {
      v17 = sub_100002A8C();
      v18 = _SC_syslog_os_log_mapping();
      v19 = v17;
      if (os_log_type_enabled(v19, v18))
      {
        v20 = *(a1 + 32);
        v21 = [v6 elementName];
        v22 = 138412546;
        v23 = v20;
        v24 = 2112;
        v25 = v21;
        _os_log_impl(&_mh_execute_header, v19, v18, "%@ did not find required HTML element: [%@] in the parsed dictionary, stopping", &v22, 0x16u);
      }

      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

LABEL_8:
}

void sub_10000A760(id a1)
{
  v12 = [CNHTMLParser markupElementWithName:off_100022450 required:1 type:objc_opt_class()];
  v13[0] = v12;
  v11 = [CNHTMLParser markupElementWithName:off_100022458 required:1 type:objc_opt_class()];
  v13[1] = v11;
  v1 = [CNHTMLParser markupElementWithName:off_100022470 required:0 type:objc_opt_class()];
  v13[2] = v1;
  v2 = [CNHTMLParser markupElementWithName:off_100022478 required:0 type:objc_opt_class()];
  v13[3] = v2;
  v3 = [CNHTMLParser markupElementWithName:off_100022480 required:0 type:objc_opt_class()];
  v13[4] = v3;
  v4 = [CNHTMLParser markupElementWithName:off_100022488 required:1 type:objc_opt_class()];
  v13[5] = v4;
  v5 = [CNHTMLParser markupElementWithName:off_100022490 required:0 type:objc_opt_class()];
  v13[6] = v5;
  v6 = [CNHTMLParser markupElementWithName:off_100022460 required:1 type:objc_opt_class()];
  v13[7] = v6;
  v7 = [CNHTMLParser markupElementWithName:off_100022468 required:1 type:objc_opt_class()];
  v13[8] = v7;
  v8 = [CNHTMLParser markupElementWithName:off_1000224F0 required:0 type:objc_opt_class()];
  v13[9] = v8;
  v9 = [NSArray arrayWithObjects:v13 count:10];
  v10 = qword_100022760;
  qword_100022760 = v9;
}

void sub_10000AB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AB64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 elementName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10000AC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000ACA4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 required])
  {
    v7 = [v6 elementName];
    if ([v7 isEqualToString:off_100022450])
    {
LABEL_5:

      goto LABEL_6;
    }

    v8 = [v6 elementName];
    if ([v8 isEqualToString:off_100022458])
    {

      goto LABEL_5;
    }

    v9 = [*(*(a1 + 32) + 48) allKeys];
    v10 = [v6 elementName];
    v11 = [v9 containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v12 = sub_100002A8C();
      v13 = _SC_syslog_os_log_mapping();
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        v15 = *(a1 + 32);
        v16 = [v6 elementName];
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v14, v13, "%@ required element: [%@] was not found in the parsed dictionary, stopping", &v17, 0x16u);
      }

      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

LABEL_6:
}

void sub_10000AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000AF90(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 elementName];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = [v6 type];
    v9 = sub_100002A8C();
    v10 = _SC_syslog_os_log_mapping();
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      v12 = a1[5];
      v13 = NSStringFromClass(*(*(a1[6] + 8) + 24));
      v14 = a1[4];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, v10, "%@ found type [%@] for element: [%@], stopping", &v15, 0x20u);
    }
  }
}

void sub_10000B120(id a1)
{
  v1 = [CNHTMLParser markupElementWithName:off_100022450 required:1 type:objc_opt_class()];
  v2 = [CNHTMLParser markupElementWithName:off_1000224C8 required:1 type:objc_opt_class(), v1];
  v10[1] = v2;
  v3 = [CNHTMLParser markupElementWithName:off_100022460 required:1 type:objc_opt_class()];
  v10[2] = v3;
  v4 = [CNHTMLParser markupElementWithName:off_100022468 required:1 type:objc_opt_class()];
  v10[3] = v4;
  v5 = [CNHTMLParser markupElementWithName:off_1000224B8 required:0 type:objc_opt_class()];
  v10[4] = v5;
  v6 = [CNHTMLParser markupElementWithName:off_1000224B0 required:0 type:objc_opt_class()];
  v10[5] = v6;
  v7 = [CNHTMLParser markupElementWithName:off_1000224A8 required:0 type:objc_opt_class()];
  v10[6] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:7];
  v9 = qword_100022770;
  qword_100022770 = v8;
}

void sub_10000B44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B464(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 elementName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10000B58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B5A4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 required])
  {
    v7 = [v6 elementName];
    if ([v7 isEqualToString:off_100022450])
    {
LABEL_5:

      goto LABEL_6;
    }

    v8 = [v6 elementName];
    if ([v8 isEqualToString:off_1000224C8])
    {

      goto LABEL_5;
    }

    v9 = [*(*(a1 + 32) + 48) allKeys];
    v10 = [v6 elementName];
    v11 = [v9 containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v12 = sub_100002A8C();
      v13 = _SC_syslog_os_log_mapping();
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        v15 = *(a1 + 32);
        v16 = [v6 elementName];
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v14, v13, "%@ required WISPr AuthenticationReply element: [%@] was not found in the parsed dictionary, stopping", &v17, 0x16u);
      }

      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

LABEL_6:
}

void sub_10000B878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000B890(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 elementName];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = [v6 type];
    v9 = sub_100002A8C();
    v10 = _SC_syslog_os_log_mapping();
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      v12 = a1[5];
      v13 = NSStringFromClass(*(*(a1[6] + 8) + 24));
      v14 = a1[4];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, v10, "%@ found type [%@] for element: [%@], stopping", &v15, 0x20u);
    }
  }
}

void sub_10000BA20(id a1)
{
  v1 = [CNHTMLParser markupElementWithName:off_100022450 required:1 type:objc_opt_class()];
  v2 = [CNHTMLParser markupElementWithName:off_1000224D0 required:1 type:objc_opt_class(), v1];
  v10[1] = v2;
  v3 = [CNHTMLParser markupElementWithName:off_100022460 required:1 type:objc_opt_class()];
  v10[2] = v3;
  v4 = [CNHTMLParser markupElementWithName:off_100022468 required:1 type:objc_opt_class()];
  v10[3] = v4;
  v5 = [CNHTMLParser markupElementWithName:off_1000224B8 required:0 type:objc_opt_class()];
  v10[4] = v5;
  v6 = [CNHTMLParser markupElementWithName:off_1000224A0 required:0 type:objc_opt_class()];
  v10[5] = v6;
  v7 = [CNHTMLParser markupElementWithName:off_1000224A8 required:0 type:objc_opt_class()];
  v10[6] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:7];
  v9 = qword_100022780;
  qword_100022780 = v8;
}

void sub_10000BD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BD64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 elementName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_10000BE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000BEA4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([v6 required])
  {
    v7 = [v6 elementName];
    if ([v7 isEqualToString:off_100022450])
    {
LABEL_5:

      goto LABEL_6;
    }

    v8 = [v6 elementName];
    if ([v8 isEqualToString:off_1000224D0])
    {

      goto LABEL_5;
    }

    v9 = [*(*(a1 + 32) + 48) allKeys];
    v10 = [v6 elementName];
    v11 = [v9 containsObject:v10];

    if ((v11 & 1) == 0)
    {
      v12 = sub_100002A8C();
      v13 = _SC_syslog_os_log_mapping();
      v14 = v12;
      if (os_log_type_enabled(v14, v13))
      {
        v15 = *(a1 + 32);
        v16 = [v6 elementName];
        v17 = 138412546;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        _os_log_impl(&_mh_execute_header, v14, v13, "%@ required WISPr AuthenticationPollReply element: [%@] was not found in the parsed dictionary, stopping", &v17, 0x16u);
      }

      *a4 = 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

LABEL_6:
}

void sub_10000C178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C190(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 elementName];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = [v6 type];
    v9 = sub_100002A8C();
    v10 = _SC_syslog_os_log_mapping();
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      v12 = a1[5];
      v13 = NSStringFromClass(*(*(a1[6] + 8) + 24));
      v14 = a1[4];
      v15 = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v11, v10, "%@ found type [%@] for element: [%@], stopping", &v15, 0x20u);
    }
  }
}

void *sub_10000D64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = malloc_type_malloc(0x78uLL, 0x10E004030B74DB0uLL);
  v18 = v14;
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 6) = 0u;
  v14[14] = 0;
  v14[2] = a7;
  v14[3] = a8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = sub_10000D75C;
  v17[3] = &unk_10001CA48;
  v17[4] = v14;
  v15 = sub_100009840(a1, a3, a2, a6, &_dispatch_main_q, v17);
  v14[1] = v15;
  if (!v15)
  {
    sub_10000D858(&v18);
    return v18;
  }

  return v14;
}

uint64_t sub_10000D75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    v11[0] = 67109378;
    v11[1] = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v6, v7, "captive prober provided response result code: %u, response: %@", v11, 0x12u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  if (v9)
  {
    sub_1000029FC(v9);
    *(*(a1 + 32) + 8) = 0;
    v8 = *(a1 + 32);
  }

  return (*(v8 + 16))(*(v8 + 24), a2, a3);
}

void sub_10000D858(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = v2[4];
      if (v3)
      {
        CFRelease(v3);
        v2[4] = 0;
      }

      v4 = v2[6];
      if (v4)
      {
        CFRelease(v4);
        v2[6] = 0;
      }

      v5 = v2[7];
      if (v5)
      {
        CFRelease(v5);
        v2[7] = 0;
      }

      v6 = v2[8];
      if (v6)
      {
        CFRelease(v6);
        v2[8] = 0;
      }

      v7 = v2[5];
      if (v7)
      {
        CFRelease(v7);
        v2[5] = 0;
      }

      v8 = v2[10];
      if (v8)
      {
        CFRunLoopTimerInvalidate(v8);
        v9 = v2[10];
        if (v9)
        {
          CFRelease(v9);
          v2[10] = 0;
        }
      }

      v10 = v2[11];
      if (v10)
      {
        CFRunLoopTimerInvalidate(v10);
        v11 = v2[11];
        if (v11)
        {
          CFRelease(v11);
          v2[11] = 0;
        }
      }

      if (*v2)
      {
        sub_10000FCF4(v2);
      }

      v12 = v2[1];
      if (v12)
      {
        sub_1000029FC(v12);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

void **sub_10000D93C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
  v14[1] = a6;
  v14[2] = a7;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 0x40000000;
  v17[2] = sub_10000DA34;
  v17[3] = &unk_10001CA68;
  v17[4] = v14;
  v18 = v14;
  v15 = sub_100011728(a1, a3, a2, a5, a4, v17);
  *v14 = v15;
  if (!v15)
  {
    sub_10000DA9C(&v18);
    return v18;
  }

  return v14;
}

uint64_t sub_10000DA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (*v6)
  {
    sub_10000737C(*v6);
    **(a1 + 32) = 0;
    v6 = *(a1 + 32);
  }

  v8 = *(v6 + 8);
  v7 = *(v6 + 16);

  return v8(v7, a2, a3);
}

void sub_10000DA9C(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (*v2)
      {
        sub_10000737C(*v2);
      }

      free(v2);
      *a1 = 0;
    }
  }
}

_OWORD *sub_10000DAE8(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Value = CFDictionaryGetValue(a1, off_100022488);
  v12 = CFDictionaryGetValue(a1, off_1000224E0);
  v13 = v12;
  if (Value)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = sub_100002A8C();
    v16 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = &unk_10001848F;
      v18 = " url";
      if (Value)
      {
        v18 = &unk_10001848F;
      }

      if (!v13)
      {
        v17 = " agent";
      }

      *buf = 136315394;
      *&buf[4] = v18;
      v24 = 2080;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v15, v16, "wispr dictionary does not contain%s%s", buf, 0x16u);
    }

    return 0;
  }

  else
  {
    v19 = malloc_type_malloc(0x50uLL, 0x10E0040E0022EA1uLL);
    v22[4] = v19;
    *buf = v19;
    v19[1] = 0u;
    v19[2] = 0u;
    v19[3] = 0u;
    v19[4] = 0u;
    *v19 = a5;
    *(v19 + 1) = a6;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 0x40000000;
    v22[2] = sub_10000DCDC;
    v22[3] = &unk_10001CA88;
    v20 = sub_100002950(Value, v13, a2, a3, &_dispatch_main_q, v22);
    *(v19 + 3) = v20;
    if (!v20)
    {
      sub_10000DDBC(buf);
      return *buf;
    }
  }

  return v19;
}

uint64_t sub_10000DCDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A8C();
  v5 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v4, v5))
  {
    v9 = 138412290;
    v10 = a2;
    _os_log_impl(&_mh_execute_header, v4, v5, "WISPr login handler provided response: %@", &v9, 0xCu);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  if (v7)
  {
    sub_1000029FC(v7);
    *(*(a1 + 32) + 24) = 0;
    v6 = *(a1 + 32);
  }

  return (*v6)(*(v6 + 8), a2);
}

void sub_10000DDBC(uint64_t a1)
{
  v2 = *a1;
  v3 = *a1;
  v5 = v3[2];
  v4 = v3 + 2;
  if (v5)
  {
    sub_10000FCF4(v4);
    v2 = *a1;
  }

  v6 = v2[3];
  if (v6)
  {
    sub_1000029FC(v6);
    *(*a1 + 24) = 0;
    v2 = *a1;
  }

  v7 = v2[4];
  if (v7)
  {
    CFRelease(v7);
    v2[4] = 0;
    v2 = *a1;
  }

  v8 = v2[5];
  if (v8)
  {
    CFRelease(v8);
    v2[5] = 0;
    v2 = *a1;
  }

  v9 = v2[7];
  if (v9)
  {
    CFRelease(v9);
    v2[7] = 0;
    v2 = *a1;
  }

  v10 = v2[6];
  if (v10)
  {
    CFRelease(v10);
    v2[6] = 0;
    v2 = *a1;
  }

  v11 = v2[8];
  if (v11)
  {
    CFRunLoopTimerInvalidate(v11);
    v2 = *a1;
    v12 = *(*a1 + 64);
    if (v12)
    {
      CFRelease(v12);
      v2[8] = 0;
      v2 = *a1;
    }
  }

  free(v2);
  *a1 = 0;
}

void *sub_10000DE90(const __CFDictionary *a1, void *a2, __CFRunLoop *a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x18uLL, 0xA0040114AFA65uLL);
  v25 = v10;
  v10[1] = a5;
  v10[2] = 0;
  *v10 = a4;
  Value = CFDictionaryGetValue(a1, off_1000224B8);
  if (!Value)
  {
    v17 = sub_100002A8C();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      v24 = 0;
      v19 = "login result dictionary does not contain logout URL";
      v20 = &v24;
      goto LABEL_13;
    }

LABEL_14:
    sub_10000E070(&v25);
    return 0;
  }

  v12 = Value;
  v13 = CFDictionaryGetValue(a1, off_1000224E0);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"CaptiveNetworkSupport-??? wispr";
  }

  v15 = sub_10000FCF8(v12, v14);
  if (!v15)
  {
    v17 = sub_100002A8C();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 0;
      v19 = "http_client_create_get_message failed";
      v20 = buf;
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v16 = v15;
  v10[2] = sub_10000E9FC(v15, a2, 0, a3, sub_10000E0B4, v10, 0x4000, 0, 0);
  CFRelease(v16);
  if (!v10[2])
  {
    v17 = sub_100002A8C();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      v22 = 0;
      v19 = "async_http failed";
      v20 = &v22;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v17, v18, v19, v20, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  return v10;
}

void sub_10000E070(void **a1)
{
  v2 = *a1;
  if (v2[2])
  {
    sub_10000FCF4(v2 + 2);
    v2 = *a1;
  }

  free(v2);
  *a1 = 0;
}

uint64_t sub_10000E0B4(void *a1, int a2, uint64_t a3, const xmlDoc *a4)
{
  v14 = a1;
  if ((a2 == 5 || a2 == 0) && a4 != 0)
  {
    v9 = sub_1000100F4(a4);
    if (v9)
    {
      v10 = v9;
      Value = CFDictionaryGetValue(v9, off_100022460);
      if (CFStringGetIntValue(Value) == 130)
      {
        v12 = CFDictionaryGetValue(v10, off_100022468);
        IntValue = CFStringGetIntValue(v12);
      }

      else
      {
        IntValue = 255;
      }

      CFRelease(v10);
      goto LABEL_17;
    }

    if (a2 == 5)
    {
      return 0;
    }
  }

  IntValue = 255;
LABEL_17:
  a1[2] = 0;
  (*a1)(a1[1], IntValue);
  sub_10000E070(&v14);
  return 1;
}

void sub_10000E188()
{
  v0 = sub_100002A8C();
  v1 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "not implemented", v2, 2u);
  }
}

void **sub_10000E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x80040D6874129uLL);
  v16[1] = a7;
  v16[2] = a8;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_10000E300;
  v19[3] = &unk_10001CAA8;
  v19[4] = v16;
  v20 = v16;
  v17 = sub_1000072C0(a1, a4, a3, a2, a6, a5, v19);
  *v16 = v17;
  if (!v17)
  {
    sub_10000DA9C(&v20);
    return v20;
  }

  return v16;
}

uint64_t sub_10000E300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A8C();
  v7 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v6, v7))
  {
    v10[0] = 67109120;
    v10[1] = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "token authenticator provided response with result code: %u", v10, 8u);
  }

  v8 = *(a1 + 32);
  if (*v8)
  {
    sub_10000737C(*v8);
    **(a1 + 32) = 0;
    v8 = *(a1 + 32);
  }

  return (*(v8 + 8))(*(v8 + 16), a2, a3);
}

__CFDictionary *SFRXmlToDict(const xmlDoc *a1)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  RootElement = xmlDocGetRootElement(a1);
  if (RootElement->type == XML_ELEMENT_NODE)
  {
    for (i = RootElement->children; i; i = i->next)
    {
      if (i->type == XML_ELEMENT_NODE)
      {
        v5 = CFStringCreateWithCString(kCFAllocatorDefault, i->name, 0x8000100u);
        if (v5)
        {
          v6 = v5;
          children = i->children;
          if (children)
          {
            while (1)
            {
              if (children->type == XML_TEXT_NODE)
              {
                content = children->content;
                if (content)
                {
                  break;
                }
              }

              children = children->next;
              if (!children)
              {
                goto LABEL_9;
              }
            }

            v15 = CFStringCreateWithCString(kCFAllocatorDefault, content, 0x8000100u);
            if (v15)
            {
              v16 = v15;
              CFDictionarySetValue(Mutable, v6, v15);
              CFRelease(v16);
            }
          }

          else
          {
LABEL_9:
            v9 = sub_100002A8C();
            v10 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v9, v10))
            {
              name = i->name;
              *buf = 136315138;
              v21 = name;
              _os_log_impl(&_mh_execute_header, v9, v10, "Ignoring %s, couldn't find text entry", buf, 0xCu);
            }
          }

          CFRelease(v6);
        }

        else
        {
          v12 = sub_100002A8C();
          v13 = _SC_syslog_os_log_mapping();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = i->name;
            *buf = 136315138;
            v21 = v14;
            _os_log_impl(&_mh_execute_header, v12, v13, "Ignoring %s, couldn't allocate CFString", buf, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v17 = sub_100002A8C();
    v18 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "badly formatted xml, root element was not a node", buf, 2u);
    }

    return 0;
  }

  return Mutable;
}

void *sub_10000E674(void *a1)
{
  *a1 = off_10001CAD8;
  v2 = sub_100002A8C();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v2, v3))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "new html parser", v7, 2u);
  }

  PushParserCtxt = htmlCreatePushParserCtxt(0, 0, 0, 0, 0, XML_CHAR_ENCODING_NONE);
  a1[1] = PushParserCtxt;
  if (PushParserCtxt)
  {
    if (byte_100022790)
    {
      v5 = 67841;
    }

    else
    {
      v5 = 67937;
    }

    htmlCtxtUseOptions(PushParserCtxt, v5);
  }

  return a1;
}

void *sub_10000E75C(void *a1)
{
  *a1 = off_10001CAD8;
  v2 = a1[1];
  if (v2)
  {
    if (v2->myDoc)
    {
      xmlFreeDoc(v2->myDoc);
      v2 = a1[1];
      v2->myDoc = 0;
    }

    htmlFreeParserCtxt(v2);
    a1[1] = 0;
  }

  return a1;
}

void sub_10000E7E0(void *a1)
{
  sub_10000E75C(a1);

  operator delete();
}

uint64_t sub_10000E818(uint64_t a1, const char *a2, int a3, int a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return htmlParseChunk(v4, a2, a3, a4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000E82C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

void *sub_10000E844(void *a1)
{
  *a1 = off_10001CB08;
  v2 = sub_100002A8C();
  v3 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v2, v3))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "new xml parser", v7, 2u);
  }

  PushParserCtxt = xmlCreatePushParserCtxt(0, 0, 0, 0, 0);
  a1[1] = PushParserCtxt;
  if (PushParserCtxt)
  {
    if (byte_100022790)
    {
      v5 = 67841;
    }

    else
    {
      v5 = 67937;
    }

    xmlCtxtUseOptions(PushParserCtxt, v5);
  }

  return a1;
}

void *sub_10000E928(void *a1)
{
  *a1 = off_10001CB08;
  v2 = a1[1];
  if (v2)
  {
    if (v2->myDoc)
    {
      xmlFreeDoc(v2->myDoc);
      v2 = a1[1];
      v2->myDoc = 0;
    }

    xmlFreeParserCtxt(v2);
    a1[1] = 0;
  }

  return a1;
}

void sub_10000E998(void *a1)
{
  sub_10000E928(a1);

  operator delete();
}

uint64_t sub_10000E9D0(uint64_t a1, const char *a2, int a3, int a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return xmlParseChunk(v4, a2, a3, a4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000E9E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

CFReadStreamRef *sub_10000E9FC(__CFHTTPMessage *a1, void *a2, const void *a3, __CFRunLoop *a4, __CFReadStream *a5, __CFReadStream *a6, __CFReadStream *a7, unint64_t a8, char a9)
{
  v17 = malloc_type_malloc(0x4050uLL, 0x10A00404B78DBF0uLL);
  v44 = v17;
  if (v17)
  {
    v42 = a3;
    if (byte_100022790 == 1)
    {
      v41 = a4;
      v18 = CFHTTPMessageCopyRequestURL(a1);
      v19 = sub_100002A8C();
      v20 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v19, v20))
      {
        LODWORD(buf.version) = 138412546;
        *(&buf.version + 4) = v18;
        WORD2(buf.info) = 2112;
        *(&buf.info + 6) = a2;
        _os_log_impl(&_mh_execute_header, v19, v20, "%@, interface=%@", &buf, 0x16u);
      }

      a4 = v41;
      if (v18)
      {
        CFRelease(v18);
      }
    }

    *(v17 + 2053) = 0u;
    *(v17 + 2055) = 0u;
    v17[2057] = 0;
    *(v17 + 2051) = 0u;
    v17[2048] = a4;
    v17[2049] = a5;
    v17[2050] = a6;
    v17[2055] = a7;
    *(v17 + 16456) = a9 ^ 1;
    if (a8)
    {
      buf.version = 0;
      *&buf.info = v17;
      buf.release = 0;
      buf.copyDescription = 0;
      Current = CFAbsoluteTimeGetCurrent();
      v22 = CFRunLoopTimerCreate(kCFAllocatorDefault, Current + a8, 0.0, 0, 0, sub_10000EEE8, &buf);
      v17[2052] = v22;
      if (!v22)
      {
        goto LABEL_42;
      }
    }

    v23 = CFReadStreamCreateForHTTPRequest(kCFAllocatorDefault, a1);
    v17[2051] = v23;
    if (!v23)
    {
      v33 = sub_100002A8C();
      v34 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v33, v34))
      {
        LOWORD(buf.version) = 0;
        v35 = "CFReadStreamCreateForHTTPRequest failed";
        p_buf = &buf;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v33, v34, v35, p_buf, 2u);
        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v24 = CFDictionaryCreate(kCFAllocatorDefault, &kSCProxiesNoGlobal, &kCFBooleanTrue, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v24)
    {
      v25 = v24;
      v26 = SCDynamicStoreCopyProxiesWithOptions();
      v27 = a2;
      if (v26)
      {
        v28 = v26;
        v29 = a4;
        v30 = SCNetworkProxiesCopyMatching();
        if (v30)
        {
          v31 = v30;
          if (CFArrayGetCount(v30) < 1)
          {
            ValueAtIndex = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v31, 0);
            CFRetain(ValueAtIndex);
          }

          CFRelease(v31);
        }

        else
        {
          ValueAtIndex = 0;
        }

        CFRelease(v28);
        CFRelease(v25);
        a4 = v29;
        if (ValueAtIndex)
        {
          if (CFDictionaryGetCount(ValueAtIndex) >= 1)
          {
            v37 = sub_100002A8C();
            v38 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v37, v38))
            {
              LODWORD(buf.version) = 138412290;
              *(&buf.version + 4) = ValueAtIndex;
              _os_log_impl(&_mh_execute_header, v37, v38, "Applying proxy: %@", &buf, 0xCu);
            }

            CFReadStreamSetProperty(v44[2051], kCFStreamPropertyHTTPProxy, ValueAtIndex);
          }

          CFRelease(ValueAtIndex);
          v17 = v44;
        }
      }

      else
      {
        CFRelease(v25);
      }
    }

    else
    {
      v27 = a2;
    }

    if (v27)
    {
      CFReadStreamSetProperty(v17[2051], kCFStreamPropertyBoundInterfaceIdentifier, v27);
    }

    if (v42)
    {
      CFReadStreamSetProperty(v17[2051], kCFStreamPropertyDataConnectionServiceType, v42);
      CFReadStreamSetProperty(v17[2051], kCFStreamPropertyDataContextOnDemand, kCFBooleanTrue);
    }

    buf.version = 0;
    *&buf.info = v17;
    buf.release = 0;
    buf.copyDescription = 0;
    if (!CFReadStreamSetClient(v17[2051], 0x1BuLL, sub_10000F03C, &buf))
    {
      v33 = sub_100002A8C();
      v34 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v33, v34))
      {
        *v43 = 0;
        v35 = "CFReadStreamSetClient failed";
        goto LABEL_40;
      }

LABEL_42:
      sub_10000EF68(&v44);
      return 0;
    }

    CFReadStreamScheduleWithRunLoop(v17[2051], a4, kCFRunLoopCommonModes);
    v39 = v17[2052];
    if (v39)
    {
      CFRunLoopAddTimer(a4, v39, kCFRunLoopCommonModes);
    }

    if (!CFReadStreamOpen(v17[2051]))
    {
      v33 = sub_100002A8C();
      v34 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v33, v34))
      {
        *v43 = 0;
        v35 = "CFReadStreamOpen failed";
LABEL_40:
        p_buf = v43;
        goto LABEL_41;
      }

      goto LABEL_42;
    }
  }

  return v17;
}

void sub_10000EEE8(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a2)
  {
    v3 = *(a2 + 16408);
    if (v3 && CFReadStreamGetStatus(v3) == kCFStreamStatusOpening)
    {
      (*(a2 + 16392))(*(a2 + 16400), 1, 0, 0);
      sub_10000EF68(&v5);
    }

    else
    {
      CFRunLoopTimerInvalidate(*(a2 + 16416));
      v4 = *(a2 + 16416);
      if (v4)
      {
        CFRelease(v4);
        *(a2 + 16416) = 0;
      }
    }
  }
}

void sub_10000EF68(uint64_t *a1)
{
  *(*a1 + 16392) = 0;
  v2 = *a1;
  v3 = *(*a1 + 16408);
  if (v3)
  {
    CFReadStreamUnscheduleFromRunLoop(v3, *(v2 + 0x4000), kCFRunLoopCommonModes);
    CFReadStreamClose(*(*a1 + 16408));
    v2 = *a1;
    v4 = *(*a1 + 16408);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 16408) = 0;
      v2 = *a1;
    }
  }

  v5 = *(v2 + 16424);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(*a1 + 16424) = 0;
    v2 = *a1;
  }

  v6 = *(v2 + 16416);
  if (v6)
  {
    CFRunLoopTimerInvalidate(v6);
    v2 = *a1;
    v7 = *(*a1 + 16416);
    if (v7)
    {
      CFRelease(v7);
      *(v2 + 16416) = 0;
      v2 = *a1;
    }
  }

  free(v2);
  *a1 = 0;
}

void sub_10000F03C(__CFReadStream *a1, char a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v89 = a3;
  if ((a2 & 8) != 0)
  {
    v22 = CFReadStreamCopyError(a1);
    v18 = v22;
    if (!v22)
    {
      v59 = 1;
LABEL_80:
      v83 = v59;
      goto LABEL_103;
    }

    if (CFErrorGetDomain(v22) == kCFErrorDomainCFNetwork)
    {
      Code = CFErrorGetCode(v18);
      if (Code == -1005)
      {
        v23 = 8;
      }

      else
      {
        v23 = 1;
      }

      if (Code == 2)
      {
        v23 = 7;
      }
    }

    else if (CFErrorGetDomain(v18) == kCFErrorDomainPOSIX && CFErrorGetCode(v18) == 51)
    {
      v23 = 8;
    }

    else if (CFErrorGetDomain(v18) == kCFErrorDomainOSStatus)
    {
      if (CFErrorGetCode(v18) == -9806)
      {
        v23 = 14;
      }

      else
      {
        v66 = CFErrorGetCode(v18);
        v83 = 1;
        if ((v66 + 9843) > 0x24 || ((1 << (v66 + 115)) & 0x18F007D001) == 0)
        {
          goto LABEL_97;
        }

        v23 = 15;
      }
    }

    else
    {
      v23 = 1;
    }

    v83 = v23;
LABEL_97:
    v67 = CFErrorCopyDescription(v18);
    v68 = sub_100002A8C();
    v69 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v68, v69))
    {
      *buf = 138412802;
      *v91 = CFErrorGetDomain(v18);
      *&v91[8] = 2048;
      *&v91[10] = CFErrorGetCode(v18);
      *&v91[18] = 2112;
      v92 = v67;
      _os_log_impl(&_mh_execute_header, v68, v69, "kCFStreamEventErrorOccurred %@/%ld: %@", buf, 0x20u);
    }

    CFRelease(v18);
    if (v67)
    {
      CFRelease(v67);
    }

    v18 = 0;
    goto LABEL_102;
  }

  if (a2)
  {
    v5 = sub_100002A8C();
    v6 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "kCFStreamEventOpenCompleted", buf, 2u);
    }

    v7 = v3[2052];
    if (v7)
    {
      CFRunLoopTimerInvalidate(v7);
      v8 = *(a3 + 16416);
      if (v8)
      {
        CFRelease(v8);
        *(a3 + 16416) = 0;
      }
    }
  }

  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      return;
    }

    v83 = 1;
    v9 = sub_100002A8C();
    v10 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v11 = "kCFStreamEventEndEncountered";
    v12 = v9;
    v13 = v10;
    v14 = 2;
    goto LABEL_12;
  }

  v81 = v4;
  v24 = sub_100002A8C();
  v25 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v24, v25))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "kCFStreamEventHasBytesAvailable", buf, 2u);
  }

  v26 = a3;
  if (!*(a3 + 16424))
  {
    v65 = *(a3 + 16456);
    operator new();
  }

  v83 = 1;
  v27 = a1;
LABEL_29:
  v28 = CFReadStreamRead(v27, v26, 0x3FFFLL);
  v85 = v28;
  v29 = v28;
  if (v28 < 1)
  {
    v15 = a3;
    if ((v28 & 0x8000000000000000) == 0)
    {
LABEL_14:
      v16 = a1;
      v17 = *(v15 + 16424);
      if (v17)
      {
        (*(*v17 + 16))(v17, 0, 0, 1);
        v16 = a1;
      }

      v18 = CFReadStreamCopyProperty(v16, kCFStreamPropertyHTTPResponseHeader);
      CFReadStreamUnscheduleFromRunLoop(*(a3 + 16408), *(a3 + 0x4000), kCFRunLoopCommonModes);
      CFReadStreamClose(*(a3 + 16408));
      v19 = *(a3 + 16408);
      v3 = a3;
      if (v19)
      {
        CFRelease(v19);
        v3 = a3;
        *(a3 + 16408) = 0;
      }

      v20 = v3[2053];
      if (v20)
      {
        v21 = (*(*v20 + 24))(v20) == 0;
        goto LABEL_89;
      }

      goto LABEL_103;
    }

    Status = CFReadStreamGetStatus(a1);
    Error = CFReadStreamGetError(a1);
    v77 = sub_100002A8C();
    v78 = _SC_syslog_os_log_mapping();
    v79 = os_log_type_enabled(v77, v78);
    if (Error.domain == 1)
    {
      if (!v79)
      {
        goto LABEL_13;
      }

      v80 = strerror(Error.error);
      *buf = 67109634;
      *v91 = Status;
      *&v91[4] = 2080;
      *&v91[6] = v80;
      *&v91[14] = 1024;
      *&v91[16] = Error.error;
      v11 = "CFReadStreamRead() status=%d, %s (%d)";
      v12 = v77;
      v13 = v78;
      v14 = 24;
    }

    else
    {
      if (!v79)
      {
        goto LABEL_13;
      }

      *buf = 67109632;
      *v91 = Status;
      *&v91[4] = 1024;
      *&v91[6] = Error.domain;
      *&v91[10] = 1024;
      *&v91[12] = Error.error;
      v11 = "CFReadStreamRead() status=%d error=(%d, %d)";
      v12 = v77;
      v13 = v78;
      v14 = 20;
    }

LABEL_12:
    _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
LABEL_13:
    v15 = a3;
    goto LABEL_14;
  }

  v30 = a3;
  *(a3 + v28) = 0;
  if (byte_100022790 == 1)
  {
    v31 = sub_100002A8C();
    v32 = _SC_syslog_os_log_mapping();
    v30 = a3;
    v29 = v85;
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 136315138;
      *v91 = a3;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s", buf, 0xCu);
    }
  }

  v33 = 0;
  v34 = 0;
  v35 = a3 + 0x4000;
  v36 = *(a3 + 16432);
  *(a3 + 16432) = 0;
  while (1)
  {
    v86 = v34;
    v37 = (v29 - v34);
    if (*(v35 + 72) != 1)
    {
      v47 = 0;
      goto LABEL_55;
    }

    v84 = v33;
    if (v37 >= 1)
    {
      v38 = 0;
      v87 = &v30[v33];
      v39 = v29 - v34;
      while (1)
      {
        v40 = 0;
        v41 = v87;
        v42 = &aHtml_2[v36];
        while (1)
        {
          v44 = *v42++;
          v43 = v44;
          if (!v44 || __toupper(v41[v38]) != v43)
          {
            break;
          }

          --v40;
          ++v41;
          if (-v39 == v40)
          {
            v45 = v39;
            v46 = v37;
            goto LABEL_43;
          }
        }

        v45 = -v40;
        v46 = v38 - v40;
LABEL_43:
        v30 = a3;
        if (!aHtml_2[v36 + v45])
        {
          break;
        }

        if (v46 == v37)
        {
          goto LABEL_49;
        }

        v36 = 0;
        ++v38;
        --v39;
        if (v38 == v37)
        {
          LODWORD(v38) = v37;
          goto LABEL_49;
        }
      }

      v37 = (v38 - v36);
      v47 = 1;
      goto LABEL_53;
    }

    LODWORD(v38) = 0;
LABEL_49:
    if (v37 == v38 - v36)
    {
      v47 = 0;
LABEL_53:
      v35 = a3 + 0x4000;
      goto LABEL_54;
    }

    v47 = 0;
    v35 = a3 + 0x4000;
    *(a3 + 16432) = v37 - (v38 - v36);
LABEL_54:
    v33 = v84;
LABEL_55:
    v48 = *(v30 + 2055);
    v49 = !v48 || v37 < 1;
    if (!v49 && *(v30 + 2056) + v37 > v48)
    {
      break;
    }

    if (v47)
    {
      v50 = *(v35 + 52);
      *(v35 + 52) = v50 + 1;
      if (v50)
      {
        v51 = *(v30 + 2053);
        if (v37 < 1)
        {
          (*(*v51 + 16))(v51, 0, 0, 1);
          v52 = a3;
        }

        else
        {
          (*(*v51 + 16))(v51, &v30[v33], v37, 1);
          v52 = a3;
          *(a3 + 16448) += v37;
        }

        if (!(*(**(v52 + 16424) + 24))(*(v52 + 16424)) || (v53 = *(a3 + 16392), v54 = *(a3 + 16400), v55 = (*(**(a3 + 16424) + 24))(*(a3 + 16424)), !v53(v54, 5, 0, v55)))
        {
          v56 = *(a3 + 16424);
          if (v56)
          {
            (*(*v56 + 8))(v56);
          }

          v57 = *(a3 + 16456);
          operator new();
        }

        sub_10000EF68(&v89);
        return;
      }

      v37 = (v37 + 6);
    }

    (*(**(v30 + 2053) + 16))(*(v30 + 2053), &v30[v33], v37, 0);
    v30 = a3;
    *(a3 + 16448) += v37;
    v34 = v37 + v86;
    v36 = 0;
    v33 = v34;
    v29 = v85;
    v35 = a3 + 0x4000;
    if (v85 <= v34)
    {
      HasBytesAvailable = CFReadStreamHasBytesAvailable(a1);
      v26 = a3;
      v27 = a1;
      if (HasBytesAvailable)
      {
        goto LABEL_29;
      }

      v4 = v81;
      goto LABEL_9;
    }
  }

  v60 = sub_100002A8C();
  v61 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v60, v61))
  {
    v3 = a3;
    v62 = *(a3 + 16440);
    v63 = *(a3 + 16448);
    *buf = 134218496;
    *v91 = v62;
    *&v91[8] = 2048;
    *&v91[10] = v63;
    *&v91[18] = 1024;
    LODWORD(v92) = v37;
    _os_log_impl(&_mh_execute_header, v60, v61, "exceeding maxlen of %ld. current(%lu) + length(%d)", buf, 0x1Cu);
    v18 = 0;
    v59 = 4;
    goto LABEL_80;
  }

  v18 = 0;
  v21 = 4;
LABEL_89:
  v83 = v21;
LABEL_102:
  v3 = a3;
LABEL_103:
  v70 = v3;
  v71 = v3[2049];
  v72 = v70[2050];
  v73 = v70[2053];
  if (v73)
  {
    v74 = (*(*v73 + 24))(v73);
  }

  else
  {
    v74 = 0;
  }

  v71(v72, v83, v18, v74);
  sub_10000EF68(&v89);
  if (v18)
  {
    CFRelease(v18);
  }
}

__CFHTTPMessage *sub_10000FCF8(CFStringRef URLString, const __CFString *a2)
{
  v4 = CFURLCreateWithString(kCFAllocatorDefault, URLString, 0);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, URLString, 0, 0, 0x8000100u);
    v5 = CFURLCreateWithString(kCFAllocatorDefault, v6, 0);
    CFRelease(v6);
    if (!v5)
    {
      v14 = sub_100002A8C();
      v15 = _SC_syslog_os_log_mapping();
      if (os_log_type_enabled(v14, v15))
      {
        v17 = 138412290;
        v18 = URLString;
        v10 = "CFURLCreateWithString %@ failed";
        v11 = v14;
        v12 = v15;
        v13 = 12;
        goto LABEL_10;
      }

      return 0;
    }
  }

  Request = CFHTTPMessageCreateRequest(kCFAllocatorDefault, @"GET", v5, kCFHTTPVersion1_0);
  CFRelease(v5);
  if (!Request)
  {
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v17) = 0;
      v10 = "CFHTTPMessageCreateRequest failed";
      v11 = v8;
      v12 = v9;
      v13 = 2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &v17, v13);
      return 0;
    }

    return 0;
  }

  CFHTTPMessageSetHeaderFieldValue(Request, off_1000224E0, a2);
  return Request;
}

uint64_t sub_10000FEC0(uint64_t result, unsigned int a2)
{
  v3 = result;
  strcpy(v26, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t!");
  if (a2 <= 0xF)
  {
    v26[a2] = 0;
  }

  if (result)
  {
    do
    {
      v4 = *(v3 + 16);
      v5 = sub_100002A8C();
      v6 = _SC_syslog_os_log_mapping();
      v7 = os_log_type_enabled(v5, v6);
      if (v4)
      {
        if (!v7)
        {
          goto LABEL_14;
        }

        v8 = *(v3 + 8);
        v9 = "???";
        if ((v8 - 1) <= 0x13)
        {
          v9 = *(&off_10001CB68 + v8);
        }

        v10 = *(v3 + 16);
        *buf = 136315650;
        v21 = v26;
        v22 = 2080;
        v23 = v9;
        v24 = 2080;
        v25 = v10;
        v11 = v5;
        v12 = v6;
        v13 = "%s%s: %s";
        v14 = 32;
      }

      else
      {
        if (!v7)
        {
          goto LABEL_14;
        }

        v15 = *(v3 + 8);
        v16 = "???";
        if ((v15 - 1) <= 0x13)
        {
          v16 = *(&off_10001CB68 + v15);
        }

        *buf = 136315394;
        v21 = v26;
        v22 = 2080;
        v23 = v16;
        v11 = v5;
        v12 = v6;
        v13 = "%s%s: <NULL>";
        v14 = 22;
      }

      _os_log_impl(&_mh_execute_header, v11, v12, v13, buf, v14);
LABEL_14:
      if (*(v3 + 80))
      {
        v17 = sub_100002A8C();
        v18 = _SC_syslog_os_log_mapping();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = *(v3 + 80);
          *buf = 136315394;
          v21 = v26;
          v22 = 2080;
          v23 = v19;
          _os_log_impl(&_mh_execute_header, v17, v18, "%sdata:%s", buf, 0x16u);
        }
      }

      result = *(v3 + 24);
      if (result)
      {
        result = sub_10000FEC0(result, a2 + 1);
      }

      v3 = *(v3 + 48);
    }

    while (v3);
  }

  return result;
}

__CFDictionary *sub_1000100F4(const xmlDoc *a1)
{
  RootElement = xmlDocGetRootElement(a1);
  v3 = sub_100010B94(RootElement, "WISPAccessGatewayParam", 0);
  if (byte_100022790 == 1)
  {
    v4 = sub_100002A8C();
    v5 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v4, v5))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "-- XML Document --", buf, 2u);
    }

    v6 = xmlDocGetRootElement(a1);
    sub_10000FEC0(v6, 0);
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v14 = xmlDocGetRootElement(a1);
    v15 = sub_100010C20(v14, 0);
    if (!v15)
    {
      return 0;
    }

    v7 = v15;
    v16 = xmlDocGetRootElement(v15);
    v3 = sub_100010B94(v16, "WISPAccessGatewayParam", 0);
    if (!v3)
    {
      goto LABEL_25;
    }
  }

  if (byte_100022790 == 1)
  {
    v8 = sub_100002A8C();
    v9 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "-- WISPr XML --", buf, 2u);
    }

    sub_10000FEC0(v3, 0);
  }

  v127 = off_100022460;
  v128 = 4;
  v129 = off_100022468;
  v130 = 4;
  v131 = off_100022470;
  v132 = 0;
  v133 = off_100022478;
  v134 = 0;
  v135 = off_100022480;
  v136 = 0;
  v137 = off_100022488;
  v138 = 4;
  v139 = off_100022490;
  v140 = 0;
  v141 = off_1000224F0;
  v142 = 0;
  v119 = off_100022460;
  v120 = 4;
  v121 = off_100022468;
  v122 = 4;
  v123 = off_100022498;
  v124 = 0;
  v125 = off_1000224A0;
  v126 = 0;
  v107 = off_100022460;
  v108 = 4;
  v109 = off_100022468;
  v110 = 4;
  v111 = off_1000224A8;
  v112 = 0;
  v113 = off_1000224B0;
  v114 = 0;
  v115 = off_1000224B8;
  v116 = 0;
  v117 = off_1000224C0;
  v118 = 0;
  v95 = off_100022460;
  v96 = 4;
  v97 = off_100022468;
  v98 = 4;
  v99 = off_1000224A8;
  v100 = 0;
  v101 = off_1000224A0;
  v102 = 0;
  v103 = off_1000224B8;
  v104 = 0;
  v105 = off_1000224C0;
  v106 = 0;
  v89 = off_100022460;
  v90 = 4;
  v91 = off_100022468;
  v92 = 4;
  v93 = off_1000224B8;
  v94 = 0;
  v85 = off_100022460;
  v86 = 4;
  v87 = off_100022468;
  v88 = 4;
  *buf = "Redirect";
  v83 = &v127;
  v84[0] = 0x6400000008;
  v84[1] = "Proxy";
  v84[2] = &v119;
  v84[3] = 0x6E00000004;
  v84[4] = "AuthenticationReply";
  v84[5] = &v107;
  v84[6] = 0x7800000006;
  v84[7] = "LogoffReply";
  v84[8] = &v85;
  v84[9] = 0x8200000002;
  v84[10] = "AuthenticationPollReply";
  v84[11] = &v95;
  v84[12] = 0x8C00000006;
  v84[13] = "AbortLoginReply";
  v84[14] = &v89;
  v84[15] = 0x9600000003;
  v10 = *(v3 + 3);
  if (!v10)
  {
    v11 = sub_100002A8C();
    v12 = _SC_syslog_os_log_mapping();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_23;
    }

    *v76 = 0;
    v13 = "Invalid WISPAccessGatewayParam, no children";
    goto LABEL_21;
  }

  while (*(v10 + 8) != 1)
  {
    v10 = *(v10 + 48);
    if (!v10)
    {
      v11 = sub_100002A8C();
      v12 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_23;
      }

      *v76 = 0;
      v13 = "Couldn't find WISPAccessGatewayParam XML_ELEMENT_NODE child";
      goto LABEL_21;
    }
  }

  v21 = *(v10 + 16);
  v22 = v84;
  v23 = 6;
  do
  {
    if (!strcasecmp(v21, *(v22 - 2)))
    {
      v75 = *(v22 - 1);
      v27 = *v22;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v3 = Mutable;
        v29 = *(v10 + 24);
        if (v29)
        {
          while (*(v29 + 8) != 1)
          {
LABEL_52:
            v29 = *(v29 + 48);
            if (!v29)
            {
              goto LABEL_59;
            }
          }

          v30 = CFStringCreateWithCString(kCFAllocatorDefault, *(v29 + 16), 0x8000100u);
          if (!v30)
          {
            v40 = sub_100002A8C();
            v41 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v40, v41))
            {
              v42 = *(v29 + 16);
              *v76 = 136315138;
              v77 = v42;
              _os_log_impl(&_mh_execute_header, v40, v41, "Ignoring %s, couldn't allocate CFString", v76, 0xCu);
            }

            goto LABEL_52;
          }

          v31 = v30;
          v32 = v27;
          v33 = (v75 + 8);
          if (v27 < 1)
          {
LABEL_40:
            v34 = sub_100002A8C();
            v35 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v34, v35))
            {
              goto LABEL_51;
            }

            v36 = *(v29 + 16);
            *v76 = 136315138;
            v77 = v36;
            v37 = v34;
            v38 = v35;
            v39 = "Ignoring %s, unexpected parameter";
          }

          else
          {
            while (CFStringCompare(*(v33 - 1), v31, 1uLL))
            {
              v33 += 16;
              if (!--v32)
              {
                goto LABEL_40;
              }
            }

            v43 = *(v29 + 24);
            if (v43)
            {
              while (1)
              {
                if (*(v43 + 8) == 3)
                {
                  v44 = *(v43 + 80);
                  if (v44)
                  {
                    break;
                  }
                }

                v43 = *(v43 + 48);
                if (!v43)
                {
                  goto LABEL_48;
                }
              }

              if ((*v33 & 1) == 0)
              {
                v48 = CFStringCreateWithCString(kCFAllocatorDefault, v44, 0x8000100u);
                if (v48)
                {
                  v49 = v48;
                  *v33 |= 1u;
                  CFDictionarySetValue(v3, *(v33 - 1), v48);
                  CFRelease(v49);
                }

                goto LABEL_51;
              }

              v50 = sub_100002A8C();
              v51 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = *(v29 + 16);
                *v76 = 136315138;
                v77 = v52;
                v37 = v50;
                v38 = v51;
                v39 = "Ignoring %s, already found. Weird.";
                goto LABEL_50;
              }

LABEL_51:
              CFRelease(v31);
              goto LABEL_52;
            }

LABEL_48:
            v45 = sub_100002A8C();
            v46 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v45, v46))
            {
              goto LABEL_51;
            }

            v47 = *(v29 + 16);
            *v76 = 136315138;
            v77 = v47;
            v37 = v45;
            v38 = v46;
            v39 = "Ignoring %s, couldn't find text entry";
          }

LABEL_50:
          _os_log_impl(&_mh_execute_header, v37, v38, v39, v76, 0xCu);
          goto LABEL_51;
        }

LABEL_59:
        if (v27 >= 1)
        {
          v53 = (v75 + 8);
          while ((*v53 & 5) != 4)
          {
            v53 += 16;
            if (!--v27)
            {
              goto LABEL_63;
            }
          }

          v63 = sub_100002A8C();
          v64 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v63, v64))
          {
            goto LABEL_82;
          }

          v66 = *(v53 - 1);
          *v76 = 138412290;
          v77 = v66;
          v65 = "Missing required parameter %@";
          goto LABEL_75;
        }

LABEL_63:
        Value = CFDictionaryGetValue(v3, off_100022460);
        if (Value)
        {
          IntValue = CFStringGetIntValue(Value);
          v56 = IntValue;
          v57 = v22[1];
          if (IntValue != v57)
          {
            v72 = sub_100002A8C();
            v73 = _SC_syslog_os_log_mapping();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = *(v10 + 16);
              *v76 = 136315650;
              v77 = v74;
              v78 = 1024;
              v79 = v57;
              v80 = 2048;
              v81 = v56;
              v65 = "Message type for %s should be %d but is %ld";
              v67 = v72;
              v68 = v73;
              v69 = 28;
              goto LABEL_81;
            }

            goto LABEL_82;
          }

          if (IntValue != 100)
          {
            goto LABEL_24;
          }

          v58 = CFDictionaryGetValue(v3, off_100022488);
          v59 = CFURLCreateWithString(kCFAllocatorDefault, v58, 0);
          if (v59)
          {
            v60 = v59;
            v61 = CFURLCopyScheme(v59);
            CFRelease(v60);
            if (v61)
            {
              v62 = CFStringCompare(v61, @"https", 1uLL);
              CFRelease(v61);
              if (v62 == kCFCompareEqualTo)
              {
                goto LABEL_24;
              }

              v63 = sub_100002A8C();
              v64 = _SC_syslog_os_log_mapping();
              if (os_log_type_enabled(v63, v64))
              {
                *v76 = 138412290;
                v77 = 0;
                v65 = "Login scheme must be https, was: %@";
LABEL_75:
                v67 = v63;
                v68 = v64;
                v69 = 12;
LABEL_81:
                _os_log_impl(&_mh_execute_header, v67, v68, v65, v76, v69);
              }

LABEL_82:
              CFRelease(v3);
              goto LABEL_23;
            }

            v70 = sub_100002A8C();
            v71 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v70, v71))
            {
              goto LABEL_82;
            }

            *v76 = 0;
            v65 = "Couldn't get scheme from loginURL";
          }

          else
          {
            v70 = sub_100002A8C();
            v71 = _SC_syslog_os_log_mapping();
            if (!os_log_type_enabled(v70, v71))
            {
              goto LABEL_82;
            }

            *v76 = 0;
            v65 = "Couldn't create loginURL";
          }
        }

        else
        {
          v70 = sub_100002A8C();
          v71 = _SC_syslog_os_log_mapping();
          if (!os_log_type_enabled(v70, v71))
          {
            goto LABEL_82;
          }

          *v76 = 0;
          v65 = "Missing message type field!";
        }

        v67 = v70;
        v68 = v71;
        v69 = 2;
        goto LABEL_81;
      }

      v11 = sub_100002A8C();
      v12 = _SC_syslog_os_log_mapping();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_23;
      }

      *v76 = 0;
      v13 = "Failed to allocate dictionary";
LABEL_21:
      v17 = v11;
      v18 = v12;
      v19 = 2;
      goto LABEL_22;
    }

    v22 += 6;
    --v23;
  }

  while (v23);
  v24 = sub_100002A8C();
  v25 = _SC_syslog_os_log_mapping();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v10 + 16);
    *v76 = 136315138;
    v77 = v26;
    v13 = "Unknown message type: %s";
    v17 = v24;
    v18 = v25;
    v19 = 12;
LABEL_22:
    _os_log_impl(&_mh_execute_header, v17, v18, v13, v76, v19);
  }

LABEL_23:
  v3 = 0;
LABEL_24:
  if (v7)
  {
LABEL_25:
    xmlFreeDoc(v7);
  }

  return v3;
}

uint64_t sub_100010B94(uint64_t a1, const char *a2, int a3)
{
  if (a3 > 10)
  {
    return 0;
  }

  v3 = a1;
  if (a1)
  {
    while (*(v3 + 8) != 1 || strcasecmp(*(v3 + 16), a2))
    {
      v6 = *(v3 + 24);
      if (v6)
      {
        v7 = sub_100010B94(v6, a2, (a3 + 1));
        if (v7)
        {
          return v7;
        }
      }

      v3 = *(v3 + 48);
      if (!v3)
      {
        return v3;
      }
    }
  }

  return v3;
}

xmlDoc *sub_100010C20(uint64_t a1, int a2)
{
  if (a2 > 10)
  {
    return 0;
  }

  v2 = a1;
  if (!a1)
  {
    return 0;
  }

  while (1)
  {
    if (*(v2 + 8) == 8)
    {
      for (i = *(v2 + 80); *i; ++i)
      {
        if (*i == 60)
        {
          if (!strncmp(i, "<?xml", 5uLL))
          {
            v5 = strlen(i);
            Memory = xmlReadMemory(i, v5, 0, 0, 67937);
            if (Memory)
            {
              v7 = Memory;
              RootElement = xmlDocGetRootElement(Memory);
              if (sub_100010B94(RootElement, "WISPAccessGatewayParam", 0))
              {
                return v7;
              }

              xmlFreeDoc(v7);
            }
          }

          break;
        }
      }
    }

    v9 = *(v2 + 24);
    if (v9)
    {
      v10 = sub_100010C20(v9, (a2 + 1));
      if (v10)
      {
        return v10;
      }
    }

    v2 = *(v2 + 48);
    if (!v2)
    {
      return 0;
    }
  }
}

BOOL sub_100010D20(const xmlDoc *a1)
{
  RootElement = xmlDocGetRootElement(a1);
  v2 = sub_100010B94(RootElement, "title", 0);
  result = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      if (*(v3 + 8) == 3)
      {
        v4 = *(v3 + 80);
        if (v4)
        {
          if (!strcmp(v4, "Success"))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_1000111F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011210(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v9)
    {
      v11 = [v9 domain];
      if ([v11 isEqualToString:NSURLErrorDomain])
      {
        v12 = [v9 code];

        if (v12 == -1202)
        {
          v13 = WeakRetained;
          v14 = 15;
LABEL_46:
          [v13 sendResponseCode:v14 dictionary:0];
          goto LABEL_47;
        }
      }

      else
      {
      }

      v16 = [v9 domain];
      if ([v16 isEqualToString:NSURLErrorDomain])
      {
        if ([v9 code] == -1003)
        {

LABEL_39:
          v13 = WeakRetained;
          v14 = 7;
          goto LABEL_46;
        }

        v35 = [v9 code];

        if (v35 == -1006)
        {
          goto LABEL_39;
        }
      }

      else
      {
      }

      v17 = [v9 domain];
      if ([v17 isEqualToString:NSURLErrorDomain])
      {
        if ([v9 code] == -1005)
        {

LABEL_45:
          v13 = WeakRetained;
          v14 = 8;
          goto LABEL_46;
        }

        v36 = [v9 code];

        if (v36 == -1009)
        {
          goto LABEL_45;
        }
      }

      else
      {
      }

      v18 = [v9 domain];
      if ([v18 isEqualToString:NSURLErrorDomain])
      {
        v19 = [v9 code];

        if (v19 == -1001)
        {
          v13 = WeakRetained;
          v14 = 6;
          goto LABEL_46;
        }
      }

      else
      {
      }

      v13 = WeakRetained;
      v14 = 13;
      goto LABEL_46;
    }

    if (v7)
    {
      objc_opt_class();
      v15 = (objc_opt_isKindOfClass() & 1) == 0 || [v8 statusCode] - 200 < 0x64;
    }

    else
    {
      v15 = 0;
    }

    v20 = sub_100002A8C();
    v21 = _SC_syslog_os_log_mapping();
    v22 = v20;
    if (os_log_type_enabled(v22, v21))
    {
      if (v15)
      {
        v23 = "successful";
      }

      else
      {
        v23 = "unsuccessful";
      }

      v24 = [WeakRetained apiURL];
      *buf = 136315650;
      v39 = v23;
      v40 = 2114;
      v41 = v8;
      v42 = 2114;
      v43 = v24;
      _os_log_impl(&_mh_execute_header, v22, v21, "Received %s response %{public}@ for %{public}@", buf, 0x20u);
    }

    if (!v15)
    {
      v13 = WeakRetained;
      v14 = 10;
      goto LABEL_46;
    }

    v37 = 0;
    v25 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:&v37];
    v26 = v37;
    v27 = sub_100002A8C();
    v28 = _SC_syslog_os_log_mapping();
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 138543362;
      v39 = v25;
      _os_log_impl(&_mh_execute_header, v27, v28, "Portal state: %{public}@", buf, 0xCu);
    }

    if (v25 && ([v25 objectForKeyedSubscript:off_100022500], v29 = objc_claimAutoreleasedReturnValue(), v29, v29))
    {
      v30 = [v25 objectForKeyedSubscript:off_100022500];
      v31 = [v30 BOOLValue];

      if (v31)
      {
        v32 = 16;
      }

      else
      {
        v32 = 0;
      }

      v33 = WeakRetained;
      v34 = v25;
    }

    else
    {
      v33 = WeakRetained;
      v32 = 10;
      v34 = 0;
    }

    [v33 sendResponseCode:v32 dictionary:v34];
  }

LABEL_47:
}

CAAPIHandler *sub_100011728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v11 = a6;
  v12 = a5;
  v13 = [[CAAPIHandler alloc] initWithURLString:a1 queue:v12 responseHandler:v11];

  [(CAAPIHandler *)v13 setUserAgent:a2];
  [(CAAPIHandler *)v13 setInterfaceName:a3];
  [(CAAPIHandler *)v13 setTimeoutSeconds:a4];
  [(CAAPIHandler *)v13 fetchAPI];
  return v13;
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  Error = _CFReadStreamGetError(stream);
  v2 = *&Error.error;
  domain = Error.domain;
  result.error = v2;
  result.domain = domain;
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}