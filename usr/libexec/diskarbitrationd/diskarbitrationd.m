void sub_100001128(int a1, uint64_t a2)
{
  if (a2 == 8)
  {

    sub_100012084(a1);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    if ((dispatch_mach_mig_demux() & 1) == 0)
    {
      if (*(msg + 20) == 70)
      {
        sub_100012010(a1);
      }

      v4 = dispatch_mach_msg_get_msg();

      mach_msg_destroy(v4);
    }
  }
}

const char *sub_1000011F4(const char *result, _DWORD *a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = *(result + 1), (v4 - 1065) < 0xFFFFFBFF) || ((v5 = *(result + 9), v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr((result + 40), 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    a2[8] = v9;
    goto LABEL_12;
  }

  v10 = &v3[(v4 + 3) & 0xFFC];
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  *(a2 + 4) = 0x14000000000000;
  v11 = *(v3 + 3);
  v12 = *(v10 + 36);
  v13[0] = *(v10 + 20);
  v13[1] = v12;
  result = sub_10000130C(v11, v3 + 40, v13, a2 + 7);
  if (!result)
  {
    *a2 |= 0x80000000;
    a2[1] = 40;
    a2[6] = 1;
    return result;
  }

  a2[8] = result;
LABEL_12:
  *(a2 + 3) = NDR_record;
  return result;
}

uint64_t sub_10000130C(int a1, const char *a2, _OWORD *a3, _DWORD *a4)
{
  v8 = a3[1];
  v9 = 4175036419;
  *atoken.val = *a3;
  *&atoken.val[4] = v8;
  v10 = audit_token_to_pid(&atoken);
  sub_1000014A4("%s [%d] -> %s", a2, v10, qword_1000292F0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v11 = a3[1];
  *atoken.val = *a3;
  *&atoken.val[4] = v11;
  if (!sub_1000016A8(&atoken, @"com.apple.private.diskarbitrationd.access"))
  {
    sub_100001950("no entitlement");
    v9 = 4175036425;
    goto LABEL_6;
  }

  v12 = a3[1];
  *atoken.val = *a3;
  *&atoken.val[4] = v12;
  v13 = sub_1000016A8(&atoken, @"com.apple.private.diskarbitrationd.is_fskitd");
  v14 = a3[1];
  *atoken.val = *a3;
  *&atoken.val[4] = v14;
  v15 = audit_token_to_pid(&atoken);
  v16 = sub_100001750(kCFAllocatorDefault, a2, v15);
  if (!v16)
  {
LABEL_6:
    v18 = a3[1];
    *atoken.val = *a3;
    *&atoken.val[4] = v18;
    v19 = audit_token_to_pid(&atoken);
    sub_100001950("unable to create session, id = %s [%d] (status code 0x%08X).", a2, v19, v9);
    return v9;
  }

  v17 = v16;
  sub_1000014A4("%@ -> %s", v16, qword_1000292F0);
  sub_100001950("  created session, id = %@.", v17);
  *a4 = sub_100001C38(v17);
  sub_100001BF0();
  CFArrayAppendValue(qword_100029308, v17);
  sub_100001C40(v17);
  sub_100001C58(v17, v13);
  CFRelease(v17);
  return 0;
}

void sub_1000014A4(char *cStr, ...)
{
  va_start(va, cStr);
  if (qword_100029178)
  {
    free(qword_100029178);
    qword_100029178 = 0;
    byte_100029170 = 0;
  }

  if (cStr)
  {
    v2 = sub_10000153C(cStr, va);
    if (v2)
    {
      v3 = v2;
      if (qword_100029180 && !strcmp(qword_100029180, v2))
      {
        free(v3);
      }

      else
      {
        qword_100029178 = v3;
        byte_100029170 = 1;
      }
    }
  }
}

UInt8 *sub_10000153C(char *cStr, va_list a2)
{
  if (!cStr)
  {
    return 0;
  }

  v3 = CFStringCreateWithCString(kCFAllocatorDefault, cStr, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, v3, a2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1000015D8(v5);
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

UInt8 *sub_1000015D8(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  maxBufLen = 0;
  Length = CFStringGetLength(a1);
  v6.location = 0;
  v6.length = Length;
  if (!CFStringGetBytes(a1, v6, 0x8000100u, 0, 0, 0, 0, &maxBufLen))
  {
    return 0;
  }

  v3 = malloc_type_malloc(maxBufLen + 1, 0x5A203444uLL);
  if (v3)
  {
    v7.location = 0;
    v7.length = Length;
    CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v3, maxBufLen, 0);
    v3[maxBufLen] = 0;
  }

  return v3;
}

BOOL sub_1000016A8(_OWORD *a1, const __CFString *a2)
{
  v3 = a1[1];
  *v10.val = *a1;
  *&v10.val[4] = v3;
  v4 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &v10);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SecTaskCopyValueForEntitlement(v4, a2, 0);
  if (v6)
  {
    v7 = v6;
    v8 = CFEqual(v6, kCFBooleanTrue) != 0;
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

uint64_t sub_100001750(const __CFAllocator *a1, const char *a2, int a3)
{
  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 32) = 0;
    *(Instance + 40) = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
    Mutable = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
    *(v7 + 48) = Mutable;
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    if (!*(v7 + 40))
    {
      sub_10001B44C();
    }

    if (!Mutable)
    {
      sub_10001B420();
    }

    name = 0;
    if (mach_port_allocate(mach_task_self_, 1u, &name))
    {
      goto LABEL_8;
    }

    sub_1000018C8();
    f = dispatch_mach_create_f();
    if (!f || (v10 = f, previous = 0, mach_port_request_notification(mach_task_self_, name, 70, 1u, name, 0x15u, &previous)))
    {
      mach_port_mod_refs(mach_task_self_, name, 1u, -1);
LABEL_8:
      CFRelease(v7);
      return 0;
    }

    if (previous)
    {
      sub_10001B3F4();
    }

    *(v7 + 24) = strdup(a2);
    *(v7 + 32) = a3;
    *(v7 + 56) = v10;
    *(v7 + 64) = name;
  }

  return v7;
}

uint64_t sub_1000018C8()
{
  if (qword_100029198 != -1)
  {
    sub_10001B388();
  }

  return qword_1000291A0;
}

void sub_100001950(char *cStr, ...)
{
  va_start(va, cStr);
  if (byte_100029170 == 1)
  {
    v2 = qword_100029178;
    if (!qword_100029178)
    {
      sub_10001B018();
    }

    if (qword_100029180)
    {
      free(qword_100029180);
    }

    qword_100029180 = v2;
    qword_100029178 = 0;
    byte_100029170 = 0;
    sub_1000019EC(7, v2, 0);
  }

  sub_1000019EC(7, cStr, va);
}

void sub_1000019EC(int a1, char *cStr, va_list a3)
{
  if (a3)
  {
    v4 = sub_10000153C(cStr, a3);
  }

  else
  {
    v4 = strdup(cStr);
  }

  v5 = v4;
  if (v4)
  {
    if (a1 > 5)
    {
      if (a1 == 6)
      {
        if (byte_100029160 && qword_100029168)
        {
          sub_100009FB0(v4);
        }

        v10 = qword_100029188;
        if (!os_log_type_enabled(qword_100029188, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_28;
        }

        v12 = 136446210;
        v13 = v5;
LABEL_26:
        v8 = v10;
        v9 = OS_LOG_TYPE_DEFAULT;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s", &v12, 0xCu);
        goto LABEL_28;
      }

      if (a1 == 7)
      {
        if (byte_100029160 && qword_100029168)
        {
          sub_100009FB0(v4);
        }

        v7 = qword_100029188;
        if (!os_log_type_enabled(qword_100029188, OS_LOG_TYPE_INFO))
        {
          goto LABEL_28;
        }

        v12 = 136446210;
        v13 = v5;
        v8 = v7;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_27;
      }
    }

    else
    {
      if (a1 == 2)
      {
        v11 = qword_100029188;
        if (os_log_type_enabled(qword_100029188, OS_LOG_TYPE_FAULT))
        {
          sub_10001AF28(v5, v11);
        }

        goto LABEL_28;
      }

      if (a1 == 3)
      {
        v6 = qword_100029188;
        if (os_log_type_enabled(qword_100029188, OS_LOG_TYPE_ERROR))
        {
          sub_10001AFA0(v5, v6);
        }

        goto LABEL_28;
      }
    }

    v10 = qword_100029188;
    if (!os_log_type_enabled(qword_100029188, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:
      free(v5);
      return;
    }

    v12 = 136446210;
    v13 = v5;
    goto LABEL_26;
  }
}

void sub_100001BF0()
{
  v0 = qword_100028D08;
  if (!qword_100028D08)
  {
    qword_100028D10 = os_transaction_create();
    v0 = qword_100028D08;
  }

  qword_100028D08 = v0 + 1;
}

uint64_t sub_100001C40(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  return dispatch_mach_connect();
}

uint64_t sub_100001C68(int a1, int a2)
{
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (a1 && (v4 = sub_100001DA8(a1)) != 0)
  {
    v5 = v4;
    sub_1000014A4("%@ -> %s", v4, qword_1000292F0);
    sub_100001E28(v5, a2);
    sub_100001950("  set client port, id = %@.", v5);
    return 0;
  }

  else
  {
    sub_100001950("unable to set client port, id = ? [?]:%d.", a1);
    return 4175036419;
  }
}

uint64_t sub_100001D20(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 && *(result + 24) == 1 && *(result + 4) == 40)
  {
    if (*(result + 38) << 16 == 1114112)
    {
      result = sub_100001C68(*(result + 12), *(result + 28));
      *(a2 + 32) = result;
      return result;
    }

    v3 = -300;
  }

  else
  {
    v3 = -304;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = NDR_record;
  return result;
}

const void *sub_100001DA8(int a1)
{
  Count = CFArrayGetCount(qword_100029308);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100029308, v4);
    if (sub_100001C38(ValueAtIndex) == a1)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void sub_100001E28(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    mach_port_deallocate(mach_task_self_, v4);
  }

  *(a1 + 16) = a2;
  if (CFArrayGetCount(*(a1 + 40)))
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      *&msg.msgh_voucher_port = 0;
      msg.msgh_remote_port = v5;
      msg.msgh_local_port = 0;
      *&msg.msgh_bits = 0x1800000013;
      if (mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0) == 268435460)
      {
        mach_msg_destroy(&msg);
      }
    }
  }
}

uint64_t sub_100001ED0(int a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, __CFDictionary *a6, unsigned int a7, const UInt8 *a8, unsigned int a9)
{
  v17 = 4175036419;
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (!a1 || (v18 = sub_100001DA8(a1)) == 0 || (v19 = v18, sub_1000014A4("%@ -> %s", v18, qword_1000292F0), a4 > 0x11))
  {
LABEL_30:
    v27 = sub_1000023C4(a4);
    sub_100001950("unable to register callback, id = %016llX:%016llX, kind = %s (status code 0x%08X).", a2, a3, v27, v17);
    return v17;
  }

  if (a6)
  {
    a6 = sub_10000999C(kCFAllocatorDefault, a6, a7);
  }

  if (a8)
  {
    a8 = sub_1000099FC(kCFAllocatorDefault, a8, a9);
  }

  v20 = sub_10000224C(kCFAllocatorDefault, v19, a2, a3, a4, a5, a6, a8);
  if (v20)
  {
    sub_1000023BC(v19, v20);
    v21 = sub_1000023C4(a4);
    sub_100001950("  registered callback, id = %016llX:%016llX, kind = %s.", a2, a3, v21);
    if (sub_1000023E8(v20))
    {
      if (sub_1000023E8(v20) != 15)
      {
LABEL_23:
        CFRelease(v20);
        v17 = 0;
        goto LABEL_24;
      }

      if (!byte_100028408)
      {
        v26 = 0;
        goto LABEL_22;
      }

      sub_100002440(v20, 0, 0);
    }

    else
    {
      Count = CFArrayGetCount(qword_100029280);
      if (Count >= 1)
      {
        v23 = Count;
        for (i = 0; i != v23; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, i);
          if (sub_1000029AC(ValueAtIndex, 0x80000))
          {
            sub_100002440(v20, ValueAtIndex, 0);
          }
        }
      }

      sub_100002B4C(v19, 16, 0, 0);
      if (!byte_100028408)
      {
        goto LABEL_23;
      }

      sub_100002B4C(v19, 15, 0, 0);
    }

    v26 = 1;
LABEL_22:
    sub_100002BEC(v19, 1, v26);
    goto LABEL_23;
  }

LABEL_24:
  if (a6)
  {
    CFRelease(a6);
  }

  if (a8)
  {
    CFRelease(a8);
  }

  if (!v20)
  {
    goto LABEL_30;
  }

  return 0;
}

void sub_100002158(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0 || *(a1 + 24) != 2 || *(a1 + 4) != 100)
  {
    v5 = -304;
LABEL_10:
    *(a2 + 32) = v5;
    goto LABEL_11;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1 || (v4 = *(a1 + 40), v4 != *(a1 + 92)) || *(a1 + 56) != *(a1 + 96))
  {
    v5 = -300;
    goto LABEL_10;
  }

  *(a2 + 32) = sub_100001ED0(*(a1 + 12), *(a1 + 68), *(a1 + 76), *(a1 + 84), *(a1 + 88), *(a1 + 28), v4, *(a1 + 44), *(a1 + 56));
  mig_deallocate(*(a1 + 44), *(a1 + 56));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
LABEL_11:
  *(a2 + 24) = NDR_record;
}

__CFDictionary *sub_10000224C(const __CFAllocator *a1, const void *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, const void *a7, const void *a8)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = Mutable;
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"DACallbackSession", a2);
    sub_100002354(v16, @"DACallbackAddress", a3);
    sub_100002354(v16, @"DACallbackContext", a4);
    sub_100002354(v16, @"DACallbackKind", a5);
    sub_100002354(v16, @"DACallbackOrder", a6);
    if (a7)
    {
      CFDictionarySetValue(v16, @"DACallbackMatch", a7);
    }

    if (a8)
    {
      CFDictionarySetValue(v16, @"DACallbackWatch", a8);
    }
  }

  return v16;
}

void sub_100002354(void *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  v5 = CFGetAllocator(a1);
  v6 = CFNumberCreate(v5, kCFNumberSInt64Type, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a2, v6);
    CFRelease(v7);
  }
}

const char *sub_1000023C4(unsigned int a1)
{
  if (a1 > 0x11)
  {
    return "Unknown Kind";
  }

  else
  {
    return (&off_1000250B0)[a1];
  }
}

const __CFNumber *sub_100002408(const __CFDictionary *a1, const void *a2)
{
  valuePtr = 0;
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void sub_100002440(const __CFDictionary *a1, void *a2, void *a3)
{
  v6 = sub_1000029A0(a1);
  sub_1000014A4("%s -> %@", qword_1000292F0, v6);
  if (!sub_1000029D4(v6, 0x10000000))
  {
    if (sub_1000029BC(a1))
    {
      v7 = sub_1000029C8(a1);
      if (!v7 || sub_100007170(a2, v7))
      {
        switch(sub_1000023E8(a1))
        {
          case 0u:
          case 4u:
            v26 = sub_1000029E4(kCFAllocatorDefault, a1);
            if (v26)
            {
              v27 = v26;
              sub_1000029F0(v26, a2);
              v28 = sub_100002A20(a2);
              sub_100002A08(v27, v28);
              sub_100002A5C(v6, v27);
              v29 = sub_1000029BC(v27);
              v30 = sub_100002AFC(v27);
              v31 = sub_1000023E8(v27);
              v32 = sub_1000023C4(v31);
              sub_100001950("  dispatched callback, id = %016llX:%016llX, kind = %s, disk = %@.", v29, v30, v32, a2);
              v33 = v27;
              goto LABEL_23;
            }

            return;
          case 1u:
          case 5u:
          case 7u:
          case 0xAu:
          case 0xCu:
          case 0xDu:
          case 0x11u:
            sub_1000029F0(a1, a2);
            v8 = sub_100002A20(a2);
            sub_100002A08(a1, v8);
            sub_100004584(a1, a3);
            sub_100002A5C(v6, a1);
            v9 = sub_1000029BC(a1);
            v10 = sub_100002AFC(a1);
            v11 = sub_1000023E8(a1);
            v12 = sub_1000023C4(v11);
            v13 = v12;
            if (a3)
            {
              v55 = sub_1000079F8(a3);
              sub_100001950("  dispatched callback, id = %016llX:%016llX, kind = %s, disk = %@, status = 0x%08X.", v9, v10, v13, a2, v55);
            }

            else
            {
              sub_100001950("  dispatched callback, id = %016llX:%016llX, kind = %s, disk = %@, success.", v9, v10, v12, a2);
            }

            return;
          case 2u:
            if (!sub_1000029D4(v6, 0x1000000))
            {
              if (a3)
              {
                sub_10001B35C();
              }

              goto LABEL_11;
            }

            return;
          case 3u:
            if (sub_1000029AC(a2, 0x10000000))
            {
              return;
            }

            v40 = sub_100004578(a1);
            if (v40)
            {
              v41 = v40;
              MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, a3);
              if (MutableCopy)
              {
                v43 = MutableCopy;
                sub_1000039D0(MutableCopy, v41);
                goto LABEL_34;
              }
            }

            else
            {
              v43 = CFRetain(a3);
              if (v43)
              {
LABEL_34:
                if (CFArrayGetCount(v43))
                {
                  v44 = sub_1000029E4(kCFAllocatorDefault, a1);
                  if (v44)
                  {
                    v45 = v44;
                    Count = CFArrayGetCount(v43);
                    if (Count >= 1)
                    {
                      v47 = Count;
                      for (i = 0; i != v47; ++i)
                      {
                        v49 = sub_1000029BC(v45);
                        v50 = sub_100002AFC(v45);
                        v51 = sub_1000023E8(v45);
                        v52 = sub_1000023C4(v51);
                        ValueAtIndex = CFArrayGetValueAtIndex(v43, i);
                        sub_100001950("  dispatched callback, id = %016llX:%016llX, kind = %s, disk = %@, key = %@.", v49, v50, v52, a2, ValueAtIndex);
                      }
                    }

                    sub_1000029F0(v45, a2);
                    v54 = sub_100002A20(a2);
                    sub_100002A08(v45, v54);
                    sub_100004584(v45, v43);
                    sub_100002A5C(v6, v45);
                    CFRelease(v45);
                  }
                }

                v33 = v43;
                goto LABEL_23;
              }
            }

            break;
          case 6u:
          case 8u:
          case 9u:
          case 0xEu:
            if (!sub_1000029D4(v6, 0x1000000))
            {
              if (a3)
              {
                sub_10001B330();
              }

LABEL_11:
              v14 = sub_10000966C(kCFAllocatorDefault, dword_100029194);
              if (v14)
              {
                v15 = v14;
                v16 = sub_1000029E4(kCFAllocatorDefault, a1);
                if (v16)
                {
                  v17 = v16;
                  sub_1000029F0(v16, a2);
                  sub_100004584(v17, v15);
                  Current = CFAbsoluteTimeGetCurrent();
                  sub_10000459C(v17, Current);
                  CFArrayAppendValue(qword_100029300, v17);
                  CFRelease(v17);
                }

                v19 = sub_1000029E4(kCFAllocatorDefault, a1);
                if (v19)
                {
                  v20 = v19;
                  sub_1000029F0(v19, a2);
                  v21 = sub_100002A20(a2);
                  sub_100002A08(v20, v21);
                  sub_100004584(v20, v15);
                  sub_100002A5C(v6, v20);
                  v22 = sub_1000029BC(v20);
                  v23 = sub_100002AFC(v20);
                  v24 = sub_1000023E8(v20);
                  v25 = sub_1000023C4(v24);
                  sub_100001950("  dispatched callback, id = %016llX:%016llX, kind = %s, disk = %@.", v22, v23, v25, a2);
                  CFRelease(v20);
                }

                CFRelease(v15);
              }

              ++dword_100029194;
            }

            return;
          case 0xFu:
          case 0x10u:
            v34 = sub_1000029E4(kCFAllocatorDefault, a1);
            if (v34)
            {
              v35 = v34;
              sub_100002A5C(v6, v34);
              v36 = sub_1000029BC(v35);
              v37 = sub_100002AFC(v35);
              v38 = sub_1000023E8(v35);
              v39 = sub_1000023C4(v38);
              sub_100001950("  dispatched callback, id = %016llX:%016llX, kind = %s.", v36, v37, v39);
              v33 = v35;
LABEL_23:

              CFRelease(v33);
            }

            return;
          default:
            return;
        }
      }
    }
  }
}

void sub_1000029F0(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DACallbackDisk", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DACallbackDisk");
  }
}

void sub_100002A08(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DACallbackArgument0", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DACallbackArgument0");
  }
}

CFMutableDataRef sub_100002A20(CFTypeRef cf)
{
  result = *(cf + 21);
  if (!result)
  {
    v3 = CFGetAllocator(cf);
    result = sub_100009744(v3, *(cf + 8));
    *(cf + 21) = result;
  }

  return result;
}

void sub_100002A5C(uint64_t a1, const void *a2)
{
  *(a1 + 68) &= ~1u;
  CFArrayAppendValue(*(a1 + 40), a2);
  if (CFArrayGetCount(*(a1 + 40)) == 1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      *&msg.msgh_voucher_port = 0;
      msg.msgh_remote_port = v3;
      msg.msgh_local_port = 0;
      *&msg.msgh_bits = 0x1800000013;
      if (mach_msg(&msg, 17, 0x18u, 0, 0, 0, 0) == 268435460)
      {
        mach_msg_destroy(&msg);
      }
    }
  }
}

void sub_100002B4C(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = sub_100002BE4(a1);
  if (v7)
  {
    v8 = v7;
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
        if (sub_1000023E8(ValueAtIndex) == a2)
        {
          sub_100002440(ValueAtIndex, a3, a4);
        }
      }
    }
  }
}

uint64_t sub_100002BEC(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 68) = *(result + 68) & ~a2 | v3;
  return result;
}

uint64_t sub_100002C08(int a1, vm_address_t *a2, unsigned int *a3)
{
  v6 = 4175036419;
  sub_1000014A4("? [?]:%d -> %s", a1, qword_1000292F0);
  if (!a1)
  {
    goto LABEL_14;
  }

  v7 = sub_100001DA8(a1);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  sub_1000014A4("%s -> %@", qword_1000292F0, v7);
  v9 = sub_100002E30(v8);
  if (!v9)
  {
    sub_100002BEC(v8, 0x1000000, 0);
LABEL_14:
    sub_100001950("unable to copy callback queue (status code 0x%08X).", v6);
    return v6;
  }

  v10 = v9;
  Count = CFArrayGetCount(v9);
  if (Count >= 1)
  {
    v12 = Count;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
      sub_1000029F0(ValueAtIndex, 0);
      sub_100002E38(ValueAtIndex, 0);
      sub_100002E50(ValueAtIndex, 0);
    }
  }

  v15 = sub_100002E68(kCFAllocatorDefault);
  if (v15)
  {
    v16 = v15;
    v17 = sub_100002EB8(v15, a3);
    *a2 = v17;
    if (v17)
    {
      sub_100001950("  dispatched callback queue.");
      v6 = 0;
    }

    CFRelease(v16);
  }

  CFArrayRemoveAllValues(v10);
  sub_100002BEC(v8, 0x1000000, 0);
  if (v6)
  {
    goto LABEL_14;
  }

  return v6;
}

_DWORD *sub_100002D84(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    *(a2 + 32) = -304;
    goto LABEL_6;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777473;
  result = sub_100002C08(result[3], (a2 + 28), (a2 + 52));
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
  *(a2 + 4) = 56;
  *(a2 + 24) = 1;
  return result;
}

void sub_100002E38(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DACallbackMatch", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DACallbackMatch");
  }
}

void sub_100002E50(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DACallbackSession", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DACallbackSession");
  }
}

CFMutableDataRef sub_100002E68(const __CFAllocator *a1)
{
  Mutable = CFDataCreateMutable(a1, 0);
  if (Mutable && !__CFBinaryPlistWriteToStream())
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

vm_address_t sub_100002EB8(const __CFData *a1, unsigned int *a2)
{
  address = 0;
  Length = CFDataGetLength(a1);
  *a2 = Length;
  vm_allocate(mach_task_self_, &address, Length, 1);
  v5 = address;
  if (!address)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  memmove(v5, BytePtr, *a2);
  return address;
}

uint64_t *sub_100002F44()
{
  if (!qword_1000284B0 && !sub_100002F88())
  {
    return 0;
  }

  if (sub_100002FF4())
  {
    return &qword_1000284B8;
  }

  return 0;
}

uint64_t sub_100002F88()
{
  if (qword_1000284B0)
  {
    rewind(qword_1000284B0);
LABEL_4:
    dword_1000284E8 = 0;
    return 1;
  }

  qword_1000284B0 = fopen("/etc/fstab", "r");
  if (qword_1000284B0)
  {
    goto LABEL_4;
  }

  v1 = __error();
  sub_1000033BC(*v1);
  return 0;
}

uint64_t sub_100002FF4()
{
  result = fgets(byte_1000284EC, 1024, qword_1000284B0);
  __stringp = result;
  if (!result)
  {
    return result;
  }

LABEL_2:
  ++dword_1000284E8;
  do
  {
    v1 = strsep(&__stringp, " \t\n");
    if (!v1)
    {
      qword_1000284B8 = 0;
LABEL_42:
      result = fgets(byte_1000284EC, 1024, qword_1000284B0);
      __stringp = result;
      if (!result)
      {
        return result;
      }

      goto LABEL_2;
    }
  }

  while (!*v1);
  qword_1000284B8 = v1;
  if (*v1 == 35)
  {
    goto LABEL_42;
  }

  do
  {
    v2 = strsep(&__stringp, " \t\n");
  }

  while (v2 && !*v2);
  qword_1000284C0 = v2;
  do
  {
    v3 = strsep(&__stringp, " \t\n");
  }

  while (v3 && !*v3);
  qword_1000284C8 = v3;
  do
  {
    v4 = strsep(&__stringp, " \t\n");
    if (!v4)
    {
      qword_1000284D0 = 0;
      sub_1000033BC(79);
      goto LABEL_42;
    }
  }

  while (!*v4);
  qword_1000284D0 = v4;
  sub_1000034E8(qword_1000284B8);
  sub_1000034E8(qword_1000284C0);
  qword_1000284E0 = 0;
  while (1)
  {
    v5 = strsep(&__stringp, " \t\n");
    if (!v5)
    {
      break;
    }

    if (*v5)
    {
      LODWORD(qword_1000284E0) = atoi(v5);
      while (1)
      {
        v6 = strsep(&__stringp, " \t\n");
        if (!v6)
        {
          goto LABEL_21;
        }

        if (*v6)
        {
          HIDWORD(qword_1000284E0) = atoi(v6);
          goto LABEL_21;
        }
      }
    }
  }

LABEL_21:
  qword_1000284D8 = "??";
  __strlcpy_chk();
  __stringp = &v12;
  v7 = strsep(&__stringp, ",");
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  while (1)
  {
    if (strlen(v8) != 2)
    {
      goto LABEL_39;
    }

    v9 = *v8;
    if (v9 == 120)
    {
      if (v8[1] == 120 && !v8[2])
      {
        qword_1000284D8 = "xx";
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    if (v9 != 115)
    {
      break;
    }

    if (v8[1] == 119 && !v8[2])
    {
      v10 = "sw";
      goto LABEL_48;
    }

LABEL_39:
    v8 = strsep(&__stringp, ",");
    if (!v8)
    {
      return 1;
    }
  }

  if (v9 != 114)
  {
    goto LABEL_39;
  }

  if (v8[1] == 119 && !v8[2])
  {
    v10 = "rw";
    goto LABEL_48;
  }

  if (v8[1] != 113 || v8[2])
  {
    if (v8[1] == 111 && !v8[2])
    {
      v10 = "ro";
      goto LABEL_48;
    }

    goto LABEL_39;
  }

  v10 = "rq";
LABEL_48:
  qword_1000284D8 = v10;
  return 1;
}

uint64_t *sub_100003314(const char *a1)
{
  if (sub_100002F88())
  {
    v2 = &qword_1000284B8;
    while (sub_100002FF4())
    {
      if (!strcmp(qword_1000284B8, a1))
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t *sub_100003368(const char *a1)
{
  if (sub_100002F88())
  {
    v2 = &qword_1000284B8;
    while (sub_100002FF4())
    {
      if (!strcmp(qword_1000284C0, a1))
      {
        return v2;
      }
    }
  }

  return 0;
}

ssize_t sub_1000033BC(int a1)
{
  write(2, "fstab: ", 7uLL);
  write(2, "/etc/fstab", 0xAuLL);
  write(2, ":", 1uLL);
  snprintf(__str, 0x1EuLL, "%d: ", dword_1000284E8);
  v2 = strlen(__str);
  write(2, __str, v2);
  v3 = strerror(a1);
  v4 = strlen(v3);
  write(2, v3, v4);
  return write(2, "\n", 1uLL);
}

uint64_t sub_1000034B8()
{
  result = qword_1000284B0;
  if (qword_1000284B0)
  {
    result = fclose(qword_1000284B0);
    qword_1000284B0 = 0;
  }

  return result;
}

unsigned __int8 *sub_1000034E8(unsigned __int8 *result)
{
  for (i = result; ; ++i)
  {
    v2 = *result;
    if (v2 != 92)
    {
      break;
    }

    v2 = result[1];
    if (v2 == 92)
    {
      ++result;
    }

    else if (v2 == 48 && result[2] == 52)
    {
      if (result[3] == 48)
      {
        result += 3;
        LOBYTE(v2) = 32;
      }

      else
      {
        LOBYTE(v2) = 92;
      }
    }

    else
    {
      LOBYTE(v2) = 92;
    }

LABEL_13:
    *i = v2;
    ++result;
  }

  if (*result)
  {
    goto LABEL_13;
  }

  *i = 0;
  return result;
}

uint64_t *sub_100003564()
{
  if (!qword_1000288F0 && !sub_1000035A8())
  {
    return 0;
  }

  if (sub_100003680())
  {
    return &qword_1000288F8;
  }

  return 0;
}

BOOL sub_1000035A8()
{
  if (qword_1000288F0)
  {
    rewind(qword_1000288F0);
    return 1;
  }

  else
  {
    qword_1000288F0 = fopen("/var/db/volinfo.database", "r");
    return qword_1000288F0 != 0;
  }
}

uint64_t *sub_1000035FC(const char *a1)
{
  if (sub_1000035A8())
  {
    v2 = &qword_1000288F8;
    while (sub_100003680())
    {
      if (!strcmp(qword_1000288F8, a1))
      {
        return v2;
      }
    }
  }

  return 0;
}

uint64_t sub_100003650()
{
  result = qword_1000288F0;
  if (qword_1000288F0)
  {
    result = fclose(qword_1000288F0);
    qword_1000288F0 = 0;
  }

  return result;
}

char *sub_100003680()
{
  result = fgets(byte_100028908, 1024, qword_1000288F0);
  __stringp = result;
  if (result)
  {
    while (1)
    {
      v1 = strsep(&__stringp, ":");
      if (v1)
      {
        if (*v1)
        {
          qword_1000288F8 = v1;
          v2 = strsep(&__stringp, "\n");
          if (v2)
          {
            if (*v2)
            {
              dword_100028900 = strtol(v2, &__stringp, 16);
              if (!*__stringp)
              {
                break;
              }
            }
          }
        }
      }

      result = fgets(byte_100028908, 1024, qword_1000288F0);
      __stringp = result;
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_100003764(const char *a1)
{
  v2 = getfsstat(0, 0, 2);
  v3 = v2;
  if (v2 >= 1 && (v4 = malloc_type_malloc(2168 * v2, 0x100004087E0324AuLL)) != 0)
  {
    v5 = v4;
    v3 = getfsstat(v4, 2168 * v3, 2);
    if (v3 < 1)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      v6 = 0;
      f_mntonname = v5->f_mntonname;
      while (1)
      {
        if (!strcmp(f_mntonname - 16, "autofs"))
        {
          v8 = strlen(f_mntonname);
          if (!strncmp(f_mntonname, a1, v8))
          {
            break;
          }
        }

        ++v6;
        f_mntonname += 2168;
        if (v3 == v6)
        {
          LODWORD(v6) = v3;
          break;
        }
      }
    }

    free(v5);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6 < v3;
}

uint64_t sub_10000386C(const std::__fs::filesystem::path *a1, mode_t a2)
{
  if (a1)
  {
    __from = 0;
    asprintf(&__from, "%s.XXXXXX", a1);
    if (__from)
    {
      if (mkdtemp(__from))
      {
        v4 = chmod(__from, a2);
        if (v4)
        {
          v6 = v4;
LABEL_9:
          rmdir(__from);
          goto LABEL_10;
        }

        rename(__from, a1, v5);
        v6 = v7;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v6 = 0xFFFFFFFFLL;
      }

LABEL_10:
      free(__from);
      return v6;
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_100003910()
{
  if (!--qword_100028D08)
  {
    os_release(qword_100028D10);
    qword_100028D10 = 0;
  }
}

const void *sub_100003964(const __CFArray *a1, const void *a2)
{
  v7.length = CFArrayGetCount(a1);
  v7.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v7, a2);
  if (FirstIndexOfValue == -1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(a1, FirstIndexOfValue);
}

void sub_1000039D0(const __CFArray *a1, const __CFArray *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v5 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v5 - 2);
      if (!sub_100009514(a2, ValueAtIndex))
      {
        CFArrayRemoveValueAtIndex(a1, v5 - 2);
      }

      --v5;
    }

    while (v5 > 1);
  }
}

CFBundleRef sub_100003A44(CFURLRef bundleURL, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = CFBundleCreate(kCFAllocatorDefault, bundleURL);
  if (result)
  {
    v8 = result;
    _CFBundleSetStringsFilesShared();
    v9 = CFBundleCopyLocalizedString(v8, a2, a3, a4);
    CFRelease(v8);
    return v9;
  }

  return result;
}

CFURLRef sub_100003ABC(const __CFURL *a1, const __CFString *a2)
{
  v3 = CFURLCreateWithFileSystemPathRelativeToBase(kCFAllocatorDefault, a2, kCFURLPOSIXPathStyle, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  PathComponent = CFURLCopyLastPathComponent(v3);
  if (PathComponent)
  {
    v6 = PathComponent;
    v7 = CFURLCreateCopyDeletingLastPathComponent(kCFAllocatorDefault, v4);
    if (v7)
    {
      v8 = v7;
      v9 = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
      if (v9)
      {
        v10 = v9;
        v11 = CFBundleCopyResourceURLInDirectory(a1, v6, 0, v9);
        CFRelease(v10);
      }

      else
      {
        v11 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v6);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v4);
  return v11;
}

__CFData *sub_100003BA0(const __CFAllocator *a1, const __CFString *a2)
{
  Mutable = CFDataCreateMutable(a1, 0);
  if (Mutable)
  {
    Length = CFStringGetLength(a2);
    if (Length < 2)
    {
      v13 = 0;
    }

    else
    {
      v5 = 0;
      while (1)
      {
        bytes = 0;
        CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v5);
        v7 = CFStringGetCharacterAtIndex(a2, v5 + 1);
        if (CharacterAtIndex > 0xFF)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[CharacterAtIndex] & 0x10000) == 0)
        {
          break;
        }

        v8 = v7;
        if (v7 > 0xFF || (_DefaultRuneLocale.__runetype[v7] & 0x10000) == 0)
        {
          break;
        }

        v9 = __tolower(CharacterAtIndex) - 48;
        v10 = __tolower(v8);
        v11 = v10 - 48;
        if (v9 <= 9u)
        {
          v12 = 16 * v9;
        }

        else
        {
          v12 = 16 * v9 - 112;
        }

        if ((v11 & 0xFFFEu) > 9)
        {
          LOBYTE(v11) = v10 - 87;
        }

        bytes = v12 | v11;
        CFDataAppendBytes(Mutable, &bytes, 1);
        v13 = v5 + 2;
        v14 = v5 + 3;
        v5 += 2;
        if (v14 >= Length)
        {
          goto LABEL_17;
        }
      }

      v13 = v5;
    }

LABEL_17:
    if (v13 < Length)
    {
      do
      {
        v15 = CFStringGetCharacterAtIndex(a2, v13);
        if (v15 > 0x7F)
        {
          if (!__maskrune(v15, 0x4000uLL))
          {
LABEL_24:
            CFDataSetLength(Mutable, 0);
            break;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[v15] & 0x4000) == 0)
        {
          goto LABEL_24;
        }

        ++v13;
      }

      while (Length != v13);
    }

    if (!CFDataGetLength(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

CFTypeRef sub_100003D54(uint64_t a1, const __CFString *a2)
{
  ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, a2, 0x8000100u, 0);
  if (!ExternalRepresentation)
  {
    return 0;
  }

  v3 = ExternalRepresentation;
  v4 = CFPropertyListCreateWithData(kCFAllocatorDefault, ExternalRepresentation, 0, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFDictionaryGetTypeID())
    {
      v7 = CFRetain(v5);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v3);
  return v7;
}

const void *sub_100003E0C(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  CFDictionaryGetKeysAndValues(a1, 0, v3);
  v5 = *v4;
  free(v4);
  return v5;
}

BOOL sub_100003E7C(const __CFString *a1, UInt8 *a2, uint64_t a3)
{
  v5 = a3 - 1;
  usedBufLen = a3 - 1;
  v9.length = CFStringGetLength(a1);
  v9.location = 0;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, a2, v5, &usedBufLen);
  v6 = usedBufLen;
  a2[usedBufLen] = 0;
  return v6 != 0;
}

void sub_100003F28(__CFString *a1, CFIndex a2, const __CFString *a3, va_list a4)
{
  v6 = CFStringCreateWithFormatAndArguments(kCFAllocatorDefault, 0, a3, a4);
  if (v6)
  {
    v7 = v6;
    CFStringInsert(a1, a2, v6);

    CFRelease(v7);
  }
}

void sub_100003FA4(__CFString *a1, const __CFString *a2, CFIndex a3, CFIndex a4)
{
  if (CFStringGetLength(a1) < a3)
  {

    CFStringPad(a1, a2, a3, a4);
  }
}

CFUUIDRef sub_100004014(const __CFAllocator *a1, CFUUIDRef uuid, const __CFData *a3)
{
  memset(&c, 0, sizeof(c));
  *md = 0u;
  v14 = 0u;
  data = CFUUIDGetUUIDBytes(uuid);
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 0x10u);
  BytePtr = CFDataGetBytePtr(a3);
  Length = CFDataGetLength(a3);
  CC_SHA256_Update(&c, BytePtr, Length);
  CC_SHA256_Final(md, &c);
  v7 = 0;
  byte7 = 0;
  byte13 = 0;
  do
  {
    *(&byte7 + (v7 & 0xF)) ^= md[v7];
    ++v7;
  }

  while (v7 != 32);
  return CFUUIDCreateWithBytes(a1, byte7, BYTE1(byte7), BYTE2(byte7), BYTE3(byte7), BYTE4(byte7), BYTE5(byte7), BYTE6(byte7) & 0xF | 0x40u, HIBYTE(byte7), byte13 & 0x3F | 0x80, BYTE1(byte13), BYTE2(byte13), BYTE3(byte13), BYTE4(byte13), BYTE5(byte13), BYTE6(byte13), HIBYTE(byte13));
}

CFUUIDRef sub_10000416C(const __CFAllocator *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = Length;
  if (Length)
  {
    for (i = 0; v5 != i; ++i)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, i);
      if (i > 0x23)
      {
        if (CharacterAtIndex > 0x7F)
        {
          if (!__maskrune(CharacterAtIndex, 0x4000uLL))
          {
            return 0;
          }
        }

        else if ((_DefaultRuneLocale.__runetype[CharacterAtIndex] & 0x4000) == 0)
        {
          return 0;
        }
      }

      else if (i <= 0x17 && ((1 << i) & 0x842100) != 0)
      {
        if (CharacterAtIndex != 45)
        {
          return 0;
        }
      }

      else if (CharacterAtIndex > 0xFF || (_DefaultRuneLocale.__runetype[CharacterAtIndex] & 0x10000) == 0)
      {
        return 0;
      }
    }
  }

  return CFUUIDCreateFromString(a1, theString);
}

const __CFString *sub_100004284(const __CFURL *a1, CFURLPathStyle a2)
{
  v3 = CFURLCopyFileSystemPath(a1, a2);
  if (v3)
  {
    PathComponent = CFURLCopyLastPathComponent(a1);
    if (PathComponent)
    {
      v5 = PathComponent;
      v6 = CFGetAllocator(a1);
      MutableCopy = CFStringCreateMutableCopy(v6, 0, v3);
      if (MutableCopy)
      {
        v8 = MutableCopy;
        Length = CFStringGetLength(v3);
        v10 = CFStringGetLength(v5);
        CFStringInsert(v8, Length - v10, @"r");
        CFRelease(v3);
        v3 = v8;
      }

      CFRelease(v5);
    }
  }

  return v3;
}

uint64_t sub_100004324(io_registry_entry_t a1, const char *a2, char *a3)
{
  v6 = 3758097090;
  Path = IORegistryEntryGetPath(a1, a2, a3);
  if (Path == -536870206)
  {
    parent = 0;
    Path = IORegistryEntryGetParentEntry(a1, a2, &parent);
    if (!Path)
    {
      Path = sub_100004324(parent, a2, a3);
      if (Path)
      {
        goto LABEL_12;
      }

      memset(name, 0, 128);
      Path = IORegistryEntryGetNameInPlane(a1, a2, name);
      if (Path)
      {
        goto LABEL_12;
      }

      memset(location, 0, sizeof(location));
      LocationInPlane = IORegistryEntryGetLocationInPlane(a1, a2, location);
      v9 = strlen(a3);
      if (LocationInPlane)
      {
        v10 = name;
        if (v9 + strlen(name) + 1 <= 0x3FF)
        {
          v11 = "/";
LABEL_10:
          strlcat(a3, v11, 0x400uLL);
          strlcat(a3, v10, 0x400uLL);
          v6 = 0;
        }
      }

      else
      {
        v12 = strlen(name);
        if (v9 + v12 + strlen(location) + 2 <= 0x3FF)
        {
          strlcat(a3, "/", 0x400uLL);
          strlcat(a3, name, 0x400uLL);
          v10 = location;
          v11 = "@";
          goto LABEL_10;
        }
      }

      Path = v6;
LABEL_12:
      IOObjectRelease(parent);
    }
  }

  return Path;
}

double sub_100004538(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DACallbackTime");
  if (!Value)
  {
    return 0.0;
  }

  return CFDateGetAbsoluteTime(Value);
}

void sub_100004584(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DACallbackArgument1", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DACallbackArgument1");
  }
}

void sub_10000459C(__CFDictionary *a1, CFAbsoluteTime a2)
{
  v3 = CFDateCreate(kCFAllocatorDefault, a2);
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(a1, @"DACallbackTime", v3);

    CFRelease(v4);
  }
}

uint64_t sub_100004608()
{
  pthread_mutex_lock(&stru_100028390);
  if (dword_100028D18)
  {
LABEL_2:
    sub_1000018C8();
    qword_100028D28 = dispatch_mach_create_f();
    dispatch_mach_connect();
    goto LABEL_3;
  }

  if (!mach_port_allocate(mach_task_self_, 1u, &dword_100028D18) && !mach_port_insert_right(mach_task_self_, dword_100028D18, dword_100028D18, 0x14u))
  {
    port_info = 1;
    mach_port_set_attributes(mach_task_self_, dword_100028D18, 1, &port_info, 1u);
  }

  if (dword_100028D18)
  {
    v1 = sub_1000018C8();
    v2 = dispatch_source_create(&_dispatch_source_type_signal, 0x14uLL, 0, v1);
    qword_100028D20 = v2;
    if (!v2)
    {
      mach_port_mod_refs(mach_task_self_, dword_100028D18, 1u, -1);
      dword_100028D18 = 0;
      goto LABEL_3;
    }

    dispatch_source_set_event_handler(v2, &stru_100024CF0);
    dispatch_resume(qword_100028D20);
    if (!dword_100028D18)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:
  pthread_mutex_unlock(&stru_100028390);
  return qword_100028D28;
}

void sub_100004760(id a1)
{
  v1 = dispatch_mach_msg_create();
  dispatch_mach_send();
  dispatch_release(v1);
}

void sub_1000047D4(uint64_t a1, uint64_t a2)
{
  if (a2 == 2)
  {
    v15 = 0;
    msg = dispatch_mach_msg_get_msg();
    v3 = waitpid(-1, &v15, 1);
    if (v3 >= 1)
    {
      for (i = v3; i > 0; i = waitpid(-1, &v15, 1))
      {
        pthread_mutex_lock(&stru_100028390);
        v5 = qword_100028D30;
        if (qword_100028D30)
        {
          v6 = 0;
          while (1)
          {
            v7 = v5;
            if (*v5 != 1)
            {
              sub_10001AE78();
            }

            if (*(v5 + 16) == i)
            {
              break;
            }

            v5 = *(v5 + 8);
            v6 = v7;
            if (!v5)
            {
              goto LABEL_27;
            }
          }

          if (v6)
          {
            v8 = (v6 + 8);
          }

          else
          {
            v8 = &qword_100028D30;
          }

          *v8 = *(v5 + 8);
          pthread_mutex_unlock(&stru_100028390);
          if (*(v7 + 20) == -1)
          {
            Mutable = 0;
          }

          else
          {
            Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
            if (Mutable)
            {
              v10 = malloc_type_malloc(0x200uLL, 0x93D0AC9BuLL);
              if (v10)
              {
                v11 = v10;
                v12 = read(*(v7 + 20), v10, 0x200uLL);
                if (v12 >= 1)
                {
                  do
                  {
                    CFDataAppendBytes(Mutable, v11, v12 & 0x7FFFFFFF);
                    v12 = read(*(v7 + 20), v11, 0x200uLL);
                  }

                  while (v12 > 0);
                }

                free(v11);
              }
            }

            close(*(v7 + 20));
          }

          if ((v15 & 0x7F) != 0)
          {
            v13 = v15;
          }

          else
          {
            v13 = v15 >> 8;
          }

          v15 = v13;
          v14 = *(v7 + 32);
          (*(v7 + 24))();
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          free(v7);
          pthread_mutex_lock(&stru_100028390);
        }

LABEL_27:
        pthread_mutex_unlock(&stru_100028390);
      }
    }

    mach_msg_destroy(msg);
  }
}

void sub_1000049C0(const __CFURL *a1, char a2, uid_t a3, gid_t a4, int a5, int a6, void (*a7)(uint64_t, void, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v45 = &a9;
  v18 = 8;
  do
  {
    v19 = v45++;
    v18 += 8;
  }

  while (*v19);
  v20 = malloc_type_malloc(v18, 0x10040436913F5uLL);
  if (!v20)
  {
    v30 = 1;
    v31 = 70;
    if (!a7)
    {
      return;
    }

    goto LABEL_42;
  }

  v21 = v20;
  bzero(v20, v18);
  v22 = sub_1000096F8(a1);
  *v21 = v22;
  if (v22)
  {
    v43 = a5;
    v44 = a6;
    v46 = &a10;
    v23 = a9;
    if (a9)
    {
      v24 = (v21 + 1);
      while (1)
      {
        v25 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", v23);
        if (v25)
        {
          v26 = v25;
          *v24 = sub_1000015D8(v25);
          CFRelease(v26);
        }

        if (!*v24)
        {
          break;
        }

        v27 = v46++;
        v23 = *v27;
        ++v24;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v31 = 70;
      v30 = 1;
    }

    else
    {
LABEL_11:
      *v49 = -1;
      if (!dword_100028D18)
      {
        sub_10001AEA4();
      }

      if ((a2 & 1) != 0 && pipe(v49))
      {
        v28 = 66;
        v29 = 1;
      }

      else
      {
        pthread_mutex_lock(&stru_100028390);
        v32 = fork();
        if (!v32)
        {
          v47 = 0;
          v48 = 0;
          if (setgid(a4) == -1 || setuid(a3) == -1)
          {
            _exit(77);
          }

          if (v49[1] != -1)
          {
            dup2(v49[1], 1);
            close(v49[1]);
          }

          if (!posix_spawnattr_init(&v48))
          {
            if (!posix_spawn_file_actions_init(&v47))
            {
              if (!posix_spawnattr_setflags(&v48, 16448) && !posix_spawn_file_actions_addinherit_np(&v47, 1) && !posix_spawn_file_actions_addinherit_np(&v47, 2) && !posix_spawn_file_actions_addinherit_np(&v47, 0) && (v43 < 0 || !posix_spawn_file_actions_addinherit_np(&v47, v43)))
              {
                if (v44)
                {
                  setenv("MallocXzoneEarlyAlloc", "0", 1);
                }

                v41 = *v21;
                v42 = _NSGetEnviron();
                posix_spawn(0, v41, &v47, &v48, v21, *v42);
              }

              posix_spawn_file_actions_destroy(&v47);
            }

            posix_spawnattr_destroy(&v48);
          }

          _exit(71);
        }

        v33 = v32;
        if (a7)
        {
          if (v32 != -1)
          {
            v34 = malloc_type_malloc(0x28uLL, 0x10A00404821B814uLL);
            if (v34)
            {
              v35 = v34;
              *v34 = 1;
              v34[1] = qword_100028D30;
              *(v34 + 4) = v33;
              v36 = v49[0];
              if (v49[0] != -1)
              {
                v36 = dup(v49[0]);
              }

              *(v35 + 20) = v36;
              *(v35 + 24) = a7;
              *(v35 + 32) = a8;
              qword_100028D30 = v35;
            }
          }
        }

        pthread_mutex_unlock(&stru_100028390);
        v29 = v33 == -1;
        if (v33 == -1)
        {
          v28 = 71;
        }

        else
        {
          v28 = 0;
        }
      }

      if (v49[0] != -1)
      {
        close(v49[0]);
      }

      if (v49[1] != -1)
      {
        close(v49[1]);
      }

      v37 = !v29;
      if (!a7)
      {
        v37 = 1;
      }

      if ((v37 & 1) == 0)
      {
        a7(v28, 0, a8);
      }

      v30 = 0;
      v31 = 0;
    }

    v38 = *v21;
    if (*v21)
    {
      v39 = v21 + 1;
      do
      {
        free(v38);
        v40 = *v39++;
        v38 = v40;
      }

      while (v40);
    }
  }

  else
  {
    v30 = 1;
    v31 = 65;
  }

  free(v21);
  if (a7)
  {
LABEL_42:
    if (v30)
    {
      a7(v31, 0, a8);
    }
  }
}

uint64_t sub_100004DAC(int a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = 0;
  v19 = 0u;
  v15[0] = 0;
  v16 = 0u;
  v10 = sub_10000776C(a3);
  v11 = sub_1000029AC(a3, 256);
  v15[1] = a2;
  LODWORD(v16) = sub_100004ECC(a2, v10, v11);
  DWORD1(v16) = a1;
  v18 = a4;
  DWORD2(v16) = a5 == 0;
  BYTE9(v19) = v10;
  v14 = sub_100004F4C(v15);
  v12 = v14;
  AnalyticsSendEventLazy();

  return 0;
}

uint64_t sub_100004ECC(const __CFString *a1, int a2, char a3)
{
  if (a3)
  {
    return 1;
  }

  v5 = sub_100005B18(a1);
  result = 2;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      if (v5 == 5)
      {
        return result;
      }

      return 0;
    }
  }

  else
  {
    if ((v5 - 1) < 2)
    {
      return result;
    }

    if (v5 != 3)
    {
      return 0;
    }
  }

  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

id sub_100004F4C(const __CFString **a1)
{
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSNumber numberWithUnsignedInt:*a1];
  [v2 setObject:v3 forKeyedSubscript:@"operation_type"];

  v4 = [NSNumber numberWithUnsignedInt:sub_100005B18(a1[1])];
  [v2 setObject:v4 forKeyedSubscript:@"fs_type"];

  v5 = [NSNumber numberWithBool:*(a1 + 57)];
  [v2 setObject:v5 forKeyedSubscript:@"is_external"];

  v6 = [NSNumber numberWithUnsignedInt:*(a1 + 4)];
  [v2 setObject:v6 forKeyedSubscript:@"fs_implementation"];

  if (*a1 == 4)
  {
LABEL_2:
    v7 = *(a1 + 6);
    if ((v7 & 8) != 0)
    {
      v8 = 2;
    }

    else
    {
      v8 = (v7 >> 2) & 1;
    }

    if ((v7 & 0x20) != 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    if ((v7 & 0x10) != 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    if ((v7 & 2) != 0)
    {
      v11 = 5;
    }

    else
    {
      v11 = v10;
    }

    if ((v7 & 0x40) != 0)
    {
      v12 = 6;
    }

    else
    {
      v12 = v11;
    }

    if ((v7 & 0x80) != 0)
    {
      v13 = 7;
    }

    else
    {
      v13 = v12;
    }

    v14 = [NSNumber numberWithInt:v13];
    v15 = @"disk_state";
    goto LABEL_21;
  }

  v17 = *(a1 + 5);
  if (v17 >= 0xFFFFFFFC)
  {
    v17 = dword_100020270[(v17 + 4)];
  }

  v18 = [NSNumber numberWithInt:v17];
  [v2 setObject:v18 forKeyedSubscript:@"status_code"];

  v19 = *a1;
  if (*a1 <= 5u && ((1 << v19) & 0x27) != 0)
  {
    v20 = [NSNumber numberWithUnsignedLongLong:a1[5] / 0xF4240];
    [v2 setObject:v20 forKeyedSubscript:@"duration_ms"];

    v19 = *a1;
  }

  if (v19 == 5 || v19 == 3)
  {
    v21 = *(a1 + 13);
    if (v21 == -1)
    {
      v23 = @"n/a";
    }

    else
    {
      v22 = csops();
      if (v22)
      {
        sub_100009E58("Unable to get signing information for pid %d: %d", v21, v22);
      }

      v23 = @"other";
    }

    [v2 setObject:v23 forKeyedSubscript:@"dissenter_name"];

    v19 = *a1;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_22;
      }

      v14 = [NSNumber numberWithUnsignedLongLong:a1[4]];
      v15 = @"volume_size";
    }

    else
    {
      v14 = [NSNumber numberWithInt:a1[3] & 1];
      v15 = @"volume_clean";
    }

LABEL_21:
    [v2 setObject:v14 forKeyedSubscript:v15];

    goto LABEL_22;
  }

  switch(v19)
  {
    case 2:
      v14 = [NSNumber numberWithBool:*(a1 + 58)];
      v15 = @"automount";
      goto LABEL_21;
    case 4:
      goto LABEL_2;
    case 5:
      v24 = [NSNumber numberWithBool:*(a1 + 48)];
      [v2 setObject:v24 forKeyedSubscript:@"unmount_forced"];

      if (*(a1 + 56))
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (*(a1 + 5))
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v14 = [NSNumber numberWithUnsignedInt:v26];
      v15 = @"approval_status";
      goto LABEL_21;
  }

LABEL_22:

  return v2;
}

uint64_t sub_10000536C(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007058(a2, @"DAMediaSize");
  v7 = sub_1000070AC(a2);
  if (v6)
  {
    v6 = sub_100009698(v6);
  }

  if (v7)
  {
    v8 = sub_100007058(a2, @"DAVolumeUUID");
    v7 = sub_100017F50(v7, v8);
  }

  if (a2)
  {
    v9 = sub_10000776C(a2);
    v10 = sub_1000029AC(a2, 256);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v18 = 0u;
  v15 = 0u;
  v14[0] = 1;
  v14[1] = v7;
  LODWORD(v15) = sub_100004ECC(v7, v9, v10);
  DWORD1(v15) = a1;
  v16 = v6;
  v17 = a3;
  BYTE9(v18) = v9;
  v13 = sub_100004F4C(v14);
  v11 = v13;
  AnalyticsSendEventLazy();

  return 0;
}

uint64_t sub_1000054F0(int a1, const __CFString *a2, int a3, char a4, char a5, uint64_t a6)
{
  v12 = 0;
  v13 = 0;
  v15 = 0u;
  v9[0] = 2;
  v9[1] = a2;
  v14 = a6;
  BYTE10(v15) = a4;
  BYTE9(v15) = a5;
  v10 = a3;
  v11 = a1;
  v8 = sub_100004F4C(v9);
  v6 = v8;
  AnalyticsSendEventLazy();

  return 0;
}

uint64_t sub_1000055C0(int a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = sub_1000070AC(a2);
    v7 = sub_10000776C(a2);
    if (v6)
    {
      v8 = sub_100007058(a2, @"DAVolumeUUID");
      v6 = sub_100017F50(v6, v8);
    }

    if (sub_1000029AC(a2, 512))
    {
      v9 = 1;
    }

    else
    {
      v9 = 2 * sub_1000029AC(a2, 1024);
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v7 = 0;
  }

  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v13[0] = 3;
  v13[1] = v6;
  DWORD1(v18) = a3;
  BYTE9(v18) = v7;
  v14 = v9;
  v15 = a1;
  v12 = sub_100004F4C(v13);
  v10 = v12;
  AnalyticsSendEventLazy();

  return 0;
}

uint64_t sub_100005730(uint64_t a1)
{
  v2 = sub_1000070AC(a1);
  v3 = sub_10000776C(a1);
  v4 = sub_1000029AC(a1, 256);
  v5 = sub_1000029AC(a1, 0x100000) && sub_1000029AC(a1, 2) && sub_1000029AC(a1, 16) && sub_100002E30(a1) == 0;
  v6 = sub_100007058(a1, @"DAVolumePath");
  if (sub_1000029AC(a1, 0x10000))
  {
    v7 = sub_1000029AC(a1, 1);
    if (v2)
    {
LABEL_8:
      v8 = sub_100007058(a1, @"DAVolumeUUID");
      v9 = sub_100017F50(v2, v8);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if (v2)
    {
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_11:
  v19[0] = 4;
  v20 = 0u;
  v10 = v3;
  v21 = 0u;
  v22 = 0u;
  v19[1] = v9;
  DWORD1(v20) = -1;
  LODWORD(v20) = sub_100004ECC(v9, v10, v4);
  BYTE9(v22) = v10;
  v11 = sub_1000029AC(a1, 0x10000000);
  if (sub_1000029AC(a1, 0x80000))
  {
    v12 = ((v11 & 1) << 7) | 4;
  }

  else
  {
    v12 = v11 << 7;
  }

  if (v7)
  {
    v13 = v12 | 8;
  }

  else
  {
    v13 = v12;
  }

  if (sub_1000029AC(a1, 2))
  {
    v13 |= 0x10u;
  }

  v14 = sub_1000029AC(a1, 0x200000);
  v15 = v13 | 0x20;
  if (!v14)
  {
    v15 = v13;
  }

  if (v5)
  {
    v15 |= 0x40u;
  }

  if (v6)
  {
    v15 |= 2u;
  }

  DWORD2(v20) = v15;
  v18 = sub_100004F4C(v19);
  v16 = v18;
  AnalyticsSendEventLazy();

  return 0;
}

uint64_t sub_100005998(unsigned int a1, uint64_t a2, char a3, int a4, char a5, uint64_t a6)
{
  v12 = sub_1000070AC(a2);
  if (v12)
  {
    v13 = sub_100007058(a2, @"DAVolumeUUID");
    v12 = sub_100017F50(v12, v13);
  }

  if (sub_1000029AC(a2, 512))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * sub_1000029AC(a2, 1024);
  }

  v19 = 0u;
  v20 = 0;
  v22 = 0u;
  v18[0] = 5;
  v18[1] = v12;
  *&v19 = __PAIR64__(a1, v14);
  BYTE9(v22) = sub_10000776C(a2);
  v21 = a6;
  LOBYTE(v22) = a3;
  DWORD1(v22) = a4;
  BYTE8(v22) = a5;
  v17 = sub_100004F4C(v18);
  v15 = v17;
  AnalyticsSendEventLazy();

  return 0;
}

const __CFString *sub_100005B18(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringHasSuffix(result, @"_fskit"))
    {
      v2 = sub_100014F34(v1);
      v3 = sub_100005B8C(v2);
      CFRelease(v2);
      return v3;
    }

    else
    {

      return sub_100005B8C(v1);
    }
  }

  return result;
}

uint64_t sub_100005B8C(const __CFString *a1)
{
  v2 = 1;
  if (CFStringCompare(a1, @"MSDOS", 1uLL))
  {
    if (CFStringCompare(a1, @"EXFAT", 1uLL))
    {
      if (CFStringCompare(a1, @"APFS", 1uLL))
      {
        if (CFStringCompare(a1, @"HFS", 1uLL))
        {
          if (CFStringCompare(a1, @"NTFS", 1uLL))
          {
            if (CFStringCompare(a1, @"msdos-efi", 1uLL))
            {
              return 6;
            }

            else
            {
              return 7;
            }
          }

          else
          {
            return 5;
          }
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

uint64_t sub_100005CC4(uint64_t a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 64), a2);
  if (Value == a3)
  {
    return 0;
  }

  if (!Value)
  {
    return -1;
  }

  if (!a3)
  {
    return 1;
  }

  if (CFEqual(Value, a3))
  {
    return 0;
  }

  return -1;
}

uint64_t sub_100005D24(CFAllocatorRef allocator, io_registry_entry_t entry)
{
  valuePtr = 0;
  v76 = 0;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  *buffer = 0u;
  v111 = 0u;
  properties = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  *__s = 0u;
  v79 = 0u;
  iterator = 0;
  Current = 0.0;
  if (IORegistryEntryCreateCFProperties(entry, &properties, allocator, 0) || (Value = CFDictionaryGetValue(properties, @"BSD Name")) == 0 || !CFStringGetCString(Value, buffer, 128, 0x8000100u))
  {
    LODWORD(v4) = 0;
    v5 = 0;
    v6 = 0;
LABEL_3:
    if (!sub_100004324(entry, "IOService", __s))
    {
      if (v6)
      {
        v7 = *(v6 + 144);
      }

      else
      {
        v7 = 0;
      }

      sub_100009E58("unable to create disk, id = %s.", v7);
    }

    if (v4)
    {
      IOObjectRelease(v4);
    }

    if (v5)
    {
      IOObjectRelease(v5);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (properties)
    {
      CFRelease(properties);
    }

    return 0;
  }

  __strlcpy_chk();
  __strlcat_chk();
  v6 = sub_100006B0C(allocator, __s);
  if (!v6)
  {
    goto LABEL_20;
  }

  v9 = strlen(__s);
  v10 = CFURLCreateFromFileSystemRepresentation(allocator, __s, v9, 0);
  *(v6 + 72) = v10;
  if (!v10)
  {
    goto LABEL_20;
  }

  *(v6 + 104) = strdup(__s);
  __strlcpy_chk();
  __strlcat_chk();
  __strlcat_chk();
  *(v6 + 112) = strdup(__s);
  IOObjectRetain(entry);
  *(v6 + 152) = entry;
  CFDictionarySetValue(*(v6 + 64), @"DAVolumeNetwork", kCFBooleanFalse);
  v11 = CFDictionaryGetValue(properties, @"Preferred Block Size");
  if (!v11)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaBlockSize", v11);
  v12 = CFDictionaryGetValue(properties, @"BSD Name");
  if (!v12)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaBSDName", v12);
  v13 = CFDictionaryGetValue(properties, @"BSD Major");
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaBSDMajor", v13);
  CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
  v15 = CFDictionaryGetValue(properties, @"BSD Minor");
  if (!v15)
  {
    goto LABEL_20;
  }

  v16 = v15;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaBSDMinor", v15);
  CFNumberGetValue(v16, kCFNumberSInt32Type, &v76);
  *(v6 + 96) = v76 | (valuePtr << 24);
  v17 = CFDictionaryGetValue(properties, @"BSD Unit");
  if (!v17)
  {
    goto LABEL_20;
  }

  v18 = v17;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaBSDUnit", v17);
  CFNumberGetValue(v18, kCFNumberSInt32Type, (v6 + 128));
  v19 = CFDictionaryGetValue(properties, @"Content");
  if (!v19)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaContent", v19);
  v20 = CFDictionaryGetValue(properties, @"Ejectable");
  if (!v20)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaEjectable", v20);
  v21 = IORegistryEntrySearchCFProperty(entry, "IOService", @"IOMediaIcon", allocator, 3u);
  if (!v21)
  {
    goto LABEL_20;
  }

  v22 = v21;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaIcon", v21);
  CFRelease(v22);
  CFDictionarySetValue(*(v6 + 64), @"DAMediaKind", @"IOMedia");
  v23 = CFDictionaryGetValue(properties, @"Leaf");
  if (!v23)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaLeaf", v23);
  if (IORegistryEntryGetName(entry, buffer))
  {
    goto LABEL_20;
  }

  v25 = CFStringCreateWithCString(allocator, buffer, 0x8000100u);
  if (!v25)
  {
    v25 = CFStringCreateWithCString(allocator, buffer, 0);
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  v26 = v25;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaName", v25);
  CFRelease(v26);
  if (sub_100004324(entry, "IODeviceTree", __s))
  {
    if (sub_100004324(entry, "IOService", __s))
    {
      goto LABEL_20;
    }
  }

  v27 = CFStringCreateWithCString(allocator, __s, 0x8000100u);
  if (!v27)
  {
    v27 = CFStringCreateWithCString(allocator, __s, 0);
    if (!v27)
    {
      goto LABEL_20;
    }
  }

  v28 = v27;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaPath", v27);
  CFRelease(v28);
  v29 = CFDictionaryGetValue(properties, @"Removable");
  if (!v29)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaRemovable", v29);
  v30 = CFDictionaryGetValue(properties, @"Size");
  if (!v30)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaSize", v30);
  v31 = CFDictionaryGetValue(properties, @"UUID");
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = sub_10000416C(allocator, v31);
  if (!v32)
  {
LABEL_20:
    LODWORD(v4) = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v33 = v32;
  CFDictionarySetValue(*(v6 + 64), @"DAMediaUUID", v32);
  CFRelease(v33);
LABEL_44:
  v34 = CFDictionaryGetValue(properties, @"Whole");
  if (!v34)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaWhole", v34);
  v35 = CFDictionaryGetValue(properties, @"Writable");
  if (!v35)
  {
    goto LABEL_20;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAMediaWritable", v35);
  CFRelease(properties);
  properties = 0;
  if (IORegistryEntryCreateIterator(entry, "IOService", 3u, &iterator))
  {
    goto LABEL_20;
  }

  object = IOIteratorNext(iterator);
  if (object)
  {
    while (!IOObjectConformsTo(object, "IOBlockStorageDevice"))
    {
      IOObjectRelease(object);
      object = IOIteratorNext(iterator);
      if (!object)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
LABEL_50:
    object = 0;
  }

  IOObjectRelease(iterator);
  iterator = 0;
  if (!object)
  {
    goto LABEL_20;
  }

  if (IORegistryEntryCreateCFProperties(object, &properties, allocator, 0))
  {
    goto LABEL_69;
  }

  v36 = CFDictionaryGetValue(properties, @"Protocol Characteristics");
  if (v36)
  {
    v37 = v36;
    v38 = CFDictionaryGetValue(v36, @"Physical Interconnect Location");
    if (v38)
    {
      v39 = v38;
      if (CFStringCompare(v38, @"Internal", 0))
      {
        if (CFStringCompare(v39, @"External", 0) == kCFCompareEqualTo)
        {
          CFDictionarySetValue(*(v6 + 64), @"DADeviceInternal", kCFBooleanFalse);
          *(v6 + 176) |= 0x10u;
        }
      }

      else
      {
        CFDictionarySetValue(*(v6 + 64), @"DADeviceInternal", kCFBooleanTrue);
      }
    }

    v40 = CFDictionaryGetValue(v37, @"Physical Interconnect");
    if (v40)
    {
      CFDictionarySetValue(*(v6 + 64), @"DADeviceProtocol", v40);
    }
  }

  v41 = CFDictionaryGetValue(properties, @"Device Characteristics");
  if (v41)
  {
    v42 = v41;
    v43 = CFDictionaryGetValue(v41, @"Product Name");
    if (v43)
    {
      CFDictionarySetValue(*(v6 + 64), @"DADeviceModel", v43);
    }

    v44 = CFDictionaryGetValue(v42, @"Product Revision Level");
    if (v44)
    {
      CFDictionarySetValue(*(v6 + 64), @"DADeviceRevision", v44);
    }

    v45 = CFDictionaryGetValue(v42, @"Vendor Name");
    if (v45)
    {
      CFDictionarySetValue(*(v6 + 64), @"DADeviceVendor", v45);
    }
  }

  if (sub_100004324(object, "IOService", __s))
  {
LABEL_69:
    LODWORD(v4) = 0;
    goto LABEL_70;
  }

  v4 = CFStringCreateWithCString(allocator, __s, 0x8000100u);
  if (!v4)
  {
    goto LABEL_70;
  }

  CFDictionarySetValue(*(v6 + 64), @"DADevicePath", v4);
  CFRelease(v4);
  v46 = IORegistryEntrySearchCFProperty(object, "IOService", @"IOUnit", allocator, 3u);
  if (v46)
  {
    v47 = v46;
    CFDictionarySetValue(*(v6 + 64), @"DADeviceUnit", v46);
    CFRelease(v47);
  }

  v48 = IORegistryEntrySearchCFProperty(object, "IOService", @"GUID", allocator, 3u);
  if (v48)
  {
    v49 = v48;
    *bytes = 0;
    CFNumberGetValue(v48, kCFNumberSInt64Type, bytes);
    CFRelease(v49);
    *bytes = bswap64(*bytes);
    v4 = CFDataCreate(allocator, bytes, 8);
    if (!v4)
    {
      goto LABEL_70;
    }

    CFDictionarySetValue(*(v6 + 64), @"DADeviceGUID", v4);
    CFRelease(v4);
  }

  v50 = IORegistryEntrySearchCFProperty(object, "IOService", @"AppleTDMLocked", allocator, 3u);
  if (v50)
  {
    v51 = v50;
    CFDictionarySetValue(*(v6 + 64), @"DADeviceTDMLocked", v50);
    CFRelease(v51);
  }

  CFRelease(properties);
  properties = 0;
  if (!IORegistryEntryCreateIterator(object, "IOService", 3u, &iterator))
  {
    for (LODWORD(v4) = IOIteratorNext(iterator); v4; LODWORD(v4) = IOIteratorNext(iterator))
    {
      if (IORegistryEntryInPlane(v4, "IODeviceTree"))
      {
        break;
      }

      IOObjectRelease(v4);
    }

    IOObjectRelease(iterator);
    iterator = 0;
    if (v4)
    {
      if (IORegistryEntryGetNameInPlane(v4, "IODeviceTree", buffer))
      {
        goto LABEL_70;
      }

      v53 = CFStringCreateWithCString(allocator, buffer, 0x8000100u);
      if (!v53)
      {
        goto LABEL_70;
      }

      v54 = v53;
      CFDictionarySetValue(*(v6 + 64), @"DABusName", v53);
      CFRelease(v54);
      if (sub_100004324(v4, "IODeviceTree", __s))
      {
        goto LABEL_70;
      }

      v55 = CFStringCreateWithCString(allocator, __s, 0x8000100u);
      if (!v55)
      {
        goto LABEL_70;
      }

      v56 = v55;
      CFDictionarySetValue(*(v6 + 64), @"DABusPath", v55);
      CFRelease(v56);
      IOObjectRelease(v4);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v4 = CFNumberCreate(allocator, kCFNumberDoubleType, &Current);
  if (!v4)
  {
LABEL_70:
    v5 = object;
    goto LABEL_3;
  }

  CFDictionarySetValue(*(v6 + 64), @"DAAppearanceTime", v4);
  CFRelease(v4);
  HIDWORD(valuePtr) = 0;
  IOServiceGetBusyState(entry, &valuePtr + 1);
  if (HIDWORD(valuePtr))
  {
    *(v6 + 16) = CFAbsoluteTimeGetCurrent();
  }

  v52 = IORegistryEntrySearchCFProperty(entry, "IOService", @"quarantine", allocator, 3u);
  if (v52 && v52 == kCFBooleanTrue)
  {
    *(v6 + 176) |= 0x40u;
LABEL_96:
    CFRelease(v52);
    goto LABEL_97;
  }

  if (v52)
  {
    goto LABEL_96;
  }

LABEL_97:
  v57 = IORegistryEntrySearchCFProperty(entry, "IOService", @"owner-uid", allocator, 3u);
  if (v57)
  {
    v58 = v57;
    v59 = CFGetTypeID(v57);
    if (v59 == CFNumberGetTypeID())
    {
      *bytes = 0;
      CFNumberGetValue(v58, kCFNumberIntType, bytes);
      v60 = *bytes;
      *(v6 + 184) = *bytes;
      v61 = getpwuid(v60);
      if (v61)
      {
        *(v6 + 180) = v61->pw_gid;
      }
    }

    CFRelease(v58);
  }

  v62 = IORegistryEntrySearchCFProperty(entry, "IOService", @"owner-gid", allocator, 3u);
  if (v62)
  {
    v63 = v62;
    v64 = CFGetTypeID(v62);
    if (v64 == CFNumberGetTypeID())
    {
      *bytes = 0;
      CFNumberGetValue(v63, kCFNumberIntType, bytes);
      *(v6 + 180) = *bytes;
    }

    CFRelease(v63);
  }

  v65 = IORegistryEntrySearchCFProperty(entry, "IOService", @"owner-mode", allocator, 3u);
  if (v65)
  {
    v66 = v65;
    v67 = CFGetTypeID(v65);
    if (v67 == CFNumberGetTypeID())
    {
      *bytes = 0;
      CFNumberGetValue(v66, kCFNumberIntType, bytes);
      *(v6 + 156) = *bytes;
    }

    CFRelease(v66);
  }

  v68 = IORegistryEntrySearchCFProperty(entry, "IOService", @"dev-name", allocator, 0);
  if (v68)
  {
    v69 = v68;
    v70 = CFGetTypeID(v68);
    if (v70 == CFStringGetTypeID() && CFStringGetCString(v69, buffer, 128, 0x8000100u))
    {
      __strlcpy_chk();
      __strlcat_chk();
      *(v6 + 80) = strdup(__s);
      __strlcpy_chk();
      __strlcat_chk();
      __strlcat_chk();
      *(v6 + 88) = strdup(__s);
    }

    CFRelease(v69);
  }

  IOObjectRelease(object);
  return v6;
}

uint64_t sub_100006B0C(const __CFAllocator *a1, const char *a2)
{
  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    *(Instance + 32) = 0u;
    *(Instance + 48) = 0u;
    Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *(v5 + 64) = Mutable;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 88) = 0;
    *(v5 + 96) = 0;
    *(v5 + 112) = 0;
    *(v5 + 120) = 0;
    *(v5 + 104) = 0;
    *(v5 + 128) = -1;
    *(v5 + 136) = 0;
    v7 = strdup(a2);
    *(v5 + 144) = v7;
    *(v5 + 152) = 0;
    *(v5 + 156) = 488;
    *(v5 + 160) = 0u;
    *(v5 + 176) = 0u;
    *(v5 + 192) = 0;
    if (!Mutable)
    {
      sub_10001AEFC();
    }

    if (!v7)
    {
      sub_10001AED0();
    }

    v8 = strlen(a2);
    v9 = CFDataCreate(a1, a2, v8 + 1);
    if (v9)
    {
      v10 = v9;
      CFDictionarySetValue(*(v5 + 64), @"DADiskID", v9);
      CFRelease(v10);
    }
  }

  return v5;
}

uint64_t sub_100006C20(const __CFAllocator *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = strlen((a2 + 88));
  v5 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, (a2 + 88), v4, 1u);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFStringCreateWithCString(kCFAllocatorDefault, (a2 + 72), 0x8000100u);
  if (v7)
  {
    v8 = v7;
    v9 = sub_100009A68(a2);
    if (v9)
    {
      v10 = v9;
      v11 = sub_100006B0C(a1, v9);
      if (v11)
      {
        v12 = *(a2 + 48);
        v35 = v12 & 0xFFFFFF;
        valuePtr = HIBYTE(v12);
        if (!strcmp((a2 + 72), "lifs") && !strncmp((a2 + 1112), "apfs", 4uLL) && !sub_100009D04(a2, __s1, 1024))
        {
          *(v11 + 104) = strdup(__s1);
          sub_100009EE0("Setting device path %s for %s", __s1, v10);
          Count = CFArrayGetCount(qword_100029280);
          if (Count >= 1)
          {
            v14 = Count;
            v15 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v15);
              if (v11 != ValueAtIndex)
              {
                v17 = ValueAtIndex;
                v18 = ValueAtIndex[13];
                if (v18)
                {
                  if (!strcmp(v18, __s1) && *(v17 + 38))
                  {
                    break;
                  }
                }
              }

              if (v14 == ++v15)
              {
                goto LABEL_16;
              }
            }

            v33 = *(v11 + 64);
            Value = CFDictionaryGetValue(v17[8], @"DAMediaWritable");
            CFDictionarySetValue(v33, @"DAMediaWritable", Value);
          }

LABEL_16:
          CFDictionarySetValue(*(v11 + 64), @"DAVolumeKind", @"apfs");
          v19 = CFStringCreateWithCString(kCFAllocatorDefault, (a2 + 1112), 0x8000100u);
          if (v19)
          {
            v20 = v19;
            CFDictionarySetValue(*(v11 + 64), @"DAVolumeLifsURL", v19);
            CFRelease(v20);
          }

          v21 = _FSCopyNameForVolumeFormatAtURL(v6);
          if (v21)
          {
            v22 = v21;
            CFDictionarySetValue(*(v11 + 64), @"DAVolumeType", v21);
            CFRelease(v22);
          }
        }

        *(v11 + 32) = CFRetain(v6);
        CFDictionarySetValue(*(v11 + 64), @"DAVolumePath", v6);
        CFDictionarySetValue(*(v11 + 64), @"DAVolumeMountable", kCFBooleanTrue);
        if (!CFDictionaryGetValue(*(v11 + 64), @"DAVolumeKind"))
        {
          CFDictionarySetValue(*(v11 + 64), @"DAVolumeKind", v8);
        }

        v23 = sub_100007A2C(0, v6, 0);
        if (v23)
        {
          v24 = v23;
          CFDictionarySetValue(*(v11 + 64), @"DAVolumeName", v23);
          CFRelease(v24);
        }

        v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        if (v25)
        {
          v26 = v25;
          CFDictionarySetValue(*(v11 + 64), @"DAMediaBSDMajor", v25);
          CFRelease(v26);
        }

        v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v35);
        if (v27)
        {
          v28 = v27;
          CFDictionarySetValue(*(v11 + 64), @"DAMediaBSDMinor", v27);
          CFRelease(v28);
        }

        if ((*(a2 + 64) & 0x1000) != 0)
        {
          v29 = kCFBooleanFalse;
        }

        else
        {
          v29 = kCFBooleanTrue;
        }

        CFDictionarySetValue(*(v11 + 64), @"DAVolumeNetwork", v29);
        *(v11 + 176) |= 0x70030u;
        v30 = *(a2 + 56);
        *(v11 + 184) = v30;
        v31 = getpwuid(v30);
        if (v31)
        {
          *(v11 + 180) = v31->pw_gid;
        }
      }

      free(v10);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v8);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v6);
  return v11;
}

uint64_t sub_1000070B4(uint64_t a1)
{
  v1 = *(a1 + 156);
  if (CFDictionaryGetValue(*(a1 + 64), @"DAMediaWritable") == kCFBooleanFalse)
  {
    return v1 & 0x16D;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100007148()
{
  result = _CFRuntimeRegisterClass();
  qword_100028D38 = result;
  return result;
}

BOOL sub_100007170(uint64_t a1, CFDictionaryRef theDict)
{
  context = a1;
  CFDictionaryApplyFunction(theDict, sub_1000071B8, &context);
  return context != 0;
}

unint64_t sub_1000071B8(unint64_t result, const __CFDictionary *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v6 = result;
    if (CFEqual(result, @"DAMediaMatch"))
    {
      matches = 0;
      result = IOServiceMatchPropertyTable(*(v3 + 152), a2, &matches);
      if (matches)
      {
        return result;
      }

      goto LABEL_7;
    }

    result = CFDictionaryGetValue(*(v3 + 64), v6);
    if (!result || (result = CFEqual(a2, result), !result))
    {
LABEL_7:
      *a3 = 0;
    }
  }

  return result;
}

uint64_t sub_100007258(uint64_t a1, io_object_t object)
{
  result = *(a1 + 24);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 24) = 0;
  }

  if (object)
  {
    result = IOObjectRetain(object);
    *(a1 + 24) = object;
  }

  return result;
}

void sub_10000729C(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 32) = cf;
  }
}

void sub_1000072E0(uint64_t a1, int a2, char *__s1)
{
  v4 = a1 + 80;
  v5 = a2 != 0;
  v6 = *(a1 + 80 + 8 * (a2 != 0));
  if (v6)
  {
    free(v6);
    *(v4 + 8 * v5) = 0;
  }

  if (__s1)
  {
    *(v4 + 8 * v5) = strdup(__s1);
  }
}

void sub_100007334(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 40) = cf;
  }
}

void sub_100007378(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 48) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 48) = cf;
  }
}

void sub_1000073BC(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 56) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 56) = cf;
  }
}

void sub_100007400(uint64_t a1, const void *a2, const void *a3)
{
  v4 = *(a1 + 64);
  if (a3)
  {
    CFDictionarySetValue(v4, a2, a3);
  }

  else
  {
    CFDictionaryRemoveValue(v4, a2);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 168) = 0;
  }
}

void sub_100007444(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 136) = 0;
  }

  if (cf)
  {
    CFRetain(cf);
    *(a1 + 136) = cf;
  }
}

void sub_100007488(CFDictionaryRef *a1, const __CFDictionary *a2)
{
  Mutable = CFSetCreateMutable(kCFAllocatorDefault, 0, &kCFTypeSetCallBacks);
  v5 = a1[24];
  if (v5)
  {
    CFDictionaryApplyFunction(v5, sub_1000075F8, Mutable);
    CFDictionaryApplyFunction(a1[24], sub_100007604, a1);
    CFRelease(a1[24]);
    a1[24] = 0;
  }

  if (a2)
  {
    CFDictionaryApplyFunction(a2, sub_1000075F8, Mutable);
    CFDictionaryApplyFunction(a2, sub_100007614, a1);
    CFRetain(a2);
  }

  a1[24] = a2;
  Count = CFSetGetCount(Mutable);
  if (Count)
  {
    v7 = Count;
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFSetGetValues(Mutable, v8);
    v9 = CFArrayCreate(kCFAllocatorDefault, v8, v7, &kCFTypeArrayCallBacks);
    free(v8);
    sub_10000DAB8(a1, v9);
    CFRelease(Mutable);
    Mutable = v9;
  }

  CFRelease(Mutable);
}

uint64_t sub_100007628(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 160) = *(result + 160) & ~a2 | v3;
  return result;
}

uint64_t sub_100007644(uint64_t a1, io_object_t object)
{
  result = *(a1 + 164);
  if (result)
  {
    result = IOObjectRelease(result);
    *(a1 + 164) = 0;
  }

  if (object)
  {
    result = IOObjectRetain(object);
    *(a1 + 164) = object;
  }

  return result;
}

uint64_t sub_100007688(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  *(result + 176) = *(result + 176) & ~a2 | v3;
  return result;
}

char *sub_1000076A4(uint64_t a1, char *__s1)
{
  result = strdup(__s1);
  *(a1 + 120) = result;
  return result;
}

const char **sub_1000076E0(uint64_t a1)
{
  Count = CFArrayGetCount(qword_100029280);
  if (*(a1 + 120))
  {
    v3 = Count < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v5);
    if (!strcmp(ValueAtIndex[18], *(a1 + 120)))
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return ValueAtIndex;
}

void sub_1000077A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    IOObjectRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 104);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 112);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    IOObjectRelease(v15);
  }

  v16 = *(a1 + 164);
  if (v16)
  {
    IOObjectRelease(v16);
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 120);
  if (v18)
  {
    free(v18);
  }

  v19 = *(a1 + 192);
  if (v19)
  {

    CFRelease(v19);
  }
}

uint64_t sub_1000078E0(uint64_t a1)
{
  v1 = *(a1 + 144);
  v2 = strlen(v1);
  if (v2 >= 0x10)
  {
    v3 = 16;
  }

  else
  {
    v3 = v2;
  }

  return _CFHashBytes(v1, v3);
}

CFStringRef sub_100007928(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<DADisk %p [%p]>{id = %s}", a1, v3, a1[18]);
}

CFMutableDictionaryRef sub_100007980(const __CFAllocator *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v4 = Mutable;
  if (Mutable)
  {
    sub_100002354(Mutable, @"DAStatus", a2);
  }

  return v4;
}

const __CFString *sub_100007A2C(uint64_t a1, const __CFURL *a2, _OWORD *a3)
{
  bzero(v11, 0x41CuLL);
  v10[2] = 0;
  v10[0] = 5;
  v10[1] = 2147753984;
  v5 = sub_1000096F8(a2);
  if (v5)
  {
    v6 = v5;
    if (getattrlist(v5, v10, v11, 0x41CuLL, 0) == -1)
    {
      v8 = 0;
LABEL_12:
      free(v6);
      return v8;
    }

    if (v12[1])
    {
      v7 = CFStringCreateWithCString(kCFAllocatorDefault, v12 + v12[0], 0x8000100u);
      v8 = v7;
      if (!v7 || CFStringGetLength(v7))
      {
LABEL_8:
        if (a3)
        {
          *a3 = v13;
        }

        goto LABEL_12;
      }

      CFRelease(v8);
    }

    v8 = 0;
    goto LABEL_8;
  }

  return 0;
}

CFUUIDRef sub_100007B58(const __CFAllocator *a1, const __CFString *a2)
{
  v4 = sub_10000416C(a1, a2);
  if (!v4)
  {
    v5 = sub_100003BA0(a1, a2);
    if (v5)
    {
      v6 = v5;
      if (CFDataGetLength(v5) == 8)
      {
        if (*CFDataGetBytePtr(v6))
        {
          v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorDefault, 0xB3u, 0xE2u, 0xFu, 0x39u, 0xF2u, 0x92u, 0x11u, 0xD6u, 0x97u, 0xA4u, 0, 0x30u, 0x65u, 0x43u, 0xECu, 0xACu);
          v8 = sub_100004014(a1, v7, v6);
        }

        else
        {
          v9 = CFUUIDGetConstantUUIDWithBytes(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          v8 = CFRetain(v9);
        }

        v4 = v8;
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100007C74(uint64_t a1, CFURLRef bundleURL)
{
  v4 = CFBundleCopyInfoDictionaryInDirectory(bundleURL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFURLCopyAbsoluteURL(bundleURL);
  if (v6)
  {
    v7 = v6;
    v8 = sub_100007CF8(a1, v6, v5);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

uint64_t sub_100007CF8(uint64_t a1, const void *a2, const void *a3)
{
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CFRetain(a2);
    *(Instance + 24) = CFRetain(a3);
  }

  return Instance;
}

uint64_t sub_100007D5C(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, kCFBundleNameKey);
  if (!Value)
  {
    return 0;
  }

  v5 = CFURLCreateWithFileSystemPath(a1, Value, kCFURLPOSIXPathStyle, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_100007CF8(a1, v5, theDict);
  CFRelease(v6);
  return v7;
}

CFTypeRef sub_100007DFC(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 24), @"FSBundleID");

  return CFRetain(Value);
}

uint64_t sub_100007E5C()
{
  result = _CFRuntimeRegisterClass();
  qword_100028D40 = result;
  return result;
}

void sub_100007EB4(uint64_t a1, const __CFURL *a2, const void *a3, const __CFURL *a4, uid_t a5, gid_t a6, const __CFString *a7, void (*a8)(CFIndex, uint64_t), void (*a9)(CFIndex, uint64_t), CFStringRef appendedString, uint64_t a11)
{
  v18 = sub_1000082A8(a1, a7);
  v19 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/sbin/mount", kCFURLPOSIXPathStyle, 0);
  if (!v19)
  {
    Length = 45;
    if (!a8)
    {
      return;
    }

LABEL_38:
    a8(Length, a9);
    return;
  }

  v20 = v19;
  v40 = a6;
  v21 = malloc_type_malloc(0x40uLL, 0xE0040E5DF33D6uLL);
  if (!v21)
  {
    CFRelease(v20);
    Length = 12;
    if (!a8)
    {
      return;
    }

    goto LABEL_38;
  }

  v22 = v21;
  v23 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
  if (!v23)
  {
    CFRelease(v20);
    Length = 22;
    goto LABEL_37;
  }

  v24 = v23;
  if (a4)
  {
    cf = CFURLCopyFileSystemPath(a4, kCFURLPOSIXPathStyle);
    if (!cf)
    {
      Mutable = 0;
      v26 = 0;
      v27 = 0;
      Length = 22;
      goto LABEL_32;
    }
  }

  else
  {
    cf = 0;
  }

  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    v26 = 0;
    Length = 12;
    goto LABEL_24;
  }

  v41 = &a11;
  v29 = appendedString;
  if (appendedString)
  {
    do
    {
      CFStringAppend(Mutable, v29);
      CFStringAppend(Mutable, @",");
      v30 = v41++;
      v29 = *v30;
    }

    while (*v30);
  }

  CFStringTrim(Mutable, @",");
  *v22 = a8;
  v22[1] = a9;
  if (v18)
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v24, @"/");
    if (ArrayBySeparatingStrings)
    {
      v32 = ArrayBySeparatingStrings;
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      ValueAtIndex = CFArrayGetValueAtIndex(v32, Count - 1);
      v22[2] = CFRetain(ValueAtIndex);
      Value = CFDictionaryGetValue(*(a1 + 24), kCFBundleNameKey);
      v22[4] = CFRetain(Value);
      v27 = cf;
      if (cf)
      {
        v36 = CFRetain(cf);
      }

      else
      {
        v36 = 0;
      }

      v22[5] = v36;
      if (a3)
      {
        v38 = CFRetain(a3);
      }

      else
      {
        v38 = @"Untitled";
      }

      v22[6] = v38;
      CFStringAppend(Mutable, @",");
      CFStringAppend(Mutable, @"nofollow");
      CFStringTrim(Mutable, @",");
      v22[7] = CFRetain(Mutable);
      sub_1000183CC(sub_10000A0FC, v22, sub_1000082F8, v22);
      CFRelease(v32);
      goto LABEL_30;
    }

    v26 = 0;
    Length = 22;
LABEL_24:
    v27 = cf;
    goto LABEL_32;
  }

  Length = CFStringGetLength(Mutable);
  v37 = CFDictionaryGetValue(*(a1 + 24), kCFBundleNameKey);
  if (!Length)
  {
    v27 = cf;
    sub_1000049C0(v20, 0, a5, v40, -1, 0, sub_100008378, v22, @"-t", v37);
    goto LABEL_31;
  }

  v27 = cf;
  sub_1000049C0(v20, 0, a5, v40, -1, 0, sub_100008378, v22, @"-t", v37);
LABEL_30:
  Length = 0;
LABEL_31:
  v26 = 1;
LABEL_32:
  CFRelease(v20);
  CFRelease(v24);
  if (v27)
  {
    CFRelease(v27);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if ((v26 & 1) == 0)
  {
LABEL_37:
    free(v22);
    if (!a8)
    {
      return;
    }

    goto LABEL_38;
  }
}

uint64_t sub_1000082A8(uint64_t a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (CFStringCompare(@"UserFS", a2, 1uLL))
  {
    return 0;
  }

  return os_variant_has_factory_content() ^ 1;
}

void sub_1000082F8(uint64_t a1, void *a2)
{
  if (*a2)
  {
    (*a2)(a1, a2[1]);
  }

  v3 = a2[6];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a2[4];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a2[5];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a2[7];
  if (v7)
  {
    CFRelease(v7);
  }

  free(a2);
}

void sub_100008378(uint64_t a1, int a2, void *a3)
{
  if (*a3)
  {
    (*a3)(a1, a3[1]);
  }

  free(a3);
}

void sub_1000083BC(uint64_t a1, CFURLRef url, const char *a3, const char *a4, void (*a5)(uint64_t, uint64_t, void, void, void, uint64_t), uint64_t a6, int a7)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent)
  {
    v14 = PathComponent;
    Value = CFDictionaryGetValue(*(a1 + 24), @"FSIsFSModule");
    v16 = *(a1 + 24);
    if (Value)
    {
      v17 = CFDictionaryGetValue(v16, @"FSBundleID");
      v18 = CFRetain(v17);

      sub_100015C50(v14, v18, a7, a5, a6);
      return;
    }

    v20 = CFDictionaryGetValue(v16, @"FSPersonalities");
    if (v20)
    {
      v21 = sub_100003E0C(v20);
      if (v21)
      {
        v22 = v21;
        v23 = CFDictionaryGetValue(*(a1 + 24), @"FSMediaTypes");
        if (v23)
        {
          v24 = sub_100003E0C(v23);
          if (v24)
          {
            v25 = CFDictionaryGetValue(v24, @"FSProbeExecutable");
            if (v25)
            {
              v26 = sub_100003ABC(*(a1 + 16), v25);
              if (v26)
              {
                v27 = v26;
                v28 = CFDictionaryGetValue(v22, @"FSRepairExecutable");
                v29 = 0;
                if (a7 && v28 && (v29 = sub_100003ABC(*(a1 + 16), v28)) == 0)
                {
                  v33 = 0;
                  v19 = 45;
                }

                else
                {
                  v30 = sub_100004284(url, kCFURLPOSIXPathStyle);
                  if (v30)
                  {
                    v31 = v30;
                    v32 = malloc_type_malloc(0x58uLL, 0x10E0040C95B46AEuLL);
                    v33 = v32;
                    if (!v32)
                    {
LABEL_34:
                      v19 = 12;
LABEL_35:
                      CFRelease(v14);
LABEL_38:
                      CFRelease(v31);
                      CFRelease(v27);
                      if (v29)
                      {
                        CFRelease(v29);
                      }

                      if (v33)
                      {
                        free(v33);
                      }

                      goto LABEL_29;
                    }

                    *v32 = a5;
                    *(v32 + 1) = a6;
                    *(v32 + 2) = v14;
                    *(v32 + 3) = v31;
                    *(v32 + 4) = v27;
                    *(v32 + 5) = v29;
                    v32[12] = -1;
                    *(v32 + 7) = 0;
                    *(v32 + 4) = 0u;
                    *(v32 + 10) = -1;
                    if ((os_variant_is_darwinos() & 1) != 0 || (v34 = CFDictionaryGetValue(*(a1 + 24), kCFBundleNameKey), CFEqual(v34, @"apfs")))
                    {
LABEL_25:
                      v39 = v33[20];
                      if (v39 < 0)
                      {
                        v41 = 0;
LABEL_43:
                        if (v39 == -1)
                        {
                          v42 = v14;
                        }

                        else
                        {
                          v42 = v41;
                        }

                        sub_1000049C0(v27, 1, 0, 0, v39, 1, sub_1000087A4, v33, @"-p", v42);
                        if (v41)
                        {

                          CFRelease(v41);
                        }

                        return;
                      }

                      v40 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/dev/fd/%d", v33[20]);
                      if (v40)
                      {
                        v41 = v40;
                        v39 = v33[20];
                        goto LABEL_43;
                      }

                      goto LABEL_34;
                    }

                    if (a4)
                    {
                      v35 = sub_10000A294(a4, 0);
                      if (v35 == -1)
                      {
                        goto LABEL_50;
                      }

                      v36 = v35;
                      v33[21] = dup(v35);
                      close(v36);
                    }

                    v37 = sub_10000A294(a3, 0);
                    if (v37 != -1)
                    {
                      v38 = v37;
                      v33[20] = dup(v37);
                      close(v38);
                      goto LABEL_25;
                    }

LABEL_50:
                    v19 = *__error();
                    if (!v19)
                    {
                      return;
                    }

                    goto LABEL_35;
                  }

                  v33 = 0;
                  v19 = 22;
                }

                v31 = v14;
                goto LABEL_38;
              }
            }
          }
        }
      }
    }

    CFRelease(v14);
    v19 = 45;
  }

  else
  {
    v19 = 22;
  }

LABEL_29:
  if (a5)
  {

    a5(v19, 0, 0, 0, 0, a6);
  }
}

void sub_1000087A4(int a1, const __CFData *a2, unsigned int *data)
{
  if (a1 != -1)
  {
LABEL_2:

    sub_1000092E0(a1, data);
    return;
  }

  if (a2)
  {
    v4 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, a2, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      if (CFStringGetLength(v4))
      {
        MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v5);
        *(data + 7) = MutableCopy;
        if (MutableCopy)
        {
          CFStringTrim(MutableCopy, @"\n");
        }
      }

      CFRelease(v5);
    }
  }

  v7 = data[20];
  if (v7 < 0)
  {
    v9 = 0;
  }

  else
  {
    v8 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/dev/fd/%d", data[20]);
    if (!v8)
    {
      a1 = 12;
      goto LABEL_2;
    }

    v9 = v8;
    v7 = data[20];
  }

  v10 = v9;
  if (v7 == -1)
  {
    v10 = *(data + 2);
  }

  sub_1000049C0(*(data + 4), 1, 0, 0, v7, 1, sub_100009150, data, @"-k", v10);
  if (v9)
  {

    CFRelease(v9);
  }
}

void sub_100008914(uint64_t a1, const __CFURL *a2, const __CFString *a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  v14 = 5;
  v16 = 0;
  v15 = xmmword_100020280;
  v9 = malloc_type_malloc(0x408uLL, 0x1000040F7F14A6DuLL);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000096F8(a2);
    if (v11)
    {
      v12 = v11;
      if (CFStringGetCString(a3, v10 + 8, 1024, 0x8000100u))
      {
        *v10 = 8;
        *(v10 + 1) = strlen(v10 + 8) + 1;
        v13 = setattrlist(v12, &v14, v10, 0x408uLL, 0);
        if (v13 == -1)
        {
          v13 = *__error();
        }
      }

      else
      {
        v13 = 22;
      }

      free(v10);
      free(v12);
    }

    else
    {
      free(v10);
      v13 = 22;
    }
  }

  else
  {
    v13 = 12;
  }

  if (a4)
  {
    a4(v13, a5);
  }
}

void sub_100008A44(uint64_t a1, const __CFURL *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5)
{
  if (CFDictionaryGetValue(*(a1 + 24), @"FSIsFSModule"))
  {
    PathComponent = CFURLCopyLastPathComponent(a2);
    Value = CFDictionaryGetValue(*(a1 + 24), @"FSBundleID");
    v11 = CFRetain(Value);

    sub_1000166DC(PathComponent, v11, a4, a5);
    return;
  }

  v12 = sub_100004284(a2, kCFURLPOSIXPathStyle);
  if (!v12)
  {
    v23 = 22;
    goto LABEL_16;
  }

  v13 = v12;
  v14 = CFDictionaryGetValue(*(a1 + 24), @"FSPersonalities");
  if (!v14 || (v15 = sub_100003E0C(v14)) == 0 || (v16 = CFDictionaryGetValue(v15, @"FSRepairExecutable")) == 0 || (v17 = sub_100003ABC(*(a1 + 16), v16)) == 0)
  {
    CFRelease(v13);
    v23 = 45;
    goto LABEL_16;
  }

  v18 = v17;
  v19 = malloc_type_malloc(0x40uLL, 0xE0040E5DF33D6uLL);
  if (!v19)
  {
    v22 = 0;
    v21 = 0;
    goto LABEL_22;
  }

  *v19 = a4;
  v19[1] = a5;
  if (a3 == -1)
  {
    v21 = 0;
    v20 = v13;
  }

  else
  {
    v20 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/dev/fd/%d", a3);
    v21 = v20;
    if (!v20)
    {
      v22 = 0;
LABEL_22:
      v23 = 12;
      goto LABEL_30;
    }
  }

  v25 = CFDictionaryGetValue(*(a1 + 24), kCFBundleNameKey);
  if (v25 && ((v26 = v25, CFEqual(v25, @"hfs")) || CFEqual(v26, @"apfs")))
  {
    v27 = @"-X";
  }

  else
  {
    v27 = v20;
  }

  v22 = 1;
  sub_1000049C0(v18, 0, 0, 0, a3, 1, sub_100008378, v19, @"-y", v27);
  v23 = 0;
LABEL_30:
  CFRelease(v18);
  CFRelease(v13);
  if (v21)
  {
    CFRelease(v21);
  }

  v24 = a4;
  if ((v22 & 1) == 0)
  {
    if (!v19)
    {
LABEL_17:
      if (v24)
      {

        v24(v23, a5);
      }

      return;
    }

    free(v19);
LABEL_16:
    v24 = a4;
    goto LABEL_17;
  }
}

void sub_100008CFC(uint64_t a1, const __CFURL *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v6 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/sbin/quotacheck", kCFURLPOSIXPathStyle, 0);
  if (v6)
  {
    v7 = v6;
    v8 = malloc_type_malloc(0x40uLL, 0xE0040E5DF33D6uLL);
    if (v8)
    {
      v9 = v8;
      if (a2)
      {
        v10 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
        if (v10)
        {
          v11 = v10;
          *v9 = a3;
          v9[1] = a4;
          sub_1000049C0(v7, 0, 0, 0, -1, 0, sub_100008378, v9, @"-g", @"-u");
          CFRelease(v7);

          CFRelease(v11);
          return;
        }
      }

      CFRelease(v7);
      free(v9);
      v12 = 22;
    }

    else
    {
      CFRelease(v7);
      v12 = 12;
    }
  }

  else
  {
    v12 = 45;
  }

  if (a3)
  {

    a3(v12, a4);
  }
}

void sub_100008E94(int a1, const __CFURL *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), int a5, int a6, int a7, int a8, CFTypeRef cf1, uint64_t a10)
{
  v12 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/sbin/umount", kCFURLPOSIXPathStyle, 0);
  if (v12)
  {
    v13 = v12;
    v14 = malloc_type_malloc(0x40uLL, 0xE0040E5DF33D6uLL);
    if (v14)
    {
      v15 = v14;
      v16 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
      if (v16)
      {
        v17 = v16;
        v23 = &a10;
        v18 = cf1;
        if (cf1)
        {
          v19 = 0;
          do
          {
            if (CFEqual(v18, @"force"))
            {
              v19 = 0x80000;
            }

            v20 = v23++;
            v18 = *v20;
          }

          while (*v20);
          *v15 = a3;
          v15[1] = a4;
          if ((v19 & 0x80000) != 0)
          {
            sub_1000049C0(v13, 0, 0, 0, -1, 0, sub_100008378, v15, @"-f", v17);
LABEL_20:
            CFRelease(v13);
            CFRelease(v17);
            return;
          }
        }

        else
        {
          *v15 = a3;
          v15[1] = a4;
        }

        sub_1000049C0(v13, 0, 0, 0, -1, 0, sub_100008378, v15, v17, 0);
        goto LABEL_20;
      }

      CFRelease(v13);
      free(v15);
      v21 = 22;
    }

    else
    {
      CFRelease(v13);
      v21 = 12;
    }
  }

  else
  {
    v21 = 45;
  }

  if (a3)
  {

    a3(v21, a4);
  }
}

void sub_100009050(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void sub_100009150(int a1, const __CFData *a2, uint64_t a3)
{
  if (a1 == -3)
  {
    if (a2)
    {
      v4 = CFStringCreateFromExternalRepresentation(kCFAllocatorDefault, a2, 0x8000100u);
      if (v4)
      {
        v5 = v4;
        *(a3 + 72) = sub_10000416C(kCFAllocatorDefault, v4);
        CFRelease(v5);
      }
    }
  }

  v6 = *(a3 + 40);
  if (v6)
  {
    v7 = *(a3 + 80);
    v8 = *(a3 + 84);
    if ((v7 & 0x80000000) != 0 && v8 < 0)
    {
      sub_1000049C0(v6, 0, 0, 0, -1, 1, sub_1000093B4, a3, @"-q", *(a3 + 24));
      return;
    }

    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = v7;
    }

    v10 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"/dev/fd/%d", v9);
    if (v10)
    {
      v11 = v10;
      sub_1000049C0(*(a3 + 40), 0, 0, 0, v9, 1, sub_1000093B4, a3, @"-q", v10);

      CFRelease(v11);
      return;
    }

    v6 = 12;
  }

  sub_1000093B4(v6, a2, a3);
}

void sub_1000092E0(int a1, unsigned int *a2)
{
  v3 = *a2;
  if (*a2)
  {
    if (a1)
    {
      v4 = *(a2 + 1);
    }

    else
    {
      v5 = a2[12];
      v6 = *(a2 + 7);
      v7 = *(a2 + 8);
      v8 = *(a2 + 9);
      v9 = *(a2 + 1);
    }

    v3();
  }

  CFRelease(*(a2 + 2));
  CFRelease(*(a2 + 3));
  CFRelease(*(a2 + 4));
  v10 = *(a2 + 5);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a2 + 7);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a2 + 8);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a2 + 9);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = a2[20];
  if (v14 != -1)
  {
    close(v14);
  }

  v15 = a2[21];
  if (v15 != -1)
  {
    close(v15);
  }

  free(a2);
}

void sub_1000093B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = a1;
  sub_100009EE0(" fsck status %d %@", a1, *(a3 + 24));
  *(a3 + 64) = _FSCopyNameForVolumeFormatAtNode(*(a3 + 24));

  sub_1000092E0(0, a3);
}

uint64_t sub_100009418(const char *a1, void *a2, int a3)
{
  v6 = getfsstat(0, 0, 2);
  if (v6 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = 2168 * v6;
  v8 = malloc_type_malloc(2168 * v6, 0x100004087E0324AuLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = getfsstat(v8, v7, a3);
  if (v10 < 1)
  {
    v13 = 0xFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
    f_mntonname = v9->f_mntonname;
    v13 = 0xFFFFFFFFLL;
    do
    {
      if (!strcmp(f_mntonname, a1))
      {
        memcpy(a2, f_mntonname - 88, 0x878uLL);
        v14 = *(f_mntonname - 8);
        v13 = 0;
        if (v14 == geteuid())
        {
          break;
        }
      }

      f_mntonname += 2168;
      --v11;
    }

    while (v11);
  }

  free(v9);
  return v13;
}

uint64_t sub_100009514(const __CFArray *a1, const void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  return CFArrayContainsValue(a1, v4, a2);
}

BOOL sub_10000955C(const __CFArray *a1, const __CFString *a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFStringGetTypeID() && CFStringCompare(ValueAtIndex, a2, 1uLL) == kCFCompareEqualTo)
      {
        break;
      }

      v7 = v5 > ++v6;
    }

    while (v5 != v6);
  }

  return v7;
}

void sub_100009604(const __CFArray *a1, const void *a2)
{
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(a1, v6, a2);
  if (FirstIndexOfValue != -1)
  {

    CFArrayRemoveValueAtIndex(a1, FirstIndexOfValue);
  }
}

const __CFNumber *sub_100009698(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

UInt8 *sub_1000096F8(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000015D8(v1);
  CFRelease(v2);
  return v3;
}

CFMutableDataRef sub_100009744(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  if (!MutableCopy)
  {
    return 0;
  }

  v5 = MutableCopy;
  Value = CFDictionaryGetValue(theDict, @"DAMediaUUID");
  if (Value)
  {
    v7 = CFUUIDCreateString(a1, Value);
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(v5, @"DAMediaUUID", v7);
      CFRelease(v8);
    }
  }

  v9 = CFDictionaryGetValue(theDict, @"DAVolumePath");
  if (v9)
  {
    v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
    if (v10)
    {
      v11 = v10;
      CFDictionarySetValue(v5, @"DAVolumePath", v10);
      CFRelease(v11);
    }
  }

  v12 = CFDictionaryGetValue(theDict, @"DAVolumeUUID");
  if (v12)
  {
    v13 = CFUUIDCreateString(a1, v12);
    if (v13)
    {
      v14 = v13;
      CFDictionarySetValue(v5, @"DAVolumeUUID", v13);
      CFRelease(v14);
    }
  }

  v15 = sub_100002E68(a1);
  CFRelease(v5);
  return v15;
}

__CFDictionary *sub_100009884(const __CFAllocator *a1, const __CFData *a2)
{
  v3 = CFPropertyListCreateWithData(a1, a2, 1uLL, 0, 0);
  v4 = v3;
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, @"DAMediaUUID");
    if (Value)
    {
      v6 = CFUUIDCreateFromString(a1, Value);
      if (v6)
      {
        v7 = v6;
        CFDictionarySetValue(v4, @"DAMediaUUID", v6);
        CFRelease(v7);
      }
    }

    v8 = CFDictionaryGetValue(v4, @"DAVolumePath");
    if (v8)
    {
      v9 = CFURLCreateWithFileSystemPath(a1, v8, kCFURLPOSIXPathStyle, 1u);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(v4, @"DAVolumePath", v9);
        CFRelease(v10);
      }
    }

    v11 = CFDictionaryGetValue(v4, @"DAVolumeUUID");
    if (v11)
    {
      v12 = CFUUIDCreateFromString(a1, v11);
      if (v12)
      {
        v13 = v12;
        CFDictionarySetValue(v4, @"DAVolumeUUID", v12);
        CFRelease(v13);
      }
    }
  }

  return v4;
}

__CFDictionary *sub_10000999C(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = CFDataCreateWithBytesNoCopy(a1, a2, a3, kCFAllocatorNull);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_100009884(a1, v4);
  CFRelease(v5);
  return v6;
}

CFPropertyListRef sub_1000099FC(const __CFAllocator *a1, const UInt8 *a2, CFIndex a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = CFDataCreateWithBytesNoCopy(a1, a2, a3, kCFAllocatorNull);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFPropertyListCreateWithData(a1, v4, 0, 0, 0);
  CFRelease(v5);
  return v6;
}

char *sub_100009A68(uint64_t a1)
{
  v4 = 0;
  if (!strcmp((a1 + 72), "lifs") && (__strlcpy_chk(), !sub_100009B64(v6, v5, 1024)))
  {
    asprintf(&v4, "/dev/%s");
  }

  else if (!strncmp((a1 + 1112), "/dev/", 5uLL))
  {
    asprintf(&v4, "%s");
  }

  else
  {
    v3 = *(a1 + 56);
    asprintf(&v4, "%s?owner=%u");
  }

  return v4;
}

uint64_t sub_100009B64(char *a1, char *a2, int a3)
{
  v6 = strstr(a1, "://");
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (!strncmp(a1, "apfs", 4uLL))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = strchr(v7 + 3, 47);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  *v8 = 0;
  strlcpy(a2, v7 + 3, a3);
  return 0;
}

char *sub_100009BF0(uint64_t a1)
{
  if (!strcmp((a1 + 72), "lifs") && (__strlcpy_chk(), !sub_100009B64(v5, v4, 1024)))
  {
    snprintf(byte_100028D48, 0x411uLL, "/dev/%s");
  }

  else if (!strncmp((a1 + 1112), "/dev/", 5uLL))
  {
    snprintf(byte_100028D48, 0x411uLL, "%s");
  }

  else
  {
    v3 = *(a1 + 56);
    snprintf(byte_100028D48, 0x411uLL, "%s?owner=%u");
  }

  return byte_100028D48;
}

uint64_t sub_100009D04(uint64_t a1, char *a2, int a3)
{
  __strlcpy_chk();
  v5 = strstr(__s1, "://");
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  v7 = strchr(v5 + 3, 47);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  *v7 = 0;
  strlcpy(a2, "/dev/", a3);
  strlcat(a2, v6 + 3, a3);
  return 0;
}

void sub_100009E10()
{
  byte_100029160 = 0;
  if (qword_100029168)
  {
    fclose(qword_100029168);
    qword_100029168 = 0;
  }

  closelog();
}

void sub_100009E58(char *cStr, ...)
{
  va_start(va, cStr);
  sub_1000019EC(7, cStr, va);
  sub_1000019EC(3, cStr, va);
}

void sub_100009F14(const char *a1, int a2)
{
  qword_100029188 = os_log_create("com.apple.DiskArbitration.diskarbitrationd", "default");
  openlog(a1, 1, 24);
  if (a2)
  {
    __filename = 0;
    asprintf(&__filename, "/var/log/%s.log", a1);
    if (__filename)
    {
      qword_100029168 = fopen(__filename, "a");
      free(__filename);
    }
  }

  byte_100029160 = a2;
}

uint64_t sub_100009FB0(const char *a1)
{
  v4 = time(0);
  v2 = localtime(&v4);
  if (strftime(v5, 0xAuLL, "%T ", v2))
  {
    fputs(v5, qword_100029168);
  }

  fputs(a1, qword_100029168);
  fputc(10, qword_100029168);
  return fflush(qword_100029168);
}

uint64_t sub_10000A064(void *a1, _BYTE *a2)
{
  v3 = a1;
  if ([v3 hasSuffix:@"_fskit"])
  {
    if (a2)
    {
      *a2 = 1;
    }

    if ([v3 containsString:@"msdos"])
    {
      v4 = _os_feature_enabled_impl();
    }

    else
    {
      v4 = [v3 containsString:@"exfat"] ^ 1;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10000A0FC(id *a1)
{
  v14 = 0;
  v2 = a1[4];
  v3 = a1[2];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  if (objc_opt_class())
  {
    v7 = objc_alloc_init(FSAuditToken);
    v8 = [v7 tokenWithRuid:dword_100029274];

    if (!sub_10000A064(a1[4], &v14) && v14)
    {
      v9 = [NSCharacterSet characterSetWithCharactersInString:@"_"];
      v10 = [v2 substringToIndex:{objc_msgSend(v2, "rangeOfCharacterFromSet:", v9)}];

      v2 = v10;
    }

    if (v8)
    {
      [v8 audit_token];
    }

    else
    {
      memset(v13, 0, sizeof(v13));
    }

    v11 = [FSKitDiskArbHelper DAMountUserFSVolume:v2 deviceName:v3 mountPoint:v4 volumeName:v5 auditToken:v13 mountOptions:v6];
  }

  else
  {
    sub_100009E58("Attempt to use FSKit, when not present, to mount volume of type %@", v2);
    v11 = 43;
  }

  return v11;
}

uint64_t sub_10000A294(const char *a1, int a2)
{
  mach_service = xpc_connection_create_mach_service("com.apple.filesystems.userfs_helper", 0, 0);
  if (!mach_service)
  {
    sub_10001B070();
  }

  v5 = mach_service;
  if (xpc_get_type(mach_service) != &_xpc_type_connection)
  {
    sub_10001B044();
  }

  xpc_connection_set_event_handler(v5, &stru_100025160);
  xpc_connection_resume(v5);
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "path", a1);
  xpc_dictionary_set_int64(v6, "flags", a2);
  v7 = xpc_connection_send_message_with_reply_sync(v5, v6);
  v8 = v7;
  if (!v7)
  {
    v9 = "NULL";
    goto LABEL_7;
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v9 = xpc_copy_description(v8);
LABEL_7:
    sub_100009EE0("open:invalidReply:%{public}s", v9);
    v10 = 0xFFFFFFFFLL;
    LODWORD(int64) = 5;
    goto LABEL_8;
  }

  v10 = xpc_dictionary_dup_fd(v8, "fd");
  if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  int64 = xpc_dictionary_get_int64(v8, "error");
  sub_100009EE0("open:error:%d", int64);
  if (!int64)
  {
    LODWORD(int64) = 5;
  }

LABEL_8:
  *__error() = int64;
LABEL_9:
  xpc_connection_cancel(v5);

  return v10;
}

void start(int a1, char **a2)
{
  qword_1000292E8 = basename(*a2);
  if (!geteuid())
  {
    while (1)
    {
      v4 = getopt(a1, a2, "d");
      if (v4 != 100)
      {
        break;
      }

      byte_100029190 = 1;
    }

    if (v4 == 255)
    {
      signal(15, sub_10000A550);
      v5 = sub_1000018C8();
      dispatch_async_and_wait_f(v5, 0, sub_10000A568);
      dispatch_main();
    }

    fprintf(__stderrp, "%s: [-d]\n", qword_1000292E8);
    fwrite("options:\n", 9uLL, 1uLL, __stderrp);
    fwrite("\t-d\tenable debugging\n", 0x15uLL, 1uLL, __stderrp);
    exit(64);
  }

  fprintf(__stderrp, "%s: permission denied.\n", qword_1000292E8);
  exit(77);
}

uint64_t sub_10000A550(uint64_t result)
{
  if (result == 15)
  {
    byte_100029288 = 1;
  }

  return result;
}

uint64_t sub_10000A568()
{
  sub_100007148();
  sub_100007E5C();
  sub_100013714();
  qword_100029260 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, @"/System/Library/Frameworks/DiskArbitration.framework", kCFURLPOSIXPathStyle, 1u);
  if (!qword_100029260)
  {
    sub_10001B2D8();
  }

  sub_100009F14(qword_1000292E8, byte_100029190);
  dword_1000292E0 = getpid();
  asprintf(&qword_1000292F0, "%s [%d]", qword_1000292E8, dword_1000292E0);
  if (!qword_1000292F0)
  {
    sub_10001B2AC();
  }

  qword_100029280 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_100029280)
  {
    sub_10001B280();
  }

  qword_100029290 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_100029290)
  {
    sub_10001B254();
  }

  qword_100029298 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_100029298)
  {
    sub_10001B228();
  }

  qword_1000292B8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_1000292B8)
  {
    sub_10001B1FC();
  }

  qword_1000292C0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_1000292C0)
  {
    sub_10001B1D0();
  }

  qword_1000292C8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!qword_1000292C8)
  {
    sub_10001B1A4();
  }

  qword_1000292D0 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_1000292D8 = Mutable;
  if (!qword_1000292D0)
  {
    sub_10001B178();
  }

  if (!Mutable)
  {
    sub_10001B14C();
  }

  qword_1000292F8 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_1000292F8)
  {
    sub_10001B120();
  }

  qword_100029300 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_100029300)
  {
    sub_10001B0F4();
  }

  qword_100029308 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (!qword_100029308)
  {
    sub_10001B0C8();
  }

  qword_100029310 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!qword_100029310)
  {
    sub_10001B09C();
  }

  sub_1000134E8();
  v1 = IONotificationPortCreate(kIOMainPortDefault);
  qword_1000292B0 = v1;
  if (!v1)
  {
    sub_100009E58("could not create I/O Kit notification port.");
    goto LABEL_49;
  }

  v2 = v1;
  v3 = sub_1000018C8();
  IONotificationPortSetDispatchQueue(v2, v3);
  if (!sub_100007DE4())
  {
    sub_100009E58("could not create file system run loop channel.");
    goto LABEL_49;
  }

  if (!sub_1000181D4())
  {
    sub_100009E58("could not create thread run loop channel.");
    goto LABEL_49;
  }

  v4 = qword_1000292B0;
  v5 = IOServiceMatching("IOMedia");
  IOServiceAddMatchingNotification(v4, "IOServiceTerminate", v5, sub_100011B08, 0, &dword_1000292A8);
  if (!dword_1000292A8)
  {
    sub_100009E58("could not create media disappeared notification.");
    goto LABEL_49;
  }

  v6 = qword_1000292B0;
  v7 = IOServiceMatching("IOMedia");
  IOServiceAddMatchingNotification(v6, "IOServiceMatched", v7, sub_100010F68, 0, &dword_1000292A4);
  if (!dword_1000292A4)
  {
    sub_100009E58("could not create media appeared notification.");
LABEL_49:
    exit(70);
  }

  if ((os_variant_has_factory_content() & 1) == 0)
  {
    sub_100010E40();
  }

  v8 = sub_1000018C8();
  v9 = dispatch_source_create(&_dispatch_source_type_vfs, 0, 0x118uLL, v8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 0x40000000;
  handler[2] = sub_10000AB2C;
  handler[3] = &unk_100025180;
  handler[4] = v9;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_resume(v9);
  snprintf(__str, 0x400uLL, "/var/run/%s.pid", qword_1000292E8);
  v10 = fopen(__str, "w");
  if (v10)
  {
    v11 = v10;
    fprintf(v10, "%d\n", dword_1000292E0);
    fclose(v11);
  }

  sub_100009EE0("");
  sub_100009EE0("server has been started.");
  if (qword_100029268)
  {
    sub_100009EE0("  console user = %@ [%d].", qword_100029268, dword_100029274);
  }

  else
  {
    sub_100009EE0("  console user = none.", v14, v15);
  }

  sub_100017674();
  sub_100014EFC();
  sub_100016BD8();
  sub_100017044();
  sub_10001745C();
  sub_100011B08(0, dword_1000292A8);
  sub_100010F68(0, dword_1000292A4);
  memset(v18, 0, 512);
  if (!sub_100009418("/", v18, 2))
  {
    sub_1000131E4(v18);
  }

  v12 = sub_1000018C8();
  xpc_set_event_stream_handler("com.apple.iokit.matching", v12, &stru_1000251C0);
  return notify_post("com.apple.diskarbitrationd.launched");
}

void sub_10000AB2C(uint64_t a1)
{
  data = dispatch_source_get_data(*(a1 + 32));
  v2 = data;
  if ((data & 8) == 0)
  {
    if ((data & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_100013410();
    if ((v2 & 0x100) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_1000132D0();
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v2 & 0x100) == 0)
  {
    return;
  }

LABEL_7:

  sub_100013410();
}

void sub_10000ABBC(uint64_t a1, const void *a2, void (*a3)(void, void, void), uint64_t a4, int a5, int a6, int a7, int a8, const __CFString *cf1, uint64_t a10)
{
  v14 = sub_1000070AC(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v89 = 0;
  v15 = malloc_type_malloc(0x68uLL, 0x10E004037EEB672uLL);
  if (!v15)
  {
    Mutable = 0;
    v22 = 12;
    if (a2)
    {
      goto LABEL_98;
    }

    goto LABEL_99;
  }

  v16 = v15;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    v22 = 12;
    goto LABEL_97;
  }

  v84 = v16;
  v85 = v14;
  v86 = a1;
  v18 = kCFBooleanTrue;
  v89 = &a10;
  v19 = cf1;
  if (cf1)
  {
    v87 = 0;
    v20 = 0;
    do
    {
      if (CFEqual(v19, @"force"))
      {
        v20 = 1;
      }

      else if (CFEqual(v19, @"automatic"))
      {
        v18 = 0;
        v87 = kCFBooleanTrue;
      }

      else
      {
        CFStringAppend(Mutable, v19);
        CFStringAppend(Mutable, @",");
      }

      v21 = v89++;
      v19 = *v21;
    }

    while (*v21);
  }

  else
  {
    v20 = 0;
    v87 = 0;
  }

  CFStringTrim(Mutable, @",");
  v16 = v84;
  *v84 = v18 == 0;
  if (sub_100007058(a1, @"DADeviceTDMLocked") == kCFBooleanTrue && (!sub_100017C34(a1, 16) || sub_100018014(a1, @"PreBoot") != 1))
  {
    v22 = 1;
    goto LABEL_97;
  }

  if (*v84 == 1)
  {
    if (sub_100017C34(a1, 16))
    {
      v23 = sub_100018014(a1, @"System");
      sub_100018100(v86);
      if (v23 == 1)
      {
        CFStringInsert(Mutable, 0, @",");
        CFStringInsert(Mutable, 0, @"rdonly");
      }
    }

    if (*v84 == 1 && sub_1000029AC(v86, 64))
    {
      CFStringInsert(Mutable, 0, @",");
      CFStringInsert(Mutable, 0, @"quarantine");
    }
  }

  if (sub_10000B684(Mutable, @"update"))
  {
    if (a2)
    {
      goto LABEL_33;
    }

    v24 = sub_100007058(v86, @"DAVolumePath");
    a2 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }

    CFRetain(v24);
  }

  if (sub_10000B684(Mutable, @"-s="))
  {
    if (!a2 || (v25 = sub_100007058(v86, @"DAVolumePath")) == 0)
    {
LABEL_33:
      v22 = 22;
      goto LABEL_97;
    }
  }

  else
  {
    v25 = sub_1000070A4(v86);
  }

  v81 = a3;
  v82 = a2;
  v83 = a4;
  Count = CFArrayGetCount(qword_1000292B8);
  if (Count < 1)
  {
    goto LABEL_62;
  }

  v27 = Count;
  v80 = v25;
  v28 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000292B8, v28);
    if (!ValueAtIndex)
    {
      goto LABEL_48;
    }

    v30 = ValueAtIndex;
    Value = CFDictionaryGetValue(ValueAtIndex, @"DAProbeID");
    v32 = CFDictionaryGetValue(v30, @"DAProbeKind");
    if (v32)
    {
      v33 = v32;
      v34 = sub_100007DE8(v14);
      if (!CFEqual(v33, v34))
      {
        goto LABEL_48;
      }
    }

    v35 = CFGetTypeID(Value);
    if (v35 == CFUUIDGetTypeID())
    {
      v36 = v86;
      v37 = @"DAVolumeUUID";
      goto LABEL_47;
    }

    v38 = CFGetTypeID(Value);
    if (v38 != CFStringGetTypeID())
    {
      break;
    }

    v36 = v86;
    v37 = @"DAVolumeName";
LABEL_47:
    if (!sub_100005CC4(v36, v37, Value))
    {
      goto LABEL_52;
    }

LABEL_48:
    if (v27 == ++v28)
    {
      v25 = v80;
      goto LABEL_62;
    }
  }

  v39 = CFGetTypeID(Value);
  if (v39 != CFDictionaryGetTypeID())
  {
    goto LABEL_48;
  }

  matches = 0;
  v40 = sub_100007050(v86);
  IOServiceMatchPropertyTable(v40, Value, &matches);
  if (!matches)
  {
    goto LABEL_48;
  }

LABEL_52:
  if (!v18)
  {
    v18 = CFDictionaryGetValue(v30, @"DAMountAutomatic");
    if (v18 == kCFBooleanTrue)
    {
      sub_100007688(v86, 16, 1);
      sub_100007688(v86, 32, 1);
      v18 = kCFBooleanTrue;
    }
  }

  v41 = CFDictionaryGetValue(v30, @"DAMountOptions");
  if (v41)
  {
    v42 = v41;
    CFStringInsert(Mutable, 0, @",");
    CFStringInsert(Mutable, 0, v42);
  }

  if (!v82)
  {
    v43 = CFDictionaryGetValue(v30, @"DAMountPath");
    if (v43)
    {
      v82 = v43;
      CFRetain(v43);
    }

    else
    {
      v82 = 0;
    }
  }

  v25 = v80;
LABEL_62:
  v44 = CFArrayGetCount(qword_1000292C0);
  if (v44 >= 1)
  {
    v45 = v44;
    v46 = 0;
    while (1)
    {
      v47 = CFArrayGetValueAtIndex(qword_1000292C0, v46);
      if (v47)
      {
        v48 = v47;
        v49 = CFDictionaryGetValue(v47, @"DAProbeID");
        if (!sub_100005CC4(v86, @"DAVolumeUUID", v49))
        {
          break;
        }
      }

      if (v45 == ++v46)
      {
        goto LABEL_70;
      }
    }

    v50 = CFDictionaryGetValue(v48, @"DAMountOptions");
    if (v50)
    {
      v51 = v50;
      CFStringInsert(Mutable, 0, @",");
      CFStringInsert(Mutable, 0, v51);
    }
  }

LABEL_70:
  a3 = v81;
  a4 = v83;
  if (!v18)
  {
    if (sub_1000029AC(v86, 16))
    {
      v18 = sub_1000029AC(v86, 32) ? kCFBooleanTrue : 0;
    }

    else
    {
      v18 = kCFBooleanFalse;
    }

    if (!v18 && !byte_100029318)
    {
      if (sub_10000BDD4(v86, 0))
      {
        sub_100009EE0(" No console users yet, delaying mount of %@", v86);
        v18 = kCFBooleanFalse;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  a2 = v82;
  if (v18 == kCFBooleanFalse)
  {
    v22 = 89;
    goto LABEL_96;
  }

  if (sub_100007058(v86, @"DAMediaWritable") == kCFBooleanFalse)
  {
    CFStringInsert(Mutable, 0, @",");
    CFStringInsert(Mutable, 0, @"rdonly");
  }

  v52 = v87;
  if (!sub_10000BDD4(v86, 1))
  {
    CFStringInsert(Mutable, 0, @",");
    CFStringInsert(Mutable, 0, @"nosuid");
    CFStringInsert(Mutable, 0, @",");
    CFStringInsert(Mutable, 0, @"noowners");
    CFStringInsert(Mutable, 0, @",");
    CFStringInsert(Mutable, 0, @"nodev");
  }

  v53 = sub_100007DE8(v85);
  if (CFEqual(v53, @"hfs"))
  {
    sub_100003EFC(Mutable, 0, @"-m=%o,", v54, v55, v56, v57, v58, 237);
    if (sub_100007130(v86))
    {
      v64 = sub_100007130(v86);
    }

    else
    {
      v64 = 99;
    }

    sub_100003EFC(Mutable, 0, @"-g=%d,", v59, v60, v61, v62, v63, v64);
    if (sub_100007138(v86))
    {
      v70 = sub_100007138(v86);
    }

    else
    {
      v70 = 99;
    }

    sub_100003EFC(Mutable, 0, @"-u=%d,", v65, v66, v67, v68, v69, v70);
  }

  CFStringTrim(Mutable, @",");
  sub_100009EE0(" Mount options %@", Mutable);
  if ((v87 || (v52 = kCFBooleanTrue, !sub_10000B684(Mutable, @"rdonly"))) && v52 != kCFBooleanFalse || (v52 = kCFBooleanFalse, !sub_1000029AC(v86, 2)) || v20)
  {
    if (v52 == kCFBooleanTrue)
    {
      if (sub_1000029AC(v86, 2))
      {
        v52 = kCFBooleanTrue;
      }

      else
      {
        v52 = kCFBooleanFalse;
      }
    }

    if (v52 == kCFBooleanFalse)
    {
      if (sub_10000BDD4(v86, 4) == 1)
      {
        v52 = kCFBooleanTrue;
      }

      else
      {
        v52 = kCFBooleanFalse;
      }
    }

    CFRetain(v86);
    *(v84 + 4) = 0;
    *(v84 + 8) = v81;
    *(v84 + 16) = v83;
    *(v84 + 24) = v86;
    *(v84 + 32) = v20;
    *(v84 + 40) = v82;
    *(v84 + 48) = Mutable;
    *(v84 + 56) = v25;
    *(v84 + 64) = 0;
    *(v84 + 72) = -1;
    if (v52 != kCFBooleanTrue)
    {
      sub_10000C064(89, v84);
      return;
    }

    v71 = sub_1000076E0(v86);
    *(v84 + 64) = v71;
    if (v71)
    {
      v72 = sub_10000703C(v71, 1);
      v73 = sub_10000A294(v72, 2);
      if (v73 != -1)
      {
        v74 = v73;
        sub_100017E44(*(v84 + 64), 1, 1);
        CFRetain(*(v84 + 64));
LABEL_124:
        v76 = dup(v74);
        close(v74);
        *(v84 + 72) = v76;
        sub_100009EE0("repaired disk, id = %@, ongoing.", v86);
        sub_100007400(v86, @"DARepairRunning", kCFBooleanTrue);
        sub_10000DAB8(v86, @"DARepairRunning");
        IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", @"com.apple.DiskArbitration.diskarbitrationd", 0, 0, 0, 0.0, 0, (v84 + 4));
        *(v84 + 80) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        v77 = sub_1000070AC(v86);
        v78 = *(v84 + 64);
        if (!v78)
        {
          v78 = v86;
        }

        v79 = sub_1000070A4(v78);
        sub_100008A44(v77, v79, *(v84 + 72), sub_10000C064, v84);
        return;
      }
    }

    else
    {
      v75 = sub_10000703C(v86, 1);
      v74 = sub_10000A294(v75, 2);
      if (v74 != -1)
      {
        goto LABEL_124;
      }
    }

    v22 = *__error();
    a4 = v83;
    v16 = v84;
    if (v22)
    {
      goto LABEL_97;
    }

    return;
  }

  v22 = 92;
  a4 = v83;
LABEL_96:
  v16 = v84;
LABEL_97:
  free(v16);
  if (a2)
  {
LABEL_98:
    CFRelease(a2);
  }

LABEL_99:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (a3)
  {
    a3(v22, 0, a4);
  }
}

uint64_t sub_10000B684(const __CFString *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  theString = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!theString)
  {
    return 0;
  }

  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, a1, @",");
  if (!ArrayBySeparatingStrings)
  {
    goto LABEL_55;
  }

  v5 = ArrayBySeparatingStrings;
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count <= 0)
  {
    CFRelease(v5);
    goto LABEL_55;
  }

  v42 = a2;
  v6 = 0;
  v38 = v5;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
    v8 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v41 = v6;
      if (CFStringHasPrefix(ValueAtIndex, @"-"))
      {
        v9 = CFStringCreateArrayBySeparatingStrings(kCFAllocatorDefault, v8, @"=-");
        if (v9)
        {
          v10 = v9;
          v43 = CFArrayGetCount(v9);
          if (v43 >= 1)
          {
            v11 = 0;
            v37 = 0;
            while (1)
            {
              v12 = CFArrayGetValueAtIndex(v10, v11);
              if (CFStringHasPrefix(v12, @"-"))
              {
                MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, v12);
                if (!MutableCopy)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, @"-");
                CFStringAppend(MutableCopy, v12);
                if (!MutableCopy)
                {
                  goto LABEL_39;
                }
              }

              v14 = opterr;
              Length = CFStringGetLength(MutableCopy);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              if (MaximumSizeForEncoding == -1)
              {
                v17 = 1024;
              }

              else
              {
                v17 = MaximumSizeForEncoding;
              }

              v18 = malloc_type_malloc(v17, 0x455FF32FuLL);
              if (!v18)
              {
                goto LABEL_38;
              }

              v19 = v18;
              if (!CFStringGetCString(MutableCopy, v18, v17, 0x8000100u))
              {
                sub_100009E58("Failed to copy option argument");
                free(v19);
                goto LABEL_38;
              }

              v44[0] = v19;
              v44[1] = 0;
              optreset = 1;
              optind = 0;
              opterr = 0;
              v20 = getopt(1, v44, "o:s:") << 24;
              if (v20 == -16777216)
              {
                v21 = 0;
                goto LABEL_34;
              }

              v21 = 0;
              while (1)
              {
                v22 = v20 >> 24;
                if (v22 != 115)
                {
                  if (v22 == 111)
                  {
                    if (*optarg == 61)
                    {
                      v23 = optarg + 1;
                    }

                    else
                    {
                      v23 = optarg;
                    }

                    v21 = CFStringCreateWithCString(kCFAllocatorDefault, v23, 0x8000100u);
                  }

                  else
                  {
                    sub_100009E58("Unknown mount arg string %s", v19);
                  }

                  goto LABEL_33;
                }

                if (CFEqual(v42, @"-s="))
                {
                  break;
                }

LABEL_33:
                v20 = getopt(1, v44, "o:s:") << 24;
                if (v20 == -16777216)
                {
                  goto LABEL_34;
                }
              }

              v37 = 1;
LABEL_34:
              opterr = v14;
              free(v19);
              CFRelease(MutableCopy);
              if (v21)
              {
                if (CFStringGetLength(theString) >= 1)
                {
                  CFStringAppend(theString, @",");
                }

                CFStringAppend(theString, v21);
                MutableCopy = v21;
LABEL_38:
                CFRelease(MutableCopy);
              }

LABEL_39:
              if (++v11 == v43)
              {
                LOBYTE(v8) = v37;
                goto LABEL_46;
              }
            }
          }

          goto LABEL_45;
        }
      }

      else
      {
        Copy = CFStringCreateCopy(kCFAllocatorDefault, v8);
        if (Copy)
        {
          v10 = Copy;
          if (CFStringGetLength(theString) >= 1)
          {
            CFStringAppend(theString, @",");
          }

          CFStringAppend(theString, v10);
LABEL_45:
          LOBYTE(v8) = 0;
LABEL_46:
          CFRelease(v10);
          goto LABEL_48;
        }
      }

      LOBYTE(v8) = 0;
LABEL_48:
      v5 = v38;
      v6 = v41;
    }

    if (v8)
    {
      break;
    }

    ++v6;
  }

  while (v6 < Count);
  v25 = v8;
  CFRelease(v5);
  a2 = v42;
  if (v8)
  {
    goto LABEL_69;
  }

LABEL_55:
  if (CFStringGetLength(theString) < 1)
  {
    goto LABEL_68;
  }

  LODWORD(v44[0]) = 0;
  v26 = CFStringGetLength(theString);
  v27 = CFStringGetMaximumSizeForEncoding(v26, 0x8000100u);
  if (v27 == -1)
  {
    v28 = 1024;
  }

  else
  {
    v28 = v27;
  }

  v29 = malloc_type_malloc(v28, 0x666F162FuLL);
  if (!v29)
  {
    sub_100009E58("Failed to malloc buffer");
LABEL_68:
    v25 = 0;
    goto LABEL_69;
  }

  v30 = v29;
  if (!CFStringGetCString(theString, v29, v28, 0x8000100u))
  {
    sub_100009E58("Failed to copy argument");
LABEL_67:
    free(v30);
    goto LABEL_68;
  }

  v31 = getmnt_silent;
  getmnt_silent = 1;
  v32 = getmntopts();
  getmnt_silent = v31;
  if (!v32)
  {
    sub_100009E58("Failed to get mnt opts");
    goto LABEL_67;
  }

  if (CFEqual(a2, @"force"))
  {
    v33 = (LODWORD(v44[0]) >> 19) & 1;
    goto LABEL_76;
  }

  if (CFEqual(a2, @"nodev"))
  {
    v33 = (LOBYTE(v44[0]) >> 4) & 1;
    goto LABEL_76;
  }

  if (CFEqual(a2, @"noowners") || CFEqual(a2, @"noperm"))
  {
    v33 = (LODWORD(v44[0]) >> 21) & 1;
    goto LABEL_76;
  }

  if (CFEqual(a2, @"nosuid"))
  {
    v33 = (LOBYTE(v44[0]) >> 3) & 1;
    goto LABEL_76;
  }

  if (CFEqual(a2, @"rdonly"))
  {
    v35 = v44[0];
    goto LABEL_81;
  }

  if (CFEqual(a2, @"union"))
  {
    v33 = (LOBYTE(v44[0]) >> 5) & 1;
    goto LABEL_76;
  }

  if (!CFEqual(a2, @"update"))
  {
    if (CFEqual(a2, @"nobrowse"))
    {
      v33 = (LODWORD(v44[0]) >> 20) & 1;
      goto LABEL_76;
    }

    if (CFEqual(a2, @"nofollow"))
    {
      v33 = (LODWORD(v44[0]) >> 27) & 1;
      goto LABEL_76;
    }

    if (CFEqual(a2, @"noexec"))
    {
      v33 = (LOBYTE(v44[0]) >> 2) & 1;
      goto LABEL_76;
    }

    v36 = @"dev";
    if (CFEqual(a2, @"dev"))
    {
      if ((v44[0] & 0x10) != 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v36 = @"owners";
      if (CFEqual(a2, @"owners") || (v36 = @"perm", CFEqual(a2, @"perm")))
      {
        if ((BYTE2(v44[0]) & 0x20) != 0)
        {
LABEL_101:
          LOBYTE(v33) = 0;
          goto LABEL_76;
        }
      }

      else
      {
        v36 = @"suid";
        if (!CFEqual(a2, @"suid") || (v44[0] & 8) != 0)
        {
          goto LABEL_101;
        }
      }
    }

    LOBYTE(v33) = CFStringFind(theString, v36, 0).location != -1;
    goto LABEL_76;
  }

  v35 = BYTE2(v44[0]);
LABEL_81:
  LOBYTE(v33) = v35 & 1;
LABEL_76:
  v25 = v33;
  freemntopts();
  free(v30);
LABEL_69:
  CFRelease(theString);
  return v25;
}

uint64_t sub_10000BDD4(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_18;
      }

      v5 = kCFBooleanTrue;
      if (sub_100007058(a1, @"DAMediaRemovable") == kCFBooleanTrue)
      {
        v3 = qword_1000292C8;
        v4 = &off_100025778;
        goto LABEL_29;
      }

      v6 = sub_100007058(a1, @"DADeviceInternal");
      v3 = qword_1000292C8;
      if (v6 != kCFBooleanTrue)
      {
        v4 = &off_100025768;
        goto LABEL_29;
      }

      v9 = &off_100025770;
    }

    else
    {
      v5 = kCFBooleanTrue;
      if (sub_100007058(a1, @"DAMediaRemovable") == kCFBooleanTrue)
      {
        v3 = qword_1000292C8;
        v9 = &off_100025760;
      }

      else
      {
        v8 = sub_100007058(a1, @"DADeviceInternal");
        v3 = qword_1000292C8;
        if (v8 == kCFBooleanTrue)
        {
          v4 = &off_100025758;
          goto LABEL_29;
        }

        v9 = &off_100025750;
      }
    }

    Value = CFDictionaryGetValue(v3, *v9);
    if (!Value)
    {
      Value = v5;
    }

    if (!Value)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v3 = qword_1000292C8;
      v4 = &off_100025780;
      goto LABEL_29;
    }

    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v3 = qword_1000292C8;
        v4 = &off_1000257C0;
LABEL_29:
        Value = CFDictionaryGetValue(v3, *v4);
        v11 = &kCFBooleanFalse;
LABEL_30:
        v12 = *v11;
        if (!Value)
        {
          Value = v12;
        }

        if (Value)
        {
          goto LABEL_33;
        }

LABEL_40:
        sub_10001B304();
      }

LABEL_18:
      Value = kCFBooleanFalse;
      if (kCFBooleanFalse)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    }

    if (sub_100007058(a1, @"DADeviceInternal") == kCFBooleanFalse)
    {
      Value = CFDictionaryGetValue(qword_1000292C8, @"DAEnableUserFSMountExternal");
      v11 = &kCFBooleanTrue;
      goto LABEL_30;
    }

    if (sub_100007058(a1, @"DADeviceInternal") == kCFBooleanTrue)
    {
      v7 = &off_100025790;
    }

    else
    {
      v7 = &off_100025798;
    }

    Value = CFDictionaryGetValue(qword_1000292C8, *v7);
    if (!Value)
    {
      Value = kCFBooleanFalse;
    }

    if (!Value)
    {
      goto LABEL_40;
    }
  }

LABEL_33:

  return CFBooleanGetValue(Value);
}

void sub_10000C064(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (v4)
  {
    IOPMAssertionRelease(v4);
    *(a2 + 4) = 0;
  }

  if (sub_100007058(*(a2 + 24), @"DARepairRunning"))
  {
    sub_100007400(*(a2 + 24), @"DARepairRunning", 0);
    sub_10000DAB8(*(a2 + 24), @"DARepairRunning");
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    sub_100017E44(v5, 1, 0);
    CFRelease(*(a2 + 64));
    *(a2 + 64) = 0;
  }

  v6 = *(a2 + 72);
  if (v6 != -1)
  {
    close(v6);
  }

  if (a1)
  {
    if (a1 != 89)
    {
      sub_100009EE0("repaired disk, id = %@, failure.", *(a2 + 24));
      sub_100009E58("unable to repair %@ (status code 0x%08X).", *(a2 + 24), a1);
      v7 = *(a2 + 24);
      v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      sub_10000536C(a1, v7, v8 - *(a2 + 80));
      if (!*(a2 + 32))
      {
        v15 = 92;
LABEL_23:

        sub_10000C30C(v15, a2, v9, v10, v11, v12, v13, v14);
        return;
      }
    }
  }

  else
  {
    sub_100007688(*(a2 + 24), 2, 0);
    sub_100009EE0("repaired disk, id = %@, success.", *(a2 + 24));
    v16 = *(a2 + 24);
    v17 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    sub_10000536C(0, v16, v17 - *(a2 + 80));
  }

  if (!*(a2 + 40) && sub_10000BDD4(*(a2 + 24), 3) != 1)
  {
    v15 = 28;
    goto LABEL_23;
  }

  sub_100009EE0("mounted disk, id = %@, ongoing.", *(a2 + 24));
  sub_100007688(*(a2 + 24), 0x200000, 1);
  v18 = *(a2 + 40);
  if (v18)
  {
    CFArrayAppendValue(qword_1000292D0, v18);
  }

  if (sub_10000BDD4(*(a2 + 24), 3) == 1)
  {
    v19 = @"UserFS";
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1000070AC(*(a2 + 24));
  *(a2 + 96) = sub_1000082A8(v20, v19);
  *(a2 + 88) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v21 = sub_1000070AC(*(a2 + 24));
  v22 = *(a2 + 56);
  v23 = sub_100007058(*(a2 + 24), @"DAVolumeName");
  v24 = *(a2 + 40);
  v25 = sub_100007138(*(a2 + 24));
  v26 = sub_100007130(*(a2 + 24));
  sub_100007EB4(v21, v22, v23, v24, v25, v26, v19, sub_10000C3C0, a2, *(a2 + 48), 0);
}

void sub_10000C30C(int a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  if (a1 == 92 && *a2)
  {
    sub_10000ABBC(*(a2 + 3), 0, *(a2 + 1), *(a2 + 2), a5, a6, a7, a8, @"force");
    *(a2 + 1) = 0;
  }

  else
  {
    v9 = *(a2 + 1);
    if (v9)
    {
      v10 = *(a2 + 5);
      v11 = *(a2 + 2);
      v9();
    }
  }

  CFRelease(*(a2 + 3));
  CFRelease(*(a2 + 6));
  v12 = *(a2 + 5);
  if (v12)
  {
    CFRelease(v12);
  }

  free(a2);
}

void sub_10000C3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000070AC(*(a2 + 24));
  sub_100007688(*(a2 + 24), 0x200000, 0);
  v5 = sub_1000029AC(*(a2 + 24), 16);
  v6 = sub_10000776C(*(a2 + 24));
  if (v4)
  {
    v7 = sub_100007058(*(a2 + 24), @"DAVolumeUUID");
    v8 = sub_100017F50(v4, v7);
    if (*(a2 + 96))
    {
      v9 = sub_100007DE8(v4);
      v10 = sub_10000A064(v9, 0);
      if (v10)
      {
        LODWORD(v4) = 1;
      }

      else
      {
        LODWORD(v4) = 2;
      }

      if (!a1)
      {
        if (v10)
        {
          v11 = 512;
        }

        else
        {
          v11 = 1024;
        }

        sub_100007688(*(a2 + 24), v11, 1);
      }
    }

    else
    {
      LODWORD(v4) = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  sub_1000054F0(a1, v8, v4, v5, v6, v12 - *(a2 + 88));
  v13 = *(a2 + 40);
  if (v13)
  {
    sub_100009604(qword_1000292D0, v13);
  }

  v14 = *(a2 + 24);
  if (a1)
  {
    sub_100009EE0("mounted disk, id = %@, failure.", *(a2 + 24));
    sub_100009E58("unable to mount %@ (status code 0x%08X).", *(a2 + 24), a1);
    v21 = a1;
LABEL_17:

    sub_10000C30C(v21, a2, v15, v16, v17, v18, v19, v20);
    return;
  }

  sub_100009EE0("mounted disk, id = %@, success.", *(a2 + 24));
  if (sub_100007058(*(a2 + 24), @"DAMediaEncrypted") == kCFBooleanTrue && sub_10000BDD4(*(a2 + 24), 0))
  {
    sub_100009EE0("setting uid, id = %@ %d, success.", *(a2 + 24), dword_100029274);
    sub_1000076D0(*(a2 + 24), dword_100029274);
  }

  v22 = sub_1000029AC(*(a2 + 24), 4);
  v23 = *(a2 + 24);
  if (!v22)
  {
    sub_100007688(v23, 4, 0);
    v21 = 0;
    goto LABEL_17;
  }

  v24 = sub_1000070AC(v23);
  v25 = *(a2 + 40);

  sub_100008CFC(v24, v25, sub_10000C628, a2);
}

void sub_10000C628(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    sub_100009E58("unable to repair quotas on disk %@ (status code 0x%08X).", a2[3], a1);
  }

  else
  {
    sub_100007688(a2[3], 4, 0);
  }

  sub_10000C30C(0, a2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10000C694(void *a1)
{
  if (sub_100007058(a1, @"DAVolumePath"))
  {
    v30 = 0;
    v2 = getmntinfo(&v30, 2);
    if (v2 < 1)
    {
LABEL_6:
      v7 = sub_100007058(a1, @"DAVolumePath");
      CFRetain(v7);
      sub_1000183CC(sub_10000CAEC, v7, 0, 0);
      sub_10000729C(a1, 0);
      if (sub_100007058(a1, @"DAMediaPath"))
      {
        sub_100007400(a1, @"DAVolumePath", 0);
        sub_10000DAB8(a1, @"DAVolumePath");
      }

      else
      {
        sub_100009EE0("removed disk, id = %@.", a1);
        sub_10000DB74(a1);
        sub_100007400(a1, @"DAVolumePath", 0);
        sub_100007688(a1, 0x10000000, 1);
        sub_100009604(qword_100029280, a1);
      }

      sub_100013B38(v8);
    }

    else
    {
      v3 = v2;
      v4 = 88;
      while (1)
      {
        v5 = sub_100009BF0(v30 + v4 - 88);
        v6 = sub_100006C18(a1);
        if (!strcmp(v5, v6))
        {
          break;
        }

        v4 += 2168;
        if (!--v3)
        {
          goto LABEL_6;
        }
      }

      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (Mutable)
      {
        v15 = Mutable;
        if (!strcmp(v30 + v4 - 16, "hfs"))
        {
          v16 = sub_100007058(a1, @"DAVolumePath");
          v17 = _FSCopyNameForVolumeFormatAtURL(v16);
          if (sub_100005CC4(a1, @"DAVolumeType", v17))
          {
            sub_100007400(a1, @"DAVolumeType", v17);
            CFArrayAppendValue(v15, @"DAVolumeType");
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        v18 = strlen(v30 + v4);
        v19 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, v30 + v4, v18, 1u);
        if (v19)
        {
          v20 = v19;
          if (sub_100005CC4(a1, @"DAVolumePath", v19))
          {
            if (sub_100007058(a1, @"DAVolumeUUID") && (v21 = qword_1000292D8, v22 = sub_100007058(a1, @"DAVolumeUUID"), (Value = CFDictionaryGetValue(v21, v22)) != 0) && CFURLGetFileSystemRepresentation(Value, 1u, buffer, 1024) && (v24 = strlen(buffer), !strncmp(v30 + v4, buffer, v24)))
            {
              sub_100009EE0("dangling mountpoint present ignore mountpoint %@", a1);
            }

            else
            {
              sub_10000729C(a1, v20);
              sub_100007400(a1, @"DAVolumePath", v20);
              sub_100009EE0("volume path changed for %@", a1);
              CFArrayAppendValue(v15, @"DAVolumePath");
            }
          }

          CFRelease(v20);
        }

        if (CFArrayGetCount(v15))
        {
          sub_100009EE0("updated disk, id = %@.", a1);
          if (sub_1000029AC(a1, 0x80000))
          {
            sub_10000DAB8(a1, v15);
          }
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    *buffer = 0;
    v9 = getmntinfo(buffer, 2);
    if (v9 >= 1)
    {
      v10 = 0;
      v11 = 2168 * v9;
      while (1)
      {
        v12 = sub_100009BF0(*buffer + v10);
        v13 = sub_100006C18(a1);
        if (!strcmp(v12, v13))
        {
          break;
        }

        v10 += 2168;
        if (v11 == v10)
        {
          return 0;
        }
      }

      v25 = *buffer + v10;
      v26 = strlen((v25 + 88));
      v27 = CFURLCreateFromFileSystemRepresentation(kCFAllocatorDefault, (v25 + 88), v26, 1u);
      if (v27)
      {
        v15 = v27;
        sub_10000729C(a1, v27);
        sub_100007400(a1, @"DAVolumePath", v15);
        sub_10000DAB8(a1, @"DAVolumePath");
        sub_100013B38(v28);
LABEL_34:
        CFRelease(v15);
      }
    }
  }

  return 0;
}

uint64_t sub_10000CAEC(const void *a1)
{
  nullsub_4();
  CFRelease(a1);
  return 0;
}

uint64_t sub_10000CB1C(uint64_t a1, int a2)
{
  v4 = sub_100007058(a1, @"DAVolumePath");
  if (!v4)
  {
    return 4175036419;
  }

  v5 = v4;
  sub_1000070AC(a1);
  v6 = sub_1000096F8(v5);
  if (!v6)
  {
    return 49174;
  }

  v7 = v6;
  v8 = fork();
  v12 = v8;
  if (v8 == -1)
  {
    v9 = *__error();
  }

  else
  {
    if (!v8)
    {
      v11 = "-a";
      if (!a2)
      {
        v11 = "-d";
      }

      execle("/usr/sbin/vsdbutil", "/usr/sbin/vsdbutil", v11, v7, 0, 0);
      exit(71);
    }

    waitpid(v8, &v12, 0);
    if ((v12 & 0x7F) != 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12 >> 8;
    }
  }

  free(v7);
  if (v9)
  {
    return v9 | 0xC000u;
  }

  else
  {
    return 0;
  }
}

void sub_10000CC24(int a1, void *a2)
{
  v4 = *(a2 + 1);
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v6 = Mutable;
  if (!a1 && Mutable)
  {
    v7 = (*a2 ? &kCFBooleanTrue : &kCFBooleanFalse);
    v8 = *v7;
    if (sub_100005CC4(v4, @"DAMediaEncrypted", *v7))
    {
      sub_100007400(v4, @"DAMediaEncrypted", v8);
      CFArrayAppendValue(v6, @"DAMediaEncrypted");
    }
  }

  if (CFArrayGetCount(v6))
  {
    sub_100009EE0("encryption status changed, id = %@.", v4);
    if (sub_1000029AC(v4, 0x80000))
    {
      sub_10000DAB8(v4, v6);
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  CFRelease(*(a2 + 1));

  free(a2);
}

BOOL sub_10000CD48(uint64_t a1)
{
  Count = CFArrayGetCount(qword_100029280);
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 0;
  v5 = kCFBooleanTrue;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v4);
    v7 = sub_100007094(a1);
    if (v7 == sub_100007094(ValueAtIndex))
    {
      v8 = sub_100007058(ValueAtIndex, @"DAMediaBSDName");
      if (sub_100002E30(ValueAtIndex))
      {
        break;
      }

      result = sub_1000029AC(ValueAtIndex, 16);
      if (!result)
      {
        return result;
      }

      if (sub_100007058(ValueAtIndex, @"DAVolumeMountable") == v5)
      {
        break;
      }

      if (sub_100007058(ValueAtIndex, @"DAMediaLeaf") == kCFBooleanFalse)
      {
        v10 = CFArrayGetCount(qword_100029280);
        if (v10 < 1)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          while (1)
          {
            v12 = CFArrayGetValueAtIndex(qword_100029280, v11);
            if (ValueAtIndex != v12)
            {
              v13 = sub_100007058(v12, @"DAMediaBSDName");
              if (v13)
              {
                if (CFStringHasPrefix(v13, v8))
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
        }

        v14 = v11 == v10;
        v5 = kCFBooleanTrue;
        if (v14)
        {
          break;
        }
      }
    }

    if (++v4 == v3)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10000CEF0(const void *a1, const void *a2, void (*a3)(uint64_t, void, uint64_t, void, void, void, uint64_t), uint64_t a4)
{
  if (!byte_100029318 && sub_10000BDD4(a1, 0))
  {
    sub_100009EE0(" Device is not unlocked, delaying probe of %@", a1);
    v12 = 89;
    goto LABEL_16;
  }

  v7 = malloc_type_malloc(0x48uLL, 0x10A004004EB5F4FuLL);
  if (!v7)
  {
LABEL_15:
    v12 = 12;
LABEL_16:
    if (a3)
    {

      a3(v12, 0, 0xFFFFFFFFLL, 0, 0, 0, a4);
    }

    return;
  }

  v8 = v7;
  MutableCopy = CFArrayCreateMutableCopy(kCFAllocatorDefault, 0, qword_100029298);
  if (!MutableCopy)
  {
    free(v8);
    goto LABEL_15;
  }

  v10 = MutableCopy;
  v11 = sub_100007058(a1, @"DAMediaSize");
  if (v11 && !sub_100009698(v11))
  {
    CFArrayRemoveAllValues(v10);
  }

  CFRetain(a1);
  if (a2)
  {
    sub_100017E44(a2, 1, 1);
    CFRetain(a2);
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = v10;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = 0;
  v8[7] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  *(v8 + 16) = 0;

  sub_10000D0B8(0xFFFFFFFFLL, 0, 0, 0, 0, v8);
}

void sub_10000D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFUUID *a5, char *a6)
{
  v12 = *(a6 + 6);
  if (!a1)
  {
    v14 = sub_100007DE8(*(a6 + 6));
    sub_100009EE0("probed disk, id = %@, with %@, success.", *(a6 + 4), v14);
    if (!*a6)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v12)
  {
    v13 = sub_100007DE8(*(a6 + 6));
    sub_100009EE0("probed disk, id = %@, with %@, failure.", *(a6 + 4), v13);
    if (a1 != -2)
    {
      sub_100009E58("unable to probe %@ (status code 0x%08X).", *(a6 + 4), a1);
    }

    CFRelease(*(a6 + 6));
    *(a6 + 6) = 0;
  }

  v38 = a4;
  v37 = a3;
  v36 = (sub_100007058(*(a6 + 4), @"DAMediaRemovable") != kCFBooleanTrue || sub_100007058(*(a6 + 4), @"DADeviceInternal")) && sub_100007058(*(a6 + 4), @"DADeviceInternal") != kCFBooleanTrue;
  while (CFArrayGetCount(*(a6 + 2)))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a6 + 2), 0);
    if (ValueAtIndex)
    {
      v16 = ValueAtIndex;
      Value = CFDictionaryGetValue(ValueAtIndex, @"DAFileSystem");
      if (Value)
      {
        v18 = Value;
        v19 = CFDictionaryGetValue(v16, @"FSMediaProperties");
        if (v19)
        {
          v20 = v19;
          matches = 0;
          v21 = sub_100007050(*(a6 + 4));
          IOServiceMatchPropertyTable(v21, v20, &matches);
          if (matches)
          {
            v22 = sub_100007DE8(v18);
            CFRetain(v18);
            *(a6 + 6) = v18;
            if (CFDictionaryGetValue(v16, @"autodiskmount") == kCFBooleanFalse)
            {
              sub_100007688(*(a6 + 4), 16, 0);
              sub_100007688(*(a6 + 4), 32, 0);
            }

            if (!v22 || CFEqual(v22, @"ntfs") != 1)
            {
              CFArrayRemoveValueAtIndex(*(a6 + 2), 0);
              sub_100009EE0("probed disk, id = %@, with %@, ongoing.", *(a6 + 4), v22);
              v32 = *(a6 + 5);
              if (v32)
              {
                v33 = sub_10000703C(v32, 1);
              }

              else
              {
                v33 = 0;
              }

              v34 = sub_1000070A4(*(a6 + 4));
              v35 = sub_10000703C(*(a6 + 4), 1);
              sub_1000083BC(v18, v34, v35, v33, sub_10000D0B8, a6, v36);
              return;
            }

            sub_100009EE0("deferring probe of disk, id = %@, with %@", *(a6 + 4), v22);
            Mutable = *(a6 + 3);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
              *(a6 + 3) = Mutable;
            }

            CFArrayAppendValue(Mutable, v16);
            CFRelease(v18);
            *(a6 + 6) = 0;
          }
        }
      }
    }

    CFArrayRemoveValueAtIndex(*(a6 + 2), 0);
  }

  if (!byte_100028409 && !*(a6 + 16))
  {
    *(a6 + 16) = 1;
    v24 = malloc_type_malloc(0x48uLL, 0x10A004004EB5F4FuLL);
    if (v24)
    {
      v25 = v24;
      CFRetain(*(a6 + 4));
      *v25 = *a6;
      *(v25 + 16) = 0;
      *(v25 + 24) = *(a6 + 24);
      *(v25 + 40) = *(a6 + 5);
      *(v25 + 48) = 0;
      *(v25 + 64) = 1;
      *(v25 + 56) = *(a6 + 7);
      sub_100015BC0(dword_100029274, v25);
    }
  }

  a4 = v38;
  a3 = v37;
  a2 = a2;
  if (*a6 && !*(a6 + 16))
  {
    if (!v12)
    {
LABEL_38:
      (*a6)(a1, *(a6 + 6), a2, a3, a4, a5, *(a6 + 1));
      goto LABEL_39;
    }

LABEL_33:
    v26 = 0;
    if (!a1)
    {
      v27 = *(a6 + 6);
      if (v27)
      {
        v26 = sub_100017F50(v27, a5);
      }
    }

    v28 = *(a6 + 4);
    if (v28)
    {
      v29 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
      sub_100004DAC(a1, v26, v28, v29 - *(a6 + 7), a2);
    }

    goto LABEL_38;
  }

LABEL_39:
  CFRelease(*(a6 + 2));
  CFRelease(*(a6 + 4));
  v30 = *(a6 + 5);
  if (v30)
  {
    sub_100017E44(v30, 1, 0);
    CFRelease(*(a6 + 5));
  }

  v31 = *(a6 + 6);
  if (v31)
  {
    CFRelease(v31);
  }

  free(a6);
}

BOOL sub_10000D534(const void *a1, int a2)
{
  Count = CFArrayGetCount(qword_100029300);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, 0);
  v7 = sub_100004500(ValueAtIndex);
  if (sub_100009698(v7) != a2)
  {
    v10 = a2;
    v11 = 1;
    while (v5 != v11)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, v11);
      v12 = sub_100004500(ValueAtIndex);
      ++v11;
      if (sub_100009698(v12) == v10)
      {
        v8 = v11 - 1;
        v9 = v8 < v5;
        goto LABEL_8;
      }
    }

    return 0;
  }

  v8 = 0;
  v9 = 1;
LABEL_8:
  v13 = sub_10000450C(ValueAtIndex);
  v14 = sub_1000023E8(ValueAtIndex);
  if (v14 <= 0xE)
  {
    if (((1 << v14) & 0x4144) != 0)
    {
      if (a1)
      {
        v15 = sub_10000709C(v13);
        if (v15)
        {
          BytePtr = CFDataGetBytePtr(v15);
          if (!*(BytePtr + 2))
          {
            *(BytePtr + 2) = CFRetain(a1);
          }
        }

        v17 = sub_1000029BC(ValueAtIndex);
        v18 = sub_100002AFC(ValueAtIndex);
        v19 = sub_1000023E8(ValueAtIndex);
        v20 = sub_1000023C4(v19);
        v21 = sub_1000079F8(a1);
        sub_100009E58("  dispatched response, id = %016llX:%016llX, kind = %s, disk = %@, dissented, status = 0x%08X.", v17, v18, v20, v13, v21);
      }

      else
      {
        v22 = sub_1000029BC(ValueAtIndex);
        v23 = sub_100002AFC(ValueAtIndex);
        v24 = sub_1000023E8(ValueAtIndex);
        v29 = sub_1000023C4(v24);
        sub_100001950("  dispatched response, id = %016llX:%016llX, kind = %s, disk = %@, approved.", v22, v23, v29, v13);
      }
    }

    else if (v14 == 9)
    {
      v25 = sub_1000029BC(ValueAtIndex);
      v26 = sub_100002AFC(ValueAtIndex);
      v27 = sub_1000023E8(ValueAtIndex);
      v30 = sub_1000023C4(v27);
      sub_100001950("  dispatched response, id = %016llX:%016llX, kind = %s, disk = %@.", v25, v26, v30, v13);
    }
  }

  CFArrayRemoveValueAtIndex(qword_100029300, v8);
  sub_10000D740(v13);
  return v9;
}

void sub_10000D740(const void *a1)
{
  Count = CFArrayGetCount(qword_100029300);
  if (Count < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, v3);
      if (sub_10000450C(ValueAtIndex) == a1)
      {
        break;
      }

      if (Count == ++v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 == Count)
  {
LABEL_8:
    v5 = sub_10000709C(a1);
    BytePtr = CFDataGetBytePtr(v5);
    v8 = *BytePtr;
    v7 = *(BytePtr + 1);
    v9 = *(BytePtr + 2);
    sub_1000073BC(a1, 0);
    v8(v9, v7);
    if (v9)
    {
      CFRelease(v9);
    }
  }

  v10 = CFArrayGetCount(qword_100029300);
  if (v10 >= 1)
  {
    v11 = v10;
    v12 = 0;
    v13 = kCFAbsoluteTimeIntervalSince1904;
    do
    {
      v14 = CFArrayGetValueAtIndex(qword_100029300, v12);
      if (v14)
      {
        v15 = v14;
        v16 = sub_1000029A0(v14);
        if (!sub_1000136E8(v16, 0x1000000))
        {
          v17 = sub_100004538(v15) + 10.0 + 1.0;
          if (v17 < v13)
          {
            v13 = v17;
          }
        }
      }

      ++v12;
    }

    while (v11 != v12);
    if (v13 < kCFAbsoluteTimeIntervalSince1904 && v13 > CFAbsoluteTimeGetCurrent())
    {
      Current = CFAbsoluteTimeGetCurrent();
      v19 = dispatch_time(0, 1000000000 * (v13 - Current));
      v20 = sub_1000018C8();

      dispatch_after(v19, v20, &stru_100025428);
    }
  }
}

void sub_10000D90C(int a1, void *a2, void *a3)
{
  Count = CFArrayGetCount(qword_100029308);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029308, i);
      v10 = ValueAtIndex;
      if (a1 == 15)
      {
        if (!sub_1000029D4(ValueAtIndex, 1))
        {
          sub_100002B4C(v10, 15, a2, a3);
          sub_100002BEC(v10, 1, 1);
        }
      }

      else
      {
        sub_100002B4C(ValueAtIndex, a1, a2, a3);
      }
    }
  }
}

void sub_10000D9DC(void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  sub_10000DA30(a1, a3, a4);
  sub_100002440(a2, a1, 0);

  sub_10000D740(a1);
}

void sub_10000DA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 24);
  if (Mutable)
  {
    v7 = Mutable;
    BytePtr = CFDataGetBytePtr(Mutable);
    *(BytePtr + 1) = a3;
    *(BytePtr + 2) = 0;
    *BytePtr = a2;
    sub_1000073BC(a1, v7);

    CFRelease(v7);
  }
}

void sub_10000DAB8(void *a1, void *cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFArrayGetTypeID())
  {

    sub_10000D90C(3, a1, cf);
  }

  else
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, cf);
    sub_10000D90C(3, a1, Mutable);

    CFRelease(Mutable);
  }
}

void sub_10000DBA4(unsigned int a1, const void *a2, uint64_t a3, const void *a4, const void *a5, const void *a6)
{
  v6 = sub_10000E4DC(kCFAllocatorDefault, a1, a2, a3, a4, a5, 0, 0, a6);
  if (v6)
  {
    v7 = v6;
    sub_10000DFEC(v6);

    CFRelease(v7);
  }
}

void sub_10000DC2C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000DA30(a1, a2, a3);
  sub_10000D90C(6, a1, 0);

  sub_10000D740(a1);
}

void sub_10000DCA8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000DA30(a1, a2, a3);
  sub_10000D90C(8, a1, 0);

  sub_10000D740(a1);
}

void sub_10000DD48(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10000DA30(a1, a2, a3);
  sub_10000D90C(14, a1, 0);

  sub_10000D740(a1);
}

void sub_10000DDB0(const void *a1)
{
  Count = CFArrayGetCount(qword_100029300);
  if (Count >= 1)
  {
    v3 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, v3 - 2);
      if (sub_10000450C(ValueAtIndex) == a1)
      {
        CFArrayRemoveValueAtIndex(qword_100029300, v3 - 2);
        sub_10000D740(a1);
      }

      --v3;
    }

    while (v3 > 1);
  }

  v5 = CFArrayGetCount(qword_1000292F8);
  if (v5 >= 1)
  {
    v6 = v5 + 1;
    do
    {
      v7 = CFArrayGetValueAtIndex(qword_1000292F8, v6 - 2);
      if (sub_10000E7CC(v7) == a1)
      {
        sub_10000F810(v7, -119930874);
        CFArrayRemoveValueAtIndex(qword_1000292F8, v6 - 2);
      }

      --v6;
    }

    while (v6 > 1);
  }
}

void sub_10000DE9C(const void *a1)
{
  Count = CFArrayGetCount(qword_100029300);
  if (Count >= 1)
  {
    v3 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, v3 - 2);
      if (sub_1000029A0(ValueAtIndex) == a1)
      {
        v5 = sub_10000450C(ValueAtIndex);
        CFArrayRemoveValueAtIndex(qword_100029300, v3 - 2);
        sub_10000D740(v5);
      }

      --v3;
    }

    while (v3 > 1);
  }

  v6 = CFArrayGetCount(qword_1000292F8);
  if (v6 >= 1)
  {
    v7 = v6 + 1;
    do
    {
      v8 = CFArrayGetValueAtIndex(qword_1000292F8, v7 - 2);
      if (v8)
      {
        v9 = v8;
        v10 = sub_10000F9B8(v8);
        if (v10)
        {
          if (sub_1000029A0(v10) == a1)
          {
            sub_10000FA54(v9, 0);
          }
        }
      }

      --v7;
    }

    while (v7 > 1);
  }

  v11 = CFArrayGetCount(qword_100029280);
  if (v11 >= 1)
  {
    v12 = v11 + 1;
    do
    {
      v13 = CFArrayGetValueAtIndex(qword_100029280, v12 - 2);
      if (v13)
      {
        v14 = v13;
        v15 = sub_100002E30(v13);
        if (v15)
        {
          if (sub_1000029A0(v15) == a1)
          {
            sub_100007334(v14, 0);
          }
        }
      }

      --v12;
    }

    while (v12 > 1);
  }
}

void sub_10000DFEC(const __CFDictionary *a1)
{
  v2 = sub_10000E7D8(a1);
  if (v2 > 0xD || ((1 << v2) & 0x20A0) == 0)
  {
LABEL_35:
    CFArrayAppendValue(qword_1000292F8, a1);

    sub_100013B38();
    return;
  }

  v3 = sub_10000F994(a1);
  v4 = sub_10000E7CC(a1);
  v5 = (sub_10000E7D8(a1) == 5) | v3;
  if ((v5 & 1) == 0)
  {
    if (!sub_1000029AC(v4, 128) || sub_10000E7D8(a1) != 13)
    {
      goto LABEL_35;
    }

    goto LABEL_21;
  }

  v6 = -119930868;
  v7 = sub_10000F9A0(a1);
  v8 = sub_10000F9AC(a1);
  v9 = sub_100007058(v4, @"DAMediaWhole");
  if (sub_100007058(v4, @"DAMediaWhole") != kCFBooleanFalse)
  {
    v10 = -119930877;
    if (!(v8 | v7))
    {
      v10 = 0;
    }

    v6 = v9 ? v10 : -119930868;
    if (v9 && (v8 | v7) == 0)
    {
LABEL_21:
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
      if (!Mutable)
      {
        goto LABEL_35;
      }

      v13 = Mutable;
      Count = CFArrayGetCount(qword_100029280);
      if (Count < 1)
      {
LABEL_34:
        sub_10000FA84(a1, v13);
        CFRelease(v13);
        goto LABEL_35;
      }

      v15 = Count;
      v16 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_100029280, v16);
        if (v4 != ValueAtIndex)
        {
          v18 = ValueAtIndex;
          v19 = sub_10000703C(ValueAtIndex, 0);
          v20 = sub_10000703C(v4, 0);
          if (v5)
          {
            v21 = sub_100007094(v4);
            if (v21 == sub_100007094(v18))
            {
              goto LABEL_31;
            }
          }

          else if (v20 && v19 && !strcmp(v20, v19))
          {
LABEL_31:
            v22 = sub_10000E7D8(a1);
            v23 = sub_10000FA34(a1);
            v24 = sub_10000FA14(a1);
            v25 = sub_10000E4DC(kCFAllocatorDefault, v22, v18, v5, 0, 0, v23, v24, 0);
            if (v25)
            {
              v26 = v25;
              CFArrayAppendValue(v13, v25);
              CFArrayAppendValue(qword_1000292F8, v26);
              CFRelease(v26);
            }
          }
        }

        if (v15 == ++v16)
        {
          goto LABEL_34;
        }
      }
    }
  }

  sub_10000F810(a1, v6);
}

void sub_10000E2D0(const __CFDictionary *a1)
{
  Count = CFArrayGetCount(qword_100029300);
  if (Count >= 1)
  {
    v3 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, v3 - 2);
      v5 = sub_1000029A0(ValueAtIndex);
      if (v5 == sub_1000029A0(a1))
      {
        v6 = sub_1000029BC(ValueAtIndex);
        if (v6 == sub_1000029BC(a1))
        {
          v7 = sub_100002AFC(ValueAtIndex);
          if (v7 == sub_100002AFC(a1))
          {
            v8 = sub_10000450C(ValueAtIndex);
            CFArrayRemoveValueAtIndex(qword_100029300, v3 - 2);
            sub_10000D740(v8);
          }
        }
      }

      --v3;
    }

    while (v3 > 1);
  }
}

void sub_10000E3AC(id a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  Count = CFArrayGetCount(qword_100029300);
  if (Count >= 1)
  {
    v3 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(qword_100029300, v3 - 2);
      if (ValueAtIndex)
      {
        v5 = ValueAtIndex;
        v6 = sub_1000029A0(ValueAtIndex);
        if (!sub_1000136E8(v6, 0x1000000) && sub_100004538(v5) + 10.0 < Current)
        {
          v7 = sub_10000450C(v5);
          if (!sub_1000029D4(v6, 0x1000000))
          {
            sub_100001950("  timed out session, id = %@.", v6);
            sub_100009E58("%@ not responding.", v6);
            sub_100002BEC(v6, 0x1000000, 1);
          }

          CFRetain(v7);
          CFArrayRemoveValueAtIndex(qword_100029300, v3 - 2);
          sub_10000D740(v7);
          CFRelease(v7);
        }
      }

      --v3;
    }

    while (v3 > 1);
  }
}

__CFDictionary *sub_10000E4DC(uint64_t a1, unsigned int a2, const void *a3, uint64_t a4, const void *a5, const void *a6, unsigned int a7, unsigned int a8, const void *a9)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v17 = Mutable;
  if (Mutable)
  {
    sub_100002354(Mutable, @"DARequestKind", a2);
    if (a3)
    {
      CFDictionarySetValue(v17, @"DARequestDisk", a3);
    }

    if (a4)
    {
      sub_100002354(v17, @"DARequestArgument1", a4);
    }

    if (a5)
    {
      CFDictionarySetValue(v17, @"DARequestArgument2", a5);
    }

    if (a6)
    {
      CFDictionarySetValue(v17, @"DARequestArgument3", a6);
    }

    sub_100002354(v17, @"DARequestUserGID", a8);
    sub_100002354(v17, @"DARequestUserUID", a7);
    if (a9)
    {
      CFDictionarySetValue(v17, @"DARequestCallback", a9);
    }
  }

  return v17;
}

uint64_t sub_10000E614(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = CFDictionaryGetValue(result, @"DARequestDisk");
    if (result)
    {
      v2 = result;
      if (sub_1000029AC(result, 1))
      {
        return 0;
      }

      else
      {
        result = sub_1000029AC(v2, 0x80000);
        if (result)
        {
          v3 = sub_100002408(v1, @"DARequestKind");
          result = 0;
          if (v3 > 10)
          {
            if (v3 > 12)
            {
              if (v3 == 13)
              {

                return sub_10000F4C0(v1);
              }

              else if (v3 == 17)
              {

                return sub_10000F3E4(v1);
              }
            }

            else if (v3 == 11)
            {
              sub_10000F17C(v1);
              return 1;
            }

            else
            {

              return sub_10000F278(v1);
            }
          }

          else if (v3 > 6)
          {
            if (v3 == 7)
            {

              return sub_10000EC14(v1);
            }

            else if (v3 == 10)
            {

              return sub_10000F00C(v1);
            }
          }

          else if (v3 == 1)
          {

            return sub_10000E7F8(v1);
          }

          else if (v3 == 5)
          {

            return sub_10000EA50(v1);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000E7F8(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if ((sub_100002408(a1, @"DARequestState") & 0x100000) != 0)
  {
    if (CFDictionaryGetValue(a1, @"DARequestDissenter"))
    {
      v5 = CFDictionaryGetValue(a1, @"DARequestDissenter");
      sub_10000F88C(a1, v5);
      sub_100013B38(v6);
      return 1;
    }

    else
    {
      CFRetain(a1);
      sub_100007688(Value, 1, 1);
      sub_100007334(Value, 0);
      v8 = CFDictionaryGetValue(a1, @"DARequestCallback");
      if (v8)
      {
        v9 = sub_1000029A0(v8);
        if (v9)
        {
          v10 = v9;
          v11 = CFDictionaryGetValue(a1, @"DARequestArgument2");
          v12 = sub_100009698(v11);
          v13 = CFDictionaryGetValue(a1, @"DARequestArgument3");
          v14 = sub_100009698(v13);
          v15 = sub_10000224C(kCFAllocatorDefault, v10, v12, v14, 2u, 0, 0, 0);
          if (v15)
          {
            v16 = v15;
            sub_100007334(Value, v15);
            CFRelease(v16);
          }
        }
      }

      v17 = CFDictionaryGetValue(a1, @"DARequestDisk");
      sub_100009EE0("claimed disk, id = %@, success.", v17);
      sub_10000F88C(a1, 0);
      v7 = 1;
      v18 = sub_100007688(v17, 1, 0);
      sub_100013B38(v18);
      CFRelease(a1);
    }
  }

  else
  {
    v3 = sub_100002E30(Value);
    CFRetain(a1);
    sub_100007688(Value, 1, 1);
    v4 = sub_100002408(a1, @"DARequestState");
    sub_100002354(a1, @"DARequestState", v4 | 0x100000);
    if (v3)
    {
      if (sub_1000029BC(v3))
      {
        sub_10000D9DC(Value, v3, sub_10000FB18, a1);
      }

      else
      {
        v19 = sub_100007980(kCFAllocatorDefault, -119930872);
        sub_10000FB18(v19, a1);
        CFRelease(v19);
      }
    }

    else
    {
      sub_10000FB18(0, a1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_10000EA50(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if ((sub_100002408(a1, @"DARequestState") & 0x100000) != 0)
  {
    if (!CFDictionaryGetValue(a1, @"DARequestDissenter"))
    {
      if (!sub_100017C90(Value, 1))
      {
        CFRetain(a1);
        v7 = 1;
        sub_100007688(Value, 1, 1);
        sub_100017E44(Value, 1, 1);
        sub_100009EE0("ejected disk, id = %@, ongoing.", Value);
        sub_1000183CC(sub_10000FBD8, Value, sub_10000FC88, a1);
        return v7;
      }

      return 0;
    }

    v6 = CFDictionaryGetValue(a1, @"DARequestDissenter");
    sub_10000F88C(a1, v6);
  }

  else
  {
    v3 = sub_100007058(Value, @"DAMediaWhole");
    if (sub_100007058(Value, @"DAMediaWhole") != kCFBooleanFalse && v3 != 0)
    {
      CFRetain(a1);
      sub_100007688(Value, 1, 1);
      v8 = sub_100002408(a1, @"DARequestState");
      sub_100002354(a1, @"DARequestState", v8 | 0x100000);
      sub_10000DC2C(Value, sub_10000FB78, a1);
      return 0;
    }

    sub_10000F810(a1, -119930868);
  }

  sub_100013B38(v5);
  return 1;
}

BOOL sub_10000EC14(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if (CFDictionaryGetValue(a1, @"DARequestLink") && sub_100017C34(Value, 1))
  {
    return 0;
  }

  if ((sub_100002408(a1, @"DARequestState") & 0x10000) == 0)
  {
    v4 = sub_100007058(Value, @"DAMediaPath");
    v5 = CFDictionaryGetValue(a1, @"DARequestArgument3");
    if (sub_100007058(Value, @"DAVolumePath"))
    {
      v6 = -119930878;
      if (!v5)
      {
        goto LABEL_42;
      }

      if (!sub_10000B684(v5, @"update"))
      {
        v7 = sub_10000B684(v5, @"-s=");
        if (v7)
        {
          v6 = -119930868;
        }

        else
        {
          v6 = -119930878;
        }

        if (!v7 || !v4)
        {
          goto LABEL_42;
        }

LABEL_27:
        v10 = sub_100002408(a1, @"DARequestState");
        sub_100002354(a1, @"DARequestState", v10 & 0xFFFEFFFF | 0x10000);
        v11 = CFDictionaryGetValue(a1, @"DARequestArgument3");
        if ((!v11 || !CFEqual(v11, @"automatic")) && !sub_100007058(Value, @"DAVolumePath"))
        {
          v20 = sub_100007688(Value, 0x10000, 0);
          sub_100013B38(v20);
          return 0;
        }

LABEL_30:
        if ((sub_100002408(a1, @"DARequestState") & 0x100000) != 0)
        {
          if ((sub_100002408(a1, @"DARequestState") & 0x200000) == 0)
          {
            v13 = sub_100002408(a1, @"DARequestState");
            sub_100002354(a1, @"DARequestState", v13 | 0x200000);
          }

          if (CFDictionaryGetValue(a1, @"DARequestDissenter"))
          {
            v14 = CFDictionaryGetValue(a1, @"DARequestDissenter");
            sub_10000F88C(a1, v14);
LABEL_44:
            sub_100013B38(v15);
            return 1;
          }

          if (!sub_100017C90(Value, 1))
          {
            v18 = CFDictionaryGetValue(a1, @"DARequestArgument2");
            if (v18)
            {
              v19 = CFURLCreateWithString(kCFAllocatorDefault, v18, 0);
            }

            else
            {
              v19 = 0;
            }

            CFRetain(a1);
            sub_100007688(Value, 1, 1);
            sub_100017E44(Value, 1, 1);
            if ((sub_100002408(a1, @"DARequestState") & 0x8000000) != 0)
            {
              v30 = CFDictionaryGetValue(a1, @"DARequestArgument3");
              sub_10000ABBC(Value, v19, sub_100010100, a1, v25, v26, v27, v28, @"rdonly", v30);
            }

            else
            {
              cf1 = CFDictionaryGetValue(a1, @"DARequestArgument3");
              sub_10000ABBC(Value, v19, sub_100010100, a1, v21, v22, v23, v24, cf1, 0);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            return 1;
          }
        }

        else
        {
          if (sub_100007058(Value, @"DAVolumeMountable") == kCFBooleanFalse)
          {
            v16 = a1;
            v17 = -119930868;
LABEL_43:
            sub_10000F810(v16, v17);
            goto LABEL_44;
          }

          CFRetain(a1);
          sub_100007688(Value, 1, 1);
          v12 = sub_100002408(a1, @"DARequestState");
          sub_100002354(a1, @"DARequestState", v12 & 0xFFEFFFFF | 0x100000);
          sub_10000DCA8(Value, sub_1000100A0, a1);
        }

        return 0;
      }
    }

    else if (v5)
    {
      v8 = sub_10000B684(v5, @"-s=");
      if (v8 == 1)
      {
        v6 = 22;
      }

      else
      {
        v6 = -119930868;
      }

      if (v8 == 1 || v4 == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_27;
    }

    if (v4)
    {
      goto LABEL_27;
    }

    v6 = -119930868;
LABEL_42:
    v16 = a1;
    v17 = v6;
    goto LABEL_43;
  }

  result = sub_1000029AC(Value, 0x10000);
  if (result)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_10000F00C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if ((sub_100002408(a1, @"DARequestState") & 0x10000) != 0)
  {
    if (!sub_1000029AC(Value, 0x10000))
    {
      return 0;
    }
  }

  else if (!sub_100007058(Value, @"DAVolumePath"))
  {
    v3 = sub_100002408(a1, @"DARequestState");
    sub_100002354(a1, @"DARequestState", v3 | 0x10000);
    v4 = sub_100007688(Value, 0x10000, 0);
    sub_100013B38(v4);
    return 0;
  }

  if (sub_100017C90(Value, 1))
  {
    return 0;
  }

  if (sub_100007058(Value, @"DAVolumePath"))
  {
    sub_10000F810(a1, -119930878);
    sub_100013B38(v7);
    return 1;
  }

  else
  {
    CFRetain(a1);
    v5 = 1;
    sub_100007688(Value, 1, 1);
    sub_100017E44(Value, 1, 1);
    v8 = CFDictionaryGetValue(a1, @"DARequestDisk");
    sub_10000F88C(a1, 0);
    sub_100017E44(v8, 1, 0);
    v9 = sub_100007688(v8, 1, 0);
    sub_100013B38(v9);
    CFRelease(a1);
  }

  return v5;
}

void sub_10000F17C(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if (sub_100007058(Value, @"DAVolumeMountable") == kCFBooleanFalse)
  {
    sub_10000F810(a1, -119930868);

    sub_100013B38(v7);
  }

  else
  {
    CFRetain(a1);
    sub_100007688(Value, 1, 1);
    v3 = sub_10000C694(Value);
    v4 = CFDictionaryGetValue(a1, @"DARequestDisk");
    if (v3)
    {
      v5 = 49197;
    }

    else
    {
      v5 = 0;
    }

    sub_10000F810(a1, v5);
    v6 = sub_100007688(v4, 1, 0);
    sub_100013B38(v6);

    CFRelease(a1);
  }
}

uint64_t sub_10000F278(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if (sub_100017C90(Value, 1))
  {
    return 0;
  }

  if (sub_100007058(Value, @"DAVolumeMountable") == kCFBooleanFalse)
  {
    v4 = -119930868;
  }

  else
  {
    v4 = 0;
  }

  if (!sub_100007058(Value, @"DAVolumePath"))
  {
    v4 = -119930873;
  }

  if (CFDictionaryGetValue(a1, @"DARequestArgument2"))
  {
    v5 = v4;
  }

  else
  {
    v5 = -119930868;
  }

  if (v5)
  {
    sub_10000F810(a1, v5);
    sub_100013B38(v6);
    return 1;
  }

  else
  {
    CFRetain(a1);
    v3 = 1;
    sub_100007688(Value, 1, 1);
    sub_100017E44(Value, 1, 1);
    sub_100009EE0("renamed disk, id = %@, ongoing.", Value);
    v7 = sub_1000070AC(Value);
    v8 = sub_100007058(Value, @"DAVolumePath");
    v9 = CFDictionaryGetValue(a1, @"DARequestArgument2");
    sub_100008914(v7, v8, v9, sub_100010278, a1);
  }

  return v3;
}

uint64_t sub_10000F3E4(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"DARequestDisk");
  if (result)
  {
    v3 = result;
    context = 0;
    Value = CFDictionaryGetValue(a1, @"DARequestArgument2");
    v5 = Value;
    if (!Value)
    {
      goto LABEL_5;
    }

    v6 = -119930877;
    v7 = CFGetTypeID(Value);
    if (v7 != CFDictionaryGetTypeID())
    {
      v6 = -119930868;
      goto LABEL_7;
    }

    context = 0;
    CFDictionaryApplyFunction(v5, sub_100010528, &context);
    if (!context)
    {
LABEL_5:
      sub_100007488(v3, v5);
      v6 = 0;
    }

LABEL_7:
    sub_10000F810(a1, v6);
    sub_100013B38(v8);
    return 1;
  }

  return result;
}

uint64_t sub_10000F4C0(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  if (CFDictionaryGetValue(a1, @"DARequestLink") && sub_100017C34(Value, 1))
  {
    return 0;
  }

  if ((sub_100002408(a1, @"DARequestState") & 0x100000) != 0)
  {
LABEL_14:
    if (CFDictionaryGetValue(a1, @"DARequestDissenter"))
    {
      v12 = CFDictionaryGetValue(a1, @"DARequestDissenter");
      v3 = 1;
      sub_100010734(a1, 16, 1, 0);
      sub_10000F88C(a1, v12);
      sub_100013B38(v13);
      return v3;
    }

    if (!sub_100017C90(Value, 1))
    {
      sub_100002408(a1, @"DARequestArgument1");
      CFRetain(a1);
      v3 = 1;
      sub_100007688(Value, 1, 1);
      sub_100017E44(Value, 1, 1);
      sub_100009EE0("unmounted disk, id = %@, ongoing.", Value);
      v15 = malloc_type_malloc(0x18uLL, 0x1020040545B2139uLL);
      v15[16] = 0;
      *v15 = a1;
      *(v15 + 1) = 0;
      sub_1000183CC(sub_100010820, v15, sub_1000109BC, v15);
      return v3;
    }

    return 0;
  }

  v4 = -119930878;
  v5 = sub_100007058(Value, @"DAVolumeMountable");
  if (!sub_100007058(Value, @"DAVolumePath"))
  {
    v4 = -119930873;
    goto LABEL_10;
  }

  v6 = sub_100007058(Value, @"DAVolumePath");
  v7 = CFURLGetString(v6);
  if (CFEqual(v7, @"file:///") || (v8 = CFURLGetString(v6), CFEqual(v8, @"file:///System/Volumes/Data/")))
  {
    v9 = sub_100007980(kCFAllocatorDefault, -119930878);
    sub_10000FA6C(a1, v9);
    CFRelease(v9);
LABEL_10:
    sub_10000F810(a1, v4);
    sub_100013B38(v10);
    return 1;
  }

  if (v5 == kCFBooleanFalse)
  {
    v4 = -119930868;
    goto LABEL_10;
  }

  if (sub_1000029AC(Value, 0x10000000))
  {
    v11 = sub_100002408(a1, @"DARequestState");
    sub_100002354(a1, @"DARequestState", v11 & 0xFFEFFFFF | 0x100000);
    goto LABEL_14;
  }

  CFRetain(a1);
  sub_100007688(Value, 1, 1);
  v16 = sub_100002408(a1, @"DARequestState");
  sub_100002354(a1, @"DARequestState", v16 & 0xFFEFFFFF | 0x100000);
  if (sub_100007058(Value, @"DAMediaWritable") == kCFBooleanTrue)
  {
    sub_1000183CC(sub_100010594, Value, sub_10001062C, a1);
  }

  else
  {
    sub_10000DD48(Value, sub_100010680, a1);
  }

  return 0;
}

void sub_10000F810(const __CFDictionary *a1, int a2)
{
  if (a2)
  {
    v3 = sub_100007980(kCFAllocatorDefault, a2);
    sub_10000F88C(a1, v3);

    CFRelease(v3);
  }

  else
  {

    sub_10000F88C(a1, 0);
  }
}

void sub_10000F88C(const __CFDictionary *a1, void *a2)
{
  Value = CFDictionaryGetValue(a1, @"DARequestCallback");
  if (!Value)
  {
    return;
  }

  v5 = Value;
  v6 = CFDictionaryGetValue(a1, @"DARequestLink");
  if (v6)
  {
    v7 = v6;
    v8 = CFDictionaryGetValue(a1, @"DARequestDissenter");
    if (!v8)
    {
      Count = CFArrayGetCount(v7);
      if (Count < 1)
      {
LABEL_10:
        a2 = 0;
        goto LABEL_11;
      }

      v10 = Count;
      v11 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v11);
        v8 = CFDictionaryGetValue(ValueAtIndex, @"DARequestDissenter");
        if (v8)
        {
          break;
        }

        if (v10 == ++v11)
        {
          goto LABEL_10;
        }
      }
    }

    a2 = v8;
  }

LABEL_11:
  v13 = CFDictionaryGetValue(a1, @"DARequestDisk");

  sub_100002440(v5, v13, a2);
}

void sub_10000FA54(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DARequestCallback", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DARequestCallback");
  }
}

void sub_10000FA6C(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DARequestDissenter", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DARequestDissenter");
  }
}

void sub_10000FA84(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DARequestLink", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DARequestLink");
  }
}

void sub_10000FA9C(const __CFDictionary *a1, int a2, int a3)
{
  v6 = sub_100002408(a1, @"DARequestState");
  if (a3)
  {
    v7 = v6 | a2;
  }

  else
  {
    v7 = v6 & ~a2;
  }

  sub_100002354(a1, @"DARequestState", v7);
}

void sub_10000FB00(__CFDictionary *a1, void *value)
{
  if (value)
  {
    CFDictionarySetValue(a1, @"DARequestArgument2", value);
  }

  else
  {
    CFDictionaryRemoveValue(a1, @"DARequestArgument2");
  }
}

void sub_10000FB18(void *value, __CFDictionary *a2)
{
  sub_10000FA6C(a2, value);
  v3 = CFDictionaryGetValue(a2, @"DARequestDisk");
  v4 = sub_100007688(v3, 1, 0);
  sub_100013B38(v4);

  CFRelease(a2);
}

void sub_10000FB78(void *value, __CFDictionary *a2)
{
  sub_10000FA6C(a2, value);
  v3 = CFDictionaryGetValue(a2, @"DARequestDisk");
  v4 = sub_100007688(v3, 1, 0);
  sub_100013B38(v4);

  CFRelease(a2);
}

uint64_t sub_10000FBD8(uint64_t a1)
{
  v2 = sub_10000703C(a1, 1);
  v3 = open(v2, 0);
  if (v3 == -1)
  {
    v6 = __error();
    sub_100009EE0("open failed with %d for %@", *v6, a1);
    return *__error();
  }

  else
  {
    v4 = v3;
    v5 = ioctl(v3, 0x20006415uLL, 0);
    if (v5 == -1)
    {
      if (*__error() == 25)
      {
        v5 = 0;
      }

      else
      {
        v5 = *__error();
      }
    }

    close(v4);
  }

  return v5;
}

void sub_10000FC88(uint64_t a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"DARequestDisk");
  v5 = sub_1000070AC(Value);
  if (v5)
  {
    v6 = v5;
    v7 = sub_100007058(Value, @"DAVolumeUUID");
    sub_100017F50(v6, v7);
  }

  if (!a1)
  {
    sub_100009EE0("ejected disk, id = %@, success.", Value);
    v12 = 0;
    v13 = Value;
    v11 = -1;
    goto LABEL_7;
  }

  v8 = CFDictionaryGetValue(theDict, @"DARequestDissenter");
  if (v8)
  {
    v9 = v8;
    v10 = sub_1000079F8(v8);
    v11 = sub_1000079D8(v9);
    v12 = v10 & 0x3FFF;
    v13 = Value;
LABEL_7:
    sub_1000055C0(v12, v13, v11);
    if (a1)
    {
      v14 = a1 | 0xC000;
    }

    else
    {
      v14 = 0;
    }

    sub_10000F810(theDict, v14);
    sub_100017E44(Value, 1, 0);
    v15 = sub_100007688(Value, 1, 0);
    sub_100013B38(v15);

    CFRelease(theDict);
    return;
  }

  sub_100009EE0("ejected disk, id = %@, failure.", Value);
  sub_100009EE0("unable to eject %@ (status code 0x%08X).", Value, a1);
  v16 = sub_100007980(kCFAllocatorDefault, a1 | 0xC000);
  sub_10000FA6C(theDict, v16);
  CFRelease(v16);

  sub_1000183CC(sub_10000FE48, theDict, sub_10000FC88, theDict);
}

uint64_t sub_10000FE48(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"DARequestDisk");
  v3 = sub_10000703C(Value, 1);
  v4 = strdup(v3);
  if (v4)
  {
    v5 = v4;
    buffer = 0;
    proc_listpidspath(1u, 0, v4, 2u, &buffer, 4);
    free(v5);
    if (buffer)
    {
      v6 = CFDictionaryGetValue(a1, @"DARequestDissenter");
      sub_100007A18(v6, buffer);
      return 0xFFFFFFFFLL;
    }

    v8 = sub_100007050(Value);
    if (v8)
    {
      iterator = 0;
      IORegistryEntryCreateIterator(v8, "IOService", 1u, &iterator);
      if (iterator)
      {
        v9 = IOIteratorNext(iterator);
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = v9;
        while (1)
        {
          if (IOObjectConformsTo(v10, "IOMedia"))
          {
            v11 = CFGetAllocator(Value);
            CFProperty = IORegistryEntryCreateCFProperty(v10, @"BSD Name", v11, 0);
            if (CFProperty)
            {
              v13 = CFProperty;
              memset(v19, 0, sizeof(v19));
              CFStringGetCString(CFProperty, v19, 128, 0x8000100u);
              __strlcpy_chk();
              __strlcat_chk();
              __strlcat_chk();
              v15 = 0;
              proc_listpidspath(1u, 0, path, 0, &v15, 4);
              if (v15)
              {
                v14 = CFDictionaryGetValue(a1, @"DARequestDissenter");
                sub_100007A18(v14, v15);
                CFRelease(v13);
                IOObjectRelease(v10);
LABEL_16:
                IOObjectRelease(iterator);
                return 0xFFFFFFFFLL;
              }

              CFRelease(v13);
            }
          }

          IOObjectRelease(v10);
          v10 = IOIteratorNext(iterator);
          if (!v10)
          {
            goto LABEL_16;
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}