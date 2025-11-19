void sub_100016478(id a1)
{
  qword_1000EB268 = os_log_create(off_1000EA598, "legacy");

  _objc_release_x1();
}

void sub_1000164C0(id a1)
{
  qword_1000EB278 = os_log_create(off_1000EA598, "user");

  _objc_release_x1();
}

void sub_100016508(id a1)
{
  qword_1000EB288 = os_log_create(off_1000EA598, "persona");

  _objc_release_x1();
}

BOOL sub_1000165C4(id a1, unsigned int *a2)
{
  if (!a2)
  {
    _os_assumes_log();
  }

  *a2 = 0;
  v3 = mach_host_self();
  multiuser_config_flags = host_get_multiuser_config_flags(v3, a2);
  if (multiuser_config_flags)
  {
    if (qword_1000EB2A0 != -1)
    {
      sub_100088DC8();
    }

    v5 = qword_1000EB298;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
        v8 = _os_log_send_and_compose_impl();
        v9 = v8;
        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }
  }

  return multiuser_config_flags == 0;
}

BOOL sub_10001671C(id a1, unsigned int a2)
{
  v3 = mach_host_self();
  v4 = host_set_multiuser_config_flags(v3, a2);
  if (v4)
  {
    if (qword_1000EB2A0 != -1)
    {
      sub_100088DC8();
    }

    v5 = qword_1000EB298;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = v6;
      }

      else
      {
        v7 = v6 & 0xFFFFFFFE;
      }

      if (v7)
      {
LABEL_17:
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }

        goto LABEL_20;
      }

LABEL_19:
      v11 = 0;
LABEL_20:
      free(v11);
    }
  }

  else
  {
    if (qword_1000EB2A0 != -1)
    {
      sub_100088DC8();
    }

    v5 = qword_1000EB298;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = sub_1000011A8(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v4 == 0;
}

void sub_10001690C(id a1)
{
  qword_1000EB298 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id sub_100016954(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = [[NSUUID alloc] initWithUUIDString:v2];

  return v3;
}

id sub_1000169B4(uint64_t a1, const __CFUUID *a2)
{
  objc_opt_self();
  if (a2)
  {
    v3 = CFUUIDCreateString(kCFAllocatorDefault, a2);
    if (!v3)
    {
      sub_100088DDC();
    }

    v4 = v3;
    v5 = sub_100016954(NSUUID, v3);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFUUIDRef sub_100016A38(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 UUIDString];
  v2 = CFUUIDCreateFromString(kCFAllocatorDefault, v1);

  if (!v2)
  {
    sub_100088DDC();
  }

  return v2;
}

void sub_1000177C8(id a1)
{
  qword_1000EB2A8 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

id sub_100017D70(uint64_t a1)
{

  return [v2 setObject:v1 forKeyedSubscript:a1];
}

void sub_100017DD4(id a1)
{
  qword_1000EB2B8 = os_log_create(off_1000EA598, "sideeffect");

  _objc_release_x1();
}

uint64_t sub_100017E1C(uint64_t a1)
{
  *(v1 - 4) = 0;
  result = *(a1 + 8);
  v3 = *(result + 16);
  return result;
}

void sub_100017E78(id a1)
{
  qword_1000EB2C8 = objc_alloc_init(UMDProviderSideEffects);

  _objc_release_x1();
}

uint64_t sub_100018028(char *a1, ...)
{
  va_start(va, a1);
  message[0] = 0;
  va_copy(&message[1], va);
  vasprintf(message, a1, va);
  if (!message[0])
  {
    message[0] = a1;
  }

  reboot_np(3072, message[0]);
  v2 = abort_with_reason();
  return sub_100018084(v2);
}

CFTypeRef sub_1000180D4(const __CFString *a1)
{
  result = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    if (CFArrayGetCount(qword_1000EB5A0) >= 1)
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v3);
        if (!ValueAtIndex)
        {
          break;
        }

        v5 = ValueAtIndex;
        v6 = CFGetTypeID(ValueAtIndex);
        if (v6 != CFDictionaryGetTypeID())
        {
          break;
        }

        Value = CFDictionaryGetValue(v5, kUMUserSessionVolumeUUIDKey);
        if (!Value || (v8 = Value, v9 = CFGetTypeID(Value), v9 != CFStringGetTypeID()))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v10 = qword_1000EB308;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v13 = sub_1000011A8(1);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v13;
            }

            else
            {
              v14 = v13 & 0xFFFFFFFE;
            }

            if (v14)
            {
              goto LABEL_25;
            }

LABEL_27:
            v16 = 0;
            goto LABEL_28;
          }

          goto LABEL_29;
        }

        if (CFStringCompare(v8, a1, 0) == kCFCompareEqualTo)
        {
          return CFRetain(v5);
        }

LABEL_30:
        if (CFArrayGetCount(qword_1000EB5A0) <= ++v3)
        {
          return 0;
        }
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v10 = qword_1000EB308;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (!v12)
        {
          goto LABEL_27;
        }

LABEL_25:
        v15 = _os_log_send_and_compose_impl();
        v16 = v15;
        if (v15)
        {
          sub_100002A8C(v15);
        }

LABEL_28:
        free(v16);
      }

LABEL_29:

      goto LABEL_30;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100018360()
{
  if (!qword_1000EB5A0)
  {
    return 0;
  }

  v0 = sub_10008A58C(qword_1000EB2E0);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
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

  sub_10008A2F4(qword_1000EB2E0, v0);
  return objc_claimAutoreleasedReturnValue();
}

CFTypeRef sub_1000184B8()
{
  if (!qword_1000EB5A0)
  {
    return 0;
  }

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

  if (CFArrayGetCount(qword_1000EB5A0) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v5);
    if (!ValueAtIndex || (v7 = ValueAtIndex, v8 = CFGetTypeID(ValueAtIndex), v8 != CFDictionaryGetTypeID()))
    {
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

        if (v11)
        {
          v12 = _os_log_send_and_compose_impl();
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      goto LABEL_31;
    }

    if (sub_100002454(v7, kUMUserSessionisPrimaryKey))
    {
      break;
    }

LABEL_31:
    if (CFArrayGetCount(qword_1000EB5A0) <= ++v5)
    {
      return 0;
    }
  }

  v14 = CFRetain(v7);
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  return v14;
}

CFTypeRef sub_100018808(const __CFString *a1)
{
  if (!qword_1000EB5A0 || CFArrayGetCount(qword_1000EB5A0) < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v2);
    if (ValueAtIndex)
    {
      v4 = ValueAtIndex;
      v5 = CFGetTypeID(ValueAtIndex);
      if (v5 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v4, kUMUserSessionNameKey);
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

    if (CFArrayGetCount(qword_1000EB5A0) <= ++v2)
    {
      return 0;
    }
  }

  return CFRetain(v4);
}

uint64_t sub_10001890C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000189D8;
  v2[3] = &unk_1000DD458;
  v2[4] = v3;
  v2[5] = &v4;
  dispatch_sync(qword_1000EB610, v2);
  v0 = v5[3];
  _Block_object_dispose(v3, 8);
  _Block_object_dispose(&v4, 8);
  return v0;
}

void sub_1000189D8(uint64_t a1)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  valuePtr = 0;
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

  if (qword_1000EB5A0 && (Count = CFArrayGetCount(qword_1000EB5A0), Count >= 1))
  {
    v8 = sub_1000799A8();
    v9 = 0;
    v10 = Count & 0x7FFFFFFF;
    do
    {
      *(*(*(a1 + 32) + 8) + 24) = CFArrayGetValueAtIndex(qword_1000EB5A0, v9);
      valuePtr = -1;
      v11 = *(*(*(a1 + 32) + 8) + 24);
      if (v11)
      {
        v12 = CFGetTypeID(v11);
        if (v12 == CFDictionaryGetTypeID())
        {
          valuePtr = sub_1000023E8(*(*(*(a1 + 32) + 8) + 24), kUMUserSessionIDKey);
        }
      }

      v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      CFArrayAppendValue(v8, v13);
      if (v13)
      {
        CFRelease(v13);
      }

      ++v9;
    }

    while (v10 != v9);
    *(*(*(a1 + 40) + 8) + 24) = v8;
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v14 = qword_1000EB308;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_1000011A8(1);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
      }

      else
      {
        v16 = v15 & 0xFFFFFFFE;
      }

      if (v16)
      {
        v17 = _os_log_send_and_compose_impl();
        v18 = v17;
        if (v17)
        {
          sub_100002A8C(v17);
        }
      }

      else
      {
        v18 = 0;
      }

      free(v18);
    }
  }
}

uint64_t sub_100018C80()
{
  result = qword_1000EB5A0;
  if (qword_1000EB5A0)
  {
    Count = 0;
    valuePtr = CFArrayGetCount(qword_1000EB5A0);
    if (valuePtr)
    {
      v1 = sub_10007990C();
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
          LOWORD(v84) = 0;
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

      v12 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v1, @"NUMENT", v12);
      CFRelease(v12);
      v13 = sub_100079684(qword_1000EB5A0);
      if (v13)
      {
        v14 = v13;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v15 = qword_1000EB308;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = sub_1000011A8(1);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v17 = v16;
          }

          else
          {
            v17 = v16 & 0xFFFFFFFE;
          }

          if (v17)
          {
            LOWORD(v84) = 0;
            v18 = _os_log_send_and_compose_impl();
            v19 = v18;
            if (v18)
            {
              sub_100002A8C(v18);
            }
          }

          else
          {
            v19 = 0;
          }

          free(v19);
        }

        CFDictionaryAddValue(v1, @"BLOB", v14);
        CFRelease(v14);
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v20 = qword_1000EB308;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = sub_1000011A8(1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v21;
          }

          else
          {
            v22 = v21 & 0xFFFFFFFE;
          }

          if (v22)
          {
            LOWORD(v84) = 0;
            v23 = _os_log_send_and_compose_impl();
            v24 = v23;
            if (v23)
            {
              sub_100002A8C(v23);
            }
          }

          else
          {
            v24 = 0;
          }

          free(v24);
        }

        CFDictionaryAddValue(v1, @"BLOB", 0);
      }

      v30 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5B0);
      CFDictionaryAddValue(v1, @"DEVICECONFIG", v30);
      CFRelease(v30);
      v31 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EA3D0);
      CFDictionaryAddValue(v1, @"BOOTEDUSER", v31);
      CFRelease(v31);
      if (dword_1000EA3D4 != -1 || qword_1000EB5D8)
      {
        v32 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EA3E0);
        CFDictionaryAddValue(v1, @"APNSID", v32);
        CFRelease(v32);
        if (qword_1000EB2F8)
        {
          CFDictionaryAddValue(v1, @"VOLUMETYPE", qword_1000EB2F8);
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v33 = qword_1000EB308;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
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
              LOWORD(v84) = 0;
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

        v38 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EA3D4);
        CFDictionaryAddValue(v1, @"MAXUSER", v38);
        CFRelease(v38);
        v39 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EB5D8);
        CFDictionaryAddValue(v1, @"MAXUSERSIZE", v39);
        CFRelease(v39);
      }

      if (dword_1000EB5B0 != 1)
      {
LABEL_104:
        if (qword_1000EB5C8 && (HIDWORD(valuePtr) = CFArrayGetCount(qword_1000EB5C8), SHIDWORD(valuePtr) >= 1))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v52 = qword_1000EB308;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = sub_1000011A8(1);
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v54 = v53;
            }

            else
            {
              v54 = v53 & 0xFFFFFFFE;
            }

            if (v54)
            {
              v84 = 67109120;
              v85 = HIDWORD(valuePtr);
              v55 = _os_log_send_and_compose_impl();
              v56 = v55;
              if (v55)
              {
                sub_100002A8C(v55);
              }
            }

            else
            {
              v56 = 0;
            }

            free(v56);
          }

          v60 = CFNumberCreate(0, kCFNumberIntType, &valuePtr + 4);
          CFDictionaryAddValue(v1, @"LRUENT", v60);
          CFRelease(v60);
          v61 = sub_100079684(qword_1000EB5C8);
          CFDictionaryAddValue(v1, @"LRUBLOB", v61);
          CFRelease(v61);
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v57 = qword_1000EB308;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v62 = sub_1000011A8(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v63 = v62;
            }

            else
            {
              v63 = v62 & 0xFFFFFFFE;
            }

            if (v63)
            {
              v84 = 67109120;
              v85 = HIDWORD(valuePtr);
LABEL_133:
              v64 = _os_log_send_and_compose_impl();
              v65 = v64;
              if (v64)
              {
                sub_100002A8C(v64);
              }

              goto LABEL_136;
            }

            goto LABEL_135;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v57 = qword_1000EB308;
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = sub_1000011A8(1);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v59 = v58;
            }

            else
            {
              v59 = v58 & 0xFFFFFFFE;
            }

            if (v59)
            {
              LOWORD(v84) = 0;
              goto LABEL_133;
            }

LABEL_135:
            v65 = 0;
LABEL_136:
            free(v65);
          }
        }

        v66 = sub_100079684(v1);
        if (!v66)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v73 = qword_1000EB308;
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
          {
            v74 = sub_1000011A8(1);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
            {
              v75 = v74;
            }

            else
            {
              v75 = v74 & 0xFFFFFFFE;
            }

            if (v75)
            {
              LOWORD(v84) = 0;
              v76 = _os_log_send_and_compose_impl();
              v77 = v76;
              if (v76)
              {
                sub_100002A8C(v76);
              }
            }

            else
            {
              v77 = 0;
            }

            free(v77);
          }

          goto LABEL_172;
        }

        v67 = v66;
        v68 = sub_1000013A0(qword_1000EB608);
        v69 = [v68 atomicallyWriteData:v67 toPath:@"/private/var//keybags/usersession.kb" error:0];

        if (v69)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v70 = qword_1000EB308;
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_168;
          }

          v71 = sub_1000011A8(1);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v72 = v71;
          }

          else
          {
            v72 = v71 & 0xFFFFFFFE;
          }

          if (v72)
          {
            LOWORD(v84) = 0;
            goto LABEL_164;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v70 = qword_1000EB308;
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_168;
          }

          v78 = sub_1000011A8(1);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v79 = v78;
          }

          else
          {
            v79 = v78 & 0xFFFFFFFE;
          }

          if (v79)
          {
            LOWORD(v84) = 0;
LABEL_164:
            v80 = _os_log_send_and_compose_impl();
            v81 = v80;
            if (v80)
            {
              sub_100002A8C(v80);
            }

            goto LABEL_167;
          }
        }

        v81 = 0;
LABEL_167:
        free(v81);
LABEL_168:

        CFRelease(v67);
LABEL_172:
        CFRelease(v1);
        return 1;
      }

      v40 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5B8);
      CFDictionaryAddValue(v1, @"USESSTYPE", v40);
      CFRelease(v40);
      v41 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5BC);
      CFDictionaryAddValue(v1, @"LOGINCHECKIN", v41);
      CFRelease(v41);
      if (dword_1000EB5E0 >= 1)
      {
        v42 = CFNumberCreate(0, kCFNumberIntType, &dword_1000EB5E0);
        CFDictionaryAddValue(v1, @"DEVICENETWORKBG", v42);
        CFRelease(v42);
      }

      if (qword_1000EB5C0 && (Count = CFArrayGetCount(qword_1000EB5C0), Count >= 1))
      {
        v43 = CFNumberCreate(0, kCFNumberIntType, &Count);
        CFDictionaryAddValue(v1, @"SYNCENT", v43);
        CFRelease(v43);
        v44 = sub_100079684(qword_1000EB5C0);
        CFDictionaryAddValue(v1, @"SYNCBLOB", v44);
        CFRelease(v44);
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v45 = qword_1000EB308;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }

        v46 = sub_1000011A8(1);
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
          v84 = 67109120;
          v85 = Count;
          goto LABEL_99;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v45 = qword_1000EB308;
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_103;
        }

        v48 = sub_1000011A8(1);
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
          LOWORD(v84) = 0;
LABEL_99:
          v50 = _os_log_send_and_compose_impl();
          v51 = v50;
          if (v50)
          {
            sub_100002A8C(v50);
          }

          goto LABEL_102;
        }
      }

      v51 = 0;
LABEL_102:
      free(v51);
LABEL_103:

      goto LABEL_104;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v7 = qword_1000EB308;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1000011A8(1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LOWORD(v84) = 0;
        v10 = _os_log_send_and_compose_impl();
        v11 = v10;
        if (v10)
        {
          sub_100002A8C(v10);
        }
      }

      else
      {
        v11 = 0;
      }

      free(v11);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v25 = qword_1000EB308;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v84) = 0;
        v28 = _os_log_send_and_compose_impl();
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    return 0;
  }

  return result;
}

void sub_100019A54()
{
  v0 = sub_1000561D0(UMDAPFSSupportVolumeHelper, qword_1000EB608, byte_1000EB602);
  v1 = qword_1000EB2D8;
  qword_1000EB2D8 = v0;

  v2 = sub_100053060(UMDUserManager, qword_1000EB2D8);
  v3 = qword_1000EB2E0;
  qword_1000EB2E0 = v2;

  if (MGGetBoolAnswer())
  {
    LOBYTE(v47) = 1;
    LODWORD(v50) = 0;
    if (sub_1000725AC(&v50, &v47))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v4 = qword_1000EB308;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        v5 = sub_1000011A8(1);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v5;
        }

        else
        {
          v6 = v5 & 0xFFFFFFFE;
        }

        if (v6)
        {
          LOWORD(v48[0]) = 0;
          v7 = _os_log_send_and_compose_impl();
          v8 = v7;
          if (v7)
          {
            sub_100002A8C(v7);
          }
        }

        else
        {
          v8 = 0;
        }

        free(v8);
      }
    }

    if (!v47)
    {
      byte_1000EB603 = 1;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v9 = qword_1000EB308;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 0;
        v10 = sub_1000011A8(1);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
        }

        else
        {
          v11 = v10 & 0xFFFFFFFE;
        }

        if (v11)
        {
          LOWORD(v48[0]) = 0;
          v12 = _os_log_send_and_compose_impl();
          v13 = v12;
          if (v12)
          {
            sub_100002A8C(v12);
          }
        }

        else
        {
          v13 = 0;
        }

        free(v13);
      }

      v14 = sub_100089A80(qword_1000EB608);
      [v14 setIgnoreIdentityMethods:byte_1000EB603];
    }
  }

  if (!sub_10003E524(1))
  {
    goto LABEL_48;
  }

  sub_1000897B8(qword_1000EB2E0, qword_1000EB5A0);
  if (qword_1000EB5A0 && CFArrayGetCount(qword_1000EB5A0) >= 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v50 = 0;
      v16 = sub_1000011A8(1);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 &= ~1u;
      }

      if (v16)
      {
        v17 = qword_1000EB5A0;
        v18 = v15;
        Count = CFArrayGetCount(v17);
        *v49 = 134217984;
        *&v49[4] = Count;
        v20 = _os_log_send_and_compose_impl();

        if (v20)
        {
          sub_100002A8C(v20);
        }
      }

      else
      {
        v20 = 0;
      }

      free(v20);
    }
  }

  v21 = dword_1000EB5B0;
  if (dword_1000EB5B0 == 1 && !dword_1000EB5B8)
  {
    if (sub_10008A58C(qword_1000EB2E0) == 502)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    dword_1000EB5B8 = v22;
LABEL_48:
    v21 = dword_1000EB5B0;
  }

  if (v21 != 1)
  {
    if (qword_1000EB2E8)
    {
      sub_100089D28();
      goto LABEL_90;
    }

    v23 = sub_100056424(UMDPersonaManager, qword_1000EB2E0);
    v24 = qword_1000EB2E8;
    qword_1000EB2E8 = v23;

    v48[0] = 0;
    if (!sub_10003E884(v48))
    {
      if (qword_1000EB330 != -1)
      {
        goto LABEL_102;
      }

      while (1)
      {
        v42 = qword_1000EB328;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *v49 = 0;
          v43 = sub_1000011A8(0);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v44 = v43;
          }

          else
          {
            v44 = v43 & 0xFFFFFFFE;
          }

          if (v44)
          {
            LODWORD(v50) = 67109120;
            HIDWORD(v50) = v48[0];
            v46 = _os_log_send_and_compose_impl();
            v45 = v46;
            if (v46)
            {
              sub_100002A8C(v46);
            }
          }

          else
          {
            v45 = 0;
          }

          free(v45);
        }

        abort_with_reason();
LABEL_102:
        sub_100089D40();
      }
    }

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v25 = qword_1000EB328;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *v49 = 0;
      v26 = sub_1000011A8(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v50) = 0;
        v28 = _os_log_send_and_compose_impl();
        v29 = v28;
        if (v28)
        {
          sub_100002A8C(v28);
        }
      }

      else
      {
        v29 = 0;
      }

      free(v29);
    }

    if (qword_1000EB330 != -1)
    {
      sub_100089D40();
    }

    v30 = qword_1000EB328;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v50 = 0;
      v31 = sub_1000011A8(0);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 &= ~1u;
      }

      if (v31)
      {
        v32 = qword_1000EB2E8;
        v33 = v30;
        v34 = sub_1000013A0(v32);
        *v49 = 138412290;
        *&v49[4] = v34;
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

    v36 = sub_100089790(qword_1000EB2E8);
    sub_10008BA00(v36);
  }

  v47 = -1;
  v48[0] = -1;
  if (sub_10008AE10(qword_1000EB2E0, v48, &v47))
  {
    if (qword_1000EB320 == -1)
    {
LABEL_76:
      v37 = qword_1000EB318;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 0;
        v38 = sub_1000011A8(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v38;
        }

        else
        {
          v39 = v38 & 0xFFFFFFFE;
        }

        if (v39)
        {
          *v49 = 67109376;
          *&v49[4] = v48[0];
          *&v49[8] = 1024;
          *&v49[10] = v47;
          v40 = _os_log_send_and_compose_impl();
          v41 = v40;
          if (v40)
          {
            sub_100002A8C(v40);
          }
        }

        else
        {
          v41 = 0;
        }

        free(v41);
      }

      sub_10001A244(v48[0], v47);
      return;
    }

LABEL_90:
    sub_100089D68();
    goto LABEL_76;
  }

  if (dword_1000EB5B0 == 1)
  {
    sub_10001A30C();
  }
}

void sub_10001A244(int a1, int a2)
{
  if (!xpc_user_sessions_enabled() || xpc_user_sessions_get_session_uid())
  {
    sub_100018028("UserManagement user switch failed: usermanagerd is not running in the system session");
  }

  else if (byte_1000EB2F0 != 1)
  {
    byte_1000EB2F0 = 1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004B7C8;
    block[3] = &unk_1000DCE88;
    v5 = a1;
    v6 = a2;
    dispatch_async(qword_1000EB620, block);
    return;
  }

  sub_100018028("UserManagement user switch failed: attempt to perform a user switch while already performing a user switch");
  sub_10001A30C();
}

void sub_10001A30C()
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

  if (sub_10001B624())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

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
      goto LABEL_40;
    }

LABEL_60:
    v16 = 0;
LABEL_61:
    free(v16);
LABEL_62:

    return;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
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

  if (qword_1000EB5F8)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v5 = qword_1000EB318;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v13 = sub_1000011A8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFE;
    }

    if (!v14)
    {
      goto LABEL_60;
    }

    goto LABEL_40;
  }

  if (!qword_1000EB5C0)
  {
    return;
  }

  if (CFArrayGetCount(qword_1000EB5C0) < 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v5 = qword_1000EB308;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_62;
    }

    v23 = sub_1000011A8(1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
    }

    else
    {
      v24 = v23 & 0xFFFFFFFE;
    }

    if (!v24)
    {
      goto LABEL_60;
    }

LABEL_40:
    v15 = _os_log_send_and_compose_impl();
    v16 = v15;
    if (v15)
    {
      sub_100002A8C(v15);
    }

    goto LABEL_61;
  }

  v17 = sub_10001B6CC();
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
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

  v25 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000EB610);
  v26 = qword_1000EB5F8;
  qword_1000EB5F8 = v25;

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v27 = qword_1000EB318;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = sub_1000011A8(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
    }

    else
    {
      v29 = v28 & 0xFFFFFFFE;
    }

    if (v29)
    {
      v30 = _os_log_send_and_compose_impl();
      v31 = v30;
      if (v30)
      {
        sub_100002A8C(v30);
      }
    }

    else
    {
      v31 = 0;
    }

    free(v31);
  }

  v32 = qword_1000EB5F8;
  v33 = dispatch_time(0, 1000000000 * v17);
  dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_1000EB5F8, &stru_1000DD570);
  dispatch_activate(qword_1000EB5F8);
}

uint64_t sub_10001A918(uint64_t a1, uid_t a2)
{
  v19 = 0;
  if (a1)
  {
    if (([qword_1000EB2D8 mountVolumeWithSession:a1 mountPath:@"/private/var/mobile" error:&v19 forPersona:0] & 1) == 0)
    {
      if (qword_1000EB310 != -1)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v14 = qword_1000EB308;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_1000011A8(1);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
          }

          else
          {
            v16 = v15 & 0xFFFFFFFE;
          }

          if (v16)
          {
            v20 = 67109120;
            v21 = v19;
            v18 = _os_log_send_and_compose_impl();
            v17 = v18;
            if (v18)
            {
              sub_100002A8C(v18);
            }
          }

          else
          {
            v17 = 0;
          }

          free(v17);
        }

        sub_100018028("FAILED TO MOUNT USER DATA VOLUME with ERROR: %d", v19);
LABEL_38:
        sub_100089CEC();
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
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
        LOWORD(v20) = 0;
        v6 = _os_log_send_and_compose_impl();
        v7 = v6;
        if (v6)
        {
          sub_100002A8C(v6);
        }
      }

      else
      {
        v7 = 0;
      }

      free(v7);
    }

    sub_10001AC18("/private/var/mobile", a2, a2);
    return 1;
  }

  else
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
        LOWORD(v20) = 0;
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

    return 0;
  }
}

uint64_t sub_10001AC18(uint64_t a1, uid_t a2, gid_t a3)
{
  memset(&v54, 0, sizeof(v54));
  bzero(path, 0x400uLL);
  __strlcpy_chk();
  __strlcat_chk();
  if (!stat(path, &v54))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 0;
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v56 = 136315138;
        *v57 = path;
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v15 = 0;
    goto LABEL_109;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v55 = 0;
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
      v56 = 136315138;
      *v57 = path;
      v53 = 12;
      v52 = &v56;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  if (mkpath_np(path, 0x3FFu))
  {
    v15 = *__error();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_109;
    }

    v55 = 0;
    v16 = sub_1000011A8(1);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 &= ~1u;
    }

    if (v16)
    {
      v17 = v10;
      v18 = strerror(v15);
      v56 = 136315394;
      *v57 = path;
      *&v57[8] = 2080;
      *v58 = v18;
      v19 = _os_log_send_and_compose_impl();

      if (!v19)
      {
        goto LABEL_108;
      }

      goto LABEL_106;
    }

    goto LABEL_107;
  }

  if (chmod(path, 0x3FFu))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v20 = qword_1000EB308;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 0;
      v21 = sub_1000011A8(1);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 &= ~1u;
      }

      if (v21)
      {
        v22 = v20;
        v23 = __error();
        v24 = strerror(*v23);
        v56 = 136315394;
        *v57 = path;
        *&v57[8] = 2080;
        *v58 = v24;
        v53 = 22;
        v52 = &v56;
        v25 = _os_log_send_and_compose_impl();

        if (v25)
        {
          sub_100002A8C(v25);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v26 = qword_1000EB308;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v55 = 0;
    v27 = sub_1000011A8(1);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v56 = 67109376;
      *v57 = a2;
      *&v57[4] = 1024;
      *&v57[6] = a3;
      v53 = 14;
      v52 = &v56;
      v29 = _os_log_send_and_compose_impl();
      v30 = v29;
      if (v29)
      {
        sub_100002A8C(v29);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (chown(path, a2, a3))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v31 = qword_1000EB308;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v55 = 0;
      v32 = sub_1000011A8(1);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 &= ~1u;
      }

      if (v32)
      {
        v33 = v31;
        v34 = __error();
        v35 = strerror(*v34);
        v56 = 136315394;
        *v57 = path;
        *&v57[8] = 2080;
        *v58 = v35;
        v53 = 22;
        v52 = &v56;
        v36 = _os_log_send_and_compose_impl();

        if (v36)
        {
          sub_100002A8C(v36);
        }
      }

      else
      {
        v36 = 0;
      }

      free(v36);
    }
  }

  v37 = open_dprotected_np(path, 0, 0, 1, v52, v53, *&v54.st_dev, v54.st_ino, *&v54.st_uid, *&v54.st_rdev, v54.st_atimespec.tv_sec, v54.st_atimespec.tv_nsec, v54.st_mtimespec.tv_sec, v54.st_mtimespec.tv_nsec, v54.st_ctimespec.tv_sec, v54.st_ctimespec.tv_nsec, v54.st_birthtimespec.tv_sec, v54.st_birthtimespec.tv_nsec, v54.st_size, v54.st_blocks, *&v54.st_blksize, *&v54.st_gen, v54.st_qspare[0], v54.st_qspare[1]);
  if (v37 != -1)
  {
    v38 = v37;
    if (fcntl(v37, 64, 4))
    {
      v15 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v39 = qword_1000EB308;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v55 = 0;
        v40 = sub_1000011A8(1);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 &= ~1u;
        }

        if (v40)
        {
          v41 = v39;
          v42 = strerror(v15);
          v56 = 136315394;
          *v57 = v42;
          *&v57[8] = 2080;
          *v58 = path;
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

      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v15 = 0;
      if ((v38 & 0x80000000) == 0)
      {
LABEL_92:
        close(v38);
      }
    }

    if (!v15)
    {
      return v15;
    }

LABEL_98:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v10 = qword_1000EB308;
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_109;
    }

    v55 = 0;
    v49 = sub_1000011A8(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
    }

    else
    {
      v50 = v49 & 0xFFFFFFFE;
    }

    if (v50)
    {
      v56 = 136315650;
      *v57 = path;
      *&v57[8] = 1024;
      *v58 = 4;
      *&v58[4] = 1024;
      *&v58[6] = v15;
      v19 = _os_log_send_and_compose_impl();
      if (!v19)
      {
LABEL_108:
        free(v19);
LABEL_109:

        return v15;
      }

LABEL_106:
      sub_100002A8C(v19);
      goto LABEL_108;
    }

LABEL_107:
    v19 = 0;
    goto LABEL_108;
  }

  v15 = *__error();
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v44 = qword_1000EB308;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v55 = 0;
    v45 = sub_1000011A8(1);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 &= ~1u;
    }

    if (v45)
    {
      v46 = v44;
      v47 = strerror(v15);
      v56 = 136315394;
      *v57 = v47;
      *&v57[8] = 2080;
      *v58 = path;
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

    free(v48);
  }

  if (v15)
  {
    goto LABEL_98;
  }

  return v15;
}

BOOL sub_10001B57C()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  return !sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "usersession_enable", __len) != 0;
}

BOOL sub_10001B624()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  return !sysctlbyname("kern.bootargs", __big, &__len, 0, 0) && strnstr(__big, "stop_auto_bubblelaunch", __len) != 0;
}

uint64_t sub_10001B6CC()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0))
  {
    return 120;
  }

  v3 = 0;
  __big[1023] = 0;
  v1 = strnstr(__big, "bubblelaunch_delay=", __len);
  v0 = 120;
  if (v1)
  {
    if (sscanf(v1, "bubblelaunch_delay=%d", &v3) == 1)
    {
      return v3;
    }

    else
    {
      return 120;
    }
  }

  return v0;
}

char *sub_10001B7A0()
{
  __len = 1023;
  bzero(__big, 0x400uLL);
  if (sysctlbyname("kern.bootargs", __big, &__len, 0, 0))
  {
    return 0;
  }

  result = strnstr(__big, "eds_debug", __len);
  if (result)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
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

    return 1;
  }

  return result;
}

uint64_t sub_10001B910()
{
  v12 = 0;
  v11 = 4;
  v10 = 544;
  if (sysctlbyname("security.mac.sandbox.debug_mode", &v12, &v11, &v10, 4uLL))
  {
    v0 = *__error();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v1 = qword_1000EB308;
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

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
      v13 = 67109120;
      v14 = v0;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v10 = v12 | 0x220;
  if (sysctlbyname("security.mac.sandbox.debug_mode", 0, 0, &v10, 4uLL))
  {
    v4 = *__error();
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v1 = qword_1000EB308;
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v5 = sub_1000011A8(1);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFE;
    }

    if (v6)
    {
      v13 = 67109120;
      v14 = v4;
LABEL_19:
      v7 = _os_log_send_and_compose_impl();
      v8 = v7;
      if (v7)
      {
        sub_100002A8C(v7);
      }

      goto LABEL_22;
    }

LABEL_21:
    v8 = 0;
LABEL_22:
    free(v8);
LABEL_23:

    return 0;
  }

  return 1;
}

void sub_10001BB44()
{
  if (sub_10001B7A0())
  {
    if (sub_10001B910())
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
LABEL_26:
          v7 = _os_log_send_and_compose_impl();
          v8 = v7;
          if (v7)
          {
            sub_100002A8C(v7);
          }

          goto LABEL_29;
        }

LABEL_28:
        v8 = 0;
LABEL_29:
        free(v8);
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v0 = qword_1000EB308;
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        v5 = sub_1000011A8(1);
        if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          v6 = v5;
        }

        else
        {
          v6 = v5 & 0xFFFFFFFE;
        }

        if (v6)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v0 = qword_1000EB308;
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000011A8(1);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
      {
        v4 = v3;
      }

      else
      {
        v4 = v3 & 0xFFFFFFFE;
      }

      if (v4)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }
  }
}

CFNumberRef sub_10001BD58(int a1)
{
  valuePtr[0] = a1;
  if (qword_1000EB5C0)
  {
    sub_10001BEFC(a1);
  }

  else
  {
    qword_1000EB5C0 = sub_1000799A8();
  }

  result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, valuePtr);
  if (result)
  {
    v3 = result;
    CFArrayAppendValue(qword_1000EB5C0, result);
    qword_1000EB5E8 = CFArrayGetCount(qword_1000EB5C0);
    CFRelease(v3);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        valuePtr[1] = 67109378;
        valuePtr[2] = a1;
        v10 = 2112;
        v11 = qword_1000EB5C0;
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    return 1;
  }

  return result;
}

uint64_t sub_10001BEFC(int a1)
{
  result = qword_1000EB5C0;
  if (qword_1000EB5C0)
  {
    valuePtr[0] = 0;
    if (CFArrayGetCount(qword_1000EB5C0) < 1)
    {
      return 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C0, v3);
        if (ValueAtIndex)
        {
          v5 = ValueAtIndex;
          v6 = CFGetTypeID(ValueAtIndex);
          if (v6 == CFNumberGetTypeID() && CFNumberGetValue(v5, kCFNumberIntType, valuePtr) && valuePtr[0] == a1)
          {
            break;
          }
        }

        if (CFArrayGetCount(qword_1000EB5C0) <= ++v3)
        {
          return 0;
        }
      }

      CFArrayRemoveValueAtIndex(qword_1000EB5C0, v3);
      qword_1000EB5E8 = CFArrayGetCount(qword_1000EB5C0);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
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
          valuePtr[1] = 67109120;
          valuePtr[2] = a1;
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

      return 1;
    }
  }

  return result;
}

uint64_t sub_10001C0D0(CFDictionaryRef theDict, uint64_t a2)
{
  v3 = theDict;
  if (theDict || (sub_10008A2F4(qword_1000EB2E0, a2), result = objc_claimAutoreleasedReturnValue(), (v3 = result) != 0))
  {
    if (CFDictionaryContainsKey(v3, kUMUserSessionSyncMachServicesKey))
    {
      CFDictionaryRemoveValue(v3, kUMUserSessionSyncMachServicesKey);
    }

    if (CFDictionaryContainsKey(v3, kUMUserSessionSyncTasksKey))
    {
      CFDictionaryRemoveValue(v3, kUMUserSessionSyncTasksKey);
    }

    if (CFDictionaryContainsKey(v3, kUMUserSessionDirtyKey))
    {
      CFDictionarySetValue(v3, kUMUserSessionDirtyKey, kCFBooleanFalse);
    }

    v5 = sub_1000023E8(v3, kUMUserSessionIDKey);
    sub_10001BEFC(v5);
    if (!theDict)
    {
      CFRelease(v3);
    }

    return 1;
  }

  return result;
}

CFNumberRef sub_10001C1B8(int a1)
{
  valuePtr = a1;
  if (qword_1000EB5C8)
  {
    sub_10001C244(a1);
  }

  else
  {
    qword_1000EB5C8 = sub_1000799A8();
  }

  result = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (result)
  {
    v2 = result;
    CFArrayAppendValue(qword_1000EB5C8, result);
    qword_1000EB5F0 = CFArrayGetCount(qword_1000EB5C8);
    CFRelease(v2);
    return 1;
  }

  return result;
}

uint64_t sub_10001C244(int a1)
{
  result = qword_1000EB5C8;
  if (qword_1000EB5C8)
  {
    valuePtr = 0;
    if (CFArrayGetCount(qword_1000EB5C8) < 1)
    {
      return 0;
    }

    else
    {
      v3 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C8, v3);
        if (ValueAtIndex)
        {
          v5 = ValueAtIndex;
          v6 = CFGetTypeID(ValueAtIndex);
          if (v6 == CFNumberGetTypeID() && CFNumberGetValue(v5, kCFNumberIntType, &valuePtr) && valuePtr == a1)
          {
            break;
          }
        }

        if (CFArrayGetCount(qword_1000EB5C8) <= ++v3)
        {
          return 0;
        }
      }

      CFArrayRemoveValueAtIndex(qword_1000EB5C8, v3);
      qword_1000EB5F0 = CFArrayGetCount(qword_1000EB5C8);
      return 1;
    }
  }

  return result;
}

uint64_t sub_10001C320()
{
  if (!qword_1000EB5C8)
  {
    return 0xFFFFFFFFLL;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5C8, 0);
  if (!ValueAtIndex)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = ValueAtIndex;
  v2 = CFGetTypeID(ValueAtIndex);
  if (v2 != CFNumberGetTypeID())
  {
    return 0xFFFFFFFFLL;
  }

  valuePtr = 0;
  if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
  {
    return valuePtr;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10001C3A8(uint64_t a1, uint64_t a2, gid_t a3)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v5 = qword_1000EB308;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v33 = 0;
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
      LOWORD(v36) = 0;
      v8 = _os_log_send_and_compose_impl();
      v9 = v8;
      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {
      v9 = 0;
    }

    free(v9);
  }

  v10 = +[UMLManager sharedManager];
  v11 = [NSString stringWithCString:a1 encoding:4];
  v12 = [v11 stringByAppendingString:@"/"];
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 0;
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
      *v33 = 138412546;
      *&v33[4] = @"/";
      v34 = 2112;
      v35 = v12;
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

  v32 = 0;
  v18 = [v10 createUserLayoutForUserwithUserID:a2 withAKSSetup:1 onUserVolumePath:v12 fromSystemVolumePath:@"/" withError:&v32];
  v19 = v32;
  v20 = v19;
  if (v18)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(v36) = 0;
        goto LABEL_40;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v24 = [v19 code];
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v33 = 0;
      v25 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LODWORD(v36) = 67109120;
        HIDWORD(v36) = v24;
LABEL_40:
        v27 = _os_log_send_and_compose_impl();
        v28 = v27;
        if (v27)
        {
          sub_100002A8C(v27);
        }

        goto LABEL_43;
      }

LABEL_42:
      v28 = 0;
LABEL_43:
      free(v28);
    }
  }

  v29 = sub_10001AC18(a1, a2, a3);
  return v29;
}

uint64_t sub_10001C7AC(char *a1, int a2)
{
  if (!a1)
  {
    return 22;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v16 = sub_10001C94C;
  v17 = &unk_1000DD508;
  v18 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v12 = sub_10001C978;
  v13 = &unk_1000DD528;
  v14 = a2;
  v3 = v15;
  v4 = v11;
  v19[0] = a1;
  v19[1] = 0;
  v5 = fts_open(v19, 84, 0);
  if (v5)
  {
    v6 = v5;
    v7 = fts_read(v5);
    if (v7)
    {
      v8 = v7;
      do
      {
        fts_info = v8->fts_info;
        if (fts_info == 8)
        {
          v12(v4, v8);
        }

        else if (fts_info == 1 && (v16(v3, v8) & 1) == 0)
        {
          fts_set(v6, v8, 4);
        }

        v8 = fts_read(v6);
      }

      while (v8);
    }

    fts_close(v6);
  }

  return 0;
}

BOOL sub_10001C98C(int a1)
{
  v16 = a1;
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
      v17 = 67109120;
      v18 = a1;
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

  v7 = sysctlbyname("net.inet.tcp.recvbg", 0, 0, &v16, 4uLL);
  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
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
        v17 = 67109120;
        v18 = v7;
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v17 = 67109120;
        v18 = v16;
LABEL_29:
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }

        goto LABEL_32;
      }

LABEL_31:
      v14 = 0;
LABEL_32:
      free(v14);
    }
  }

  return v7 == 0;
}

const __CFDictionary *sub_10001CC3C()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    sub_100079524(v0, kMGQDiskUsageTotalDiskCapacity);
    sub_100079524(v1, kMGQDiskUsageTotalSystemCapacity);
    v1 = sub_100079524(v1, kMGQDiskUsageTotalDataCapacity);
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
  }

  return v1;
}

uint64_t sub_10001CDE0()
{
  memset(&v2, 0, 512);
  strcpy(v1, "/private/var");
  if (statfs(v1, &v2))
  {
    return 0;
  }

  else
  {
    return v2.f_bfree * v2.f_bsize;
  }
}

uint64_t sub_10001CEAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = sub_10001CC3C() / 0x100000;
  if (v6 >= 0x4000)
  {
    v7 = -16384;
    if (v6 < 0x8000)
    {
      v7 = -8192;
    }

    v9 = 10;
    if (v6 < 0x8000)
    {
      v8 = 1024;
    }

    else
    {
      v9 = 11;
      v8 = 2048;
    }

    v10 = 0x4000;
    if (v6 < 0x8000)
    {
      v10 = 0x2000;
    }

    v45 = v10;
  }

  else
  {
    v7 = -4096;
    v45 = 4096;
    v8 = 1024;
    v9 = 10;
  }

  v11 = v6 + v7;
  v12 = (v6 + v7) >> v9;
  if (v12 >= 16)
  {
    if (v11 / 0xF >= v8)
    {
      v12 = 15;
      v8 = v11 / 0xF;
    }

    else
    {
      v12 = v11 / v8;
    }
  }

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

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
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

  if (a1 == -1)
  {
    v28 = v11 / 0x3E8;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = 100 * v28;
    v29 = qword_1000EB308;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = sub_1000011A8(1);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        v32 = _os_log_send_and_compose_impl();
        v33 = v32;
        if (v32)
        {
          sub_100002A8C(v32);
        }
      }

      else
      {
        v33 = 0;
      }

      free(v33);
    }

    v12 = 10;
  }

  else if (v12 <= a1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v34 = qword_1000EB308;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = sub_1000011A8(1);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v36 = v35;
      }

      else
      {
        v36 = v35 & 0xFFFFFFFE;
      }

      if (v36)
      {
        v37 = _os_log_send_and_compose_impl();
        v38 = v37;
        if (v37)
        {
          sub_100002A8C(v37);
        }
      }

      else
      {
        v38 = 0;
      }

      free(v38);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v23 = qword_1000EB308;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_1000011A8(1);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        v26 = _os_log_send_and_compose_impl();
        v27 = v26;
        if (v26)
        {
          sub_100002A8C(v26);
        }
      }

      else
      {
        v27 = 0;
      }

      free(v27);
    }

    v12 = a1;
    v8 = v11 / a1;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v39 = qword_1000EB308;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = sub_1000011A8(1);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 0xFFFFFFFE;
    }

    if (v41)
    {
      v42 = _os_log_send_and_compose_impl();
      v43 = v42;
      if (v42)
      {
        sub_100002A8C(v42);
      }
    }

    else
    {
      v43 = 0;
    }

    free(v43);
  }

  if (a2)
  {
    *a2 = v8;
  }

  if (a3)
  {
    *a3 = v6;
  }

  if (a4)
  {
    *a4 = v45;
  }

  return v12;
}

__CFDictionary *sub_10001D4F4(int a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = 502;
  v182 = a1;
  v180 = 502;
  v178 = 0;
  v179 = 0;
  v177 = 0;
  v176 = a1;
  if (!a2)
  {
    v3 = MKBGetDeviceLockState();
    if (v3 != 3)
    {
      v9 = v3;
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v10 = qword_1000EB308;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v188 = 0;
        v11 = sub_1000011A8(1);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          *__str = 67109120;
          v186 = v9;
          v13 = _os_log_send_and_compose_impl();
          v14 = v13;
          if (v13)
          {
            sub_100002A8C(v13);
          }
        }

        else
        {
          v14 = 0;
        }

        free(v14);
      }

      goto LABEL_276;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v4 = qword_1000EB308;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v188 = 0;
      v5 = sub_1000011A8(1);
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5;
      }

      else
      {
        v7 = v5 & 0xFFFFFFFE;
      }

      if (v7)
      {
        *__str = 67109120;
        v186 = 3;
        v8 = _os_log_send_and_compose_impl();

        if (v8)
        {
          sub_100002A8C(v8);
        }
      }

      else
      {

        v8 = 0;
      }

      free(v8);
    }
  }

  byte_1000EA3D8 = 1;
  qword_1000EB2F8 = kUMUserSessionAPFSNativeVolume;
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = qword_1000EB308;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v188 = 0;
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
      *__str = 0;
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

  v20 = sub_10007990C();
  if (v20)
  {
    v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(v20, kUMUserSessionIDKey, v21);
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = CFNumberCreate(0, kCFNumberIntType, &v180);
    CFDictionarySetValue(v20, kUMUserSessionGroupIDKey, v22);
    if (v22)
    {
      CFRelease(v22);
    }

    CFDictionarySetValue(v20, kUMUserSessionNeedsMountKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionTypeKey, kUMUserSessionManagedDevice);
    CFDictionarySetValue(v20, kUMUserSessionForegroundKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionDirtyKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionDisabledKey, kCFBooleanFalse);
    CFDictionarySetValue(v20, kUMUserSessionLoginUserKey, kCFBooleanTrue);
    CFDictionarySetValue(v20, kUMUserSessionUserVolumeTypeKey, qword_1000EB2F8);
    CFDictionarySetValue(v20, kUMUserSessionisPrimaryKey, kCFBooleanTrue);
    CFDictionarySetValue(v20, kUMUserSessionisAdminKey, kCFBooleanTrue);
    bzero(__str, 0x400uLL);
    if (valuePtr <= 501)
    {
      v23 = valuePtr;
    }

    else
    {
      v23 = valuePtr - 501;
    }

    snprintf(__str, 0x400uLL, "euser%d", v23);
    v24 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionShortNameKey, v24);
    if (v24)
    {
      CFRelease(v24);
    }

    v25 = CFStringCreateWithCString(0, "Loginwindow", 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionNameKey, v25);
    CFDictionarySetValue(v20, kUMUserSessionFirstNameKey, v25);
    CFDictionarySetValue(v20, kUMUserSessionLastNameKey, v25);
    CFDictionarySetValue(v20, kUMUserSessionDisplayNameKey, v25);
    if (v25)
    {
      CFRelease(v25);
    }

    [qword_1000EB2D8 splitUserVolumeEnabled];
    v26 = CFUUIDCreate(0);
    v10 = sub_1000169B4(NSUUID, v26);
    v27 = CFUUIDCreateString(0, v26);
    CFDictionarySetValue(v20, kUMUserSessionUUIDKey, v27);
    if (v26)
    {
      CFRelease(v26);
    }

    if (v27)
    {
      CFRelease(v27);
    }

    v28 = CFUUIDCreate(0);
    v29 = CFUUIDCreateString(0, v28);
    CFDictionarySetValue(v20, kUMUserSessionAlternateDSIDKey, v29);
    if (v28)
    {
      CFRelease(v28);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v31 = CFDateCreate(kCFAllocatorDefault, Current);
    CFDictionarySetValue(v20, kUMUserSessionCreateTimeStampKey, v31);
    CFDictionarySetValue(v20, kUMUserSessionLoginTimeStampKey, v31);
    if (v31)
    {
      CFRelease(v31);
    }

    qword_1000EA3E0 = 1001;
    v32 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EA3E0);
    CFDictionarySetValue(v20, kUMUserSessionAPNSIDKey, v32);
    CFRelease(v32);
    v33 = CFUUIDCreate(0);
    v34 = CFUUIDCreateString(0, v33);
    if (v33)
    {
      CFRelease(v33);
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(v34, buffer, 1024, 0x8000100u);
    if (v34)
    {
      CFRelease(v34);
    }

    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/var/%s", buffer);
    v35 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionLibinfoHomeDirKey, v35);
    if (v35)
    {
      CFRelease(v35);
    }

    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/private/var/%s", buffer);
    v36 = CFStringCreateWithCString(0, __str, 0x8000100u);
    CFDictionarySetValue(v20, kUMUserSessionHomeDirKey, v36);
    if (v36)
    {
      CFRelease(v36);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v37 = qword_1000EB308;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v188 = 0;
      v38 = sub_1000011A8(1);
      v39 = v37;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v38;
      }

      else
      {
        v40 = v38 & 0xFFFFFFFE;
      }

      if (v40)
      {
        LOWORD(v187[0]) = 0;
        v41 = _os_log_send_and_compose_impl();

        if (v41)
        {
          sub_100002A8C(v41);
        }
      }

      else
      {

        v41 = 0;
      }

      free(v41);
    }

    [qword_1000EB2D8 createVolumeMountsDir:@"/var/Users"];
    if (sub_10001F508(__str, valuePtr, v180))
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v42 = qword_1000EB308;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v188 = 0;
        v43 = sub_1000011A8(1);
        v42 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v44 = v43;
        }

        else
        {
          v44 = v43 & 0xFFFFFFFE;
        }

        if (v44)
        {
          LOWORD(v187[0]) = 0;
          goto LABEL_93;
        }

        goto LABEL_95;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v42 = qword_1000EB308;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v188 = 0;
        v45 = sub_1000011A8(1);
        v42 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
        }

        else
        {
          v46 = v45 & 0xFFFFFFFE;
        }

        if (v46)
        {
          LOWORD(v187[0]) = 0;
LABEL_93:
          v47 = _os_log_send_and_compose_impl();

          if (v47)
          {
            sub_100002A8C(v47);
          }

          goto LABEL_96;
        }

LABEL_95:

        v47 = 0;
LABEL_96:
        free(v47);
      }
    }

    bzero(__str, 0x400uLL);
    snprintf(__str, 0x400uLL, "/private/var/%s/Library/Preferences", buffer);
    v171 = v180;
    v172 = valuePtr;
    v48 = objc_autoreleasePoolPush();
    strcpy(v187, "/private/var/mobile/Library/Preferences/.GlobalPreferences.plist");
    bzero(v188, 0x400uLL);
    snprintf(v188, 0x400uLL, "%s/.GlobalPreferences.plist", __str);
    v49 = open(v187, 0);
    if (v49 == -1)
    {
      v61 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v62 = qword_1000EB308;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v183 = 0;
        v63 = sub_1000011A8(1);
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v63 &= ~1u;
        }

        if (v63)
        {
          v64 = v48;
          v65 = v62;
          v66 = strerror(v61);
          *v189 = 136315394;
          *&v189[4] = v187;
          *&v189[12] = 2080;
          v190 = v66;
          v67 = _os_log_send_and_compose_impl();

          if (v67)
          {
            sub_100002A8C(v67);
          }

          v48 = v64;
        }

        else
        {
          v67 = 0;
        }

        free(v67);
      }
    }

    else
    {
      v50 = v49;
      v173 = v2;
      bzero(v188, 0x400uLL);
      snprintf(v188, 0x400uLL, "%s/.GlobalPreferences.plist", __str);
      v51 = open(v188, 514, 384);
      if (v51 != -1)
      {
        v52 = v51;
        v170 = v48;
        v53 = v10;
        v54 = vm_page_size;
        v55 = malloc_type_malloc(vm_page_size, 0x26C187CBuLL);
        if (!v55)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v56 = qword_1000EB308;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *v189 = 0;
            v57 = sub_1000011A8(1);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v58 = v57;
            }

            else
            {
              v58 = v57 & 0xFFFFFFFE;
            }

            if (v58)
            {
              LOWORD(v183) = 0;
              v59 = _os_log_send_and_compose_impl();
              v60 = v59;
              if (v59)
              {
                sub_100002A8C(v59);
              }
            }

            else
            {
              v60 = 0;
            }

            free(v60);
          }
        }

        for (i = 0; ; i += v77)
        {
          v76 = pread(v50, v55, v54, i);
          if (!v76)
          {
            break;
          }

          v77 = v76;
          if (v76 == -1)
          {
            __error();
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v10 = v53;
            v48 = v170;
            v80 = qword_1000EB308;
            if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_194;
            }

            v183 = 0;
            v81 = sub_1000011A8(1);
            if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v81 &= ~1u;
            }

            if (v81)
            {
LABEL_166:
              v88 = v80;
              v89 = __error();
              v90 = strerror(*v89);
              *v189 = 136315138;
              *&v189[4] = v90;
              v91 = _os_log_send_and_compose_impl();

              if (v91)
              {
                sub_100002A8C(v91);
              }

LABEL_193:
              free(v91);
              goto LABEL_194;
            }

LABEL_178:
            v91 = 0;
            goto LABEL_193;
          }

          v78 = pwrite(v52, v55, v76, i);
          if (v78 == -1)
          {
            __error();
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v10 = v53;
            v48 = v170;
            v80 = qword_1000EB308;
            if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_194;
            }

            v183 = 0;
            v87 = sub_1000011A8(1);
            if (!os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v87 &= ~1u;
            }

            if (v87)
            {
              goto LABEL_166;
            }

            goto LABEL_178;
          }

          v79 = v78;
          if (v77 != v78)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v10 = v53;
            v80 = qword_1000EB308;
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              v183 = 0;
              v92 = sub_1000011A8(1);
              if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
              {
                v93 = v92;
              }

              else
              {
                v93 = v92 & 0xFFFFFFFE;
              }

              if (v93)
              {
                *v189 = 134218240;
                *&v189[4] = v77;
                *&v189[12] = 2048;
                v190 = v79;
                v94 = _os_log_send_and_compose_impl();
                v91 = v94;
                if (v94)
                {
                  sub_100002A8C(v94);
                }
              }

              else
              {
                v91 = 0;
              }

              v48 = v170;
              goto LABEL_193;
            }

            v48 = v170;
LABEL_194:

            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v101 = qword_1000EB308;
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              v183 = 0;
              v102 = sub_1000011A8(1);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
              {
                v103 = v102;
              }

              else
              {
                v103 = v102 & 0xFFFFFFFE;
              }

              if (v103)
              {
                *v189 = 136315394;
                *&v189[4] = v187;
                *&v189[12] = 2080;
                v190 = v188;
                v104 = _os_log_send_and_compose_impl();
                v105 = v104;
                if (v104)
                {
                  sub_100002A8C(v104);
                }
              }

              else
              {
                v105 = 0;
              }

              free(v105);
            }

            close(v50);
            close(v52);
            v2 = v173;
            goto LABEL_206;
          }
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v10 = v53;
        v82 = qword_1000EB308;
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v183 = 0;
          v83 = sub_1000011A8(1);
          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
          {
            v84 = v83;
          }

          else
          {
            v84 = v83 & 0xFFFFFFFE;
          }

          if (v84)
          {
            *v189 = 67109376;
            *&v189[4] = v172;
            *&v189[8] = 1024;
            *&v189[10] = v171;
            v85 = _os_log_send_and_compose_impl();
            v86 = v85;
            if (v85)
            {
              sub_100002A8C(v85);
            }
          }

          else
          {
            v86 = 0;
          }

          free(v86);
        }

        if (chown(v188, v172, v171))
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v95 = qword_1000EB308;
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            v183 = 0;
            v96 = sub_1000011A8(1);
            if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v96 &= ~1u;
            }

            if (v96)
            {
              v97 = v95;
              v98 = __error();
              v99 = strerror(*v98);
              *v189 = 136315394;
              *&v189[4] = v188;
              *&v189[12] = 2080;
              v190 = v99;
              v100 = _os_log_send_and_compose_impl();

              if (v100)
              {
                sub_100002A8C(v100);
              }
            }

            else
            {
              v100 = 0;
            }

            free(v100);
          }
        }

        close(v50);
        close(v52);
        objc_autoreleasePoolPop(v170);
        v2 = v173;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v106 = qword_1000EB308;
        if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
        {
          *v188 = 0;
          v110 = sub_1000011A8(1);
          v106 = v106;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            v111 = v110;
          }

          else
          {
            v111 = v110 & 0xFFFFFFFE;
          }

          if (v111)
          {
            LOWORD(v187[0]) = 0;
            goto LABEL_214;
          }

          goto LABEL_227;
        }

        goto LABEL_229;
      }

      v68 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v69 = qword_1000EB308;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v183 = 0;
        v70 = sub_1000011A8(1);
        if (!os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v70 &= ~1u;
        }

        if (v70)
        {
          v174 = v10;
          v71 = v48;
          v72 = v69;
          v73 = strerror(v68);
          *v189 = 136315394;
          *&v189[4] = v188;
          *&v189[12] = 2080;
          v190 = v73;
          v74 = _os_log_send_and_compose_impl();

          if (v74)
          {
            sub_100002A8C(v74);
          }

          v48 = v71;
          v10 = v174;
        }

        else
        {
          v74 = 0;
        }

        free(v74);
      }

      close(v50);
    }

LABEL_206:
    objc_autoreleasePoolPop(v48);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v106 = qword_1000EB308;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      *v188 = 0;
      v107 = sub_1000011A8(1);
      v106 = v106;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        v108 = v107;
      }

      else
      {
        v108 = v107 & 0xFFFFFFFE;
      }

      if (v108)
      {
        LOWORD(v187[0]) = 0;
LABEL_214:
        v109 = _os_log_send_and_compose_impl();

        if (v109)
        {
          sub_100002A8C(v109);
        }

        goto LABEL_228;
      }

LABEL_227:

      v109 = 0;
LABEL_228:
      free(v109);
    }

LABEL_229:

    if ([qword_1000EB2D8 splitUserVolumeEnabled])
    {
      v112 = sub_100089A80(qword_1000EB608);
      v175 = 0;
      v113 = [v112 createIdentityWithUUID:v10 passcode:0 existingSession:501 existingSessionPasscode:0 isACMCredential:0 error:&v175];
      v114 = v175;

      if (v113)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v115 = kCFBooleanTrue;
        v116 = qword_1000EB308;
        if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
        {
          *v188 = 0;
          v117 = sub_1000011A8(1);
          v118 = v116;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
          {
            v119 = v117;
          }

          else
          {
            v119 = v117 & 0xFFFFFFFE;
          }

          if (v119)
          {
            LOWORD(v187[0]) = 0;
            v120 = _os_log_send_and_compose_impl();

            if (v120)
            {
              sub_100002A8C(v120);
            }
          }

          else
          {

            v120 = 0;
          }

          v115 = kCFBooleanTrue;
          free(v120);
        }

        CFDictionarySetValue(v20, kUMUserSessionNeedsCryptoSetupKey, v115);
        goto LABEL_279;
      }

      CFRelease(v20);
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v128 = qword_1000EB308;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v187[0] = 0;
        v129 = sub_1000011A8(1);
        v130 = v128;
        if (!os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          v129 &= ~1u;
        }

        if (v129)
        {
          v131 = [v114 code];
          *v188 = 134217984;
          *&v188[4] = v131;
          v132 = _os_log_send_and_compose_impl();

          if (v132)
          {
            sub_100002A8C(v132);
          }
        }

        else
        {

          v132 = 0;
        }

        free(v132);
      }
    }

    else
    {
      KeybagForUser = MKBUserSessionCreateKeybagForUser();
      if (!KeybagForUser)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v115 = kCFBooleanTrue;
        v114 = qword_1000EB308;
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *v188 = 0;
          v133 = sub_1000011A8(1);
          v114 = v114;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v134 = v133;
          }

          else
          {
            v134 = v133 & 0xFFFFFFFE;
          }

          if (v134)
          {
            LOWORD(v187[0]) = 0;
            v135 = _os_log_send_and_compose_impl();

            if (v135)
            {
              sub_100002A8C(v135);
            }
          }

          else
          {

            v135 = 0;
          }

          free(v135);
        }

LABEL_279:

        CFDictionarySetValue(v20, @"MKBUserSessionFileSystemSet", v115);
        if (v2)
        {
          dword_1000EA3D4 = -1;
          qword_1000EB5D8 = v2;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v136 = qword_1000EB308;
          if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
          {
            v187[0] = 0;
            v137 = sub_1000011A8(1);
            v138 = v136;
            if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
            {
              v139 = v137;
            }

            else
            {
              v139 = v137 & 0xFFFFFFFE;
            }

            if (v139)
            {
              *v188 = 67109376;
              *&v188[4] = v176;
              *&v188[8] = 2048;
              *&v188[10] = v2;
              v140 = _os_log_send_and_compose_impl();

              if (v140)
              {
                sub_100002A8C(v140);
              }
            }

            else
            {

              v140 = 0;
            }

            free(v140);
          }

          *v188 = v2 << 20;
          v146 = CFNumberCreate(0, kCFNumberLongLongType, v188);
          CFDictionarySetValue(v20, kUMUserSessionQuotaLimitKey, v146);
          if (v146)
          {
            CFRelease(v146);
          }

          v147 = CFNumberCreate(0, kCFNumberLongLongType, v188);
          CFDictionarySetValue(v20, kUMUserSessionEachUserSize, v147);
          if (v147)
          {
            CFRelease(v147);
          }

          v148 = CFNumberCreate(0, kCFNumberIntType, &v176);
          v149 = &kUMUserSessionTotalUsers;
        }

        else
        {
          v176 = sub_10001CEAC(v182, &v179, &v178, &v177);
          dword_1000EA3D4 = v176;
          qword_1000EB5D8 = v179;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v141 = qword_1000EB308;
          if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
          {
            v187[0] = 0;
            v142 = sub_1000011A8(1);
            v143 = v141;
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              v144 = v142;
            }

            else
            {
              v144 = v142 & 0xFFFFFFFE;
            }

            if (v144)
            {
              *v188 = 67109376;
              *&v188[4] = v176;
              *&v188[8] = 2048;
              *&v188[10] = v179;
              v145 = _os_log_send_and_compose_impl();

              if (v145)
              {
                sub_100002A8C(v145);
              }
            }

            else
            {

              v145 = 0;
            }

            free(v145);
          }

          *v188 = 0;
          v150 = CFNumberCreate(0, kCFNumberLongLongType, v188);
          CFDictionarySetValue(v20, kUMUserSessionQuotaLimitKey, v150);
          if (v150)
          {
            CFRelease(v150);
          }

          *v188 = 0;
          v151 = CFNumberCreate(0, kCFNumberLongLongType, v188);
          CFDictionarySetValue(v20, kUMUserSessionQuotaSoftLimitKey, v151);
          if (v151)
          {
            CFRelease(v151);
          }

          *v188 = 0;
          v152 = CFNumberCreate(0, kCFNumberLongLongType, v188);
          CFDictionarySetValue(v20, kUMUserSessionQuotaUsedKey, v152);
          if (v152)
          {
            CFRelease(v152);
          }

          v153 = CFNumberCreate(0, kCFNumberIntType, &v182);
          CFDictionarySetValue(v20, kUMUserSessionReqTotalUsers, v153);
          if (v153)
          {
            CFRelease(v153);
          }

          v154 = CFNumberCreate(0, kCFNumberIntType, &v176);
          CFDictionarySetValue(v20, kUMUserSessionTotalUsers, v154);
          if (v154)
          {
            CFRelease(v154);
          }

          v155 = CFNumberCreate(0, kCFNumberLongLongType, &v179);
          CFDictionarySetValue(v20, kUMUserSessionEachUserSize, v155);
          if (v155)
          {
            CFRelease(v155);
          }

          v156 = CFNumberCreate(0, kCFNumberLongLongType, &v178);
          CFDictionarySetValue(v20, kUMUserSessionTotalDataSize, v156);
          if (v156)
          {
            CFRelease(v156);
          }

          v148 = CFNumberCreate(0, kCFNumberLongLongType, &v177);
          v149 = &kUMUserSessionSystemLoginSize;
        }

        CFDictionarySetValue(v20, *v149, v148);
        if (v148)
        {
          CFRelease(v148);
        }

        sub_10001FC24(v20, 1);
        sub_10001FCBC();
        sub_100018C80();
        if (qword_1000EB320 != -1)
        {
          sub_100089D68();
        }

        v157 = qword_1000EB318;
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          *v188 = 0;
          v158 = sub_1000011A8(1);
          v159 = v157;
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT))
          {
            v160 = v158;
          }

          else
          {
            v160 = v158 & 0xFFFFFFFE;
          }

          if (v160)
          {
            LODWORD(v187[0]) = 67109120;
            HIDWORD(v187[0]) = valuePtr;
            v161 = _os_log_send_and_compose_impl();

            if (v161)
            {
              sub_100002A8C(v161);
            }
          }

          else
          {

            v161 = 0;
          }

          free(v161);
        }

        if (_SecSystemKeychainTransfer())
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v162 = qword_1000EB308;
          if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_356;
          }

          *v188 = 0;
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
            LOWORD(v187[0]) = 0;
            goto LABEL_352;
          }
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v162 = qword_1000EB308;
          if (!os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_356;
          }

          *v188 = 0;
          v165 = sub_1000011A8(1);
          if (os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT))
          {
            v166 = v165;
          }

          else
          {
            v166 = v165 & 0xFFFFFFFE;
          }

          if (v166)
          {
            LOWORD(v187[0]) = 0;
LABEL_352:
            v167 = _os_log_send_and_compose_impl();
            v168 = v167;
            if (v167)
            {
              sub_100002A8C(v167);
            }

            goto LABEL_355;
          }
        }

        v168 = 0;
LABEL_355:
        free(v168);
LABEL_356:

        goto LABEL_357;
      }

      v122 = KeybagForUser;
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v123 = qword_1000EB308;
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        *v188 = 0;
        v124 = sub_1000011A8(1);
        v125 = v123;
        if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
        {
          v126 = v124;
        }

        else
        {
          v126 = v124 & 0xFFFFFFFE;
        }

        if (v126)
        {
          LODWORD(v187[0]) = 67109120;
          HIDWORD(v187[0]) = v122;
          v127 = _os_log_send_and_compose_impl();

          if (v127)
          {
            sub_100002A8C(v127);
          }
        }

        else
        {

          v127 = 0;
        }

        free(v127);
      }

      CFRelease(v20);
    }

LABEL_276:
    v20 = 0;
LABEL_357:
  }

  return v20;
}

uint64_t sub_10001F508(const char *a1, uint64_t a2, gid_t a3)
{
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  memset(&v42, 0, sizeof(v42));
  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v48 = 0;
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
      *v43 = 136315138;
      *&v43[4] = a1;
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

  if (!stat(a1, &v42))
  {
    goto LABEL_44;
  }

  v11 = *__error();
  if (v11 != 2)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v17 = qword_1000EB308;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_71;
    }

    v48 = 0;
    v18 = sub_1000011A8(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 &= ~1u;
    }

    if (!v18)
    {
      goto LABEL_69;
    }

    goto LABEL_29;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v12 = qword_1000EB308;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v48 = 0;
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
      *v43 = 136315138;
      *&v43[4] = a1;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  if ((mkdir(a1, 0x1C0u) & 0x80000000) == 0 || (v11 = *__error(), v11 == 17))
  {
    if (chown(a1, a2, a3))
    {
      v22 = *__error();
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v23 = qword_1000EB308;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v48 = 0;
        v24 = sub_1000011A8(1);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 &= ~1u;
        }

        if (v24)
        {
          v25 = v23;
          v26 = strerror(v22);
          *v43 = 136315906;
          *&v43[4] = a1;
          v44 = 1024;
          *v45 = a2;
          *&v45[4] = 1024;
          *&v45[6] = a3;
          v46 = 2080;
          v47 = v26;
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

      rmdir(a1);
      return 0;
    }

LABEL_44:
    sub_10001C3A8(a1, a2, a3);
    if (![qword_1000EB2D8 splitUserVolumeEnabled])
    {
      return 1;
    }

    v28 = [NSString stringWithUTF8String:a1];
    v29 = sub_100089A80(qword_1000EB608);
    v41 = 0;
    v30 = [v29 bootstrapVolumeWithMountPoint:v28 user:a2 error:&v41];
    v31 = v41;

    if (v30)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *v43 = 0;
      v33 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        LOWORD(v48) = 0;
        v35 = _os_log_send_and_compose_impl();
        if (!v35)
        {
          goto LABEL_73;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *v43 = 0;
      v36 = sub_1000011A8(1);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v36 &= ~1u;
      }

      if (v36)
      {
        v37 = v32;
        v38 = [v31 code];
        LODWORD(v48) = 67109120;
        HIDWORD(v48) = v38;
        v35 = _os_log_send_and_compose_impl();

        if (!v35)
        {
LABEL_73:
          free(v35);
LABEL_74:

          return 1;
        }

LABEL_62:
        sub_100002A8C(v35);
        goto LABEL_73;
      }
    }

    v35 = 0;
    goto LABEL_73;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v17 = qword_1000EB308;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v48 = 0;
    v39 = sub_1000011A8(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v39 &= ~1u;
    }

    if (!v39)
    {
LABEL_69:
      v21 = 0;
LABEL_70:
      free(v21);
      goto LABEL_71;
    }

LABEL_29:
    v19 = v17;
    v20 = strerror(v11);
    *v43 = 136315394;
    *&v43[4] = a1;
    v44 = 2080;
    *v45 = v20;
    v21 = _os_log_send_and_compose_impl();

    if (v21)
    {
      sub_100002A8C(v21);
    }

    goto LABEL_70;
  }

LABEL_71:

  return 0;
}

void sub_10001FC24(void *value, int a2)
{
  v4 = qword_1000EB5A0;
  if (!qword_1000EB5A0)
  {
    v4 = sub_1000799A8();
    qword_1000EB5A0 = v4;
  }

  CFArrayAppendValue(v4, value);
  qword_1000EB5A8 = CFArrayGetCount(qword_1000EB5A0);
  if (a2 == 1)
  {
    v5 = sub_1000354BC(value);
    if (v5)
    {
      v6 = v5;
      sub_10003590C(v5);

      CFRelease(v6);
    }
  }
}

void sub_10001FCBC()
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
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 == CFDictionaryGetTypeID())
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
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
          }
        }

        ++v5;
      }

      while (CFArrayGetCount(qword_1000EB5A0) > v5);
    }
  }
}

NSObject *sub_10001FF2C(const __CFDictionary *a1)
{
  v1 = sub_100002700(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 objectForKeyedSubscript:kUMUserSessionShortNameKey];
    v4 = v3;
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
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    v4 = 0;
  }

  return v4;
}

uint64_t sub_100020054(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a4)
  {
    *a4 = 45;
  }

  return 0;
}

uint64_t sub_100020068(const __CFString *a1, _DWORD *a2)
{
  v132 = 0;
  if (![qword_1000EB2D8 splitUserVolumeEnabled])
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v10 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        LOWORD(v133) = 0;
        goto LABEL_19;
      }

LABEL_149:
      v13 = 0;
LABEL_150:
      free(v13);
    }

LABEL_151:

    v132 = 0;
    if (!a2)
    {
      return 1;
    }

LABEL_152:
    *a2 = v132;
    return 1;
  }

  v131 = 1;
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v4 = qword_1000EB308;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v5 = sub_1000011A8(1);
    v6 = v4;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v5;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFE;
    }

    if (v7)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
      v8 = _os_log_send_and_compose_impl();

      if (v8)
      {
        sub_100002A8C(v8);
      }
    }

    else
    {

      v8 = 0;
    }

    free(v8);
  }

  v14 = sub_1000725AC(&v132, &v131);
  if (v14)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v15 = qword_1000EB308;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v16 = sub_1000011A8(1);
      v15 = v15;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
      }

      else
      {
        v17 = v16 & 0xFFFFFFFE;
      }

      if (v17)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    goto LABEL_45;
  }

  if (!sub_100021718())
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v9 = qword_1000EB308;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v61 = sub_1000011A8(1);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v62 = v61;
      }

      else
      {
        v62 = v61 & 0xFFFFFFFE;
      }

      if (v62)
      {
        LOWORD(v133) = 0;
LABEL_19:
        v12 = _os_log_send_and_compose_impl();
        v13 = v12;
        if (v12)
        {
          sub_100002A8C(v12);
        }

        goto LABEL_150;
      }

      goto LABEL_149;
    }

    goto LABEL_151;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v15 = qword_1000EB308;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v18 = sub_1000011A8(1);
    v15 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
    }

    else
    {
      v19 = v18 & 0xFFFFFFFE;
    }

    if (v19)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
LABEL_41:
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        sub_100002A8C(v20);
      }

      goto LABEL_44;
    }

LABEL_43:

    v20 = 0;
LABEL_44:
    free(v20);
  }

LABEL_45:

  v21 = sub_100079BA8();
  if ((v21 - 1) > 4)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v22 = qword_1000EB308;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v25 = sub_1000011A8(1);
      v22 = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
      }

      else
      {
        v26 = v25 & 0xFFFFFFFE;
      }

      if (v26)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
LABEL_62:
        v27 = _os_log_send_and_compose_impl();

        if (v27)
        {
          sub_100002A8C(v27);
        }

        goto LABEL_65;
      }

LABEL_64:

      v27 = 0;
LABEL_65:
      free(v27);
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v22 = qword_1000EB308;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v23 = sub_1000011A8(1);
      v22 = v22;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 & 0xFFFFFFFE;
      }

      if (v24)
      {
        v133 = 67109120;
        v134 = v21;
        LODWORD(v127) = 8;
        v126 = &v133;
        goto LABEL_62;
      }

      goto LABEL_64;
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v28 = qword_1000EB308;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v29 = sub_1000011A8(1);
    v30 = v28;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v29;
    }

    else
    {
      v31 = v29 & 0xFFFFFFFE;
    }

    if (v31)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
      v32 = _os_log_send_and_compose_impl();

      if (v32)
      {
        sub_100002A8C(v32);
      }
    }

    else
    {

      v32 = 0;
    }

    free(v32);
  }

  if (v21 == 1)
  {
    sub_100018028("debug panic boot arg umd-migration-debug=1 (before calling transcribe)");
    goto LABEL_285;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v33 = qword_1000EB308;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v34 = sub_1000011A8(1);
    v35 = v33;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 0xFFFFFFFE;
    }

    if (v36)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
      v37 = _os_log_send_and_compose_impl();

      if (v37)
      {
        sub_100002A8C(v37);
      }
    }

    else
    {

      v37 = 0;
    }

    free(v37);
  }

  if (v14)
  {
    v132 = 0;
    v38 = sub_10007262C(&v132);
    v39 = qword_1000EB310 == -1;
    if (!v38)
    {
      goto LABEL_288;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v40 = qword_1000EB308;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v41 = sub_1000011A8(1);
      v40 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
        goto LABEL_107;
      }

      goto LABEL_109;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v40 = qword_1000EB308;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v43 = sub_1000011A8(1);
      v40 = v40;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
      }

      else
      {
        v44 = v43 & 0xFFFFFFFE;
      }

      if (v44)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
LABEL_107:
        v45 = _os_log_send_and_compose_impl();

        if (v45)
        {
          sub_100002A8C(v45);
        }

        goto LABEL_110;
      }

LABEL_109:

      v45 = 0;
LABEL_110:
      free(v45);
    }
  }

  if (v21 == 2)
  {
LABEL_285:
    sub_100018028("debug panic boot arg umd-migration-debug=2 (after calling transcribe)", v126, v127);
    goto LABEL_286;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v46 = qword_1000EB308;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v47 = sub_1000011A8(1);
    v48 = v46;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v47;
    }

    else
    {
      v49 = v47 & 0xFFFFFFFE;
    }

    if (v49)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
      v50 = _os_log_send_and_compose_impl();

      if (v50)
      {
        sub_100002A8C(v50);
      }
    }

    else
    {

      v50 = 0;
    }

    free(v50);
  }

  if (sub_100071178())
  {
    bytes[0] = 0;
    v51 = CFDataCreate(kCFAllocatorDefault, bytes, 1);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v52 = qword_1000EB308;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v53 = sub_1000011A8(1);
      v54 = v52;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v53;
      }

      else
      {
        v55 = v53 & 0xFFFFFFFE;
      }

      if (v55)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
        v56 = _os_log_send_and_compose_impl();

        if (v56)
        {
          sub_100002A8C(v56);
        }
      }

      else
      {

        v56 = 0;
      }

      free(v56);
    }

    v132 = 0;
    v64 = sub_1000714B8(a1, v51, 1, &v132);
    if (v51)
    {
      CFRelease(v51);
    }

    if (!v64)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v110 = qword_1000EB308;
      if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_328;
      }

      v130 = 0;
      v114 = sub_1000011A8(1);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v115 = v114;
      }

      else
      {
        v115 = v114 & 0xFFFFFFFE;
      }

      if (v115)
      {
        goto LABEL_325;
      }

      v21 = 0;
      goto LABEL_327;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v57 = qword_1000EB308;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v65 = sub_1000011A8(1);
      v59 = v57;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v65;
      }

      else
      {
        v66 = v65 & 0xFFFFFFFE;
      }

      if (v66)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
LABEL_167:
        v67 = _os_log_send_and_compose_impl();

        if (v67)
        {
          sub_100002A8C(v67);
        }

        goto LABEL_170;
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

    v57 = qword_1000EB308;
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v58 = sub_1000011A8(1);
      v59 = v57;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v60 = v58;
      }

      else
      {
        v60 = v58 & 0xFFFFFFFE;
      }

      if (v60)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
        goto LABEL_167;
      }

LABEL_169:

      v67 = 0;
LABEL_170:
      free(v67);
    }
  }

  if (v21 == 3)
  {
LABEL_286:
    sub_100018028("debug panic boot arg umd-migration-debug=3 (after calling bind of SDV)", v126, v127);
    goto LABEL_287;
  }

  if (dword_1000EB5B0 != 1)
  {
    *bytes = 0;
    v128 = 1;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v73 = qword_1000EB308;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
    {
      v130 = 0;
      v74 = sub_1000011A8(1);
      v75 = v73;
      if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
      {
        v76 = v74;
      }

      else
      {
        v76 = v74 & 0xFFFFFFFE;
      }

      if (v76)
      {
        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
        v77 = _os_log_send_and_compose_impl();

        if (v77)
        {
          sub_100002A8C(v77);
        }
      }

      else
      {

        v77 = 0;
      }

      free(v77);
    }

    if (sub_1000725EC(bytes, &v128))
    {
      v132 = 0;
      if (!sub_1000729D4(0, &v132))
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v110 = qword_1000EB308;
        if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_336;
        }

        v130 = 0;
        v119 = sub_1000011A8(1);
        v21 = v110;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v120 = v119;
        }

        else
        {
          v120 = v119 & 0xFFFFFFFE;
        }

        if (v120)
        {
          goto LABEL_333;
        }

        v121 = 0;
        goto LABEL_335;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v84 = qword_1000EB308;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v130 = 0;
        v85 = sub_1000011A8(1);
        v84 = v84;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v86 = v85;
        }

        else
        {
          v86 = v85 & 0xFFFFFFFE;
        }

        if (v86)
        {
          LOWORD(v133) = 0;
          LODWORD(v127) = 2;
          v126 = &v133;
          goto LABEL_230;
        }

        goto LABEL_232;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v84 = qword_1000EB308;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v130 = 0;
        v87 = sub_1000011A8(1);
        v84 = v84;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          v88 = v87;
        }

        else
        {
          v88 = v87 & 0xFFFFFFFE;
        }

        if (v88)
        {
          LOWORD(v133) = 0;
          LODWORD(v127) = 2;
          v126 = &v133;
LABEL_230:
          v89 = _os_log_send_and_compose_impl();

          if (v89)
          {
            sub_100002A8C(v89);
          }

          goto LABEL_233;
        }

LABEL_232:

        v89 = 0;
LABEL_233:
        free(v89);
      }
    }

    if (v21 == 4)
    {
      sub_100018028("debug panic boot arg umd-migration-debug=4 (after calling UserVolume MigrateMediaKey)");
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v90 = qword_1000EB308;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v130 = 0;
        v91 = sub_1000011A8(1);
        v92 = v90;
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
        {
          v93 = v91;
        }

        else
        {
          v93 = v91 & 0xFFFFFFFE;
        }

        if (v93)
        {
          LOWORD(v133) = 0;
          LODWORD(v127) = 2;
          v126 = &v133;
          v94 = _os_log_send_and_compose_impl();

          if (v94)
          {
            sub_100002A8C(v94);
          }
        }

        else
        {

          v94 = 0;
        }

        free(v94);
      }

      v132 = 0;
      v95 = sub_10007324C("/var/mobile", &v132);
      v96 = qword_1000EB310 == -1;
      if (v95)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v78 = qword_1000EB308;
        if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_259;
        }

        v130 = 0;
        v97 = sub_1000011A8(1);
        v80 = v78;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v98 = v97;
        }

        else
        {
          v98 = v97 & 0xFFFFFFFE;
        }

        if (!v98)
        {
          goto LABEL_257;
        }

        LOWORD(v133) = 0;
        LODWORD(v127) = 2;
        v126 = &v133;
LABEL_255:
        v99 = _os_log_send_and_compose_impl();

        if (v99)
        {
          sub_100002A8C(v99);
        }

        goto LABEL_258;
      }
    }

    if (!v96)
    {
      sub_100089CEC();
    }

    v110 = qword_1000EB308;
    if (!os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_332;
    }

    v130 = 0;
    v116 = sub_1000011A8(1);
    v21 = v110;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v117 = v116;
    }

    else
    {
      v117 = v116 & 0xFFFFFFFE;
    }

    if (v117)
    {
      goto LABEL_329;
    }

    v118 = 0;
    goto LABEL_331;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v68 = qword_1000EB308;
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v69 = sub_1000011A8(1);
    v70 = v68;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = v69;
    }

    else
    {
      v71 = v69 & 0xFFFFFFFE;
    }

    if (v71)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
      v72 = _os_log_send_and_compose_impl();

      if (v72)
      {
        sub_100002A8C(v72);
      }
    }

    else
    {

      v72 = 0;
    }

    free(v72);
  }

  if (!sub_1000738C4(1, &v132))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v78 = qword_1000EB308;
    if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_259;
    }

    v130 = 0;
    v82 = sub_1000011A8(1);
    v80 = v78;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v83 = v82;
    }

    else
    {
      v83 = v82 & 0xFFFFFFFE;
    }

    if (!v83)
    {
      goto LABEL_257;
    }

    v133 = 67109120;
    v134 = v132;
    LODWORD(v127) = 8;
    v126 = &v133;
    goto LABEL_255;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v78 = qword_1000EB308;
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v79 = sub_1000011A8(1);
    v80 = v78;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = v79;
    }

    else
    {
      v81 = v79 & 0xFFFFFFFE;
    }

    if (v81)
    {
      LOWORD(v133) = 0;
      LODWORD(v127) = 2;
      v126 = &v133;
      goto LABEL_255;
    }

LABEL_257:

    v99 = 0;
LABEL_258:
    free(v99);
  }

LABEL_259:

  v132 = 0;
  if (v21 == 5)
  {
LABEL_287:
    sub_100018028("debug panic boot arg umd-migration-debug=5 (after calling setLastUserOnVolume)", v126, v127);
LABEL_288:
    if (v39)
    {
      goto LABEL_290;
    }

    while (1)
    {
      sub_100089CEC();
LABEL_290:
      v110 = qword_1000EB308;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        v130 = 0;
        v111 = sub_1000011A8(1);
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          v112 = v111;
        }

        else
        {
          v112 = v111 & 0xFFFFFFFE;
        }

        if (v112)
        {
          v133 = 67109120;
          v134 = v132;
          v122 = _os_log_send_and_compose_impl();
          v113 = v122;
          if (v122)
          {
            sub_100002A8C(v122);
          }
        }

        else
        {
          v113 = 0;
        }

        free(v113);
      }

      sub_100018028("VolumeMigration-Step1: APFSVolumeTranscribePFK failed with error:%d, bailing", v132);
LABEL_325:
      v133 = 67109120;
      v134 = v132;
      v123 = _os_log_send_and_compose_impl();
      v21 = v123;
      if (v123)
      {
        sub_100002A8C(v123);
      }

LABEL_327:
      free(v21);
LABEL_328:

      sub_100018028("VolumeMigration-Step2: APFSVolumeEnableUserProtectionWithOptions failed with %d, bailing", v132);
LABEL_329:
      v133 = 67109120;
      v134 = v132;
      v124 = _os_log_send_and_compose_impl();

      v118 = 0;
      if (v124)
      {
        sub_100002A8C(v124);
        v118 = v124;
      }

LABEL_331:
      free(v118);
LABEL_332:

      sub_100018028("VolumeMigration-Step4: Setting Last booted User as Primary User failed with error:%d", v132);
LABEL_333:
      v133 = 67109120;
      v134 = v132;
      v125 = _os_log_send_and_compose_impl();

      v121 = 0;
      if (v125)
      {
        sub_100002A8C(v125);
        v121 = v125;
      }

LABEL_335:
      free(v121);
LABEL_336:

      sub_100018028("VolumeMigration-Step3: Migrating UserVolume Media Key failed with error:%d, bailing", v132);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v100 = qword_1000EB308;
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
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
      LOWORD(v133) = 0;
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
  }

  sub_1000218B8();
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v105 = qword_1000EB308;
  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
  {
    v130 = 0;
    v106 = sub_1000011A8(1);
    v107 = v105;
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      v108 = v106;
    }

    else
    {
      v108 = v106 & 0xFFFFFFFE;
    }

    if (v108)
    {
      LOWORD(v133) = 0;
      v109 = _os_log_send_and_compose_impl();

      if (v109)
      {
        sub_100002A8C(v109);
      }
    }

    else
    {

      v109 = 0;
    }

    free(v109);
  }

  if (a2)
  {
    goto LABEL_152;
  }

  return 1;
}

id sub_100021718()
{
  v0 = sub_1000013A0(qword_1000EB608);
  v1 = [v0 fileExistsAtPath:@"/private/var//keybags/umVolumeMigration-inprogress.kb" isDirectory:0];

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
LABEL_17:
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = 0;
LABEL_20:
      free(v8);
    }
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
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v1;
}

id sub_1000218B8()
{
  v0 = sub_1000013A0(qword_1000EB608);
  v1 = [v0 removeFileAtPath:@"/private/var//keybags/umVolumeMigration-inprogress.kb" error:0];

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
LABEL_17:
        v7 = _os_log_send_and_compose_impl();
        v8 = v7;
        if (v7)
        {
          sub_100002A8C(v7);
        }

        goto LABEL_20;
      }

LABEL_19:
      v8 = 0;
LABEL_20:
      free(v8);
    }
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
      v5 = sub_1000011A8(1);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v5;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFE;
      }

      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  return v1;
}

BOOL sub_100021A58(uint64_t a1)
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
      v17 = 136315138;
      v18 = a1;
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

  v16 = 0;
  v7 = sub_100072384(a1, &v16);
  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
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
        v17 = 136315138;
        v18 = a1;
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_1000011A8(1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v17 = 136315394;
        v18 = a1;
        v19 = 1024;
        v20 = v16;
LABEL_29:
        v13 = _os_log_send_and_compose_impl();
        v14 = v13;
        if (v13)
        {
          sub_100002A8C(v13);
        }

        goto LABEL_32;
      }

LABEL_31:
      v14 = 0;
LABEL_32:
      free(v14);
    }
  }

  return v7 != 0;
}

uint64_t sub_100021D04(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v10 = sub_100016954(NSUUID, v9);

  if (v7)
  {
    v11 = [v7 length];
  }

  else
  {
    v11 = 0;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v12 = qword_1000EB318;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v56[0] = 0;
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
      LODWORD(v57) = 67109120;
      HIDWORD(v57) = v11;
      v15 = _os_log_send_and_compose_impl();
      v16 = v15;
      if (v15)
      {
        sub_100002A8C(v15);
      }
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

  v17 = sub_100089A80(qword_1000EB608);
  v55 = 0;
  v18 = [v17 createIdentityWithUUID:v10 passcode:v7 existingSession:501 existingSessionPasscode:v8 isACMCredential:a3 error:&v55];

  v19 = v55;
  if ((v18 & 1) == 0)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v25 = qword_1000EB318;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_78;
    }

    v57 = 0;
    v26 = sub_1000011A8(1);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      LODWORD(v56[0]) = 138543362;
      *(v56 + 4) = v19;
      v28 = _os_log_send_and_compose_impl();
      if (!v28)
      {
LABEL_77:
        free(v28);
        goto LABEL_78;
      }

LABEL_33:
      sub_100002A8C(v28);
      goto LABEL_77;
    }

LABEL_76:
    v28 = 0;
    goto LABEL_77;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v20 = qword_1000EB318;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v56[0] = 0;
    v21 = sub_1000011A8(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      LOWORD(v57) = 0;
      v23 = _os_log_send_and_compose_impl();
      v24 = v23;
      if (v23)
      {
        sub_100002A8C(v23);
      }
    }

    else
    {
      v24 = 0;
    }

    free(v24);
  }

  v54 = v19;
  v29 = sub_100022428(v10, 999, &v54);
  v30 = v54;

  if (v29)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v31 = qword_1000EB318;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v56[0] = 0;
      v32 = sub_1000011A8(1);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v32;
      }

      else
      {
        v33 = v32 & 0xFFFFFFFE;
      }

      if (v33)
      {
        LOWORD(v57) = 0;
        v34 = _os_log_send_and_compose_impl();
        v35 = v34;
        if (v34)
        {
          sub_100002A8C(v34);
        }
      }

      else
      {
        v35 = 0;
      }

      free(v35);
    }

    v41 = sub_100089A80(qword_1000EB608);
    v53 = v30;
    v42 = [v41 unloadIdentityFromSession:999 error:&v53];
    v19 = v53;

    if (v42)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v43 = qword_1000EB318;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v56[0] = 0;
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
          LOWORD(v57) = 0;
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

      v51 = 1;
LABEL_88:
      v30 = v19;
      goto LABEL_89;
    }

    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v25 = qword_1000EB318;
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
LABEL_78:

      v51 = 0;
      if (a4)
      {
        *a4 = [v19 code];
      }

      goto LABEL_88;
    }

    v57 = 0;
    v48 = sub_1000011A8(1);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v48 &= ~1u;
    }

    if (v48)
    {
      v49 = v25;
      v50 = [v19 code];
      LODWORD(v56[0]) = 134217984;
      *(v56 + 4) = v50;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
        goto LABEL_77;
      }

      goto LABEL_33;
    }

    goto LABEL_76;
  }

  if (a4)
  {
    *a4 = [v30 code];
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v36 = qword_1000EB318;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v57 = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        LODWORD(v56[0]) = 138543362;
        *(v56 + 4) = v30;
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
  }

  v51 = 0;
LABEL_89:

  return v51;
}

uint64_t sub_100022428(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = sub_100089A80(qword_1000EB608);
  v7 = [v6 isIdentityLoadedIntoSession:a2];

  if (v7)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v8 = qword_1000EB308;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v35[0] = 0;
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
        LODWORD(v36) = 67109120;
        HIDWORD(v36) = a2;
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

    v18 = 0;
LABEL_46:
    v31 = 1;
    goto LABEL_47;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v35[0] = 0;
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
      LODWORD(v36) = 67109120;
      HIDWORD(v36) = a2;
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

  v19 = sub_100089A80(qword_1000EB608);
  v34 = 0;
  v20 = [v19 loadIdentity:v5 intoSession:a2 error:&v34];
  v18 = v34;

  if (v20)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v21 = qword_1000EB308;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v35[0] = 0;
      v22 = sub_1000011A8(1);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        LOWORD(v36) = 0;
        v24 = _os_log_send_and_compose_impl();
        v25 = v24;
        if (v24)
        {
          sub_100002A8C(v24);
        }
      }

      else
      {
        v25 = 0;
      }

      free(v25);
    }

    goto LABEL_46;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v26 = qword_1000EB308;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v36 = 0;
    v27 = sub_1000011A8(1);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 &= ~1u;
    }

    if (v27)
    {
      v28 = v26;
      v29 = [v18 code];
      LODWORD(v35[0]) = 134217984;
      *(v35 + 4) = v29;
      v30 = _os_log_send_and_compose_impl();

      if (v30)
      {
        sub_100002A8C(v30);
      }
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }

  if (a3)
  {
    v33 = v18;
    v31 = 0;
    *a3 = v18;
  }

  else
  {
    v31 = 0;
  }

LABEL_47:

  return v31;
}

id sub_100022858(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v10 = sub_100016954(NSUUID, v9);

  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v11 = qword_1000EB318;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v55[0] = 0;
    v12 = sub_1000011A8(1);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 & 0xFFFFFFFE;
    }

    if (v13)
    {
      LOWORD(v53) = 0;
      v14 = _os_log_send_and_compose_impl();
      v15 = v14;
      if (v14)
      {
        sub_100002A8C(v14);
      }
    }

    else
    {
      v15 = 0;
    }

    free(v15);
  }

  v54 = 0;
  v16 = sub_100022428(v10, 999, &v54);
  v17 = v54;
  if (v16)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v18 = qword_1000EB318;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v55[0] = 0;
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
        LOWORD(v53) = 0;
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

    v28 = sub_100089A80(qword_1000EB608);
    v52 = v17;
    v29 = [v28 changeSecretrForIdentityWithUUID:v10 oldPasscode:v7 newPasscode:v8 existingSession:999 isACMCredential:a3 error:&v52];
    v30 = v52;

    if (v29)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v31 = qword_1000EB318;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v55[0] = 0;
        v32 = sub_1000011A8(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = v32;
        }

        else
        {
          v33 = v32 & 0xFFFFFFFE;
        }

        if (v33)
        {
          LOWORD(v53) = 0;
          v34 = _os_log_send_and_compose_impl();
          v35 = v34;
          if (v34)
          {
            sub_100002A8C(v34);
          }
        }

        else
        {
          v35 = 0;
        }

        free(v35);
      }
    }

    else
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v36 = qword_1000EB318;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v53 = 0;
        v37 = sub_1000011A8(1);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
        }

        else
        {
          v38 = v37 & 0xFFFFFFFE;
        }

        if (v38)
        {
          LODWORD(v55[0]) = 138543362;
          *(v55 + 4) = v30;
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

      if (a4)
      {
        *a4 = [v30 code];
      }
    }

    v41 = sub_100089A80(qword_1000EB608);
    v51 = v30;
    v42 = [v41 unloadIdentityFromSession:999 error:&v51];
    v17 = v51;

    if (v42)
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v43 = qword_1000EB318;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v55[0] = 0;
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
        LOWORD(v53) = 0;
        v46 = _os_log_send_and_compose_impl();
        if (!v46)
        {
          goto LABEL_83;
        }

        goto LABEL_81;
      }
    }

    else
    {
      if (qword_1000EB320 != -1)
      {
        sub_100089D68();
      }

      v43 = qword_1000EB318;
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_84;
      }

      v53 = 0;
      v47 = sub_1000011A8(1);
      if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v47 &= ~1u;
      }

      if (v47)
      {
        v48 = v43;
        v49 = [v17 code];
        LODWORD(v55[0]) = 134217984;
        *(v55 + 4) = v49;
        v46 = _os_log_send_and_compose_impl();

        if (!v46)
        {
LABEL_83:
          free(v46);
LABEL_84:

          goto LABEL_85;
        }

LABEL_81:
        sub_100002A8C(v46);
        goto LABEL_83;
      }
    }

    v46 = 0;
    goto LABEL_83;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v23 = qword_1000EB318;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v53 = 0;
    v24 = sub_1000011A8(1);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      LODWORD(v55[0]) = 138543362;
      *(v55 + 4) = v17;
      v26 = _os_log_send_and_compose_impl();
      v27 = v26;
      if (v26)
      {
        sub_100002A8C(v26);
      }
    }

    else
    {
      v27 = 0;
    }

    free(v27);
  }

  v29 = 0;
  if (a4)
  {
    *a4 = [v17 code];
  }

LABEL_85:

  return v29;
}

uint64_t sub_100022F48(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v6 = sub_100016954(NSUUID, v5);

  if (qword_1000EB320 != -1)
  {
    sub_100089D90();
  }

  v7 = qword_1000EB318;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v54[0] = 0;
    v8 = sub_1000011A8(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      LOWORD(v52) = 0;
      v10 = _os_log_send_and_compose_impl();
      v11 = v10;
      if (v10)
      {
        sub_100002A8C(v10);
      }
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  v53 = 0;
  v12 = sub_100022428(v6, 999, &v53);
  v13 = v53;
  if ((v12 & 1) == 0)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v19 = qword_1000EB318;
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_85;
    }

    v52 = 0;
    v20 = sub_1000011A8(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 & 0xFFFFFFFE;
    }

    if (v21)
    {
      LODWORD(v54[0]) = 138412290;
      *(v54 + 4) = v13;
      goto LABEL_81;
    }

LABEL_83:
    v47 = 0;
LABEL_84:
    free(v47);
    goto LABEL_85;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v14 = qword_1000EB318;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v54[0] = 0;
    v15 = sub_1000011A8(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 & 0xFFFFFFFE;
    }

    if (v16)
    {
      LOWORD(v52) = 0;
      v17 = _os_log_send_and_compose_impl();
      v18 = v17;
      if (v17)
      {
        sub_100002A8C(v17);
      }
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  v22 = sub_100089A80(qword_1000EB608);
  v51 = v13;
  v23 = [v22 unloadIdentityFromSession:999 error:&v51];
  v24 = v51;

  if (v23)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v25 = qword_1000EB318;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v54[0] = 0;
      v26 = sub_1000011A8(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v26;
      }

      else
      {
        v27 = v26 & 0xFFFFFFFE;
      }

      if (v27)
      {
        LOWORD(v52) = 0;
        v28 = _os_log_send_and_compose_impl();
        if (!v28)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      goto LABEL_50;
    }
  }

  else
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v25 = qword_1000EB318;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v52 = 0;
      v29 = sub_1000011A8(1);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v29 &= ~1u;
      }

      if (v29)
      {
        v30 = v25;
        v31 = [v24 code];
        LODWORD(v54[0]) = 134217984;
        *(v54 + 4) = v31;
        v28 = _os_log_send_and_compose_impl();

        if (!v28)
        {
LABEL_51:
          free(v28);
          goto LABEL_52;
        }

LABEL_49:
        sub_100002A8C(v28);
        goto LABEL_51;
      }

LABEL_50:
      v28 = 0;
      goto LABEL_51;
    }
  }

LABEL_52:

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v32 = qword_1000EB318;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v54[0] = 0;
    v33 = sub_1000011A8(1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      LOWORD(v52) = 0;
      v35 = _os_log_send_and_compose_impl();
      v36 = v35;
      if (v35)
      {
        sub_100002A8C(v35);
      }
    }

    else
    {
      v36 = 0;
    }

    free(v36);
  }

  v37 = sub_100089A80(qword_1000EB608);
  v50 = v24;
  v38 = [v37 deleteIdentity:v6 error:&v50];
  v13 = v50;

  if (v38)
  {
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v39 = qword_1000EB318;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v54[0] = 0;
      v40 = sub_1000011A8(1);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        LOWORD(v52) = 0;
        v42 = _os_log_send_and_compose_impl();
        v43 = v42;
        if (v42)
        {
          sub_100002A8C(v42);
        }
      }

      else
      {
        v43 = 0;
      }

      free(v43);
    }

    v48 = 1;
    goto LABEL_91;
  }

  if (qword_1000EB320 != -1)
  {
    sub_100089D68();
  }

  v19 = qword_1000EB318;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 0;
    v44 = sub_1000011A8(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v44;
    }

    else
    {
      v45 = v44 & 0xFFFFFFFE;
    }

    if (v45)
    {
      LODWORD(v54[0]) = 138543362;
      *(v54 + 4) = v13;
LABEL_81:
      v46 = _os_log_send_and_compose_impl();
      v47 = v46;
      if (v46)
      {
        sub_100002A8C(v46);
      }

      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_85:

  v48 = 0;
  if (a4)
  {
    *a4 = [v13 code];
  }

LABEL_91:

  return v48;
}

uint64_t sub_100023684(int *a1)
{
  v2 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v3 = sub_100016954(NSUUID, v2);

  v4 = sub_100089A80(qword_1000EB608);
  v5 = [v4 isIdentityLoadedIntoSession:999];

  if (!v5)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v49[0] = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v50 = 0x3E704000100;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v18 = sub_100089A80(qword_1000EB608);
    v48 = 0;
    v17 = [v18 loadIdentity:v3 intoSession:999 error:&v48];
    v19 = v48;

    if (v17)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v20 = qword_1000EB308;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v49[0] = 0;
        v21 = sub_1000011A8(1);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
        }

        else
        {
          v22 = v21 & 0xFFFFFFFE;
        }

        if (v22)
        {
          LOWORD(v50) = 0;
          v23 = _os_log_send_and_compose_impl();
          v24 = v23;
          if (v23)
          {
            sub_100002A8C(v23);
          }
        }

        else
        {
          v24 = 0;
        }

        free(v24);
      }

      v30 = sub_100089A80(qword_1000EB608);
      v47 = v19;
      v31 = [v30 unloadIdentityFromSession:999 error:&v47];
      v16 = v47;

      if (v31)
      {
        v32 = 0;
        if (!a1)
        {
          goto LABEL_88;
        }

        goto LABEL_87;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v33 = qword_1000EB308;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 0;
        v34 = sub_1000011A8(1);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 &= ~1u;
        }

        if (v34)
        {
          v35 = v33;
          v36 = [v16 code];
          LODWORD(v49[0]) = 134217984;
          *(v49 + 4) = v36;
          v37 = _os_log_send_and_compose_impl();

          if (v37)
          {
            sub_100002A8C(v37);
          }
        }

        else
        {
          v37 = 0;
        }

        free(v37);
      }

      v32 = 0;
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v50 = 0;
        v26 = sub_1000011A8(1);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 &= ~1u;
        }

        if (v26)
        {
          v27 = v25;
          v28 = [v19 code];
          LODWORD(v49[0]) = 134217984;
          *(v49 + 4) = v28;
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

      if ([v19 code] == -536362989 || objc_msgSend(v19, "code") == -536870160)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 0;
          v38 = sub_1000011A8(1);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v38 &= ~1u;
          }

          if (v38)
          {
            v39 = v33;
            v40 = [v19 code];
            LODWORD(v49[0]) = 134217984;
            *(v49 + 4) = v40;
            v41 = _os_log_send_and_compose_impl();

            if (v41)
            {
              sub_100002A8C(v41);
            }
          }

          else
          {
            v41 = 0;
          }

          free(v41);
        }

        v32 = 2;
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v33 = qword_1000EB308;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 0;
          v42 = sub_1000011A8(1);
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v42 &= ~1u;
          }

          if (v42)
          {
            v43 = v33;
            v44 = [v19 code];
            LODWORD(v49[0]) = 134217984;
            *(v49 + 4) = v44;
            v45 = _os_log_send_and_compose_impl();

            if (v45)
            {
              sub_100002A8C(v45);
            }
          }

          else
          {
            v45 = 0;
          }

          free(v45);
        }

        v32 = 5;
      }

      v16 = v19;
    }

    if (!a1)
    {
      goto LABEL_88;
    }

LABEL_87:
    *a1 = v32;
    goto LABEL_88;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v6 = qword_1000EB308;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v49[0] = 0;
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
      v50 = 0x3E704000100;
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

  v16 = 0;
  v17 = 1;
LABEL_88:

  return v17;
}

uint64_t sub_100023DF8(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = [NSString stringWithCString:"2457711A-523C-4604-B75A-F48A571D5036" encoding:4];
  v7 = sub_100016954(NSUUID, v6);

  v8 = sub_100089A80(qword_1000EB608);
  v9 = [v8 isIdentityLoadedIntoSession:999];

  v10 = &off_1000EB000;
  if (v9)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089D14();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v57[0] = 0;
      v12 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
      }

      else
      {
        v13 = v12 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v58 = 0x3E704000100;
        v14 = _os_log_send_and_compose_impl();
        v15 = v14;
        if (v14)
        {
          sub_100002A8C(v14);
        }
      }

      else
      {
        v15 = 0;
      }

      free(v15);
    }

    v21 = 0;
    goto LABEL_23;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v16 = qword_1000EB308;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v57[0] = 0;
    v17 = sub_1000011A8(1);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 0xFFFFFFFE;
    }

    if (v18)
    {
      LOWORD(v58) = 0;
      v19 = _os_log_send_and_compose_impl();
      v20 = v19;
      if (v19)
      {
        sub_100002A8C(v19);
      }
    }

    else
    {
      v20 = 0;
    }

    free(v20);
  }

  v35 = sub_100089A80(qword_1000EB608);
  v56 = 0;
  v36 = [v35 loadIdentity:v7 intoSession:999 error:&v56];
  v21 = v56;

  if (v36)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v11 = qword_1000EB308;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v57[0] = 0;
      v37 = sub_1000011A8(1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
      }

      else
      {
        v38 = v37 & 0xFFFFFFFE;
      }

      if (v38)
      {
        LOWORD(v58) = 0;
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

LABEL_23:

    v22 = sub_100089A80(qword_1000EB608);
    v55 = v21;
    v23 = [v22 verifyIdentityPasswordInSession:999 passcode:v5 isACMCredential:a2 error:&v55];
    v24 = v55;

    if (v23)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v25 = qword_1000EB308;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v57[0] = 0;
        v26 = sub_1000011A8(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
        }

        else
        {
          v27 = v26 & 0xFFFFFFFE;
        }

        if (v27)
        {
          LOWORD(v58) = 0;
          v28 = _os_log_send_and_compose_impl();
          v29 = v28;
          if (v28)
          {
            sub_100002A8C(v28);
          }
        }

        else
        {
          v29 = 0;
        }

        free(v29);
      }

      if (v9)
      {
        v23 = 1;
LABEL_71:
        v21 = v24;
        goto LABEL_91;
      }

      goto LABEL_73;
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v30 = qword_1000EB308;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v58 = 0;
      v31 = sub_1000011A8(1);
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 &= ~1u;
      }

      if (v31)
      {
        v32 = v30;
        v33 = [v24 code];
        LODWORD(v57[0]) = 134217984;
        *(v57 + 4) = v33;
        v34 = _os_log_send_and_compose_impl();

        if (v34)
        {
          sub_100002A8C(v34);
        }

        v10 = &off_1000EB000;
      }

      else
      {
        v34 = 0;
      }

      free(v34);
    }

    if (a3)
    {
      *a3 = 22;
      if (v9)
      {
LABEL_70:
        v23 = 0;
        goto LABEL_71;
      }
    }

    else if (v9)
    {
      goto LABEL_70;
    }

LABEL_73:
    v46 = sub_100089A80(qword_1000EB608);
    v54 = v24;
    v47 = [v46 unloadIdentityFromSession:999 error:&v54];
    v21 = v54;

    if ((v47 & 1) == 0)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v48 = v10[97];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v58 = 0;
        v49 = sub_1000011A8(1);
        if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 &= ~1u;
        }

        if (v49)
        {
          v50 = v48;
          v51 = [v21 code];
          LODWORD(v57[0]) = 134217984;
          *(v57 + 4) = v51;
          v52 = _os_log_send_and_compose_impl();

          if (v52)
          {
            sub_100002A8C(v52);
          }
        }

        else
        {
          v52 = 0;
        }

        free(v52);
      }
    }

    goto LABEL_91;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v41 = qword_1000EB308;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v58 = 0;
    v42 = sub_1000011A8(1);
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 &= ~1u;
    }

    if (v42)
    {
      v43 = v41;
      v44 = [v21 code];
      LODWORD(v57[0]) = 134217984;
      *(v57 + 4) = v44;
      v45 = _os_log_send_and_compose_impl();

      if (v45)
      {
        sub_100002A8C(v45);
      }
    }

    else
    {
      v45 = 0;
    }

    free(v45);
  }

  v23 = 0;
  if (a3)
  {
    *a3 = 2;
  }

LABEL_91:

  return v23;
}

__CFDictionary *sub_100024578(const __CFDictionary *a1, UInt8 *a2, CFIndex a3, int *a4)
{
  v335 = 0;
  v334 = 0;
  if (dword_1000EB5B0 != 1 && !_os_feature_enabled_impl())
  {
    v26 = 45;
LABEL_573:
    v52 = 0;
    if (a4 && v26)
    {
      v52 = 0;
      *a4 = v26;
    }

    return v52;
  }

  v8 = sub_100002700(a1);
  v9 = v8;
  bytes = a2;
  v332 = a3;
  if (!v8)
  {
    if (dword_1000EB5B0 == 1)
    {
      v330 = a1;
      if (dword_1000EA3D4 != -1)
      {
        if (!dword_1000EA3D4 || !qword_1000EB5A8 || qword_1000EB5A8 != dword_1000EA3D4 + 1)
        {
          goto LABEL_227;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v21 = qword_1000EB308;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buffer = 0;
          v22 = sub_1000011A8(1);
          v23 = v21;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v22;
          }

          else
          {
            v24 = v22 & 0xFFFFFFFE;
          }

          if (v24)
          {
            v340.f_bsize = 67109376;
            v340.f_iosize = dword_1000EA3D4;
            LOWORD(v340.f_blocks) = 2048;
            *(&v340.f_blocks + 2) = qword_1000EB5A8;
            v25 = _os_log_send_and_compose_impl();

            if (v25)
            {
              sub_100002A8C(v25);
            }
          }

          else
          {

            v25 = 0;
          }

          free(v25);
        }

        if (sub_100027FB0() == 1)
        {
          if (qword_1000EB5A8 == dword_1000EA3D4 + 1)
          {
            if (qword_1000EB310 != -1)
            {
              sub_100089CEC();
            }

            v32 = qword_1000EB308;
            if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_188;
            }

            *&v340.f_bsize = 0;
            v79 = sub_1000011A8(1);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v80 = v79;
            }

            else
            {
              v80 = v79 & 0xFFFFFFFE;
            }

            if (!v80)
            {
              goto LABEL_186;
            }

            *buffer = 0;
            goto LABEL_50;
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v9 = 0;
          v62 = qword_1000EB308;
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_201;
          }

          *&v340.f_bsize = 0;
          v83 = sub_1000011A8(1);
          v64 = v62;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v84 = v83;
          }

          else
          {
            v84 = v83 & 0xFFFFFFFE;
          }

          if (v84)
          {
            *buffer = 0;
LABEL_197:
            v85 = _os_log_send_and_compose_impl();

            if (v85)
            {
              sub_100002A8C(v85);
            }

            goto LABEL_200;
          }

          goto LABEL_199;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v32 = qword_1000EB308;
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_188;
        }

        *&v340.f_bsize = 0;
        v81 = sub_1000011A8(1);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v82 = v81;
        }

        else
        {
          v82 = v81 & 0xFFFFFFFE;
        }

        if (!v82)
        {
          goto LABEL_186;
        }

        *buffer = 0;
        goto LABEL_50;
      }

      if (!qword_1000EB5D8)
      {
        goto LABEL_227;
      }

      memset(&v340, 0, 512);
      strcpy(buffer, "/private/var");
      v43 = statfs(buffer, &v340);
      if (qword_1000EB5A8 == 16)
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v44 = qword_1000EB308;
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_149;
        }

        *&v340.f_bsize = 0;
        v45 = sub_1000011A8(1);
        v44 = v44;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v46 = v45;
        }

        else
        {
          v46 = v45 & 0xFFFFFFFE;
        }

        if (v46)
        {
          *buffer = 0;
          goto LABEL_106;
        }
      }

      else
      {
        if (v43)
        {
          v58 = 0;
        }

        else
        {
          v58 = (v340.f_bfree * v340.f_bsize) / 0x100000;
        }

        if (qword_1000EB5D8 <= v58)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v62 = qword_1000EB308;
          if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_201;
          }

          *&v340.f_bsize = 0;
          v63 = sub_1000011A8(1);
          v64 = v62;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = v63;
          }

          else
          {
            v65 = v63 & 0xFFFFFFFE;
          }

          if (v65)
          {
            *buffer = 0;
            goto LABEL_197;
          }

          goto LABEL_199;
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v44 = qword_1000EB308;
        if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_149;
        }

        *&v340.f_bsize = 0;
        v59 = sub_1000011A8(1);
        v44 = v44;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v60 = v59;
        }

        else
        {
          v60 = v59 & 0xFFFFFFFE;
        }

        if (v60)
        {
          *buffer = 0;
LABEL_106:
          v61 = _os_log_send_and_compose_impl();

          if (v61)
          {
            sub_100002A8C(v61);
          }

          goto LABEL_148;
        }
      }

      v61 = 0;
LABEL_148:
      free(v61);
LABEL_149:

      if (sub_100027FB0())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v62 = qword_1000EB308;
        if (!os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_201;
        }

        *&v340.f_bsize = 0;
        v75 = sub_1000011A8(1);
        v64 = v62;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v76 = v75;
        }

        else
        {
          v76 = v75 & 0xFFFFFFFE;
        }

        if (v76)
        {
          *buffer = 0;
          goto LABEL_197;
        }

LABEL_199:

        v85 = 0;
LABEL_200:
        free(v85);
LABEL_201:

        goto LABEL_227;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v32 = qword_1000EB308;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_188;
      }

      *&v340.f_bsize = 0;
      v77 = sub_1000011A8(1);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v77;
      }

      else
      {
        v78 = v77 & 0xFFFFFFFE;
      }

      if (!v78)
      {
        goto LABEL_186;
      }

      *buffer = 0;
LABEL_50:
      v35 = _os_log_send_and_compose_impl();
      v36 = v35;
      if (v35)
      {
        sub_100002A8C(v35);
      }

      goto LABEL_187;
    }

    if (_os_feature_enabled_impl())
    {
      if (qword_1000EB5A8 < 15)
      {
        v330 = a1;
        if (qword_1000EB310 != -1)
        {
          sub_100089D14();
        }

        v47 = qword_1000EB308;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *&v340.f_bsize = 0;
          v48 = sub_1000011A8(1);
          v49 = v47;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = v48;
          }

          else
          {
            v50 = v48 & 0xFFFFFFFE;
          }

          if (v50)
          {
            *buffer = 67109120;
            *&buffer[4] = qword_1000EB5A8 + 1;
            v51 = _os_log_send_and_compose_impl();

            if (v51)
            {
              sub_100002A8C(v51);
            }
          }

          else
          {

            v51 = 0;
          }

          free(v51);
        }

        if (!dword_1000EB5B0)
        {
          dword_1000EB5B0 = 2;
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v70 = qword_1000EB308;
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *&v340.f_bsize = 0;
            v71 = sub_1000011A8(1);
            v72 = v70;
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = v71;
            }

            else
            {
              v73 = v71 & 0xFFFFFFFE;
            }

            if (v73)
            {
              *buffer = 0;
              v74 = _os_log_send_and_compose_impl();

              if (v74)
              {
                sub_100002A8C(v74);
              }
            }

            else
            {

              v74 = 0;
            }

            free(v74);
          }

          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v86 = qword_1000EB308;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *&v340.f_bsize = 0;
            v87 = sub_1000011A8(1);
            v88 = v86;
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              v89 = v87;
            }

            else
            {
              v89 = v87 & 0xFFFFFFFE;
            }

            if (v89)
            {
              *buffer = 0;
              v90 = _os_log_send_and_compose_impl();

              if (v90)
              {
                sub_100002A8C(v90);
              }
            }

            else
            {

              v90 = 0;
            }

            free(v90);
          }

          [qword_1000EB2D8 createVolumeMountsDir:@"/var/Users"];
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v91 = qword_1000EB308;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *&v340.f_bsize = 0;
            v92 = sub_1000011A8(1);
            v93 = v91;
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = v92;
            }

            else
            {
              v94 = v92 & 0xFFFFFFFE;
            }

            if (v94)
            {
              *buffer = 0;
              v95 = _os_log_send_and_compose_impl();

              if (v95)
              {
                sub_100002A8C(v95);
              }
            }

            else
            {

              v95 = 0;
            }

            free(v95);
          }

          UMLSetInternalLogHandlers();
        }

LABEL_227:
        v329 = a4;
        if (dword_1000EB5B0 == 2)
        {
          v96 = 503;
        }

        else
        {
          v96 = 502;
        }

        if (qword_1000EB5A0)
        {
          *valuePtr = 0;
          do
          {
            v97 = v96;
            if (CFArrayGetCount(qword_1000EB5A0) < 1)
            {
              break;
            }

            v98 = 0;
            v99 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(qword_1000EB5A0, v98);
              v101 = CFGetTypeID(ValueAtIndex);
              if (v101 == CFDictionaryGetTypeID())
              {
                Value = CFDictionaryGetValue(ValueAtIndex, kUMUserSessionIDKey);
                if (Value && (v103 = Value, v104 = CFGetTypeID(Value), v104 == CFNumberGetTypeID()) && CFNumberGetValue(v103, kCFNumberIntType, valuePtr))
                {
                  if (*valuePtr == v97)
                  {
                    v99 = 1;
                  }
                }

                else
                {
                  if (qword_1000EB310 != -1)
                  {
                    sub_100089CEC();
                  }

                  v105 = qword_1000EB308;
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                  {
                    *&v340.f_bsize = 0;
                    v106 = sub_1000011A8(1);
                    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                    {
                      v107 = v106;
                    }

                    else
                    {
                      v107 = v106 & 0xFFFFFFFE;
                    }

                    if (v107)
                    {
                      *buffer = 67109120;
                      *&buffer[4] = v97;
                      v108 = _os_log_send_and_compose_impl();
                      v109 = v108;
                      if (v108)
                      {
                        sub_100002A8C(v108);
                      }
                    }

                    else
                    {
                      v109 = 0;
                    }

                    free(v109);
                  }
                }
              }

              ++v98;
            }

            while (CFArrayGetCount(qword_1000EB5A0) > v98);
            v96 = v97 + 1;
          }

          while (v99);
        }

        else
        {
          v97 = v96;
        }

        HIDWORD(v335) = v97;
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        a4 = v329;
        a1 = v330;
        v110 = qword_1000EB308;
        if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
        {
          *&v340.f_bsize = 0;
          v111 = sub_1000011A8(1);
          v112 = v110;
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            v113 = v111;
          }

          else
          {
            v113 = v111 & 0xFFFFFFFE;
          }

          if (v113)
          {
            *buffer = 67109120;
            *&buffer[4] = HIDWORD(v335);
            v114 = _os_log_send_and_compose_impl();

            if (v114)
            {
              sub_100002A8C(v114);
            }
          }

          else
          {

            v114 = 0;
          }

          free(v114);
        }

        v52 = sub_10007990C();
        v115 = CFNumberCreate(0, kCFNumberIntType, &v335 + 4);
        CFDictionarySetValue(v52, kUMUserSessionIDKey, v115);
        CFRelease(v115);
        LODWORD(v335) = HIDWORD(v335);
        v116 = CFNumberCreate(0, kCFNumberIntType, &v335);
        CFDictionarySetValue(v52, kUMUserSessionGroupIDKey, v116);
        CFRelease(v116);
        CFDictionarySetValue(v52, kUMUserSessionTypeKey, kUMUserSessionManagedDevice);
        ++qword_1000EA3E0;
        v117 = CFNumberCreate(0, kCFNumberLongLongType, &qword_1000EA3E0);
        CFDictionarySetValue(v52, kUMUserSessionAPNSIDKey, v117);
        CFRelease(v117);
        if (dword_1000EB5B0 == 1)
        {
          snprintf(&v340, 0x400uLL, "euser%d");
        }

        else
        {
          snprintf(&v340, 0x400uLL, "user%d");
        }

        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v118 = qword_1000EB308;
        if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          v119 = sub_1000011A8(1);
          v120 = v118;
          if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
          {
            v121 = v119;
          }

          else
          {
            v121 = v119 & 0xFFFFFFFE;
          }

          if (v121)
          {
            *buffer = 136315138;
            *&buffer[4] = &v340;
            LODWORD(v328) = 12;
            v327 = buffer;
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
          a1 = v330;
        }

        v123 = CFStringCreateWithCString(0, &v340, 0x8000100u);
        CFDictionarySetValue(v52, kUMUserSessionShortNameKey, v123);
        v124 = kUMUserSessionNameKey;
        TypeID = CFStringGetTypeID();
        if (!sub_100027E10(v52, a1, v124, TypeID))
        {
          CFDictionarySetValue(v52, kUMUserSessionNameKey, v123);
        }

        v126 = kUMUserSessionFirstNameKey;
        v127 = CFStringGetTypeID();
        sub_100027E10(v52, a1, v126, v127);
        v128 = kUMUserSessionLastNameKey;
        v129 = CFStringGetTypeID();
        sub_100027E10(v52, a1, v128, v129);
        v130 = kUMUserSessionDisplayNameKey;
        v131 = CFStringGetTypeID();
        sub_100027E10(v52, a1, v130, v131);
        if (_os_feature_enabled_impl())
        {
          if (!CFDictionaryContainsKey(v52, kUMUserSessionNameKey))
          {
            CFDictionarySetValue(v52, kUMUserSessionNameKey, v123);
          }

          if (!CFDictionaryContainsKey(v52, kUMUserSessionDisplayNameKey))
          {
            CFDictionarySetValue(v52, kUMUserSessionDisplayNameKey, v123);
          }
        }

        v132 = CFDictionaryContainsKey(a1, kUMUserSessionLanguageKey);
        v133 = kUMUserSessionLanguageKey;
        if (v132)
        {
          v134 = CFStringGetTypeID();
          sub_100027E10(v52, a1, v133, v134);
          if (!v123)
          {
            goto LABEL_291;
          }
        }

        else
        {
          CFDictionarySetValue(v52, kUMUserSessionLanguageKey, @"en_US");
          if (!v123)
          {
LABEL_291:
            if ((_os_feature_enabled_impl() & 1) != 0 || (v135 = kUMUserSessionUUIDKey, v136 = CFStringGetTypeID(), !sub_100027E10(v52, a1, v135, v136)))
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v137 = qword_1000EB308;
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
              {
                v138 = a1;
                *buffer = 0;
                v139 = sub_1000011A8(1);
                v140 = v137;
                if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
                {
                  v141 = v139;
                }

                else
                {
                  v141 = v139 & 0xFFFFFFFE;
                }

                if (v141)
                {
                  *valuePtr = 0;
                  LODWORD(v328) = 2;
                  v327 = valuePtr;
                  v142 = _os_log_send_and_compose_impl();

                  if (v142)
                  {
                    sub_100002A8C(v142);
                  }
                }

                else
                {

                  v142 = 0;
                }

                free(v142);
                a1 = v138;
              }

              v143 = CFUUIDCreate(0);
              v144 = CFUUIDCreateString(0, v143);
              CFDictionarySetValue(v52, kUMUserSessionUUIDKey, v144);
            }

            if (!CFDictionaryContainsKey(a1, kUMUserSessionAlternateDSIDKey) || (v145 = kUMUserSessionAlternateDSIDKey, v146 = CFStringGetTypeID(), !sub_100027E10(v52, a1, v145, v146)))
            {
              if (qword_1000EB310 != -1)
              {
                sub_100089CEC();
              }

              v147 = qword_1000EB308;
              if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
              {
                v148 = a1;
                *buffer = 0;
                v149 = sub_1000011A8(1);
                v150 = v147;
                if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
                {
                  v151 = v149;
                }

                else
                {
                  v151 = v149 & 0xFFFFFFFE;
                }

                if (v151)
                {
                  *valuePtr = 0;
                  LODWORD(v328) = 2;
                  v327 = valuePtr;
                  v152 = _os_log_send_and_compose_impl();

                  if (v152)
                  {
                    sub_100002A8C(v152);
                  }
                }

                else
                {

                  v152 = 0;
                }

                free(v152);
                a1 = v148;
              }

              v153 = CFUUIDCreate(0);
              v154 = CFUUIDCreateString(0, v153);
              CFDictionarySetValue(v52, kUMUserSessionAlternateDSIDKey, v154);
              if (v153)
              {
                CFRelease(v153);
              }

              if (v154)
              {
                CFRelease(v154);
              }
            }

            if (CFDictionaryContainsKey(a1, kUMUserSessionFileInfoKey))
            {
              v155 = kUMUserSessionFileInfoKey;
              v156 = CFStringGetTypeID();
              sub_100027E10(v52, a1, v155, v156);
            }

            if (CFDictionaryContainsKey(a1, kUMUserSessionOpaqueDataKey))
            {
              v157 = kUMUserSessionOpaqueDataKey;
              v158 = CFDataGetTypeID();
              sub_100027E10(v52, a1, v157, v158);
            }

            Current = CFAbsoluteTimeGetCurrent();
            v160 = CFDateCreate(kCFAllocatorDefault, Current);
            CFDictionarySetValue(v52, kUMUserSessionCreateTimeStampKey, v160);
            CFDictionarySetValue(v52, kUMUserSessionLoginTimeStampKey, v160);
            if (v160)
            {
              CFRelease(v160);
            }

            CFDictionarySetValue(v52, kUMUserSessionForegroundKey, kCFBooleanFalse);
            if (HIDWORD(v335) == 502)
            {
              v161 = kCFBooleanTrue;
            }

            else
            {
              v161 = kCFBooleanFalse;
            }

            CFDictionarySetValue(v52, kUMUserSessionLoginUserKey, v161);
            CFDictionarySetValue(v52, kUMUserSessionDirtyKey, kCFBooleanFalse);
            CFDictionarySetValue(v52, kUMUserSessionDisabledKey, kCFBooleanFalse);
            v11 = 0;
            goto LABEL_334;
          }
        }

        CFRelease(v123);
        goto LABEL_291;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v27 = qword_1000EB308;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *&v340.f_bsize = 0;
        v28 = sub_1000011A8(1);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v29 = v28;
        }

        else
        {
          v29 = v28 & 0xFFFFFFFE;
        }

        if (v29)
        {
          *buffer = 0;
          v30 = _os_log_send_and_compose_impl();
          v31 = v30;
          if (v30)
          {
            sub_100002A8C(v30);
          }
        }

        else
        {
          v31 = 0;
        }

        free(v31);
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v40 = qword_1000EB308;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *&v340.f_bsize = 0;
      v66 = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v67 = v66;
      }

      else
      {
        v67 = v66 & 0xFFFFFFFE;
      }

      if (v67)
      {
        *buffer = 0;
LABEL_130:
        v68 = _os_log_send_and_compose_impl();
        v69 = v68;
        if (v68)
        {
          sub_100002A8C(v68);
        }

        goto LABEL_133;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089D14();
      }

      v40 = qword_1000EB308;
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_134;
      }

      *&v340.f_bsize = 0;
      v41 = sub_1000011A8(1);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v41;
      }

      else
      {
        v42 = v41 & 0xFFFFFFFE;
      }

      if (v42)
      {
        *buffer = 0;
        goto LABEL_130;
      }
    }

    v69 = 0;
LABEL_133:
    free(v69);
LABEL_134:

    v26 = -12;
    goto LABEL_573;
  }

  v10 = sub_100002454(v8, @"MKBUserSessionFileSystemSet");
  v11 = v10 != 0;
  v12 = sub_1000023E8(v9, kUMUserSessionIDKey);
  HIDWORD(v335) = v12;
  LODWORD(v335) = sub_1000023E8(v9, kUMUserSessionGroupIDKey);
  if (qword_1000EB310 != -1)
  {
    sub_100089D14();
  }

  v13 = qword_1000EB308;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v9;
    v15 = a4;
    v16 = a1;
    *&v340.f_bsize = 0;
    v17 = sub_1000011A8(1);
    v18 = v13;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v17;
    }

    else
    {
      v19 = v17 & 0xFFFFFFFE;
    }

    if (v19)
    {
      *buffer = 67109120;
      *&buffer[4] = v12;
      LODWORD(v328) = 8;
      v327 = buffer;
      v20 = _os_log_send_and_compose_impl();

      if (v20)
      {
        sub_100002A8C(v20);
      }
    }

    else
    {

      v20 = 0;
    }

    a1 = v16;
    free(v20);
    a4 = v15;
    v9 = v14;
  }

  if (sub_100002454(v9, kUMUserSessionDisabledKey))
  {
    CFRelease(v9);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v32 = qword_1000EB308;
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_188;
    }

    *&v340.f_bsize = 0;
    v33 = sub_1000011A8(1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = v33;
    }

    else
    {
      v34 = v33 & 0xFFFFFFFE;
    }

    if (v34)
    {
      *buffer = 67109120;
      *&buffer[4] = HIDWORD(v335);
      goto LABEL_50;
    }

LABEL_186:
    v36 = 0;
LABEL_187:
    free(v36);
LABEL_188:

    v26 = -4;
    goto LABEL_573;
  }

  if (!CFDictionaryContainsKey(v9, kUMUserSessionLanguageKey))
  {
    v37 = CFDictionaryContainsKey(a1, kUMUserSessionLanguageKey);
    v38 = kUMUserSessionLanguageKey;
    if (v37)
    {
      v39 = CFStringGetTypeID();
      sub_100027E10(v9, a1, v38, v39);
    }

    else
    {
      CFDictionarySetValue(v9, kUMUserSessionLanguageKey, @"en_US");
    }
  }

  if (HIDWORD(v335) == 501)
  {
    v52 = v9;
    if (v10)
    {
      goto LABEL_334;
    }

    CFDictionarySetValue(v9, @"MKBUserSessionFileSystemSet", kCFBooleanTrue);
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v53 = qword_1000EB308;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *&v340.f_bsize = 0;
      v54 = sub_1000011A8(1);
      v55 = v53;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v54;
      }

      else
      {
        v56 = v54 & 0xFFFFFFFE;
      }

      if (v56)
      {
        *buffer = 0;
        LODWORD(v328) = 2;
        v327 = buffer;
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
    }

    v11 = 1;
  }

  v52 = v9;
LABEL_334:
  v162 = sub_100088F2C(qword_1000EB608);
  v163 = sub_100089AC4(v162);
  v164 = HIDWORD(v335);

  if (v163 != v164)
  {
    CFDictionarySetValue(v52, kUMUserSessionForegroundKey, kCFBooleanFalse);
  }

  if (CFDictionaryContainsKey(a1, kUMUserSessionRequiresPasscodeKey))
  {
    v165 = sub_1000023E8(a1, kUMUserSessionRequiresPasscodeKey);
  }

  else
  {
    v165 = 60;
  }

  v166 = a4;
  v334 = v165;
  if (!v11)
  {
    v169 = CFUUIDCreate(0);
    v170 = CFUUIDCreateString(0, v169);
    if (v169)
    {
      CFRelease(v169);
    }

    bzero(buffer, 0x400uLL);
    CFStringGetCString(v170, buffer, 1024, 0x8000100u);
    if ((_os_feature_enabled_impl() & 1) != 0 || dword_1000EB5B0 == 1 && HIDWORD(v335) != 502)
    {
      LODWORD(v333[0]) = 0;
      if (![qword_1000EB2D8 createVolumeWithSession:v52 size:qword_1000EB5D8 << 20 userName:v170 error:v333 forPersona:0 userDataVolume:{1, v327, v328}])
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v176 = qword_1000EB308;
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          v177 = sub_1000011A8(1);
          v178 = v176;
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
          {
            v179 = v177;
          }

          else
          {
            v179 = v177 & 0xFFFFFFFE;
          }

          if (v179)
          {
            LODWORD(v338[0]) = 67109120;
            HIDWORD(v338[0]) = v333[0];
            v180 = _os_log_send_and_compose_impl();

            if (v180)
            {
              sub_100002A8C(v180);
            }
          }

          else
          {

            v180 = 0;
          }

          free(v180);
        }

        v26 = v333[0];
        if (v52)
        {
          CFRelease(v52);
        }

        if (v170)
        {
          CFRelease(v170);
        }

        a4 = v166;
        goto LABEL_573;
      }

      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v171 = qword_1000EB308;
      if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        v172 = sub_1000011A8(1);
        v173 = v171;
        if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
        {
          v174 = v172;
        }

        else
        {
          v174 = v172 & 0xFFFFFFFE;
        }

        if (v174)
        {
          LOWORD(v338[0]) = 0;
          v175 = _os_log_send_and_compose_impl();

          if (v175)
          {
            sub_100002A8C(v175);
          }
        }

        else
        {

          v175 = 0;
        }

        free(v175);
      }

      bzero(&v340, 0x400uLL);
      if (_os_feature_enabled_impl())
      {
        strcpy(&v340, "/var/mobile");
      }

      else
      {
        snprintf(&v340, 0x400uLL, "/var/Users/%s", buffer);
      }

      v217 = CFStringCreateWithCString(0, &v340, 0x8000100u);
      CFDictionarySetValue(v52, kUMUserSessionLibinfoHomeDirKey, v217);
      if (v217)
      {
        CFRelease(v217);
      }

      bzero(&v340, 0x400uLL);
      snprintf(&v340, 0x400uLL, "/private/var/Users/%s", buffer);
      v218 = CFStringCreateWithCString(0, &v340, 0x8000100u);
      CFDictionarySetValue(v52, kUMUserSessionHomeDirKey, v218);
      if (v218)
      {
        CFRelease(v218);
      }
    }

    if (!CFDictionaryContainsKey(v52, kUMUserSessionUserVolumeTypeKey))
    {
      CFDictionarySetValue(v52, kUMUserSessionUserVolumeTypeKey, qword_1000EB2F8);
    }

    if (v170)
    {
      CFRelease(v170);
    }

    v219 = CFDataCreate(kCFAllocatorDefault, bytes, v332);
    v220 = sub_100028584(v52, v219);
    if (v219)
    {
      CFRelease(v219);
    }

    if (v220)
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v221 = qword_1000EB308;
      if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        v222 = sub_1000011A8(1);
        v223 = v221;
        if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
        {
          v224 = v222;
        }

        else
        {
          v224 = v222 & 0xFFFFFFFE;
        }

        if (v224)
        {
          LOWORD(v338[0]) = 0;
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

        free(v225);
      }

      if (!CFDictionaryContainsKey(v52, kUMUserSessionVolumeDeviceNodeKey))
      {
LABEL_518:
        v211 = &off_1000EB000;
        if (dword_1000EB5B0 != 1)
        {
LABEL_581:
          sub_10001F508(&v340, HIDWORD(v335), v335);
          CFDictionarySetValue(v52, @"MKBUserSessionFileSystemSet", kCFBooleanTrue);
          goto LABEL_582;
        }

        if (v334 >= 1 && (v240 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v334)) != 0)
        {
          v241 = v240;
          CFDictionarySetValue(v52, kUMUserSessionRequiresPasscodeKey, v240);
          CFRelease(v241);
        }

        else
        {
          v334 = 0;
        }

        v242 = sub_10007990C();
        v338[0] = v334;
        v243 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, v338);
        if (v243)
        {
          v244 = v243;
          CFDictionarySetValue(v242, @"GracePeriod", v243);
          CFRelease(v244);
        }

        v245 = sub_10008410C(-HIDWORD(v335), bytes, v332);
        if (v242)
        {
          CFRelease(v242);
        }

        if (v245)
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v246 = qword_1000EB308;
          if (!os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_580;
          }

          v247 = v9;
          v333[0] = 0;
          v248 = sub_1000011A8(1);
          v246 = v246;
          if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
          {
            v249 = v248;
          }

          else
          {
            v249 = v248 & 0xFFFFFFFE;
          }

          if (v249)
          {
            *valuePtr = 67109632;
            *&valuePtr[4] = v334;
            *&valuePtr[8] = 1024;
            *&valuePtr[10] = HIDWORD(v335);
            LOWORD(v337) = 1024;
            *(&v337 + 2) = v245;
            v250 = _os_log_send_and_compose_impl();

            if (v250)
            {
              sub_100002A8C(v250);
            }
          }

          else
          {

            v250 = 0;
          }

          v9 = v247;
        }

        else
        {
          if (qword_1000EB310 != -1)
          {
            sub_100089CEC();
          }

          v246 = qword_1000EB308;
          if (!os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_580;
          }

          v333[0] = 0;
          v251 = sub_1000011A8(1);
          v246 = v246;
          if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
          {
            v252 = v251;
          }

          else
          {
            v252 = v251 & 0xFFFFFFFE;
          }

          if (v252)
          {
            *valuePtr = 67109376;
            *&valuePtr[4] = HIDWORD(v335);
            *&valuePtr[8] = 1024;
            *&valuePtr[10] = v334;
            v250 = _os_log_send_and_compose_impl();

            if (v250)
            {
              sub_100002A8C(v250);
            }
          }

          else
          {

            v250 = 0;
          }
        }

        free(v250);
LABEL_580:

        v211 = &off_1000EB000;
        goto LABEL_581;
      }

      if ([qword_1000EB2D8 mountVolumeWithSession:v52 mountPath:0 error:0 forPersona:0])
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v231 = qword_1000EB308;
        if (!os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_517;
        }

        *valuePtr = 0;
        v232 = sub_1000011A8(1);
        v231 = v231;
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          v233 = v232;
        }

        else
        {
          v233 = v232 & 0xFFFFFFFE;
        }

        if (v233)
        {
          LOWORD(v338[0]) = 0;
          goto LABEL_496;
        }
      }

      else
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v231 = qword_1000EB308;
        if (!os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_517;
        }

        *valuePtr = 0;
        v234 = sub_1000011A8(1);
        v231 = v231;
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
        {
          v235 = v234;
        }

        else
        {
          v235 = v234 & 0xFFFFFFFE;
        }

        if (v235)
        {
          LOWORD(v338[0]) = 0;
LABEL_496:
          v236 = _os_log_send_and_compose_impl();

          if (v236)
          {
            sub_100002A8C(v236);
          }

          goto LABEL_516;
        }
      }

      v236 = 0;
LABEL_516:
      free(v236);
LABEL_517:

      goto LABEL_518;
    }

    LODWORD(v333[0]) = 0;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v226 = qword_1000EB308;
    if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      v227 = sub_1000011A8(1);
      v228 = v226;
      if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
      {
        v229 = v227;
      }

      else
      {
        v229 = v227 & 0xFFFFFFFE;
      }

      if (v229)
      {
        LOWORD(v338[0]) = 0;
        v230 = _os_log_send_and_compose_impl();

        if (v230)
        {
          sub_100002A8C(v230);
        }
      }

      else
      {

        v230 = 0;
      }

      free(v230);
    }

    a4 = v166;
    if ([qword_1000EB2D8 deleteVolumeWithSession:v52 error:v333])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v196 = qword_1000EB308;
      if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_570;
      }

      *valuePtr = 0;
      v253 = sub_1000011A8(1);
      v196 = v196;
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
      {
        v254 = v253;
      }

      else
      {
        v254 = v253 & 0xFFFFFFFE;
      }

      if (v254)
      {
        LOWORD(v338[0]) = 0;
        goto LABEL_565;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v196 = qword_1000EB308;
      if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_570;
      }

      *valuePtr = 0;
      v255 = sub_1000011A8(1);
      v196 = v196;
      if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
      {
        v256 = v255;
      }

      else
      {
        v256 = v255 & 0xFFFFFFFE;
      }

      if (v256)
      {
        LODWORD(v338[0]) = 67109120;
        HIDWORD(v338[0]) = v333[0];
LABEL_565:
        v257 = _os_log_send_and_compose_impl();

        if (v257)
        {
          sub_100002A8C(v257);
        }

        goto LABEL_568;
      }
    }

    v257 = 0;
LABEL_568:
    v216 = v257;
    goto LABEL_569;
  }

  if (bytes)
  {
    v167 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v334);
    if (CFDictionaryContainsKey(v52, kUMUserSessionRequiresPasscodeKey))
    {
      v168 = sub_1000023E8(v52, kUMUserSessionRequiresPasscodeKey);
      if (v168 != v334)
      {
        if (v334)
        {
          CFDictionaryReplaceValue(v52, kUMUserSessionRequiresPasscodeKey, v167);
        }

        else
        {
          CFDictionaryRemoveValue(v52, kUMUserSessionRequiresPasscodeKey);
        }
      }
    }

    else if (v334 >= 1)
    {
      CFDictionarySetValue(v52, kUMUserSessionRequiresPasscodeKey, v167);
    }

    if (v167)
    {
      CFRelease(v167);
    }
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v181 = qword_1000EB308;
  if (os_log_type_enabled(v181, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 0;
    v182 = sub_1000011A8(1);
    v183 = v181;
    if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
    {
      v184 = v182;
    }

    else
    {
      v184 = v182 & 0xFFFFFFFE;
    }

    if (v184)
    {
      v185 = "NULL";
      if (v332)
      {
        v186 = bytes == 0;
      }

      else
      {
        v186 = 1;
      }

      if (!v186)
      {
        v185 = "SECRET";
      }

      *buffer = 136315138;
      *&buffer[4] = v185;
      v187 = _os_log_send_and_compose_impl();

      if (v187)
      {
        sub_100002A8C(v187);
      }
    }

    else
    {

      v187 = 0;
    }

    free(v187);
  }

  v188 = v9;

  v189 = CFDataCreate(kCFAllocatorDefault, bytes, v332);
  v190 = sub_100028D8C(v52, v189);
  if (v189)
  {
    CFRelease(v189);
  }

  if (!v190)
  {
    a4 = v166;
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v196 = qword_1000EB308;
    if (!os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_570;
    }

    *buffer = 0;
    v197 = sub_1000011A8(1);
    v198 = v196;
    if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
    {
      v199 = v197;
    }

    else
    {
      v199 = v197 & 0xFFFFFFFE;
    }

    if (v199)
    {
      *valuePtr = 0;
      v200 = _os_log_send_and_compose_impl();

      if (v200)
      {
        sub_100002A8C(v200);
      }
    }

    else
    {

      v200 = 0;
    }

    v216 = v200;
LABEL_569:
    free(v216);
LABEL_570:

    if (v52)
    {
      CFRelease(v52);
    }

    v26 = 22;
    goto LABEL_573;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v191 = qword_1000EB308;
  if (os_log_type_enabled(v191, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v192 = sub_1000011A8(1);
    v193 = v191;
    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
    {
      v194 = v192;
    }

    else
    {
      v194 = v192 & 0xFFFFFFFE;
    }

    if (v194)
    {
      *valuePtr = 0;
      v195 = _os_log_send_and_compose_impl();

      if (v195)
      {
        sub_100002A8C(v195);
      }
    }

    else
    {

      v195 = 0;
    }

    free(v195);
  }

  v201 = sub_100088F2C(qword_1000EB608);
  if ((sub_100089A48(v201) & 1) != 0 || HIDWORD(v335) != -1)
  {
    v202 = sub_100088F2C(qword_1000EB608);
    v203 = sub_100089AC4(v202);
    v204 = HIDWORD(v335);

    v186 = v203 == v204;
    v9 = v188;
    if (v186)
    {
      goto LABEL_418;
    }

    v210 = CFDictionaryContainsKey(v52, kUMUserSessionVolumeDeviceNodeKey);
    v211 = &off_1000EB000;
    if (!v210)
    {
      goto LABEL_582;
    }

    if ([qword_1000EB2D8 mountVolumeWithSession:v52 mountPath:0 error:0 forPersona:0])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v212 = qword_1000EB308;
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_641;
      }

      *buffer = 0;
      v213 = sub_1000011A8(1);
      v214 = v212;
      if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
      {
        v215 = v213;
      }

      else
      {
        v215 = v213 & 0xFFFFFFFE;
      }

      if (v215)
      {
        *valuePtr = 0;
        goto LABEL_513;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v212 = qword_1000EB308;
      if (!os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_641;
      }

      *buffer = 0;
      v237 = sub_1000011A8(1);
      v214 = v212;
      if (os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT))
      {
        v238 = v237;
      }

      else
      {
        v238 = v237 & 0xFFFFFFFE;
      }

      if (v238)
      {
        *valuePtr = 0;
LABEL_513:
        v239 = _os_log_send_and_compose_impl();

        if (v239)
        {
          sub_100002A8C(v239);
        }

        goto LABEL_640;
      }
    }

    v239 = 0;
LABEL_640:
    free(v239);
    v9 = v188;
LABEL_641:

    goto LABEL_582;
  }

  v9 = v188;
LABEL_418:
  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v205 = qword_1000EB308;
  if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
  {
    *buffer = 0;
    v206 = sub_1000011A8(1);
    v207 = v205;
    if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
    {
      v208 = v206;
    }

    else
    {
      v208 = v206 & 0xFFFFFFFE;
    }

    if (v208)
    {
      *valuePtr = 0;
      v209 = _os_log_send_and_compose_impl();

      if (v209)
      {
        sub_100002A8C(v209);
      }
    }

    else
    {

      v209 = 0;
    }

    free(v209);
    v9 = v188;
  }

  v211 = &off_1000EB000;
LABEL_582:
  v259 = sub_100079590(v52, kUMUserSessionHomeDirKey);
  sub_100070A64(v259, HIDWORD(v335), v335);
  if (*(v211 + 364) != 1)
  {
    if (!_os_feature_enabled_impl() || (sub_100088F2C(qword_1000EB608), v266 = objc_claimAutoreleasedReturnValue(), v267 = sub_100089AC4(v266), v268 = HIDWORD(v335), v266, v267 == v268))
    {
LABEL_674:
      if (v9)
      {
        return v52;
      }

      goto LABEL_675;
    }

    LODWORD(v338[0]) = 0;
    if ([qword_1000EB2D8 unmountVolumeWithSession:v52 mountPath:0 error:v338 force:1])
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v269 = qword_1000EB308;
      if (!os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_673;
      }

      *valuePtr = 0;
      v270 = sub_1000011A8(1);
      v269 = v269;
      if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
      {
        v271 = v270;
      }

      else
      {
        v271 = v270 & 0xFFFFFFFE;
      }

      if (v271)
      {
        LOWORD(v333[0]) = 0;
        goto LABEL_613;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v269 = qword_1000EB308;
      if (!os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_673;
      }

      *valuePtr = 0;
      v272 = sub_1000011A8(1);
      v269 = v269;
      if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
      {
        v273 = v272;
      }

      else
      {
        v273 = v272 & 0xFFFFFFFE;
      }

      if (v273)
      {
        LOWORD(v333[0]) = 0;
LABEL_613:
        v274 = _os_log_send_and_compose_impl();

        if (v274)
        {
          sub_100002A8C(v274);
        }

        goto LABEL_638;
      }
    }

    v274 = 0;
LABEL_638:
    free(v274);
LABEL_673:

    goto LABEL_674;
  }

  if (!byte_1000EA3D8)
  {
LABEL_663:
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v269 = qword_1000EB308;
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
    {
      v292 = v9;
      v338[0] = 0;
      v293 = sub_1000011A8(1);
      v294 = v269;
      if (!os_log_type_enabled(v294, OS_LOG_TYPE_DEFAULT))
      {
        v293 &= ~1u;
      }

      if (v293)
      {
        v295 = byte_1000EA3D8;
        v296 = sub_100002454(v52, kUMUserSessionHasSyncBagKey);
        *valuePtr = 67109376;
        *&valuePtr[4] = v295;
        *&valuePtr[8] = 1024;
        *&valuePtr[10] = v296;
        v297 = _os_log_send_and_compose_impl();

        if (v297)
        {
          sub_100002A8C(v297);
        }
      }

      else
      {

        v297 = 0;
      }

      free(v297);
      v9 = v292;
    }

    goto LABEL_673;
  }

  if (sub_100002454(v52, kUMUserSessionHasSyncBagKey) == 1)
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v260 = qword_1000EB308;
    if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
    {
      v261 = v9;
      *valuePtr = 0;
      v262 = sub_1000011A8(1);
      v263 = v260;
      if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
      {
        v264 = v262;
      }

      else
      {
        v264 = v262 & 0xFFFFFFFE;
      }

      if (v264)
      {
        LOWORD(v338[0]) = 0;
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

      free(v265);
      v9 = v261;
    }

    if (sub_100002454(v52, kUMUserSessionHasSyncBagKey))
    {
      if (MKBUserSessionVerifySyncBagForUser())
      {
        if (qword_1000EB310 != -1)
        {
          sub_100089CEC();
        }

        v275 = qword_1000EB308;
        if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
        {
          v276 = v9;
          *valuePtr = 0;
          v277 = sub_1000011A8(1);
          v278 = v275;
          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
          {
            v279 = v277;
          }

          else
          {
            v279 = v277 & 0xFFFFFFFE;
          }

          if (v279)
          {
            LODWORD(v338[0]) = 67109120;
            HIDWORD(v338[0]) = HIDWORD(v335);
            v280 = _os_log_send_and_compose_impl();

            if (v280)
            {
              sub_100002A8C(v280);
            }
          }

          else
          {

            v280 = 0;
          }

          free(v280);
          v9 = v276;
        }

        CFDictionarySetValue(v52, kUMUserSessionHasSyncBagKey, kCFBooleanFalse);
        goto LABEL_661;
      }
    }

    else
    {
      if (qword_1000EB310 != -1)
      {
        sub_100089CEC();
      }

      v281 = qword_1000EB308;
      if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
      {
        *valuePtr = 0;
        v282 = sub_1000011A8(1);
        if (os_log_type_enabled(v281, OS_LOG_TYPE_DEFAULT))
        {
          v283 = v282;
        }

        else
        {
          v283 = v282 & 0xFFFFFFFE;
        }

        if (v283)
        {
          LOWORD(v338[0]) = 0;
          v284 = _os_log_send_and_compose_impl();
          v285 = v284;
          if (v284)
          {
            sub_100002A8C(v284);
          }
        }

        else
        {
          v285 = 0;
        }

        free(v285);
      }
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v286 = qword_1000EB308;
    if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
    {
      v287 = v9;
      *valuePtr = 0;
      v288 = sub_1000011A8(1);
      v289 = v286;
      if (os_log_type_enabled(v289, OS_LOG_TYPE_DEFAULT))
      {
        v290 = v288;
      }

      else
      {
        v290 = v288 & 0xFFFFFFFE;
      }

      if (v290)
      {
        LODWORD(v338[0]) = 67109120;
        HIDWORD(v338[0]) = HIDWORD(v335);
        v291 = _os_log_send_and_compose_impl();

        if (v291)
        {
          sub_100002A8C(v291);
        }
      }

      else
      {

        v291 = 0;
      }

      free(v291);
      v9 = v287;
    }
  }

LABEL_661:
  if (!byte_1000EA3D8 || sub_100002454(v52, kUMUserSessionHasSyncBagKey))
  {
    goto LABEL_663;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v303 = qword_1000EB308;
  if (os_log_type_enabled(v303, OS_LOG_TYPE_DEFAULT))
  {
    v304 = v9;
    *valuePtr = 0;
    v305 = sub_1000011A8(1);
    v306 = v303;
    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
    {
      v307 = v305;
    }

    else
    {
      v307 = v305 & 0xFFFFFFFE;
    }

    if (v307)
    {
      LODWORD(v338[0]) = 67109120;
      HIDWORD(v338[0]) = HIDWORD(v335);
      v308 = _os_log_send_and_compose_impl();

      if (v308)
      {
        sub_100002A8C(v308);
      }
    }

    else
    {

      v308 = 0;
    }

    free(v308);
    v9 = v304;
  }

  if (sub_1000299FC(v52))
  {
    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v269 = qword_1000EB308;
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEFAULT))
    {
      v316 = v9;
      *valuePtr = 0;
      v317 = sub_1000011A8(1);
      v318 = v269;
      if (os_log_type_enabled(v318, OS_LOG_TYPE_DEFAULT))
      {
        v319 = v317;
      }

      else
      {
        v319 = v317 & 0xFFFFFFFE;
      }

      if (v319)
      {
        LODWORD(v338[0]) = 67109120;
        HIDWORD(v338[0]) = HIDWORD(v335);
        v320 = _os_log_send_and_compose_impl();

        if (v320)
        {
          sub_100002A8C(v320);
        }
      }

      else
      {

        v320 = 0;
      }

      free(v320);
      v9 = v316;
    }

    goto LABEL_673;
  }

  if (qword_1000EB310 != -1)
  {
    sub_100089CEC();
  }

  v321 = qword_1000EB308;
  if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
  {
    v322 = v9;
    *valuePtr = 0;
    v323 = sub_1000011A8(1);
    v324 = v321;
    if (os_log_type_enabled(v324, OS_LOG_TYPE_DEFAULT))
    {
      v325 = v323;
    }

    else
    {
      v325 = v323 & 0xFFFFFFFE;
    }

    if (v325)
    {
      LODWORD(v338[0]) = 67109120;
      HIDWORD(v338[0]) = HIDWORD(v335);
      v326 = _os_log_send_and_compose_impl();

      if (v326)
      {
        sub_100002A8C(v326);
      }
    }

    else
    {

      v326 = 0;
    }

    free(v326);
    v9 = v322;
  }

  CFDictionarySetValue(v52, kUMUserSessionHasSyncBagKey, kCFBooleanTrue);
  if (!v9)
  {
LABEL_675:
    sub_10001FC24(v52, 1);
    sub_10008B3A4(qword_1000EB2E0, v52);
    sub_10001FCBC();
    sub_100018C80();
    if (qword_1000EB320 != -1)
    {
      sub_100089D68();
    }

    v298 = qword_1000EB318;
    if (os_log_type_enabled(v298, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      v299 = sub_1000011A8(1);
      v300 = v298;
      if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
      {
        v301 = v299;
      }

      else
      {
        v301 = v299 & 0xFFFFFFFE;
      }

      if (v301)
      {
        LODWORD(v338[0]) = 67109120;
        HIDWORD(v338[0]) = HIDWORD(v335);
        v302 = _os_log_send_and_compose_impl();

        if (v302)
        {
          sub_100002A8C(v302);
        }
      }

      else
      {

        v302 = 0;
      }

      free(v302);
    }

    if (qword_1000EB310 != -1)
    {
      sub_100089CEC();
    }

    v309 = qword_1000EB308;
    if (os_log_type_enabled(v309, OS_LOG_TYPE_DEFAULT))
    {
      v338[0] = 0;
      v310 = sub_1000011A8(1);
      v311 = v309;
      if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
      {
        v312 = v310;
      }

      else
      {
        v312 = v310 & 0xFFFFFFFE;
      }

      if (v312)
      {
        *valuePtr = 136315394;
        *&valuePtr[4] = "loadUserSession";
        *&valuePtr[12] = 2080;
        v337 = kMobileKeyBagUserChangedNotificationToken;
        v313 = _os_log_send_and_compose_impl();

        if (v313)
        {
          sub_100002A8C(v313);
        }
      }

      else
      {

        v313 = 0;
      }

      free(v313);
    }

    v314 = sub_10008900C(qword_1000EB608);
    v315 = [NSString stringWithUTF8String:kMobileKeyBagUserChangedNotificationToken];
    [v314 post:v315];
  }

  return v52;
}